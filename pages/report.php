<?php
include "../components/kepala_menu.php";
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

    .btn {
      margin: 0.2rem;
    }

    .table-responsive {
      margin-top: 20px;
    }

    .table {
      background-color: #fff;
    }

    .table thead {
      background-color: #3498db;
      color: #fff;
    }

    .table tbody tr {
      background-color: #ecf0f5;
    }

    .tbl-row {
      color: #333;
    }

    /* Tambahkan gaya lain sesuai kebutuhan Anda */
  </style>
</head>

<body>
  <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <h2>Data Absensi Pegawai</h2>
    <div class="card">
      <div class="card-body">
        <a class="btn btn-primary pt-1 pt-1 pb-1 pl-4 pr-4" href="./addReport.php?nip=<?php echo $result['nip'] ?>" target="_blank">Tambah Data</a>

        <?php
        // Set variabel editEnabled sesuai kebutuhan, misalnya berdasarkan hak akses pengguna
        $editEnabled = true;
        ?>

        <?php if ($editEnabled) : ?>
          <a class="btn btn-success pt-1 pt-1 pb-1 pl-4 pr-4" href="./editReport.php?nip=<?php echo $result['nip'] ?>" target="_blank">Edit Data</a>
        <?php endif; ?>

        <div class="table-responsive">
          <table class="table table-striped table-sm">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Nip</th>
                <th scope="col">Nama Pegawai</th>
                <th scope="col">Actions</th>
              </tr>
            </thead>
            <tbody>
              <?php $i = 1 ?>
              <?php
              $datas = mysqli_query($db, "select t1.*, t2.nama_pegawai from tb_pegawai t1 join tb_pegawai t2 on t1.nip=t2.nip group by t1.nip, t2.nama_pegawai ");
              $data = mysqli_fetch_all($datas, MYSQLI_ASSOC);
              ?>
              <?php foreach ($data as $result) : ?>
                <tr class="tbl-row">
                  <td><?php echo $i ?></td>
                  <td><?php echo $result['nip'] ?> </td>
                  <td><?php echo $result['nama_pegawai'] ?> </td>
                  <td>
                    <a class="btn btn-warning pt-1 pt-1 pb-1 pl-4 pr-4" href="./tampilanReport.php?nip=<?php echo $result['nip'] ?>" target="_blank">Laporan</a>
                  </td>
                </tr>
                <?php $i++ ?>
              <?php endforeach ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </main>
  <?php include "../components/bawah.php"; ?>
</body>


</html>