<?php
 include("design/url.php");

 $actual_link = $_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
 $last_actual_link = substr($actual_link, strrpos($actual_link, '/') + 1);

 function goToHTTPS()
  { $url = strtolower($_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI']);
    $protocol = "";
    if (isset($_SERVER['HTTPS']) && ($_SERVER['HTTPS'] == 'on' || $_SERVER['HTTPS'] == 1) || isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https')
     { $protocol = "https://";
     }
    else
     { $protocol = "http://";
       $url = "https://".$url;
       header('Location: '.$url);
     }
  }
 goToHTTPS();
 
 date_default_timezone_set('Asia/Jakarta');
 $info = getdate();
 $date = $info['mday'];
 $month = $info['mon'];
 $year = $info['year'];
 $hour = $info['hours'];
 $min = $info['minutes'];
 $sec = $info['seconds'];
 $now = $year."-".str_pad($month,2,"0",STR_PAD_LEFT)."-".str_pad($date,2,"0",STR_PAD_LEFT)." ".str_pad($hour,2,"0",STR_PAD_LEFT).":".str_pad($min,2,"0",STR_PAD_LEFT).":".str_pad($sec,2,"0",STR_PAD_LEFT);

 session_start();
 if(isset($_POST['btn_login']))
  { $_SESSION['username'] = $_POST['username'];
    $_SESSION['token'] = $_POST['token'];
    header('Location: email-masuk');
  }

 $_GET['form'] = str_replace(".php", "", $_GET['form']);
 if(empty($_GET['form']))
  { $_GET['form'] = "index";
  }
 if($_GET['form'] == "index")
  { include("login.php");
  }
 else if($_GET['form'] == "logout")
  { if(isset($_SESSION['username']))
     { unset($_SESSION['username']);
     }
    if(isset($_SESSION['token']))
     { unset($_SESSION['token']);
     }
    header('Location: .');
  }
 else
  { include("form.php");
  }

?>