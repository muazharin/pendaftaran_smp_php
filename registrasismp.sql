-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2018 at 12:02 AM
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
  `nisn` bigint(11) NOT NULL,
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
(1, 123, 10, 45, 123, 19, 27, 45, 'Tidak Lulus'),
(2, 123456789, 87, 84, 90, 80, 95, 87, 'Lulus'),
(3, 234, 0, 0, 0, 0, 0, 0, ''),
(4, 2147483647, 0, 0, 0, 0, 0, 0, ''),
(5, 87654145878, 88, 78, 85, 82, 79, 82, 'Lulus');

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
  `nisn` bigint(11) NOT NULL,
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
(123, 'Mamta Culkari P', 'qwe', '1997-11-07', 'Perempuan', 'Islam', 1, 1, 1234567890, 'Puwatu', 54, 166, 'O', 'qwe', '                                        wwwww                                    ', 'qddjj', 'qwe', '                                        aaaaa                                    ', 1234567890, 'qwe', 'qwe', 123123, 2, '2017'),
(234, 'Wafiqoh Muslimin Sabbi', 'Kendari', '2004-01-01', 'Perempuan', 'Islam', 1, 1, 2147483647, 'Kendari', 52, 157, 'O', 'SD Bunga Seroja Pagi', 'Kendari', 'Rahmat', 'Siti', 'Kendari', 2147483647, 'Guru', 'Ibu Rumah Tangga', 1000000, 2, '2017'),
(123456789, 'Muazharin', 'Raha', '1997-11-07', 'Laki-Laki', 'Islam', 3, 3, 2147483647, 'Jl. H.E. A. Mokodompit', 54, 166, 'O', 'SD Negeri 15 Katobu', '                                                                                                                                                                Raha                                                                                                                                                ', 'La', 'Fania', '                                                                                                                                                                Raha                                                                                                                                                ', 2147483647, 'PNS', 'Ibu', 4000000, 2, '2017'),
(2147483647, 'Muh.Budi', 'RAHA', '1997-02-04', 'Laki-Laki', 'Islam', 4, 4, 2147483647, 'JLN.SARANANI', 78, 167, 'A', 'SDN 1 BARUGA', 'JLN. BUNGA SEROJA', 'JARDIN', 'RAHMINI', 'JLN.SARANANI', 2147483647, 'GURU', 'WIRAUSAHA', 123990, 2, '2017'),
(87654145878, 'DERIL', 'TAMPO', '2018-01-02', 'Laki-Laki', 'Islam', 1, 1, 22222, 'ccccccccccccc', 1, 1, 'AB', 'w', 'w', 'w', 'wa lanti', 'w', 2147483647, 'WIRAUSAHA', 'Ibu Rumah Tangga', 1, 1, '2017');

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
(29, '87654145878', '87654145878', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nilai_ijazah`
--
ALTER TABLE `nilai_ijazah`
  ADD PRIMARY KEY (`id_ijazah`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`adm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai_ijazah`
--
ALTER TABLE `nilai_ijazah`
  MODIFY `id_ijazah` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `adm_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
