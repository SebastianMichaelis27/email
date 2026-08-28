<?php
 include("../bjksadkhrej121lkjkjk.php");
?>
<style>
 #list-pencarian
  { display : grid;
    grid-template-columns : 1fr;
    gap : 20px;
    margin-top : 10px;
  }
 .list-urutan
  { display : grid;
    grid-template-columns : 1fr 60px 30px;
    gap : 10px;
    margin-top : 10px;
  }
 label
  { user-select : none;
  }
</style>

<div class="box">
 <div class="deretan-button">
  <div style="display:inline-block;">
   <div style="display:grid; grid-template-columns:auto auto auto auto auto; gap:5px; align-items:center;">
    <button type="button" class="btn-default" onclick="previousPage();">&nbsp;&laquo;&nbsp;</button>
    <input type="text" class="input-halaman" onkeypress="return hanyaAngka(this);" id="txthalaman" value="1" onfocusout="goToPage(this);">
    <div>/</div>
    <div id="max-page">1</div>
    <button type="button" class="btn-default" onclick="nextPage();">&nbsp;&raquo;&nbsp;</button>
   </div>
  </div>
  <button type="button" class="btn-default" onclick="segarkan();">Segarkan <i class="fas fa-sync-alt"></i></button>
  <button type="button" class="btn-default btn-pencarian" onclick="pencarian();">Cari <i class="fas fa-search"></i></button>
  <button type="button" class="btn-default btn-urutan" onclick="setUrutan();">Urutkan <i class="fas fa-sort-amount-down-alt"></i></button>
  <button type="button" class="btn-default" onclick="tambahData();">Tambah <i class="fas fa-plus"></i></button>
 </div>
 <div class="allow-scroll-x" id="div-result"></div>
</div>

<input type="hidden" id="edit-id">

<div class="modal" id="popUpInput">
 <div class="modal-dialog">
  <div class="modal-content" style="max-width:600px;">
   <div class="modal-header">
    <div class="modal-title">Tambah Data</div>
    <div class="close" onclick="hideModal('popUpInput');">&times</div>
   </div>
   <div class="modal-body">
    <div class="form-input">
     <b>Jenis Barang *</b>
     <div>
      <select required class="field-input" id="jenis_barang_id">
       <?= $list_jenis_barang ?>
      </select>
      <div class="error-input"></div>
     </div>
     <b>Kode Barang</b>
     <div>
      <input type="text" class="field-input" autocomplete="new-password" id="kode_barang">
      <div class="error-input"></div>
     </div>
     <b>Nama Barang *</b>
     <div>
      <input type="text" class="field-input" required autocomplete="new-password" id="nama_barang">
      <div class="error-input"></div>
     </div>
     <b>Merek *</b>
     <div>
      <select required class="field-input" id="merek_id">
       <?= $list_merek ?>
      </select>
      <div class="error-input"></div>
     </div>
     <b>Tipe</b>
     <div>
      <textarea class="field-input" autocorrect="off" autocomplete="off" spellcheck="false" oninput="auto_grow(this);" id="tipe"></textarea>
      <div class="error-input"></div>
     </div>
     <b>Satuan *</b>
     <div>
      <select required class="field-input" id="satuan_id">
       <?= $list_satuan ?>
      </select>
      <div class="error-input"></div>
     </div>
     <b>Harga Modal *</b>
     <div>
      <input type="text" class="field-input" autocomplete="new-password" onkeypress="return hanyaAngka(this);" onkeyup="fnomor(this);" onchange="fnomor(this);" onfocus="this.select();" onfocusout="fnomor2(this);" required id="harga_modal">
      <div class="error-input"></div>
     </div>
     <b>Harga Jual *</b>
     <div>
      <input type="text" class="field-input" autocomplete="new-password" onkeypress="return hanyaAngka(this);" onkeyup="fnomor(this);" onchange="fnomor(this);" onfocus="this.select();" onfocusout="fnomor2(this);" required id="harga_jual">
      <div class="error-input"></div>
     </div>
    </div>
   </div>
   <div class="modal-footer">
    <button type="button" class="btn-default" onclick="hideModal('popUpInput');"><i class="fas fa-times"></i> Batal</button>
    <button type="button" class="btn-primary" onclick="validasi();"><i class="fas fa-save"></i> Simpan</button>
   </div>
  </div>
 </div>
