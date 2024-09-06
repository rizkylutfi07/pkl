-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2024 at 04:57 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pkl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `id_absensi` int NOT NULL,
  `nisn` varchar(12) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Hadir','Izin','Sakit','Alpha') NOT NULL,
  `keterangan` text,
  `jam_absensi` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`id_absensi`, `nisn`, `lokasi`, `tanggal`, `status`, `keterangan`, `jam_absensi`) VALUES
(2, 'dinda', '-8.1657856,113.7180672', '2024-09-06', 'Hadir', '', '20:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dudi`
--

CREATE TABLE `tb_dudi` (
  `id_dudi` varchar(100) NOT NULL,
  `nama_dudi` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `id_guru` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_dudi`
--

INSERT INTO `tb_dudi` (`id_dudi`, `nama_dudi`, `alamat`, `id_guru`) VALUES
('DUDI-001', 'Balaidesa Wonorejo', 'Jln. Pandean , Kendal Ds. Wonorejo', 'subur'),
('DUDI-002', 'Balaidesa Bajulmati', 'Jl. Raya Bajulmati No. 80', 'imtiana');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` varchar(100) NOT NULL,
  `nama_guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama_guru`) VALUES
('imtiana', 'Imtiana,S.Pd'),
('subur', 'Dra.Subur Hindartin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurnal`
--

CREATE TABLE `tb_jurnal` (
  `id_jurnal` varchar(15) NOT NULL,
  `nisn` varchar(12) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `tahun_pelajaran` varchar(25) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `evadir_personal` varchar(200) NOT NULL,
  `evadir_sosial` varchar(200) NOT NULL,
  `foto_kegiatan` varchar(200) NOT NULL,
  `deskripsi_kegiatan` text NOT NULL,
  `lokasi` varchar(70) NOT NULL,
  `id_guru` varchar(11) NOT NULL,
  `nama_dudi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_jurnal`
--

INSERT INTO `tb_jurnal` (`id_jurnal`, `nisn`, `nama_siswa`, `tahun_pelajaran`, `tanggal`, `evadir_personal`, `evadir_sosial`, `foto_kegiatan`, `deskripsi_kegiatan`, `lokasi`, `id_guru`, `nama_dudi`) VALUES
('J-002', 'dinda', 'dinda maharani', '2024-2025', '2024-09-20', 'Disiplin, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', '../uploads/Banner Ucapan Memperingati Maulid Nabi Muhammad SAW.png', 'erfsdfsdfsdfsdfsd', '-8.1559552,113.7082368', 'subur', 'Kantor Kecamatan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nisn` varchar(20) NOT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL,
  `kelas` varchar(25) DEFAULT NULL,
  `tahun_pelajaran` varchar(11) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `tempat_pkl` varchar(100) DEFAULT NULL,
  `id_guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`nisn`, `nama_siswa`, `kelas`, `tahun_pelajaran`, `semester`, `tempat_pkl`, `id_guru`) VALUES
('dinda', 'dinda maharani', 'XII AKL', '2024-2025', 'Ganjil', 'Kantor Kecamatan', 'subur'),
('tegar', 'tegar adi', 'XII TKJ', '2024-2025', 'Ganjil', 'PDAM', 'imtiana');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `role`) VALUES
(1, 'admin', 'admin123', 'Rizky Lutfi Romadona', 'admin'),
(2, 'subur', 'guru123', 'Subur Indartin', 'guru'),
(3, 'dinda', '123456', 'dinda', 'siswa'),
(4, 'tegar', '123456', 'tegar adi', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `tb_dudi`
--
ALTER TABLE `tb_dudi`
  ADD PRIMARY KEY (`id_dudi`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_jurnal`
--
ALTER TABLE `tb_jurnal`
  ADD PRIMARY KEY (`id_jurnal`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `id_absensi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
