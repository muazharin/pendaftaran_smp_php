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
			<li><a href="grafik_pendaftar.php"><em class="fa fa-bar-chart">&nbsp;</em> Grafik</a></li>
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
			<div>
			<input type='submit' class='btn btn-sm btn-primary btn-' name='simpan' value='Tambahkan User' onclick="formq()">
			<!--input type='reset' class='btn btn-sm btn-primary btn-' name='reset' value='Reset'-->
			</div>
			<br>
			<div id="forminput"></div>
			<script type="text/javascript">
				function formq(){
					document.getElementById("forminput").innerHTML="";
					document.getElementById("forminput").innerHTML="<form class='form-horizontal row-border' action='' method='post'><div class='form-group'><label class='col-md-2 control-label'>Username</label><div class='col-md-10'><input required='' type='text' name='user' class='form-control'></div></div><div class='form-group'><label class='col-md-2 control-label'>Password</label><div class='col-md-10'><input required='' class='form-control' type='password' name='pass'></div></div><div class='form-group'><label class='col-md-2 control-label'>Type</label><div class='col-md-10'><select name='tipe' class='form-control'><option value='admin'>Admin</option><option value='siswa'>Siswa</option></select></div></div></div><center><input type='submit' class='btn btn-sm btn-primary' name='simpan' value='Simpan'> <input type='reset' class='btn btn-sm btn-primary' name='reset' value='Reset'> </center></form>";
				}
			</script>
			<br>
				<div class="fixed-table-container">
					<div class="fixed-table-header">
						<table></table>
					</div>
					<div class="fixed-table-body">
						<div class="fixed-table-loading" style="top: 37px; display: none;">Loading, please wait…</div>
							<table data-toggle="table" data-url="tables/data1.json" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc" class="table table-hover">
							<thead>
								<tr>
									<th style="">
										<div class="th-inner sortable" align="center">No.</div>
										<div class="fht-cell"></div>
									</th>
									<th style="">
										<div class="th-inner sortable" align="center">UserName</div>
										<div class="fht-cell"></div>
									</th>
									<th style="">
										<div class="th-inner sortable" align="center">Password</div>
										<div class="fht-cell"></div>
									</th>
									<th style="">
										<div class="th-inner sortable" align="center">Tipe</div>
										<div class="fht-cell"></div>
									</th>
									<th style="" colspan="2">
										<div class="th-inner sortable" align="center">Aksi</div>
										<div class="fht-cell"></div>
									</th>
								</tr>
							</thead>
							<tbody>
								<?php
									include "../config.php";
									$sql="SELECT * FROM user ORDER BY type";
									$query=mysql_query($sql);
									$i=1;
									switch ($_GET['tombol']) {
										case 'delete':
												$sqli="DELETE FROM user WHERE username=$_GET[adm_id]";
												mysql_query($sqli);
												$sqlo="DELETE FROM peserta_pendaftar WHERE nisn=$_GET[adm_id]";
												mysql_query($sqlo);
												$sqlp="DELETE FROM nilai_ijazah WHERE nisn=$_GET[adm_id]";
												mysql_query($sqlp);

											break;
										default:
											# code...
											break;
									}
									switch ($_POST['simpan']) {
										case 'Simpan':
											$sql1="INSERT INTO user (adm_id, username, password, type) VALUES (NULL, '$_POST[user]', '$_POST[pass]', '$_POST[tipe]')";
											mysql_query($sql1);
											break;
										case 'Update':
											$sqlqwe="UPDATE user SET username='$_POST[user2]', password='$_POST[pass2]', type='$_POST[tipe2]' WHERE adm_id='$_POST[id2]'";
											mysql_query($sqlqwe);

											?>
						                    <script type="text/javascript" language="JavaScript">
						       	                alert('Berhasil Memperbaharui Data');
						                    </script>
						                    <?php
						                    	echo "<meta http-equiv='refresh' content='0'>";
											break;
										default:
											# code...
											break;
									}
									while ($data=mysql_fetch_row($query)) {
										echo "<tr>
											<td style='' align='center'>".$i."</td>
											<td style=''>".$data[1]."</td>
											<td style=''>".$data[2]."</td>
											<td style=''>".$data[3]."</td>
											<td width='35' align='center'><a class='btn btn-sm btn-primary' href=edituser.php?id=$data[0]>Edit</a></td>";?>
											<td width='35' align='center'><a class='btn btn-sm btn-danger' href="admin_user.php?tombol=delete&adm_id='<?= $data[1]; ?>'" title="Hapus" onclick="return confirm('Apakah anda yakin ingin menghapus data ini ?')">Hapus</a></td>
											<?php
										echo "</tr>";
										$i++;
									}
									
									
									
								?>
							</tbody>
						</table>
					</div>
				</div>
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