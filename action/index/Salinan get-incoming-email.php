<?php
 include("../bjksadkhrej121lkjkjk.php");
 include("../function-email.php");

 $is_commit = 1;
 mysqli_autocommit($koneksi, FALSE);

 $username = $_POST['username'] ?? '';
 $token = $_POST['token'] ?? '';

 $sql = $koneksi->prepare("select aes_decrypt(unhex(pass_email), 'Kjsd902Jks97161h1kd') as password from users where username = ?");
 $sql->bind_param('s', $username);
 $sql->execute();
 $result = $sql->get_result();
 $data = $result->fetch_assoc();
 $password = $data['password'] ?? '';

 $host = 'imap.hostinger.com';
 $port = 993;

 $mailbox = '{'.$host .':'.$port.'/imap/ssl/novalidate-cert}INBOX';

 $connection = imap_open($mailbox, $username, $password);
 if(!$connection)
  { die('Gagal koneksi IMAP: ' . imap_last_error());
  }

 $emails = imap_search($connection, 'UNSEEN');
 if($emails === false)
  { echo "Tidak ada email.\n";
    imap_close($connection);
    exit;
  }

/* =========================================================
 * 3. LOOP SEMUA EMAIL
 * ========================================================= */

foreach ($emails as $emailNumber) {

    $header = imap_headerinfo($connection, $emailNumber);

    echo "<pre>";
    print_r($header);
    echo "</pre>";

    $rawHeader = imap_fetchheader($connection, $emailNumber);
    preg_match('/Message-ID: &lt;(.*?)&gt;/', htmlspecialchars($rawHeader), $matches);
    $message_id = $matches[1] ?? null;
    if($message_id == null)
     { preg_match('/Message-ID: <(.*?)>/', htmlspecialchars($rawHeader), $matches);
       $message_id = $matches[1] ?? null;
     }

    echo "<h3>Email ID: {$emailNumber}</h3>";

    /*
     * Ambil struktur MIME email
     */
    $structure = imap_fetchstructure(
        $connection,
        $emailNumber
    );

    if (!$structure) {
        echo "Gagal mengambil struktur email.<br>";
        continue;
    }


    /*
     * Array untuk menampung semua attachment
     */
    $attachments = [];


    /*
     * Proses MIME secara recursive
     */
    extractAttachments(
        $connection,
        $emailNumber,
        $structure,
        '',
        $attachments
    );


    /* =====================================================
     * 4. TAMPILKAN HASIL
     * ===================================================== */

    echo '<pre>';

    print_r($attachments);

    echo '</pre>';


    /*
     * Contoh JSON
     */
    echo '<pre>';

    echo json_encode(
        $attachments,
        JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE
    );

    echo '</pre>';


    /* =====================================================
     * 5. CONTOH MENGAMBIL BASE64
     * ===================================================== */

    foreach ($attachments as $attachment) {

        echo '<hr>';

        echo 'Filename: '
            . htmlspecialchars($attachment['filename'])
            . '<br>';

        echo 'MIME: '
            . htmlspecialchars($attachment['mime'])
            . '<br>';

        echo 'Base64 length: '
            . strlen($attachment['base64'])
            . '<br>';

        /*
         * Base64 lengkap
         */
        echo '<textarea style="width:100%;height:150px;">'
            . htmlspecialchars($attachment['base64'])
            . '</textarea>';
    }


    imap_clearflag_full(
        $connection,
        $emailNumber,
        "\\Seen"
    );
}


/* =========================================================
 * 6. TUTUP IMAP
 * ========================================================= */


imap_close($connection);


/* =========================================================
 * FUNCTION: EXTRACT ATTACHMENTS
 * ========================================================= */

?>