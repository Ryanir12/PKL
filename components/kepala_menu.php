<?php
session_start();
include "../config/connection.php";
if (empty($_SESSION['username'])) {
  header("location: ../index.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>Absensi Pegawai</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/">
  <link rel="stylesheet" href="../assets/dropdowns.css">

  <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    .b-example-divider {
      height: 3rem;
      background-color: rgba(0, 0, 0, .1);
      border: solid rgba(0, 0, 0, .15);
      border-width: 1px 0;
      box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
      flex-shrink: 0;
      width: 1.5rem;
      height: 100vh;
    }

    .bi {
      vertical-align: -.125em;
      fill: currentColor;
    }

    .nav-scroller {
      position: relative;
      z-index: 2;
      height: 2.75rem;
      overflow-y: hidden;
    }

    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }

    /* Gaya untuk kepala menu */
    header.sticky-top {
      position: fixed;
      top: 0;
      width: 100%;
      background-color: #3498db;
      padding: 10px;
      text-align: center;
    }

    header.sticky-top h1 {
      color: white;
    }

    /* Gaya tambahan untuk sidebar menu */
    .sidebar {
      position: fixed;
      top: 0;
      left: 0;
      height: 100%;
      width: 220px;
      /* Sesuaikan lebar sidebar sesuai kebutuhan */
      background-color: #fff;
      /* Warna latar belakang sidebar (putih) */
      padding-top: 56px;
      /* Sesuaikan dengan tinggi kepala menu */
      overflow-y: auto;
    }

    .sidebar a {
      padding: 15px;
      text-decoration: none;
      color: #3498db;
      /* Warna teks sidebar (biru) */
      display: block;
      transition: color 0.3s;
      /* Efek transisi warna */
    }

    .sidebar a:hover {
      background-color: #ecf0f1;
      /* Warna latar belakang saat di-hover (biru muda) */
      color: #000;
      /* Warna teks saat di-hover (hitam) */
    }

    .content {
      margin-left: 220px;
      /* Sesuaikan dengan lebar sidebar */
      padding: 16px;
    }
  </style>

  <!-- Gaya khusus untuk template ini -->
  <link href="../dashboard/dashboard.css" rel="stylesheet">
</head>

<body>

  <header class="navbar navbar-dark sticky-top">
    <a href="#" style="color: white; text-decoration: none; text-align: center; letter-spacing: 1px">Selamat Datang, <?php echo $_SESSION['username'] ?></a>
    <h1 class="h5 m-0">Sistem Absensi Pegawai - Kantor Lurah Parak Karakah</h1>
    <div class="navbar-nav">
    </div>
  </header>

  <!-- Sidebar menu -->
  <nav class="sidebar">
    <ul class="nav flex-column">
      <li class="nav-item">
        <a class="nav-link" aria-current="page" href="../pages/menu_utama.php">
          <span data-feather="home" class="align-text-bottom"></span>
          Dashboard
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" aria-current="page" href="../pages/pegawai.php">
          <span data-feather="home" class="align-text-bottom"></span>
          Daftar Pegawai
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" aria-current="page" href="../pages/report.php">
          <span data-feather="home" class="align-text-bottom"></span>
          Laporan Absen
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" aria-current="page" href="../actions/logout.php">
          <span data-feather="lock" class="align-text-bottom"></span>
          Log Out
        </a>
      </li>
    </ul>
  </nav>

  <!-- Content area -->
  <div class="content">
    <!-- Isi konten Anda di sini -->
  </div>

  <!-- Gaya khusus untuk template ini -->
  <script src="../dashboard/dashboard.js"></script>
</body>

</html>