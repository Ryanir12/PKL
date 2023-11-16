<?php
ob_start();
session_start();
include "../config/connection.php";

if (empty($_SESSION['username'])) {
  header("location: ../index.php");
}

$id = $_GET['id'];

if (!is_numeric($id)) {
  header("location: ../pages/pegawai.php?message=Data tidak ditemukan!&code=404");
  exit(); // Tambahkan exit untuk menghentikan eksekusi skrip
}

// Gunakan prepared statement untuk mencegah SQL injection
$query = "DELETE FROM tb_pegawai WHERE nip=?";
$stmt = mysqli_prepare($db, $query);

if ($stmt) {
  mysqli_stmt_bind_param($stmt, "s", $id);
  mysqli_stmt_execute($stmt);

  $affected_rows = mysqli_stmt_affected_rows($stmt);

  if ($affected_rows > 0) {
    header('Location: ../pages/pegawai.php?message=Data berhasil dihapus!&code=200');
  } else {
    $error_message = mysqli_stmt_error($stmt);
    header('Location: ../pages/pegawai.php?message=Hapus data gagal!&code=500&error=' . $error_message);
  }

  mysqli_stmt_close($stmt);
} else {
  // Handle error saat membuat prepared statement
  $error_message = mysqli_error($db);
  header('Location: ../pages/pegawai.php?message=Hapus data gagal!&code=500&error=' . $error_message);
}
