-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2024 at 12:25 PM
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
  `jam_absensi` time NOT NULL,
  `id_guru` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`id_absensi`, `nisn`, `lokasi`, `tanggal`, `status`, `keterangan`, `jam_absensi`, `id_guru`) VALUES
(4, 'dinda', '-7.6939264,112.8464384', '2024-09-07', 'Hadir', '', '08:53:10', 'subur'),
(5, 'tegar', '-7.6939264,112.8464384', '2024-09-07', 'Hadir', '', '08:59:57', 'imtiana');

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
('DUDI-002', 'Taman Nasional Baluran', 'Jln. Raya Banyuwangi-situbondo km.35 wonorejo', 'subur'),
('DUDI-003', 'Balaidesa Bajulmati', 'Jl. Raya Bajulmati No. 80', 'imtiana'),
('DUDI-004', 'Balaidesa Watukebo', 'Jl. Pasewaran Nomor 8. ', 'rizal'),
('DUDI-005', 'Balaidesa Bimorejo', 'Jl. Lambau, Bimorejo, Kec. Wongsorejo, Kab. Banyuwangi', 'rizal'),
('DUDI-006', 'Balaidesa Alasrejo', 'Jl. Raya Alasrejo Nomor 43', 'nurmala'),
('DUDI-007', 'Balaidesa Sidodadi', 'Jl. Raya Bajulmati No. 38, curah sawo', 'aini'),
('DUDI-008', 'Balaidesa Wongsorejo', 'Jl. Raya wongsorejo Nomor 124', 'nurmala'),
('DUDI-009', 'Wifi RT RW Bimorejo', 'Jl. Lambau, Bimorejo, Kec. Wongsorejo, Kab. Banyuwangi', 'rizal'),
('DUDI-010', 'Ria Mobil ( Alas Malang)', 'Jln. Raya Situbondo - Alasrejo', 'rohim'),
('DUDI-011', 'Cipta Agung motor Banyuwangi', 'Jln Argopuro No. 17 Lingkungan Sukowidi Klatak, Kalipuro. BWI', 'yudi'),
('DUDI-012', 'Yudha Putra', 'Jln. Raya Situbondo Karanganyar Bajulmati Wongsorejob Banyuwangi', 'yudi'),
('DUDI-013', 'Maharika Jaya', 'Jln. Raya Situbondo. Dusun Curahuser RT.03 RW.01. Desa Sumberanyar Wongsorejo', 'rohim'),
('DUDI-014', 'Balaidesa Wonorejo', 'Jln. Pandean , Kendal Ds. Wonorejo', 'subur'),
('DUDI-015', 'Balaidesa Sidodadi', 'Jl. Raya Bajulmati No. 38, curah sawo', 'aini'),
('DUDI-016', 'PDAM Wongsorejo', 'Jln. Raya Situbondo, Curahuser Sumberanyar', 'aini'),
('DUDI-017', ' Kecamatan Wongsorejo', 'Jln. Raya Situbondo, Wongsorejo No. 136', 'siska'),
('DUDI-018', 'Balai Desa Watukebo', 'Jl. Pasewaran Nomor 8. ', 'rizal'),
('DUDI-019', 'Puskesmas Wongsorejo', 'Jln. Raya Situbondo, alasrejo No.04 Wongsorejo ', 'siska'),
('DUDI-020', 'BANK Nusamba', 'Jln. Raya Situbondo, Curah user Wongsorejo ', 'nurmala'),
('DUDI-021', 'KSP Artha Anugrah Wonorejo', 'Jln. Pandean , Randuagung Ds. Wonorejo', 'imtiana'),
('DUDI-022', 'BANK Mandiri Cab.Banyuwangi', 'Jln. Raya Situbondo,  No. 61 Bajulmati', 'imtiana');

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
('aini', 'Aini Abdul Cholis, S.Pd'),
('imtiana', 'Imtiana, S.Pd'),
('nurmala', 'Nurmala Evayanti, S.Pd'),
('rizal', 'Syamsul Rizal, S.Pd.I'),
('rohim', 'Moh.Rohim, S.T'),
('siska', 'Siska Purwanti, S.E'),
('subur', 'Dra. Subur Hindartin'),
('yudi', 'Dwi Wahyudi, S.T');

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

-- --------------------------------------------------------

--
-- Table structure for table `tb_monitoring`
--

CREATE TABLE `tb_monitoring` (
  `id_monitoring` varchar(11) NOT NULL,
  `tanggal` date NOT NULL,
  `catatan_monitoring` text NOT NULL,
  `id_dudi` varchar(20) NOT NULL,
  `id_guru` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_monitoring`
--

INSERT INTO `tb_monitoring` (`id_monitoring`, `tanggal`, `catatan_monitoring`, `id_dudi`, `id_guru`) VALUES
('CM-001', '2024-09-07', 'asd', 'DUDI-001', 'subur');

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
-- Indexes for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  ADD PRIMARY KEY (`id_monitoring`);

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
  MODIFY `id_absensi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
