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
			<li class="active"><a href="menu_admin.php"><em class="fa fa-dashboard">&nbsp;</em> Data Pendaftar</a></li>
			<li><a href="pengaturan_lulus.php"><em class="fa fa-calendar">&nbsp;</em> Kelululsan</a></li>
			<li><a href="grafik_pendaftar.php"><em class="fa fa-bar-chart">&nbsp;</em> Grafik</a></li>
			<li><a href="admin_user.php"><em class="fa fa-toggle-off">&nbsp;</em> User</a></li>
			<li><a href="logout.php" title="Logout" onclick="return confirm('Apakah anda yakin ingin keluar ?')"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Data Pendaftar</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Data Pendaftar</h1>
			</div>
		</div><!--/.row-->
		
		<div class="panel panel-container">
			<div class="panel panel-container" style="padding: 50px">
			<div class="bootstrap-table">
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
										<div class="th-inner sortable" align="center">NISN</div>
										<div class="fht-cell"></div>
									</th>
									<th style="">
										<div class="th-inner sortable" align="center">Nama</div>
										<div class="fht-cell"></div>
									</th>
									<th style="">
										<div class="th-inner sortable" align="center">Asal Sekolah</div>
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
									
									if($_POST['simpan']=="Update"){
										$sqlqwe="UPDATE peserta_pendaftar SET nama = '$_POST[nama2]', tempat_lahir = '$_POST[tmpt_lhir2]', tanggal_lahir = '$_POST[tgl_regis2]', jenis_kelamin = '$_POST[jenis_kelamin2]', agama = '$_POST[agama2]', anak_ke = '$_POST[ank_ke2]', jml_saudara = '$_POST[jml_saudara2]', hp_siswa = '$_POST[hp_siswa2]', alamat_siswa = '$_POST[almt_siswa2]', berat_badan = '$_POST[brt_badan2]', tinggi_badan = '$_POST[tgi_badan2]', gol_darah = '$_POST[gol_darah2]', asal_sekolah = '$_POST[asal_sekolah2]', alamat_sekolah = '$_POST[almt_sekolah2]', nama_ayah = '$_POST[nama_ayah2]', nama_ibu = '$_POST[nama_ibu2]', alamat_ortu = '$_POST[almt_ortu2]', hp_ortu = '$_POST[hp_ortu2]', kerja_ayah = '$_POST[kerja_ayah2]', kerja_ibu = '$_POST[kerja_ibu2]', penghasilan_ortu = '$_POST[penghasilan_ortu2]', tanggungan_anak = '$_POST[tggungan2]' WHERE nisn = '$_POST[id2]'";
										mysql_query($sqlqwe);
										?>
					                    <script type="text/javascript" language="JavaScript">
					       	                alert('Anda Berhasil Memperbarui Data');
					                    </script>
					                    <?php
					                    	echo "<meta http-equiv='refresh' content='0'>";
									}
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
									$sql="SELECT * FROM peserta_pendaftar WHERE tahun='2017' ORDER BY nama";
									$query=mysql_query($sql);
									$i=1;
									while ($data=mysql_fetch_row($query)) {
										echo "<tr>
											<td style='' align='center'>".$i."</td>
											<td style=''>".$data[0]."</td>
											<td style=''>".$data[1]."</td>
											<td style=''>".$data[13]."</td>
											<td width='35' align='center'><a class='btn btn-sm btn-primary' href=editpeserta.php?id=$data[0]>Edit</a></td>";?>
											<td width='35' align='center'><a class='btn btn-sm btn-danger' href="admin_user.php?tombol=delete&adm_id='<?= $data[0]; ?>'" title="Hapus" onclick="return confirm('Apakah anda yakin ingin keluar ?')">Hapus</a></td>
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