<?php
 include("../akjja012j19210239.php");

 $lokasi_folder = "../../files/";
 if(!is_dir($lokasi_folder))
  { mkdir($lokasi_folder, 0755);
  }

 $lokasi_folder .= "incoming-email-attachments/";
 if(!is_dir($lokasi_folder))
  { mkdir($lokasi_folder, 0755);
  }

 $format_khusus = [];
 if(isset($_POST['format_khusus']) && is_array($_POST['format_khusus']))
  { $format_khusus = $_POST['format_khusus'];
  }

 $where = "";
 $params = [];
 $types = "";

 $cari = [];
 if(isset($_POST['cari']) && $_POST['cari'] !== "")
  { $cari = json_decode($_POST['cari'], true);
  }
 $group_cari = array_values(array_unique(array_column($cari, 'field_pencarian')));
 foreach($group_cari as $field)
  { $table_field = preg_replace('/[^a-zA-Z0-9_]/', '', $_POST['Nama_Tabel']).".".preg_replace('/[^a-zA-Z0-9_]/', '', $field);
    $search = array_values(array_filter($cari, function($var) use($field) {
     return ($var['field_pencarian'] == $field);
    }));
    $filter = "";
    foreach($search as $key => $value)
     { if($filter !== "")
        { $filter .= " or ";
        }
       if($value['jenis_pencarian'] == "mirip")
        { $filter .= $table_field." like ?";
          $types .= "s";
          $params[] = "%".$value['value_pencarian']."%";
        }
       else if($value['jenis_pencarian'] == "sama")
        { $filter .= $table_field." = ?";
          $types .= "s";
          $params[] = $value['value_pencarian'];
        }
       else if($value['jenis_pencarian'] == "sebelum")
        { $filter .= $table_field." < ?";
          $types .= "s";
          $params[] = $value['value_pencarian'];
        }
       else if($value['jenis_pencarian'] == "setelah")
        { $filter .= $table_field." > ?";
          $types .= "s";
          $params[] = $value['value_pencarian'];
        }
       else if($value['jenis_pencarian'] == "berisi" && $value['value_pencarian'] == "berisi")
        { $filter .= "ifnull(".$table_field.", '') <> ''";
        }
       else if($value['jenis_pencarian'] == "berisi" && $value['value_pencarian'] == "tidak_berisi")
        { $filter .= "ifnull(".$table_field.", '') = ''";
        }
       else if($value['jenis_pencarian'] == "periode")
        { $value['value_pencarian'] = date('Y-m-d', strtotime($value['value_pencarian']));
          $value['value_pencarian2'] = date('Y-m-d', strtotime($value['value_pencarian2']));

          $filter .= "(".$table_field." >= ? and ".$table_field." <= ?)";
          $types .= "ss";
          $params[] = $value['value_pencarian'];
          $params[] = $value['value_pencarian2'];
        }
       else if($value['jenis_pencarian'] == "jangkauan")
        { $value['value_pencarian'] = preg_replace('/[^0-9.]/', '', $value['value_pencarian']);
          $value['value_pencarian2'] = preg_replace('/[^0-9.]/', '', $value['value_pencarian2']);

          $filter .= "(".$table_field." >= ? and ".$table_field." <= ?)";
          $types .= "ii";
          $params[] = $value['value_pencarian'];
          $params[] = $value['value_pencarian2'];
        }
     }
    if($filter !== "")
     { $filter = "(".$filter.")";
       if($where == "")
        { $where = " where ".$filter;
        }
       else
        { $where .= " and ".$filter;
        }
     }
  }

 if($where == "")
  { $where = " where (`users_id` = ?)";
  }
 else
  { $where .= " and (`users_id` = ?)";
  }
 $types .= "s";
 $params[] = $_POST['user_id'] ?? '';

 $order_by = "";
 if(isset($_POST['urutan']) && $_POST['urutan'] !== "")
  { $urutan = json_decode($_POST['urutan'], true);
    foreach($urutan as $key => $value)
     { $table_field = preg_replace('/[^a-zA-Z0-9_]/', '', $_POST['Nama_Tabel']).".".preg_replace('/[^a-zA-Z0-9_]/', '', $value['field_urutan']);
       if($order_by !== "")
        { $order_by .= ", ";
        }
       if($value['jenis_urutan'] == "az")
        { $order_by .= $table_field." asc";
        }
       else
        { $order_by .= $table_field." desc";
        }
     }
  }
 if($order_by == "")
  { $order_by = "id desc";
  }

 $nhalaman = 1;
 $halaman = 1;
 if(isset($_POST['halaman']) && $_POST['halaman'] !== "")
  { $halaman = $_POST['halaman'];
  }
 $nListView = 0;
 $sql = $koneksi->prepare("select count(*) as jlh from ".preg_replace('/[^a-zA-Z0-9_]/', '', $_POST['Nama_Tabel']).$where);
 if(count($params) > 0)
  { $sql->bind_param($types, ...$params);
  }
 $sql->execute();
 $result = $sql->get_result();
 while($row = $result->fetch_assoc())
  { $nListView = $row['jlh'];
  }

 if($nListView > $_POST['maxRecord'])
  { $bagi = $nListView / $_POST['maxRecord'];
    $mod = $nListView % $_POST['maxRecord'];
    if($mod == 0)
     { $nhalaman = intval($bagi);
     }
    else
     { $nhalaman = intval($bagi) + 1;
     }
  }

 if($halaman > $nhalaman)
  { $halaman = $nhalaman;
  }
 if($halaman < 1)
  { $halaman = 1;
  }

 $dataRows = [];
 $limit = $halaman * $_POST['maxRecord'];
 $start = $limit - $_POST['maxRecord'];
 $sql = $koneksi->prepare("select `id`, `from`, `to`, `subject`, `date`, `seen` from ".preg_replace('/[^a-zA-Z0-9_]/', '', $_POST['Nama_Tabel']).$where." order by ".$order_by." limit ".intval($_POST['maxRecord'])." offset ".$start);
 if(count($params) > 0)
  { $sql->bind_param($types, ...$params);
  }
 $sql->execute();
 $result = $sql->get_result();
 $dataRows = $result->fetch_all(MYSQLI_ASSOC);

 $incoming_email_id = array_values(array_unique(array_column($dataRows, 'id')));
 $placeholders = implode(',', array_fill(0, count($incoming_email_id), '?'));
 $types = str_repeat('i', count($incoming_email_id));

 $attachments = array();
 if(count($incoming_email_id) > 0)
  { $sql = $koneksi->prepare("select * from incoming_email_attachments where incoming_email_id in (".$placeholders.")");
    $sql->bind_param($types, ...$incoming_email_id);
    $sql->execute();
    $result = $sql->get_result();
    $attachments = $result->fetch_all(MYSQLI_ASSOC);
  }

 $list = "";
 $DataEdit = "";
 $sekali = 0;
 for($i=0; $i<count($dataRows); $i++)
  { preg_match('/&lt;(.*?)&gt;/', htmlspecialchars($dataRows[$i]['from']), $matches);
    $from = $matches[1] ?? null;
    if($from == null)
     { preg_match('/<(.*?)>/', htmlspecialchars($dataRows[$i]['from']), $matches);
       $from = $matches[1] ?? null;
     }
    $dataRows[$i]['from'] = trim(str_replace("<".$from.">", "", $dataRows[$i]['from']));

    $id = $dataRows[$i]['id'];
    $dataAttachments = array_values(array_filter($attachments, function($var) use($id) {
     return (strval($var['incoming_email_id']) == strval($id));
    }));
    $list_file = "";
    foreach($dataAttachments as $key => $value)
     { $extension = strtolower(pathinfo($value['name'], PATHINFO_EXTENSION));
       $list_file .= '<br><a href="files/incoming-email-attachments/'.$value['id'].'.'.$extension.'" target="blank">'.$value['name'].'</a>';

       if($sekali == 0)
        { $sekali = 1;
          //file_put_contents($lokasi_folder.$value['name'], base64_decode($value['body']));
        }
     }

    $DataEdit .= '<textarea class="textarea_edit-id">'.$dataRows[$i]['id'].'</textarea>
                  <div class="email-header">
                   <b>'.$dataRows[$i]['from'].'</b><br>
                   <small>'.$from.'</small>
                  </div>';
    /*
                  <div class="email-body">
                   <b style="color:#1b7736;">'.$dataRows[$i]['subject'].'</b>
                   <div style="border:1px solid silver; border-radius:3px; padding:10px; margin-top:10px;">
                    '.$dataRows[$i]['body'].$list_file.'
                   </div>
                  </div>*/

    $bold = ($dataRows[$i]['seen'] == 0 ? ' style="font-weight:bold;"' : '');
    $list .= '<tr class="group-hover view" onclick="view(this);">
               <td>
                <div class="text-titik-titik"'.$bold.'>'.$dataRows[$i]['from'].'</div>
                <small class="text-titik-titik">'.$from.'</small>
               </td>
               <td><div class="text-titik-titik"'.$bold.'>'.$dataRows[$i]['subject'].'</div></td>
               <td><div class="text-titik-titik">'.$dataRows[$i]['date'].'</div></td>
              </tr>';
  }

?>

<table class="table-border">
 <thead>
  <tr>
   <th style="width:200px; min-width:200px; maxwidth:200px;">From</th>
   <th>Subject</th>
   <th style="width:150px; min-width:150px; maxwidth:150px;">Date</th>
  </tr>
 </thead>
 <tbody><?= $list ?></tbody>
</table>
<div style="display:none;">
 <textarea id="halaman"><?= $halaman ?></textarea>
 <textarea id="nhalaman"><?= $nhalaman ?></textarea>
 <?= $DataEdit ?>
</div>