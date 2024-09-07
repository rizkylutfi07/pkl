<?php
include '../koneksi.php';

// Bagian untuk mengambil data guru
$sql_guru = "SELECT id_guru, nama_guru FROM tb_guru";
$result_guru = $conn->query($sql_guru);

// Bagian untuk menampilkan data DUDI
$sql = "SELECT d.id_dudi, d.nama_dudi, d.alamat, g.nama_guru 
        FROM tb_dudi d 
        LEFT JOIN tb_guru g ON d.id_guru = g.id_guru";
$result = $conn->query($sql);

// Proses penambahan data
if (isset($_POST['submit'])) {
    function generateIdDudi($conn)
    {
        $sql = "SELECT id_dudi FROM tb_dudi ORDER BY id_dudi DESC LIMIT 1";
        $result = $conn->query($sql);
        $lastId = $result->fetch_assoc();

        if ($lastId) {
            $number = intval(substr($lastId['id_dudi'], 5)) + 1;
        } else {
            $number = 1;
        }

        return "DUDI-" . str_pad($number, 3, '0', STR_PAD_LEFT);
    }

    $id_dudi = generateIdDudi($conn);
    $nama_dudi = $_POST['nama_dudi'];
    $alamat = $_POST['alamat'];
    $id_guru = $_POST['id_guru'];

    $sql = "INSERT INTO tb_dudi (id_dudi, nama_dudi, alamat, id_guru) VALUES ('$id_dudi', '$nama_dudi', '$alamat', '$id_guru')";
    if ($conn->query($sql) === TRUE) {
        echo "<script>alert('Data berhasil ditambahkan'); window.location.href='read.php';</script>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Proses update data
if (isset($_POST['update'])) {
    $id_dudi = $_POST['id_dudi'];
    $nama_dudi = $_POST['nama_dudi'];
    $alamat = $_POST['alamat'];
    $id_guru = $_POST['id_guru'];

    $sql = "UPDATE tb_dudi SET nama_dudi = '$nama_dudi', alamat = '$alamat', id_guru = '$id_guru' WHERE id_dudi = '$id_dudi'";

    if ($conn->query($sql) === TRUE) {
        echo "<script>alert('Data berhasil diubah'); window.location.href='read.php';</script>";
    } else {
        echo "Error: " . $conn->error;
    }
}

// Proses hapus data
if (isset($_GET['delete'])) {
    $id_dudi = $_GET['delete'];

    $sql = "DELETE FROM tb_dudi WHERE id_dudi = '$id_dudi'";

    if ($conn->query($sql) === TRUE) {
        echo "<script>alert('Data berhasil dihapus'); window.location.href='read.php';</script>";
    } else {
        echo "Error: " . $conn->error;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html>

<head>
    <title>Data DUDI</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container">
        <h2>Data DUDI</h2>
        <button class="btn btn-primary" data-toggle="modal" data-target="#addModal">Tambah Data</button>

        <!-- Modal Tambah Data -->
        <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addModalLabel">Tambah Data DUDI</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="">
                            Nama DUDI: <input type="text" name="nama_dudi" class="form-control" required><br>
                            Alamat: <textarea name="alamat" class="form-control" required></textarea><br>
                            ID Guru:
                            <select name="id_guru" class="form-control" required>
                                <option value="">Pilih Guru</option>
                                <?php
                                $result_guru->data_seek(0); // Mengembalikan pointer hasil query ke awal
                                while ($row_guru = $result_guru->fetch_assoc()): ?>
                                    <option value="<?= $row_guru['id_guru']; ?>"><?= $row_guru['nama_guru']; ?></option>
                                <?php endwhile; ?>
                            </select><br>
                            <input type="submit" name="submit" class="btn btn-success" value="Tambah">
                        </form>
                    </div>
                </div>
            </div>
        </div>



        <table class="table table-bordered mt-3">
            <thead>
                <tr>
                    <th>ID DUDI</th>
                    <th>Nama DUDI</th>
                    <th>Alamat</th>
                    <th>Nama Guru</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                    <tr>
                        <td><?= $row['id_dudi']; ?></td>
                        <td><?= $row['nama_dudi']; ?></td>
                        <td><?= $row['alamat']; ?></td>
                        <td><?= $row['nama_guru']; ?></td>
                        <td>
                            <button class="btn btn-primary" data-toggle="modal" data-target="#editModal<?= $row['id_dudi'] ?>">Edit</button>
                            <a href="read.php?delete=<?= $row['id_dudi']; ?>"
                                class="btn btn-danger"
                                onclick="return confirm('Anda yakin ingin menghapus data ini?')">Hapus</a>
                        </td>
                    </tr>

                    <!-- Modal Edit Data -->
                    <div class="modal fade" id="editModal<?= $row['id_dudi'] ?>" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editModalLabel">Edit Data DUDI</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form method="post" action="">
                                        <input type="hidden" name="id_dudi" id="edit_id_dudi">
                                        Nama DUDI: <input type="text" name="nama_dudi" value="<?= $row['nama_dudi'] ?>" class="form-control" required><br>
                                        Alamat: <textarea name="alamat" class="form-control" required><?= $row['alamat'] ?></textarea><br>
                                        ID Guru:
                                        <select name="id_guru" id="edit_id_guru" class="form-control" required>
                                            <option value="">Pilih Guru</option>
                                            <?php
                                            $result_guru->data_seek(0); // Mengembalikan pointer hasil query ke awal
                                            while ($row_guru = $result_guru->fetch_assoc()): ?>
                                                <option value="<?= $row_guru['id_guru']; ?>"><?= $row_guru['nama_guru']; ?></option>
                                            <?php endwhile; ?>
                                        </select><br>
                                        <input type="submit" name="update" class="btn btn-success" value="Simpan Perubahan">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS, Popper.js, dan jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>