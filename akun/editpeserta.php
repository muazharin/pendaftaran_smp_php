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
			<li ><a href="admin_user.php"><em class="fa fa-toggle-off">&nbsp;</em> User</a></li>
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
				$hasil=mysql_query("SELECT * FROM peserta_pendaftar WHERE nisn='$_GET[id]'");
				$data=mysql_fetch_row($hasil);
			?>
			<form class='form-horizontal row-border' action='menu_admin.php' method='post' target="_parent">
				<div class='form-group'>
					<label class='col-md-2 control-label'>Id</label>
					<div class='col-md-10'>
						<input type='text' name='id2' <?php
								echo "value='$data[0]'";
							?> class='form-control'/>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label'>Nama</label>
					<div class='col-md-10'>
						<input type='text' name='nama2' placeholder='' class='form-control' <?php echo "value=$data[1]"; ?> required>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Tempat Lahir</label>
					<div class='col-md-10'>
						<input type='text' name='tmpt_lhir2' placeholder='' class='form-control' <?php echo "value=$data[2]";?> required>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label'>Jenis Kelamin</label>
					<div class='col-md-10'>
						<select class='form-control' name='jenis_kelamin2' required>
                            <option value='Laki-Laki' <?php if($data[4]=='Laki-Laki'){echo 'selected'; }?> >Laki-Laki</option>
                            <option value='Perempuan'<?php if($data[4]=='Perempuan'){echo 'selected'; }?> >Perempuan</option>
                        </select>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Tanggal Lahir</label>
					<div class='col-md-10'>
						<div class='datepicker-center'>
                            <div class='input-group date ' data-date='' data-date-format='yyyy-mm-dd'>
                                <span class='input-group-addon'><i class='glyphicon glyphicon-calendar'></i></span>
                                    <input class='form-control' type='text' name='tgl_regis2' <?php echo "value=$data[3]";?> readonly='readonly'>
                            </div>
                        </div>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Agama</label>
					<div class='col-md-10'>
						<select class='form-control' name='agama2' required>
							<option value='Islam'<?php if($data[5]=='Islam'){echo 'selected'; }?> >Islam</option>
                            <option value='Khatolik' <?php if($data[5]=='Khatolik'){echo 'selected'; }?> >Khatolik</option>
                            <option value='Protestan' <?php if($data[5]=='Protestan'){echo 'selected'; }?> >Protestan</option>
                            <option value='Hindu' <?php if($data[5]=='Hindu'){echo 'selected'; }?> >Hindu</option>
                            <option value='Budha' <?php if($data[5]=='Budha'){echo 'selected'; }?> >Budha</option>
                        </select>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Anak Ke-</label>
					<div class='col-md-10'>
						<input type='number' name='ank_ke2' placeholder='' class='form-control' <?php echo "value=$data[6]";?> >
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Jumlah Saudara</label>
					<div class='col-md-10'>
						<input type='number' name='jml_saudara2' placeholder='' class='form-control' <?php echo "value=$data[7]";?> >
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Alamat Siswa</label>
					<div class='col-md-10'>
						<textarea class='form-control' name='almt_siswa2' rows='6' placeholder='' required><?php echo "$data[9]";?></textarea>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >No. Hp Siswa</label>
					<div class='col-md-10'>
						<input type='tel' name='hp_siswa2' placeholder='' class='form-control' required <?php echo "value=$data[8]";?> >
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Berat Badan</label>
					<div class='col-md-10'>
						<input type='number' name='brt_badan2' placeholder='' class='form-control' <?php echo "value=$data[10]";?> >
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Tinggi Badan</label>
					<div class='col-md-10'>
						<input type='number' name='tgi_badan2' placeholder='' class='form-control' <?php echo "value=$data[11]";?> >
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Gol. Darah</label>
					<div class='col-md-10'>
						<select class='form-control' name='gol_darah2'>
                            <option value='A' <?php if($data[12]=='A'){echo 'selected'; }?> >A</option>
                            <option value='B' <?php if($data[12]=='B'){echo 'selected'; }?> >B</option>
                            <option value='AB' <?php if($data[12]=='AB'){echo 'selected'; }?> >AB</option>
                            <option value='O' <?php if($data[12]=='O'){echo 'selected'; }?> >O</option>
                        </select>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Alamat Sekolah</label>
					<div class='col-md-10'>
						<textarea class='form-control' name='almt_sekolah2' rows='6' placeholder=''>
                            <?php echo "$data[14]";?>
                        </textarea>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Asal Sekolah</label>
					<div class='col-md-10'>
						<input type='text' name='asal_sekolah2' placeholder='' class='form-control' <?php echo "value=$data[13]";?> required>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Nama Ayah</label>
					<div class='col-md-10'>
						<input type='text' name='nama_ayah2' placeholder='' class='form-control' <?php echo "value=$data[15]";?> required>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Nama Ibu</label>
					<div class='col-md-10'>
						<input type='text' name='nama_ibu2' placeholder='' class='form-control' <?php echo "value=$data[16]";?> required>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Alamat Org Tua</label>
					<div class='col-md-10'>
						<textarea class='form-control' name='almt_ortu2' rows='6' placeholder='' required>
                            <?php echo "$data[17]";?>
                        </textarea>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >No. HP Org Tua</label>
					<div class='col-md-10'>
						<input type='tel' name='hp_ortu2' placeholder='' class='form-control' <?php echo "value=$data[18]";?> required>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Pekerjaan Ayah</label>
					<div class='col-md-10'>
						<input type='text' name='kerja_ayah2' placeholder='' class='form-control' <?php echo "value=$data[19]";?> required>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Pekerjaan Ibu</label>
					<div class='col-md-10'>
						<input type='text' name='kerja_ibu2' placeholder='' class='form-control' <?php echo "value=$data[20]";?> required>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Penghasilan Org Tua</label>
					<div class='col-md-10'>
						<input type='number' name='penghasilan_ortu2' placeholder='' class='form-control' <?php echo "value=$data[21]";?> required>
					</div>
				</div>
				<div class='form-group'>
					<label class='col-md-2 control-label' >Tanggungan Anak</label>
					<div class='col-md-10'>
						<input type='text' name='tggungan2' placeholder='' class='form-control' <?php echo "value=$data[22]";?> >
					</div>
				</div>
				
				</div>
				<center>
					<input type='submit' class='btn btn-sm btn-primary' name='simpan' value='Update'>
					<input type='reset' class='btn btn-sm btn-primary' name='reset' value='Reset'>
					<a href="menu_admin.php" class='btn btn-sm btn-primary' >Cancel</a>
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