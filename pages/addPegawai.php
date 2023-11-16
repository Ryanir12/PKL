<!DOCTYPE html>
<html lang="en">

<?php include "../components/kepala_menu.php"; ?>

<head>
  <!-- Gaya CSS langsung -->
  <style>
    body {
      background-color: #f5f5f5;
      /* Warna latar belakang */
      color: #333;
      /* Warna teks */
      padding-top: 20px;
      /* Tinggi navbar */
    }

    h1,
    h5 {
      color: #3498db;
      /* Warna judul */
    }

    .card {
      background-color: #fff;
      /* Warna latar belakang kartu */
      border: 1px solid #ddd;
      /* Warna garis kartu */
      border-radius: 8px;
      /* Sudut lengkungan kartu */
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      /* Bayangan kartu */
    }

    .table {
      background-color: #fff;
      /* Warna latar belakang tabel */
    }

    .table thead {
      background-color: #3498db;
      /* Warna latar belakang header tabel */
      color: #fff;
      /* Warna teks header tabel */
    }

    .table tbody tr {
      background-color: #ecf0f5;
      /* Warna latar belakang baris tabel */
    }

    .tbl-row {
      color: #333;
      /* Warna teks baris tabel */
    }

    /* Tambahkan gaya lain sesuai kebutuhan Anda */
  </style>
</head>

<body>
  <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <h2 class="mt-2" style="color: #3498db;">Tambah data Pegawai</h2>
    <form class="p-3" action="../actions/addPegawai.php" method="POST">
      <div class="form-floating mb-2">
        <input name="nip" type="text" class="form-control" id="floatingInput" placeholder="nip" required>
        <label for="floatingInput">NIP</label>
      </div>
      <div class="form-floating mb-2">
        <input name="nama_pegawai" type="text" class="form-control" id="floatingInput" placeholder="nama_pegawai" required>
        <label for="floatingInput">Nama Pegawai</label>
      </div>
      <div class="form-floating mb-2">
        <input name="jabatan" type="text" class="form-control" id="floatingInput" placeholder="jabatan" required>
        <label for="floatingInput">Jabatan</label>
      </div>
      <div class="form-floating mb-2">
        <input name="golongan" type="text" class="form-control" id="floatingInput" placeholder="golongan" required>
        <label for="floatingInput">Golongan</label>
      </div>
      <input type="submit" value="Submit" class="w-100 btn btn-lg btn-primary">
    </form>
  </main>

  <?php include "../components/bawah.php"; ?>
</body>

</html>