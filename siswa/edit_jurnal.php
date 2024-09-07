<?php
session_start();
include '../koneksi.php'; // Ganti path ini sesuai dengan lokasi file koneksi Anda

// Ambil data jurnal berdasarkan ID
if (isset($_GET['id_jurnal'])) {
    $id_jurnal = $_GET['id_jurnal'];
    $query = "SELECT * FROM tb_jurnal WHERE id_jurnal = '$id_jurnal'";
    $result = mysqli_query($koneksi, $query);
    $row = mysqli_fetch_assoc($result);
} else {
    header("Location: siswa_data_jurnal.php");
    exit();
}


// Memproses permintaan edit
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id_jurnal = $_POST['id_jurnal'];
    $tanggal = $_POST['tanggal'];
    $nama_dudi = $_POST['nama_dudi'];
    $deskripsi_kegiatan = $_POST['deskripsi_kegiatan'];
    $evadir_personal = isset($_POST['evadir_personal']) ? implode(', ', $_POST['evadir_personal']) : ''; // Menggabungkan checkbox menjadi string
    $evadir_sosial = isset($_POST['evadir_sosial']) ? implode(', ', $_POST['evadir_sosial']) : ''; // Menggabungkan checkbox menjadi string
    $foto_kegiatan = $_FILES['foto_kegiatan']['name'];

    // Memproses unggahan foto
    if ($foto_kegiatan) {
        $target_dir = "../uploads/";
        $target_file = $target_dir . basename($foto_kegiatan);
        move_uploaded_file($_FILES['foto_kegiatan']['tmp_name'], $target_file);
    } else {
        $foto_kegiatan = $row['foto_kegiatan']; // Gunakan foto lama jika tidak diunggah foto baru
    }

    $query = "UPDATE tb_jurnal SET tanggal = '$tanggal', nama_dudi = '$nama_dudi', deskripsi_kegiatan = '$deskripsi_kegiatan', evadir_personal = '$evadir_personal', evadir_sosial = '$evadir_sosial' WHERE id_jurnal = '$id_jurnal'";
    mysqli_query($koneksi, $query);
    header("Location: data_jurnal.php");
    exit();
}


$nisn = $_SESSION['username']; // Ambil nama siswa dari sesi
$result_guru = $koneksi->query("SELECT d.id_guru, d.nama_guru, g.nisn
                        FROM tb_guru d 
                        LEFT JOIN tb_siswa g ON d.id_guru = g.id_guru
                        WHERE nisn='$nisn'");

$guru = $result_guru->fetch_assoc();

$result_siswa = $koneksi->query("SELECT * FROM tb_siswa WHERE nisn = '$nisn'");
$siswa = $result_siswa->fetch_assoc();

// Mengambil data evadir_personal dan mengubahnya menjadi array
$evadir_personal = explode(', ', $row['evadir_personal']);

// Mengambil data evadir_personal dan mengubahnya menjadi array
$evadir_sosial = explode(', ', $row['evadir_sosial']);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input Jurnal Harian</title>
    <link href="/assets/dist/css/headers.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
    <!-- Header -->
    <div class="container">
        <header
            class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a
                href="home_siswa.php"
                class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                <!-- <svg class="bi me-2" width="40" height="32">
                        <use xlink:href="#bootstrap" />
                    </svg> -->
                <img class="bi px-1" src="../dist/svg/logo.png" alt="" width="40">
                <span class="fs-4">PKL ESGRIBA 2024</span>
            </a>

            <ul class="nav nav-pills">
                <li class="nav-item"><a href="dashboard.php" class="nav-link">Home</a></li>
                <li class="nav-item">
                    <a href="#" class="nav-link active" aria-current="page">Data Jurnal</a>
                </li>
                <li class="nav-item"><a href="../logout.php" class="nav-link">Logout</a></li>
            </ul>
        </header>
    </div>

    <div class="container">

        <h2 class="my-4">Input Jurnal Harian</h2>


        <form method="POST" action="" enctype="multipart/form-data" onsubmit="return getLocation()">
            <input type="hidden" name="id_jurnal" value="<?php echo htmlspecialchars($row['id_jurnal']); ?>">

            <div class="mb-3">
                <input type="text" id="nisn" name="nisn" class="form-control" value="<?= $nisn; ?>" required hidden>
            </div>

            <div class="mb-3">
                <input type="date" class="form-control" id="tanggal" value="<?php echo htmlspecialchars($row['tanggal']); ?>" name="tanggal" required>
            </div>

            <input type="text" id="tahun_pelajaran" name="tahun_pelajaran" class="form-control" value="<?php echo $siswa['tahun_pelajaran']; ?>" readonly required hidden>
            <input type="text" id="nama_siswa" name="nama_siswa" class="form-control" value="<?php echo $siswa['nama_siswa']; ?>" readonly required hidden>
            <input type="text" id="nama_dudi" name="nama_dudi" class="form-control" value="<?php echo $siswa['tempat_pkl']; ?>" readonly required>
            <input type="text" id="id_guru" name="id_guru" class="form-control" value="<?php echo $guru['id_guru']; ?>" readonly required hidden>


            <div class="mb-3">
                <label for="evadir_personal" class="form-label">Evadir Personal</label><br>
                <?php
                $personalOptions = ['Disiplin', 'Jujur', 'Tanggung Jawab', 'Teliti', 'Kreatif'];
                foreach ($personalOptions as $option) {
                    $checked = in_array($option, $evadir_personal) ? 'checked' : '';
                    echo "<input type='checkbox' name='evadir_personal[]' value='$option' $checked> $option<br>";
                }
                ?>
            </div>

            <div class="mb-3">
                <label for="evadir_sosial" class="form-label">Evadir Sosial</label><br>
                <?php
                $personalOptions = ['Berkomunikasi dengan Pimpinan', 'Berkomunikasi/bekerjasama dengan karyawan', 'Berdiskusi dengan rekan sekelompok'];
                foreach ($personalOptions as $option) {
                    $checked = in_array($option, $evadir_sosial) ? 'checked' : '';
                    echo "<input type='checkbox' name='evadir_sosial[]' value='$option' $checked> $option<br>";
                }
                ?>
            </div>

            <div class="mb-3">
                <label for="deskripsi_kegiatan" class="form-label">Deskripsi Kegiatan:</label>
                <textarea id="deskripsi_kegiatan" name="deskripsi_kegiatan" class="form-control" rows="4" required><?php echo $row['deskripsi_kegiatan']; ?></textarea>
            </div>

            <div class="mb-3">
                <label for="foto_kegiatan" class="form-label">Foto Kegiatan</label>
                <input type="file" class="form-control" id="foto_kegiatan" name="foto_kegiatan">
                <?php if ($row['foto_kegiatan']): ?>
                    <img src="../uploads/<?php echo htmlspecialchars($row['foto_kegiatan']); ?>" alt="Foto Kegiatan" width="100">
                <?php endif; ?>
            </div>

            <input type="hidden" id="lokasi" name="lokasi">
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    const latitude = position.coords.latitude;
                    const longitude = position.coords.longitude;
                    document.getElementById('lokasi').value = `${latitude},${longitude}`;
                    document.querySelector('form').submit();
                }, function(error) {
                    alert('Gagal mendapatkan lokasi. Silakan coba lagi.');
                });
                return false; // Prevent default form submission until location is set
            } else {
                alert('Geolocation tidak didukung oleh browser ini.');
                return false;
            }
        }
    </script>
</body>

</html>