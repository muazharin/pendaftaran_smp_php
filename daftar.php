<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Hair salon templates for mens hair cut service provider.">
    <meta name="keywords" content="hair salon website templates free download, html5 template, free responsive website templates, website layout,html5 website templates, template for website design, beauty HTML5 templates, cosmetics website templates free download">
    <title>Pendaftaran</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i%7cMontserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Style -->
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
</head>

<body>
    <?php
        if (! @$_GET['menu']) 
            @$_GET['menu']='daftar';
    ?>
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <a href="index.html"><img src="images/logo.png" alt=""></a>
                </div>
                <div class="col-lg-8 col-md-4 col-sm-12 col-xs-12">
                    <div class="navigation">
                        <div id="navigation">
                            <ul>
                                <li class="active"><a href="home.php" title="Beranda">Beranda</a></li>
                                <li class="has-sub"><a href="#" title="">Pendataran</a>
                                    <ul>
                                        <li><a href="daftar.php?menu=daftar" title="Daftar">Daftar</a></li>
                                        <li><a href="daftar.php?menu=lht_pndftr" title="Lihat Pendaftar">Lihat Pendaftar</a></li>
										<li><a href="#" title="Kirim Pesan">Kirim Pesan</a></li>
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
                        <h2 class="page-title">Daftar Sekarang</h2>
                        <div class="page-breadcrumb">
                            <ol class="breadcrumb">
                                <li><a href="home.php">Beranda</a></li>
                                <li class="active">Daftar Sekarang</li>
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
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="widget widget-contact">
                        <!-- widget search -->
                        <h3 class="widget-title">Contact Info</h3>
                        <address>
                            <strong>Anawai</strong>
                            <br> H.E.A. Mokodompit Street,
                            <br> Kendari, POS 93232
                            <br>
                            <abbr title="Phone">P:</abbr> (+62) 822-4332-9590
                        </address>
                        <address>
                            <strong>Contact Name</strong>
                            <br>
                            <a href="mailto:#">muazharin.alfan@studentpartner.com</a>
                        </address>
                    </div>
                    <!-- /.widget search -->
                    <div class="widget widget-social">
                        <div class="social-circle">
                            <a href="#" class="#"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="#"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                <?php
                    include "config.php";
                    if($_GET['menu']=='daftar'){
                        $sql="SELECT * FROM pendaftaran WHERE menu='daftar'";
                        $content=mysql_query($sql);
                        $data=mysql_fetch_row($content);
                        if (! @$_POST['singlebutton']) 
                            @$_POST['singlebutton']='';
                        echo "$data[1]";
                        if($_POST['singlebutton']=="Daftar"){
                            $sql="INSERT INTO peserta_pendaftar (nisn, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, agama, anak_ke, jml_saudara, hp_siswa, alamat_siswa, berat_badan, tinggi_badan, gol_darah, asal_sekolah, alamat_sekolah, nama_ayah, nama_ibu, alamat_ortu, hp_ortu, kerja_ayah, kerja_ibu, penghasilan_ortu, tanggungan_anak) VALUES ('$_POST[nisn]', '$_POST[nama]', '$_POST[tmpt_lhir]', '$_POST[tgl_regis]', '$_POST[jenis_kelamin]', '$_POST[agama]', '$_POST[ank_ke]', '$_POST[jml_saudara]', '$_POST[hp_siswa]', '$_POST[almt_siswa]', '$_POST[brt_badan]', '$_POST[tgi_badan]', '$_POST[gol_darah]', '$_POST[asal_sekolah]', '$_POST[almt_sekolah]', '$_POST[nama_ayah]', '$_POST[nama_ibu]', '$_POST[almt_ortu]', '$_POST[hp_ortu]', '$_POST[kerja_ayah]', '$_POST[kerja_ibu]', '$_POST[penghasilan_ortu]', '$_POST[tggungan]')";
                            mysql_query($sql);
                        }
                    }
                    if($_GET['menu']=='lht_pndftr'){
                        $sql1="SELECT * FROM pendaftaran WHERE menu='lht_pndftr'";
                        $content1=mysql_query($sql1);
                        $data1=mysql_fetch_row($content1);
                        echo "$data1[1]";
                        $sql="SELECT * FROM peserta_pendaftar";
                        $content=mysql_query($sql);
                        while ($data=mysql_fetch_row($content)) {
                            echo "<tr>";
                            echo "<td>$data[0]</td>";
                            echo "<td>$data[1]</td>";
                            echo "<td>$data[13]</td>";
                            echo "</tr>";
                        }
                            echo "</tbody>";
                        echo "</table>";
                        echo "</div>";
                        echo "</div>";
                        echo "</div>";
                    }
                    
                ?>
                <!--div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <?php
                        //if (! @$_POST['singlebutton']) 
                          //  @$_POST['singlebutton']='';
                    ?>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <h1>Form Pendaftaran</h1>
                            <p> Please complete the form below. We'll do everything we can to respond to you as quickly as possible.</p>
                            <form method="post" action="">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label">nisn*</label>
                                        <input type="text" name="nisn" placeholder="" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label">nama*</label>
                                        <input type="text" name="nama" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">tempat lahir*</label>
                                        <input type="text" name="tmpt_lhir" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
										<label class="control-label">jenis kelamin*</label>
                                        <select class="form-control" name="jenis_kelamin">
											<option value="Laki-Laki">Laki-Laki</option>
											<option value="Perempuan">Perempuan</option>
										</select>
                                    </div>
									<div class="col-md-6">
										<label class="control-label">tanggal lahir*</label>
										<div class="datepicker-center">
											<div class="input-group date " data-date="" data-date-format="yyyy-mm-dd">
								                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
												<input class="form-control" type="text" name="tgl_regis" readonly="readonly">
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<label class="control-label">agama*</label>
                                        <select class="form-control" name="agama">
											<option value="Islam">Islam</option>
											<option value="Khatolik">Khatolik</option>
                                            <option value="Protestan">Protestan</option>
											<option value="Hindu">Hindu</option>
											<option value="Budha">Budha</option>
										</select>
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">anak ke</label>
                                        <input type="text" name="ank_ke" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">jumlah saudara</label>
                                        <input type="text" name="jml_saudara" placeholder="" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label">Alamat Siswa*</label>
                                        <textarea class="form-control" name="almt_siswa" rows="6" placeholder=""></textarea>
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">No. HP Siswa*</label>
                                        <input type="text" name="hp_siswa" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">Berat Badan</label>
                                        <input type="text" name="brt_badan" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">Tinggi Badan</label>
                                        <input type="text" name="tgi_badan" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
										<label class="control-label">Gol. Darah</label>
                                        <select class="form-control" name="gol_darah">
											<option value="A">A</option>
											<option value="B">B</option>
											<option value="AB">AB</option>
											<option value="O">O</option>
										</select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label">Alamat Sekolah</label>
                                        <textarea class="form-control" name="almt_sekolah" rows="6" placeholder=""></textarea>
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">Asal Sekolah*</label>
                                        <input type="text" name="asal_sekolah" placeholder="" class="form-control">
                                    </div>
									
									<div class="col-md-6">
                                        <label class="control-label">Nama Ayah*</label>
                                        <input type="text" name="nama_ayah" placeholder="" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label">Alamat Orang Tua*</label>
                                        <textarea class="form-control" name="almt_ortu" rows="6" placeholder=""></textarea>
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">Nama Ibu*</label>
                                        <input type="text" name="nama_ibu" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">No. HP Orang Tua*</label>
                                        <input type="text" name="hp_ortu" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">Pekerjaan Ayah</label>
                                        <input type="text" name="kerja_ayah" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">Pekerjaan Ibu</label>
                                        <input type="text" name="kerja_ibu" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">Penghasilan Orang Tua*</label>
                                        <input type="text" name="penghasilan_ortu" placeholder="" class="form-control">
                                    </div>
									<div class="col-md-6">
                                        <label class="control-label">Tanggungan Anak</label>
                                        <input type="text" name="tggungan" placeholder="" class="form-control">
                                    </div>
                                    <!--div class="col-md-6">
                                        <label class="control-label" for="email">email</label>
                                        <input type="text" name="email" id="email" placeholder="" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label" for="Subject">Subject</label>
                                        <input type="text" name="Subject" id="Subject" placeholder="" class="form-control">
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label" for="textarea">Message</label>
                                            <textarea class="form-control" id="textarea" name="textarea" rows="6" placeholder=""></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input name="singlebutton" class="btn btn-default" type="submit" value="Daftar">
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <?php
                                /*include "config.php";
                                if($_POST['singlebutton']=="Daftar"){
                                    $sql="INSERT INTO peserta_pendaftar (nisn, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, agama, anak_ke, jml_saudara, hp_siswa, alamat_siswa, berat_badan, tinggi_badan, gol_darah, asal_sekolah, alamat_sekolah, nama_ayah, nama_ibu, alamat_ortu, hp_ortu, kerja_ayah, kerja_ibu, penghasilan_ortu, tanggungan_anak) VALUES ('$_POST[nisn]', '$_POST[nama]', '$_POST[tmpt_lhir]', '$_POST[tgl_regis]', '$_POST[jenis_kelamin]', '$_POST[agama]', '$_POST[ank_ke]', '$_POST[jml_saudara]', '$_POST[hp_siswa]', '$_POST[almt_siswa]', '$_POST[brt_badan]', '$_POST[tgi_badan]', '$_POST[gol_darah]', '$_POST[asal_sekolah]', '$_POST[almt_sekolah]', '$_POST[nama_ayah]', '$_POST[nama_ibu]', '$_POST[almt_ortu]', '$_POST[hp_ortu]', '$_POST[kerja_ayah]', '$_POST[kerja_ibu]', '$_POST[penghasilan_ortu]', '$_POST[tggungan]')";
                                    mysql_query($sql);
                                }*/
                            ?>
                        </div>
                    </div>
                </div-->
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
                            <h2 class="widget-title">SMP Negeri 2 Raha</h2>
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
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menumaker.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/sticky-header.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script>
    $(".input-group.date").datepicker({autoclose: true, todayHighlight: true});
    </script>
</body>

</html>
