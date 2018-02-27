-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2018 at 08:57 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registrasismp`
--

-- --------------------------------------------------------

--
-- Table structure for table `nilai_ijazah`
--

CREATE TABLE `nilai_ijazah` (
  `id_ijazah` bigint(11) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `nilai_ujian_bindo` int(11) NOT NULL,
  `nilai_ujian_bing` int(11) NOT NULL,
  `nilai_ujian_ipa` int(11) NOT NULL,
  `nilai_ujian_ips` int(11) NOT NULL,
  `nilai_ujian_mmtk` int(11) NOT NULL,
  `nilai_hasil_akhir` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_ijazah`
--

INSERT INTO `nilai_ijazah` (`id_ijazah`, `nisn`, `nilai_ujian_bindo`, `nilai_ujian_bing`, `nilai_ujian_ipa`, `nilai_ujian_ips`, `nilai_ujian_mmtk`, `nilai_hasil_akhir`, `keterangan`) VALUES
(1, '123', 10, 45, 88, 19, 27, 38, 'Tidak Lulus'),
(2, '123456789', 87, 84, 90, 80, 95, 87, 'Lulus'),
(3, '234', 77, 87, 88, 67, 78, 79, 'Lulus'),
(4, '2147483647', 88, 78, 77, 68, 84, 79, 'Lulus'),
(5, '87654145878', 88, 78, 85, 82, 79, 82, 'Lulus'),
(6, '12345', 65, 67, 60, 58, 68, 64, 'Tidak Lulus'),
(8, '321', 76, 67, 78, 89, 80, 78, 'Lulus'),
(9, '555', 89, 87, 78, 67, 70, 78, 'Lulus'),
(15, '111', 67, 89, 87, 77, 83, 81, 'Lulus'),
(16, '011618201', 65, 78, 57, 66, 59, 65, 'Tidak Lulus'),
(17, '0126167884', 67, 66, 78, 80, 67, 72, 'Lulus'),
(18, '021466812', 78, 81, 98, 91, 66, 83, 'Lulus'),
(19, '04316578', 77, 76, 67, 77, 87, 77, 'Lulus'),
(20, '081352625171', 55, 67, 78, 66, 67, 67, 'Tidak Lulus'),
(21, '082717881028', 77, 67, 67, 88, 67, 73, 'Lulus'),
(23, '9625142617', 45, 76, 68, 80, 60, 66, 'Tidak Lulus'),
(24, '312411290', 59, 77, 87, 67, 88, 76, 'Lulus'),
(25, '412166095', 78, 75, 56, 69, 66, 69, 'Tidak Lulus'),
(26, '4545545', 49, 78, 77, 65, 66, 67, 'Tidak Lulus'),
(27, '051211421', 75, 68, 77, 75, 80, 75, 'Lulus'),
(28, '73592011', 67, 78, 98, 77, 68, 78, 'Lulus'),
(29, '160555', 67, 78, 77, 55, 60, 67, 'Tidak Lulus'),
(30, '45454545', 45, 66, 67, 89, 67, 67, 'Tidak Lulus'),
(31, '08868455', 100, 100, 77, 68, 64, 82, 'Lulus'),
(32, '787898', 70, 89, 90, 60, 80, 78, 'Lulus'),
(33, '1', 12, 14, 17, 9, 100, 30, 'Tidak Lulus'),
(34, '657400', 52, 63, 71, 77, 67, 66, 'Tidak Lulus'),
(35, '657401', 66, 78, 98, 66, 78, 77, 'Lulus'),
(36, '657402', 34, 66, 56, 76, 34, 53, 'Tidak Lulus'),
(37, '657403', 77, 67, 76, 87, 66, 75, 'Lulus'),
(38, '657404', 64, 43, 66, 76, 56, 61, 'Tidak Lulus'),
(39, '1234', 58, 79, 64, 71, 43, 63, 'Tidak Lulus'),
(40, '2345', 77, 97, 97, 66, 77, 83, 'Lulus'),
(41, '2434343', 77, 67, 66, 56, 50, 63, 'Tidak Lulus'),
(42, '544456', 44, 65, 55, 78, 77, 64, 'Tidak Lulus'),
(43, '677889', 100, 88, 87, 78, 88, 88, 'Lulus'),
(44, '4565786', 80, 61, 31, 79, 90, 68, 'Tidak Lulus'),
(45, '2343435', 71, 82, 81, 80, 81, 79, 'Lulus'),
(46, '243', 51, 65, 62, 63, 57, 60, 'Tidak Lulus'),
(47, '57556756', 48, 31, 73, 48, 91, 58, 'Tidak Lulus'),
(48, '545657', 86, 82, 78, 73, 90, 82, 'Lulus'),
(49, '32434', 65, 64, 55, 58, 51, 59, 'Tidak Lulus'),
(50, '354554', 78, 71, 62, 63, 66, 68, 'Tidak Lulus'),
(51, '67546767', 81, 89, 92, 78, 82, 84, 'Lulus'),
(52, '324334435', 80, 78, 80, 82, 85, 81, 'Lulus'),
(53, '3432432', 51, 58, 61, 57, 55, 56, 'Tidak Lulus'),
(54, '35345464', 90, 81, 85, 88, 92, 87, 'Lulus'),
(55, '34354334', 55, 61, 58, 62, 61, 59, 'Tidak Lulus'),
(56, '5435343', 72, 70, 68, 64, 62, 67, 'Tidak Lulus'),
(57, '46547', 78, 76, 88, 82, 85, 82, 'Lulus'),
(58, '21312323423', 81, 56, 66, 55, 66, 65, 'Tidak Lulus'),
(59, '983810987', 90, 88, 85, 87, 75, 85, 'Lulus'),
(60, '261092648', 65, 72, 61, 62, 66, 65, 'Tidak Lulus'),
(61, '999124091', 66, 68, 58, 55, 65, 62, 'Tidak Lulus'),
(62, '9793736211', 88, 88, 90, 82, 85, 87, 'Lulus'),
(63, '001181629', 76, 72, 68, 77, 70, 73, 'Lulus'),
(64, '0101000316', 78, 72, 60, 66, 62, 68, 'Tidak Lulus'),
(65, '95546455', 62, 59, 69, 72, 68, 66, 'Tidak Lulus'),
(66, '6656606', 78, 72, 68, 62, 68, 70, 'Tidak Lulus'),
(67, '911996751', 58, 55, 62, 55, 61, 58, 'Tidak Lulus'),
(68, '77346346436', 56, 55, 55, 61, 60, 57, 'Tidak Lulus'),
(69, '45436786734', 82, 88, 70, 77, 92, 82, 'Lulus'),
(70, '97633441', 52, 64, 60, 58, 56, 58, 'Tidak Lulus'),
(71, '6555540614', 52, 51, 58, 60, 54, 55, 'Tidak Lulus'),
(72, '245464346', 55, 62, 54, 58, 60, 58, 'Tidak Lulus'),
(73, '7686867', 72, 68, 71, 75, 74, 72, 'Lulus'),
(74, '767777', 65, 62, 61, 67, 78, 67, 'Tidak Lulus'),
(75, '67676767', 78, 82, 80, 79, 75, 79, 'Lulus'),
(76, '4454597', 82, 81, 83, 92, 82, 84, 'Lulus'),
(77, '766875875', 81, 88, 78, 89, 91, 85, 'Lulus'),
(78, '8587976985', 62, 58, 60, 55, 54, 58, 'Tidak Lulus'),
(79, '24347407986', 72, 74, 65, 68, 66, 69, 'Tidak Lulus'),
(80, '96756567', 62, 55, 53, 61, 61, 58, 'Tidak Lulus'),
(81, '9878685647', 65, 64, 62, 64, 66, 64, 'Tidak Lulus'),
(82, '564684668', 55, 52, 54, 55, 52, 54, 'Tidak Lulus'),
(83, '1109278', 62, 61, 66, 63, 58, 62, 'Tidak Lulus'),
(84, '2001341', 92, 91, 88, 89, 81, 88, 'Lulus'),
(85, '2001342', 51, 51, 52, 50, 62, 53, 'Tidak Lulus'),
(86, '2001343', 81, 52, 61, 62, 57, 63, 'Tidak Lulus'),
(87, '2001344', 68, 64, 69, 78, 78, 71, 'Lulus'),
(88, '2001345', 82, 72, 82, 87, 89, 82, 'Lulus'),
(89, '2001346', 62, 55, 53, 61, 42, 55, 'Tidak Lulus'),
(90, '2001347', 51, 52, 62, 53, 51, 54, 'Tidak Lulus'),
(91, '2001348', 82, 82, 94, 88, 95, 88, 'Lulus'),
(92, '2001349', 68, 72, 77, 74, 70, 72, 'Lulus'),
(93, '2001350', 78, 81, 84, 91, 87, 84, 'Lulus'),
(94, '2001351', 52, 56, 62, 51, 78, 60, 'Tidak Lulus'),
(95, '2001352', 81, 76, 67, 72, 84, 76, 'Lulus'),
(96, '2001353', 87, 51, 62, 61, 55, 63, 'Tidak Lulus'),
(97, '2001354', 78, 79, 82, 78, 91, 82, 'Lulus'),
(98, '2001355', 78, 72, 82, 81, 92, 81, 'Lulus'),
(99, '2001356', 74, 67, 72, 56, 68, 67, 'Tidak Lulus'),
(100, '2001357', 88, 87, 92, 89, 77, 87, 'Lulus'),
(102, '2001358', 72, 68, 82, 76, 73, 74, 'Lulus'),
(103, '2001359', 77, 76, 79, 52, 67, 70, 'Tidak Lulus'),
(104, '2001360', 73, 72, 81, 56, 91, 75, 'Lulus'),
(105, '2001361', 61, 55, 62, 58, 61, 59, 'Tidak Lulus'),
(106, '2001362', 56, 71, 72, 81, 88, 74, 'Lulus'),
(107, '2001363', 92, 90, 89, 94, 97, 92, 'Lulus'),
(108, '727272', 88, 87, 86, 89, 85, 87, 'Lulus');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `menu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `content`, `menu`) VALUES
(1, '<div class=''col-lg-8 col-md-8 col-sm-8 col-xs-12''>\n        <div class=''row''>\n            <div class=''col-lg-12 col-md-12 col-sm-12 col-xs-12''>\n                <h1>Form Pendaftaran</h1>\n                    <p> Please complete the form below. We''ll do everything we can to respond to you as quickly as possible.</p>\n                        <form method=''post'' action=''''>\n                                <div class=''row''>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>nisn*</label>\n                                        <input type=''text'' name=''nisn'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>nama*</label>\n                                        <input type=''text'' name=''nama'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>tempat lahir*</label>\n                                        <input type=''text'' name=''tmpt_lhir'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>jenis kelamin*</label>\n                                        <select class=''form-control'' name=''jenis_kelamin'' required>\n                                            <option value=''Laki-Laki''>Laki-Laki</option>\n                                            <option value=''Perempuan''>Perempuan</option>\n                                        </select>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>tanggal lahir*</label>\n                                        <div class=''datepicker-center''>\n                                            <div class=''input-group date '' data-date='''' data-date-format=''yyyy-mm-dd''>\n                                                <span class=''input-group-addon''><i class=''glyphicon glyphicon-calendar''></i></span>\n                                                <input class=''form-control'' type=''text'' name=''tgl_regis'' readonly=''readonly''>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    \n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>agama*</label>\n                                        <select class=''form-control'' name=''agama'' required>\n                                            <option value=''Islam''>Islam</option>\n                                            <option value=''Khatolik''>Khatolik</option>\n                                            <option value=''Protestan''>Protestan</option>\n                                            <option value=''Hindu''>Hindu</option>\n                                            <option value=''Budha''>Budha</option>\n                                        </select>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>anak ke</label>\n                                        <input type=''number'' name=''ank_ke'' placeholder='''' class=''form-control''>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>jumlah saudara</label>\n                                        <input type=''number'' name=''jml_saudara'' placeholder='''' class=''form-control''>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Alamat Siswa*</label>\n                                        <textarea class=''form-control'' name=''almt_siswa'' rows=''6'' placeholder='''' required></textarea>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>No. HP Siswa*</label>\n                                        <input type=''tel'' name=''hp_siswa'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Berat Badan</label>\n                                        <input type=''number'' name=''brt_badan'' placeholder='''' class=''form-control''>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Tinggi Badan</label>\n                                        <input type=''number'' name=''tgi_badan'' placeholder='''' class=''form-control''>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Gol. Darah</label>\n                                        <select class=''form-control'' name=''gol_darah''>\n                                            <option value=''A''>A</option>\n                                            <option value=''B''>B</option>\n                                            <option value=''AB''>AB</option>\n                                            <option value=''O''>O</option>\n                                        </select>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Alamat Sekolah</label>\n                                        <textarea class=''form-control'' name=''almt_sekolah'' rows=''6'' placeholder=''''></textarea>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Asal Sekolah*</label>\n                                        <input type=''text'' name=''asal_sekolah'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    \n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Nama Ayah*</label>\n                                        <input type=''text'' name=''nama_ayah'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Alamat Orang Tua*</label>\n                                        <textarea class=''form-control'' name=''almt_ortu'' rows=''6'' placeholder='''' required></textarea>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Nama Ibu*</label>\n                                        <input type=''text'' name=''nama_ibu'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>No. HP Orang Tua*</label>\n                                        <input type=''tel'' name=''hp_ortu'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Pekerjaan Ayah*</label>\n                                        <input type=''text'' name=''kerja_ayah'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Pekerjaan Ibu*</label>\n                                        <input type=''text'' name=''kerja_ibu'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Penghasilan Orang Tua*</label>\n                                        <input type=''number'' name=''penghasilan_ortu'' placeholder='''' class=''form-control'' required>\n                                    </div>\n                                    <div class=''col-md-6''>\n                                        <label class=''control-label''>Tanggungan Anak</label>\n                                        <input type=''number'' name=''tggungan'' placeholder='''' class=''form-control''>\n                                    </div>\n                                    <div class=''col-md-12''>\n                                        <div class=''form-group''>\n                                            <input name=''singlebutton'' class=''btn btn-default'' type=''submit'' value=''Daftar''>\n                                        </div>\n                                    </div>\n                                </div>\n                            </form>\n                        </div>\n                    </div>\n                </div>', 'daftar'),
(2, '<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">\r\n<div class="row">\r\n<div class=''col-lg-12 col-md-12 col-sm-12 col-xs-12''>\r\n                <h1>Pendaftar Tahun Ajaran 2017/2018</h1>\r\n                    <p> Thank you for your submit.</p>             <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                 <table class=''table table-striped''>                 <thead>                     <tr>                         \r\n<th>No.</th>\r\n<th>NISN</th>                         <th>Nama</th>                         <th>Asal Sekolah</th>                     </tr>                 </thead>         <tbody>', 'lht_pndftr'),
(3, '<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">\r\n    <div class="row">\r\n        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">\r\n            <h1>Kirim Pesan Anda Untuk Kami</h1>\r\n            <p> Please complete the form below. We''ll do everything we can to respond to you as quickly as possible.</p>\r\n                <form method="post" action="">\r\n                    <div class="row">\r\n                        <div class="col-md-6">\r\n                            <label class="control-label" for="email">email</label>\r\n                            <input type="email" name="email" id="email" placeholder="" class="form-control" required>\r\n                        </div>\r\n                        <div class="col-md-6">\r\n                            <label class="control-label" for="Subject">Subject</label>\r\n                            <input type="text" name="Subject" id="Subject" placeholder="" class="form-control" required>\r\n                        </div>\r\n                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">\r\n                            <div class="form-group">\r\n                                <label class="control-label" for="textarea">Message</label>\r\n                                <textarea class="form-control" id="textarea" name="textarea" rows="6" placeholder="" required></textarea>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-md-12">\r\n                             <div class="form-group">\r\n                                    <input name="singlebutton" class="btn btn-default" type="submit" value="Kirim">\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </form>\r\n            </div>\r\n        </div>\r\n    </div>', 'krm_pesan');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_peserta`
--

