<!DOCTYPE html>
<html>
<head>
	<title>Registrasi</title>
	<link rel="stylesheet" type="text/css" href="css1/style.css">
	<link rel="stylesheet" type="text/css" href="css1/font-awesome.css">
</head>
<body>
<?php
	if(!@($_POST['submit']))
		$_POST['submit']="";
?>
	<div class="container">
	<img src="img/user.png">
		<form action="" method="post">
			<div class="form-input">
				<input type="text" name="name" placeholder="Enter Your Name">
			</div>
			<div class="form-input">
				<input type="text" name="nim" placeholder="Enter Your NIM">
			</div>
			<input type="submit" name="submit" class="btn-submit" value="Submit">
		</form>
	</div>
</body>
</html>
<?php
	
	if($_POST['submit']=="Submit")
	{
		if(empty($_POST['name'])||empty($_POST['nim'])){
		?>
			<script type="text/javascript" language="JavaScript">
				alert('Ada field yang masih kosong!');
				document.location='index.php';
			</script>
		<?php
		}else{
			include "config.php";
			$cek=mysql_num_rows(mysql_query("SELECT nim FROM register WHERE nim='$_POST[nim]'"));
			if($cek>0){
			?>
				<script type="text/javascript" language="JavaScript">
				alert('NIM has already exist');
				document.location="index.php";
				</script>
			<?php
			}else{
			$sql="INSERT INTO register (nama, nim)
			VALUES ('$_POST[name]','$_POST[nim]')";
			mysql_query($sql);
			?>
				<script type="text/javascript" language="JavaScript">
				alert('Your submitting has been accepted');
				document.location="regist_form.php";
				</script>
			<?php
			}
		}
	}
?>