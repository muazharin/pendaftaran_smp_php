<?php ob_start(); ?>
<html>
<head>
  <title>Cetak PDF</title>
    
  <style>
    table {border-collapse:collapse; table-layout:fixed;width: 630px;}
    table td {word-wrap:break-word;width: 20%;}
  </style>
</head>
<body>
  
  <h1 style="text-align: center;">Data Siswa</h1>
  <table border="1" width="100%">
    <tr>
      <th>No</th>
      <th>NIS</th>
      <th>Nama</th>
      <th>Nilai Total</th>
      <th>Keterangan</th>
    </tr>
  <?php
  // Load file koneksi.php
  include "../config.php";
   
  $query = "SELECT ni.nisn, ppn.nama, ni.nilai_hasil_akhir, ni.Keterangan FROM nilai_ijazah ni, peserta_pendaftar ppn WHERE ni.nisn=ppn.nisn AND ppn.tahun='2017' GROUP BY ppn.nama"; // Tampilkan semua data gambar
  $sql = mysql_query($query); // Eksekusi/Jalankan query dari variabel $query
  $row = mysql_num_rows($sql); // Ambil jumlah data dari hasil eksekusi $sql
  $i=1;
  if($row > 0){ // Jika jumlah data lebih dari 0 (Berarti jika data ada)
      while($data = mysql_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
          echo "<tr>";
          echo "<td>".$i."</td>";
          echo "<td>".$data[0]."</td>";
          echo "<td>".$data[1]."</td>";
          echo "<td>".$data[2]."</td>";
          echo "<td>".$data[3]."</td>";
          echo "</tr>";
          $i++;
      }
  }else{ // Jika data tidak ada
      echo "<tr><td colspan='4'>Data tidak ada</td></tr>";
  }
?>
</table>
<div style="float: left;">
  <p>Mengetahui,<br>Kepala Sekolah SMP Negeri 2 Raha</p><br><br><br>
  <p>Muh. Darul Dzulkifli Riton, ST.</p>
</div>
</body>
</html>
<?php
$html = ob_get_contents();
ob_end_clean();
        
require_once('html2pdf/html2pdf.class.php');
$pdf = new HTML2PDF('P','A4','en');
$pdf->WriteHTML($html);
$pdf->Output('Data Siswa.pdf', 'D');
?>
