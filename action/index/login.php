<?php
 include("../akjja012j19210239.php");

 $username = $_POST['username'] ?? '';
 $password = $_POST['password'] ?? '';

 include("../../plugin/phpmailer/phpmailer/src/PHPMailer.php");
 include("../../plugin/phpmailer/phpmailer/src/SMTP.php");
 include("../../plugin/phpmailer/phpmailer/src/Exception.php");

 use PHPMailer\PHPMailer\PHPMailer;
 use PHPMailer\PHPMailer\SMTP;
 use PHPMailer\PHPMailer\Exception;

 $mail = new PHPMailer();
 $mail->isSMTP();
 $mail->Host = 'smtp.hostinger.com';
 $mail->SMTPAuth = true;
 $mail->Username = $username;
 $mail->Password = $password;
 $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
 $mail->Port = 587;
 if($mail->smtpConnect())
  { $sql = $koneksi->prepare("select hex(aes_encrypt(?, 'Kjsd902Jks97161h1kd')) as password");
    $sql->bind_param('s', $password);
    $sql->execute();
    $result = $sql->get_result();
    $data = $result->fetch_assoc();
    echo '<div class="proses-berhasil">
           <textarea class="username">'.$username.'</textarea>
           <textarea class="token">'.strtolower($data['password']).'</textarea>
          </div>';
  }
 else
  { echo '<div class="pesan-peringatan">Email atau Password salah!</div>';
  }

 $mail->smtpClose();

?>