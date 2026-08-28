<?php
 if(empty($_POST['username']))
  { echo '<script> location.href = "logout"; </script>';
  }
?>
<li<?= strtolower(str_replace(".php", "", ($_POST['last_actual_link'] ?? ''))) == 'email-masuk' ? ' class="active"' : '' ?>>
 <a href="email-masuk">
  <div>
    <i class="fas fa-home"></i> Email Masuk
  </div>
 </a>
</li>
<li<?= strtolower(str_replace(".php", "", ($_POST['last_actual_link'] ?? ''))) == 'email-keluar' ? ' class="active"' : '' ?>>
 <a href="email-keluar">
  <div>
    <i class="fas fa-home"></i> Email Keluar
  </div>
 </a>
</li>