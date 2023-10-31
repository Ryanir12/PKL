<?php
ob_start();
session_start();
include "../config/connection.php";
include "../helper/validasi.php";
if (empty($_SESSION['username'])) {
  header("location: ../index.php");
}

$nip =  $_POST['nip'];
$nama_pegawai =  $_POST['nama_pegawai'];
$jabatan =  $_POST['jabatan'];
$golongan =  $_POST['golongan'];

checked($nama_pegawai, "pages/pegawai.php");
checked($nip, "pages/pegawai.php");
checked($jabatan, "pages/pegawai.php");
checked($golongan, "pages/pegawai.php");

$query = "UPDATE tb_pegawai SET nama_pegawai='$nama_pegawai', jabatan='$jabatan', golongan='$golongan' WHERE nip='$nip'";
$result = mysqli_query($db, $query);

if ($result) {
  header('Location: ../pages/pegawai.php?message=data berhasil di Edit!&code=200');
} else {
  header('location : ../pages/pegawai.php?message=Edit data gagal!&code=400');
}
