<?php
 include("design/url.php");
 if(isset($_SESSION['user_id']) && $_SESSION['user_id'] !== "")
  { header('Location: home');
  }
?>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <title>Login</title>
 <meta name="viewport" content="width=device-width, inital-scale=1.0">
 <link href="img/favicon.png" rel="icon">
 <link rel="stylesheet" href="fonts/font-awesome/css/all.css">
 <style>
  body
   { font-family : 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
     background : linear-gradient(135deg, #667eea 0%, #764ba2 100%);
     margin : 0px;
     padding : 0px;
     color : #575757;
   }
  button
   { background : #d7d7d7;
     border-radius : 5px;
     border : 1px solid silver;
     color : #5c5c5c;
   }
  button:active
   { background : #bfbfbf;
   }
  .btn-primary
   { background : #481879;
     color : white;
     width : 100%;
     font-size : 18px;
     font-weight : bold;
     padding : 10px 0px;
     border : 1px solid #370f60;
   }
  .btn-primary:active
   { background : #2f0955;
   }
  input[type='text'], input[type='password'], select
   { width : 100%;
     text-align : left;
     padding : 1vmin;
     border-radius : 0px;
     border : 1px solid silver;
     border-radius : 3px;
     outline : 0;
   }
  input[type='text']:focus, input[type='password']:focus
   { box-shadow : 0 4px 12px rgba(79, 70, 229, 0.25);
   }
  input[type='password']
   { padding-right : 35px;
   }
  .kontainer
   { display : flex;
     align-items : center;
     justify-content : center;
     min-height : 100vh;
   }
  .kontainer .form-login
   { background : white;
     padding : 20px;
     max-width : 250px;
     border-radius : 5px;
     display : flex;
     flex-wrap : wrap;
     gap : 10px;
     box-shadow : 0 4px 12px rgba(79, 70, 229, 0.25);
   }
  .kontainer .form-login > div
   { text-align : center;
     font-weight : bold;
     display : block;
     width : 100%;
   }
  .kontainer .form-login img
   { width : 100%;
     max-width : 140px;
     margin-left : auto;
     margin-right : auto;
   }
  .kontainer .form-login .box-password
   { position : relative;
     width : 100%;
   }
  .kontainer .form-login .box-password i
   { position : absolute;
     right : 10px;
     top : 50%;
     transform : translateY(-50%);
   }
  .error
   { color : red;
     text-align : center;
   }

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
  /* Safari */
  @-webkit-keyframes spin
   { 0%
      { -webkit-transform : rotate(0deg);
      }
     100%
      { -webkit-transform : rotate(360deg);
      }
   }
  @keyframes spin
   { 0%
      { transform : rotate(0deg);
      }
     100%
      { transform : rotate(360deg);
      }
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
  .error
   { color : red;
     font-weight : normal;
     text-align : left;
     padding : 0px 5px;
   }
 </style>
</head>
<body>

 <div class="loader"></div>
 <div class="loader-block"></div>

 <div class="kontainer">
  <div class="form-login">
   <div>Email</div>
   <img src="img/logo.png" alt="">
   <div>
    <input type="text" autocomplete="new-password" id="username" autofocus  placeholder="Email" onkeypress="enterEvent(event);" value="info@sttsyalomnias.ac.id">
    <div class="error error-email"></div>
   </div>
   <div>
    <div class="box-password">
     <input type="password" autocomplete="new-password" id="password" placeholder="Password" onkeypress="loginEvent(event);" value="infonSyalomNias991!%">
     <i class="far fa-eye" onclick="viewPassword(this);"></i>
    </div>
    <div class="error error-password"></div>
   </div>
   <button type="button" class="btn-primary" id="btnlogin" onclick="login();">
    LOGIN <i class="fas fa-sign-in-alt"></i>
   </button>
   <div class="error"></div>
  </div>
 <div>
 <div id='div-result' style='display:none;'></div>

 <script>

  function enterEvent(evt)
   { var charCode = (evt.which) ? evt.which : event.keyCode;
     if(charCode == "13")
      { document.getElementById('password').focus();
        document.getElementById('password').select();
      }
   }

  function loginEvent(evt)
   { var charCode = (evt.which) ? evt.which : event.keyCode;
     if(charCode == "13")
      { document.getElementById('btnlogin').click();
      }
   }

  function login()
   { if(cekEmail(document.getElementById('username').value) == false)
      { document.querySelector('.error-email').innerHTML = 'Format email tidak sesuai!';
      }
     else
      { document.querySelector('.error-email').innerHTML = '';
        document.getElementsByClassName('loader')[0].style['display'] = 'block';
        document.getElementsByClassName('loader-block')[0].style['display'] = 'block';
        var formdata = new FormData();
        formdata.append('username', document.getElementById('username').value);
        formdata.append('password', document.getElementById('password').value);
        var ajax = new XMLHttpRequest();
        ajax.addEventListener('load', responseLogin, false);
        ajax.open('POST', '<?= $url ?>/action/index/login.php', true);
        ajax.send(formdata);
      }
     
   }

  function responseLogin()
   { document.getElementsByClassName('loader')[0].style['display'] = 'none';
     document.getElementsByClassName('loader-block')[0].style['display'] = 'none';
     var response = document.createElement('div');
     response.innerHTML = event.srcElement.response;
     if(response.querySelectorAll('.proses-berhasil').length > 0)
      { document.getElementById('div-result').innerHTML = `
         <form method="post">
          <textarea name="username">` + response.querySelector('.proses-berhasil .username').value + `</textarea>
          <textarea name="token">` + response.querySelector('.proses-berhasil .token').value + `</textarea>
          <button type="submit" name='btn_login' id='btn_login'></button>
         </form>
        `;
        document.getElementById('btn_login').click();
      }
     document.querySelector('.error').innerHTML = '';
     if(response.querySelectorAll('.pesan-peringatan').length > 0)
      { for(var i=0; i<response.querySelectorAll('.pesan-peringatan').length; i++)
         { if(document.querySelector('.error').innerHTML !== '')
            { document.querySelector('.error').innerHTML += '\n';
            }
           document.querySelector('.error').innerHTML += response.querySelectorAll('.pesan-peringatan')[i].textContent;
         }
      }
   }

  function viewPassword(element)
   { if(element.className.toString().search('far fa-eye-slash') >= 0)
      { element.className = 'far fa-eye';
        element.parentNode.querySelector('input').type = 'password';
      }
     else
      { element.className = 'far fa-eye-slash';
        element.parentNode.querySelector('input').type = 'text';
      }
   }

  function cekEmail(email)
   { const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
     if(regex.test(email))
      { return true;
      }
     else
      { return false;
      }
   }

 </script>

</body>
</html>