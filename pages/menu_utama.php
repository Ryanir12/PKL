<?php
include "../components/kepala_menu.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>

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

  <!-- ... elemen-elemen lainnya ... -->
</head>

<body>

  <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
      <h1 class="h2">Dashboard</h1>
    </div>

    <!-- Dashboard Content -->
    <div class="row">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Grafik Statistik</h5>
            <canvas id="grafikStatistikBar" width="400" height="200"></canvas>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <div class="card-body" style="text-align: center;">
              <div style="display: flex; flex-direction: column; align-items: center;">
                <h5 class="card-title">Statistik Umum</h5>
                <img src="../img/Cuplikan layar 2023-11-14 001703.png" alt="Statistik Image" width="300" height="170" style="display: block; margin: 0 auto;">
                <div style="text-align: left;">
                  <p class="card-text">Jumlah total pegawai terdaftar: <?php
                                                                        $datas = mysqli_query($db, "SELECT COUNT(*) AS total_pegawai FROM tb_pegawai");
                                                                        $data = mysqli_fetch_assoc($datas);
                                                                        echo $data['total_pegawai'];
                                                                        $totalPegawai = $data['total_pegawai']; // Menyimpan total pegawai dalam variabel
                                                                        ?>
                  </p>
                  <p class="card-text">Jumlah total absensi: <?php
                                                              $datas = mysqli_query($db, "SELECT COUNT(*) AS total_absensi FROM absen_pegawai");
                                                              $data = mysqli_fetch_assoc($datas);
                                                              echo $data['total_absensi'];
                                                              $totalAbsensi = $data['total_absensi']; // Menyimpan total absensi dalam variabel
                                                              ?>
                  </p>
                </div>
              </div>
            </div>



          </div>
        </div>
      </div>

      <div class="table-responsive mt-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Pegawai</h5>

            <!-- Tabel Pegawai dengan lebar maksimum 100% -->
            <table class="table table-striped table-sm" style="width: 100%;">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nama Pegawai</th>
                  <th scope="col">NIP</th>
                  <th scope="col">Jabatan</th>
                  <th scope="col">Golongan</th>
                </tr>
              </thead>
              <tbody>
                <?php $i = 1; ?>
                <?php
                $datas = mysqli_query($db, "SELECT * FROM tb_pegawai");
                while ($result = mysqli_fetch_assoc($datas)) {
                  echo "<tr class='tbl-row'>";
                  echo "<td>$i</td>";
                  echo "<td>" . $result['nama_pegawai'] . "</td>";
                  echo "<td>" . $result['nip'] . "</td>";
                  echo "<td>" . $result['jabatan'] . "</td>";
                  echo "<td>" . $result['golongan'] . "</td>";
                  echo "</tr>";
                  $i++;
                }
                ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>



      <!-- Tambahkan informasi lain sesuai dengan kebutuhan Anda -->

  </main>

  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
    // Mengambil data statistik umum dari PHP
    var totalPegawai = <?php echo $totalPegawai; ?>;
    var totalAbsensi = <?php echo $totalAbsensi; ?>;

    var ctxBar = document.getElementById('grafikStatistikBar').getContext('2d');
    var chartBar = new Chart(ctxBar, {
      type: 'bar',
      data: {
        labels: ['Total Pegawai', 'Total Absensi'],
        datasets: [{
          label: 'Jumlah',
          data: [totalPegawai, totalAbsensi],
          backgroundColor: ['rgba(75, 192, 192, 0.2)', 'rgba(255, 99, 132, 0.2)'],
          borderColor: ['rgba(75, 192, 192, 1)', 'rgba(255, 99, 132, 1)'],
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    });
  </script>

  <?php
  include "../components/bawah.php";
  ?>

</body>

</html>