CREATE TABLE `pesan_peserta` (
  `id_pesan` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan_peserta`
--

INSERT INTO `pesan_peserta` (`id_pesan`, `email`, `subject`, `pesan`) VALUES
(1, 'q@q', 'qq', 'www'),
(2, '', '', ''),
(3, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `peserta_pendaftar`
--

CREATE TABLE `peserta_pendaftar` (
  `nisn` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `anak_ke` int(11) NOT NULL,
  `jml_saudara` int(11) NOT NULL,
  `hp_siswa` int(11) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `gol_darah` varchar(10) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `hp_ortu` int(11) NOT NULL,
  `kerja_ayah` varchar(100) NOT NULL,
  `kerja_ibu` varchar(100) NOT NULL,
  `penghasilan_ortu` bigint(11) NOT NULL,
  `tanggungan_anak` int(11) NOT NULL,
  `tahun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta_pendaftar`
--

INSERT INTO `peserta_pendaftar` (`nisn`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `anak_ke`, `jml_saudara`, `hp_siswa`, `alamat_siswa`, `berat_badan`, `tinggi_badan`, `gol_darah`, `asal_sekolah`, `alamat_sekolah`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `hp_ortu`, `kerja_ayah`, `kerja_ibu`, `penghasilan_ortu`, `tanggungan_anak`, `tahun`) VALUES
('001181629', 'emilia', 'raha', '1998-11-02', 'Perempuan', 'Islam', 0, 3, 2147483647, 'jl.sutan syarir', 50, 149, 'B', 'SDN 6 Katobu', 'jl.sutan syarir', 'edisam', 'mimi', 'jl.sutan syarir', 2147483647, 'pedagang', 'pedagang', 665656, 3, '2016'),
('0101000316', 'zulhan', 'falabisahaya', '2000-09-01', 'Laki-Laki', 'Islam', 2, 2, 2147483647, 'Jl.sutan syarir', 45, 151, 'O', 'Sd 6 Katobu', 'Jl.sutan syarir', 'sidarman', 'mirandi', 'jl.sutan syarir', 814118553, 'polisi', 'polwan', 54545, 1, '2015'),
('011618201', 'Qinan Arasandi', 'mangole', '2018-01-16', 'Perempuan', 'Islam', 1, 2, 2147483647, 'Jl.Perintis', 50, 151, 'A', 'SDN 6 Katobu', 'Jl.pisang', 'arasandi', 'ningsih', 'Jl.Perintis', 2147483647, 'WIRAUSAHA', 'PNS', 322222, 2, '2015'),
('0126167884', 'suleman', 'falabisahaya', '2018-01-01', 'Laki-Laki', 'Islam', 2, 6, 2147483647, 'jl.terong', 51, 151, 'A', 'SN 6 maginti', 'jl.anaway', 'laikal', 'sumarni', 'jl.terong', 2147483647, 'sopir', 'pns', 21111, 6, '2015'),
('04316578', 'rio mayanto', 'parigi', '2018-01-02', 'Laki-Laki', 'Islam', 2, 12, 2147483647, 'jl.labu', 39, 148, 'A', 'SDN 4 duruka', 'jl.kepiting', 'Lasmani', 'Zurayani', 'jl.labu', 84125715, 'tukang batu', 'penjual bakso', 976666, 1, '2015'),
('051211421', 'diran', 'desa kambara', '1996-03-07', 'Laki-Laki', 'Islam', 4, 4, 2147483647, 'jl.kambara', 56, 156, 'A', 'sdn 4 tiworo', 'jl.kambara', 'roni', 'rina', 'jl.kambara', 2147483647, 'petani', 'petani', 865333, 2, '2015'),
('081352625171', 'rika rismawan', 'fakfak', '2003-11-28', 'Perempuan', 'Islam', 10, 12, 2147483647, 'jl.kemerdekaan', 34, 165, 'A', 'SDN 3 Duruka', 'jl.kapusuli', 'rismawan', 'riris', 'jl.kemerdekaan', 2147483647, 'pedagang ', 'pedagang', 767667, 4, '2015'),
('082717881028', 'asdamani', 'guali', '2009-02-01', 'Laki-Laki', 'Islam', 1, 4, 2147483647, 'jl.syarir', 53, 167, 'A', 'SDN 1 bangkali', 'jl.gaja', 'rismanto', 'kikrani', 'jl.syarir', 2147483647, 'penjual barang', 'pns', 7878787, 2, '2015'),
('08868455', 'agung', 'kaalimantan', '2010-03-10', 'Laki-Laki', 'Khatolik', 3, 4, 6643434, 'jl.pahlawan', 42, 147, 'A', 'sd 2 kalimatan', 'jl.pahlawan', 'purnomo', 'fia', 'jl.pahlawan', 7334343, 'tentara', 'tentara', 434344, 2, '2015'),
('1', 'MR. BONES', 'Kuvukiland', '0000-00-00', 'Laki-Laki', 'Islam', 0, 2, 999999, 'anduonohu barat', 45, 157, 'A', 'SD walang', 'Kuvukiland selatan', 'Amwa', 'Inwa', 'Kuvukiland selatan', 909909, 'Pemburu', 'Petinju', 10000000, 1, '2015'),
('1109278', 'Bagas', 'Kendari', '2003-06-01', 'Laki-Laki', 'Islam', 2, 3, 2147483647, 'jln. batu bara', 53, 167, 'O', 'SD Makau 2', 'jln. batu biru', 'Brata', 'Sesil', 'jln. batu bata', 2147483647, 'kuli', 'ib rumah tangga', 4000000, 3, '2015'),
('111', 'qasd', 'dibumi', '2018-01-02', 'Laki-Laki', 'Islam', 0, 0, 4444444, 'dddddd', 0, 0, 'A', 'ddddddd', '', 'seseorang', 'seseorang 2', 'sssssssssss', 3333333, 'PNS', 'Ibu Rumah Tangga', 3000000, 0, '2015'),
('123', 'Mamta Culkari P', 'qwe', '1997-11-07', 'Perempuan', 'Islam', 1, 1, 1234567890, 'Puwatu', 54, 166, 'O', 'qwe', '                                        wwwww                                    ', 'qddjj', 'qwe', '                                        aaaaa                                    ', 1234567890, 'qwe', 'qwe', 123123, 2, '2015'),
('1234', 'nana', 'Kendari', '2009-01-03', 'Perempuan', 'Islam', 1, 3, 8967, 'joasia', 50, 144, 'O', 'SDN 15 Katobu', 'josia', 'jaja', 'nani', 'joasia', 6877, 'tukang parkir', 'pns', 5000000, 3, '2015'),
('12345', 'Budi', 'dibumi', '1997-08-16', 'Laki-Laki', 'Khatolik', 0, 2, 852, 'asdasdasd', 45, 0, 'O', 'dikampung', '', 'seseorang', 'seseorang 2', 'dikampung', 85241, 'brt', 'irt', 2000000, 0, '2015'),
('123456789', 'Muazharin', 'Raha', '1997-11-07', 'Laki-Laki', 'Islam', 3, 3, 2147483647, 'Jl. H.E. A. Mokodompit', 54, 166, 'O', 'SD Negeri 15 Katobu', '                                                                                                                                                                Raha                                                                                                                                                ', 'La', 'Fania', '                                                                                                                                                                Raha                                                                                                                                                ', 2147483647, 'PNS', 'Ibu', 4000000, 2, '2015'),
('160555', 'kiki', 'baruga', '2011-02-01', 'Perempuan', 'Islam', 1, 4, 789787332, 'jl.rindu', 61, 170, 'A', 'sd 2 dofa', 'jl.kenagan', 'gilang', 'dian', 'jl.rindu', 73333, 'penyanyi', 'penjual', 3434343, 1, '2015'),
('2001341', 'bulan', 'Raha', '2002-05-22', 'Perempuan', 'Islam', 2, 4, 2147483647, 'jln. seroja\r\n', 155, 155, 'A', 'SD bunglon 2', 'jln. Beringin\r\n', 'beta', 'desi', 'jln. seroja\r\n', 2147483647, 'buruh', 'ibu ruamh tangga', 4000000, 3, '2015'),
('2001342', 'sinar', 'Raha', '2002-09-05', 'Laki-Laki', 'Islam', 2, 2, 2147483647, 'jln. seroja\r\n', 5656, 156, 'A', 'SD bunglon 6', 'jln. Beringin\r\n', 'kahar', 'minati', 'jln. seroja\r\n', 2147483647, 'buruh', 'ibu rumah tangga', 2000000, 2, '2015'),
('2001343', 'cece', 'Raha', '2002-02-08', 'Laki-Laki', 'Islam', 4, 5, 2147483647, 'jln. seroja\r\n', 57, 157, 'AB', 'SD bunglon 2', 'jln. Beringin\r\n', 'suhar', 'tina', 'jln. Seroja\r\n', 2147483647, 'kuli', 'ibu rumah tangga', 4000000, 3, '2015'),
('2001344', 'diki', 'Raha', '2002-08-15', 'Laki-Laki', 'Islam', 1, 2, 2147483647, 'jln. Seroja\r\n', 58, 158, 'B', 'SD bunglon 2', 'jln. Beringin\r\n', 'tono', 'cici', 'jln. Seroja\r\n', 2147483647, 'kuli', 'ibu rumah tangga', 2500000, 2, '2015'),
('2001345', 'budi', 'Raha', '2002-08-09', 'Laki-Laki', 'Islam', 4, 4, 2147483647, 'jln. Seroja\r\n', 59, 159, 'A', 'SD bunglon 2', 'jln. Beringin\r\n', 'suhara', 'awkarin', 'jln. seroja\r\n', 2147483647, 'kuli', 'ibu rumah tangga', 3000000, 2, '2015'),
('2001346', 'bradi', 'Raha', '2002-05-16', 'Laki-Laki', 'Khatolik', 2, 6, 2147483647, 'jln. seroja\r\n', 60, 160, 'O', 'SD bunglon 2', 'jln. Beringin\r\n', 'timo', 'sema', 'jln. Seroja\r\n', 2147483647, 'PNS', 'ibu rumah tangga', 4000000, 5, '2015'),
('2001347', 'bimbim', 'Raha', '2002-01-01', 'Laki-Laki', 'Islam', 2, 3, 2147483647, 'jln. Mangga\r\n', 61, 161, 'B', 'SD bunglon 2', 'jln. Beringin\r\n', 'tobi', 'dahlian', 'jln. Mangga\r\n', 2147483647, 'PNS', 'ibu rumah tangga', 4000000, 3, '2015'),
('2001348', 'bima', 'Raha', '2002-01-01', 'Laki-Laki', 'Islam', 4, 5, 2147483647, 'jln. Mangga\r\n', 62, 162, 'AB', 'SD bunglon 2', 'jln. Beringin\r\n', 'erik', 'subair', 'jln. Mangga\r\n', 2147483647, 'PNS', 'PNS', 6000000, 5, '2015'),
('2001349', 'bayu', 'Raha', '2002-09-01', 'Laki-Laki', 'Budha', 1, 3, 2147483647, 'jln. Mangga\r\n', 63, 163, 'O', 'SD bunglon 2', 'jln. Beringin\r\n', 'pai', 'uta', 'jln. Mangga\r\n', 2147483647, 'PNS', 'PNS', 6000000, 3, '2016'),
('2001350', 'bagus', 'Raha', '2002-09-01', 'Laki-Laki', 'Islam', 5, 5, 2147483647, 'jln. Mangga\r\n', 64, 164, 'B', 'SD bunglon 2', 'jln. Beringin\r\n', 'supratman', 'ubila', 'jln. Mangga\r\n', 2147483647, 'PNS', 'ibu rumah tangga', 3400000, 3, '2016'),
('2001351', 'bintang', 'Raha', '2002-07-01', 'Perempuan', 'Islam', 2, 3, 2147483647, 'jln. Mangga\r\n', 61, 165, 'A', 'SD bunglon 2', 'jln. Beringin\r\n', 'ari', 'sonia', 'jln. Mangga\r\n', 2147483647, 'pengusaha', 'pengusaha', 7000000, 2, '2016'),
('2001352', 'boy', 'Raha', '2002-04-10', 'Laki-Laki', 'Islam', 1, 3, 2147483647, 'jln. Mangga\r\n', 62, 166, 'A', 'SD Maleo 97', 'jln. Beringin\r\n', 'mail', 'maila', 'jln. Mangga\r\n', 2147483647, 'pengusaha', 'PNS', 6600000, 0, '2016'),
('2001353', 'bunga', 'Raha', '2002-01-01', 'Perempuan', 'Islam', 2, 4, 2147483647, 'jln. Mangga\r\n', 63, 167, 'O', 'SD Maleo 97', 'jln. Kepiting\r\n', 'juan', 'kila', 'jln. Mangga\r\n', 2147483647, 'PNS', 'pengusaha', 6000000, 3, '2016'),
('2001354', 'bambang', 'Raha', '2002-09-26', 'Laki-Laki', 'Islam', 1, 2, 2147483647, 'jln. Mangga\r\n', 64, 168, 'A', 'SD Makau 2', 'jln. Kepiting\r\n', 'ruri', 'sibad', 'jln. Mangga\r\n', 2147483647, 'kuli', 'kuli', 2400000, 1, '2016'),
('2001355', 'bano', 'Raha', '2002-01-01', 'Laki-Laki', 'Islam', 3, 3, 2147483647, 'jln. Mengkudu\r\n', 65, 169, 'A', 'SD Maleo 97', 'jln. Kepiting\r\n', 'naruto', 'hiinata', 'jln. Mengkudu\r\n', 2147483647, 'PNS', 'ibu rumah tangga', 3500000, 3, '2016'),
('2001356', 'cantika', 'Raha', '2002-01-01', 'Perempuan', 'Islam', 2, 5, 2147483647, 'jln. Mengkudu\r\n', 66, 170, 'AB', 'SD Maleo 97', 'jln. Kepiting\r\n', 'roni', 'jodi', 'jln. Mengkudu\r\n', 2147483647, 'buruh', 'buruh', 3000000, 2, '2016'),
('2001357', 'celin', 'Raha', '2002-09-12', 'Perempuan', 'Islam', 4, 5, 2147483647, 'jln. Mengkudu\r\n', 67, 155, 'A', 'SD Maleo 97', 'jln. Kepiting\r\n', 'badui', 'weni', 'jln. Mengkudu', 2147483647, 'pengusaha', 'ibu rumah tangga', 5000000, 3, '2016'),
('2001358', 'catelin', 'Raha', '2002-01-01', 'Perempuan', 'Islam', 3, 5, 2147483647, 'jln. Mengkudu\r\n', 68, 156, 'O', 'SD Maleo 97', 'jln. Kepiting\r\n', 'ruslan', 'gusni', 'jln. Mengkudu\r\n', 2147483647, 'petani', 'petani', 7000000, 2, '2016'),
('2001359', 'cua', 'Raha', '2002-11-18', 'Perempuan', 'Islam', 1, 3, 2147483647, 'jln. Mengkudu\r\n', 69, 157, 'B', 'SD Maleo 97', 'jln. Kepiting\r\n', 'ibnu', 'nana', 'jln. Mengkudu\r\n', 2147483647, 'petani', 'petani', 7000000, 2, '2016'),
('2001360', 'cici', 'Raha', '2002-04-11', 'Perempuan', 'Hindu', 4, 4, 2147483647, 'jln. Mengkudu\r\n', 70, 158, 'O', 'SD Maleo 97', 'jln. Kepiting\r\n', 'aseng', 'nona', 'jln. Mengkudu\r\n', 2147483647, 'pedagang', 'pedagang', 6000000, 3, '2016'),
('2001361', 'calli', 'Raha', '2002-01-01', 'Laki-Laki', 'Islam', 4, 6, 2147483647, 'jln. Kakatua\r\n', 71, 159, 'A', 'SD bunglon 2', 'jln. Kepiting\r\n', 'kuna', 'bani', 'jln. Kakatua\r\n', 2147483647, 'PNS', 'pengusaha', 100000000, 2, '2016'),
('2001362', 'anan', 'Raha', '2002-01-01', 'Laki-Laki', 'Islam', 9, 12, 2147483647, 'jln. Kakatua\r\n', 78, 162, 'AB', 'SD Bakiak', 'jln. Beringin\r\n', 'Agus', 'memei', 'jln. Kakatua\r\n', 2147483647, 'kuli', 'ibu rumah tangga', 2000000, 12, '2016'),
('2001363', 'ana', 'Raha', '2002-01-01', 'Laki-Laki', 'Khatolik', 1, 1, 2147483647, 'jln. Kakatua\r\n', 62, 161, 'A', 'SD Bakiak', 'jln. Beringin\r\n', 'Kaseng', 'tuna', 'jln. Kakatua\r\n', 2147483647, 'kuli', 'pedagang', 3000000, 1, '2016'),
('21312323423', 'SISKA', 'KENDARI', '2010-01-20', 'Perempuan', 'Islam', 5, 6, 3534634, 'GDGFDGD', 45, 134, 'AB', 'SD Bunga Seroja Pagi', 'DSGSDGFDHFDH', 'JAJA', 'FIRA', 'ASFSDFDSFSD', 24334546, 'PNS', 'Pedagang', 2000000, 3, '2016'),
('21466812', 'rini hastati', 'labuan', '2018-01-07', 'Perempuan', 'Islam', 1, 7, 2147483647, 'jl.kelinci', 41, 170, 'A', 'SDN 1 konda', 'jl.hidup', 'karmani', 'siska', 'jl.kelinci', 2147483647, 'tukang parkir', 'tukang cuci baju', 211111, 2, '2016'),
('2147483647', 'Muh.Budi', 'RAHA', '1997-02-04', 'Laki-Laki', 'Islam', 4, 4, 2147483647, 'JLN.SARANANI', 78, 167, 'A', 'SDN 1 BARUGA', 'JLN. BUNGA SEROJA', 'JARDIN', 'RAHMINI', 'JLN.SARANANI', 2147483647, 'GURU', 'WIRAUSAHA', 123990, 2, '2016'),
('234', 'Wafiqoh Muslimin Sabbi', 'Kendari', '2004-01-01', 'Perempuan', 'Islam', 1, 1, 2147483647, 'Kendari', 52, 157, 'O', 'SD Bunga Seroja Pagi', 'Kendari', 'Rahmat', 'Siti', 'Kendari', 2147483647, 'Guru', 'Ibu Rumah Tangga', 1000000, 2, '2016'),
('2343435', 'NAMIRA', 'Kendari', '2010-01-01', 'Perempuan', 'Islam', 2, 3, 345346, 'ADSFDGFHTY', 33, 133, 'O', 'SD Islam Anaway', 'FSDFFF', 'TAATA', 'RIZA', 'FDSGYT', 53464576, 'PNS', 'Pegawai Negeri Sipil', 4000000, 4, '2016'),
('2345', 'lala', 'KENDARI', '2013-03-01', 'Perempuan', 'Islam', 2, 2, 34355, 'HAFDR', 45, 135, 'B', 'SDN 15 Katobu', 'GFGDFH', 'QAQAR', 'QIYU', 'FHNGHFG', 2147483647, 'WIRAUSAHA', 'PENGANGGURAN', 8000000, 2, '2016'),
('243', 'RIZAL', 'KENDARI', '2010-07-14', 'Laki-Laki', 'Islam', 2, 2, 2343654, 'GTRHHTYHRG', 44, 130, 'A', 'SD Bunga Seroja Pagi', 'RRGGRTHT', 'ANDI', 'LAMBE', 'DSFDFDF', 3425435, 'WIRAUSAHA', 'Ibu Rumah Tangga', 30000000, 2, '2016'),
('2434343', 'FIFGO', 'jakarta', '2010-08-18', 'Laki-Laki', 'Islam', 6, 7, 65768, 'TERNATE', 44, 134, 'AB', 'SD Bunga Seroja Pagi', 'DCFGDFG', 'TATANG', 'MAYA', 'FDHFHHGF', 65755, 'PNS', 'PNS', 5000000, 4, '2016'),
('24347407986', 'fuad', 'ujungpandang', '2002-05-14', 'Laki-Laki', 'Islam', 5, 6, 44678798, 'jl.kenari', 51, 162, 'A', 'sd 5 ujungpandang', 'jl.kenari', 'kilang', 'jain', 'jl.kenari', 565658, 'pns', 'pns', 4747, 3, '2016'),
('245464346', 'yayan', 'galampano', '2009-01-28', 'Perempuan', 'Islam', 1, 4, 643775, 'jl.raha', 67, 161, 'A', 'sd 5 galampano', 'jl.raha', 'ramli', 'ramna', 'jl.galampao', 66565, 'pns', 'pns', 656565, 0, '2016'),
('261092648', 'toto', 'palembang', '1996-01-19', 'Laki-Laki', 'Islam', 1, 2, 2147483647, 'jl.kencana', 61, 0, 'AB', 'sdn 7 palembang', 'jl.kencana', 'permana', 'nina', 'jl.kencana', 2147483647, 'tentara', 'pns', 20846333, 1, '2016'),
('312411290', 'siwani', 'kolono', '2010-03-07', 'Perempuan', 'Islam', 3, 3, 84317615, 'jl.parantis', 45, 149, 'A', 'sd 1 parigi', 'jl.gilr', 'firdan', 'fira', 'jl.kemerdekaan', 8522167, 'penjual piring', 'penjual celana', 323232, 1, '2016'),
('321', 'Ragil', 'Kambara', '2018-01-02', 'Laki-Laki', 'Budha', 0, 0, 9, 'dimanasaja', 0, 0, 'A', 'SD Islam Anaway', '', 'adadeh', 'keppo', 'dikampung', 999999, 'mautau?', 'mautaujuga', 2000000, 0, '2016'),
('324334435', 'TITI', 'TANGERANG', '2009-08-11', 'Perempuan', 'Islam', 4, 5, 134123, 'FDDFGDFG', 44, 145, 'AB', 'SD Bunga Seroja Pagi', 'EWRFERGR', 'RaTNO', 'RATIH', 'DFGFGFGGHFGFG', 234, 'WIRAUSAHA', 'Pegawai Negeri Sipil', 212111113, 2, '2016'),
('32434', 'ANISA', 'KENDARI', '2013-09-05', 'Perempuan', 'Islam', 2, 2, 2123434, 'ASFFSD', 33, 140, 'AB', 'SD Bunga Seroja Pagi', 'FSDFDSFD', 'YAYA', 'NITA', 'AFDSSS', 2353454, 'WIRAUSAHA', 'Pegawai Negeri Sipil', 5000000, 2, '2016'),
('3432432', 'RAHAYU', 'KENDARI', '2010-11-16', 'Perempuan', 'Islam', 2, 2, 34242, 'ASDDASFDS', 44, 140, 'AB', 'SD Bunga Seroja Pagi', 'DFDSFDF', 'DANANG', 'LALA', 'ASCSDSD', 42334534, 'tukang batu', 'Guru', 300000, 2, '2016'),
('34354334', 'LALAS', 'KENDARI', '2011-08-01', 'Perempuan', 'Islam', 3, 3, 2147483647, 'DSFDFDS', 45, 134, 'AB', 'SD Islam Anaway', 'SADEFWTRDHD', 'TATA', 'DILA', 'VSDGDFHDF', 2143546, 'WIRAUSAHA', 'Pegawai Negeri Sipil', 50000000, 45, '2016'),
('35345464', 'KATNO', 'KENDARI', '2010-08-11', 'Laki-Laki', 'Islam', 4, 4, 324325345, 'GSDSGFG', 44, 144, 'B', 'SDN 15 Katobu', 'GDGSFG', 'Rahmat', 'Siti', 'FDSFFDSFSD', 24235, 'WIRAUSAHA', 'Ibu Rumah Tangga', 4000000, 4, '2016'),
('354554', 'ANITA', 'PONDIDAHA', '2011-10-20', 'Perempuan', 'Islam', 6, 6, 986797009, 'UHGYHFDFGHGH', 40, 120, 'AB', 'SD BANJAR WIJAYA', 'GHJAGSGGH', 'KIKIN', 'RATIH', 'GFHSFSDB', 898656778, 'Buruh', 'PNS', 3000000, 3, '2016'),
('412166095', 'miliea', 'surabaya', '2000-03-06', 'Laki-Laki', 'Islam', 1, 2, 2147483647, 'jl.tuyul', 52, 152, 'A', 'sdn 5 dofa', 'jl.julin', 'firman', 'kirani', 'jl.dofa', 823516, 'pedagang', 'pedagang', 11111, 1, '2017'),
('4454597', 'kinan', 'riau', '2010-05-05', 'Perempuan', 'Islam', 3, 5, 6986969, 'jl.riau', 65, 165, 'A', 's 4 riau', 'jl.riau', 'balung', 'dinda', 'jl.susuali', 6675675, 'tentara', 'pedagang', 6456757667, 3, '2017'),
('45436786734', 'didik', 'surabaya', '2003-05-07', 'Laki-Laki', 'Protestan', 4, 5, 74646464, 'jl.bintang', 57, 156, 'A', 'sd 8 surabaya', 'jl.bintang', 'sarman', 'iburas', 'jl.bintang', 6737575, 'pns', 'pns', 4666, 2, '2017'),
('45454545', 'kirana', 'jakarta', '2000-02-04', 'Perempuan', 'Islam', 1, 2, 85333333, 'jl.cikarang', 41, 150, 'O', 'jl.cikarang', 'jl.cikarang', 'bagas', 'kinan', 'jl.cikarang', 743355, 'polisi', 'polwan', 333333, 1, '2017'),
('4545545', 'selani', 'malang', '2009-02-26', 'Perempuan', 'Khatolik', 3, 4, 824131765, 'jl.kenangan', 45, 156, 'A', 'sdn 6 malang', 'jl.serabi', 'dirmanto', 'dirmanti', 'jl.oriunung', 6246161, 'penjual somay', 'penjual bakso', 4444, 1, '2017'),
('4565786', 'DARMAN', 'KONAWE', '2011-12-27', 'Laki-Laki', 'Islam', 4, 4, 54354, 'XFDFGH', 60, 154, 'AB', 'SD Bintang', 'GDGFGFGH', 'Rahmat', 'SITI', 'SADFDSF', 1234567890, 'WIRAUSAHA', 'Ibu Rumah Tangga', 3000000, 4, '2017'),
('46547', 'ASTRI', 'KENDARI', '2012-08-04', 'Perempuan', 'Islam', 2, 3, 343546, 'DSFSDFDGFDG', 33, 123, 'AB', 'SD Bintang', 'SGDSDGDFGD', 'LAODE', 'KANA', 'DSGDGD', 43534646, 'PNS', 'PNS', 5000000, 3, '2017'),
('5435343', 'KIKIR', 'Raha', '2009-11-26', 'Laki-Laki', 'Islam', 4, 4, 2147483647, 'DGSGDFGFDF', 45, 45, 'A', 'SD Bunga Seroja Pagi', 'GDGFDHFGHGH', 'Rahmat', 'RATIH', 'DFDGFHGF', 3434654, 'PNS', 'PNS', 40000000, 4, '2017'),
('544456', 'TATANG', 'KENDARI', '2011-07-18', 'Laki-Laki', 'Budha', 4, 5, 21324354, 'DFFDGG', 33, 144, 'AB', 'SD Bintang', 'DSASDFF', 'Rahmat', 'RIRI', 'SFSDFD', 234324, 'WIRAUSAHA', 'Ibu Rumah Tangga', 21000000, 3, '2017'),
('545657', 'DIDI', 'KENDARI', '2011-08-17', 'Laki-Laki', 'Islam', 3, 3, 12345, 'FTRETHTG', 30, 133, 'A', 'SD Bunga Seroja Pagi', 'FDFGFD', 'JAJA', 'Siti', 'AFSFEF', 23573, 'Guru', 'PNS', 33555000, 3, '2017'),
('555', 'ogo', 'dibumi', '1997-08-16', 'Laki-Laki', 'Islam', 0, 0, 222222, 'qwe', 0, 0, 'A', 'SD Islam Anaway', '', 'seseorang', 'Siti', 'sssssss', 2147483647, 'PNS', 'Karayawati', 3000000, 0, '2017'),
('564684668', 'wulan', 'bandung', '2009-09-09', 'Perempuan', 'Islam', 2, 4, 48585858, 'jl.belimbing', 44, 152, 'A', 'sd 1 wadaga', 'jl.belimbing', 'suparto', 'Suminarti', 'jl.belimbing', 56565658, 'penjual', 'penjual', 5664476, 2, '2017'),
('57556756', 'TIKA', 'BOMBANA', '2011-01-01', 'Perempuan', 'Islam', 1, 1, 234325, 'UFGFGHD', 33, 145, 'A', 'SD Bunga Seroja Pagi', 'FGGDHGD', 'ACO', 'FATIH', 'SFDFFSFFFFD', 314353, 'GURU', 'Guru', 5000000, 1, '2017'),
('6555540614', 'gial', 'cilacap', '1999-05-04', 'Laki-Laki', 'Islam', 3, 4, 88687567, 'jl.cilacap', 56, 156, 'A', 'sd 4 cilacap', 'jl.cilacap', 'fino', 'gina', 'jl.cilacap', 54585, 'pns', 'pns', 565656, 2, '2017'),
('657400', 'Sipaa ami', 'Bau-Bau', '2010-05-18', 'Perempuan', 'Islam', 1, 1, 9998, 'Jl. Patimura', 40, 130, 'A', 'SD Islam Anaway', 'Komp. Baruga', 'La Ode Ija', 'Wa Ode Ija', 'Jl. Patimura', 9998, 'Polisi', 'Ibu Rumah Tangga', 3500000, 1, '2017'),
('657401', 'Adinda', 'Kendari', '2012-05-13', 'Perempuan', 'Islam', 3, 4, 988888, 'Jl. Bunga', 44, 145, 'AB', 'SD Islam Anaway', 'Komp. Baruga', 'Bejo', 'Ami', 'Jl. Bunga', 89999, 'WIRAUSAHA', 'ibu negara', 25000000, 4, '2017'),
('657402', 'Vino', 'Kendari', '2010-02-20', 'Laki-Laki', 'Khatolik', 2, 3, 22222, 'Jl. Bangau', 33, 145, 'B', 'SD Bintang', 'Jl. Mandonga', 'Jack', 'Wiwi', 'Jl. Bangau', 899009, 'Buruh', 'Ibu PKK', 3000000, 3, '2017'),
('657403', 'Vicky', 'Kendari', '2010-07-25', 'Perempuan', 'Protestan', 2, 2, 9999, 'Jl. Benda', 40, 140, 'AB', 'SD Bintang', 'Jl. Mandonga', 'Mike', 'Lice', 'Jl. Kembang', 98878, 'Kapten', 'Ibu Rumah Tangga', 3000000, 2, '2017'),
('657404', 'KIKI  FATIMAH', 'kENDARI', '2011-09-21', 'Perempuan', 'Islam', 6, 6, 998998, 'Komp. Baruga', 40, 140, 'B', 'SD Islam Anaway', 'Komp. Baruga', 'Fafa', 'Kaka', 'Komp. Baruga', 9887, 'Tentara', 'Pedagang', 40000000, 3, '2017'),
('6656606', 'yuni', 'baubau', '2009-01-28', 'Perempuan', 'Islam', 1, 3, 867674334, 'jl.sudirman', 60, 160, 'A', 'sd 8 baubau', 'jl.sudirman', 'dirga', 'hamida', 'jl.sudirman', 56455, 'penjual', 'penjual', 145454, 2, '2017'),
('67546767', 'DANAN', 'TANGERANG', '2010-05-01', 'Laki-Laki', 'Islam', 5, 5, 21435345, 'DFSDGSVD', 33, 145, 'AB', 'SD Bintang', 'DFGDCFGD', 'TIJO', 'TITI', 'ASFDSFDSFD', 34354, 'tukang parkir', 'Ibu Rumah Tangga', 30000000, 5, '2017'),
('67676767', 'galang', 'gontor', '2013-05-14', 'Laki-Laki', 'Islam', 1, 5, 757575, 'jl.guali', 43, 152, 'A', 'sd 6 guali', 'jl.guali', 'huali', 'galani', 'jl.guali', 56567, 'polisi', 'polwan', 55565, 3, '2017'),
('677889', 'RICO', 'jakarta', '2012-06-13', 'Laki-Laki', 'Islam', 3, 3, 3434354, 'ASFSFDFR', 44, 120, 'A', 'SDN 15 Katobu', 'ADSFSD', 'DADANG', 'RIKKY', 'GFJTYHJMH', 6457, 'GURU', 'Pegawai Negeri Sipil', 50000000, 5, '2017'),
('727272', 'Muaz', 'raha', '1996-11-07', 'Laki-Laki', 'Islam', 3, 3, 2147483647, 'JL.Jambu Mente', 54, 166, 'O', 'SDN 15 Katobu', 'JL. Diponegoro', 'La Ode Ali', 'Fania', 'JL. Diponegoro', 2147483647, 'PNS', 'Ibu Rumah Tangga', 4000000, 4, '2017'),
('73592011', 'rikad', 'raha', '2009-01-29', 'Laki-Laki', 'Khatolik', 1, 2, 4162777, 'jl.hilan', 51, 147, 'A', 'sd 7 fakfak', 'jl.tiwar', 'jumar', 'jisa', 'jl.cinta', 7231111, 'nelayan', 'nelayan', 7787878, 1, '2017'),
('766875875', 'fanda', 'kendari', '2010-03-04', 'Perempuan', 'Islam', 3, 6, 76875667, 'raha', 46, 152, 'A', 'sd 5 guali', 'jl.pisang', 'hipan', 'nining', 'jl.guali', 56767764, 'pns', 'pns', 454547, 2, '2017'),
('767777', 'ranty', 'guali', '2010-02-02', 'Perempuan', 'Islam', 4, 5, 7866, 'jl.kelinci', 56, 167, 'A', 'sd 7 baruga', 'jl.kelinci', 'balang', 'sundari', 'jl.pelalang', 655755, 'pns', 'pns', 76785858, 2, '2017'),
('7686867', 'yuyun', 'banjarmasin', '1999-02-04', 'Perempuan', 'Islam', 1, 2, 7686, 'jl.pahlawan', 65, 166, 'A', 'sd 6 banjarmasin', 'jl.pahlawan', 'jujun', 'mita', 'jl.pahlawan', 76767676, 'pns', 'pns', 646, 2, '2017'),
('77346346436', 'melia', 'wapunto', '2010-02-03', 'Perempuan', 'Islam', 4, 5, 2147483647, 'jl.kemerdekaan', 56, 160, 'A', 'sd 12 katobu', 'jl.pisang', 'rakang', 'retba', 'jl.pisang', 7884442, 'wirausaha', 'wirausaha', 64646, 1, '2017'),
('787898', 'Aizawa', 'Kyoto', '2012-04-01', 'Laki-Laki', 'Islam', 1, 1, 8989999, 'BTN Wanggu permai blok G7', 52, 168, 'B', 'Sd Arashi', 'Kagawa, Distrik 4, blok 3 .', 'Matsumoto', 'Yuki', 'Kagawa, Distrik 3, blok 4 .', 6455342, 'NEET', 'PNS', 15000000, 2, '2017'),
('8587976985', 'nilam', 'raha', '2010-03-18', 'Perempuan', 'Islam', 3, 4, 67584, 'jl.kikil', 54, 171, 'A', 'sd 5 raha', 'jl.kikil', 'juan', 'bibin', 'jl.kikil', 446547, 'polisi', 'polwan', 443564745, 2, '2017'),
('87654145878', 'DERIL', 'TAMPO', '2018-01-02', 'Laki-Laki', 'Islam', 1, 1, 22222, 'ccccccccccccc', 1, 1, 'AB', 'w', 'w', 'w', 'wa lanti', 'w', 2147483647, 'WIRAUSAHA', 'Ibu Rumah Tangga', 1, 1, '2017'),
('911996751', 'aisya', 'falabisahaya', '1997-01-15', 'Perempuan', 'Islam', 1, 1, 2147483647, 'jl.perintis', 39, 148, 'O', 'SDN 6 Katobu', 'jl.sutan syarir', 'badeng', 'iga', 'jl.sutan syarir', 2147483647, 'wiraswasta', 'wiraswasta', 54545444, 2, '2017'),
('95546455', 'rizki', 'kendari', '2016-05-04', 'Laki-Laki', 'Islam', 1, 4, 65656565, 'jl.bkp', 44, 150, 'A', 'sd 1 baruga', 'jl.bkp', 'didn', 'sumarni', 'j.bkp', 832748122, 'pns', 'pns', 545, 3, '2017'),
('9625142617', 'dilan dirga', 'kendari', '2010-01-01', 'Laki-Laki', 'Islam', 2, 2, 842714271, 'jl.kemerdekaan', 31, 150, 'A', 'sdn 7 baruga', 'jl.petarani', 'abdulah', 'halima', 'jl.kemerdekaan', 83427165, 'pedagang', '0835126111', 7770, 1, '2017'),
('96756567', 'cici', 'manado', '1990-02-01', 'Perempuan', 'Islam', 1, 5, 34746, 'j.riau', 38, 145, 'A', 'sd 5 barat', 'jl.riau', 'lois', 'jijin', 'jl.riau', 435466848, 'polisi', 'polwan', 7474, 3, '2017'),
('97633441', 'saras', 'CIAMIS', '2000-02-01', 'Perempuan', 'Islam', 1, 3, 857577, 'jl.ciamis', 65, 159, 'A', 'sd 1 ciamis', 'jl.ciamis', 'bakong', 'mirna', 'jl.pisang', 66556565, 'tentara', 'pns', 6656, 1, '2017'),
('9793736211', 'azis', 'raha', '1996-02-15', 'Laki-Laki', 'Islam', 0, 3, 2147483647, 'jl.sugimanuru', 45, 149, 'A', 'SDN 7 wuawua', 'jl.sugimanuru', 'purnomo', 'purnama', 'jl.pahlawan', 2147483647, 'pns', 'pns', 65656, 2, '2017'),
('983810987', 'Riris', 'kediri', '1999-09-03', 'Perempuan', 'Islam', 1, 4, 2147483647, 'jl.belibis', 52, 170, 'A', 'sdn 6 duruka', 'jl.kancil', 'bantong', 'bintang', 'jl.belibis', 2147483647, 'pedagang', 'pedagang', 77777, 2, '2017'),
('9878685647', 'dandy', 'jkt', '2009-01-01', 'Laki-Laki', 'Islam', 6, 6, 34347, 'jl.pendidikan', 44, 152, 'A', 'sd 4 riau', 'jl.pisang', 'sarmni', 'saras', 'jl.kepiting', 97443434, 'pedagang', 'pedagang', 236476568, 2, '2017'),
('999124091', 'rahmat', 'malang', '1999-01-01', 'Laki-Laki', 'Khatolik', 1, 2, 2147483647, 'jl.kediri', 51, 149, 'A', 'SDN 7 Malang', 'jl.kediri', 'Wicaksosno', 'Suminarti', 'Jl.kemerdekaan', 2147483647, 'penjual', 'penjual', 899972932, 1, '2017');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id` int(11) NOT NULL,
  `tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id`, `tahun`) VALUES
