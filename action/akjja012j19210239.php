<?php
 error_reporting(E_ALL);
 ini_set('display_errors', 1);
 ini_set('memory_limit','800100M');
 ini_set('upload_max_filesize', '800100M');
 ini_set('post_max_size', '800100M');
 set_time_limit(0);
 date_default_timezone_set('Asia/Jakarta');
 $now = date('Y-m-d H:i:s');
 $koneksi = mysqli_connect("localhost", "root", "", "email") or die("Koneksi gagal!");
 mysqli_set_charset($koneksi, "utf8mb4");

 function pastikanNamaFileUnik($dir, $nama, $index = 1)
  { if(file_exists($dir.$nama))
     { $extension = ".".pathinfo($nama, PATHINFO_EXTENSION);
       $nama = str_replace($extension, "", $nama)." ".$index.$extension;
       $index++;
       $nama = pastikanNamaFileUnik($dir, $nama, $index);
     }
    return $nama;
  }
?>