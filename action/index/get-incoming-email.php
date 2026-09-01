<?php
 include("../bjksadkhrej121lkjkjk.php");

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

 include '../../plugin/ssilence/php-imap-client/ImapClient/Section.php';
 include '../../plugin/ssilence/php-imap-client/ImapClient/ImapClientException.php';
 include '../../plugin/ssilence/php-imap-client/ImapClient/ImapConnect.php';
 include '../../plugin/ssilence/php-imap-client/ImapClient/ImapClient.php';
 include '../../plugin/ssilence/php-imap-client/ImapClient/IncomingMessage.php';
 include '../../plugin/ssilence/php-imap-client/ImapClient/TypeAttachments.php';
 include '../../plugin/ssilence/php-imap-client/ImapClient/HelperObject.php';
 include '../../plugin/ssilence/php-imap-client/ImapClient/TypeBody.php';
 include '../../plugin/ssilence/php-imap-client/ImapClient/SubtypeBody.php';
 include '../../plugin/ssilence/php-imap-client/ImapClient/IncomingMessageAttachment.php';

 use SSilence\ImapClient\ImapClientException;
 use SSilence\ImapClient\ImapConnect;
 use SSilence\ImapClient\ImapClient;

 $mailbox = '{imap.hostinger.com:993/imap/ssl/novalidate-cert}INBOX';

 $imap = new ImapClient([
  'flags' => [
   'service' => ImapConnect::SERVICE_IMAP,
   'encrypt' => ImapConnect::ENCRYPT_SSL,
   'validateCertificates' => ImapConnect::NOVALIDATE_CERT,
   'secure' => ImapConnect::SECURE, # or null
   'norsh' => ImapConnect::NORSH, # or null
   'readonly' => ImapConnect::READONLY, # or null
   'anonymous' => ImapConnect::ANONYMOUS, # or null
   'debug' => ImapConnect::DEBUG # or null
  ],
  'mailbox' => [
   'remote_system_name' => 'imap.server.ru',
   'port' => null,
   'flags' => null,
   'mailbox_name' => null,
  ],
  'connect' => [
   'mailbox' => $mailbox,
   'username' => $username,
   'password' => $password,
   'options' => 0,
   'n_retries' => 0,
   'params' => [],
  ]
 ]);

 $connection = imap_open(
  $mailbox,
  $username,
  $password
 );

 $unreadEmails = imap_search($connection, 'UNSEEN');
 if($unreadEmails)
  { echo '<div class="new"></div>';
    foreach($unreadEmails as $emailNumber)
     { $emails = $imap->getMessage($emailNumber);

       $rawHeader = imap_fetchheader($connection, $emailNumber);
       preg_match('/Message-ID: &lt;(.*?)&gt;/', htmlspecialchars($rawHeader), $matches);
       $message_id = $matches[1] ?? null;
       if($message_id == null)
        { preg_match('/Message-ID: <(.*?)>/', htmlspecialchars($rawHeader), $matches);
          $message_id = $matches[1] ?? null;
        }

       $subject = $emails->header->subject ?? null;
       $from = $emails->header->from ?? null;
       $to = $emails->header->to ?? null;
       $date = null;
       if(isset($emails->header->date) && $emails->header->date !== '')
        { $tanggal = new DateTime($emails->header->date);
          $date = $tanggal->format('Y-m-d H:i:s');
        }
       $body = $emails->message->html->body;

       $data = array();
       $data[] = $subject;
       $data[] = $from;
       $data[] = $to;
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
          foreach($emails->attachments as $key => $value)
           { $data2 = array();
             $data2[] = $id;
             $data2[] = $value->name;
             $data2[] = date('Y-m-d H:i:s');
             $data2[] = $value->body;
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

       if($is_commit == 1)
        { $overview = imap_fetch_overview($connection, $emailNumber, 0);
          $body = imap_fetchbody($connection, $emailNumber, 1);
        }
     }
  }

 if($is_commit == 1)
  { mysqli_commit($koneksi);
  }
 else
  { mysqli_rollback($koneksi);
  }

?>