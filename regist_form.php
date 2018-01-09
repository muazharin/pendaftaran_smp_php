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
			<div class="form-saran">
				<textarea name="message" rows="8" cols="30"></textarea>
			</div>
			<input type="submit" name="submit" class="btn-submit" value="Submit">
		</form>
	</div>
</body>
</html>
<?php
	
	if($_POST['submit']=="Submit")
	{
		if(empty($_POST['message'])){
		?>
			<script type="text/javascript" language="JavaScript">
				alert('Masukkan saran terlebih dahulu!');
				document.location='regist_form.php';
			</script>
		<?php
		}else{
			include "config.php";
			$sql="INSERT INTO saran (saran)
			VALUES ('$_POST[message]')";
			mysql_query($sql);?>
				<script type="text/javascript" language="JavaScript">
				alert('Your submitting has been accepted');
				document.location="index.php";
				</script>
			<?php
		}
	}
?>