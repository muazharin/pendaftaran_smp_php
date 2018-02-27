<!DOCTYPE html>
<?php
  	error_reporting(0);
  	session_start();
  	$a=$_SESSION['user'];
  	include "limited.php";
  
  
 ?>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Dashboard</title>
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/font-awesome.min.css" rel="stylesheet">
	<link href="../css/styles.css" rel="stylesheet">
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="menu_admin.php"><span>Admin</span></a>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="../images/user.png" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Username</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li ><a href="menu_admin.php"><em class="fa fa-dashboard">&nbsp;</em> Data Pendaftar</a></li>
			<li><a href="pengaturan_lulus.php"><em class="fa fa-calendar">&nbsp;</em> Kelululsan</a></li>
			<li><a href="#"><em class="fa fa-bar-chart">&nbsp;</em> Customer</a></li>
			<li class="active"><a href="admin_user.php"><em class="fa fa-toggle-off">&nbsp;</em> User</a></li>
			<li><a href="logout.php" title="Logout" onclick="return confirm('Apakah anda yakin ingin keluar ?')"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">User</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">User</h1>
			</div>
		</div><!--/.row-->
		<div class="panel panel-container" style="padding: 50px">
			<div class="bootstrap-table">
			<center><h2>Admin User</h2></center>
			<?php
				include "../config.php";
				$hasil=mysql_query("SELECT * FROM user WHERE adm_id='$_GET[id]'");
				$data=mysql_fetch_row($hasil);
			?>
			<form class='form-horizontal row-border' action='admin_user.php' method='post' target="_parent">
				<div class='form-group'>
					<label class='col-md-2 control-label'>Id</label>
					<div class='col-md-10'>
						<input type='text' name='id2' <?php
								echo "value='$data[0]'";
							?> class='form-control'/>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label'>Username</label>
					<div class='col-md-10'>
						<input required='' type='text' name='user2' <?php
								echo "value='$data[1]'";
							?> class='form-control'/>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Password</label>
					<div class='col-md-10'>
						<input required='' class='form-control' type='password' name='pass2' <?php echo "value=$data[2]";?> />
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label'>Type</label>
					<div class='col-md-10'>
						<select name='tipe2' class='form-control'>
							<option value='admin' <?php if($data[3]=='admin'){echo 'selected'; }?> >Admin</option>
							<option value='siswa' <?php if($data[3]=='siswa'){echo 'selected'; }?> >Siswa</option>
						</select>
					</div>
				</div>
				</div>
				<center>
					<input type='submit' class='btn btn-sm btn-primary' name='simpan' value='Update'>
					<input type='reset' class='btn btn-sm btn-primary' name='reset' value='Reset'>
					<a href="admin_user.php" class='btn btn-sm btn-primary' >Cancel</a>
				</center>
			</form>
			</div>
		</div>	
	<!--/.main-->
	
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	<script>
		window.onload = function () {
	var chart1 = document.getElementById("line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(lineChartData, {
	responsive: true,
	scaleLineColor: "rgba(0,0,0,.2)",
	scaleGridLineColor: "rgba(0,0,0,.05)",
	scaleFontColor: "#c5c7cc"
	});
};
	</script>
		
</body>
</html>