(1, 2015),
(2, 2016),
(3, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `adm_id` bigint(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`adm_id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, '123', '123', 'siswa'),
(22, '234', '234', 'siswa'),
(23, '123456789', 'muazharinA', 'siswa'),
(29, '87654145878', '87654145878', 'siswa'),
(30, '12345', '12345', 'siswa'),
(31, '321', '321', 'siswa'),
(32, '555', '555', 'siswa'),
(38, '111', '111', 'siswa'),
(39, '011618201', '011618201', 'siswa'),
(40, '0126167884', '0126167884', 'siswa'),
(42, '04316578', '04316578', 'siswa'),
(43, '081352625171', '081352625171', 'siswa'),
(44, '082717881028', '082717881028', 'siswa'),
(46, '9625142617', '9625142617', 'siswa'),
(47, '312411290', '312411290', 'siswa'),
(48, '412166095', '412166095', 'siswa'),
(49, '4545545', '4545545', 'siswa'),
(50, '051211421', '051211421', 'siswa'),
(51, '73592011', '73592011', 'siswa'),
(52, '160555', '160555', 'siswa'),
(53, '45454545', '45454545', 'siswa'),
(54, '08868455', '08868455', 'siswa'),
(55, '787898', 'babyshark', 'siswa'),
(56, '1', '111', 'siswa'),
(57, '2147483647', '2147483647', 'siswa'),
(58, '657400', '657400', 'siswa'),
(59, '657401', '657401', 'siswa'),
(60, '657402', '657402', 'siswa'),
(61, '657403', '657403', 'siswa'),
(62, '657404', '657404', 'siswa'),
(63, '1234', '1234', 'siswa'),
(64, '2345', '2345', 'siswa'),
(65, '2434343', '2434343', 'siswa'),
(66, '544456', '544456', 'siswa'),
(67, '677889', '677889', 'siswa'),
(68, '4565786', '4565786', 'siswa'),
(69, '2343435', '2343435', 'siswa'),
(70, '243', '243', 'siswa'),
(71, '57556756', '57556756', 'siswa'),
(72, '545657', '545657', 'siswa'),
(73, '32434', '32434', 'siswa'),
(74, '354554', '354554', 'siswa'),
(75, '67546767', '67546767', 'siswa'),
(76, '324334435', '324334435', 'siswa'),
(77, '3432432', '3432432', 'siswa'),
(78, '35345464', '35345464', 'siswa'),
(79, '34354334', '34354334', 'siswa'),
(80, '5435343', '5435343', 'siswa'),
(81, '46547', '46547', 'siswa'),
(82, '21312323423', '21312323423', 'siswa'),
(86, '21466812', '21466812', 'siswa'),
(87, '983810987', '983810987', 'siswa'),
(88, '261092648', '261092648', 'siswa'),
(89, '999124091', '999124091', 'siswa'),
(90, '9793736211', '9793736211', 'siswa'),
(91, '001181629', '001181629', 'siswa'),
(92, '0101000316', '0101000316', 'siswa'),
(93, '95546455', '95546455', 'siswa'),
(94, '6656606', '6656606', 'siswa'),
(95, '911996751', '911996751', 'siswa'),
(96, '77346346436', '77346346436', 'siswa'),
(97, '45436786734', '45436786734', 'siswa'),
(98, '97633441', '97633441', 'siswa'),
(99, '6555540614', '6555540614', 'siswa'),
(100, '245464346', '245464346', 'siswa'),
(101, '7686867', '7686867', 'siswa'),
(102, '767777', '767777', 'siswa'),
(103, '67676767', '67676767', 'siswa'),
(104, '4454597', '4454597', 'siswa'),
(105, '766875875', '766875875', 'siswa'),
(106, '8587976985', '8587976985', 'siswa'),
(107, '24347407986', '24347407986', 'siswa'),
(108, '96756567', '96756567', 'siswa'),
(109, '9878685647', '9878685647', 'siswa'),
(110, '564684668', '564684668', 'siswa'),
(111, '1109278', '1109278', 'siswa'),
(112, '2001341', '2001341', 'siswa'),
(113, '2001342', '2001342', 'siswa'),
(114, '2001343', '2001343', 'siswa'),
(115, '2001344', '2001344', 'siswa'),
(116, '2001345', '2001345', 'siswa'),
(117, '2001346', '2001346', 'siswa'),
(118, '2001347', '2001347', 'siswa'),
(119, '2001348', '2001348', 'siswa'),
(120, '2001349', '2001349', 'siswa'),
(121, '2001350', '2001350', 'siswa'),
(122, '2001351', '2001351', 'siswa'),
(123, '2001352', '2001352', 'siswa'),
(124, '2001353', '2001353', 'siswa'),
(125, '2001354', '2001354', 'siswa'),
(126, '2001355', '2001355', 'siswa'),
(127, '2001356', '2001356', 'siswa'),
(128, '2001357', '2001357', 'siswa'),
(130, '2001358', '2001358', 'siswa'),
(131, '2001359', '2001359', 'siswa'),
(132, '2001360', '2001360', 'siswa'),
(133, '2001361', '2001361', 'siswa'),
(134, '2001362', '2001362', 'siswa'),
(135, '2001363', '2001363', 'siswa'),
(136, '727272', '727272', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nilai_ijazah`
--
ALTER TABLE `nilai_ijazah`
  ADD PRIMARY KEY (`id_ijazah`),
  ADD UNIQUE KEY `nisn_2` (`nisn`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `nisn_3` (`nisn`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_peserta`
--
ALTER TABLE `pesan_peserta`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `peserta_pendaftar`
--
ALTER TABLE `peserta_pendaftar`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`adm_id`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD KEY `username` (`username`),
  ADD KEY `username_3` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai_ijazah`
--
ALTER TABLE `nilai_ijazah`
  MODIFY `id_ijazah` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pesan_peserta`
--
ALTER TABLE `pesan_peserta`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `adm_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
