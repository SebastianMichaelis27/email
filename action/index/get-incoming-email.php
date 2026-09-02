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
  { die('Gagal koneksi IMAP: '.imap_last_error());
  }

 $emails = imap_search($connection, 'UNSEEN');
 if($emails === false)
  { echo "Tidak ada email.\n";
    imap_close($connection);
    exit;
  }
 else
  { echo '<div class="new"></div>';
  }

 foreach($emails as $emailNumber)
  { $header = imap_headerinfo($connection, $emailNumber);

    $date = null;
    if(isset($header->date) && $header->date !== '')
     { $tanggal = new DateTime($header->date);
       $date = $tanggal->format('Y-m-d H:i:s');
     }

    $rawHeader = imap_fetchheader($connection, $emailNumber);
    preg_match('/Message-ID: &lt;(.*?)&gt;/', htmlspecialchars($rawHeader), $matches);
    $message_id = $matches[1] ?? null;
    if($message_id == null)
     { preg_match('/Message-ID: <(.*?)>/', htmlspecialchars($rawHeader), $matches);
       $message_id = $matches[1] ?? null;
     }

    //Ambil struktur MIME email
    $structure = imap_fetchstructure($connection, $emailNumber);
    if(!$structure)
     { echo "Gagal mengambil struktur email.<br>";
       continue;
     }

    $body = getEmailBody($connection, $emailNumber);

    //Proses MIME secara recursive
    $attachments = array();
    extractAttachments($connection, $emailNumber, $structure, '', $attachments);

    $data = array();
    $data[] = $header->subject;
    $data[] = $header->fromaddress.' <'.$header->from[0]->mailbox.'@'.$header->from[0]->host.'>';
    $data[] = $header->toaddress;
    $data[] = $date;
    $data[] = $message_id;
    $data[] = $body;
    $data[] = $user_id;
    $params = implode(',', array_fill(0, count($data), '?'));
    $types = implode('', array_fill(0, count($data), 's'));

    $sql = $koneksi->prepare("insert into incoming_email(`subject`, `from`, `to`, `date`, `message_id`, `body`, `users_id`) values(".$params.")");
    $sql->bind_param($types, ...$data);
    if($sql->execute())
     { $id = $sql->insert_id;
       foreach($attachments as $attachment)
        { $data2 = array();
          $data2[] = $id;
          $data2[] = $attachment['filename'];
          $data2[] = date('Y-m-d H:i:s');
          $data2[] = $attachment['base64'];
          $params2 = implode(',', array_fill(0, count($data2), '?'));
          $types2 = implode('', array_fill(0, count($data2), 's'));

          $sql2 = $koneksi->prepare("insert into incoming_email_attachments(`incoming_email_id`, `name`, `date_time`, `body`) values(".$params2.")");
          $sql2->bind_param($types2, ...$data2);
          if(!$sql2->execute())
           { $is_commit = 0;
           }
        }
     }
    else
     { $is_commit = 0;
     }

    //batalkan status seen
    //imap_clearflag_full($connection, $emailNumber, "\\Seen");
  }

 imap_close($connection);

 if($is_commit == 1)
  { mysqli_commit($koneksi);
  }
 else
  { mysqli_rollback($koneksi);
  }

?>