<?php
 include("../akjja012j19210239.php");

 $username = "";
 if(isset($_POST['username']) && $_POST['username'] !== "")
  { $username = $_POST['username'];
  }
 $password = "";
 if(isset($_POST['password']) && $_POST['password'] !== "")
  { $password = $_POST['password'];
  }

 $execute = $koneksi->prepare("select * from users where username = ? limit 1");
 $execute->bind_param("s", $username);
 $execute->execute();
 $result = $execute->get_result();
 if($result->num_rows > 0)
  { while($row = $result->fetch_assoc())
     { $execute2 = $koneksi->prepare("select id, username, hex(aes_encrypt(concat(ifnull(id, ''), ifnull(username, ''), ifnull(password, ''), ifnull(users_level_id, ''), ifnull(cabang_id, ''), ?), 'Kjsd902Jks97161h1kd')) as token, users_level_id, cabang_id from users where username = ? and password = hex(aes_encrypt(?, 'Kjsd902Jks97161h1kd')) limit 1");
       $execute2->bind_param("sss", $now, $row['username'], $password);
       $execute2->execute();
       $result2 = $execute2->get_result();
       if($result2->num_rows > 0)
        { $execute3 = $koneksi->prepare("update users set last_login = ? where id = ?");
          $execute3->bind_param("ss", $now, $row['id']);
          if($execute3->execute())
           { while($row2 = $result2->fetch_assoc())
              { echo "<div class='proses-berhasil'>
                       <textarea class='id'>".intval($row2['id'])."</textarea>
                       <textarea class='username'>".strval($row2['username'])."</textarea>
                       <textarea class='token'>".strval($row2['token'])."</textarea>
                       <textarea class='users_level_id'>".strval($row2['users_level_id'])."</textarea>
                       <textarea class='cabang_id'>".strval($row2['cabang_id'])."</textarea>
                      </div>";
              }
           }
        }
       else
        { echo "<div class='pesan-peringatan'>Password salah!</div>";
        }
     }
  }
 else
  { echo "<div class='pesan-peringatan'>Username salah!</div>";
  }

?>