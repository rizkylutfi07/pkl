<?php
session_start();
include '../koneksi.php'; // Ganti path ini sesuai dengan lokasi file koneksi Anda

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

$nisn = $_SESSION['username']; // Ambil nama siswa dari sesi

$result_guru = $koneksi->query("SELECT d.id_guru, d.nama_guru, g.nisn
                        FROM tb_guru d 
                        LEFT JOIN tb_siswa g ON d.id_guru = g.id_guru
                        WHERE nisn='$nisn'");

$guru = $result_guru->fetch_assoc();

$result_siswa = $koneksi->query("SELECT * FROM tb_siswa WHERE nisn = '$nisn'");
$siswa = $result_siswa->fetch_assoc();


// Fungsi untuk membuat ID jurnal baru
function generateNewID($koneksi)
{
    // Ambil ID jurnal terakhir
    $query = "SELECT id_jurnal FROM tb_jurnal ORDER BY id_jurnal DESC LIMIT 1";
    $result = mysqli_query($koneksi, $query);
    $lastID = mysqli_fetch_assoc($result)['id_jurnal'];

    // Jika tidak ada data sebelumnya, mulai dari J-001
    if (!$lastID) {
        return 'J-001';
    }

    // Ambil nomor urut terakhir
    $lastNumber = (int)substr($lastID, 2); // Mengambil angka dari id_jurnal (contoh: "001")
    $newNumber = str_pad($lastNumber + 1, 3, '0', STR_PAD_LEFT); // Increment nomor dan tambahkan leading zero

    return 'J-' . $newNumber;
}


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id_jurnal = generateNewID($koneksi);

    $nisn = $_POST['nisn'];
    $nama_siswa = $_POST['nama_siswa'];
    $tahun_pelajaran = $_POST['tahun_pelajaran'];
    $nisn = $_POST['nisn'];
    $evadir_personal = isset($_POST['evadir_personal']) ? implode(', ', $_POST['evadir_personal']) : '';
    $evadir_sosial = isset($_POST['evadir_sosial']) ? implode(', ', $_POST['evadir_sosial']) : '';
    $deskripsi_kegiatan = $_POST['deskripsi_kegiatan'];
    $lokasi = $_POST['lokasi'];
    $id_guru = $_POST['id_guru'];
    $tanggal = $_POST['tanggal'];
    $nama_dudi = $_POST['nama_dudi'];

    // Upload foto
    $target_dir = "../uploads/";
    $foto_kegiatan = $target_dir . basename($_FILES["foto_kegiatan"]["name"]);
    move_uploaded_file($_FILES["foto_kegiatan"]["tmp_name"], $foto_kegiatan);

    // Insert data ke database
    $query = "INSERT INTO tb_jurnal (id_jurnal, nisn, nama_siswa, tahun_pelajaran, tanggal, evadir_personal, evadir_sosial, foto_kegiatan, deskripsi_kegiatan, lokasi, id_guru, nama_dudi)
              VALUES ('$id_jurnal','$nisn', '$nama_siswa', '$tahun_pelajaran', '$tanggal', '$evadir_personal', '$evadir_sosial', '$foto_kegiatan', '$deskripsi_kegiatan','$lokasi', '$id_guru', '$nama_dudi')";

    if ($koneksi->query($query) === TRUE) {
        echo "<script>alert('Data berhasil ditambahkan'); window.location.href='data_jurnal.php';</script>";
    } else {
        echo "Error: " . $sql . "<br>" . $koneksi->error;
    }
}





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

            <div class="mb-3">
                <input type="text" id="nisn" name="nisn" class="form-control" value="<?= $nisn; ?>" required hidden>
            </div>

            <div class="mb-3">
                <input type="date" class="form-control" id="tanggal" name="tanggal" required>
            </div>

            <input type="text" id="tahun_pelajaran" name="tahun_pelajaran" class="form-control" value="<?php echo $siswa['tahun_pelajaran']; ?>" readonly required hidden>
            <input type="text" id="nama_siswa" name="nama_siswa" class="form-control" value="<?php echo $siswa['nama_siswa']; ?>" readonly required hidden>
            <input type="text" id="nama_dudi" name="nama_dudi" class="form-control" value="<?php echo $siswa['tempat_pkl']; ?>" readonly required>
            <input type="text" id="id_guru" name="id_guru" class="form-control" value="<?php echo $guru['id_guru']; ?>" readonly required hidden>

            <div class="mb-3">
                <label for="evadir_personal" class="form-label">Evaluasi Diri (Personal):</label>
                <div class="form-check">
                    <input class="form-check-input" name="evadir_personal[]" type="checkbox" value="Disiplin" id="disiplin">
                    <label class="form-check-label" for="disiplin">
                        Disiplin
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="evadir_personal[]" type="checkbox" value="Jujur" id="jujur">
                    <label class="form-check-label" for="jujur">
                        Jujur
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="evadir_personal[]" type="checkbox" value="Tanggung Jawab" id="tanggungjawab">
                    <label class="form-check-label" for="tanggungjawab">
                        Tanggung Jawab
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="evadir_personal[]" type="checkbox" value="Teliti/Cermat" id="teliti">
                    <label class="form-check-label" for="teliti">
                        Teliti/Cermat
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="evadir_personal[]" type="checkbox" value="Kreatif/Inovatif" id="kreatif">
                    <label class="form-check-label" for="kreatif">
                        Kreatif/Inovatif
                    </label>
                </div>
            </div>

            <div class="mb-3">
                <label for="evadir_sosial" class="form-label">Evaluasi Diri (Sosial):</label>
                <div class="form-check">
                    <input class="form-check-input" name="evadir_sosial[]" type="checkbox" value="Berkomunikasi dengan Pimpinan" id="komunikasi">
                    <label class="form-check-label" for="komunikasi">
                        Berkomunikasi dengan Pimpinan
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="evadir_sosial[]" type="checkbox" value="Berkomunikasi/bekerjasama dengan karyawan" id="kerjasama">
                    <label class="form-check-label" for="kerjasama">
                        Berkomunikasi/bekerjasama dengan karyawan
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" name="evadir_sosial[]" type="checkbox" value="Berdiskusi dengan  rekan sekelompok" id="diskusi">
                    <label class="form-check-label" for="diskusi">
                        Berdiskusi dengan rekan sekelompok
                    </label>
                </div>
            </div>

            <div class="mb-3">
                <label for="deskripsi_kegiatan" class="form-label">Deskripsi Kegiatan:</label>
                <textarea id="deskripsi_kegiatan" name="deskripsi_kegiatan" class="form-control" rows="4" required></textarea>
            </div>
            <div class="mb-3">
                <label for="foto_kegiatan" class="form-label">Foto Kegiatan:</label>
                <input type="file" id="foto_kegiatan" name="foto_kegiatan" class="form-control" required>
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