   </div>
   <div class="footer">
    &copy 2026 <a href="https://www.smartsolutiondevelopment.com" target="blank">PT Smart Solution Development Indonesia</a>. All rights reserved
   </div>
  </div>
 </div>

 <div class="modal" id="popUpUbahPassword">
  <div class="modal-dialog">
   <div class="modal-content" style="max-width:500px;">
    <div class="modal-header toska">
     <div class="modal-title">Ubah Password</div>
     <div class="close" onclick="hideModal('popUpUbahPassword');">&times</div>
    </div>
    <div class="modal-body">
     <div class="form-input">
      <b>Password Lama *</b>
      <div>
       <div class="box-password">
        <input type="password" autocomplete="new-password" id="ubah_password-password_lama">
        <i class="far fa-eye" onclick="viewPassword(this);"></i>
       </div>
       <div class="error-input"></div>
      </div>
      <b>Password Baru *</b>
      <div>
       <div class="box-password">
        <input type="password" autocomplete="new-password" id="ubah_password-password_baru">
        <i class="far fa-eye" onclick="viewPassword(this);"></i>
       </div>
       <div class="error-input"></div>
      </div>
      <b>Ulangi Password Baru *</b>
      <div>
       <div class="box-password">
        <input type="password" autocomplete="new-password" id="ubah_password-ulangi_password_baru">
        <i class="far fa-eye" onclick="viewPassword(this);"></i>
       </div>
       <div class="error-input"></div>
      </div>
     </div>
    </div>
    <div class="modal-footer">
     <button type="button" class="btn-default" onclick="hideModal('popUpUbahPassword');"><i class="fas fa-times"></i> Batal</button>
     <button type="button" class="btn-toska" onclick="validasiUbahPassword();"><i class="fas fa-save"></i> Ubah Password</button>
    </div>
   </div>
  </div>
 </div>

 <div class="modal" id="popUpKirimEmail">
  <div class="modal-dialog">
   <div class="modal-content" style="max-width:1000px;">
    <div class="modal-header success">
     <div class="modal-title">Kirim Email</div>
     <div class="close" onclick="hideModal('popUpKirimEmail');">&times</div>
    </div>
    <div class="modal-body">
     <div class="form-input">
      <b>To *</b>
      <div>
       <select class="field-input_email" required id="send_email-to" multiple="true">
        <option></option>
       </select>
       <div class="error-input"></div>
      </div>
      <b>Cc</b>
      <div>
       <select class="field-input_email" id="send_email-cc" multiple="true">
        <option></option>
       </select>
       <div class="error-input"></div>
      </div>
      <b>Subject *</b>
      <div>
       <input type="text" class="field-input_email" required id="send_email-subject">
       <div class="error-input"></div>
      </div>
      <b>Body</b>
      <div>
       <textarea spellcheck="false" style="resize:none; overflow:hidden; min-height:100px;" oninput="auto_grow(this);" class="field-input_email" id="send_email-body"></textarea>
       <div class="error-input"></div>
      </div>
      <b>File</b>
      <div>
       <input type="file" style="display:none;" onchange="pilihAttachment(this);" id="send_email-file">
       <button type="button" class="btn-default" onclick="document.getElementById('send_email-file').click();">Pilih File</button>
       <div class="error-input"></div>
       <div id="send_email-list_file"></div>
      </div>
     </div>
    </div>
    <div class="modal-footer">
     <button type="button" class="btn-default" onclick="hideModal('popUpKirimEmail');"><i class="fas fa-times"></i> Batal</button>
     <button type="button" class="btn-success" onclick="kirimEmail();"><i class="fas fa-paper-plane"></i> Kirim</button>
    </div>
   </div>
  </div>
 </div>
     
 <script type="text/javascript" src="plugin/select-chosen/select-chosen.js"></script>
 <script type="text/javascript" src="plugin/multiple-select-picker/multiple-select-picker.js"></script>
 <script type="text/javascript" src="plugin/date-picker/date-picker.js"></script>

 <script>

  initMultipleSelect(document.getElementById('send_email-to'), true, null, {}, true);
  initMultipleSelect(document.getElementById('send_email-cc'), true, null, {}, true);

  window.addEventListener('resize', function() {
   setMenuClick();
  });

  function buatEmail()
   { showModal('popUpKirimEmail');
   }

  function pilihAttachment(element)
   { const file = element.files[0];
     if (!file) return;

     const maxSize = 20 * 1024 * 1024; // 20 MB
     if(file.size > maxSize)
      { element.parentNode.querySelector('.error-input').innerHTML = 'Ukuran File Maksimal 20MB';
        return;
      }
     else
      { element.parentNode.querySelector('.error-input').innerHTML = '';
      }

     const reader = new FileReader();
     reader.onload = function (e) {
      const base64 = e.target.result;
      var new_element = document.createElement('div');
      new_element.className = 'list-file';
      new_element.innerHTML = `
       <a href="` + base64 + `">` + file.name + `</a>
       <div><button class="btn-danger" onclick="hapusAttachment(this);">×</button></div>
      `;

      document.getElementById('send_email-list_file').appendChild(new_element);
     };
     reader.readAsDataURL(file);
   }

  function hapusAttachment(element)
   { element.parentNode.parentNode.remove();
   }

  function kirimEmail()
   { var data = {};
     var error = 0;

     var a = document.querySelectorAll('.field-input_email');
     for(var i=0; i<a.length; i++)
      { var parent = a[i].parentNode;
        if(a[i].parentNode.classList.contains('custom-select') || a[i].parentNode.classList.contains('multiple-select') || a[i].id == "harga" || a[i].id == "diskon")
         { parent = a[i].parentNode.parentNode;
         }
        else if(a[i].parentNode.classList.contains('box-input-calender'))
         { parent = a[i].parentNode.parentNode.parentNode;
         }
        parent.querySelector('.error-input').innerHTML = '';
        if(a[i].id == 'send_email-to' && (a[i].value == '[]' || a[i].value == ''))
         { parent.querySelector('.error-input').innerHTML = 'Wajib diisi!';
         }
        if(a[i].required == true && a[i].value == '')
         { error++;
           parent.querySelector('.error-input').innerHTML = 'Wajib diisi!';
         }
        if(a[i].id !== '' && a[i].value !== '')
         { if(a[i].parentNode.classList.contains('box-input-calender'))
            { data[a[i].id] = normalisasi_tanggal(a[i].value);
            }
           else if(a[i].onkeypress)
            { if(a[i].onkeypress.toString().includes('hanyaAngka'))
               { data[a[i].id] = normal(a[i].value) * 1;
               }
              else
               { data[a[i].id] = a[i].value;
               }
            }
           else
            { data[a[i].id] = a[i].value;
            }
         }
        else
         { data[a[i].id] = null;
         }
      }

     var attachments = [];
     var a = document.querySelectorAll('#send_email-list_file a');
     for(i=0; i<a.length; i++)
      { var valueToPush = {};
        valueToPush.name = a[i].textContent; 
        valueToPush.base64 = a[i].href; 
        attachments.push(valueToPush);
      }

     if(error == 0)
      { document.getElementsByClassName('loader')[0].style['display'] = 'block';
        document.getElementsByClassName('loader-block')[0].style['display'] = 'block';
        var formdata = new FormData();
        formdata.append('user_id', document.querySelector('.user-id').value);
        formdata.append('username', document.querySelector('.user-name').value);
        formdata.append('token', document.querySelector('.user-token').value);
        formdata.append('users_level_id', document.querySelector('.user-level_id').value);
        formdata.append('cabang_id', document.querySelector('.user-cabang_id').value);
        Object.entries(data).forEach(function([index, item]) {
         formdata.append('data[' + index + ']', item);
        });
        Object.entries(attachments).forEach(function([index, item]) {
         formdata.append('attachments[' + index + '][name]', item.name);
         formdata.append('attachments[' + index + '][base64]', item.base64);
        });
        var ajax = new XMLHttpRequest();
        ajax.addEventListener('load', responseKirimEmail, false);
        ajax.open('POST', '<?= $url ?>/action/index/kirim-email.php');
        ajax.send(formdata);
      }
   }

  function responseKirimEmail()
   { document.getElementsByClassName('loader')[0].style['display'] = 'none';
     document.getElementsByClassName('loader-block')[0].style['display'] = 'none';
     var a = document.createElement('div');
     a.innerHTML = event.srcElement.response;
     if(a.querySelectorAll('.success').length > 0)
      { clearDrafEmail();
        hideModal('popUpKirimEmail');
      }
   }

  function clearDrafEmail()
   { document.getElementById('edit-id').value = "";
     var a = document.querySelectorAll('.field-input_email');
     for(var i=0; i<a.length; i++)
      { a[i].value = '';
        if(a[i].parentNode.classList.contains('custom-select'))
         { setSelectChosen(a[i]);
         }
        else if(a[i].parentNode.classList.contains('multiple-select'))
         { a[i].parentNode.querySelectorAll('.tag').forEach(el => {
            if(el !== a[i])
             { el.remove();
             }
           });
         }
      }
     var a = document.querySelectorAll('.error-input');
     for(var i=0; i<a.length; i++)
      { a[i].innerHTML = '';
      }
     document.getElementById('send_email-list_file').innerHTML = '';
   }

  function loadMenu()
   { var formdata = new FormData();
     formdata.append('user_id', document.querySelector('.user-id').value);
     formdata.append('username', document.querySelector('.user-name').value);
     formdata.append('token', document.querySelector('.user-token').value);
     formdata.append('users_level_id', document.querySelector('.user-level_id').value);
     formdata.append('cabang_id', document.querySelector('.user-cabang_id').value);
     formdata.append('last_actual_link', document.querySelector('.last_actual_link').value);
     var ajax = new XMLHttpRequest();
     ajax.addEventListener('load', responseLoadMenu, false);
     ajax.open('POST', '<?= $url ?>/action/index/menu.php', true);
     ajax.send(formdata);
   }

  function responseLoadMenu()
   { document.querySelector('.menu').innerHTML = event.srcElement.response;
     if(document.querySelectorAll('.menu li.active').length > 0)
      { document.querySelector('.header .title').innerHTML = document.querySelectorAll('.menu li.active')[document.querySelectorAll('.menu li.active').length - 1].textContent;
      }
     setMenuClick();
     const scripts = document.querySelector('.menu').querySelectorAll('script');
     scripts.forEach(oldScript => {
      const newScript = document.createElement('script');
      if(oldScript.src)
       { newScript.src = oldScript.src;
       }
      else
       { newScript.textContent = oldScript.textContent;
       }
      document.body.appendChild(newScript);
      oldScript.remove();
     });
   }

  loadMenu();

  getIncomingEmail();

  function getIncomingEmail()
   { var formdata = new FormData();
     formdata.append('user_id', document.querySelector('.user-id').value);
     formdata.append('username', document.querySelector('.user-name').value);
     formdata.append('token', document.querySelector('.user-token').value);
     formdata.append('users_level_id', document.querySelector('.user-level_id').value);
     formdata.append('cabang_id', document.querySelector('.user-cabang_id').value);
     var ajax = new XMLHttpRequest();
     ajax.addEventListener('load', responseGetIncomingEmail, false);
     ajax.open('POST', '<?= $url ?>/action/index/get-incoming-email.php', true);
     ajax.send(formdata);
   }

  function responseGetIncomingEmail()
   { var a = document.createElement('div');
     a.innerHTML = event.srcElement.response;
     if(a.querySelectorAll('.new').length > 0)
      { getIncomingEmail();
        if(document.querySelector('.last_actual_link').value.toString().replaceAll('.php', '') == 'email-masuk')
         { tampil();
         }
      }
     else
      { setTimeout(function() {
         getIncomingEmail();
        }, 60000);
      }
   }

  function setUbahPassword()
   { document.getElementById('ubah_password-password_lama').value = '';
     document.getElementById('ubah_password-password_lama').parentNode.parentNode.querySelector('.error-input').innerHTML = '';
     document.getElementById('ubah_password-password_baru').value = '';
     document.getElementById('ubah_password-password_baru').parentNode.parentNode.querySelector('.error-input').innerHTML = '';
     document.getElementById('ubah_password-ulangi_password_baru').value = '';
     document.getElementById('ubah_password-ulangi_password_baru').parentNode.parentNode.querySelector('.error-input').innerHTML = '';
     showModal('popUpUbahPassword');
   }

  function validasiUbahPassword()
   { document.getElementById('ubah_password-password_lama').parentNode.parentNode.querySelector('.error-input').innerHTML = '';
     document.getElementById('ubah_password-password_baru').parentNode.parentNode.querySelector('.error-input').innerHTML = '';
     document.getElementById('ubah_password-ulangi_password_baru').parentNode.parentNode.querySelector('.error-input').innerHTML = '';
     var error = 0;
     if(document.getElementById('ubah_password-password_lama').value == '')
      { error++;
        document.getElementById('ubah_password-password_lama').parentNode.parentNode.querySelector('.error-input').innerHTML = 'Wajib diisi!';
      }
     if(document.getElementById('ubah_password-password_baru').value == '')
      { error++;
        document.getElementById('ubah_password-password_baru').parentNode.parentNode.querySelector('.error-input').innerHTML = 'Wajib diisi!';
      }
     if(document.getElementById('ubah_password-ulangi_password_baru').value == '')
      { error++;
        document.getElementById('ubah_password-ulangi_password_baru').parentNode.parentNode.querySelector('.error-input').innerHTML = 'Wajib diisi!';
      }
     if(document.getElementById('ubah_password-password_baru').value !== '' && document.getElementById('ubah_password-ulangi_password_baru').value !== '')
      { if(document.getElementById('ubah_password-password_baru').value.toString().length < 7)
         { error++;
           document.getElementById('ubah_password-password_baru').parentNode.parentNode.querySelector('.error-input').innerHTML = 'Minimal 7 karakter';
         }
        else if(document.getElementById('ubah_password-password_baru').value !== document.getElementById('ubah_password-ulangi_password_baru').value)
         { error++;
           document.getElementById('ubah_password-ulangi_password_baru').parentNode.parentNode.querySelector('.error-input').innerHTML = '<b>Ulangi Password Baru</b> harus sama dengan <b>Password Baru</b> di atas!';
         }
      }
     if(error == 0)
      { ubahPassword();
      }
   }

  function ubahPassword()
   { var a = document.querySelectorAll('#popUpUbahPassword .error');
     for(var i=0; i<a.length; i++)
      { a[i].remove();
      }
     document.getElementsByClassName('loader')[0].style['display'] = 'block';
     document.getElementsByClassName('loader-block')[0].style['display'] = 'block';
     var formdata = new FormData();
     formdata.append('user_id', document.querySelector('.user-id').value);
     formdata.append('username', document.querySelector('.user-name').value);
     formdata.append('token', document.querySelector('.user-token').value);
     formdata.append('users_level_id', document.querySelector('.user-level_id').value);
     formdata.append('cabang_id', document.querySelector('.user-cabang_id').value);
     formdata.append('password_lama', document.getElementById('ubah_password-password_lama').value);
     formdata.append('password_baru', document.getElementById('ubah_password-password_baru').value);
     var ajax = new XMLHttpRequest();
     ajax.addEventListener('load', responseUbahPassword, false);
     ajax.open('POST', '<?= $url ?>/action/index/ubah-password.php', true);
     ajax.send(formdata);
   }

  function responseUbahPassword()
   { document.getElementsByClassName('loader')[0].style['display'] = 'none';
     document.getElementsByClassName('loader-block')[0].style['display'] = 'none';
     var result = document.createElement('div');
     result.innerHTML = event.srcElement.response;
     var a = result.querySelectorAll('.error');
     if(a.length > 0)
      { for(var i=0; i<a.length; i++)
         { addError(document.querySelector('#popUpUbahPassword .modal-body'), a[i].textContent);
         }
      }
     else
      { hideModal('popUpUbahPassword');
        loadMenu();
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

  function setInputHalaman(input)
   { function resizeInput()
      { const span = document.createElement('span');
        span.style.visibility = 'hidden';
        span.style.whiteSpace = 'pre';
        span.style.font = getComputedStyle(input).font;
        span.textContent = input.value || input.placeholder;
        document.body.appendChild(span);
        input.style.width = span.offsetWidth + 10 + 'px';
        document.body.removeChild(span);
      }
     resizeInput();
     var value_input = '';
     input.addEventListener('input', resizeInput);
     input.addEventListener('focus', function() {
      value_input = input.value;
      input.select();
     });
     input.addEventListener('focusout', function() {
      if(input.value == '')
       { input.value = value_input;
       }
      resizeInput();
     });
   }

  function removeError(element)
   { element.parentNode.remove();
   }

  function addError(element, msg)
   { var new_element = document.createElement('div');
     new_element.className = 'error';
     new_element.innerHTML = `
      <div>` + msg + `</div>
      <div class="close" onclick="removeError(this);">&times</div>
     `;
     element.appendChild(new_element);
   }

  function loadScript(src)
   { return new Promise(function(resolve, reject) {
      var script = document.createElement("script");
      script.src = src;
      script.onload = resolve;
      script.onerror = reject;
      document.head.appendChild(script);
     });
   }

  function showModal(id)
   { document.querySelector('body').style['overflow-y'] = 'hidden';
     document.getElementById(id).style.display = 'block';
     setTimeout(function() {
      document.getElementById(id).querySelector('.modal-content').classList.add('show');
      document.getElementById(id).scrollTo({ top : 0, behavior : 'smooth' });
     }, 0);
   }

  function hideModal(id)
   { document.querySelector('body').style['overflow-y'] = 'auto';
     setTimeout(function() { document.getElementById(id).querySelector('.modal-content').classList.remove('show'); }, 0);
     setTimeout(function() { document.getElementById(id).style.display = 'none'; }, 300);
   }

  function openTab(element)
   { var parent = element.parentNode.parentNode;
     var list = parent.querySelectorAll('.tab-button');
     list = [].slice.call(list);
     var position = list.indexOf(element);
     parent.querySelectorAll('.tab-button').forEach(btn => {
      btn.classList.remove('active');
     });
     parent.querySelectorAll('.tab-button')[position].classList.add('active');
     parent.querySelectorAll('.tab-content').forEach(tab => {
      tab.classList.remove('active');
     });
     parent.querySelectorAll('.tab-content')[position].classList.add('active');
   }

  function dropDownClick(element)
   { var drop_down = document.querySelector('.drop-down');
     var drop_down_item = element.querySelector('.drop-down-item');
     if(drop_down_item.className.toString().indexOf('show') !== -1) //jika drop down terbuka
      { drop_down_item.classList.remove('show');
      }
     else
      { const rect = drop_down.getBoundingClientRect();
        drop_down_item.style.top = (rect.bottom + 10) + 'px';
        drop_down_item.style.right = '40px';
        drop_down_item.classList.add('show');
      }
   }
 
  function setMenuClick()
   { //set pengaturan navbar
     var screen_width = window.innerWidth;
     var side_left = document.querySelector('.side-left');
     var side_right = document.querySelector('.side-right');
     var header = document.querySelector('.header');
     if(screen_width >= 750)
      { side_left.style.maxWidth = '250px';
        side_right.style.marginLeft = '250px';
      }
     else
      { side_left.style.maxWidth = '0px';
        side_right.style.marginLeft = '0px';
      }

     var navbar = document.querySelector('.navbar');
     navbar.addEventListener('click', function(e) {
      if(side_left.offsetWidth > 0)
       { //hilangkan
         header.style.width = (document.querySelector('.lebar-header').offsetWidth + 170) + 'px';
       }
      else
       { //munculkan
         header.style.width = (document.querySelector('.lebar-header').offsetWidth - 330) + 'px';
       }
      if(screen_width < 750)
       { header.style.width = 'calc(100% - 80px)';
       }

      if(side_left.style.maxWidth == '0px')
       { side_left.style.maxWidth = '250px';
         if(screen_width >= 750)
          { side_right.style.marginLeft = '250px';
          }
       }
      else
       { side_left.style.maxWidth = '0px';
         if(screen_width >= 750)
          { side_right.style.marginLeft = '0px';
          }
       }
     });

     if(screen_width < 750)
      { header.style.width = 'calc(100% - 80px)';
      }
     else
      { header.style.width = 'calc(100% - 330px)';
      }

     setTimeout(function() { header.style['overflow-x'] = 'auto'; }, 500)

     //set pengaturan menu on click
     var a = document.querySelectorAll('.side-left .menu li');
     for(var i=0; i<a.length; i++)
      { //set max height untuk setipa child ul (agar animasi mulus dari awal)
        if(a[i].querySelectorAll('.fa-chevron-down').length > 0) //jika menu merupakan parent
         { if(a[i].className.toString().indexOf('show') !== -1) //jika menu terbuka
             { var submenu = a[i].querySelector('ul');
               var maxHeight = submenu.scrollHeight;
               var child = submenu.querySelectorAll('ul');
               for(var loopChild=0; loopChild<child.length; loopChild++)
                { maxHeight += child[loopChild].scrollHeight;
                }
               submenu.style.maxHeight = maxHeight + 'px';
             }
            else //jika menu tertutup
             { var submenu = a[i].querySelector('ul');
               submenu.style.maxHeight = '0px';
             }
         }

        a[i].addEventListener('click', function(e) {
         e.stopPropagation();
         var element = e.currentTarget;
         if(element.querySelectorAll('.fa-chevron-down').length > 0) //jika menu merupakan parent
          { if(element.className.toString().indexOf('show') !== -1) //jika menu terbuka maka tutup
             { var submenu = element.querySelector('ul');
               submenu.style.maxHeight = '0px';
               element.classList.remove('show');
             }
            else //jika menu tertutup maka buka
             { var submenu = element.querySelector('ul');
               var maxHeight = submenu.scrollHeight;
               var child = submenu.querySelectorAll('ul');
               for(var loopChild=0; loopChild<child.length; loopChild++)
                { maxHeight += child[loopChild].scrollHeight;
                }
               submenu.style.maxHeight = maxHeight + 'px';
               element.classList.add('show');

               //tutup menu lain yang terbuka
               var show = document.querySelectorAll('li.show');
               for(var j=0; j<show.length; j++)
                { if(element !== show[j] && !show[j].contains(element))
                   { var submenu = show[j].querySelector('ul');
                     submenu.style.maxHeight = '0px';
                     show[j].classList.remove('show');
                   }
                }

             }
          }
        });
      }

     var drop_down = document.querySelector('.drop-down');
     var side_left = document.querySelector('.side-left');

     //set event click sembarang
     document.addEventListener('click', function(e) {
      if(!drop_down.contains(e.target))
       { var drop_down_item = drop_down.querySelector('.drop-down-item');
         if(drop_down_item.className.toString().indexOf('show') !== -1) //jika drop down terbuka
          { drop_down_item.classList.remove('show');
          }
       }
      if(!side_left.contains(e.target) && !navbar.contains(e.target) && side_left.style.maxWidth !== '0px' && screen_width < 750)
       { side_left.style.maxWidth = '0px';
       }
     });

   }

  function hanyaAngka(evt)
   { var charCode = (evt.which) ? evt.which : event.keyCode;
     if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode !== 44)
      { return false;
      }
     else
      { return true;
      }
   }

  function hanyaAngka2(evt)
   { var charCode = (evt.which) ? evt.which : event.keyCode;
     if (charCode > 31 && (charCode < 48 || charCode > 57))
      { return false;
      }
     else
      { return true;
      }
   }

  function hanyaAngka3(evt)
   { var charCode = (evt.which) ? evt.which : event.keyCode;
     if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode !== 44 && charCode !== 45)
      { return false;
      }
     else
      { return true;
      }
   }

  function fnomor(obj)
   { obj.value = formatnomor(obj.value);
   }

  function fnomor2(obj)
   { if(obj.value !== '')
      { obj.value = formatnomor2(obj.value);
      }
   }

  function fnomor3(obj)
   { if(obj.value !== '')
      { obj.value = formatnomor3(obj.value);
      }
   }

  function normal(x)
   { x = String(x);
     var result = '';
     var koma = 0;
     for(i=1; i<=x.length; i++)
      { if(x.substring((i - 1), i) == ",")
         { koma = koma + 1;
         }
        if(koma <= 1 && (x.substring((i - 1), i) == "0" || x.substring((i - 1), i) == "1" || x.substring((i - 1), i) == "2" || x.substring((i - 1), i) == "3" || x.substring((i - 1), i) == "4" || x.substring((i - 1), i) == "5" || x.substring((i - 1), i) == "6" || x.substring((i - 1), i) == "7" || x.substring((i - 1), i) == "8" || x.substring((i - 1), i) == "9" || x.substring((i - 1), i) == "," || x.substring((i - 1), i) == "-"))
         { if(x.substring((i - 1), i) == ",")
            { if(i == 1)
               { result = '0.' + result;
               }
              else
               { result = result + '.';
               }
            }
           else if(x.substring((i - 1), i) == "-")
            { if(i == 1)
               { result = result + x.substring((i - 1), i);
               }
            }
           else
            { result = result + x.substring((i - 1), i);
            }
         }
      }
     return result;
   }

  function normalisasi_angka(angka)
   { if(angka !== '')
      { angka = normal(angka) * 1;
      }
     else
      { angka = null;
      }
     return angka;
   }

  function formatnomor(x)
   { x = normal(x);
     var bilangan_bulat = '';
     var bilangan_desimal = '';
     var koma = 0;
     for(i=1; i<=x.length; i++)
      { if(x.substring((i - 1), i) == ".")
         { koma = koma + 1;
         }
        if(koma < 1)
         { bilangan_bulat = bilangan_bulat + x.substring((i - 1), i);
         }
        else
         { if(x.substring((i - 1), i) == ".")
            { bilangan_desimal = bilangan_desimal + ',';
            }
           else
            { bilangan_desimal = bilangan_desimal + x.substring((i - 1), i);
            }
         }
      }
     if(bilangan_desimal.toString().length > 3)
      { bilangan_desimal = bilangan_desimal.substring(0, 4);
      }
     return bilangan_bulat.replaceAll(/\B(?=(\d{3})+(?!\d))/g, ".") + bilangan_desimal;
   }

  function formatnomor2(x)
   { x = normal(x);
     var bilangan_bulat = '';
     var bilangan_desimal = '';
     var koma = 0;
     for(i=1; i<=x.length; i++)
      { if(x.substring((i - 1), i) == ".")
         { koma = koma + 1;
         }
        if(koma < 1)
         { bilangan_bulat = bilangan_bulat + x.substring((i - 1), i);
         }
        else
         { if(x.substring((i - 1), i) == ".")
            { bilangan_desimal = bilangan_desimal + ',';
            }
           else
            { bilangan_desimal = bilangan_desimal + x.substring((i - 1), i);
            }
         }
      }
     if(bilangan_desimal.toString().length > 2)
      { bilangan_desimal = bilangan_desimal.substring(0, 3);
      }
     if(bilangan_desimal.toString().length == 2)
      { bilangan_desimal = bilangan_desimal.toString() + '0';
      }
     if(bilangan_desimal.toString().length < 2)
      { bilangan_desimal = ',00';
      }
     return bilangan_bulat.replaceAll(/\B(?=(\d{3})+(?!\d))/g, ".") + bilangan_desimal;
   }

  function formatnomor3(x)
   { x = normal(x);
     var bilangan_bulat = '';
     var bilangan_desimal = '';
     var koma = 0;
     for(i=1; i<=x.length; i++)
      { if(x.substring((i - 1), i) == ".")
         { koma = koma + 1;
         }
        if(koma < 1)
         { bilangan_bulat = bilangan_bulat + x.substring((i - 1), i);
         }
        else
         { if(x.substring((i - 1), i) == ".")
            { bilangan_desimal = bilangan_desimal + ',';
            }
           else
            { bilangan_desimal = bilangan_desimal + x.substring((i - 1), i);
            }
         }
      }
     if(bilangan_desimal.toString().length > 3)
      { bilangan_desimal = bilangan_desimal.substring(0, 4);
      }
     if(bilangan_desimal.toString().length == 3)
      { bilangan_desimal = bilangan_desimal.toString() + '0';
      }
     if(bilangan_desimal.toString().length == 2)
      { bilangan_desimal = bilangan_desimal.toString() + '00';
      }
     if(bilangan_desimal.toString().length <= 1)
      { bilangan_desimal = ',000';
      }
     return bilangan_bulat.replaceAll(/\B(?=(\d{3})+(?!\d))/g, ".") + bilangan_desimal;
   }

  function ValidateEmail(mail) 
   { if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail + ''))
      { return true;
      }
     else
      { return false;
      }
   }

  function normalisasi_tanggal(tanggal)
   { return tanggal.substr(6, 4) + '-' + tanggal.substr(3, 2) + '-' + tanggal.substr(0, 2);
   }

  function auto_grow(element)
   { element.style.height = "0px";
     element.style.height = (element.scrollHeight - 16)+"px";
   }

  function dataURLtoFile(dataurl, filename)
   { var arr = dataurl.split(','), mime = arr[0].match(/:(.*?);/)[1], bstr = atob(arr[1]),  n = bstr.length,  u8arr = new Uint8Array(n);
     while(n--)
      { u8arr[n] = bstr.charCodeAt(n);
      } 
     return new File([u8arr], filename, {type:mime});
   }

  function getTextSelected(element)
   { if(element && element.options && element.selectedIndex >= 0 && element.options[element.selectedIndex])
      { return element.options[element.selectedIndex].text;
      }
    return null;
   }

 </script>

</body>
</html>