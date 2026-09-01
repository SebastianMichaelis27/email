<?php

 include("../bjksadkhrej121lkjkjk.php");

 $is_commit = 1;
 mysqli_autocommit($koneksi, FALSE);

 $DataTidakBolehRangkap = [];
 if(isset($_POST['DataTidakBolehRangkap']) && is_array($_POST['DataTidakBolehRangkap']))
  { $DataTidakBolehRangkap = $_POST['DataTidakBolehRangkap'];
  }
 $data = [];
 if(isset($_POST['data']) && is_array($_POST['data']))
  { $data = $_POST['data'];
  }

 $where = " id <> ?";
 $types = "i";
 $values = [];
 $values[] = intval($_POST['id']);
 foreach($DataTidakBolehRangkap as $field => $value)
  { if($where !== "")
     { $where .= " and ";
     }
    if($value === null || strtolower($value) === 'null' || $value === '')
     { $where .= "ifnull(lower(concat(".preg_replace('/[^a-zA-Z0-9_]/', '', $field).")), '') = ''";
     }
    else
     { $where .= "ifnull(lower(concat(".preg_replace('/[^a-zA-Z0-9_]/', '', $field).")), '') = ?";
       $types .= "s";
       $values[] = $value;
     }
  }
 $jlh = 0;
 if(count($DataTidakBolehRangkap) > 0)
  { $execute = $koneksi->prepare("select count(*) as jlh from ".preg_replace('/[^a-zA-Z0-9_]/', '', $_POST['Nama_Tabel'])." where ".$where);
    $execute->bind_param($types, ...$values);
    $execute->execute();
    $result = $execute->get_result();
    while($row = $result->fetch_assoc())
     { $jlh = intval($row['jlh']);
     }
  }

 if($jlh < 1)
  { $types = "";
    $values = [];
    $set = [];
    foreach($data as $field => $value)
     { $normalisasi_field = preg_replace('/[^a-zA-Z0-9_]/', '', $field);
       if($value === null || strtolower($value) === 'null' || $value === '')
        { $set[] = $normalisasi_field." = null";
        }
       else
        { $types .= "s";
          $values[] = $value;
          $set[] = $normalisasi_field." = ?";
        }
     }
    $types .= "i";
    $values[] = intval($_POST['id']);

    $execute = $koneksi->prepare("update ".preg_replace('/[^a-zA-Z0-9_]/', '', $_POST['Nama_Tabel'])." set ".implode(", ", $set)." where id = ?");
    $execute->bind_param($types, ...$values);
    if(!$execute->execute())
     { $is_commit = 0;
       echo '<div class="error">Gagal!</div>';
     }

    /*$id = intval($_POST['id']);
    $execute = $koneksi->prepare("update produk set kategori = json_set(kategori, '$[0].text', ?) where json_search(kategori, 'one', ?, NULL, '$[*].value') is not null");
    $execute->bind_param('ss', $data['kategori'], $id);
    f(!$execute->execute())
     { $is_commit = 0;
       echo '<div class="error">Gagal!</div>';
     }*/

  }
 else
  { $is_commit = 0;
    echo '<div class="error">Gagal! Data duplikat</div>';
  }

 if($is_commit == 1)
  { mysqli_commit($koneksi);
  }
 else
  { mysqli_rollback($koneksi);
  }

?>