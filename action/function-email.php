<?php

function decodeEmailBody($body, $encoding)
{
    switch ((int)$encoding) {

        case 3: // BASE64
            $body = base64_decode($body);
            break;

        case 4: // QUOTED-PRINTABLE
            $body = quoted_printable_decode($body);
            break;
    }

    return $body;
}


function getEmailBody($connection, $emailNumber)
{
    $structure = imap_fetchstructure($connection, $emailNumber);

    if (!$structure) {
        return '';
    }

    $html = '';
    $plain = '';

    // Recursive function
    $findBody = function ($parts, $parentPart = '') use (
        &$findBody,
        $connection,
        $emailNumber,
        &$html,
        &$plain
    ) {

        foreach ($parts as $index => $part) {

            $partNumber = $parentPart === ''
                ? (string)($index + 1)
                : $parentPart . '.' . ($index + 1);

            // Jika mempunyai child parts
            if (isset($part->parts) && is_array($part->parts)) {

                $findBody(
                    $part->parts,
                    $partNumber
                );

                continue;
            }

            // TEXT
            if ((int)$part->type === 0) {

                $subtype = strtoupper($part->subtype ?? '');

                $body = imap_fetchbody(
                    $connection,
                    $emailNumber,
                    $partNumber
                );

                $body = decodeEmailBody(
                    $body,
                    $part->encoding ?? 0
                );

                if ($subtype === 'HTML' && $html === '') {

                    $html = $body;

                } elseif ($subtype === 'PLAIN' && $plain === '') {

                    $plain = $body;
                }
            }
        }
    };


    // Multipart
    if (isset($structure->parts) && is_array($structure->parts)) {

        $findBody($structure->parts);

    } else {

        // Email sederhana, tidak multipart
        $body = imap_body(
            $connection,
            $emailNumber
        );

        $body = decodeEmailBody(
            $body,
            $structure->encoding ?? 0
        );

        if (strtoupper($structure->subtype ?? '') === 'HTML') {
            $html = $body;
        } else {
            $plain = $body;
        }
    }


    // Prioritaskan HTML
    if (trim($html) !== '') {
        return trim($html);
    }


    // Fallback plain text
    if (trim($plain) !== '') {

        return nl2br(
            htmlspecialchars(
                trim($plain),
                ENT_QUOTES | ENT_SUBSTITUTE,
                'UTF-8'
            )
        );
    }


    return '';
}

