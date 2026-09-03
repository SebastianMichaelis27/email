<?php
 include("../bjksadkhrej121lkjkjk.php");

 include("../../plugin/phpmailer/phpmailer/src/PHPMailer.php");
 include("../../plugin/phpmailer/phpmailer/src/SMTP.php");
 include("../../plugin/phpmailer/phpmailer/src/Exception.php");

 use PHPMailer\PHPMailer\PHPMailer;
 use PHPMailer\PHPMailer\SMTP;
 use PHPMailer\PHPMailer\Exception;

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

 $data = $_POST['data'] ?? array();
 if(isset($data['send_email-to']) && $data['send_email-to'] !== '')
  { $data['send_email-to'] = json_decode($data['send_email-to'], true);
  }
 if(isset($data['send_email-cc']) && $data['send_email-cc'] !== '')
  { $data['send_email-cc'] = json_decode($data['send_email-cc'], true);
  }
 $attachments = $_POST['attachments'] ?? array();

 $mail = new PHPMailer();
 $mail->IsSMTP();
 $mail->Host = "smtp.hostinger.com";
 $mail->SMTPAuth = true; 
 $mail->Username = $username;
 $mail->Password = $password;
 //$mail->addAttachment(str_replace("/", "/temp/", $nama_file));
 $mail->From = $username;
 $mail->SMTPSecure = 'tls'; 
 $mail->Port = 587;
 //$mail->addAddress("armandthimoty@gmail.com", "Arman");
 foreach(array_column($data['send_email-to'], 'value') as $email)
  { $mail->addAddress($email);
  }
 foreach(array_column($data['send_email-cc'], 'value') as $email)
  { $mail->addCC($email);
  }
 foreach($attachments as $attachment)
  { $base64 = preg_replace('#^data:[^;]+;base64,#', '', $attachment['base64']);
    $fileData = base64_decode($base64);

    preg_match('/data:(.*?);base64,/', $attachment['base64'], $matches);
    $mime = $matches[1] ?? '';

    if($mime !== '')
     { $mail->addStringAttachment($fileData, $attachment['name'], PHPMailer::ENCODING_BASE64, $mime);
     }
  }
 $mail->Subject = $data['send_email-subject'];
 $mail->Body = $data['send_email-body'];
 $mail->AltBody = $data['send_email-body'];
 if($mail->Send())
  { echo "sent";
  }

 if($is_commit == 1)
  { mysqli_commit($koneksi);
  }
 else
  { mysqli_rollback($koneksi);
  }

?>