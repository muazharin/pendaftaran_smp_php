<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Hair salon templates for mens hair cut service provider.">
    <meta name="keywords" content="hair salon website templates free download, html5 template, free responsive website templates, website layout,html5 website templates, template for website design, beauty HTML5 templates, cosmetics website templates free download">
    <title>Biodata</title>
    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i%7cMontserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <!-- Style -->
    <link href="../css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
</head>
<body>
    <?php
        error_reporting(0);
        include "check.php";
        $a=$_SESSION['user'];
        include "limited.php";
        $query="SELECT * FROM peserta_pendaftar WHERE nisn='$a'";
        $qwe=mysql_query($query);
        $dataq=mysql_fetch_row($qwe);
    ?>
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <a href="#"><img src="../images/logo.png" alt=""></a>
                </div>
                <div class="col-lg-8 col-md-4 col-sm-12 col-xs-12">
                      <div class="navigation">
                        <div id="navigation">
                            <ul>
                                <li class="has-sub"><a href="#" title=""><?= $dataq[1]; ?></a>
                                    <ul>
                                        <li><a href="logout.php" title="Logout" onclick="return confirm('Apakah anda yakin ingin keluar ?')"> Logout</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-caption">
                        <h2 class="page-title">Update Data Pribadi Anda</h2>
                        <div class="page-breadcrumb">
                            <ol class="breadcrumb">
                                <!--li><a href="index.html"></a></li>
                                <li class="active">Service Single</li-->
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
                        <?php
                            include "../config.php";
                            $perintah="SELECT * FROM peserta_pendaftar WHERE nisn='$a'";
                            $hasil=mysql_query($perintah);
                            $data=mysql_fetch_row($hasil);
                            if (! @$_POST['singlebutton']) 
                                @$_POST['singlebutton']='';
                        ?>
                    <h1>Biodata Peserta</h1>
                    <p> Please complete the form below.</p>
                    <form method='post' action=''>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <label class='control-label'>nisn*</label>
                                    <h3><?php echo "$data[0]"; ?></h3>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>nama*</label>
                                    <input type='text' name='nama' placeholder='' class='form-control' <?php echo "value=$data[1]"; ?> required>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>tempat lahir*</label>
                                    <input type='text' name='tmpt_lhir' placeholder='' class='form-control' <?php echo "value=$data[2]";?> required>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>jenis kelamin*</label>
                                    <select class='form-control' name='jenis_kelamin' required>
                                        <option value='Laki-Laki' <?php if($data[4]=='Laki-Laki'){echo 'selected'; }?> >Laki-Laki</option>
                                        <option value='Perempuan'<?php if($data[4]=='Perempuan'){echo 'selected'; }?> >Perempuan</option>
                                    </select>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>tanggal lahir*</label>
                                    <div class='datepicker-center'>
                                        <div class='input-group date ' data-date='' data-date-format='yyyy-mm-dd'>
                                            <span class='input-group-addon'><i class='glyphicon glyphicon-calendar'></i></span>
                                            <input class='form-control' type='text' name='tgl_regis' <?php echo "value=$data[3]";?> readonly='readonly'>
                                        </div>
                                    </div>
                                </div>
                                                
                                <div class='col-md-6'>
                                    <label class='control-label'>agama*</label>
                                    <select class='form-control' name='agama' required>
                                        <option value='Islam'<?php if($data[5]=='Islam'){echo 'selected'; }?> >Islam</option>
                                        <option value='Khatolik' <?php if($data[5]=='Khatolik'){echo 'selected'; }?> >Khatolik</option>
                                        <option value='Protestan' <?php if($data[5]=='Protestan'){echo 'selected'; }?> >Protestan</option>
                                        <option value='Hindu' <?php if($data[5]=='Hindu'){echo 'selected'; }?> >Hindu</option>
                                        <option value='Budha' <?php if($data[5]=='Budha'){echo 'selected'; }?> >Budha</option>
                                    </select>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>anak ke</label>
                                    <input type='number' name='ank_ke' placeholder='' class='form-control' <?php echo "value=$data[6]";?> >
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>jumlah saudara</label>
                                    <input type='number' name='jml_saudara' placeholder='' class='form-control' <?php echo "value=$data[7]";?> >
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Alamat Siswa*</label>
                                    <textarea class='form-control' name='almt_siswa' rows='6' placeholder='' required><?php echo "$data[9]";?></textarea>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>No. HP Siswa*</label>
                                    <input type='tel' name='hp_siswa' placeholder='' class='form-control' required <?php echo "value=$data[8]";?> >
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Berat Badan</label>
                                    <input type='number' name='brt_badan' placeholder='' class='form-control' <?php echo "value=$data[10]";?> >
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Tinggi Badan</label>
                                    <input type='number' name='tgi_badan' placeholder='' class='form-control' <?php echo "value=$data[11]";?> >
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Gol. Darah</label>
                                    <select class='form-control' name='gol_darah'>
                                        <option value='A' <?php if($data[12]=='A'){echo 'selected'; }?> >A</option>
                                        <option value='B' <?php if($data[12]=='B'){echo 'selected'; }?> >B</option>
                                        <option value='AB' <?php if($data[12]=='AB'){echo 'selected'; }?> >AB</option>
                                        <option value='O' <?php if($data[12]=='O'){echo 'selected'; }?> >O</option>
                                    </select>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Alamat Sekolah</label>
                                    <textarea class='form-control' name='almt_sekolah' rows='6' placeholder=''>
                                        <?php echo "$data[14]";?>
                                    </textarea>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Asal Sekolah*</label>
                                    <input type='text' name='asal_sekolah' placeholder='' class='form-control' <?php echo "value=$data[13]";?> required>
                                </div>
                                                
                                <div class='col-md-6'>
                                    <label class='control-label'>Nama Ayah*</label>
                                    <input type='text' name='nama_ayah' placeholder='' class='form-control' <?php echo "value=$data[15]";?> required>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Alamat Orang Tua*</label>
                                    <textarea class='form-control' name='almt_ortu' rows='6' placeholder='' required>
                                        <?php echo "$data[17]";?>
                                    </textarea>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Nama Ibu*</label>
                                    <input type='text' name='nama_ibu' placeholder='' class='form-control' <?php echo "value=$data[16]";?> required>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>No. HP Orang Tua*</label>
                                    <input type='tel' name='hp_ortu' placeholder='' class='form-control' <?php echo "value=$data[18]";?> required>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Pekerjaan Ayah*</label>
                                    <input type='text' name='kerja_ayah' placeholder='' class='form-control' <?php echo "value=$data[19]";?> required>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Pekerjaan Ibu*</label>
                                    <input type='text' name='kerja_ibu' placeholder='' class='form-control' <?php echo "value=$data[20]";?> required>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Penghasilan Orang Tua*</label>
                                    <input type='number' name='penghasilan_ortu' placeholder='' class='form-control' <?php echo "value=$data[21]";?> required>
                                </div>
                                <div class='col-md-6'>
                                    <label class='control-label'>Tanggungan Anak</label>
                                    <input type='text' name='tggungan' placeholder='' class='form-control' <?php echo "value=$data[22]";?> >
                                </div>
                                <div class='col-md-12'>
                                    <div class='form-group'>
                                        <input name='singlebutton' class='btn btn-default' type='submit' value='Simpan'>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <?php
                        include "../config.php";
                        if($_POST['singlebutton']=="Simpan"){
                            $sql="UPDATE peserta_pendaftar SET nama = '$_POST[nama]', tempat_lahir = '$_POST[tmpt_lhir]', tanggal_lahir = '$_POST[tgl_regis]', jenis_kelamin = '$_POST[jenis_kelamin]', agama = '$_POST[agama]', anak_ke = '$_POST[ank_ke]', jml_saudara = '$_POST[jml_saudara]', hp_siswa = '$_POST[hp_siswa]', alamat_siswa = '$_POST[almt_siswa]', berat_badan = '$_POST[brt_badan]', tinggi_badan = '$_POST[tgi_badan]', gol_darah = '$_POST[gol_darah]', asal_sekolah = '$_POST[asal_sekolah]', alamat_sekolah = '$_POST[almt_sekolah]', nama_ayah = '$_POST[nama_ayah]', nama_ibu = '$_POST[nama_ibu]', alamat_ortu = '$_POST[almt_ortu]', hp_ortu = '$_POST[hp_ortu]', kerja_ayah = '$_POST[kerja_ayah]', kerja_ibu = '$_POST[kerja_ibu]', penghasilan_ortu = '$_POST[penghasilan_ortu]', tanggungan_anak = '$_POST[tggungan]' WHERE nisn = '$a'";
                            mysql_query($sql);
                            ?>
                                <script type="text/javascript" language="JavaScript">
                                    alert('Anda Berhasil Memperbarui Data');
                                </script>
                            <?php
                                echo "<meta http-equiv='refresh' content='0'>";
                        }
                    ?>       
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="sidenav">
                        <ul class="listnone">
                            <li> <a href='editbiodata.php' class="active">Biodata</a></li>
                            <li> <a href='input_nilai_rapor.php'>Input Nilai Rapor</a></li>
                            <li> <a href='ubahpassword.php'>Ubah Password</a></li>
                        </ul>
                    </div>
                    <div class="widget widget-call-to-action">
                        <h1 class="widget-title">Book Your Appointment</h1>
                        <p class="text-white">Call to action widget for booking appointment online.</p>
                        <a href="#" class="btn btn-primary btn-lg">Make Appointment</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
     <div class="footer">
        <!-- footer-->
        <div class="container">
            <div class="footer-block">
                <!-- footer block -->
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="footer-widget">
                            <h2 class="widget-title">Salon Address</h2>
                            <ul class="listnone contact">
                                <li><i class="fa fa-map-marker"></i> 4958 Norman Street Los Angeles, CA 90042 </li>
                                <li><i class="fa fa-phone"></i> +00 (800) 123-4567</li>
                                <li><i class="fa fa-fax"></i> +00 (123) 456 7890</li>
                                <li><i class="fa fa-envelope-o"></i> info@salon.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-widget footer-social">
                            <!-- social block -->
                            <h2 class="widget-title">Social Feed</h2>
                            <ul class="listnone">
                                <li>
                                    <a href="#"> <i class="fa fa-facebook"></i> Facebook </a>
                                </li>
                                <li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i> Google Plus</a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i> Linked In</a></li>
                                <li>
                                    <a href="#"> <i class="fa fa-youtube"></i>Youtube</a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.social block -->
                    </div>
                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                        <div class="footer-widget widget-newsletter">
                            <!-- newsletter block -->
                            <h2 class="widget-title">Newsletters</h2>
                            <p>Enter your email address to receive new patient information and other useful information right to your inbox.</p>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Email Address">
                                <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Subscribe</button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </div>
                        <!-- newsletter block -->
                    </div>
                </div>
                <div class="tiny-footer">
                    <!-- tiny footer block -->
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="copyright-content">
                                <p>© Men Salon 2020 | all rights reserved</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.tiny footer block -->
            </div>
            <!-- /.footer block -->
        </div>
    </div>
    <!-- /.footer-->
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/menumaker.js"></script>
    <script src="../js/jquery.sticky.js"></script>
    <script src="../js/sticky-header.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script>
        $(".input-group.date").datepicker({autoclose: true, todayHighlight: true});
    </script>
</body>

</html>
