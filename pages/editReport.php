<?php
ob_start(); // memulai penangguhan output
include "../components/kepala_menu.php";
include "../config/connection.php";

// Fungsi untuk mendapatkan data pegawai berdasarkan NIP
function getEmployeeData($db, $nip)
{
  $query = "SELECT id, nip, tanggal, hari, jam_masuk, jam_pulang, keterangan FROM absen_pegawai WHERE nip='$nip'";
  $result = mysqli_query($db, $query);
  return mysqli_fetch_assoc($result);
}

// Fungsi untuk menyimpan perubahan data absen pegawai
function saveChanges($db)
{
  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $_POST['id'];
    $tanggal = $_POST['tanggal'];
    $hari = $_POST['hari'];
    $jam_masuk = $_POST['jam_masuk'];
    $jam_pulang = $_POST['jam_pulang'];
    $keterangan = $_POST['keterangan'];

    $query = "UPDATE absen_pegawai SET tanggal='$tanggal', hari='$hari', jam_masuk='$jam_masuk', jam_pulang='$jam_pulang', keterangan='$keterangan' WHERE id='$id'";
    mysqli_query($db, $query);

    $_SESSION['message'] = "Data absen pegawai berhasil diperbarui.";
    $_SESSION['code'] = "success";
    header("Location: " . $_SERVER['PHP_SELF']);
    exit();
  }
}

saveChanges($db);

$query_absen = "SELECT id, nip, tanggal, hari, jam_masuk, jam_pulang, keterangan FROM absen_pegawai";
$result_absen = mysqli_query($db, $query_absen);
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

    .alert {
      margin-top: 20px;
    }

    .table-bordered {
      margin-top: 20px;
    }

    .btn-sm {
      margin: 2px;
    }

    /* Tambahkan gaya lain sesuai kebutuhan Anda */
  </style>
</head>

<body>
  <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <h2 class="mt-2">Data Absen Pegawai</h2>

    <!-- Tabel untuk menampilkan data absen pegawai -->
    <table class="table table-bordered">
      <thead>
        <tr>
          <th>ID</th>
          <th>NIP</th>
          <th>Tanggal</th>
          <th>Hari</th>
          <th>Jam Masuk</th>
          <th>Jam Pulang</th>
          <th>Keterangan</th>
          <th>Aksi</th>
        </tr>
      </thead>
      <tbody>
        <?php while ($absen = mysqli_fetch_assoc($result_absen)) : ?>
          <tr>
            <td><?php echo $absen['id']; ?></td>
            <td><?php echo $absen['nip']; ?></td>
            <td><?php echo $absen['tanggal']; ?></td>
            <td><?php echo $absen['hari']; ?></td>
            <td><?php echo $absen['jam_masuk']; ?></td>
            <td><?php echo $absen['jam_pulang']; ?></td>
            <td><?php echo $absen['keterangan']; ?></td>
            <td>
              <button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#editModal<?php echo $absen['id']; ?>">Edit</button>
            </td>
          </tr>

          <!-- Modal untuk formulir pengeditan data -->
          <div class="modal fade" id="editModal<?php echo $absen['id']; ?>" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="editModalLabel">Edit Data Absen Pegawai</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
                    <input type="hidden" name="id" value="<?php echo $absen['id']; ?>">
                    <div class="mb-2">
                      <label for="nip" class="form-label">NIP</label>
                      <input type="text" class="form-control" name="nip" value="<?php echo $absen['nip']; ?>" readonly>
                    </div>
                    <div class="mb-2">
                      <label for="tanggal" class="form-label">Tanggal</label>
                      <input type="date" class="form-control" name="tanggal" value="<?php echo $absen['tanggal']; ?>" required>
                    </div>
                    <div class="mb-2">
                      <label for="hari" class="form-label">Hari</label>
                      <input type="text" class="form-control" name="hari" value="<?php echo $absen['hari']; ?>" required>
                    </div>
                    <div class="mb-2">
                      <label for="jam_masuk" class="form-label">Jam Masuk</label>
                      <input type="time" class="form-control" name="jam_masuk" value="<?php echo $absen['jam_masuk']; ?>" required>
                    </div>
                    <div class="mb-2">
                      <label for="jam_pulang" class="form-label">Jam Pulang</label>
                      <input type="time" class="form-control" name="jam_pulang" value="<?php echo $absen['jam_pulang']; ?>" required>
                    </div>
                    <div class="mb-2">
                      <label for="keterangan" class="form-label">Keterangan</label>
                      <input type="text" class="form-control" name="keterangan" value="<?php echo $absen['keterangan']; ?>" required>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>

        <?php endwhile; ?>
      </tbody>
    </table>
  </main>
  <?php
  include "../components/bawah.php";
  ob_end_flush(); // mengakhiri penangguhan output dan mengirimkannya ke browser
  ?>
</body>

</html>