<!DOCTYPE html>
<html>
<head>
 <title>EMAIL</title>
 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 <meta name="robots" content="noindex, nofollow">
 <link rel="icon" href="img/favicon.png">
 <link rel="stylesheet" href="fonts/font-awesome/css/all.css">
 <link rel="stylesheet" href="plugin/select-chosen/select-chosen.css">
 <link rel="stylesheet" href="plugin/date-picker/date-picker.css">
 <link rel="stylesheet" href="plugin/multiple-select-picker/multiple-select-picker.css">
 <style>
  .loader
   { border : 16px solid #f3f3f3;
     border-radius : 50%;
     border-top : 16px solid #3498db;
     width : 120px;
     height : 120px;
     -webkit-animation : spin 2s linear infinite; /* Safari */
     animation : spin 2s linear infinite;
     /* tambahanku */
     position : fixed;
     margin-left : auto;
     margin-right : auto;
     margin-top : auto;
     margin-bottom : auto;
     left : 0;
     right : 0;
     top : 0;
     bottom : 0;
     z-index : 1033;
     display : none;
     /* tambahanku */
   }
  .loader-block
   { height : 100%;
     width : 100vw;
     background-color : #000;
     position : fixed;
     position : fixed;
     margin-left : auto;
     margin-right : auto;
     margin-top : auto;
     margin-bottom : auto;
     left : 0;
     right : 0;
     top : 0;
     bottom : 0;
     z-index : 1032;
     opacity : 0.5;
     display : none;
   }
  /* Safari */
  @-webkit-keyframes spin
   { 0%
      { -webkit-transform: rotate(0deg);
      }
     100%
      { -webkit-transform: rotate(360deg);
      }
   }
  @keyframes spin
   { 0%
      { transform: rotate(0deg);
      }
     100%
      { transform: rotate(360deg);
      }
   }
  .spinner
   { width : 18px;
     height : 18px;
     border : 4px solid #764ba2;
     border-top : 4px solid #fff;
     border-radius : 50%;
     animation : spin 1s linear infinite;
     display : none;
   }

  .modal
   { display : none;
     position : fixed;
     z-index : 1031;
     left : 0;
     top : 0;
     width : 100%;
     height : 100%;
     overflow : auto;
     background-color : rgb(0,0,0);
     background-color : rgba(0,0,0,0.4);
   }
  .modal-content
   { background-color : #fefefe;
     margin-top : 20px;
     margin-left : auto;
     margin-right : auto;
     margin-bottom : 20px;
     border : 0px;
     width : calc(100% - 12px);
     max-width : 1100px;
     border-radius : 5px;
     box-shadow : 0 15px 12px #434ffb33;

     transform : translateY(20px); /* posisi awal (di bawah) */
     opacity : 0;
     pointer-events : none;
     transition : transform 0.3s ease, opacity 0.3s ease;
   }
  .modal-content.show
   { transform : translateY(0); /* naik ke atas */
     opacity : 1;
     pointer-events : auto;
   }
  .modal-header
   { display : grid;
     grid-template-columns : 1fr auto;
     gap : 5px;
     font-size : 18px;
     padding : 20px;
     color : white;
     background : #1b2477;
     border-top-left-radius : 5px;
     border-top-right-radius : 5px;
   }
  .modal-header.danger
   { background : #b30000;
   }
  .modal-header.success
   { background : #1b7736;
   }
  .modal-header.brown
   { background : #773e1b;
   }
  .modal-header.yellow
   { background : #773e1b;
   }
  .modal-header.dark-silver
   { background : #555;
   }
  .modal-header.toska
   { background : #006f63;
   }
  .modal-header.purple
   { background : #685cb6;
   }
  .modal-header .modal-title
   { font-weight : 500;
   }
  .modal-body
   { padding : 20px;
   }
  .modal-footer
   { padding : 20px;
     border-top : 1px solid silver;
     text-align : right;
   }
  .modal-footer button
   { padding : 10px;
   }
  .close
   { color : white;
     font-weight : bold;
     user-select : none;
   }
  .close:hover, .close:focus
   { font-weight : 700;
     text-decoration : none;
     cursor : pointer;
   }

  .tab-container
   { width : 100%;
   }
  .tab-buttons
   { display : flex;
     flex-wrap : wrap;
     border-bottom : 1px solid #ddd;
   }
  .tab-button
   { padding : 10px 20px;
     cursor : pointer;
     border : none;
     background : none;
     font-size : 14px;
     outline : none;
     transition : 0.3s;
   }
  .tab-button.active
   { border-bottom : 2px solid #6974dc;
     font-weight : bold;
     color : #6974dc;
   }
  .tab-content
   { display : none;
     padding : 15px 0;
   }
  .tab-content.active
   { display : block;
   }

  body
   { font-family : 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
     background : linear-gradient(135deg, #667eea 0%, #764ba2 100%);
     margin : 0;
     padding : 0;
     color : #2c3e50;
     font-size : 14px;
   }
  .container
   { 
   }
  .side-left
   { position : fixed;
     z-index : 1;
     background : #2c3e50;
     width : 100%;
     max-width : 250px;
     height : 100vh;
     color : white;
     overflow-y : auto;
     overflow-x : hidden;
     transition : max-width 0.5s ease;
   } 
  .side-left.hide
   { max-width : 0px;
   }
  .side-left .content
   { width : 250px;
   }
  .side-left .logo
   { display : grid;
     grid-template-columns : 1fr;
     gap : 10px;
     text-align : center;
     margin-bottom : 10px;
   }
  .side-left .logo .app-name
   { padding : 0px 10px;
     margin-top : 20px;
     font-weight : bold;
   }
  .side-left .logo img
   { max-height : 100px;
     margin-left : auto;
     margin-right : auto;
   }
  .side-left .logo .title
   { background : #34495e;
     padding : 10px;
   }

  .side-right
   { overflow-y : auto;
     overflow-x : hidden;
     margin-left : 250px;
     height : 100vh;
     transition : margin-left 0.5s ease;
     display : grid;
     grid-template-rows : 1fr auto;
   }
  .side-right .header
   { background : white;
     position : fixed;
     width : 22px;
     transition : width 0.5s ease;
     margin : 20px;
     padding : 10px 20px;
     display : grid;
     box-shadow : 0 4px 12px #0003;
     grid-template-columns : auto 1fr auto;
     gap : 10px;
     border-radius : 5px;
     align-items : center;
     overflow-x : hidden;
     overflow-y : hidden; /* opsional */
     white-space : nowrap; /* untuk mencegah item turun ke bawah */
   }
  .side-right .header .navbar
   { font-size : 25px;
   }
  .side-right .header .title
   { text-align : center;
     font-weight : bold;
     font-size : 16px;
   }
  .side-right .header .drop-down
   { position : relative;
   }
  .side-right .header .drop-down .drop-down-item
   { position : absolute;
     background : white;
     border : 1px solid silver;
     border-radius : 5px;
     top : calc(100% + 5px);
     right : 0px;
     box-shadow : 0 0 5px #111111cf;
     display : grid;
     grid-template-columns : 1fr;
     gap : 5px;
     width : max-content;
     opacity : 0;
     visibility:  hidden;
     transform : translateY(-10px);
     transition : opacity .25s ease, transform .25s ease;
   }
  .side-right .header .drop-down .drop-down-item.show
   { opacity : 1;
     visibility : visible;
     transform : translateY(0);
     position : fixed;
   }
  .side-right .header .drop-down .drop-down-item a
   { display : grid;
     grid-template-columns : auto 1fr;
     align-items : center;
     gap : 5px;
     cursor : pointer;
     user-select : none;
     padding : 10px;
     color : #2c3e50;
     text-decoration : none;
   }
  .side-right .header .drop-down .drop-down-item a.active
   { display : block;
   }
  .side-right .header .drop-down .drop-down-item a:hover
   { background : #eaeaea;  
   }
  .side-right .header .drop-down .profil
   { background : #6c757d;
     border : 1px solid #565d64;
     color : white;
     display : grid;
     grid-template-columns : auto 1fr auto;
     gap : 5px;
     padding : 10px;
     border-radius : 5px;
     cursor : pointer;
     user-select : none;
     align-items : center;
   }
  .side-right .header .drop-down .profil:hover
   { background : #5c646d;
   }
  .side-right .content
   { overflow-x : hidden;
     overflow-y : auto;
   }
  .side-right .content .form
   { margin-top : 80px;
     padding : 20px;
     display : block;
   }
  .side-right .content .form .box
   { padding : 20px;
     background : white;
     box-shadow : 0 4px 12px #0003;
     border-radius : 5px;
   }
  .side-right .footer
   { padding : 10px;
     background : #2c3e50;
     text-align : center;
     color : white;
   }
  .side-right .footer a
   { color : white;
     text-decoration : none;
   }
  .side-right .footer a:hover
   { text-decoration : underline;
   }
  .form-input
   { display : grid;
     grid-template-columns : auto 1fr;
     column-gap : 20px;
     row-gap : 10px;
   }
  .form-input b
   { padding-top : 7px;
   }
  .dua-kolom
   { display : grid;
     grid-template-columns : 1fr 1fr;
     column-gap : 20px;
     row-gap : 5px;
     align-items : start;
   }
  .dua-kolom.right-auto
   { grid-template-columns : 1fr auto;
     column-gap : 10px;
   }
  .dua-kolom.left-auto
   { grid-template-columns : auto 1fr;
     column-gap : 10px;
   }
  input[type='text']
   { outline : none;
     border-radius : 3px;
     border : 1px solid silver;
     padding-left : 5px;
     padding-right : 5px;
   }
  input[type='text']:focus
   { box-shadow : 0 0px 10px #434ffb33;
   }
  .form-input input[type='text'], .form-input input[type='password'], .custom-select input[type='text'], .default-input input[type='text'], .default-input input[type='password'], .custom-select input[type='text']
   { padding : 8px;
     width : 100%;
     box-sizing : border-box;
     height : 33px;
     font-size : 14px;
     outline : none;
     border-radius : 3px;
     border : 1px solid silver;
   }
  .form-input input[type='text']:focus, .form-input input[type='password']:focus, .custom-select input[type='text']:focus, .form-input textarea:focus, .default-input input[type='text']:focus, .default-input input[type='password']:focus, .custom-select input[type='text']:focus, .default-input textarea:focus
   { box-shadow : 0 0px 10px #434ffb33;
   }
  .form-input textarea, .default-input textarea
   { width : calc(100% - 18px);
     background : white;
     border : 1px solid silver;
     border-radius : 3px;
     resize : none;
     outline : none;
     padding : 8px;
     height : 16px;
   }
  .form-input select, .default-input select
   { width : 100%;
     background : white;
     border : 1px solid silver;
     border-radius : 3px;
     padding : 8px;
     height : 33px;
   }
  .form-input input:read-only, .default-input input:read-only
   { background : #f2f2f2;
   }
  .datepicker .box-input-calender input
   { background : white;
   }
  .view-input
   { min-height : 32px;
     border : 1px solid silver;
     background : #eeeeee;
     border-radius : 3px;
   }
  .view-input > div
   { padding : 7px 10px 7px 10px;
   }
  @media only screen and (max-width : 600px)
   { .form-input
      { grid-template-columns : 1fr;
      }
   }
  @media only screen and (max-width : 900px)
   { .dua-kolom
      { grid-template-columns : 1fr;
      }
   }
  .error-input, .error-pencarian
   { color : red;
   }
  .hide
   { display : none;
   }

  ul.menu
   { list-style-type : none;
     margin : 0px 0px;
     padding : 0px 0px;
     cursor : pointer;
     user-select : none;
   }
  ul.menu li
   { padding-left : 10px;
   }
  ul.menu li a
   { color : white;
     text-decoration : none;
   }
  ul.menu li div
   { display : grid;
     grid-template-columns : auto 1fr auto;
     gap : 10px;
     padding : 10px;
   }
  ul.menu li div i
   { margin-top : 3px;
   }
  ul.menu li > div i.fa-chevron-down, ul.menu li ul li > div i.fa-chevron-down
   { transform : rotate(90deg);
     transition : transform 0.3s ease;
   }
  ul.menu li.show > div i.fa-chevron-down, ul.menu li ul li.show > div i.fa-chevron-down
   { transform : rotate(0deg);
   }
  ul.menu li div:hover, ul.menu li.active ul li div:hover
   { background : #34495e;
   }
  ul.menu li div
   { border-top-left-radius : 10px;
     border-bottom-left-radius : 10px;
   }
  ul.menu li.active div
   { background : #6974dc;
   }
  ul.menu li.active ul li.active div
   { background : #6974dc;
   }
  ul.menu li.active ul li div
   { background : #2c3e50;
   }
  ul.menu li ul
   { list-style-type : none;
     margin : 0px 0px;
     padding : 0px 0px;
     margin-top : 10px;
     overflow-y : hidden;
     max-height : 0px;
     transition : max-height 0.3s linear;
   }
  ul.menu li.active ul li.active ul li div
   { background : #2c3e50;
   }
  ul.menu li.active ul li.active ul li.active div
   { background : #6974dc;
   }
  ul.menu li.active ul li ul li div:hover
   { background : #34495e;
   }
  .allow-scroll-x
   { width : 100%;
     overflow-x : auto;
   }

  .table-border
   { border-collapse : collapse;
     border-spacing : 0px;
     min-width : 100%;
     border-radius : 5px;
     overflow : hidden;
   }
  .table-border thead tr th
   { background : #9d94d6;
     color : white;
     border : 1px solid white;
   }
  .table-border tr td, .table-border tr th
   { border-bottom : 1px solid silver;
     padding : 10px;
     text-align : left;
     cursor : pointer;
   }

  .table-border2
   { border-spacing : 0px;
     border-top : 1px solid #9d94d6;
     border-left : 1px solid #9d94d6;
     border-top-left-radius : 6px;
     border-top-right-radius : 6px;
   }
  .table-border2  thead tr th
   { vertical-align : middle;
   }
  .table-border2 thead tr td, .table-border2  thead tr th
   { border-right : 1px solid white;
     border-bottom : 1px solid white;
     padding : 10px;
     background : #9d94d6;
     color : white;
   }
  .table-border2 tr td:last-child, .table-border2 tr th:last-child
   { border-right: 1px solid #9d94d6;
   }
  .table-border2 tr td, .table-border2 tr th
   { border-right : 1px solid #9d94d6;
     border-bottom : 1px solid #9d94d6;
     padding : 10px;
   }
  .table-border2 tr th:first-child
   { border-top-left-radius : 6px;
   }
  .table-border2 tr th:last-child
   { border-top-right-radius : 6px;
   }

  .group-hover
   { background : transparent;
     transition : background 0.3s ease;
   }
  .group-hover:hover
   { background : #f6f4ff;
   }
  .tindakan
   { display : flex;
     flex-wrap : wrap;
     gap : 10px;
   }
  .tindakan button
   { width : 30px;
     height : 30px;
     padding : 0px 0px;
     border-radius : 50%;
   }
  .deretan-button
   { display : flex;
     flex-wrap : wrap;
     gap : 10px;
     margin-bottom : 10px;
   }
  .btn-default
   { border : 1px solid silver;
     padding : 5px;
     border-radius : 5px;
     background : #f2f2f2;
   }
  .btn-default:active
   { background : #eaeaea;
   }
  .btn-primary
   { border : 1px solid #2d3ab5;
     padding : 5px;
     border-radius : 5px;
     background : #2d3ab5;
     color : white;
   }
  .btn-primary:active
   { background : #1b2477;
     border : 1px solid #1b2477;
   }
  .btn-danger
   { border : 1px solid #b30000;
     padding : 5px;
     border-radius : 5px;
     background : #b30000;
     color : white;
   }
  .btn-danger:active
   { background : #800707;
     border : 1px solid #800707;
   }
  .btn-success
   { border : 1px solid #1b7736;
     padding : 5px;
     border-radius : 5px;
     background : #1b7736;
     color : white;
   }
  .btn-success:active
   { background : #115926;
     border : 1px solid #115926;
   }
  .btn-brown
   { border : 1px solid #773e1b;
     padding : 5px;
     border-radius : 5px;
     background : #773e1b;
     color : white;
   }
  .btn-brown:active
   { background : #5e2e11;
     border : 1px solid #5e2e11;
   }
  .btn-add
   { border : 1px solid #515895;
     padding : 5px;
     border-radius : 5px;
     background : #515895;
     color : white;
   }
  .btn-add:active
   { background : #3c437d;
     border : 1px solid #3c437d;
   }
  .btn-dark-silver
   { border : 1px solid #555;
     padding : 5px;
     border-radius : 5px;
     background : #555;
     color : white;
   }
  .btn-dark-silver:active
   { background : #4d4d4d;
     border : 1px solid #4d4d4d;
   }
  .btn-toska
   { border : 1px solid #006f63;
     padding : 5px;
     border-radius : 5px;
     background : #006f63;
     color : white;
   }
  .btn-toska:active
   { background : #01534a;
     border : 1px solid #01534a;
   }
  .btn-yellow
   { border : 1px solid #b49f00;
     padding : 5px;
     border-radius : 5px;
     background : #e5ce11;
     color : #545454;
   }
  .btn-yellow:active
   { background : #d6bf02;
     border : 1px solid #d6bf02;
   }
  .btn-black
   { border : 1px solid #5d5c5c;
     padding : 5px;
     border-radius : 5px;
     background : #414141;
     color : #ffffff;
   }
  .btn-black:active
   { background : #000000;
     border : 1px solid #000000;
   }
  .input-halaman
   { height : 25px;
     padding : 0px 5px;
     text-align : center;
     border-radius : 5px;
     border : 1px solid silver;
     outline : none;
     width : 60px;
   }
  .error
   { background : #b30000;
     color : white;
     margin-top : 20px;
     border-radius : 5px;
     display : grid;
     grid-template-columns : 1fr auto;
   }
  .error div
   { padding : 20px;
   }
  .error .close
   { cursor : pointer;
     user-select : none;
   }
  .group-border
   { border : 1px solid silver;
     padding : 15px;
     position : relative;
     margin-bottom : 20px;
   }
  .group-border .title
   { display : inline-block;
     font-weight : bold;
     background : white;
     position : absolute;
     top : -10px;
   }
  .box-password
   { position : relative;
     width : 100%;
   }
  .box-password input[type="text"], .box-password input[type="password"]
   { padding-right : 30px;
   }
  .box-password i
   { position : absolute;
     right : 10px;
     top : 50%;
     transform : translateY(-50%);
   }
  table td, table th
   { vertical-align : top;
   }
  .color-red
   { color : red;
   }
  .text-titik-titik
   { width : 100%;
     overflow : hidden;
     text-overflow : ellipsis;
     display: -webkit-box;
     -webkit-line-clamp: 1; /* Jumlah baris maksimal */
     -webkit-box-orient: vertical;
   }
 </style>
</head>
<body>

 <div style="display:none;">
  <textarea class="user-id"><?= $_SESSION['user_id'] ?></textarea>
  <textarea class="user-name"><?= $_SESSION['username'] ?></textarea>
  <textarea class="user-token"><?= $_SESSION['token'] ?></textarea>
  <textarea class="user-level_id"><?= $_SESSION['users_level_id'] ?></textarea>
  <textarea class="user-cabang_id"><?= $_SESSION['cabang_id'] ?></textarea>
  <textarea class="last_actual_link"><?= $_GET['form'] ?></textarea>
 </div>
 <div class="loader"></div>
 <div class="loader-block"></div>

 <div class="container">
  <div class="side-left">
   <div class="content">
    <div class="logo">
     <span class="app-name">EMAIL</span>
     <img src="img/logo.png">
     <span class="title"><?= $_SESSION['username'] ?? '' ?></span>
    </div>
    <ul class="menu">
     
    </ul>
   </div>
  </div>
  <div class="side-right">

   <div class='content'>
    <div class="header">
     <div class="navbar"><i class="fas fa-bars"></i></div>
     <div class="title"></div>
     <div class="drop-down" onclick="dropDownClick(this);">
      <div class="profil">
       <i class="fas fa-user"></i>
       <div><?= $_SESSION['username'] ?></div>
       <i class="fas fa-caret-down"></i>
      </div>
      <div class="drop-down-item">
       <a onclick="setUbahPassword();"><i class="fas fa-lock"></i><span>Ubah Password</span></a>
       <a href="logout"><i class="fas fa-sign-out-alt"></i><span>Logout</span></a>
      </div>
     </div>
    </div>
    <div class="lebar-header"></div>