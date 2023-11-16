<?php
ob_start();
include "../components/kepala_menu.php";
include "../helper/validasi.php";

$id = $_GET['id'];
checked($id, "pages/pegawai.php");

$query = "SELECT * FROM tb_pegawai WHERE nip='$id'";
$result = mysqli_query($db, $query);
$data = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Gaya CSS langsung -->
  <style>
    body {
      background-color: #f5f5f5;
      color: #333;
      padding-top: 20px;
    }

    h2 {
      color: #3498db;
    }

    .form-floating {
      margin-bottom: 2rem;
    }

    /* Tambahkan gaya lain sesuai kebutuhan Anda */
  </style>
</head>

<body>
  <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

    <h2>Edit Data Pegawai</h2>
    <form class="p-5" action="../actions/editPegawai.php" method="POST">
      <?php foreach ($data as $result) : ?>
        <div class="form-floating mb-2">
          <input name="nip" type="text" class="form-control" id="floatingInput" placeholder="NIP" value="<?php echo $result['nip'] ?>" readonly>
          <label for="floatingInput">NIP</label>
        </div>
        <div class="form-floating mb-2">
          <input name="nama_pegawai" type="text" class="form-control" id="floatingInput" placeholder="Nama Pegawai" value="<?php echo $result['nama_pegawai'] ?>" required>
          <label for="floatingInput">Nama Pegawai</label>
        </div>
        <div class="form-floating mb-2">
          <input name="jabatan" type="text" class="form-control" id="floatingInput" placeholder="Jabatan" value="<?php echo $result['jabatan'] ?>" required>
          <label for="floatingInput">Jabatan</label>
        </div>
        <div class="form-floating mb-2">
          <input name="golongan" type="text" class="form-control" id="floatingInput" placeholder="Golongan" value="<?php echo $result['golongan'] ?>" required>
          <label for="floatingInput">Golongan</label>
        </div>
      <?php endforeach ?>
      <input type="submit" value="Submit" class="w-100 btn btn-lg btn-primary">
    </form>

  </main>
  <?php include "../components/bawah.php"; ?>
</body>

</html>