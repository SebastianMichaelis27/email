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

 $where = "";
 $types = '';
 $values = [];
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
    while ($row = $result->fetch_assoc())
     { $jlh = intval($row['jlh']);
     }
  }

 if($jlh < 1)
  { $normalisasi_data = [];
    $types = "";
    $values = [];
    $params = [];
    foreach($data as $field => $value)
     { $normalisasi_field = preg_replace('/[^a-zA-Z0-9_]/', '', $field);
       $normalisasi_data[$normalisasi_field] = $value;
       if($value === null || strtolower($value) === 'null' || $value === '')
        { $params[] = "null";
        }
       else
        { $types .= "s";
          $values[] = $value;
          $params[] = "?";
        }
     }
    $data = $normalisasi_data;

    $execute = $koneksi->prepare("insert into ".preg_replace('/[^a-zA-Z0-9_]/', '', $_POST['Nama_Tabel'])." (".implode(',', array_keys($data)).") values(".implode(", ", $params).")");
    $execute->bind_param($types, ...$values);
    if(!$execute->execute())
     { $is_commit = 0;
       echo '<div class="error">Gagal Terimpan!</div>';
     }
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