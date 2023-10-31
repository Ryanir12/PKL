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
            width: 100px;
            height: 100px;
        }

        .header-info {
            margin-left: 20px;
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
    </style>
</head>

<body>
    <div class="header">
        <div class="header-content">
            <img class="logo" src="assets/Logo_Padang_thumb.png" alt="Kantor Lurah Parak Karakah" width="100" height="100">
            <div class="header-info">
                <h2 class "header-title">Laporan Absensi Pegawai</h2>
                <p class="header-address">
                    Kantor Lurah Parak Karakah<br>
                    No. Telp: (nomor telepon kantor)<br>
                    Alamat: (alamat kantor)<br>
                    Email: (alamat email)
                </p>
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
                <td><?php echo isset($nama_pegawai['nama_pegawai']) ? $nama_pegawai['nama_pegawai'] : ''; ?> </td>
                <td><?php echo isset($nip['nip']) ? $nip['nip'] : ''; ?> </td>
                <td><?php echo isset($pegawai['jabatan']) ? $pegawai['jabatan'] : ''; ?> </td>
                <td><?php echo isset($pegawai['golongan']) ? $pegawai['golongan'] : ''; ?> </td>
            </tr>
        </table>

        <h2>Data Absensi</h2>
        <?php
        // Memastikan variabel $absensiData dan $selectedMonth telah didefinisikan
        $absensiData = []; // Isi dengan data absensi yang sesuai
        $selectedMonth = '01'; // Isi dengan bulan yang sesuai
        ?>
        <form method="post">
            <label for="selected_month">Pilih Bulan: </label>
            <select name="selected_month" id="selected_month">
                <option value="01" <?php echo ($selectedMonth == '01') ? 'selected' : ''; ?>>Januari</option>
                <option value="02" <?php echo ($selectedMonth == '02') ? 'selected' : ''; ?>>Februari</option>
                <option value="03" <?php echo ($selectedMonth == '03') ? 'selected' : ''; ?>>Maret</option>
                <option value="04" <?php echo ($selectedMonth == '04') ? 'selected' : ''; ?>>April</option>
                <option value="05" <?php echo ($selectedMonth == '05') ? 'selected' : ''; ?>>Mei</option>
                <option value="06" <?php echo ($selectedMonth == '06') ? 'selected' : ''; ?>>Juni</option>
                <option value="07" <?php echo ($selectedMonth == '07') ? 'selected' : ''; ?>>Juli</option>
                <option value="08" <?php echo ($selectedMonth == '08') ? 'selected' : ''; ?>>Agustus</option>
                <option value="09" <?php echo ($selectedMonth == '09') ? 'selected' : ''; ?>>September</option>
                <option value="10" <?php echo ($selectedMonth == '10') ? 'selected' : ''; ?>>Oktober</option>
                <option value="11" <?php echo ($selectedMonth == '11') ? 'selected' : ''; ?>>November</option>
                <option value="12" <?php echo ($selectedMonth == '12') ? 'selected' : ''; ?>>Desember</option>
            </select>
            <input type="submit" value="Tampilkan">
        </form>
        <table>
            <tr>
                <th>Tanggal</th>
                <th>Jam Masuk</th>
                <th>Jam Keluar</th>
                <th>Keterangan</th>
            </tr>
            <?php
            // Loop untuk tanggal
            for ($tanggal = 1; $tanggal <= 31; $tanggal++) {
                echo "<tr>";
                echo "<td class='tanggal-column'>$tanggal</td>";
                // Cari data absensi berdasarkan tanggal dan bulan
                $absensiDataTanggal = array_filter($absensiData, function ($absensi) use ($selectedMonth, $tanggal) {
                    return date('m', strtotime($absensi['tanggal'])) == $selectedMonth && date('d', strtotime($absensi['tanggal'])) == $tanggal;
                });

                if (!empty($absensiDataTanggal)) {
                    $jamMasuk = $absensiDataTanggal[0]['jam_masuk'];
                    $jamKeluar = $absensiDataTanggal[0]['jam_keluar'];
                    $keterangan = $absensiDataTanggal[0]['keterangan'];
                } else {
                    $jamMasuk = '-';
                    $jamKeluar = '-';
                    $keterangan = '-';
                }

                echo "<td>$jamMasuk</td>";
                echo "<td>$jamKeluar</td>";
                echo "<td>$keterangan</td>";
                echo "</tr>";
            }
            ?>
        </table>
    </div>
</body>

</html>