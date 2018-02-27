<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Hair salon templates for mens hair cut service provider.">
    <meta name="keywords" content="hair salon website templates free download, html5 template, free responsive website templates, website layout,html5 website templates, template for website design, beauty HTML5 templates, cosmetics website templates free download">
    <title>Akun</title>
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
                            $perintah="SELECT * FROM user WHERE username='$a'";
                            $hasil=mysql_query($perintah);
                            $data=mysql_fetch_row($hasil);
                            if (! @$_POST['singlebutton']) 
                                @$_POST['singlebutton']='';
                        ?>  
                        <h1>Edit password</h1>
                        <p> For secure your account.</p>
                        <form method='post' action=''>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <label class='control-label'>nisn*</label>
                                    <h3><?php echo $data[1];?></h3>
                                    <label class='control-label'>password lama</label>
                                    <input type='password' name='password' placeholder='' class='form-control' required <?php echo "value=$data[2]";?> >
                                    <label class='control-label'>password baru</label>
                                    <input type='password' name='password1' placeholder='' class='form-control' required>
                                    <label class='control-label'>konfirmasi password</label>
                                    <input type='password' name='password2' placeholder='' class='form-control' required>
                                </div>
                                <div class='col-md-12'>
                                    <div class='form-group'>
                                        <input name='singlebutton' class='btn btn-default' type='submit' value='Simpan'>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <?php
                            include "../config.php";
                            if($_POST['singlebutton']=="Simpan"){
                                if($_POST[password1]==$_POST[password]||$_POST[password2]==$_POST[password]){
                                ?>
                                    <script type="text/javascript" language="JavaScript">
                                        alert('Password sudah ada');
                                    </script>
                                <?php
                                echo "<meta http-equiv='refresh' content='0'>";
                               }else if($_POST[password1]!=$_POST[password2]){
                                ?>
                                    <script type="text/javascript" language="JavaScript">
                                        alert('Sesuaikan Password Baru dengan Konfirmasi Password');
                                    </script>
                                <?php
                                echo "<meta http-equiv='refresh' content='0'>";
                               }else{
                                    $var1=$_POST[password1];
                                    $var2=$_POST[password2];
                                    $var1=$var2;
                                    $sql="UPDATE user SET password='$var1' WHERE username='$a'";
                                    mysql_query($sql);
                                    ?>
                                        <script type="text/javascript" language="JavaScript">
                                            alert('Password Berhasil diubah');
                                        </script>
                                    <?php
                                    echo "<meta http-equiv='refresh' content='0'>";
                               }
                            }
                        ?>
                    </div>
                </div>
                

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="sidenav">
                        <ul class="listnone">
                            <li> <a href='editbiodata.php'>Biodata</a></li>
                            <li> <a href='input_nilai_rapor.php' >Input Nilai Rapor</a></li>
                            <li> <a href='ubahpassword.php' class="active">Ubah Password</a></li>
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
