<?php
 include("../bjksadkhrej121lkjkjk.php");

 include("../../plugin/phpmailer/phpmailer/src/PHPMailer.php");
 include("../../plugin/phpmailer/phpmailer/src/SMTP.php");
 include("../../plugin/phpmailer/phpmailer/src/Exception.php");

 use PHPMailer\PHPMailer\PHPMailer;
 use PHPMailer\PHPMailer\SMTP;
 use PHPMailer\PHPMailer\Exception;

 $is_commit = 0;
 mysqli_autocommit($koneksi, FALSE);

 $now = date('Y-m-d H:i:s');

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

 $values = array();
 $values[] = $username;
 $values[] = implode(",", array_column($data['send_email-to'], 'value'));
 $values[] = implode(",", array_column($data['send_email-cc'], 'value'));
 $values[] = $data['send_email-subject'];
 $values[] = $data['send_email-body'];
 $values[] = $now;
 $values[] = $user_id;
 $params = implode(',', array_fill(0, count($values), '?'));
 $types = implode('', array_fill(0, count($values), 's'));
 $sql = $koneksi->prepare("insert into outgoing_email(`from`, `address`, `cc`, `subject`, `body`, `date`, `users_id`) values(".$params.")");
 $sql->bind_param($types, ...$values);
 if($sql->execute())
  { $id = $sql->insert_id;
    foreach($attachments as $attachment)
     { $base64 = preg_replace('#^data:[^;]+;base64,#', '', $attachment['base64']);
       $fileData = base64_decode($base64);
       preg_match('/data:(.*?);base64,/', $attachment['base64'], $matches);
       $mime = $matches[1] ?? '';
       if($mime !== '')
        { $mail->addStringAttachment($fileData, $attachment['name'], PHPMailer::ENCODING_BASE64, $mime);
        }

       $values2 = array();
       $values2[] = $id;
       $values2[] = $attachment['name'];
       $values2[] = $attachment['base64'];
       $values2[] = $now;
       $params2 = implode(',', array_fill(0, count($values2), '?'));
       $types2 = implode('', array_fill(0, count($values2), 's'));
       $sql2 = $koneksi->prepare("insert into outgoing_email_attachments(`outgoing_email_id`, `name`, `body`, `date`) values(".$params2.")");
       $sql2->bind_param($types2, ...$values2);
       if(!$sql2->execute())
        { $is_commit--;
        }
     }
  }
 else
  { $is_commit--;
  }

 $mail->Subject = $data['send_email-subject'];
 $mail->Body = $data['send_email-body'];
 $mail->AltBody = $data['send_email-body'];
 if($mail->Send())
  { $is_commit++;
  }

 if($is_commit >= 1)
  { mysqli_commit($koneksi);
    echo '<div class="success"></div>';
  }
 else
  { mysqli_rollback($koneksi);
  }

?>