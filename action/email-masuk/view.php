<?php
 include("../bjksadkhrej121lkjkjk.php");

 $lokasi_folder = "../../files/";
 if(!is_dir($lokasi_folder))
  { mkdir($lokasi_folder, 0755);
  }

 $lokasi_folder .= "incoming-email-attachments/";
 if(!is_dir($lokasi_folder))
  { mkdir($lokasi_folder, 0755);
  }

 $id = $_POST['id'] ?? null;

 $sql = $koneksi->prepare("select * from incoming_email where id = ?");
 $sql->bind_param("i", $id);
 $sql->execute();
 $result = $sql->get_result();
 $data = $result->fetch_assoc();

 $attachments = array();
 $sql = $koneksi->prepare("select incoming_email_attachments.*, hex(aes_encrypt(id, 'Kjsd902Jks97161h1kd')) as kode from incoming_email_attachments where incoming_email_id = ?");
 $sql->bind_param("i", $id);
 $sql->execute();
 $result = $sql->get_result();
 $attachments = $result->fetch_all(MYSQLI_ASSOC);

 $list_file = "";
 foreach($attachments as $key => $value)
  { $extension = strtolower(pathinfo($value['name'], PATHINFO_EXTENSION));
    if(file_put_contents($lokasi_folder.$value['kode'].'.'.$extension, base64_decode($value['body'])))
     { $list_file .= '<br><a href="files/incoming-email-attachments/'.$value['kode'].'.'.$extension.'" target="blank">'.$value['name'].'</a>';
     }
  }

?>

<b style="color:#1b7736;"><?= $data['subject'] ?></b>
<div style="border:1px solid silver; border-radius:3px; padding:10px; margin-top:10px;">
 <?= $data['body'].$list_file ?>
</div>