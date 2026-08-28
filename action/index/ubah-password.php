<?php

 include("../bjksadkhrej121lkjkjk.php");

 $user_id = "";
 if(isset($_POST['user_id']) && $_POST['user_id'] !== "")
  { $user_id = intval($_POST['user_id']);
  }
 $password_lama = "";
 if(isset($_POST['password_lama']) && $_POST['password_lama'] !== "")
  { $password_lama = $_POST['password_lama'];
  }
 $password_baru = "";
 if(isset($_POST['password_baru']) && $_POST['password_baru'] !== "")
  { $password_baru = $_POST['password_baru'];
  }

 $execute = $koneksi->prepare("select * from users where id = ?");
 $execute->bind_param("i", $user_id);
 $execute->execute();
 $result = $execute->get_result();
 if($result->num_rows > 0)
  { while($row = $result->fetch_assoc())
     { $execute2 = $koneksi->prepare("select id from users where id = ? and password = hex(aes_encrypt(?, 'Kjsd902Jks97161h1kd')) limit 1");
       $execute2->bind_param("is", $user_id, $password_lama);
       $execute2->execute();
       $result2 = $execute2->get_result();
       if($result2->num_rows > 0)
        { $execute3 = $koneksi->prepare("update users set password = hex(aes_encrypt(?, 'Kjsd902Jks97161h1kd')) where id = ?");
          $execute3->bind_param("si", $password_baru, $user_id);
          if(!$execute3->execute())
           { echo '<div class="error">Gagal!</div>';
           }
        }
       else
        { echo '<div class="error"><b>Password</b> salah!</div>';
        }
     }
  }

?>