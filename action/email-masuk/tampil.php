<?php
 include("../akjja012j19210239.php");

 $username = $_POST['username'] ?? '';
 $token = $_POST['token'] ?? '';

 $sql = $koneksi->prepare("select aes_decrypt(unhex(?), 'Kjsd902Jks97161h1kd') as password");
 $sql->bind_param('s', $token);
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

 $overallMessages = 8;
 $emails = $imap->getMessage($overallMessages);
 //$content = json_decode(json_encode($emails->message->html), true);
 //$attachments = json_decode(json_encode($emails->attachments), true);

 $rawHeader = imap_fetchheader($connection, $overallMessages);
 preg_match('/Message-ID: &lt;(.*?)&gt;/', htmlspecialchars($rawHeader), $matches);
 $messageId = $matches[1] ?? '';

echo $messageId;


//for($i=0; $i<strlen($temp); $i++)
 //{ echo substr($temp, $i, 1)."<br>";
// }

 /*$unreadEmails = imap_search($connection, 'UNSEEN');

 if($unreadEmails)
  { //rsort($unreadEmails);
    foreach ($unreadEmails as $emailNumber)
     { $overallMessages = $unreadEmails[$emailNumber];
       $emails = $imap->getMessage($overallMessages);
       $content = json_decode(json_encode($emails->message->html), true);
       $attachments = json_decode(json_encode($emails->attachments), true);
     }
  }*/

 /*$overallMessages = 1;

 $emails = $imap->getMessage($overallMessages);
 $content = json_decode(json_encode($emails->message->html), true);
 $attachments = json_decode(json_encode($emails->attachments), true);

 print_r($content);*/

 /*$mailbox = '{imap.hostinger.com:993/imap/ssl/novalidate-cert}INBOX';

$connection = imap_open(
    $mailbox,
    $username,
    $password
);

if (!$connection) {
    die(imap_last_error());
}

$unreadEmails = imap_search(
    $connection,
    'UNSEEN'
);

if($unreadEmails){
    // Email terbaru di atas
    rsort($unreadEmails);
    foreach ($unreadEmails as $emailNumber) {
        $overview = imap_fetch_overview(
            $connection,
            $emailNumber,
            0
        );

        $body = imap_fetchbody(
            $connection,
            $emailNumber,
            1
        );

        print_r($overview); echo "<br><br>";
        print_r($body); echo "<br><br>";
    }

} else {

    echo "Tidak ada email yang belum dibaca.";

}

imap_close($connection);*/

?>