function extractAttachments($connection, $emailNumber, $structure, $partNumber, &$attachments)
 { //Jika email memiliki child parts
   if(isset($structure->parts) && is_array($structure->parts) && count($structure->parts) > 0)
    { foreach ($structure->parts as $index => $part)
       { //IMAP part number dimulai dari 1
         $currentPartNumber = ($partNumber === '') ? (string)($index + 1) : $partNumber . '.' . ($index + 1);
         //Proses child secara recursive
         extractAttachments($connection, $emailNumber, $part, $currentPartNumber, $attachments);
       }
      return;
    }

   //Tidak memiliki child: berarti ini MIME leaf/body
   $filename = getPartFilename($structure);
   $disposition = '';
   if(isset($structure->disposition))
    { $disposition = strtoupper(trim($structure->disposition));
    }

   //MIME type
   $mime = getMimeType($structure);

   //Deteksi attachment. Tidak hanya mengandalkan disposition. Karena beberapa email server mengirim XLSX sebagai application/octet-stream.
   $isAttachment = false;

   //Cara 1: Content-Disposition: attachment
   if($disposition === 'ATTACHMENT')
    { $isAttachment = true;
    }

   //Cara 2: Ada filename
   if($filename !== '')
    { $isAttachment = true;
    }

   //Kalau tidak ada filename tetapi MIME menunjukkan file umum.
   if(in_array(strtolower($mime), ['application/pdf', 'application/octet-stream', 'application/zip', 'application/x-zip-compressed', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/msword', 'image/jpeg', 'image/png', 'image/gif'], true))
    { //Jangan otomatis menganggap semua application/pdf sebagai attachment jika tidak mempunyai filename, Tetapi PDF dengan filename tetap attachment.
      if($filename !== '')
       { $isAttachment = true;
       }
    }

   //Jika bukan attachment
   if(!$isAttachment)
    { return;
    }

   //Jika part number kosong Biasanya tidak terjadi untuk attachment, tetapi kita abaikan.
   if($partNumber === '')
    { return;
    }

   //Ambil raw body dari MIME part
   $body = imap_fetchbody($connection, $emailNumber, $partNumber);
   if($body === false)
    { return;
    }

   //Decode berdasarkan encoding MIME
   $decodedBody = decodeMimeBody($body, $structure);

   if($decodedBody === false)
    { return;
    }

   //Jika filename kosong, coba buat berdasarkan MIME.
   if($filename === '')
    { $extension = mimeToExtension($mime);
      if($extension !== '')
       { $filename = 'attachment_'.count($attachments).'.'.$extension;
       }
      else
       { $filename = 'attachment_'.count($attachments);
       }
    }

   //Pastikan filename tidak kosong
   $filename = cleanFilename($filename);

   //Ubah content binary menjadi base64
   $base64 = base64_encode($decodedBody);


   //Simpan
   $attachments[] = [
    'part' => $partNumber,
    'filename' => $filename,
    'mime' => $mime,
    'size' => strlen($decodedBody),
    'base64' => $base64
   ];
 }

function getPartFilename($part)
 { //filename dari Content-Disposition
   if(isset($part->dparameters) && is_array($part->dparameters))
    { foreach ($part->dparameters as $parameter)
       { if(isset($parameter->attribute) && strtolower($parameter->attribute) === 'filename')
          { $filename = $parameter->value ?? '';
            return decodeMimeHeader($filename);
          }
       }
    }
   //filename dari Content-Type Contoh: application/octet-stream; name="data.xlsx"
   if(isset($part->parameters) && is_array($part->parameters))
    { foreach ($part->parameters as $parameter)
       { if(isset($parameter->attribute) && strtolower($parameter->attribute) === 'name')
          { $filename = $parameter->value ?? '';
            return decodeMimeHeader($filename);
          }
       }
    }
   return '';
 }

function getMimeType($part)
 { $primary = [
     0 => 'text',
     1 => 'multipart',
     2 => 'message',
     3 => 'application',
     4 => 'audio',
     5 => 'image',
     6 => 'video',
     7 => 'other'
   ];
   $type = isset($primary[$part->type]) ? $primary[$part->type] : 'application';
   $subtype = isset($part->subtype) ? strtolower($part->subtype) : 'octet-stream';
   return $type . '/' . $subtype;
 }

function decodeMimeBody($body, $structure)
 { $encoding = isset($structure->encoding) ? (int)$structure->encoding : 0;
    switch ($encoding)
     { case 3:
        return base64_decode($body, true);
       case 4:
        return quoted_printable_decode($body);
       case 0:
       case 1:
       case 2:
        return $body;
       default:
        return $body;
     }
 }

function decodeMimeHeader($value)
 { if($value === '')
    { return '';
    }
   $decoded = @imap_mime_header_decode($value);
   if(is_array($decoded) && count($decoded) > 0)
    { $result = '';
      foreach($decoded as $part)
       { $result .= $part->text;
       }
      return $result;
    }
   return $value;
 }

function cleanFilename($filename)
 { //Hilangkan path
   $filename = basename(str_replace('\\', '/', $filename));
   //Hilangkan karakter berbahaya
   $filename = preg_replace('/[^\w\-. ]+/u', '_', $filename);
   return trim($filename);
 }

function mimeToExtension($mime)
 { $mime = strtolower(trim($mime));

   $map = [
    //PDF
    'application/pdf' => 'pdf',
    //MICROSOFT EXCEL
    'application/vnd.ms-excel' => 'xls',
    'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' => 'xlsx',
    'application/vnd.ms-excel.sheet.macroenabled.12' => 'xlsm',
    'application/vnd.ms-excel.sheet.binary.macroenabled.12' => 'xlsb',
    'application/vnd.openxmlformats-officedocument.spreadsheetml.template' => 'xltx',
    'application/vnd.ms-excel.template.macroenabled.12' => 'xltm',
    'application/vnd.ms-excel.addin.macroenabled.12' => 'xlam',
    //MICROSOFT WORD
    'application/msword' => 'doc',
    'application/vnd.openxmlformats-officedocument.wordprocessingml.document' => 'docx',
    'application/vnd.ms-word.document.macroenabled.12' => 'docm',
    'application/vnd.openxmlformats-officedocument.wordprocessingml.template' => 'dotx',
    'application/vnd.ms-word.template.macroenabled.12' => 'dotm',
    //MICROSOFT POWERPOINT
    'application/vnd.ms-powerpoint' => 'ppt',
    'application/vnd.openxmlformats-officedocument.presentationml.presentation' => 'pptx',
    'application/vnd.ms-powerpoint.presentation.macroenabled.12' => 'pptm',
    'application/vnd.openxmlformats-officedocument.presentationml.template' => 'potx',
    'application/vnd.ms-powerpoint.template.macroenabled.12' => 'potm',
    'application/vnd.ms-powerpoint.slideshow.macroenabled.12' => 'ppsm',
    'application/vnd.openxmlformats-officedocument.presentationml.slideshow' => 'ppsx',
    //MICROSOFT ACCESS
    'application/msaccess' => 'mdb',
    'application/vnd.ms-access' => 'accdb',
    //MICROSOFT VISIO
    'application/vnd.visio' => 'vsd',
    'application/vnd.ms-visio.drawing' => 'vsd',
    'application/vnd.visio2013' => 'vsdx',
    'application/vnd.ms-visio.template' => 'vst',
    'application/vnd.ms-visio.stencil' => 'vss',
    //MICROSOFT OUTLOOK
    'application/vnd.ms-outlook' => 'msg',
    //OPEN DOCUMENT / LIBREOFFICE
    'application/vnd.oasis.opendocument.text' => 'odt',
    'application/vnd.oasis.opendocument.text-template'=> 'ott',
    'application/vnd.oasis.opendocument.spreadsheet' => 'ods',
    'application/vnd.oasis.opendocument.spreadsheet-template' => 'ots',
    'application/vnd.oasis.opendocument.presentation' => 'odp',
    'application/vnd.oasis.opendocument.presentation-template' => 'otp',
    'application/vnd.oasis.opendocument.graphics' => 'odg',
    'application/vnd.oasis.opendocument.graphics-template' => 'otg',
    'application/vnd.oasis.opendocument.chart' => 'odc',
    'application/vnd.oasis.opendocument.formula' => 'odf',
    //TEXT
    'text/plain' => 'txt',
    'text/csv' => 'csv',
    'text/html' => 'html',
    'text/css' => 'css',
    'text/xml' => 'xml',
    'application/xml' => 'xml',
    'application/json' => 'json',
    'application/rtf' => 'rtf',
    'text/rtf' => 'rtf',
    'text/calendar' => 'ics',
    'text/vcard' => 'vcf',
    //ZIP / ARCHIVE
    'application/zip' => 'zip',
    'application/x-zip-compressed' => 'zip',
    'application/x-7z-compressed' => '7z',
    'application/x-rar-compressed' => 'rar',
    'application/vnd.rar' => 'rar',
    'application/x-rar' => 'rar',
    'application/gzip' => 'gz',
    'application/x-gzip' => 'gz',
    'application/x-bzip2' => 'bz2',
    'application/x-tar' => 'tar',
    'application/x-compress' => 'z',
    'application/x-7z-compressed' => '7z',
    //IMAGE
    'image/jpeg' => 'jpg',
    'image/jpg' => 'jpg',
    'image/pjpeg' => 'jpg',
    'image/png' => 'png',
    'image/gif' => 'gif',
    'image/webp' => 'webp',
    'image/bmp' => 'bmp',
    'image/x-ms-bmp' => 'bmp',
    'image/tiff' => 'tif',
    'image/tif' => 'tif',
    'image/svg+xml' => 'svg',
    'image/x-icon' => 'ico',
    'image/vnd.microsoft.icon' => 'ico',
    'image/heic' => 'heic',
    'image/heif' => 'heif',
    'image/avif' => 'avif',
    'image/x-xbitmap' => 'xbm',
    //AUDIO
    'audio/mpeg' => 'mp3',
    'audio/mp3' => 'mp3',
    'audio/wav' => 'wav',
    'audio/x-wav' => 'wav',
    'audio/wave' => 'wav',
    'audio/ogg' => 'ogg',
    'audio/opus' => 'opus',
    'audio/aac' => 'aac',
    'audio/flac' => 'flac',
    'audio/x-m4a' => 'm4a',
    'audio/mp4' => 'm4a',
    'audio/midi' => 'mid',
    'audio/x-midi' => 'mid',
    //VIDEO
    'video/mp4' => 'mp4',
    'video/mpeg' => 'mpeg',
    'video/quicktime' => 'mov',
    'video/x-msvideo' => 'avi',
    'video/x-ms-wmv' => 'wmv',
    'video/webm' => 'webm',
    'video/3gpp' => '3gp',
    'video/3gpp2' => '3g2',
    'video/x-matroska' => 'mkv',
    'video/x-flv' => 'flv',
    //FONT
    'font/ttf' => 'ttf',
    'font/otf' => 'otf',
    'font/woff' => 'woff',
    'font/woff2' => 'woff2',
    'application/font-woff' => 'woff',
    'application/font-woff2' => 'woff2',
    'application/vnd.ms-fontobject' => 'eot',
    //E-BOOK
    'application/epub+zip' => 'epub',
    'application/x-mobipocket-ebook' => 'mobi',
    //ADOBE
    'application/postscript' => 'ps',
    'application/illustrator' => 'ai',
    'application/x-photoshop' => 'psd',
    'image/vnd.adobe.photoshop' => 'psd',
    //CAD
    'application/acad' => 'dwg',
    'application/x-autocad' => 'dwg',
    'image/vnd.dwg' => 'dwg',
    'image/vnd.dxf' => 'dxf',
    //JAVA / PROGRAMMING
    'application/java-archive' => 'jar',
    'application/x-java-archive' => 'jar',
    'application/x-shockwave-flash' => 'swf',
    'application/x-httpd-php' => 'php',
    'text/javascript' => 'js',
    'application/javascript' => 'js',
    'application/x-javascript' => 'js',
    //EXECUTABLE
    'application/x-msdownload' => 'exe',
    'application/x-msdos-program' => 'exe',
    'application/x-executable' => 'exe',
    'application/vnd.android.package-archive' => 'apk',
    //DISK / BINARY
    'application/octet-stream' => 'bin',
    'application/x-binary' => 'bin',
    'application/x-iso9660-image' => 'iso',
    //DATABASE
    'application/x-sql' => 'sql',
    'application/sql' => 'sql',
    'application/vnd.sqlite3' => 'sqlite',
    'application/x-sqlite3' => 'sqlite',
    //CERTIFICATE / SECURITY
    'application/pkcs12' => 'p12',
    'application/x-pkcs12' => 'p12',
    'application/pkcs7-mime' => 'p7m',
    'application/x-pem-file' => 'pem',
    'application/x-x509-ca-cert' => 'crt',
    'application/pkix-cert' => 'cer',
    //CALENDAR / CONTACT
    'text/x-vcalendar' => 'vcs',
    'text/x-vcard' => 'vcf',
    //DATA / BINARY DOCUMENT
    'application/x-rss+xml' => 'rss',
    'application/ld+json' => 'json',
    'application/x-yaml' => 'yaml',
    'text/yaml' => 'yaml',
    'application/x-sh' => 'sh',
    'text/x-python' => 'py',
    'text/x-c' => 'c',
    'text/x-c++' => 'cpp',
    'application/x-httpd-cgi' => 'cgi'
   ];

   return $map[$mime] ?? '';
 }
?>