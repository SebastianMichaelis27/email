<?php
 error_reporting(E_ALL);
 ini_set('display_errors', 1);

 date_default_timezone_set('Asia/Jakarta');

 include("phpmailer/phpmailer/src/PHPMailer.php");
 include("phpmailer/phpmailer/src/SMTP.php");
 include("phpmailer/phpmailer/src/Exception.php");

 use PHPMailer\PHPMailer\PHPMailer;
 use PHPMailer\PHPMailer\SMTP;
 use PHPMailer\PHPMailer\Exception;

 /*$mail = new PHPMailer();
 $mail->IsSMTP();
 $mail->Host = "smtp.hostinger.com";
 $mail->SMTPAuth = true; 
 $mail->Username = "sebastian@smartsolutiondevelopment.com"; // SMTP username
 $mail->Password = "Sebastian27!"; // SMTP password
 //$mail->addAttachment(str_replace("/", "/temp/", $nama_file));
 $mail->From = "sebastian@smartsolutiondevelopment.com";
 $mail->SMTPSecure = 'tls'; 
 $mail->Port = 587; //SMTP port
 $mail->addAddress("armandthimoty@gmail.com", "Arman");
 $mail->Subject = "Testing Cuy 3";
 $mail->Body= "Invoice";
 $mail->AltBody = "Invoice";
 if($mail->Send())
  { echo "sent";
  }*/

 $mail = new PHPMailer();
 $mail->isSMTP();
 $mail->Host = 'smtp.hostinger.com';
 $mail->SMTPAuth = true;
 $mail->Username = 'sebastian@smartsolutiondevelopment.com';
 $mail->Password = 'Sebastian27!2';
 $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
 $mail->Port = 587;
 if($mail->smtpConnect())
  { echo "Username dan password SMTP BENAR";
  }
 else
  { echo "salah";
  }

 $mail->smtpClose();

 
?>