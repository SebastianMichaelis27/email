<?php

 include("../bjksadkhrej121lkjkjk.php");

 $is_commit = 1;
 mysqli_autocommit($koneksi, FALSE);

 $id = intval($_POST['id']);
 $execute = $koneksi->prepare("delete from ".preg_replace('/[^a-zA-Z0-9_]/', '', $_POST['Nama_Tabel'])." where id = ?");
 $execute->bind_param("i", $id);
 if(!$execute->execute())
  { $is_commit = 0;
    echo '<div class="error">Gagal!</div>';
  }

 if($is_commit == 1)
  { mysqli_commit($koneksi);
  }
 else
  { mysqli_rollback($koneksi);
  }

?>