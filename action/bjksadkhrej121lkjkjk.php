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

 $user_id = $_POST['user_id'] ?? null;
 $username = $_POST['username'] ?? null;
 $users_level_id = $_POST['users_level_id'] ?? null;
 $token = $_POST['token'] ?? null;

 /*$query = "select hex(aes_encrypt(concat(ifnull(id, ''), ifnull(username, ''), ifnull(password, ''), ifnull(users_level_id, ''), ifnull(cabang_id, ''), ifnull(last_login, '')), 'Kjsd902Jks97161h1kd')) as token from users where id = ".intval($user_id);
 $execute = mysqli_query($koneksi, $query);

 $execute = $koneksi->prepare("select hex(aes_encrypt(concat(ifnull(id, ''), ifnull(username, ''), ifnull(password, ''), ifnull(users_level_id, ''), ifnull(cabang_id, ''), ifnull(last_login, '')), 'Kjsd902Jks97161h1kd')) as token from users where id = ?");
 $execute->bind_param("i", $user_id);
 $execute->execute();
 $result = $execute->get_result();
 $dataUser = $result->fetch_assoc();
 $data_token = $dataUser['token'] ?? null;
 if($data_token == null || strval($token) !== strval($data_token))
  { $koneksi = null;
  }
 if($koneksi == null)
  { echo "<script>
           location.href = 'logout';
          </script>";
    exit;
  }*/

 /*$actual_link = $_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
 $array_url = explode("/", $actual_link);
 if(strval(strpos($actual_link, "/action/")) !== "")
  { if(strtolower($array_url[count($array_url) - 2]) !== "index")
     { $query = "select * from menu_akses where users_level_id = '".$users_level_id."' and lower(url) = '".strtolower($array_url[count($array_url) - 2])."' and lower(action) = '".str_replace(".php", "", strtolower($array_url[count($array_url) - 1]))."'";
       $execute = mysqli_query($koneksi, $query);
       if(mysqli_num_rows($execute) < 1)
        { echo "<div class='pesan-peringatan error'>Anda tidak memiliki otoritas untuk menggunakan fitur ini</div>";
          $koneksi = null;
          exit;
        }
     }
  }*/

 function array_orderby()
  { $args = func_get_args();
    $data = array_shift($args);
    foreach ($args as $n => $field)
     { if(is_string($field))
        { $tmp = array();
          foreach ($data as $key => $row)
           $tmp[$key] = $row[$field];
          $args[$n] = $tmp;
        }
     }
    $args[] = &$data;
    call_user_func_array('array_multisort', $args);
    return array_pop($args);
  }

 function normalisasi($nilai)
  { $n=strlen($nilai);
    $hasil="";
    $d=0;
    for($i=1;$i<=$n;$i++)
     { if(substr($nilai,$d,1)=="0" || substr($nilai,$d,1)=="1" || substr($nilai,$d,1)=="2" || substr($nilai,$d,1)=="3" || substr($nilai,$d,1)=="4" ||
       substr($nilai,$d,1)=="5" || substr($nilai,$d,1)=="6" || substr($nilai,$d,1)=="7" || substr($nilai,$d,1)=="8" || substr($nilai,$d,1)=="9" || substr($nilai,$d,1)==",")
        { if(substr($nilai,$d,1)==",")
           { $hasil=$hasil.".";
           }
          else
           { $hasil=$hasil.substr($nilai,$d,1);
           }
        }
       $d++;
     }
    if($hasil<1)
     { $hasil=0;
     }
    return $hasil;
  }

 function formatnomor($teks)
  { return number_format(normalisasi($teks), 0, ",", ".");
  }

 function formatAngka($angka)
  { return rtrim(rtrim(number_format($angka ?? 0, 2, ',', '.'), '0'), ',');
  }

 function refreshHalaman()
  { $pageURL='http';
    if(isset($_SERVER["HTTPS"]) && $_SERVER["HTTPS"]=="on")
     { $pageURL .= "s";
     }
    $pageURL .= "://";
    if(isset($_SERVER["SERVER_PORT"]) && $_SERVER["SERVER_PORT"]!="80")
     { $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
     }
    else
     { $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
     }
    return $pageURL;
  }

 function array_group_by(array $arr, callable $key_selector)
  { $result = array();
    foreach ($arr as $i)
     { $key = call_user_func($key_selector, $i);
       $result[$key][] = $i;
     }  
    return $result;
  }

 function rangeMonth($date1, $date2)
  { $ts1 = strtotime($date1);
    $ts2 = strtotime($date2);
    $year1 = date('Y', $ts1);
    $year2 = date('Y', $ts2);
    $month1 = date('m', $ts1);
    $month2 = date('m', $ts2);
    $diff = (($year2 - $year1) * 12) + ($month2 - $month1);
    return $diff;
  }

 function rangeYear($date1, $date2)
  { $y1 = intval(date('Y', strtotime($date1)));
    $y2 = intval(date('Y', strtotime($date2)));
    return ($y2 - $y1);
  }

 function plusMonthDate($date_input, $plus)
  { $date = date_create(date("Y-m-d", strtotime($date_input)));
    date_add($date, date_interval_create_from_date_string($plus." month"));
    return date_format($date, "Y-m-d");
  }

 function plusYearDate($date_input, $plus)
  { $date = date_create(date("Y-m-d", strtotime($date_input)));
    date_add($date, date_interval_create_from_date_string($plus." year"));
    return date_format($date, "Y-m-d");
  }

 function getMonthName($month)
  { $monthList = array(
     '01' => 'Januari',
     '02' => 'Februari',
     '03' => 'Maret',
     '04' => 'April',
     '05' => 'Mei',
     '06' => 'Juni',
     '07' => 'Juli',
     '08' => 'Agustus',
     '09' => 'September',
     '10' => 'Oktober',
     '11' => 'November',
     '12' => 'Dessember'
    );
    if(isset($monthList[$month]) && $monthList[$month] !== "")
     { return $monthList[$month];
     }
    else
     { return "null";
     }
  }

 function format_tanggal($tanggal)
  { $result = date('d', strtotime($tanggal))." ".getMonthName(date('m', strtotime($tanggal)))." ".date('Y', strtotime($tanggal));
    if(strlen($tanggal) > 10)
     { $result .= " ".date('H:i', strtotime($tanggal));
     }
    return $result;
  }

 function sebutkan_tanggal($tanggal)
  { $nama_bulan = array(
     1 => 'Januari',
     2 => 'Februari',
     3 => 'Maret',
     4 => 'April',
     5 => 'Mei',
     6 => 'Juni',
     7 => 'Juli',
     8 => 'Agustus',
     9 => 'September',
     10 => 'Oktober',
     11 => 'November',
     12 => 'Desember',
    );
    return date('d', strtotime($tanggal))." ".$nama_bulan[intval(date('m', strtotime($tanggal)))]." ".date('Y', strtotime($tanggal));
  }

 function getLastDateOfMonth($date)
  { return date("t", strtotime($date));
  }

 function rangeWaktu($strtime_start, $strtime_stop)
  { $durasi = "";
    $range = $strtime_stop - $strtime_start;
    $hari = 0;
    if($range >= 86400)
     { $hari = intval($range / 86400);
       $range = $range - ($hari * 86400);
     }
    if($hari > 0)
     { if($durasi !== "")
        { $durasi .= ", ";
        }
       $durasi .= $hari." Hari";
     }
     $jam = 0;
    if($range >= 3600)
     { $jam = intval($range / 3600);
       $range = $range - ($jam * 3600);
     }
    if($jam > 0)
     { if($durasi !== "")
        { $durasi .= ", ";
        }
       $durasi .= $jam." Jam";
     }
    $menit = 0;
    if($range >= 60)
     { $menit = intval($range / 60);
       $range = $range - ($menit * 60);
     }
    if($menit > 0)
     { if($durasi !== "")
        { $durasi .= ", ";
        }
       $durasi .= $menit." Menit";
     }
    return $durasi;
  }

 function getWeekGroup($tanggal)
  { $dayRange = array(
     'Sun' => 0,
     'Mon' => 86400,
     'Tue' => 172800,
     'Wed' => 259200,
     'Thu' => 345600,
     'Fri' => 432000,
     'Sat' => 518400,
    );

    $tanggal = date('Y-m-', strtotime($tanggal))."01";
    $range = $dayRange[date('D', strtotime($tanggal))];
    $tgl_minggu_pertama = date('Y-m-d', intval(strtotime($tanggal)) - $range);

    $arrayMinggu = array();
    for($i=0; $i<6; $i++)
     { $start_date = intval(strtotime($tgl_minggu_pertama)) + ($i * 604800);
       $end_date = $start_date + 518400;
       if(date('m', $end_date) == date('m', strtotime($tanggal)))
        { array_push($arrayMinggu, array(
           "start_date" => date('Y-m-d', $start_date),
           "end_date" => date('Y-m-d', $end_date),
          ));
        }
     }
    return $arrayMinggu;
  }

 function showArray($array)
  { for($i=0; $i<count($array); $i++)
     { print_r($array[$i]); echo "<br>";
     }
  }
 function penyebut($nilai)
  { $nilai = abs(intval($nilai));
    $huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
    $temp = "";
    if($nilai < 12)
     { $temp = " ". $huruf[$nilai];
     }
    else if($nilai <20)
     { $temp = penyebut($nilai - 10). " belas";
     }
    else if($nilai < 100)
     { $temp = penyebut($nilai/10)." puluh". penyebut($nilai % 10);
     }
    else if($nilai < 200)
     { $temp = " seratus" . penyebut($nilai - 100);
     }
    else if($nilai < 1000)
     { $temp = penyebut($nilai/100) . " ratus" . penyebut($nilai % 100);
     }
    else if($nilai < 2000)
     { $temp = " seribu" . penyebut($nilai - 1000);
     }
    else if($nilai < 1000000)
     { $temp = penyebut($nilai/1000) . " ribu" . penyebut($nilai % 1000);
     }
    else if($nilai < 1000000000)
     { $temp = penyebut($nilai/1000000) . " juta" . penyebut($nilai % 1000000);
     }
    else if($nilai < 1000000000000)
     { $temp = penyebut($nilai/1000000000) . " milyar" . penyebut(fmod($nilai,1000000000));
     }
    else if($nilai < 1000000000000000)
     { $temp = penyebut($nilai/1000000000000) . " trilyun" . penyebut(fmod($nilai,1000000000000));
     }     
    return $temp;
  }
 
 function terbilang($nilai)
  { $minus = "";
    if($nilai < 0)
     { $minus = "minus ";
     }
    $nilai = abs($nilai);
    $hasil = penyebut($nilai);
    if(intval($nilai) < $nilai)
     { $hasil .= " koma";
       $koma = explode(".", strval($nilai))[1];
       $hasil = perulanganKoma($hasil, $koma)["hasil"];
     }
    $hasil = $minus.$hasil;
    return ucwords($hasil);
  }

 function perulanganKoma($hasil, $koma)
  { if(substr($koma, 0, 1) == "0")
     { $hasil .= " nol";
       $koma = substr($koma, 1, strlen($koma) - 1);
       $hasil = perulanganKoma($hasil, $koma)["hasil"];
     }
    else
     { $hasil = $hasil." ".penyebut($koma);
     }
    return array(
     "hasil" => $hasil,
     "koma" => $koma,
    );
  }

 function pembulatan($nilai)
  { if($nilai - intval($nilai) >= 0.5)
     { $nilai = intval($nilai) + 1;
     }
    else
     { $nilai = intval($nilai);
     }
    return $nilai;
  }

 function setDetail($koneksi, $is_commit, $tabel_parent, $tabel_child, $id_parent)
  { $execute = $koneksi->prepare("desc ".preg_replace('/[^a-zA-Z0-9_]/', '', $tabel_child));
    $execute->execute();
    $result = $execute->get_result();
    $descTable = $result->fetch_all(MYSQLI_ASSOC);

    $execute = $koneksi->prepare("select * from ".preg_replace('/[^a-zA-Z0-9_]/', '', $tabel_child)." where ".preg_replace('/[^a-zA-Z0-9_]/', '', $tabel_parent)."_id = ?");
    $execute->bind_param("i", $id_parent);
    $execute->execute();
    $result = $execute->get_result();
    $detail = $result->fetch_all(MYSQLI_ASSOC);

    foreach($detail as $index => &$row)
     { for($i=0; $i<count($descTable); $i++)
        { if(isset($row[$descTable[$i]['Field']]) && $row[$descTable[$i]['Field']] !== "")
           { if(strval(strpos($descTable[$i]['Type'], "decimal")) !== "" || strval(strpos($descTable[$i]['Type'], "int")) !== "" || strval(strpos($descTable[$i]['Type'], "bigint")) !== "")
              { $row[$descTable[$i]['Field']] = $row[$descTable[$i]['Field']] * 1;
              }
             else if(strval(strpos($descTable[$i]['Type'], "text")) !== "")
              { try
                 { $row[$descTable[$i]['Field']] = json_decode($row[$descTable[$i]['Field']], true);
                 }
                catch(Exception $ex)
                 { $row[$descTable[$i]['Field']] = $row[$descTable[$i]['Field']];
                 }
              }
             else
              { $row[$descTable[$i]['Field']] = $row[$descTable[$i]['Field']];
              }
           }
          else
           { $row[$descTable[$i]['Field']] = null;
           }
        }
     }
    unset($row);

    if(count($detail) > 0)
     { $detail = json_encode($detail);
     }
    else
     { $detail = null;
     }

    $execute = $koneksi->prepare("update ".preg_replace('/[^a-zA-Z0-9_]/', '', $tabel_parent)." set ".preg_replace('/[^a-zA-Z0-9_]/', '', str_replace($tabel_parent."_", "", $tabel_child))." = ? where id = ?");
    $execute->bind_param("si", $detail, $id_parent);
    if(!$execute->execute())
     { $is_commit = 0;
     }
    return $is_commit;
  }

 function deleteDirectory($dir)
  { if(!is_dir($dir))
     { return false;
     }
    $files = scandir($dir);
    foreach ($files as $file)
     { if($file != "." && $file != "..")
        { $filePath = $dir . DIRECTORY_SEPARATOR . $file;
          if (is_dir($filePath))
           { // Recursively delete subdirectory
             deleteDirectory($filePath);
           }
          else
           { // Delete file
             unlink($filePath);
           }
        }
     }
    // Remove the main directory once it's empty
    return rmdir($dir);
  }

 function generateRandomString($length = 10)
  { $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for($i = 0; $i < $length; $i++)
     { $randomString .= $characters[random_int(0, $charactersLength - 1)];
     }
    return $randomString;
  }

 function isDecimal($value)
  { return is_numeric($value) && fmod($value, 1) != 0.0;
  }

 function resizeImage($source, $destination, $max_size)
  { $width = $max_size;
    $height = $max_size;
    $size = getimagesize($source);
    $source_width = $size[0];
    $source_height = $size[1];
    if($source_width >= $source_height)
     { $height = $source_height / $source_width * $max_size;
     }
    else
     { $width = $source_width / $source_height * $max_size;
     }
    // Ambil info gambar
    list($orig_width, $orig_height) = getimagesize($source);
    // Buat image dari file
    $src_image = imagecreatefrompng($source);
    // Buat canvas baru
    $dst_image = imagecreatetruecolor($width, $height);
    // Resize
    imagecopyresampled(
        $dst_image,
        $src_image,
        0, 0, 0, 0,
        $width, $height,
        $orig_width, $orig_height
    );
    // Simpan gambar baru
    imagejpeg($dst_image, $destination, 90);
    // Bersihkan memory
    imagedestroy($src_image);
    imagedestroy($dst_image);
  }
  
 function hapusFileDalamFolder($lokasi, $kecuali = null)
  { $files = scandir($lokasi);
    $files = array_values(array_filter($files, function($var) { return($var !== '.' && $var !== '..'); }));
    foreach($files as $key => $value)
     { if(file_exists($lokasi.$value) && $value !== $kecuali)
        { unlink($lokasi.$value) or die('');
        }
     }
  }

 function debugQuery($query, $types, $params)
  { $escaped = [];
    foreach($params as $key => $value)
     { if($types[$key] == 's')
        { $escaped[] = "'" . addslashes($value ?? '') . "'";
        }
       elseif($types[$key] == 'i' || $types[$key] == 'd')
        { $escaped[] = $value;
        }
       else
        { $escaped[] = "'" . addslashes($value ?? '') . "'";
        }
     }
    $queryParts = explode('?', $query);
    $finalQuery = '';
    foreach($queryParts as $index => $part)
     { $finalQuery .= $part;
       if(isset($escaped[$index]))
        { $finalQuery .= $escaped[$index];
        }
     }
    return $finalQuery;
  }

 function updateStok($koneksi, $is_commit, $nama_tabel, $jenis_transaksi = "+", $id_transaksi)
  { $execute = $koneksi->prepare("select * from ".preg_replace('/[^a-zA-Z0-9_]/', '', $nama_tabel)."_barang where ".preg_replace('/[^a-zA-Z0-9_]/', '', $nama_tabel)."_id = ?");
    $execute->bind_param("i", $id_transaksi);
    $execute->execute();
    $result = $execute->get_result();
    while($row = $result->fetch_assoc())
     { $execute2 = $koneksi->prepare("update barang set stok = ifnull(stok, 0) ".$jenis_transaksi." ? where id = ?");
       $execute2->bind_param("di", $row['jumlah'], $row['barang_id']);
       if(!$execute2->execute())
        { $is_commit = 0;
        }
     }
    return $is_commit;
  }

?>