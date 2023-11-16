<?php
session_start();
include "../config/connection.php";
include "../helper/validasi.php";

if (empty($_SESSION['username'])) {
  header("location: ../index.php");
}

$nip = mysqli_real_escape_string($db, $_POST['nip']);
$tanggal = mysqli_real_escape_string($db, $_POST['tanggal']);
$hari = mysqli_real_escape_string($db, $_POST['hari']);
$jam_masuk = mysqli_real_escape_string($db, $_POST['jam_masuk']);
$jam_pulang = mysqli_real_escape_string($db, $_POST['jam_pulang']);
$keterangan = mysqli_real_escape_string($db, $_POST['keterangan']);

if (empty($nip) || empty($tanggal) || empty($hari) || empty($jam_masuk) || empty($jam_pulang) || empty($keterangan)) {
  $_SESSION['message'] = "Semua input harus diisi";
  $_SESSION['code'] = "danger";
} else {
  $query = "INSERT INTO absen_pegawai (nip, tanggal, hari, jam_masuk, jam_pulang, keterangan) VALUES ('$nip', '$tanggal', '$hari', '$jam_masuk', '$jam_pulang', '$keterangan')";
  $result = mysqli_query($db, $query);
}

header("location: ../pages/editReport.php");
exit();
