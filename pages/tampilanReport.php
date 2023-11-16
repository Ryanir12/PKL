<?php
include "../components/kepala_menu.php";
include("../config/connection.php");
include("../helper/validasi.php");

$nip = isset($_GET['nip']) ? mysqli_real_escape_string($db, $_GET['nip']) : '';
checked($nip, "pages/report.php");

// Cek apakah form telah disubmit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $selectedMonth = $_POST['selected_month'];
    $selectedYear = $_POST['selected_year'];
} else {
    $selectedMonth = date('m');
    $selectedYear = date('Y');
}

$queryPegawai = "SELECT * FROM tb_pegawai WHERE nip = '$nip'";
$resultPegawai = mysqli_query($db, $queryPegawai);

if ($resultPegawai) {
    if (mysqli_num_rows($resultPegawai) > 0) {
        $pegawai = mysqli_fetch_assoc($resultPegawai);
        mysqli_free_result($resultPegawai);
    } else {
        echo "Data pegawai tidak ditemukan.";
    }
} else {
    die("Kesalahan dalam menjalankan kueri pegawai: " . mysqli_error($db));
}

// Inisialisasi variabel untuk menampilkan data absensi
$dataAbsensi = array();

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['tampilkan'])) {
    $selectedMonth = $_POST['selected_month'];
    $selectedYear = $_POST['selected_year'];

    $queryAbsensi = "SELECT * FROM absen_pegawai WHERE nip = '$nip' AND MONTH(tanggal) = '$selectedMonth' AND YEAR(tanggal) = '$selectedYear'";
    $resultAbsensi = mysqli_query($db, $queryAbsensi);

    if ($resultAbsensi) {
        while ($row = mysqli_fetch_assoc($resultAbsensi)) {
            $dataAbsensi[] = $row;
        }
    } else {
        echo "Kesalahan dalam menjalankan kueri Absensi: " . mysqli_error($db);
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Laporan Absensi Pegawai</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
            padding-top: 1px;
        }

        h2 {
            color: black;
            margin-bottom: 10px;
            margin-top: 20px;
        }

        label {
            flex: 1;
            margin-right: 8px;
            font-size: 16px;
            /* Menambah ukuran font label */
            text-align: right;
        }

        input,
        select {
            font-size: 14px;
            /* Mengurangi ukuran font select */
            padding: 6px;
            /* Mengurangi padding pada select */
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
            color: #333;
            transition: border-color 0.3s;
        }

        /* Menambahkan jarak antara select tahun dan tombol */
        select#selected_year {
            margin-right: 10px;
        }

        select:hover,
        select:focus {
            border-color: #3498db;
            /* Warna border saat hover atau focus */
            outline: none;
        }

        /* Menyesuaikan warna latar belakang saat select dipilih */
        select option:checked {
            background-color: #3498db;
            color: #fff;
        }

        .header {
            background-color: #fff;
            padding: 20px;
            text-align: center;
        }

        .header-content {
            display: flex;
            justify-content: flex-start;
            /* Memindahkan elemen ke sebelah kiri */
            align-items: center;
        }

        .logo {
            margin-right: 20px;
            /* Menambahkan margin kanan agar ada ruang antara logo dan teks */
        }

        .header-info {
            flex-grow: 1;
            /* Mengisi ruang kosong agar tetap berada di tengah secara horizontal */
            text-align: center;
            /* Menengahkan teks di dalam .header-info */
        }

        .header-title {
            font-size: 36px;
            font-weight: bold;
            margin: 0;
            color: black;
        }

        .header-address {
            font-size: 18px;
            margin: 0;
            color: black;
        }

        .container {
            width: 70%;
            margin: 50px 10% 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .tanggal-column {
            vertical-align: top;
            text-align: center;
            width: 5%;
        }

        .separator {
            border: 1px solid #000;
            margin: 20px 0;
        }

        thead {
            background-color: #3498db;
            color: white;
        }

        tbody {
            background-color: #ecf0f5;
            color: #333;
        }

        .tbl-row {
            color: #333;
        }

        .btn-group {
            margin-top: 10px;
        }
    </style>

</head>

<body>
    <div class="container">
        <div class="header-content">
            <img src="../assets/Logo_Padang_thumb.png" alt="Kantor Lurah Parak Karakah" width="100" height="100">
            <div class="header-info">
                <h2 class="header-title">Laporan Absensi Pegawai</h2>
                <h2 class="header-address">Kantor Lurah Parak Karakah</h2>
                <h2 class="header-address">No.Telp : 0895360766941</h2>
                <h2 class="header-address">Kubu Marapalam, Kec. Padang Tim., Kota Padang, Sumatera Barat 25143</h2>
                <h2 class="header-address">Email : capil.kelurahan.parakkarakah@gmail.com</h2>
            </div>
        </div>
        <div class="separator"></div>
        <h2>Informasi Pegawai</h2>
        <table>
            <tr>
                <th>Nama Pegawai</th>
                <th>NIP</th>
                <th>Jabatan</th>
                <th>Golongan</th>
            </tr>
            <tr>
                <td><?php echo isset($pegawai['nama_pegawai']) ? $pegawai['nama_pegawai'] : ''; ?> </td>
                <td><?php echo isset($pegawai['nip']) ? $pegawai['nip'] : ''; ?> </td>
                <td><?php echo isset($pegawai['jabatan']) ? $pegawai['jabatan'] : ''; ?> </td>
                <td><?php echo isset($pegawai['golongan']) ? $pegawai['golongan'] : ''; ?> </td>
            </tr>
        </table>
        <br><br>
        <h2>Data Absensi</h2>
        <form method="POST" action="">
            <label for="selected_month">Pilih Bulan: </label>
            <select name="selected_month" id="selected_month" onchange="this.form.submit()">
                <?php
                for ($monthNumber = 1; $monthNumber <= 12; $monthNumber++) {
                    $monthName = date('F', mktime(0, 0, 0, $monthNumber, 1));
                    $selected = ($selectedMonth == $monthNumber) ? 'selected' : '';
                    echo "<option value='$monthNumber' $selected>$monthName</option>";
                }
                ?>
            </select>

            <label for "selected_year">Pilih Tahun: </label>
            <select name="selected_year" id="selected_year" onchange="this.form.submit()">
                <?php
                $currentYear = date('Y');
                $startYear = 2020; // Ganti dengan tahun awal yang Anda inginkan
                $endYear = $currentYear; // Tahun saat ini

                for ($year = $startYear; $year <= $endYear; $year++) {
                    $selected = ($selectedYear == $year) ? 'selected' : '';
                    echo "<option value='$year' $selected>$year</option>";
                }
                ?>
            </select>

            <input type="submit" name="tampilkan" value="Tampilkan" class="btn btn-danger btn-sm">
        </form>

        <table border="1" width="100%" cellspacing="0" cellpadding="3">
            <thead bgcolor="orange" align="center">
                <tr>
                    <td>No</td>
                    <td>Tanggal</td>
                    <td>Hari</td>
                    <td>Jam Masuk</td>
                    <td>Jam Pulang</td>
                    <td>Ket</td>
                </tr>
            </thead>
            <tbody bgcolor="#FFF">
                <?php
                foreach ($dataAbsensi as $i => $row) {
                    echo "<tr>";
                    echo "<td class='td'>" . ($i + 1) . "</td>";
                    echo "<td class='td'>" . htmlspecialchars($row['tanggal']) . "</td>";
                    echo "<td class='td'>" . htmlspecialchars($row['hari']) . "</td>";
                    echo "<td class='td'>" . htmlspecialchars($row['jam_masuk']) . "</td>";
                    echo "<td class='td'>" . htmlspecialchars($row['jam_pulang']) . "</td>";
                    echo "<td class='td'>" . htmlspecialchars($row['keterangan']) . "</td>";
                    echo "</td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>
    </div>
    <?php
    include "../components/bawah.php";
    ?>
</body>

</html>