</div>

<div class="modal" id="popUpDelete">
 <div class="modal-dialog">
  <div class="modal-content" style="max-width:500px;">
   <div class="modal-header danger">
    <div class="modal-title">Konfirmasi</div>
    <div class="close" onclick="hideModal('popUpDelete');">&times</div>
   </div>
   <div class="modal-body">
    Yakin ingin menghapus data ini?
   </div>
   <div class="modal-footer">
    <button type="button" class="btn-default" onclick="hideModal('popUpDelete');"><i class="fas fa-times"></i> Tidak</button>
    <button type="button" class="btn-danger" onclick="hapus();"><i class="fas fa-trash"></i> Hapus</button>
   </div>
  </div>
 </div>
</div>

<div class="modal" id="popUpPencarian">
 <div class="modal-dialog">
  <div class="modal-content" style="max-width:600px;">
   <div class="modal-header success">
    <div class="modal-title">Pencarian</div>
    <div class="close">&times</div>
   </div>
   <div class="modal-body">
    <div id="form-pencarian">
     <button type="button" class="btn-default" onclick="setPopUpPencarian('tambah');">Tambah Field Pencarian <i class="fas fa-plus"></i></button>
     <div id="list-pencarian"></div>
    </div>
    <div id="form-tambah-pencarian">
     <div class="form-input">
      <b>Field Pencarian</b>
      <div>
       <select id="field_pencarian" onchange="changeFieldPencarian();">
        <option></option>
       </select>
       <div class="error-pencarian"></div>
      </div>
      <b>Jenis Pencarian</b>
      <div>
       <select id="jenis_pencarian">
        <option></option>
        <option value="mirip">Mirip</option>
        <option value="sama">Sama Persis</option>
        <option value="berisi">Berisi / Tidak Berisi</option>
       </select>
       <div class="error-pencarian"></div>
      </div>
     </div>
    </div>
    <textarea id="saved-pencarian" class="hide"></textarea>
   </div>
   <div class="modal-footer">
    <button type="button" class="btn-default"><i class="fas fa-times"></i> Batal</button>
    <button type="button" class="btn-success"><i class="fas fa-search"></i> Cari</button>
   </div>
  </div>
 </div>
</div>

<div class="modal" id="popUpUrutkan">
 <div class="modal-dialog">
  <div class="modal-content" style="max-width:500px;">
   <div class="modal-header brown">
    <div class="modal-title">Urutkan</div>
    <div class="close" onclick="hideModal('popUpUrutkan');">&times</div>
   </div>
   <div class="modal-body">
    <button type="button" class="btn-default" onclick="tambahUrutan();">Tambah Field Urutan <i class="fas fa-plus"></i></button>
    <div id="list-urutan"></div>
    <textarea id="saved-urutan" class="hide"></textarea>
   </div>
   <div class="modal-footer">
    <button type="button" class="btn-default" onclick="hideModal('popUpUrutkan');"><i class="fas fa-times"></i> Batal</button>
    <button type="button" class="btn-brown" onclick="urutkan();"><i class="fas fa-sort-amount-down-alt"></i> Urutkan</button>
   </div>
  </div>
 </div>
</div>

