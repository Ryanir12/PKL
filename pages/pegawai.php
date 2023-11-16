<?php
include "../components/kepala_menu.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <!-- Gaya CSS langsung -->
    <style>
        body {
            background-color: #f5f5f5;
            color: #333;
            padding-top: 1px;
        }

        h2 {
            color: #3498db;
            margin-bottom: 10px;
            margin-top: 20px;
            /* Penambahan margin-top di sini */
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

        .btn-group {
            margin-top: 10px;
        }

        /* Tambahkan gaya lain sesuai kebutuhan Anda */
    </style>
</head>

<body>

    <main class="col-md-1 ms-sm-auto col-lg-10 px-md-4">
        <h2>Pegawai</h2>
        <div class="card table-responsive">
            <div class="card-body">
                <a class="btn btn-primary pt-1 pb-1 pl-2 pr-2 mb-3" href="../pages/addPegawai.php">Tambah data</a>
                <?php
                if (isset($_GET['message']) && isset($_GET['code'])) {
                    $messageClass = ($_GET['code'] == '200' || $_GET['code'] == '201') ? 'bg-success' : 'bg-danger';
                    echo "<p class='p-2 w-25 text-center text-capitalize fs-3 text-white $messageClass'>" . $_GET['message'] . "</p>";
                }
                ?>
                <table class="table table-striped table-sm">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">NIP</th>
                            <th scope="col">Nama</th>
                            <th scope="col">Jabatan</th>
                            <th scope="col">Golongan</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1 ?>
                        <?php
                        $datas = mysqli_query($db, "select * from tb_pegawai");
                        $data = mysqli_fetch_all($datas, MYSQLI_ASSOC);
                        ?>
                        <?php foreach ($data as $result) : ?>
                            <tr class="tbl-row">
                                <td><?php echo $i ?></td>
                                <td><?php echo $result['nip'] ?> </td>
                                <td><?php echo $result['nama_pegawai'] ?> </td>
                                <td><?php echo $result['jabatan'] ?> </td>
                                <td><?php echo $result['golongan'] ?> </td>
                                <td>
                                    <div class="btn-group">
                                        <a class="btn btn-danger" href="../actions/deletePegawai.php?id=<?php echo $result['nip'] ?>">Delete</a>
                                        <a class="btn btn-success" href="../pages/editPegawai.php?id=<?php echo $result['nip'] ?>">Edit</a>
                                    </div>
                                </td>
                            </tr>
                            <?php $i++ ?>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </main>

    <?php
    include "../components/bawah.php";
    ?>

</body>

</html>