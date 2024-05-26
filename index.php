<?php 
	include("./includes/header.html");
	include("./includes/database.php"); 
	
	$pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$sql = "SELECT * FROM production ORDER BY productionid DESC LIMIT 6";
	$q = $pdo->prepare($sql);
	$q->execute();
	$rows = $q->fetchAll();
	Database::disconnect();
?>

	<!-- New Performances  -->
	<div class="container-fluid">
	<div class="col-lg-12" style="margin-left:-12px">
	<h1 style="color:#fff"><strong><center>Latest Productions</center></strong></h1><br>
			
<?php
	foreach ($rows as $f) {
	?>
		<div class="col-sm-4">
			<div class="thumbnail">
			<center>
                <a href="./performances.php?id=<?php echo $f['productionid'] ?>&name=<?php echo $f['productionname']?>"><img src="<?php echo $f['productionimage'];?>" style="width:40%; height:50%; margin-bottom:5px; margin-top: 0px;"></a>
				<div class="caption">
					<h3><?php echo $f['productionname'];?></h3>		
					<h3>$<?php echo $f['productionprice'];?></h3>
					<p>
						<a href="./performances.php?id=<?php echo $f['productionid'] ?>&name=<?php echo $f['productionname']?>" style="color:#ffffff; font-size:18px">View Performances</a>
					</p>
				</div>
			</center>
         </div>
	</div>
	<?php
	}
?>
	<a class="btn btn-danger" href="latestproductions.php" role="button"  style="font-size:18px; margin-left:600px">VIEW MORE  &raquo;</a>
	<br><br><br>
</div>
</div>
<div class="container-footer">
	<div class="row">
		<div class="col-lg-12">
			<div class="footer">
        <div class="footer-heading">
        	<h2><b>EaseTicketing</b><sup>™</sup></h2>
      </div>
    <div class="col-lg-4">
      <div class="content">
        <div class="services">
          <h4><b>Services</b></h4>
          <p><a href="#">Movies</a></p>
          <p><a href="#">AfroBeat Music</a></p>
          <p><a href="#">Highlife Music</a></p>
          <p><a href="#">Ballet</a></p>
          <p><a href="#">Comedy</a></p>
        </div>
    	</div>
	</div>
	<div class="col-lg-4">
	<div class="content">
        <div class="social-media">
          <h4><b>Social</b></h4>
          <p>
            <a href="#"></i> Linkedin</a>
          </p>
          <p>
            <a href="#"><i class="fab fa-twitter"></i> Twitter</a>
          </p>
          <p>
            <a href="https://github.com/"><i class="fab iz-github"></i> Github</a
            >
          </p>
          <p>
            <a href="https://www.facebook.com"><i class="fab ok-facebook"></i> Facebook</a>
          </p>
          <p>
            <a href="https://www.instagram.com"><i class="fab ok-instagram"></i> Instagram</a>
          </p>
        </div>
    	</div>
	</div>
  <div class="col-lg-4">
    <div class="content">
        <div class="details">
          <h4 class="<address"><b>Address</b></h4>
          <p>
            No: 5 C & I Leasing Drive<br />
            Off Durosimi Etti Drive Lekki Phase 1.
          </p>
          <h4 class="mobile"><b>Mobile</b></h4>
          <p><a href="#"> +234 8034603015</a></p>
          <h4 class="mail"><b>Email</b></h4>
          <p><a href="#">easeticketing@gmail.com</a></p>
        </div>
    </div>
  </div>
      <footer class="footer-inner">
        <p style="color:white;">
        © EaseTicketing 2024.
      </p>
        <hr />
      </footer>
    </div>
</div>
</div>
</body>
</html>