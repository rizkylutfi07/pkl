<?php
session_start();
include '../koneksi.php';

function formatTanggalIndonesia($tanggal)
{
    $bulan = array(
        1 => 'Januari',
        2 => 'Februari',
        3 => 'Maret',
        4 => 'April',
        5 => 'Mei',
        6 => 'Juni',
        7 => 'Juli',
        8 => 'Agustus',
        9 => 'September',
        10 => 'Oktober',
        11 => 'November',
        12 => 'Desember'
    );

    $splitTanggal = explode('-', $tanggal);
    $tahun = $splitTanggal[0];
    $bulan = $bulan[(int)$splitTanggal[1]];
    $hari = $splitTanggal[2];

    return $hari . ' ' . $bulan . ' ' . $tahun;
}

if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../index.php");
    exit();
}


// Bagian untuk mengambil data guru
$sql_guru = "SELECT id_guru, nama_guru FROM tb_guru";
$result_guru = $koneksi->query($sql_guru);


$result = $koneksi->query("SELECT d.id_dudi, d.nama_dudi, d.alamat, g.nama_guru 
                        FROM tb_dudi d 
                        LEFT JOIN tb_guru g ON d.id_guru = g.id_guru");


if (isset($_POST['submit'])) {
    // Fungsi untuk membuat ID DUDI otomatis
    function generateIdDudi($koneksi)
    {
        $sql = "SELECT id_dudi FROM tb_dudi ORDER BY id_dudi DESC LIMIT 1";
        $result = $koneksi->query($sql);
        $lastId = $result->fetch_assoc();

        if ($lastId) {
            // Mengambil angka dari ID terakhir
            $number = intval(substr($lastId['id_dudi'], 5)) + 1;
        } else {
            $number = 1;
        }

        // Membuat ID baru dengan format "DUDI-XXX"
        return "DUDI-" . str_pad($number, 3, '0', STR_PAD_LEFT);
    }

    $id_dudi = generateIdDudi($koneksi);
    $nama_dudi = $_POST['nama_dudi'];
    $alamat = $_POST['alamat'];
    $id_guru = $_POST['id_guru'];

    $sql = "INSERT INTO tb_dudi (id_dudi, nama_dudi, alamat, id_guru) VALUES ('$id_dudi', '$nama_dudi', '$alamat', '$id_guru')";
    if ($koneksi->query($sql) === TRUE) {
        echo "<script>alert('Data berhasil ditambahkan'); window.location.href='datadudi.php';</script>";
    } else {
        echo "Error: " . $sql . "<br>" . $koneksi->error;
    }
}

// Proses update data
if (isset($_POST['update'])) {
    $id_dudi = $_POST['id_dudi'];
    $nama_dudi = $_POST['nama_dudi'];
    $alamat = $_POST['alamat'];
    $id_guru = $_POST['id_guru'];

    $sql = "UPDATE tb_dudi SET nama_dudi = '$nama_dudi', alamat = '$alamat', id_guru = '$id_guru' WHERE id_dudi = '$id_dudi'";

    if ($koneksi->query($sql) === TRUE) {
        echo "<script>alert('Data berhasil diubah'); window.location.href='datadudi.php';</script>";
    } else {
        echo "Error: " . $koneksi->error;
    }
}

// Proses hapus data
if (isset($_GET['delete'])) {
    $id_dudi = $_GET['delete'];

    // Query untuk menghapus data berdasarkan id_dudi
    $sql = "DELETE FROM tb_dudi WHERE id_dudi = '$id_dudi'";

    if ($koneksi->query($sql) === TRUE) {
        echo "<script>alert('Data berhasil dihapus'); window.location.href='datadudi.php';</script>";
    } else {
        echo "Error: " . $koneksi->error;
    }
}


?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin - Data Dudi</title>

    <!-- Custom fonts for this template-->
    <link href="../dist/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../dist/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../dist/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard.php">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="dashboard.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Data Siswa
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="dataabsensi.php">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Data Absensi</span></a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="datajurnal.php">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Data Jurnal</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="datamonitoring.php">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Data Monitoring</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="datadudi.php">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Data Dudi</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                    src="../dist/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Data Dudi</h1>



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
                                        ID Guru: <select name="id_guru" class="form-control" required>
                                            <option value="">Pilih Guru</option>
                                            <?php while ($row_guru = $result_guru->fetch_assoc()): ?>
                                                <option value="<?= $row_guru['id_guru']; ?>"><?= $row_guru['nama_guru']; ?></option>
                                            <?php endwhile; ?>
                                        </select><br><br>
                                        <input type="submit" name="submit" class="btn btn-success" value="Tambah">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>



                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <button class="btn btn-primary mb-2" data-toggle="modal" data-target="#addModal">Tambah Data</button><br>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID DUDI</th>
                                            <th>Nama DUDI</th>
                                            <th>Alamat</th>
                                            <th>Nama Guru</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID DUDI</th>
                                            <th>Nama DUDI</th>
                                            <th>Alamat</th>
                                            <th>Nama Guru</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php while ($row = $result->fetch_assoc()): ?>
                                            <tr>
                                                <td><?= $row['id_dudi']; ?></td>
                                                <td><?= $row['nama_dudi']; ?></td>
                                                <td><?= $row['alamat']; ?></td>
                                                <td><?= $row['nama_guru']; ?></td>
                                                <td>
                                                    <button class="btn btn-primary" data-toggle="modal" data-target="#editModal<?= $row['id_dudi'] ?>">Edit</button>
                                                    <a href="datadudi.php?delete=<?= $row['id_dudi']; ?>"
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
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; SMKS PGRI Banyupuith 2024</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="../logout.php">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../dist/vendor/jquery/jquery.min.js"></script>
    <script src="../dist/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../dist/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../dist/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../dist/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../dist/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../dist/js/demo/datatables-demo.js"></script>

</body>

</html>

<?php
// Proses penambahan data


$koneksi->close();
?>