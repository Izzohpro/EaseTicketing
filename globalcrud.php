<?php
session_start();
include("./includes/header.html"); 

if (isset($_SESSION['admin'])) { 

echo '<center style="margin-left:-40px">
     <h1 style="color:#ffffff"><strong>CRUD - Productions and Performances</strong></h1><br><br>
     <a class="btn btn-primary" href="./productioncrud/crud.php" role="button"  style="font-size:18px">PRODUCTIONS CRUD   &raquo;</a><br><br>
     <a class="btn btn-success" href="./performancecrud/crud.php" role="button"  style="font-size:18px">PERFORMANCES CRUD   &raquo;</a>
	 </center>';

}

else { echo '<center><span style="font-size:20px; font-weight:600; color:#D11111">Restricted area. Only admins can access it.</span></center>';}
?>
<br><br>
</div>
</body>
</html>