<script type="text/javascript">

 var Nama_Tabel = 'barang';
 var maxRecord = 20;
 var FieldTidakBolehRangkap = {};

 var a = document.querySelectorAll('.field-input');
 for(var i=0; i<a.length; i++)
  { var parent = a[i].parentNode;
    if(a[i].parentNode.classList.contains('custom-select') || a[i].parentNode.classList.contains('multiple-select'))
     { parent = a[i].parentNode.parentNode;
     }
    else if(a[i].parentNode.classList.contains('box-input-calender'))
     { parent = a[i].parentNode.parentNode.parentNode;
     }
    document.querySelector("#field_pencarian").innerHTML += '<option value="' + a[i].id + '">' + parent.previousElementSibling.textContent.toString().replaceAll('*', '').trim() + '</option>';
  }
  
 setSelectChosen(document.querySelector("#field_pencarian"));
 setSelectChosen(document.querySelector("#jenis_pencarian"));
 setSelectChosen(document.querySelector("#jenis_barang_id"), '');
 setSelectChosen(document.querySelector("#merek_id"), '');
 setSelectChosen(document.querySelector("#satuan_id"), '');
 setInputHalaman(document.querySelector("#txthalaman"));

 function tampil()
  { var formdata = new FormData();
    formdata.append('username', document.querySelector('.user-name').value);
    formdata.append('token', document.querySelector('.user-token').value);
    formdata.append('halaman', document.querySelector('#txthalaman').value);
    formdata.append('maxRecord', maxRecord);
    formdata.append('cari', document.getElementById('saved-pencarian').value);
    var ajax = new XMLHttpRequest();
    ajax.addEventListener('load', responseTampil, false);
    ajax.open('POST', '<?= $_POST['url'] ?>/action/<?= $_POST['form'] ?>/tampil.php', true);
    ajax.send(formdata);
  }

 function responseTampil()
  { document.getElementsByClassName('loader')[0].style['display'] = 'none';
    document.getElementsByClassName('loader-block')[0].style['display'] = 'none';
    document.querySelector('#div-result').innerHTML = event.srcElement.response;
    document.getElementById('max-page').innerHTML = document.getElementById('nhalaman').value;
    document.getElementById('txthalaman').value = document.getElementById('halaman').value;
  }

 function nextPage()
  { var hal = document.getElementById('txthalaman').value * 1;
    hal++;
    document.getElementById('txthalaman').value = hal;
    tampil();
  }

 function previousPage()
  { var hal = document.getElementById('txthalaman').value * 1;
    hal--;
    document.getElementById('txthalaman').value = hal;
    tampil();
  }

 function goToPage(element)
  { document.getElementById('txthalaman').value = element.value;
    tampil();
  }

 document.getElementsByClassName('loader')[0].style['display'] = 'block';
 document.getElementsByClassName('loader-block')[0].style['display'] = 'block';
 tampil();

 function clear()
  { document.getElementById('edit-id').value = "";
    var a = document.querySelectorAll('.field-input');
    for(var i=0; i<a.length; i++)
     { a[i].value = '';
       if(a[i].parentNode.classList.contains('custom-select'))
        { setSelectChosen(a[i]);
        }
     }
    var a = document.querySelectorAll('.error-input');
    for(var i=0; i<a.length; i++)
     { a[i].innerHTML = '';
     }
    var a = document.querySelectorAll('.error');
    for(var i=0; i<a.length; i++)
     { a[i].remove();
     }
  }

 function pencarian()
  { document.getElementById('list-pencarian').innerHTML = '';
    var data = [];
    try
     { data = JSON.parse(document.getElementById('saved-pencarian').value);
       for(var i=0; i<data.length; i++)
        { var label_field_pencarian = data[i].label_field_pencarian;
          var field_pencarian = data[i].field_pencarian;
          var label_jenis_pencarian = data[i].label_jenis_pencarian;
          var jenis_pencarian = data[i].jenis_pencarian;
          var value_pencarian = data[i].value_pencarian;
          var value_pencarian2 = data[i].value_pencarian2;
          tambahPencarian(label_field_pencarian, field_pencarian, label_jenis_pencarian, jenis_pencarian, value_pencarian, value_pencarian2);
        }
     }
    catch(err) {}
    setTimeout(function() { setPopUpPencarian('cari'); }, 0);
  }

 function setPopUpPencarian(jenis)
  { if(jenis == "cari")
     { document.getElementById('form-pencarian').style['display'] = 'block';
       document.getElementById('form-tambah-pencarian').style['display'] = 'none';
       document.querySelector('#popUpPencarian .modal-header .close').setAttribute("onclick", "hideModal('popUpPencarian');");
       document.querySelector('#popUpPencarian .modal-footer .btn-default').setAttribute("onclick", "hideModal('popUpPencarian');");
       document.querySelector('#popUpPencarian .modal-footer .btn-success').innerHTML = '<i class="fas fa-search"></i> Cari';
       document.querySelector('#popUpPencarian .modal-footer .btn-success').setAttribute("onclick", "cari();");
     }
    if(jenis == "tambah")
     { clearSelectChosen(document.querySelector("#field_pencarian"));
       clearSelectChosen(document.querySelector("#jenis_pencarian"));
       document.getElementById('form-pencarian').style['display'] = 'none';
       var a = document.querySelectorAll('.error-pencarian');
       for(var i=0; i<a.length; i++)
        { a[i].innerHTML = '';
        }
       document.getElementById('form-tambah-pencarian').style['display'] = 'block';
       document.querySelector('#popUpPencarian .modal-header .close').setAttribute("onclick", "setPopUpPencarian('cari');");
       document.querySelector('#popUpPencarian .modal-footer .btn-default').setAttribute("onclick", "setPopUpPencarian('cari');");
       document.querySelector('#popUpPencarian .modal-footer .btn-success').innerHTML = '<i class="fas fa-plus"></i> Tambahkan';
       document.querySelector('#popUpPencarian .modal-footer .btn-success').setAttribute("onclick", "validasiTambahPencarian();");
     }
    showModal('popUpPencarian');
  }

 function changeFieldPencarian()
  { if(document.getElementById(document.getElementById('field_pencarian').value).parentNode.classList.contains('custom-select'))
     { document.getElementById('jenis_pencarian').innerHTML = `
        <option></option>
        <option value="sama" selected>Sama Persis</option>
        <option value="berisi">Berisi / Tidak Berisi</option>
       `;
     }
    else if(document.getElementById(document.getElementById('field_pencarian').value).parentNode.classList.contains('box-input-calender'))
     { document.getElementById('jenis_pencarian').innerHTML = `
        <option></option>
        <option value="periode">Periode</option>
        <option value="berisi">Berisi / Tidak Berisi</option>
       `;
     }
    else if(document.getElementById(document.getElementById('field_pencarian').value).onkeypress)
     { if(document.getElementById(document.getElementById('field_pencarian').value).onkeypress.toString().includes('hanyaAngka'))
        { document.getElementById('jenis_pencarian').innerHTML = `
           <option></option>
           <option value="jangkauan">Jangkauan</option>
           <option value="berisi">Berisi / Tidak Berisi</option>
          `;
        }
     }
    else
     { document.getElementById('jenis_pencarian').innerHTML = `
        <option></option>
        <option value="mirip">Mirip</option>
        <option value="sama">Sama Persis</option>
        <option value="berisi">Berisi / Tidak Berisi</option>
       `;
     }
    setSelectChosen(document.querySelector("#jenis_pencarian"));
  }

 function validasiTambahPencarian()
  { var a = document.querySelectorAll('.error-pencarian');
    for(var i=0; i<a.length; i++)
     { a[i].innerHTML = '';
     }
    var error = 0;
    if(document.getElementById('field_pencarian').value == '')
     { error++;
       document.getElementById('field_pencarian').parentNode.parentNode.querySelector('.error-pencarian').innerHTML = 'Wajib diisi!';
     }
    if(document.getElementById('jenis_pencarian').value == '')
     { error++;
       document.getElementById('jenis_pencarian').parentNode.parentNode.querySelector('.error-pencarian').innerHTML = 'Wajib diisi!';
     }
    if(error == 0)
     { tambahPencarian(getTextSelected(document.getElementById('field_pencarian')), document.getElementById('field_pencarian').value, getTextSelected(document.getElementById('jenis_pencarian')), document.getElementById('jenis_pencarian').value);
       setPopUpPencarian('cari');
     }
  }

 function tambahPencarian(label_field_pencarian, field_pencarian, label_jenis_pencarian, jenis_pencarian, value_pencarian = '', value_pencarian2 = '')
  { var cek = document.querySelectorAll('.pencarian-' + field_pencarian);
    var input = '<input type="text" class="value-pencarian" value="' + value_pencarian + '">';
    if(jenis_pencarian == 'berisi')
     { var select_berisi = '';
       var select_tidak_berisi = '';
       if(value_pencarian == 'berisi')
        { select_berisi = ' selected';
        }
       else if(value_pencarian == 'tidak_berisi')
        { select_tidak_berisi = ' selected';
        }
       input = `<select class="value-pencarian">
                 <option></option>
                 <option value='berisi'` + select_berisi + `>Berisi</option>
                 <option value='tidak_berisi'` + select_tidak_berisi + `>Tidak Berisi</option>
                </select>`;
     }
    else if(document.getElementById(field_pencarian).parentNode.classList.contains('custom-select'))
     { input = `<select class="value-pencarian">` + document.getElementById(document.getElementById('field_pencarian').value).innerHTML + `</select>`;
     }
    else if(document.getElementById(field_pencarian).parentNode.classList.contains('box-input-calender'))
     { input = `<div style="display:grid; grid-template-columns:1fr auto 1fr; gap:5px; align-items:center;">
                 <input type="text" class="value-pencarian" value="` + value_pencarian + `">
                 <div>s/d</div>
                 <input type="text" class="value-pencarian2" value="` + value_pencarian2 + `">
                </div>`;
     }
    else if(document.getElementById(field_pencarian).onkeypress)
     { if(document.getElementById(field_pencarian).onkeypress.toString().includes('hanyaAngka'))
        { if(value_pencarian !== '')
           { value_pencarian = formatnomor2(value_pencarian.toString().replaceAll('.', ','));
           }
          if(value_pencarian2 !== '')
           { value_pencarian2 = formatnomor2(value_pencarian2.toString().replaceAll('.', ','));
           }
          input = `<div style="display:grid; grid-template-columns:1fr auto 1fr; gap:5px; align-items:center;">
                    <input type="text" class="value-pencarian" value="` + value_pencarian + `" onkeypress="return hanyaAngka(this);" onkeyup="fnomor(this);" onchange="fnomor(this);" onfocus="this.select();" onfocusout="fnomor2(this);">
                    <div>s/d</div>
                    <input type="text" class="value-pencarian2" value="` + value_pencarian2 + `" onkeypress="return hanyaAngka(this);" onkeyup="fnomor(this);" onchange="fnomor(this);" onfocus="this.select();" onfocusout="fnomor2(this);">
                   </div>`;
        }
     }

    var isi = `<b style="width:140px;">
                <div class="label-jenis_pencarian">` + label_jenis_pencarian + `</div>
                <textarea class="label-field_pencarian" style="display:none">` + label_field_pencarian + `</textarea>
                <textarea class="field-pencarian" style="display:none">` + field_pencarian + `</textarea>
                <textarea class="jenis-pencarian" style="display:none">` + jenis_pencarian + `</textarea>
               </b>
               <div class="dua-kolom right-auto">
                ` + input + `
                <button type="button" class="btn-default" onclick="removePencarian(this);"><i class="fas fa-trash"></i></button>
               </div>`;

    var new_element = null;
    if(cek.length < 1)
     { var new_element = document.createElement('div');
       new_element.className = 'group-border pencarian-' + field_pencarian;
       new_element.innerHTML = `
        <div class="title">` + label_field_pencarian + `</div>
        <div class="form-input">` + isi + `</div>
       `;
       document.getElementById('list-pencarian').appendChild(new_element);
     }
    else
     { var new_element = document.createElement('div');
       new_element.innerHTML = isi;
       while(new_element.firstElementChild)
        { cek[0].querySelector('.form-input').appendChild(new_element.firstElementChild);
        }
     }
     
    if(jenis_pencarian == 'berisi')
     { setSelectChosen(document.querySelectorAll('.value-pencarian')[document.querySelectorAll('.value-pencarian').length - 1]);
     }
    else if(document.getElementById(field_pencarian).parentNode.classList.contains('custom-select'))
     { document.querySelectorAll('.value-pencarian')[document.querySelectorAll('.value-pencarian').length - 1].value = value_pencarian;
       setSelectChosen(document.querySelectorAll('.value-pencarian')[document.querySelectorAll('.value-pencarian').length - 1]);
     }
    else if(document.getElementById(field_pencarian).parentNode.classList.contains('box-input-calender'))
     { setDatePicker(document.querySelectorAll('.value-pencarian')[document.querySelectorAll('.value-pencarian').length - 1]);
       setDatePicker(document.querySelectorAll('.value-pencarian2')[document.querySelectorAll('.value-pencarian2').length - 1]);
     }
    
  }

 function removePencarian(element)
  { var parent = element.parentNode.parentNode;
    element.parentNode.previousElementSibling.remove();
    element.parentNode.remove();
    setTimeout(function(){
     if(parent.children.length < 1)
      { parent.parentNode.remove();
      }
    }, 0);
  }

 function cari()
  { document.getElementById('saved-pencarian').value = '';
    var data = [];
    var a = document.querySelectorAll('.field-pencarian');
    for(var i=0; i<a.length; i++)
     { if(document.querySelectorAll('.value-pencarian')[i].value !== '')
        { var valueToPush = {};
          valueToPush.label_field_pencarian = document.querySelectorAll('.label-field_pencarian')[i].value;
          valueToPush.field_pencarian = document.querySelectorAll('.field-pencarian')[i].value;
          valueToPush.label_jenis_pencarian = document.querySelectorAll('.label-jenis_pencarian')[i].textContent;
          valueToPush.jenis_pencarian = document.querySelectorAll('.jenis-pencarian')[i].value;
          valueToPush.value_pencarian = document.querySelectorAll('.value-pencarian')[i].value;
          valueToPush.value_pencarian2 = valueToPush.value_pencarian;
          if(document.querySelectorAll('.value-pencarian')[i].parentNode.parentNode.parentNode.querySelectorAll('.value-pencarian2').length > 0 && document.querySelectorAll('.value-pencarian')[i].parentNode.parentNode.parentNode.querySelector('.value-pencarian2').value !== '')
           { valueToPush.value_pencarian2 = document.querySelectorAll('.value-pencarian')[i].parentNode.parentNode.parentNode.querySelector('.value-pencarian2').value;
           }

          if(valueToPush.jenis_pencarian == 'jangkauan' && document.getElementById(document.querySelectorAll('.field-pencarian')[i].value).onkeypress)
           { if(document.getElementById(document.querySelectorAll('.field-pencarian')[i].value).onkeypress.toString().includes('hanyaAngka'))
              { valueToPush.value_pencarian = normal(valueToPush.value_pencarian) * 1;
                valueToPush.value_pencarian2 = normal(valueToPush.value_pencarian2) * 1;
              }
           }
          data.push(valueToPush);
        }
     }
    document.getElementById('saved-pencarian').value = JSON.stringify(data);
    document.getElementsByClassName('loader')[0].style['display'] = 'block';
    document.getElementsByClassName('loader-block')[0].style['display'] = 'block';
    tampil();
    hideModal('popUpPencarian');
  }

 function segarkan()
  { document.getElementById('saved-pencarian').value = '';
    document.getElementById('saved-urutan').value = '';
    document.getElementsByClassName('loader')[0].style['display'] = 'block';
    document.getElementsByClassName('loader-block')[0].style['display'] = 'block';
    tampil();
  }

 function setUrutan()
  { document.getElementById('list-urutan').innerHTML = '';
    try
     { var data = JSON.parse(document.getElementById('saved-urutan').value);
       for(var i=0; i<data.length; i++)
        { var field_selected = data[i].field_urutan;
          var jenis_selected = data[i].jenis_urutan;
          tambahUrutan(field_selected, jenis_selected);
        }
     }
    catch(err) {}
    showModal('popUpUrutkan');
  }

</script>