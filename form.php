<?php include("design/header.php"); ?>

<div class="form"></div>

<?php include("design/footer.php"); ?>

<script>

 function loadForm()
  { document.getElementsByClassName('loader')[0].style['display'] = 'block';
    document.getElementsByClassName('loader-block')[0].style['display'] = 'block';
    var formdata = new FormData();
    formdata.append('user_id', document.querySelector('.user-id').value);
    formdata.append('username', document.querySelector('.user-name').value);
    formdata.append('token', document.querySelector('.user-token').value);
    formdata.append('users_level_id', document.querySelector('.user-level_id').value);
    formdata.append('cabang_id', document.querySelector('.user-cabang_id').value);
    formdata.append('form', '<?= $_GET['form'] ?>');
    formdata.append('url', '<?= $url ?>');
    var ajax = new XMLHttpRequest();
    ajax.addEventListener('load', responseLoadFormInput, false);
    ajax.open('POST', '<?= $url ?>/action/<?= $_GET['form'] ?>/form.php', false);
    ajax.send(formdata);
  }

 function responseLoadFormInput(event)
  { document.getElementsByClassName('loader')[0].style['display'] = 'none';
    document.getElementsByClassName('loader-block')[0].style['display'] = 'none';
    document.querySelector('.form').innerHTML = event.srcElement.response;
    const scripts = document.querySelector('.form').querySelectorAll('script');
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

 loadForm();

</script>