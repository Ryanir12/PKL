<?php
include "../components/kepala_menu.php";
include "../config/connection.php"; // Sertakan file koneksi ke database

// Query untuk mengambil daftar pegawai
$query_pegawai = "SELECT nip, nama_pegawai FROM tb_pegawai";
$result_pegawai = mysqli_query($db, $query_pegawai);
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

        .form-floating {
            margin-bottom: 2rem;
        }

        .form-select {
            width: 100%;
        }

        /* Tambahkan gaya lain sesuai kebutuhan Anda */
    </style>
</head>

<body>
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <h2 class="mt-2">Tambah data Absensi</h2>

        <?php
        if (isset($_SESSION['message'])) {
            $message = $_SESSION['message'];
            $code = $_SESSION['code'];
            echo "<div class='alert alert-";
            echo $code === 200 ? "success" : "danger";
            echo "' role='alert'>$message</div>";
            unset($_SESSION['message']);
            unset($_SESSION['code']);
        }
        ?>

        <form class="p-3" action="../actions/addReport.php" method="POST">
            <!-- Pilihan untuk memilih pegawai -->
            <div class="form-floating mb-2">
                <select name="nip" class="form-select" required>
                    <option value="" disabled selected>Pilih Pegawai</option>
                    <?php while ($pegawai = mysqli_fetch_assoc($result_pegawai)) : ?>
                        <option value="<?php echo $pegawai['nip']; ?>"><?php echo $pegawai['nama_pegawai']; ?></option>
                    <?php endwhile; ?>
                </select>
                <label for="nip">Pegawai</label>
            </div>

            <!-- Form input untuk tanggal, bulan, tahun, hari, jam_masuk, jam_pulang, dan keterangan -->
            <div class="form-floating mb-2">
                <input name="tanggal" type="date" class="form-control" id="floatingInputTanggal" placeholder="tanggal" required>
                <label for "floatingInputTanggal">Tanggal</label>
            </div>
            <div class="form-floating mb-2">
                <input name="hari" type="text" class="form-control" id="floatingInputHari" placeholder="hari" required>
                <label for="floatingInputHari">Hari</label>
            </div>
            <div class="form-floating mb-2">
                <input name="jam_masuk" type="time" class="form-control" id="floatingInputJamMasuk" placeholder="jam_masuk" required>
                <label for="floatingInputJamMasuk">Jam Masuk</label>
            </div>
            <div class="form-floating mb-2">
                <input name="jam_pulang" type="time" class="form-control" id="floatingInputJamPulang" placeholder="jam_pulang" required>
                <label for="floatingInputJamPulang">Jam Pulang</label>
            </div>
            <div class="form-floating mb-2">
                <input name="keterangan" type="text" class="form-control" id="floatingInputKeterangan" placeholder="keterangan" required>
                <label for="floatingInputKeterangan">Keterangan</label>
            </div>
            <input type="submit" value="Submit" class="w-100 btn btn-lg btn-primary">
        </form>
    </main>
    <?php
    include "../components/bawah.php";
    ?>
</body>

</html>