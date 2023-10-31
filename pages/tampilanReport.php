<?php
include("../config/connection.php");
include("../helper/validasi.php");

$nip = $_GET['nip'];

// Cek apakah form telah disubmit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $selectedMonth = $_POST['selected_month'];
    $selectedYear = $_POST['selected_year']; // Inisialisasi variabel $selectedYear
} else {
    $selectedMonth = date('m');
    $selectedYear = date('Y'); // Inisialisasi variabel $selectedYear
}

checked($nip, "pages/report.php");

// Menghubungkan ke database
if (!$db) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}

// Mengambil data pegawai dari database
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

// Tambahkan logika untuk memasukkan data absensi
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $selectedMonth = $_POST['selected_month'];
    $selectedYear = $_POST['selected_year'];

    if (isset($_POST['tanggal_absensi'], $_POST['jam_masuk'], $_POST['jam_keluar'], $_POST['keterangan'])) {
        $tanggalAbsensi = $_POST['tanggal_absensi'];
        $jamMasuk = $_POST['jam_masuk'];
        $jamKeluar = $_POST['jam_keluar'];
        $keterangan = $_POST['keterangan'];

        // Lakukan validasi atau pemeriksaan lain yang diperlukan di sini

        // Selanjutnya, Anda dapat menambahkan logika untuk memasukkan data absensi ke dalam tabel
        $insertQuery = "INSERT INTO tb_absensi (id_jadwal, nip, tanggal, jam_masuk, jam_keluar, keterangan) VALUES ('1', '$nip', '$tanggalAbsensi', '$jamMasuk', '$jamKeluar', '$keterangan')";

        if (mysqli_query($db, $insertQuery)) {
            // Data absensi berhasil dimasukkan, Anda bisa menampilkan pesan sukses atau melakukan tindakan lain
            echo "Data absensi berhasil dimasukkan.";
        } else {
            // Jika terjadi kesalahan, Anda bisa menampilkan pesan kesalahan
            echo "Kesalahan dalam memasukkan data absensi: " . mysqli_error($db);
        }
    }
}

mysqli_close($db);
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
        }

        .header {
            background-color: #fff;
            padding: 20px;
            text-align: center;
        }

        .header-content {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .logo {
            margin: 10px 20%;
            /* Menambahkan margin agar ada jarak antara logo dan teks */
        }

        .header-info {
            text-align: center;
        }

        .header-title {
            font-size: 36px;
            font-weight: bold;
            margin: 0;
        }

        .header-address {
            font-size: 18px;
            margin: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table,
        th,
        td {
            border: 1px solid #000;
        }

        th,
        td {
            padding: 12px;
            /* Memperbesar padding untuk memperbesar kolom */
            text-align: left;
        }

        th {
            background-color: #000;
            color: #fff;
        }

        .tanggal-column {
            vertical-align: top;
            text-align: center;
            width: 5%;
        }

        .separator {
            border: 1px solid #000;
            margin: 10px 0;
        }

        /* Menambahkan style untuk mengubah warna font menjadi putih pada elemen thead */
        thead {
            background-color: black;
            color: white;
        }
    </style>
</head>

<body>
    <div class="header">
        <div class="header-content">
            <img src="../assets/Logo_Padang_thumb.png" alt="Kantor Lurah Parak Karakah" width="100" height="110">
            <div class="header-info">
                <h2 class="header-title">Laporan Absensi Pegawai</h2>
                <h2 class="header-address">Kantor Lurah Parak Karakah</h2>
                <h2 class="header-address">No. Telp: (nomor telepon kantor)</h2>
                <h2 class="header-address">Alamat: (alamat kantor)</h2>
                <h2 class="header-address">Email: (alamat email)</h2>
            </div>
        </div>
        <div class="separator"></div> <!-- Garis pembatas di bawah logo dan alamat -->
    </div>
    <div class="container">
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

        <h2>Data Absensi</h2>
        <form method="post">
            <label for="selected_month">Pilih Bulan: </label>
            <select name="selected_month" id="selected_month">
                <option value="01" <?php echo ($selectedMonth == '01') ? 'selected' : ''; ?>>Januari</option>
                <!-- ... Sisipkan bulan-bulan lainnya ... -->
            </select>
            <label for="selected_year">Pilih Tahun: </label>
            <select name="selected_year" id="selected_year">
                <option value="2023" <?php echo ($selectedYear == '2023') ? 'selected' : ''; ?>>2023</option>
                <!-- ... Sisipkan tahun-tahun lainnya ... -->
            </select>
            <input type="submit" value="Tampilkan">
        </form>
        <table>
            <tr>
                <td>No</td>
                <td>NIP</td>
                <td>Tanggal</td>
                <td>Hari</td>
                <td>Jam Masuk</td>
                <td>Jam Pulang</td>
                <td>Ket</td>
                <td>Aksi</td>
            </tr>
            <tr>
                <td><?php echo isset($pegawai['id']) ? $pegawai['id'] : ''; ?> </td>
                <td><?php echo isset($pegawai['nip']) ? $pegawai['nip'] : ''; ?> </td>
                <td><?php echo isset($jadwal['tanggal']) ? $jadwal['tanggal'] : ''; ?> </td>
                <td><?php echo isset($jadwal['hari']) ? $jadwal['hari'] : ''; ?> </td>
                <td><?php echo isset($pegawai['jam_masuk']) ? $pegawai['nip'] : ''; ?> </td>
                <td><?php echo isset($pegawai['jam_pulang']) ? $pegawai['nip'] : ''; ?> </td>
                <td><?php echo isset($pegawai['ket']) ? $pegawai['ket'] : ''; ?> </td>
                <td><?php echo isset($pegawai['aksi']) ? $pegawai['aksi'] : ''; ?> </td>
            </tr>
        </table>
    </div>
</body>

</html>