-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2024 at 04:35 PM
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
  `nama_siswa` varchar(100) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `id_dudi` varchar(25) NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Hadir','Izin','Sakit','Alpha') NOT NULL,
  `keterangan` text,
  `id_guru` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jam_absensi` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`id_absensi`, `nisn`, `nama_siswa`, `kelas`, `lokasi`, `id_dudi`, `tanggal`, `status`, `keterangan`, `id_guru`, `jam_absensi`) VALUES
(27, '0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '-7.9324736,114.3714241', 'DUDI-004', '2024-09-02', 'Hadir', '', 'rizal', '07:54:03'),
(28, '0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '-7.9324736,114.3714241', 'DUDI-004', '2024-09-02', 'Hadir', '', 'rizal', '07:55:49'),
(29, '0063416104', 'ALUF FIRMAN RAMADANI', 'XII TKJ', '-7.938542,114.4171303', 'DUDI-009', '2024-09-02', 'Hadir', '', 'rizal', '07:55:54'),
(30, '0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '-7.9425256,114.4145427', 'DUDI-005', '2024-09-02', 'Hadir', '', 'rizal', '07:56:22'),
(31, '0068336295', 'ELZA ILMALIA', 'XII AKL', '-7.9420349,114.3526737', 'DUDI-018', '2024-09-02', 'Hadir', '', 'Syamsul Rizal, S.Pd.I.', '07:56:43'),
(32, '0076490949', 'RYAN HIDAYAT', 'XII TKJ', '-7.9425196,114.4145421', 'DUDI-005', '2024-09-02', 'Hadir', '', 'rizal', '08:11:04'),
(33, '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '-7.9785439,114.3968354', 'DUDI-006', '2024-09-02', 'Hadir', 'Di kasi pengarahan ', 'nurmala', '08:13:27'),
(34, '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '-7.9785516,114.3968317', 'DUDI-006', '2024-09-02', 'Hadir', 'Di kasik pengarahan', 'nurmala', '08:14:19'),
(35, '0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '-7.9630703,114.3975005', 'DUDI-016', '2024-09-02', 'Hadir', '', 'aini', '08:22:22'),
(36, '0063150279', 'CINTA SETIAWATI', 'XII TKJ', '-7.9397873,114.3914324', 'DUDI-003', '2024-09-02', 'Hadir', '', 'imtiana', '08:23:51'),
(37, '0064226543', 'KADEK MARIYANA', 'XII AKL', '-7.9630766,114.39751', 'DUDI-016', '2024-09-02', 'Hadir', '', 'aini', '08:25:06'),
(38, '0071494876', 'DEWI WULAN SARI', 'XII TKJ', '-7.9397887,114.3914416', 'DUDI-003', '2024-09-02', 'Hadir', '', 'imtiana', '08:25:25'),
(39, '0065025241', 'NANDA SUCI WULANDARI', 'XII TKJ', '-7.9397199999999994,114.39132999999998', 'DUDI-003', '2024-09-02', 'Hadir', '', 'imtiana', '08:25:43'),
(40, '0066509967', 'EKA WULANDARI', 'XII TKJ', '-7.9397903,114.3914417', 'DUDI-003', '2024-09-02', 'Hadir', '-', 'imtiana', '08:27:25'),
(41, '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', 'XII TKJ', '-7.9912695,114.4022289', 'Kantor DUDI-017', '2024-09-02', 'Hadir', '', 'subur', '08:31:27'),
(42, '3069393111', 'NURFINA', 'XII AKL', '-7.9506,114.3964401', 'DUDI-007', '2024-09-02', 'Hadir', 'Membantu mempersiapkan acara malam puncak', 'aini', '09:34:59'),
(43, '0067568716', 'CHASBI MAULANA', 'XII TKJ', '-7.9506,114.3964401', 'DUDI-007', '2024-09-02', 'Hadir', '', 'aini', '10:02:32'),
(44, '0071378766', 'ZEINUR ALIF', 'XII TKJ', '-7.925861,114.4025713', 'DUDI-001', '2024-09-02', 'Hadir', '', 'subur', '10:05:17'),
(45, '3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '-7.9259215,114.4025289', 'DUDI-001', '2024-09-02', 'Hadir', '', 'subur', '10:09:44'),
(46, '3067556402', 'SAMSUL ARIFIN', 'XII AKL', '-7.9258903,114.4025413', 'DUDI-001', '2024-09-02', 'Hadir', '', 'subur', '10:12:58'),
(47, '0063856764', 'AHMAD FADIL', 'XII TKJ', '-7.9258343,114.4025967', 'DUDI-001', '2024-09-02', 'Hadir', '', 'subur', '10:14:13'),
(48, '0077378141', 'IRMA YUNITA', 'XII AKL', '-7.9913011,114.4021771', 'Kantor DUDI-017', '2024-09-02', 'Hadir', 'Mengerjakan surat PPK dan PPS', 'siska', '10:39:55'),
(49, '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.9889829,114.4023334', 'DUDI-019', '2024-09-02', 'Hadir', '', 'siska', '11:36:35'),
(50, '0068735572', 'ADIT SAPUTRA', 'XII TKRO', '-7.9322716,114.3873683', 'DUDI-012 ', '2024-09-02', 'Hadir', '', 'yudi', '11:46:40'),
(51, '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '-7.9322735,114.3873658', 'DUDI-012 ', '2024-09-02', 'Hadir', '', 'yudi', '11:47:43'),
(52, '0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '-7.9571969,114.3965495', 'DUDI-020', '2024-09-02', 'Hadir', '', 'nurmala', '11:49:40'),
(53, '0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '-7.9571762,114.3966647', 'DUDI-020', '2024-09-02', 'Hadir', '', 'nurmala', '11:50:43'),
(54, '0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '-7.9571611,114.3966786', 'DUDI-020', '2024-09-02', 'Hadir', '', 'nurmala', '11:51:41'),
(55, '0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '-7.9934418,114.4021598', 'DUDI-008', '2024-09-02', 'Hadir', 'Kegiatan pertama saya PKL adalah \r\n1.menurunkan bendera merah putih agustusan \r\n2.menyatat beberapa data \r\n3.memilah data bantuan per dusun  ', 'nurmala', '12:01:04'),
(56, '0072446545', 'AHMAD NANDA HUSAINI', 'XII TKJ', '-7.9933983,114.4021867', 'DUDI-008', '2024-09-02', 'Hadir', '1.menurunkan bendera Indonesia \r\n2.mencatat data \r\n3 memilah data bantuan', 'nurmala', '12:05:41'),
(57, '0078270826', 'AULIA ZAHIRA RAHMASARI', 'XII AKL', '-7.9407692,114.392065', 'DUDI-022', '2024-09-02', 'Hadir', '', 'imtiana', '12:10:08'),
(58, '0068290329', 'MUHAMMAD EKO WAHYUDI', 'XII TKRO', '-7.9322773,114.3873659', 'DUDI-012 ', '2024-09-02', 'Hadir', '', 'yudi', '12:34:34'),
(59, '0069714276', 'IBNU ADAM', 'XII TKRO', '-7.9322709,114.3873634', 'DUDI-012', '2024-09-02', 'Hadir', '', 'yudi', '12:35:42'),
(60, '0042667649', 'MUHAMMAD SUDARSONO', 'XII TKJ', '-7.9443345,114.4165628', 'DUDI-007', '2024-09-02', 'Hadir', 'Kegiatan hari pertama saya adalah membatu membuat ijazah', 'aini', '12:48:01'),
(61, '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9340176,114.3881998', 'DUDI-012 ', '2024-09-02', 'Hadir', '', 'yudi', '12:49:54'),
(62, '0075276084', 'ANJAR PRASASTI', 'XII TKJ', '-7.9207903,114.3875025', 'DUDI-002', '2024-09-02', 'Hadir', '', 'subur', '13:19:52'),
(63, '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9888897,114.4022649', 'DUDI-019', '2024-09-02', 'Hadir', '', 'siska', '13:35:54'),
(64, '0077967364', 'APRILIA ADEL SINTIA BELA', 'XII AKL', '-7.9889287,114.4022348', 'DUDI-019', '2024-09-02', 'Hadir', '', 'siska', '13:37:11'),
(65, '0076571100', 'NEZHA AULIA DAMAYANTI', 'XII AKL', '-7.9888053,114.4022482', 'DUDI-019', '2024-09-02', 'Hadir', '', 'siska', '13:41:17'),
(66, '0073659460', 'ADINDA DEVA VERISHA', 'XII AKL', '-7.9237446,114.4055834', 'DUDI-022', '2024-09-02', 'Hadir', '', 'imtiana', '15:49:14'),
(67, '0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '-7.9207828,114.387429', 'DUDI-002', '2024-09-02', 'Hadir', 'hadir pada pukul 07.00', 'subur', '16:15:06'),
(68, '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '-7.923705600842217,114.39988198282175', 'DUDI-002', '2024-09-02', 'Hadir', 'HADIR PADA JAM 07.00', 'subur', '16:40:53'),
(69, '0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '-7.9290174,114.4071508', 'DUDI-012 ', '2024-09-02', 'Hadir', 'Hadir', 'yudi', '16:59:30'),
(70, '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9226245,114.3945377', 'DUDI-021', '2024-09-02', 'Hadir', 'Mencatat angsuran masuk ', 'imtiana', '17:58:29'),
(71, '0073363877', 'SITI LAILATUL SOFIANA', 'XII AKL', '-7.9226245,114.3945377', 'DUDI-021', '2024-09-02', 'Hadir', 'Mencatat angsuran masuk ', 'imtiana', '18:02:34'),
(72, '0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '-7.9530593,114.3978361', 'DUDI-007', '2024-09-02', 'Hadir', 'Saya sekarang masuk PKL hari pertama di balai desa Sidodadi serta mengikuti semua rangkaian acara kegiatan di balai desa Sidodadi ', 'aini', '19:00:06'),
(73, '0067242160', 'NAUFAL DAFFA NASHIF HILMI', 'XII TKRO', '-7.9278094,114.4047758', 'DUDI-010', '2024-09-02', 'Hadir', 'Hadir', 'rohim', '19:09:59'),
(74, '0073386300', 'ADE BAGOS SUMANTRI', 'XII TKJ', '-7.9505863,114.3964555', 'DUDI-007', '2024-09-02', 'Hadir', 'Hadir tepat waktu', 'aini', '19:16:52'),
(75, '0068428929', 'YUDHA ANGGARA SETIAWAN', 'XII TKRO', '-7.9278407,114.4048277', 'DUDI-010', '2024-09-02', 'Hadir', '', 'rohim', '19:30:42'),
(76, '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9388076,114.4142137', 'DUDI-013', '2024-09-02', 'Hadir', '', 'rohim', '20:12:46'),
(77, '0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '-7.9241577,114.4000001', 'DUDI-013', '2024-09-02', 'Hadir', 'Hadir pada 07.15', 'rohim', '20:28:53'),
(78, '0064039497', 'MOH. ARIS RAMADHAN', 'XII TKJ', '-7.9425102,114.417103', 'DUDI-005', '2024-09-02', 'Hadir', 'ngefotocopy surat kwitansi saja', 'rizal', '23:33:56'),
(79, '0063416104', 'ALUF FIRMAN RAMADANI', 'XII TKJ', '-7.9288743,114.4172402', 'DUDI-009', '2024-09-03', 'Hadir', '', 'rizal', '06:44:45'),
(80, '0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '-7.9325827,114.3712746', 'DUDI-004', '2024-09-03', 'Hadir', '', 'rizal', '07:46:47'),
(81, '0068336295', 'ELZA ILMALIA', 'XII AKL', '-7.932586,114.3712781', 'DUDI-018', '2024-09-03', 'Hadir', '', 'Syamsul Rizal, S.Pd.I.', '07:50:23'),
(82, '0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '-7.931375,114.3797103', 'DUDI-004', '2024-09-03', 'Hadir', '', 'rizal', '07:50:31'),
(83, '0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '-7.9934472,114.4021479', 'DUDI-008', '2024-09-03', 'Hadir', '', 'nurmala', '07:53:06'),
(84, '0071378766', 'ZEINUR ALIF', 'XII TKJ', '-7.9259182,114.4025244', 'DUDI-001', '2024-09-03', 'Hadir', '', 'subur', '07:53:58'),
(85, '3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '-7.9258494,114.4025799', 'DUDI-001', '2024-09-03', 'Hadir', '', 'subur', '07:54:01'),
(86, '0062422700', 'YUNIKE MUANIFATUS SAFITRI', 'XII TKJ', '-7.932586,114.3712781', 'DUDI-004', '2024-09-03', 'Hadir', '', 'rizal', '07:56:10'),
(87, '3067556402', 'SAMSUL ARIFIN', 'XII AKL', '-7.9258494,114.4025799', 'DUDI-001', '2024-09-03', 'Hadir', '', 'subur', '07:56:13'),
(88, '0063856764', 'AHMAD FADIL', 'XII TKJ', '-7.925867,114.4025824', 'DUDI-001', '2024-09-03', 'Hadir', '', 'subur', '07:57:48'),
(89, '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', 'XII TKJ', '-7.9912726,114.4022999', 'Kantor DUDI-017', '2024-09-03', 'Hadir', '', 'subur', '08:00:29'),
(90, '0063150279', 'CINTA SETIAWATI', 'XII TKJ', '-7.9397884,114.3914449', 'DUDI-003', '2024-09-03', 'Hadir', '', 'imtiana', '08:02:42'),
(91, '0071494876', 'DEWI WULAN SARI', 'XII TKJ', '-7.9397853,114.3914104', 'DUDI-003', '2024-09-03', 'Hadir', '', 'imtiana', '08:03:12'),
(92, '0065025241', 'NANDA SUCI WULANDARI', 'XII TKJ', '-7.939233333333334,114.391325', 'DUDI-003', '2024-09-03', 'Hadir', '', 'imtiana', '08:03:52'),
(93, '0066509967', 'EKA WULANDARI', 'XII TKJ', '-7.9397934,114.3914391', 'DUDI-003', '2024-09-03', 'Hadir', '', 'imtiana', '08:04:13'),
(94, '0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '-7.9425253,114.4145453', 'DUDI-005', '2024-09-03', 'Hadir', '', 'rizal', '08:14:03'),
(95, '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '-7.97854,114.3968382', 'DUDI-006', '2024-09-03', 'Hadir', '', 'nurmala', '08:33:50'),
(96, '0072446545', 'AHMAD NANDA HUSAINI', 'XII TKJ', '-7.9934475,114.4021572', 'DUDI-008', '2024-09-03', 'Hadir', '', 'nurmala', '08:37:38'),
(97, '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '-7.9212198455655205,114.38751008256999', 'DUDI-002', '2024-09-03', 'Hadir', 'hadir pada pukul 07.16', 'subur', '09:24:49'),
(98, '0077378141', 'IRMA YUNITA', 'XII AKL', '-7.9913031,114.4022754', 'Kantor DUDI-017', '2024-09-03', 'Hadir', 'mencatat transaksi konsumsi', 'siska', '09:42:52'),
(99, '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9226245,114.3945381', 'DUDI-021', '2024-09-03', 'Hadir', 'Mengecek ulang saldo akhir ', 'imtiana', '09:47:48'),
(100, '0042667649', 'MUHAMMAD SUDARSONO', 'XII TKJ', '-7.9505956,114.3964316', 'DUDI-007', '2024-09-03', 'Hadir', 'Ini hari kedua saya', 'aini', '10:24:29'),
(101, '0067568716', 'CHASBI MAULANA', 'XII TKJ', '-7.9509496,114.3963507', 'DUDI-007', '2024-09-03', 'Hadir', 'Sekarang saya masuk ke hari 2 PKL', 'aini', '10:24:45'),
(102, '0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '-7.9530593,114.3978361', 'DUDI-007', '2024-09-03', 'Hadir', 'Saya hadir di hari ke 2 PKL ', 'aini', '10:46:35'),
(103, '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.9889675,114.4023176', 'DUDI-019', '2024-09-03', 'Hadir', '', 'siska', '10:50:48'),
(104, '0073363877', 'SITI LAILATUL SOFIANA', 'XII AKL', '-7.9225848,114.3945141', 'DUDI-021', '2024-09-03', 'Hadir', '', 'imtiana', '11:08:16'),
(105, '0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '-7.9572065,114.3965996', 'DUDI-020', '2024-09-03', 'Hadir', '', 'nurmala', '11:10:32'),
(106, '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '-7.9785435,114.3968429', 'DUDI-006', '2024-09-03', 'Hadir', '', 'nurmala', '11:42:33'),
(107, '0068735572', 'ADIT SAPUTRA', 'XII TKRO', '-7.9322848,114.3873772', 'DUDI-012 ', '2024-09-03', 'Hadir', '', 'yudi', '11:58:42'),
(108, '0069714276', 'IBNU ADAM', 'XII TKRO', '-7.9322848,114.3873772', 'DUDI-012', '2024-09-03', 'Hadir', '', 'yudi', '11:59:18'),
(109, '0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '-7.9322848,114.3873772', 'DUDI-012 ', '2024-09-03', 'Hadir', '', 'yudi', '12:00:00'),
(110, '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '-7.9322848,114.3873772', 'DUDI-012 ', '2024-09-03', 'Hadir', '', 'yudi', '12:00:21'),
(111, '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9322848,114.3873772', 'DUDI-012 ', '2024-09-03', 'Hadir', '', 'yudi', '12:04:46'),
(112, '0077967364', 'APRILIA ADEL SINTIA BELA', 'XII AKL', '-7.9888937,114.4022802', 'DUDI-019', '2024-09-03', 'Hadir', '', 'siska', '13:00:53'),
(113, '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9874618,114.4011784', 'DUDI-019', '2024-09-03', 'Hadir', '', 'siska', '13:02:08'),
(114, '0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '-7.9571889,114.3966541', 'DUDI-020', '2024-09-03', 'Hadir', '', 'nurmala', '13:10:49'),
(115, '0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '-7.9571709,114.3966752', 'DUDI-020', '2024-09-03', 'Hadir', '', 'nurmala', '13:16:36'),
(116, '0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '-7.929856,114.3963648', 'DUDI-002', '2024-09-03', 'Hadir', 'datang jam 07.10', 'subur', '13:29:01'),
(117, '0064226543', 'KADEK MARIYANA', 'XII AKL', '-7.9631086,114.3974757', 'DUDI-016', '2024-09-03', 'Hadir', '', 'aini', '14:36:03'),
(118, '0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '-7.9631086,114.3974757', 'DUDI-016', '2024-09-03', 'Hadir', '', 'aini', '14:38:45'),
(119, '0138108186', 'EGA EDI PRATAMA', 'XII TKRO', '-7.9557337,114.3961623', 'DUDI-013', '2024-09-03', 'Hadir', '', 'rohim', '15:31:10'),
(120, '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9557482,114.3960316', 'DUDI-013', '2024-09-03', 'Hadir', '', 'rohim', '15:32:29'),
(121, '0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '-7.9557387,114.395927', 'DUDI-013', '2024-09-03', 'Hadir', 'Hadir 07.24', 'rohim', '15:33:50'),
(122, '0061587247', 'DWI ANDRE YOSEPTINUS', 'XII TKRO', '-8.1924007,114.3755774', 'DUDI-011', '2024-09-03', 'Hadir', 'aktif ', 'yudi', '15:38:06'),
(123, '0075276084', 'ANJAR PRASASTI', 'XII TKJ', '-7.9250256,114.407664', 'DUDI-002', '2024-09-03', 'Hadir', '', 'subur', '16:47:58'),
(124, '0079617897', 'ROY FIRMAN SYAH', 'XII TKRO', '-7.9557666,114.3959085', 'DUDI-013', '2024-09-03', 'Hadir', '', 'rohim', '17:07:26'),
(125, '0068290329', 'MUHAMMAD EKO WAHYUDI', 'XII TKRO', '-7.9595904,114.4169412', 'DUDI-012 ', '2024-09-03', 'Hadir', '', 'yudi', '20:30:00'),
(126, '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', 'XII TKJ', '-7.9911362,114.4019884', 'Kantor DUDI-017', '2024-09-04', 'Hadir', '', 'subur', '07:06:20'),
(127, '0066509967', 'EKA WULANDARI', 'XII TKJ', '-7.9397922,114.391447', 'DUDI-003', '2024-09-04', 'Hadir', '', 'imtiana', '07:36:15'),
(128, '0061587247', 'DWI ANDRE YOSEPTINUS', 'XII TKRO', '-8.2198877,114.3754334', 'DUDI-011', '2024-09-04', 'Hadir', 'aktif ', 'yudi', '07:46:26'),
(129, '0071494876', 'DEWI WULAN SARI', 'XII TKJ', '-7.9397917,114.391442', 'DUDI-003', '2024-09-04', 'Hadir', '', 'imtiana', '07:51:33'),
(130, '0063150279', 'CINTA SETIAWATI', 'XII TKJ', '-7.9397937,114.39144', 'DUDI-003', '2024-09-04', 'Hadir', '', 'imtiana', '07:52:22'),
(131, '0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '-7.94253,114.4145467', 'DUDI-005', '2024-09-04', 'Hadir', '', 'rizal', '07:56:18'),
(132, '0076490949', 'RYAN HIDAYAT', 'XII TKJ', '-7.9425265,114.4145424', 'DUDI-005', '2024-09-04', 'Hadir', '', 'rizal', '07:57:24'),
(133, '0071378766', 'ZEINUR ALIF', 'XII TKJ', '-7.9258772,114.40255', 'DUDI-001', '2024-09-04', 'Hadir', '', 'subur', '08:00:01'),
(134, '0063856764', 'AHMAD FADIL', 'XII TKJ', '-7.9258942,114.4025369', 'DUDI-001', '2024-09-04', 'Hadir', '', 'subur', '08:01:08'),
(135, '3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '-7.9258071,114.402647', 'DUDI-001', '2024-09-04', 'Hadir', '', 'subur', '08:03:17'),
(136, '3067556402', 'SAMSUL ARIFIN', 'XII AKL', '-7.9258715,114.4025653', 'DUDI-001', '2024-09-04', 'Hadir', '', 'subur', '08:03:38'),
(137, '0062422700', 'YUNIKE MUANIFATUS SAFITRI', 'XII TKJ', '-7.9325764,114.3712784', 'DUDI-004', '2024-09-04', 'Hadir', '', 'rizal', '08:06:18'),
(138, '0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '-7.9325827,114.3712705', 'DUDI-004', '2024-09-04', 'Hadir', '', 'rizal', '08:23:35'),
(139, '0072446545', 'AHMAD NANDA HUSAINI', 'XII TKJ', '-7.9934503,114.4021443', 'DUDI-008', '2024-09-04', 'Hadir', '', 'nurmala', '09:31:24'),
(140, '0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '-7.9934444,114.4021528', 'DUDI-008', '2024-09-04', 'Hadir', '', 'nurmala', '09:32:31'),
(141, '0077378141', 'IRMA YUNITA', 'XII AKL', '-7.9421098,114.3525728', 'Kantor DUDI-017', '2024-09-04', 'Sakit', 'Tidak bisa masuk karena sakit', 'siska', '09:34:13'),
(142, '0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '-7.9325812,114.3712788', 'DUDI-004', '2024-09-04', 'Hadir', '', 'rizal', '09:49:11'),
(143, '0073363877', 'SITI LAILATUL SOFIANA', 'XII AKL', '-7.9226095,114.3945549', 'DUDI-021', '2024-09-04', 'Hadir', 'Mengecek buku angsuran ', 'imtiana', '09:57:52'),
(144, '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9218862,114.3933798', 'DUDI-021', '2024-09-04', 'Hadir', 'Mengecek buku angsuran ', 'imtiana', '10:02:31'),
(145, '0068336295', 'ELZA ILMALIA', 'XII AKL', '-7.9325809,114.3712765', 'DUDI-018', '2024-09-04', 'Hadir', '', 'Syamsul Rizal, S.Pd.I.', '11:41:54'),
(146, '0075276084', 'ANJAR PRASASTI', 'XII TKJ', '-7.9207775,114.3875074', 'DUDI-002', '2024-09-04', 'Hadir', '', 'subur', '11:47:14'),
(147, '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '-7.921238521620475,114.38752045287967', 'DUDI-002', '2024-09-04', 'Hadir', 'Hadir pada pukul 07.20', 'subur', '11:49:54'),
(148, '0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '-7.9207788,114.3875165', 'DUDI-002', '2024-09-04', 'Hadir', '', 'subur', '11:51:16'),
(149, '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9888396,114.4021886', 'DUDI-019', '2024-09-04', 'Hadir', '', 'siska', '11:52:47'),
(150, '0068735572', 'ADIT SAPUTRA', 'XII TKRO', '-7.9322805,114.3873665', 'DUDI-012 ', '2024-09-04', 'Hadir', '', 'yudi', '11:55:14'),
(151, '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '-7.9322744,114.3873597', 'DUDI-012 ', '2024-09-04', 'Hadir', '', 'yudi', '11:55:28'),
(152, '0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '-7.9322792,114.3873654', 'DUDI-012 ', '2024-09-04', 'Hadir', '', 'yudi', '11:55:40'),
(153, '0069714276', 'IBNU ADAM', 'XII TKRO', '-7.9322584,114.387348', 'DUDI-012', '2024-09-04', 'Hadir', '', 'yudi', '11:56:13'),
(154, '0078270826', 'AULIA ZAHIRA RAHMASARI', 'XII AKL', '-7.940773,114.3920572', 'DUDI-022', '2024-09-04', 'Hadir', '', 'imtiana', '11:56:38'),
(155, '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9322714,114.3873611', 'DUDI-012 ', '2024-09-04', 'Hadir', '', 'yudi', '11:57:04'),
(156, '0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '-7.9571771,114.3966686', 'DUDI-020', '2024-09-04', 'Hadir', '', 'nurmala', '12:49:53'),
(157, '0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '-7.957164,114.3966762', 'DUDI-020', '2024-09-04', 'Hadir', '', 'nurmala', '12:50:22'),
(158, '0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '-7.9571693,114.3966735', 'DUDI-020', '2024-09-04', 'Hadir', '', 'nurmala', '12:51:25'),
(159, '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9557487,114.3961609', 'DUDI-013', '2024-09-04', 'Hadir', '', 'rohim', '13:06:56'),
(160, '0138108186', 'EGA EDI PRATAMA', 'XII TKRO', '-7.9557311,114.3961535', 'DUDI-013', '2024-09-04', 'Hadir', '', 'rohim', '13:07:33'),
(161, '0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '-7.9557409,114.3961652', 'DUDI-013', '2024-09-04', 'Hadir', 'Service karbu', 'rohim', '13:11:21'),
(162, '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '-7.976231,114.3959759', 'DUDI-006', '2024-09-04', 'Hadir', '', 'nurmala', '13:18:35'),
(163, '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '-7.9785433,114.3968368', 'DUDI-006', '2024-09-04', 'Hadir', '', 'nurmala', '13:20:21'),
(164, '0067568716', 'CHASBI MAULANA', 'XII TKJ', '-7.9434133,114.4164037', 'DUDI-007', '2024-09-04', 'Hadir', 'Hari ke 3 masuk', 'aini', '13:35:23'),
(165, '0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '-7.9460877,114.4131432', 'DUDI-007', '2024-09-04', 'Hadir', 'Saya hadir di PKL hari ke 3', 'aini', '13:37:39'),
(166, '0073386300', 'ADE BAGOS SUMANTRI', 'XII TKJ', '-7.9268701,114.4088128', 'DUDI-007', '2024-09-04', 'Hadir', '', 'aini', '13:41:37'),
(167, '0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '-7.9631031,114.3974668', 'DUDI-016', '2024-09-04', 'Hadir', '', 'aini', '14:36:05'),
(168, '0064226543', 'KADEK MARIYANA', 'XII AKL', '-7.9631031,114.3974668', 'DUDI-016', '2024-09-04', 'Hadir', '', 'aini', '14:37:48'),
(169, '0077804332', 'SABAR ASTIAR', 'XII TKRO', '-7.9557448,114.3961463', 'DUDI-013', '2024-09-04', 'Hadir', '', 'rohim', '15:19:33'),
(170, '0079617897', 'ROY FIRMAN SYAH', 'XII TKRO', '-7.9557608,114.3958785', 'DUDI-013', '2024-09-04', 'Hadir', '', 'rohim', '15:22:51'),
(171, '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.9311258,114.410999', 'DUDI-019', '2024-09-04', 'Hadir', '', 'siska', '15:31:42'),
(172, '0042667649', 'MUHAMMAD SUDARSONO', 'XII TKJ', '-7.9443374,114.4165669', 'DUDI-007', '2024-09-04', 'Hadir', 'Hari ke3', 'aini', '20:26:41'),
(173, '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', 'XII TKJ', '-7.9912602,114.40195', 'Kantor DUDI-017', '2024-09-05', 'Hadir', '', 'subur', '07:07:28'),
(174, '0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '-7.9274386,114.4052633', 'DUDI-016', '2024-09-05', 'Hadir', '', 'aini', '07:15:44'),
(175, '0064226543', 'KADEK MARIYANA', 'XII AKL', '-7.9274386,114.4052633', 'DUDI-016', '2024-09-05', 'Hadir', '', 'aini', '07:16:24'),
(176, '0066509967', 'EKA WULANDARI', 'XII TKJ', '-7.9397861,114.3913957', 'DUDI-003', '2024-09-05', 'Hadir', '', 'imtiana', '07:45:23'),
(177, '0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '-7.9934577,114.4021589', 'DUDI-008', '2024-09-05', 'Hadir', '', 'nurmala', '07:51:40'),
(178, '0071494876', 'DEWI WULAN SARI', 'XII TKJ', '-7.9397906,114.3914378', 'DUDI-003', '2024-09-05', 'Hadir', '', 'imtiana', '07:54:49'),
(179, '0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '-7.9325821,114.3712832', 'DUDI-004', '2024-09-05', 'Hadir', '', 'rizal', '07:59:04'),
(180, '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '-7.921219073447117,114.38751642897837', 'DUDI-002', '2024-09-05', 'Hadir', 'hadir pukul 07.13', 'subur', '08:00:25'),
(181, '0061587247', 'DWI ANDRE YOSEPTINUS', 'XII TKRO', '-8.1925641,114.3752797', 'DUDI-011', '2024-09-05', 'Hadir', 'aktif ', 'yudi', '08:02:38'),
(182, '0071378766', 'ZEINUR ALIF', 'XII TKJ', '-7.9259046,114.4025276', 'DUDI-001', '2024-09-05', 'Hadir', '', 'subur', '08:02:55'),
(183, '0063856764', 'AHMAD FADIL', 'XII TKJ', '-7.9259089,114.402522', 'DUDI-001', '2024-09-05', 'Hadir', '', 'subur', '08:03:28'),
(184, '3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '-7.9258133,114.4026386', 'DUDI-001', '2024-09-05', 'Hadir', '', 'subur', '08:28:51'),
(185, '0062422700', 'YUNIKE MUANIFATUS SAFITRI', 'XII TKJ', '-7.9325776,114.3712785', 'DUDI-004', '2024-09-05', 'Hadir', '', 'rizal', '08:29:29'),
(186, '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9227375,114.3948653', 'DUDI-021', '2024-09-05', 'Hadir', 'Mengecek ulang angsuran ', 'imtiana', '08:51:56'),
(187, '0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '-7.9571778,114.3966784', 'DUDI-020', '2024-09-05', 'Hadir', '', 'nurmala', '09:11:37'),
(188, '0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '-7.9571762,114.3966697', 'DUDI-020', '2024-09-05', 'Hadir', '', 'nurmala', '09:11:56'),
(189, '3067556402', 'SAMSUL ARIFIN', 'XII AKL', '-7.9259183,114.4025259', 'DUDI-001', '2024-09-05', 'Hadir', '', 'subur', '09:27:00'),
(190, '0067568716', 'CHASBI MAULANA', 'XII TKJ', '-7.9506058,114.3964287', 'DUDI-007', '2024-09-05', 'Hadir', 'Hadir', 'aini', '09:41:37'),
(191, '0077378141', 'IRMA YUNITA', 'XII AKL', '-7.9913035,114.4022582', 'Kantor DUDI-017', '2024-09-05', 'Hadir', '', 'siska', '09:45:34'),
(192, '0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '-7.9325803,114.3712784', 'DUDI-004', '2024-09-05', 'Hadir', '', 'rizal', '09:48:03'),
(193, '0068336295', 'ELZA ILMALIA', 'XII AKL', '-7.9326066,114.3712707', 'DUDI-018', '2024-09-05', 'Hadir', '', 'Syamsul Rizal, S.Pd.I.', '09:49:13'),
(194, '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '-7.9785407,114.3968434', 'DUDI-006', '2024-09-05', 'Hadir', '', 'nurmala', '09:59:32'),
(195, '0065025241', 'NANDA SUCI WULANDARI', 'XII TKJ', '-7.9404216666666665,114.39111999999999', 'DUDI-003', '2024-09-05', 'Hadir', '', 'imtiana', '10:21:17'),
(196, '0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '-7.9506043,114.3964259', 'DUDI-007', '2024-09-05', 'Hadir', 'Saya hadir di PKL hari ke 4 ', 'aini', '10:57:37'),
(197, '0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '-7.9425327,114.4146046', 'DUDI-005', '2024-09-05', 'Hadir', '', 'rizal', '11:05:32'),
(198, '0076490949', 'RYAN HIDAYAT', 'XII TKJ', '-7.9425155,114.4145437', 'DUDI-005', '2024-09-05', 'Hadir', '', 'rizal', '11:18:21'),
(199, '0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '-7.957188,114.3966696', 'DUDI-020', '2024-09-05', 'Hadir', '', 'nurmala', '11:39:28'),
(200, '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.988998,114.4023324', 'DUDI-019', '2024-09-05', 'Hadir', '', 'siska', '11:44:42'),
(201, '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '-7.9785424,114.3968062', 'DUDI-006', '2024-09-05', 'Hadir', '', 'nurmala', '11:46:50'),
(202, '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9888253,114.4022269', 'DUDI-019', '2024-09-05', 'Hadir', '', 'siska', '12:10:31'),
(203, '0078270826', 'AULIA ZAHIRA RAHMASARI', 'XII AKL', '-7.9407691,114.3920687', 'DUDI-022', '2024-09-05', 'Hadir', '', 'imtiana', '12:58:07'),
(204, '0138108186', 'EGA EDI PRATAMA', 'XII TKRO', '-7.9557514,114.396145', 'DUDI-013', '2024-09-05', 'Hadir', 'Hadir', 'rohim', '13:40:27'),
(205, '0063150279', 'CINTA SETIAWATI', 'XII TKJ', '-7.9220369,114.4057102', 'DUDI-003', '2024-09-05', 'Hadir', '', 'imtiana', '15:03:02'),
(206, '0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '-7.921217938301771,114.38751916982285', 'DUDI-002', '2024-09-05', 'Hadir', '', 'subur', '16:01:07'),
(207, '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9285943,114.4108333', 'DUDI-012 ', '2024-09-05', 'Hadir', 'bongkar dan pasang radiator ', 'yudi', '17:15:35'),
(208, '0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '-7.9289841,114.4071454', 'DUDI-012 ', '2024-09-05', 'Hadir', 'Saya tadi membenarkan radiator truk hino', 'yudi', '17:26:16'),
(209, '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9388119,114.414221', 'DUDI-013', '2024-09-05', 'Hadir', '', 'rohim', '17:39:56'),
(210, '0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '-7.9239503,114.4000919', 'DUDI-013', '2024-09-05', 'Hadir', 'Hadir ', 'rohim', '17:47:40'),
(211, '0068735572', 'ADIT SAPUTRA', 'XII TKRO', '-7.9595904,114.4169407', 'DUDI-012 ', '2024-09-05', 'Hadir', 'Mengganti kampas kopling dan memperbaiki persneling ', 'yudi', '18:17:32'),
(212, '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '-7.9595904,114.4169407', 'DUDI-012 ', '2024-09-05', 'Hadir', 'Mengganti kampas kopling dan memperbaiki persneling ', 'yudi', '18:19:23'),
(213, '0073386300', 'ADE BAGOS SUMANTRI', 'XII TKJ', '-7.9265457,114.40882', 'DUDI-007', '2024-09-05', 'Hadir', '', 'aini', '20:43:00'),
(214, '0067242160', 'NAUFAL DAFFA NASHIF HILMI', 'XII TKRO', '-7.9269115,114.4072378', 'DUDI-010', '2024-09-05', 'Hadir', 'hadir', 'rohim', '21:08:20'),
(215, '0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '-7.93258,114.3712743', 'DUDI-004', '2024-09-06', 'Hadir', '', 'rizal', '07:41:33'),
(216, '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.9889722,114.4023073', 'DUDI-019', '2024-09-06', 'Hadir', '', 'siska', '07:45:32'),
(217, '0063150279', 'CINTA SETIAWATI', 'XII TKJ', '-7.9397891,114.3914409', 'DUDI-003', '2024-09-06', 'Hadir', '', 'imtiana', '08:34:59'),
(218, '0063856764', 'AHMAD FADIL', 'XII TKJ', '-7.9258674,114.4025674', 'DUDI-001', '2024-09-06', 'Hadir', '', 'subur', '08:40:39'),
(219, '3067556402', 'SAMSUL ARIFIN', 'XII AKL', '-7.9258674,114.4025674', 'DUDI-001', '2024-09-06', 'Hadir', '', 'subur', '08:41:49'),
(220, '0071494876', 'DEWI WULAN SARI', 'XII TKJ', '-7.9397896,114.391436', 'DUDI-003', '2024-09-06', 'Hadir', '', 'imtiana', '08:42:38'),
(221, '0066509967', 'EKA WULANDARI', 'XII TKJ', '-7.9397916,114.3914309', 'DUDI-003', '2024-09-06', 'Hadir', '-', 'imtiana', '08:44:08'),
(222, '0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '-7.9904468,114.4037778', 'DUDI-008', '2024-09-06', 'Hadir', '', 'nurmala', '08:50:40'),
(223, '0065025241', 'NANDA SUCI WULANDARI', 'XII TKJ', '-7.93898,114.39181166666667', 'DUDI-003', '2024-09-06', 'Hadir', '', 'imtiana', '08:51:55'),
(224, '0071378766', 'ZEINUR ALIF', 'XII TKJ', '-7.925545,114.4025433', 'DUDI-001', '2024-09-06', 'Hadir', '', 'subur', '08:56:43'),
(225, '3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '-7.9258351,114.402618', 'DUDI-001', '2024-09-06', 'Hadir', '', 'subur', '09:04:46'),
(226, '0067568716', 'CHASBI MAULANA', 'XII TKJ', '-7.9505994,114.3964236', 'DUDI-007', '2024-09-06', 'Hadir', 'Hadir', 'aini', '09:13:42'),
(227, '0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '-7.9325783,114.3712789', 'DUDI-004', '2024-09-06', 'Hadir', '', 'rizal', '09:24:46'),
(228, '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', 'XII TKJ', '-7.9912894,114.4022708', 'Kantor DUDI-017', '2024-09-06', 'Hadir', '', 'subur', '09:25:37'),
(229, '0062422700', 'YUNIKE MUANIFATUS SAFITRI', 'XII TKJ', '-7.9325774,114.3712784', 'DUDI-004', '2024-09-06', 'Hadir', '', 'rizal', '09:28:32'),
(230, '0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '-7.9425323,114.4145972', 'DUDI-005', '2024-09-06', 'Hadir', '', 'rizal', '09:36:41'),
(231, '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9218172,114.3944939', 'DUDI-021', '2024-09-06', 'Hadir', 'Mengecek ulang saldo akhir ', 'imtiana', '09:40:40'),
(232, '0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '-7.921218247835931,114.38752116566788', 'DUDI-002', '2024-09-06', 'Hadir', '', 'subur', '10:36:47'),
(233, '0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '-7.9280528,114.4075727', 'DUDI-020', '2024-09-06', 'Hadir', '', 'nurmala', '10:55:20'),
(234, '0138108186', 'EGA EDI PRATAMA', 'XII TKRO', '-7.9557375,114.3961639', 'DUDI-013', '2024-09-06', 'Hadir', 'Hadir ', 'rohim', '11:13:05'),
(235, '0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '-7.9461869,114.413173', 'DUDI-007', '2024-09-06', 'Hadir', 'Saya hadir PKL hari ke 5', 'aini', '11:20:41'),
(236, '0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '-7.9571832,114.3966608', 'DUDI-020', '2024-09-06', 'Hadir', '', 'nurmala', '12:04:34'),
(237, '0061587247', 'DWI ANDRE YOSEPTINUS', 'XII TKRO', '-8.192611,114.3749196', 'DUDI-011', '2024-09-06', 'Hadir', 'aktif ', 'yudi', '12:36:06'),
(238, '0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '-7.9571866,114.3966596', 'DUDI-020', '2024-09-06', 'Hadir', '', 'nurmala', '12:40:15'),
(239, '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '-7.978542,114.3967921', 'DUDI-006', '2024-09-06', 'Hadir', '', 'nurmala', '12:48:14'),
(240, '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '-7.9785402,114.3968455', 'DUDI-006', '2024-09-06', 'Hadir', '', 'nurmala', '12:50:58'),
(241, '0068735572', 'ADIT SAPUTRA', 'XII TKRO', '-7.9372106,114.3896662', 'DUDI-012 ', '2024-09-06', 'Hadir', '', 'yudi', '13:54:02'),
(242, '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '-7.9372106,114.3896662', 'DUDI-012 ', '2024-09-06', 'Hadir', '', 'yudi', '13:54:15'),
(243, '0069714276', 'IBNU ADAM', 'XII TKRO', '-7.9372106,114.3896662', 'DUDI-012', '2024-09-06', 'Hadir', '', 'yudi', '13:55:25'),
(244, '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '-7.921216417221531,114.38751923315651', 'DUDI-002', '2024-09-06', 'Hadir', 'Hadir pada pukul 07.20', 'subur', '14:15:01'),
(245, '0077378141', 'IRMA YUNITA', 'XII AKL', '-7.9912957,114.4022595', 'Kantor DUDI-017', '2024-09-06', 'Hadir', 'Mengerjakan surat permohonan data operator', 'siska', '14:15:18'),
(246, '0073386300', 'ADE BAGOS SUMANTRI', 'XII TKJ', '-7.921216417221531,114.38751923315651', 'DUDI-007', '2024-09-06', 'Hadir', '', 'aini', '14:22:46'),
(247, '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9557502,114.3961543', 'DUDI-013', '2024-09-06', 'Hadir', '', 'rohim', '14:30:34'),
(248, '0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '-7.9631356,114.3974729', 'DUDI-016', '2024-09-06', 'Hadir', '', 'aini', '15:14:43'),
(249, '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9372106,114.3896662', 'DUDI-012 ', '2024-09-06', 'Hadir', '', 'yudi', '15:17:11'),
(250, '0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '-7.9372106,114.3896662', 'DUDI-012 ', '2024-09-06', 'Hadir', '', 'yudi', '15:17:57'),
(251, '0064226543', 'KADEK MARIYANA', 'XII AKL', '-7.9631356,114.3974729', 'DUDI-016', '2024-09-06', 'Hadir', '', 'aini', '15:18:13'),
(252, '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9289732,114.4115767', 'DUDI-019', '2024-09-06', 'Hadir', '', 'siska', '16:01:40'),
(253, '0068336295', 'ELZA ILMALIA', 'XII AKL', '-7.9420344,114.3526733', 'DUDI-018', '2024-09-06', 'Hadir', '', 'Syamsul Rizal, S.Pd.I.', '16:55:26'),
(254, '0078270826', 'AULIA ZAHIRA RAHMASARI', 'XII AKL', '-7.9259751,114.4111768', 'DUDI-022', '2024-09-06', 'Hadir', '', 'imtiana', '17:02:01'),
(255, '0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '-7.9241475,114.4000287', 'DUDI-013', '2024-09-06', 'Hadir', 'Hadir 07.31', 'rohim', '18:18:32'),
(256, '0042667649', 'MUHAMMAD SUDARSONO', 'XII TKJ', '-7.9505902,114.3961937', 'DUDI-007', '2024-09-06', 'Hadir', 'Hari ke 5', 'aini', '19:11:18'),
(257, '0077804332', 'SABAR ASTIAR', 'XII TKRO', '-7.979804,114.2939282', 'DUDI-013', '2024-09-06', 'Hadir', '', 'rohim', '20:50:47'),
(258, '0064039497', 'MOH. ARIS RAMADHAN', 'XII TKJ', '-7.9425269,114.416961', 'DUDI-005', '2024-09-07', 'Sakit', 'sakit', 'rizal', '06:40:56'),
(259, '0068428929', 'YUDHA ANGGARA SETIAWAN', 'XII TKRO', '-7.9782061,114.3982075', 'DUDI-010', '2024-09-07', 'Hadir', 'Pkl', 'rohim', '07:50:17'),
(260, '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9218862,114.3933798', 'DUDI-021', '2024-09-07', 'Hadir', 'Mengecek ulang saldo akhir ', 'imtiana', '08:46:07'),
(261, '0063416104', 'ALUF FIRMAN RAMADANI', 'XII TKJ', '-7.9390368,114.4185146', 'DUDI-009', '2024-09-07', 'Hadir', '', 'rizal', '08:57:45'),
(262, '0061587247', 'DWI ANDRE YOSEPTINUS', 'XII TKRO', '-8.1925189,114.3753682', 'DUDI-011', '2024-09-07', 'Hadir', 'aktif ', 'yudi', '09:05:56'),
(263, '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9888504,114.4021676', 'DUDI-019', '2024-09-07', 'Hadir', '', 'siska', '09:12:36'),
(264, '0073019730', 'SAFARINA', 'XII AKL', '-7.928075536577465,114.40738401062139', 'Kantor DUDI-017', '2024-09-07', 'Hadir', '', 'siska', '11:09:32'),
(265, '0138108186', 'EGA EDI PRATAMA', 'XII TKRO', '-7.9557387,114.3961509', 'DUDI-013', '2024-09-07', 'Hadir', 'Hadir', 'rohim', '13:25:48'),
(266, '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9286044,114.4109001', 'DUDI-012 ', '2024-09-07', 'Izin', 'bepergian\r\n', 'yudi', '14:14:14'),
(267, '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.9311162,114.4110159', 'DUDI-019', '2024-09-07', 'Hadir', '', 'siska', '14:23:10'),
(268, '0068735572', 'ADIT SAPUTRA', 'XII TKRO', '-7.9304759,114.3866952', 'DUDI-012 ', '2024-09-07', 'Hadir', '', 'yudi', '15:57:56'),
(269, '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '-7.932267,114.3873591', 'DUDI-012 ', '2024-09-07', 'Hadir', '', 'yudi', '16:00:13'),
(270, '0069714276', 'IBNU ADAM', 'XII TKRO', '-7.9322712,114.3873567', 'DUDI-012', '2024-09-07', 'Hadir', '', 'yudi', '16:01:19'),
(271, '0077804332', 'SABAR ASTIAR', 'XII TKRO', '-7.9797209,114.2940455', 'DUDI-013', '2024-09-07', 'Izin', '', 'rohim', '16:04:48'),
(272, '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9388096,114.4142221', 'DUDI-013', '2024-09-07', 'Hadir', '', 'rohim', '18:36:40');

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
  `semester` varchar(25) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `evadir_personal` varchar(200) NOT NULL,
  `evadir_sosial` varchar(200) NOT NULL,
  `foto_kegiatan` varchar(200) NOT NULL,
  `deskripsi_kegiatan` text NOT NULL,
  `lokasi` varchar(70) NOT NULL,
  `id_guru` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_dudi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_jurnal`
--

INSERT INTO `tb_jurnal` (`id_jurnal`, `nisn`, `nama_siswa`, `tahun_pelajaran`, `semester`, `tanggal`, `evadir_personal`, `evadir_sosial`, `foto_kegiatan`, `deskripsi_kegiatan`, `lokasi`, `id_guru`, `id_dudi`) VALUES
('100', '0078270826', 'AULIA ZAHIRA RAHMASARI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0000.jpeg', 'Di bagian customer service, dan merekap nasabah yang baru membuka rekening di excel', '-7.9259768,114.4111771', 'imtiana', 'DUDI-022'),
('101', '0063150279', 'CINTA SETIAWATI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240903_081006.jpg', 'Membantu administrasi ', '-7.9397937,114.39144', 'imtiana', 'DUDI-003'),
('102', '0076571100', 'NEZHA AULIA DAMAYANTI', '2024-2025', 'Ganjil', '2024-09-04', 'Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', '17254156466646818459581479459733.jpg', 'mencatat data rekaman medis', '-7.9889963,114.4022941', 'siska', 'DUDI-019'),
('103', '0066509967', 'EKA WULANDARI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '3b9f8d89-0d2c-4c63-8db7-a24b19fa7826-ultralite.png', 'Membantu mencatat dan memberikan stampel pada setiap laporan masyarakat ', '-7.9397922,114.391447', 'imtiana', 'DUDI-003'),
('104', '0072446545', 'AHMAD NANDA HUSAINI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berdiskusi dengan  rekan sekelompok', '17254171508442453753571540928929.jpg', 'Membuat keterangan usaha', '-7.9934503,114.4021443', 'nurmala', 'DUDI-008'),
('105', '3069393111', 'NURFINA', '2024-2025', 'Ganjil', '2024-09-04', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', '20240904_090051.jpg', 'Meregistrasi surat keterangan tanah', '-7.9505899,114.3964331', 'aini', 'DUDI-007'),
('106', '0077378141', 'IRMA YUNITA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240803_213917_966.webp', 'Izin sakit', '-7.9421088,114.3525801', 'siska', 'DUDI-017'),
('107', '0076268723', 'RIZKIYATUL LAILIYAH', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '20240904_082054.jpg', 'mengimput data ', '-7.9325859,114.3712754', 'rizal', 'DUDI-004'),
('108', '0076268723', 'RIZKIYATUL LAILIYAH', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', '20240903_090615.jpg', 'membuat daftar apsensi sosialisadi', '-7.9325859,114.3712754', 'rizal', 'DUDI-004'),
('109', '0073363877', 'SITI LAILATUL SOFIANA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG20240904082926.jpg', 'Briefing lalu mengecek buku angsuran sekaligus menghitung angsuran ', '-7.9225996,114.3945299', 'imtiana', 'DUDI-021'),
('110', '0072511458', 'NELA SALMA AULIA', '2024-2025', 'Ganjil', '2024-09-04', 'Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240904-WA0002.jpg', 'Mengecek buku angsuran ', '-7.9218862,114.3933798', 'imtiana', 'DUDI-021'),
('111', '0076490949', 'RYAN HIDAYAT', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17254198072141480290498994242331.jpg', 'Kegiatan urus tanah warga', '-7.9425284,114.4146006', 'rizal', 'DUDI-005'),
('112', '0064722912', 'MOH. AFANDI RAMADHAN', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '20240904_103916.jpg', 'Pengajuan surat PTSL di desa bimo rejo dan pengukuran tanah pekarangan dan tanah sawah', '-7.9425227,114.4145482', 'rizal', 'DUDI-005'),
('113', '0073019730', 'SAFARINA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_6191.jpeg', 'Mengimput pajak daerah ', '-7.991243396125854,114.40212438970394', 'siska', 'DUDI-017'),
('114', '0066426900', 'MOHAMMAD HAFIZAM', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240904_093045.jpg', '1. Membantu mengangkat beberapa barang yang\r\nDiperlukan \r\n2.membuat surat  keterangan usaha ', '-7.993447,114.4021692', 'nurmala', 'DUDI-008'),
('115', '0071494876', 'DEWI WULAN SARI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240904-WA0007.jpeg', 'Membantu memperbaiki laporan susunan acara\r\nPKK di Microsoft word', '-7.939793,114.3914475', 'imtiana', 'DUDI-003'),
('116', '0065025241', 'NANDA SUCI WULANDARI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240904-WA0023.jpg', 'Membantu minta tanda tangan kepala desa', '-7.939781666666666,114.39147499999999', 'imtiana', 'DUDI-003'),
('117', '0068336295', 'ELZA ILMALIA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240904_083601_563.jpg', 'Menginput data', '-7.9325818,114.3712748', 'Syamsul Rizal, S.Pd.I.', 'DUDI-018'),
('118', '0075276084', 'ANJAR PRASASTI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240904-WA0017.jpg', 'menginput data di Firefox', '-7.9207775,114.3875074', 'subur', 'DUDI-002'),
('121', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'Gambar WhatsApp 2024-09-04 pukul 11.49.20_a7783a3d.jpg', 'Membuat Struktur Pemetaan Aparatur Sipil Negara Balai DUDI-002', '-7.921238521620475,114.38752045287967', 'subur', 'DUDI-002'),
('122', '0072194035', 'M. DANIS ALFAIS', '2024-2025', 'Ganjil', '2024-09-04', 'Teliti/Cermat', '', 'IMG-20240904-WA0004.jpeg', 'Menulis anc ulang dan anc terpadu \r\n', '-7.9888396,114.4021886', 'siska', 'DUDI-019'),
('123', '0072379515', 'MOHAMMAD ASSRIL AFANDI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'Gambar WhatsApp 2024-09-04 pukul 11.52.55_54f53f4e.jpg', 'mendata pemeliharaan kendaraan', '-7.921220183379944,114.38751018258093', 'subur', 'DUDI-002'),
('124', '0078270826', 'AULIA ZAHIRA RAHMASARI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'Screenshot_20240904-113243_WhatsApp.jpg', 'Membantu pelayanan nasabah dan belajar menghitung uang cepat', '-7.9407701,114.3920707', 'imtiana', 'DUDI-022'),
('125', '0067370893', 'ALYA SOFIYATUL WIDAD', '2024-2025', 'Ganjil', '2024-09-04', 'Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240904-WA0016.jpg', '1.melipat dan memotong surat tanda terima\r\n2.melipat surat peringatan penagihan\r\n3.menulis register tanda terima ambil jaminan\r\n4.scan formulir pengkinian data nusamba\r\n5.mengisi register nomor cif (costumer information file)', '-7.9571693,114.3966735', 'nurmala', 'DUDI-020'),
('126', '0064644106', 'ALYA SHEILA SURYA AGNESIA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240904_12433201.jpg', '1. melipat surat peringatan penagihan \r\n2. melipat dan memotong surat tanda terima \r\n3. menulis resgister tanda terima ambil jaminan \r\n4. scan formulir pengkinian data nasabah\r\n5. menulis resgister nomor CIF (customer information file)\r\n6. menulis resgister nomor rekening tabungan', '-7.957164,114.3966762', 'nurmala', 'DUDI-020'),
('127', '0078877559', 'OLGA CINTYA BELLA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240904_092313.jpg', '1. Menarik tabungan keliling ke daerah pasar dan sekitarnya \r\n2. melipat surat peringatan penagihan \r\n3. melipat dan memotong surat tanda terima\r\n4. memfotokopi surat', '-7.9571771,114.3966686', 'nurmala', 'DUDI-020'),
('128', '0061290613', 'PUTRA FERIYANTO', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG20240904122604.jpg', 'Pembenahan poros propeler dan servis karburator', '-7.9556855,114.396137', 'rohim', 'DUDI-013'),
('129', '0138108186', 'EGA EDI PRATAMA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240904_101841.jpg', 'Ganti radiator sama pasang gardan ', '-7.9557311,114.3961535', 'rohim', 'DUDI-013'),
('130', '0079052014', 'FRANS GERALDINO SEFILTO W', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240904-WA0008.jpg', 'Service karbu ', '-7.9556656,114.396108', 'rohim', 'DUDI-013'),
('131', '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17254307809646646376610118879994.jpg', 'Membantu buat surat domisilin', '-7.9785433,114.3968368', 'nurmala', 'DUDI-006'),
('132', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17254308657534972316157310418180.jpg', 'Membantu membuat surat kelengkapan untuk pendaftaran PTSL', '-7.9785693,114.3968353', 'nurmala', 'DUDI-006'),
('133', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17254308657534972316157310418180.jpg', 'Membantu membuat surat kelengkapan untuk pendaftaran PTSL', '-7.9785693,114.3968353', 'nurmala', 'DUDI-006'),
('134', '0053691023', 'MOCH ADI SAPUTRA', '2024-2025', 'Ganjil', '2024-09-04', 'Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240904-WA0021.jpg', 'Kegiatan PKL hari ke 3 ini saya membantu aparat pemerintahan desa Sidodadi untuk memasukkan data warga kedalam arsip desa dan membantu mempersiapkan kegiatan sosialisasi bantuan BLT kepada warga ', '-7.9460877,114.4131432', 'aini', 'DUDI-007'),
('135', '0073386300', 'ADE BAGOS SUMANTRI', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240904-WA0008.jpg', 'Membantu kegiatan penyaluran BLT/bansos kepada keluarga yang telah terdaftar sebagai penerima ', '-7.9268701,114.4088128', 'aini', 'DUDI-007'),
('136', '0064449451', 'ALVIAN DANIEL SEPTIANTO', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240904_134146_690.jpg', 'Membantu di Kantin BK', '-7.9921364,114.4019211', 'subur', 'DUDI-017'),
('137', '0067568716', 'CHASBI MAULANA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240904_133200.jpg', 'Di hari ke 3 ini saya melakukan kegiatan  mencatat data KK, Akte, dan sosialisasi bantuan BLT kepada warga Sidodadi.', '-7.9509931,114.4108335', 'aini', 'DUDI-007'),
('138', '0064449451', 'ALVIAN DANIEL SEPTIANTO', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240904_134146_690.jpg', 'Membantu di kantin KB ', '-7.9911491,114.4019924', 'subur', 'DUDI-017'),
('139', '0077967364', 'APRILIA ADEL SINTIA BELA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240904_124916.jpg', 'Mendata pasien', '-7.9241257,114.3978361', 'siska', 'DUDI-019'),
('140', '0077967364', 'APRILIA ADEL SINTIA BELA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', '', 'Mendaftarkan pasien ', '-7.924636,114.399364', 'siska', 'DUDI-019'),
('141', '0077804332', 'SABAR ASTIAR', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240904-WA0013.jpeg', 'Pembenahan poros propeller dan servis karburator ', '-7.9557448,114.3961463', 'rohim', 'DUDI-013'),
('142', '0079617897', 'ROY FIRMAN SYAH', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240904-WA0002.jpg', 'Pembenahan poros propeller ', '-7.9557608,114.3958785', 'rohim', 'DUDI-013'),
('143', '0063252549', 'AMANDA WAHYUNING PRATIWI', '2024-2025', 'Ganjil', '2024-09-04', 'Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240904-WA0021.jpeg', 'Mencatat data pasien', '-7.9311258,114.410999', 'siska', 'DUDI-019'),
('144', '0073659460', 'ADINDA DEVA VERISHA', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240904-WA0001.jpg', 'Membantu customer service dalam melayani nasaba, seperti membuka rekening baru, mengganti atm yang sudah kadaluarsa, dll, juga membantu scurity dalam melakukan pelayanan.', '-7.9237891,114.4053673', 'imtiana', 'DUDI-022'),
('145', '0066355743', 'FAUZI AL BIANSYAH', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240904-WA0018.jpg', 'menginput data keluar masuk,ngestampel undangan,ngefoto copy laporan surat tugas', '-7.9293061,114.4105069', 'subur', 'DUDI-002'),
('146', '0066355743', 'FAUZI AL BIANSYAH', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240904-WA0018.jpg', 'menginput data keluar masuk,ngestampel undangan,ngefoto copy laporan surat tugas', '-7.9293061,114.4105069', 'subur', 'DUDI-002'),
('147', '0064039497', 'MOH. ARIS RAMADHAN', '2024-2025', 'Ganjil', '2024-09-04', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '20240904_124955.jpg', 'hari ini saya berkegiatan seperti satu hari sebelumnya ', '-7.9463956,114.4131425', 'rizal', 'DUDI-005'),
('148', '0042667649', 'MUHAMMAD SUDARSONO', '2024-2025', 'Ganjil', '2024-09-04', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240904-WA0020.jpg', 'Hari ketiga saya dan teman teman membantu membagikan sembako', '-7.9443374,114.4165669', 'aini', 'DUDI-007'),
('149', '0068089244', 'RISKI AMALIA PUTRI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240904-WA0023.jpg', 'membagikan bantuan blt pada masyarakan', '-7.9325821,114.3712832', 'rizal', 'DUDI-004'),
('15', '0064722912', 'MOH. AFANDI RAMADHAN', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240902-WA0005.jpeg', 'Membuat surat keterangan Usaha ', '-7.9425294,114.4146028', 'rizal', 'DUDI-005'),
('150', '0064449451', 'ALVIAN DANIEL SEPTIANTO', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240905_081213_813.jpg', 'Membuat brosur persyaratan KK ', '-7.9893038,114.4019211', 'subur', 'DUDI-017'),
('151', '0066509967', 'EKA WULANDARI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240905_082148_173.webp', 'Tugas saya hanya meminta ttd di pak lurah dan memberikan stampel. Sama seperti kemarin karena temen saya tidak mau gantian', '-7.9397869,114.3914917', 'imtiana', 'DUDI-003'),
('152', '0066426900', 'MOHAMMAD HAFIZAM', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240905_081810.jpg', '1. Membuat surat rekomendasi pembelian BBM jenis tertentu\r\n2.membuat surat keterangan usaha', '-7.9934473,114.4021555', 'nurmala', 'DUDI-008'),
('153', '0072446545', 'AHMAD NANDA HUSAINI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'Screenshot_20240905-084316.png', '1 membuat surat rekomendasi pembelian. \r\n   BBM jenis tertentu \r\n2 membuat surat keterangan usaha ', '-7.9934504,114.4021531', 'nurmala', 'DUDI-008'),
('154', '0066509967', 'EKA WULANDARI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240905_084735_363.webp', 'Membantu menata kursi, dan melayani masyarakat sebagai penerima tamu', '-7.9397869,114.3914917', 'imtiana', 'DUDI-003'),
('155', '0072511458', 'NELA SALMA AULIA', '2024-2025', 'Ganjil', '2024-09-05', 'Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240905082249.jpg', 'Mengecek ulang buku besar angsuran ', '-7.9227375,114.3948653', 'imtiana', 'DUDI-021'),
('156', '0073363877', 'SITI LAILATUL SOFIANA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG20240905082909.jpg', 'Menata buku Lau briefing setelah itu mengecek ulang buku angsuran dan menghitung ulang angsuran yang masuk ', '-7.9224709,114.3944677', 'imtiana', 'DUDI-021'),
('157', '0077378141', 'IRMA YUNITA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240905-WA0016.jpg', 'menginput laporan E-reporting DPW via online\r\nmenginput laporan kerja di E- kinerja via online', '-7.9913035,114.4022582', 'siska', 'DUDI-017'),
('158', '0076268723', 'RIZKIYATUL LAILIYAH', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17255045147938585584192549833092.jpg', 'membuat surat keterangan baik. dan mrngimout data penduduk', '-7.9325794,114.3712799', 'rizal', 'DUDI-004'),
('159', '0068336295', 'ELZA ILMALIA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240905_094840_481.jpg', 'SURAT KETERANGAN KELAKUAN BAIK', '-7.9326066,114.3712707', 'Syamsul Rizal, S.Pd.I.', 'DUDI-018'),
('16', '0076490949', 'RYAN HIDAYAT', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17252442552423118822045876821121.jpg', 'Membuat SURAT KETERANGAN USAHA( SKU )', '-7.9425283,114.4146069', 'rizal', 'DUDI-005'),
('160', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'Gambar WhatsApp 2024-09-05 pukul 09.58.36_694bdcb5.jpg', 'Belajar Membuat Struktur Pemetaan Dengan Aplikasi Corel Draw', '-7.92123809181187,114.3875221909787', 'subur', 'DUDI-002'),
('161', '0065025241', 'NANDA SUCI WULANDARI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240905-WA0009.jpg', 'Membantu meminta tanda tangan kepada kepala desa dan memberi stempel yang sudah di tanda tangan olh kepala desa', '-7.939378333333334,114.39104666666665', 'imtiana', 'DUDI-003'),
('162', '0053691023', 'MOCH ADI SAPUTRA', '2024-2025', 'Ganjil', '2024-09-05', 'Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240905-WA0000.jpeg', 'Kegiatan PKL hari ke 4 \r\nSaya belum mendapatkan pekerjaan jadi akhirnya digunakan untuk sharing2 dan berdiskusi, mengenai kehidupan Dengan aparat desa Sidodadi\r\nSerta dikasih tips gimana menjadi manusia yang sukses didunia kerja', '-7.9506043,114.3964259', 'aini', 'DUDI-007'),
('163', '0071378766', 'ZEINUR ALIF', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240905_094127.jpg', 'membuat berkas-berkas kehilangan surat nikah', '-7.9258019,114.4026393', 'subur', 'DUDI-001'),
('164', '0063856764', 'AHMAD FADIL', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240905-WA0000.jpg', 'Datang jam 07.03 bersi bersi\r\nJam 09.00 membuat surat kehilangan buku nikah\r\n11.30 sholat dhuhur adzan bergantian tiap hari ', '-7.9258443,114.4025906', 'subur', 'DUDI-001'),
('165', '0064722912', 'MOH. AFANDI RAMADHAN', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240905-WA0008.jpeg', 'Mengisi NOMINATIF BIMO REJO PTSL 2024', '-7.9425297,114.414603', 'rizal', 'DUDI-005'),
('166', '3067556402', 'SAMSUL ARIFIN', '2024-2025', 'Ganjil', '2024-09-05', 'Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240905-WA0015.jpg', 'Datang 07.03 bersih bersih\r\nJam 09.00 membuat surat kehilangan buku nikah \r\n11.30 sholat dhuhur dan adzan bergantian tiap hari \r\n13.00 pulang', '-7.9258336,114.4026079', 'Dra. Subur Hindartin', 'DUDI-001'),
('167', '0076490949', 'RYAN HIDAYAT', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17255098709149049448272524610657.jpg', 'Mengisi nomor RT/RW warga', '-7.9425155,114.4145437', 'rizal', 'DUDI-005'),
('168', '0073019730', 'SAFARINA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_6227.jpeg', 'Menata arsip di operator layanan', '-7.991315643021894,114.4021268877333', 'siska', 'DUDI-017'),
('169', '0064644106', 'ALYA SHEILA SURYA AGNESIA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG20240905090709.jpg', '1. menulis resgister tanda terima ambil jaminan\r\n2.  menempel materai di perjanjian kredit\r\n3. menempel Mila tagihan kolektifitas nasabah', '-7.9571877,114.3966311', 'nurmala', 'DUDI-020'),
('17', '3069393111', 'NURFINA', '2024-2025', 'Ganjil', '2024-09-02', 'Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240902-WA0012.jpeg', 'Membantu mempersiapkan kegiatan malam puncak', '-7.9506,114.3964401', 'aini', 'DUDI-007'),
('170', '0067370893', 'ALYA SOFIYATUL WIDAD', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG20240905090543.jpg', '1.ngolek( narik tabungan keliling)\r\n2. Menempel meterai perjanjian kredit\r\n3. Fotokopi mila tagihan kolektibilitas nasabah', '-7.9571845,114.3966594', 'nurmala', 'DUDI-020'),
('171', '0078877559', 'OLGA CINTYA BELLA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240905-WA0010.jpg', '1. menulis register tanda terima ambil jaminan \r\n2. menempel materai di perjanjian kredit\r\n3. menempel mila tagihan kolektibilitas nasabah\r\n4. memfotokopi mila tagihan kolektibilitas nasabah', '-7.9571756,114.396669', 'nurmala', 'DUDI-020'),
('172', '0063252549', 'AMANDA WAHYUNING PRATIWI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240905-WA0020.jpeg', 'Meng input data pasien ', '-7.988998,114.4023324', 'siska', 'DUDI-019'),
('173', '0076571100', 'NEZHA AULIA DAMAYANTI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17255114795344047361523430211319.jpg', 'register data', '-7.9889623,114.402323', 'siska', 'DUDI-019'),
('174', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17255115371987724713660817683781.jpg', 'Membantu bikin surat keterangan kepemilikan tanah', '-7.9785424,114.3968062', 'nurmala', 'DUDI-006'),
('175', '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17255116406377031295239469198477.jpg', 'Membantu bikin surat keterangan kepemilikan', '-7.9785471,114.3968439', 'nurmala', 'DUDI-006'),
('176', '0072194035', 'M. DANIS ALFAIS', '2024-2025', 'Ganjil', '2024-09-05', '', '', 'IMG-20240904-WA0004.jpeg', 'Register ibu hamil', '-7.9888253,114.4022269', 'siska', 'DUDI-019'),
('177', '0077967364', 'APRILIA ADEL SINTIA BELA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240904_124916.jpg', 'Register', '-7.9889595,114.4023235', 'siska', 'DUDI-019'),
('178', '3069393111', 'NURFINA', '2024-2025', 'Ganjil', '2024-09-05', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', '20240905_094702.jpg', 'Membantu mengentri pajak bumi dan bangunan', '-7.9506147,114.3960929', 'aini', 'DUDI-007'),
('179', '0078270826', 'AULIA ZAHIRA RAHMASARI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240905-WA0007.jpg', 'Sosialisasi di SMA IBRAHIMI untuk mempromosikan membuka rekening dan tabungan di bank mandiri', '-7.9407748,114.392066', 'imtiana', 'DUDI-022'),
('18', '0067568716', 'CHASBI MAULANA', '2024-2025', 'Ganjil', '2024-09-02', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240902-WA0012.jpeg', 'Ikut mempersiapkan acara malam puncak', '-7.9506,114.3964401', 'aini', 'DUDI-007'),
('180', '0138108186', 'EGA EDI PRATAMA', '2024-2025', 'Ganjil', '2024-09-05', 'Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240905_105513.jpg', 'Ganti kampas rem ', '-7.9557282,114.3960949', 'rohim', 'DUDI-013'),
('181', '0075276084', 'ANJAR PRASASTI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240905-WA0017.jpg', 'Membuat Surat Tugas di Microsoft ', '-7.9207839,114.3875056', 'subur', 'DUDI-002'),
('182', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'Gambar WhatsApp 2024-09-05 pukul 14.43.17_96c643bf.jpg', 'Membuat Surat Penelitian Bapak Rehan atau Kepala TU', '-7.921220183379944,114.38751018258093', 'subur', 'DUDI-002'),
('183', '0066355743', 'FAUZI AL BIANSYAH', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240905-WA0060.jpg', 'mengngeprint laporan,menginput data acara dan undangan, menginput SPT acara', '-7.9207811,114.3875023', 'subur', 'DUDI-002'),
('184', '0063150279', 'CINTA SETIAWATI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0022.jpg', 'Membantu administrasi ', '-7.9220369,114.4057102', 'imtiana', 'DUDI-003'),
('185', '0072379515', 'MOHAMMAD ASSRIL AFANDI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'lp.jpg', 'membuat laporan di word', '-7.921217938301771,114.38751916982285', 'subur', 'DUDI-002'),
('186', '0061290613', 'PUTRA FERIYANTO', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240905-WA0004.jpg', 'Pembenahan sistem rem dan stel celah katup', '-7.9388119,114.414221', 'rohim', 'DUDI-013'),
('187', '0079052014', 'FRANS GERALDINO SEFILTO W', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240905-WA0000.jpg', 'Pengganti kampas rem', '-7.9240456,114.4000357', 'rohim', 'DUDI-013'),
('188', '0067568716', 'CHASBI MAULANA', '2024-2025', 'Ganjil', '2024-09-05', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240905_181657.jpg', 'Mencatat data KTP ', '-7.9445479,114.416882', 'aini', 'DUDI-007'),
('189', '0073659460', 'ADINDA DEVA VERISHA', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240905-WA0047.jpg', 'Menemani bos untuk menemui nasaba, bersosialisasi untuk mempromosikan produk dari bank mandiri ke smabra.', '-8.2234698,114.3688691', 'imtiana', 'DUDI-022'),
('19', '0077378141', 'IRMA YUNITA', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240902-WA0012.jpg', 'Mengerjakan surat PPK dan PPS\r\nMengerjakan E-kinerja', '-7.9913011,114.4021692', 'siska', 'DUDI-017'),
('190', '0077804332', 'SABAR ASTIAR', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240905105502.jpg', 'Servis rem', '-7.9795677,114.2926481', 'rohim', 'DUDI-013'),
('191', '0073386300', 'ADE BAGOS SUMANTRI', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240905-WA0005.jpg', 'Membantu mencatat data KTP untuk membuat surat pengajuan dana', '-7.9265457,114.40882', 'aini', 'DUDI-007'),
('192', '0064039497', 'MOH. ARIS RAMADHAN', '2024-2025', 'Ganjil', '2024-09-05', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', '20240905_103618.jpg', 'hari ini kegiatan saya adalah membuat SURAT KETERANGAN NIKAH menggunakan microsoft word beserta ngeprintnya', '-7.9464171,114.4131478', 'rizal', 'DUDI-005'),
('193', '0068089244', 'RISKI AMALIA PUTRI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240905_100847.jpg', 'membuat surat berperilaku baik', '-7.93258,114.3712743', 'rizal', 'DUDI-004'),
('194', '0063252549', 'AMANDA WAHYUNING PRATIWI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240906_074352.jpg', 'Mencatat data data para pasien', '-7.9889722,114.4023073', 'siska', 'DUDI-019'),
('195', '0079617897', 'ROY FIRMAN SYAH', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240905-WA0006.jpg', 'Ganti kampas rem', '-7.9274648,114.3948314', 'rohim', 'DUDI-013'),
('196', '0063150279', 'CINTA SETIAWATI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240905-WA0023.jpg', 'Membantu registrasi ', '-7.9397887,114.3914385', 'imtiana', 'DUDI-003'),
('197', '0071494876', 'DEWI WULAN SARI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240906_084323.jpg', 'Mengisi registrasi surat keterangan pembelian BBM', '-7.939788,114.3914393', 'imtiana', 'DUDI-003'),
('198', '0066509967', 'EKA WULANDARI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_084220_231.webp', 'Membantu mencatat surat keterangan, memintai tanda tangan pak lurah, dan memberikan stampel pada surat yang sudah selesai di tanda tangani ', '-7.9397916,114.3914309', 'imtiana', 'DUDI-003'),
('199', '0065025241', 'NANDA SUCI WULANDARI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240906-WA0001.jpg', 'Mengisi registrasi surat keterangan pembelian bbm', '-7.939491666666667,114.39115833333332', 'imtiana', 'DUDI-003'),
('20', '0064449451', 'ALVIAN DANIEL SEPTIANTO', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17252492373571548864616056448578.jpg', 'Menara arsip masuk dan keluar', '-7.9912602,114.4022941', 'subur', 'DUDI-017'),
('200', '0071378766', 'ZEINUR ALIF', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', '17255878646715027415440401974461.jpg', 'membersihkan lingkungan balai desa ', '-7.925545,114.4025433', 'subur', 'DUDI-001'),
('201', '3148188344', 'FAREL ARDIANSYAH', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240905_072927.jpg', 'Datang jam 07.00 bersih bersih Sampek jam 08.30\r\nPulang jam 10.30', '-7.9258351,114.402618', 'subur', 'DUDI-001'),
('202', '3148188344', 'FAREL ARDIANSYAH', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240905_072927.jpg', 'Datang jam 07.00 bersih bersih Sampek jam 08.30 \r\nPulang jam 10.30', '-7.9258351,114.402618', 'subur', 'DUDI-001'),
('203', '0064449451', 'ALVIAN DANIEL SEPTIANTO', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', '17255897247953497462235390553256.jpg', 'Menulis data pengambilan KIA dan mengedit ulang Persyaratan membuat KK ', '-7.9912887,114.4022778', 'subur', 'DUDI-017'),
('204', '0064722912', 'MOH. AFANDI RAMADHAN', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', '17255902183095251258696276053026.jpg', 'FREEE', '-7.9425358,114.414599', 'rizal', 'DUDI-005'),
('205', '3069393111', 'NURFINA', '2024-2025', 'Ganjil', '2024-09-06', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', '20240906_084023.jpg', 'Membuat surat keterangan pindah nikah', '-7.9505953,114.3964281', 'aini', 'DUDI-007'),
('206', '0072511458', 'NELA SALMA AULIA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240906080101.jpg', 'Mengecek ulang saldo akhir ', '-7.9218172,114.3944939', 'imtiana', 'DUDI-021'),
('207', '0066426900', 'MOHAMMAD HAFIZAM', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_084911.jpg', '1.Membuat data surat rekomendasi pembelian \r\n   BBM jenis tertentu\r\n2. Membantu untuk acara pembagian bansos \r\n    stanting', '-7.9804263,114.4130616', 'nurmala', 'DUDI-008'),
('208', '0072446545', 'AHMAD NANDA HUSAINI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_090745.jpg', '1 menata kursi untuk bantuan stunting dan \r\n   gizi buruk\r\n2 membuat surat keterangan usaha ', '-7.9934505,114.4021519', 'nurmala', 'DUDI-008'),
('209', '0073363877', 'SITI LAILATUL SOFIANA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240906073200.jpg', 'Briefing mengecek dan menghitung angsuran setelah itu menata buku angsuran lalu mencatat angsuran ', '-7.9238802,114.3967221', 'imtiana', 'DUDI-021'),
('21', '0073019730', 'SAFARINA', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240902-WA0015.jpg', 'Membuat surat pengantar', '-7.991304,114.4021768', 'siska', 'DUDI-017'),
('210', '0072379515', 'MOHAMMAD ASSRIL AFANDI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'Gambar WhatsApp 2024-09-06 pukul 10.27.08_051e4ca4.jpg', 'membuat struktur organisasi', '-7.921220183379944,114.38751018258093', 'subur', 'DUDI-002'),
('211', '0138108186', 'EGA EDI PRATAMA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240905_141927.jpg', 'Setel klep ', '-7.955739,114.3961658', 'rohim', 'DUDI-013'),
('212', '0053691023', 'MOCH ADI SAPUTRA', '2024-2025', 'Ganjil', '2024-09-06', 'Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240906-WA0001.jpeg', 'PKL hari Ke 5 ini saya membantu aparat pemerintahan desa Sidodadi untuk memasukkan data persyaratan kawin', '-7.9461869,114.413173', 'aini', 'DUDI-007'),
('213', '0064644106', 'ALYA SHEILA SURYA AGNESIA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG20240906091814.jpg', '1. melipat surat peringatan penagihan\r\n2. ngolek ( narik tabungan keliling)\r\n3. menempel dan fotocopy Mila tagihan kolektifitas nasabah', '-7.9571783,114.396661', 'nurmala', 'DUDI-020'),
('214', '0067370893', 'ALYA SOFIYATUL WIDAD', '2024-2025', 'Ganjil', '2024-09-06', 'Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240906-WA0012.jpg', '1.melipat surat peringatan tagihan \r\n2.menghitung uang\r\n3.fotocpy Mila tagihan kolektibilitas nasabah', '-7.9571866,114.3966596', 'nurmala', 'DUDI-020'),
('215', '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', '17256018149018469959301273072482.jpg', 'Membantu bikin surat rekomen pembelian bbm', '-7.9785402,114.3968455', 'nurmala', 'DUDI-006'),
('216', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', '17256018869114998127053055855575.jpg', 'Membantu membuat surat rekomen pembelian bbm ', '-7.9785477,114.3968185', 'nurmala', 'DUDI-006'),
('217', '0078877559', 'OLGA CINTYA BELLA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240906130903.jpg', '1. melipat surat peringatan penagihan\r\n2. Mengisi form pembukaan tabungan\r\n3. fotocopy Mila tagihan kolektifitas nasabah\r\n4. Menulis surat pernyataan kesediaan untuk dilakukan pencarian SLIK', '-7.9571767,114.396671', 'nurmala', 'DUDI-020'),
('218', '0078877559', 'OLGA CINTYA BELLA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240906130903.jpg', '1. melipat surat peringatan penagihan\r\n2. Mengisi form pembukaan tabungan\r\n3. fotocopy Mila tagihan kolektifitas nasabah\r\n4. Menulis surat pernyataan kesediaan untuk dilakukan pencarian SLIK', '-7.9571767,114.396671', 'nurmala', 'DUDI-020'),
('219', '0077967364', 'APRILIA ADEL SINTIA BELA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240903_095613.jpg', 'Register', '-7.9229524,114.4015497', 'siska', 'DUDI-019'),
('220', '0068735572', 'ADIT SAPUTRA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_101940_457.jpg', 'Penyetelan Rem, mengganti karet rubber boots Toyota, mengganti batang kawel, mengganti kampas rem', '-7.9372106,114.3896662', 'yudi', 'DUDI-012 '),
('221', '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_090939_314.jpg', 'Penyetelan Rem, mengganti karet rubber boots Toyota, mengganti batang kawel, mengganti kampas rem', '-7.9372106,114.3896662', 'yudi', 'DUDI-012 '),
('222', '0069714276', 'IBNU ADAM', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_083326_348.jpg', 'Penyetelan Rem, mengganti batang kawel, mengganti kampas rem', '-7.9372106,114.3896662', 'yudi', 'DUDI-012'),
('223', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'Gambar WhatsApp 2024-09-04 pukul 11.49.20_a7783a3d.jpg', 'MELANJUTKAN PROJECT STRUKTUR PEMETAAN PENANGGUNG JAWAB KENDARAAN DINAS BALAI DUDI-002 MENGGUNAKAN APK COREL', '-7.921216417221531,114.38751923315651', 'subur', 'DUDI-002'),
('224', '0077378141', 'IRMA YUNITA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240906-WA0029.jpg', 'Membuat surat data operator desa', '-7.9912957,114.4022595', 'siska', 'DUDI-017'),
('225', '0073019730', 'SAFARINA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_6261.jpeg', 'Membuat surat keluar ke kesbangpol', '-7.991243396125854,114.40212438970394', 'siska', 'DUDI-017'),
('226', '0061290613', 'PUTRA FERIYANTO', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'PXL_20240906_125608737.PORTRAIT.jpg', 'Penggantian platina dan pembenahan sistem rem', '-7.9557502,114.3961543', 'rohim', 'DUDI-013'),
('227', '0075276084', 'ANJAR PRASASTI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_090620.jpg', 'membantu mengemas surat, membuat surat tugas, menginput data di Firefox', '-7.9207838,114.387507', 'subur', 'DUDI-002'),
('228', '0067798990', 'MOH. FEBRIYANTO PRATAMA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_083331_975.jpg', 'Penyetelan Rem, mengganti batang kawel, mengganti kampas rem', '-7.9372106,114.3896662', 'yudi', 'DUDI-012 ');
INSERT INTO `tb_jurnal` (`id_jurnal`, `nisn`, `nama_siswa`, `tahun_pelajaran`, `semester`, `tanggal`, `evadir_personal`, `evadir_sosial`, `foto_kegiatan`, `deskripsi_kegiatan`, `lokasi`, `id_guru`, `id_dudi`) VALUES
('229', '0076992053', 'ALDO AINUR ROFIK', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_090939_314.jpg', 'Penyetelan Rem, mengganti karet rubber boots Toyota, mengganti batang kawel, mengganti kampas rem', '-7.9372106,114.3896662', 'yudi', 'DUDI-012 '),
('23', '0077967364', 'APRILIA ADEL SINTIA BELA', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240902_112422.jpg', 'Register', '-7.98897,114.4023256', 'siska', 'DUDI-019'),
('230', '0066355743', 'FAUZI AL BIANSYAH', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_141240.jpg', 'mengeprint laporan dan undangan menginput agenda keluar masuk,memori,STP Dipa dan non dipa', '-7.9207825,114.3875043', 'subur', 'DUDI-002'),
('231', '0076571100', 'NEZHA AULIA DAMAYANTI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240906-WA0001.jpeg', 'register data', '-7.9296468,114.4152896', 'siska', 'DUDI-019'),
('232', '0072194035', 'M. DANIS ALFAIS', '2024-2025', 'Ganjil', '2024-09-06', '', '', 'IMG20240903074753.jpg', 'Register KIA', '-7.9289732,114.4115767', 'siska', 'DUDI-019'),
('233', '0068336295', 'ELZA ILMALIA', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240905_094840_481.jpg', 'Menginput data', '-7.9420344,114.3526733', 'Syamsul Rizal, S.Pd.I.', 'DUDI-018'),
('234', '0078270826', 'AULIA ZAHIRA RAHMASARI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240905-WA0043.jpg', 'Membantu pelayanan costumer dan ikut survei nasabah', '-7.9259735,114.41117', 'imtiana', 'DUDI-022'),
('235', '0079052014', 'FRANS GERALDINO SEFILTO W', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240906-WA0002.jpg', 'Mengganti kampas rem ', '-7.9241469,114.4000284', 'rohim', 'DUDI-013'),
('236', '0042667649', 'MUHAMMAD SUDARSONO', '2024-2025', 'Ganjil', '2024-09-06', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240906_184249.jpg', 'Pada hari ke 5 Saya dengan teman mengikuti kegiatan dari menginput data orang nikah sampai mengikuti kegiatan rutinan hari Jumat manis', '-7.9505902,114.3961937', 'aini', 'DUDI-007'),
('237', '0042667649', 'MUHAMMAD SUDARSONO', '2024-2025', 'Ganjil', '2024-09-06', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240906_184249.jpg', 'Pada hari ke 5 Saya dengan teman mengikuti kegiatan dari menginput data orang nikah sampai mengikuti kegiatan rutinan hari Jumat manis', '-7.9505902,114.3961937', 'aini', 'DUDI-007'),
('238', '0073386300', 'ADE BAGOS SUMANTRI', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240906_191107.jpg', 'Membantu memindahkan KK dalam bentuk pdf ke documents sehingga sesuai dengan RT nya masing-masing dan malamnya dilanjut dengan rutinan sholawat jumat manis', '-7.9505943,114.3958938', 'aini', 'DUDI-007'),
('239', '0077804332', 'SABAR ASTIAR', '2024-2025', 'Ganjil', '2024-09-06', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240906-WA0018.jpg', 'Servis rem ', '-7.979804,114.2939282', 'rohim', 'DUDI-013'),
('24', '0063252549', 'AMANDA WAHYUNING PRATIWI', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240902_113134.jpg', 'Belajar Register', '-7.9889829,114.4023334', 'siska', 'DUDI-019'),
('240', '0073659460', 'ADINDA DEVA VERISHA', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240907-WA0001.jpg', 'Tgl 6 september 2024, saya pergi menemani bos untuk menemui nasaba. ', '-7.9237904,114.4053611', 'imtiana', 'DUDI-022'),
('241', '0071494876', 'DEWI WULAN SARI', '2024-2025', 'Ganjil', '2024-09-07', 'Teliti/Cermat', 'Berdiskusi dengan  rekan sekelompok', 'IMG_20240905_101830.jpg', 'sgsh', '-7.9280428,114.4074102', 'imtiana', 'DUDI-003'),
('242', '0072511458', 'NELA SALMA AULIA', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240907082817.jpg', 'Mengecek ulang saldo akhir / buku besar ', '-7.9218862,114.3933798', 'imtiana', 'DUDI-021'),
('243', '0077967364', 'APRILIA ADEL SINTIA BELA', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240907_085025.jpg', 'Komputer', '-7.9889573,114.4023236', 'siska', 'DUDI-019'),
('244', '0072194035', 'M. DANIS ALFAIS', '2024-2025', 'Ganjil', '2024-09-07', '', '', 'IMG20240907090929.jpg', 'Seperti biasa gess register KIA ', '-7.9888504,114.4021676', 'siska', 'DUDI-019'),
('245', '0076571100', 'NEZHA AULIA DAMAYANTI', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', '17256754372754522597820194605541.jpg', 'mendata jurnal', '-7.9889894,114.402269', 'siska', 'DUDI-019'),
('246', '0073363877', 'SITI LAILATUL SOFIANA', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240906155059.jpg', 'Menghitung angsuran dan mencatat angsuran ', '-7.9238802,114.3967221', 'imtiana', 'DUDI-021'),
('247', '0138108186', 'EGA EDI PRATAMA', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240906-WA0037.jpg', 'Ganti kampas rem ', '-7.9557428,114.3961572', 'rohim', 'DUDI-013'),
('248', '0063252549', 'AMANDA WAHYUNING PRATIWI', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240906_074352.jpg', 'Mencatat data data pasien', '-7.9311162,114.4110159', 'siska', 'DUDI-019'),
('249', '0068735572', 'ADIT SAPUTRA', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240907_130818_757.jpg', 'Penyetelan Rem ', '-7.9322714,114.3873572', 'yudi', 'DUDI-012 '),
('25', '0078877559', 'OLGA CINTYA BELLA', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240902-WA0016.jpg', '1. mendengarkan materi dari bpk Abdul Rozak selaku kepala kantor mengenai tabungan, kredit/pinjaman, dan deposito\r\n2. mendengarkan penjelasan tentang produk tabungan dari Bu Dewi selaku teller', '-7.9571721,114.3966787', 'nurmala', 'DUDI-020'),
('250', '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240907_125700_385.jpg', 'Penyetelan Rem ', '-7.932273,114.3873615', 'yudi', 'DUDI-012 '),
('251', '0069714276', 'IBNU ADAM', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240907_130827_472.jpg', 'Pengisian minyak Rem ', '-7.9322732,114.3873605', 'yudi', 'DUDI-012'),
('252', '0061290613', 'PUTRA FERIYANTO', '2024-2025', 'Ganjil', '2024-09-07', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240907165736.jpg', 'Pembenahan sistem starter dan pemeriksaan sistem kelistrikan lampu', '-7.9388128,114.41422', 'rohim', 'DUDI-013'),
('26', '0067370893', 'ALYA SOFIYATUL WIDAD', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240902-WA0018.jpg', '1. Mendengarkan penjelaskan tentang produk tabungan dari Bu Dewi selaku teller\r\n2. Mendengarkan materi dari penjelasan tabungan, pinjaman, dan deposito dari bapak Abdul Rozak kepala kantor kas nusamba genteng ', '-7.9571762,114.3966647', 'nurmala', 'DUDI-020'),
('27', '0064644106', 'ALYA SHEILA SURYA AGNESIA', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG20240902115441.jpg', '1. mendengarkan materi dari penjelasan tabungan , pinjaman dan deposito dari bapak Abdul Rozak selalu kepala kantor kas Nusamba genteng\r\n2. mendengarkan penjelasan tentang produk tabungan dari Bu Dewi selaku teller', '-7.9571684,114.3966794', 'nurmala', 'DUDI-020'),
('28', '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17252536381146393379290553174215.jpg', 'Membantu bikin surat persyaratan kelengkapan kredit di BPR JATIM', '-7.9785493,114.396836', 'nurmala', 'DUDI-006'),
('31', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '1725253951177746309293947959486.jpg', 'Membantu bikin surat persyaratan kelengkapan kredit di BPR JATIM ', '-7.9785521,114.3968385', 'nurmala', 'DUDI-006'),
('32', '0066426900', 'MOHAMMAD HAFIZAM', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240902_111544.jpg', '1.menurunkan bendera / umbul umbul\r\n2. Menyatat beberapa data \r\n3. Memilah beberapa data sesuai dusun ', '-7.9934489,114.4021604', 'nurmala', 'DUDI-008'),
('33', '0072446545', 'AHMAD NANDA HUSAINI', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240902_104748.jpg', '1 menurunkan bendera merah putih \r\n2 mencatat data administrasi \r\n3 menyortir undangan ', '-7.9934509,114.4021666', 'nurmala', 'DUDI-008'),
('34', '0066509967', 'EKA WULANDARI', '2024-2025', 'Ganjil', '2024-09-02', 'Tanggung Jawab', 'Berdiskusi dengan  rekan sekelompok', 'IMG-20240902-WA0006.jpg', 'Belajar input data', '-7.9397892,114.3914366', 'imtiana', 'DUDI-003'),
('35', '0075276084', 'ANJAR PRASASTI', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240902-WA0054.jpg', 'membuat kop surat', '-7.9207903,114.3875025', 'subur', 'DUDI-002'),
('36', '0072194035', 'M. DANIS ALFAIS', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240902-WA0026.jpeg', 'Mencatat register KIA', '-7.9888897,114.4022649', 'siska', 'DUDI-019'),
('37', '0076571100', 'NEZHA AULIA DAMAYANTI', '2024-2025', 'Ganjil', '2024-09-02', 'Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240902-WA0058.jpg', 'memasukkan rekaman medis', '-7.9888053,114.4022482', 'siska', 'DUDI-019'),
('38', '0072446545', 'AHMAD NANDA HUSAINI', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240902_104748.jpg', '1 menurunkan bendera merah putih \r\n2 mencatat data administrasi \r\n3 menyortir undangan ', '-7.9674696,114.3223735', 'nurmala', 'DUDI-008'),
('39', '0066355743', 'FAUZI AL BIANSYAH', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240902_102531.jpg', 'menginput data masuk dan keluar, \r\ndan membuat surat tugas', '-7.9207906,114.3874982', 'subur', 'DUDI-002'),
('40', '0078270826', 'AULIA ZAHIRA RAHMASARI', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240902-WA0004.jpg', 'Slik atau memasukan identitas nasabah, membuat stuktur pegawai bank mandiri di excel, pencatatan rekening dan tabungan nasabah, menyambut nasabah yg datang dan membantunya jika ada kesulitan.', '-7.9237576,114.4054237', 'imtiana', 'DUDI-022'),
('41', '0073659460', 'ADINDA DEVA VERISHA', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240902-WA0004.jpg', 'Melakukan slik nasaba, pencatatan nasaba yang membuka rekening / tabungan ke dalam excel, membuar struktur organisasi, membantu nasaba yang kesulitan dalam mengisi formulir, dan menyambut nasaba.', '-7.9237358,114.4054263', 'imtiana', 'DUDI-022'),
('42', '', '', '', '', '2024-09-02', '', '', '', '', '', '', ''),
('43', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'Gambar WhatsApp 2024-09-02 pukul 16.13.35_869564d8.jpg', 'MENDATA SURAT PENGELUARAN DUDI-002 YANG BELUM DI TANDA TANGANI OLEH KEPALA TU', '-7.923705600842217,114.39988198282175', 'subur', 'DUDI-002'),
('44', '0072511458', 'NELA SALMA AULIA', '2024-2025', 'Ganjil', '2024-09-02', 'Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', '', 'Mengecek ulang saldo akhir dan mencatat angsuran masuk', '-7.9226245,114.3945377', 'imtiana', 'DUDI-021'),
('45', '0072511458', 'NELA SALMA AULIA', '2024-2025', 'Ganjil', '2024-09-02', 'Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240902-WA0004.jpg', 'Mengecek ulang saldo akhir dan mencatat angsuran masuk ', '-7.9226245,114.3945377', 'imtiana', 'DUDI-021'),
('46', '0073363877', 'SITI LAILATUL SOFIANA', '2024-2025', 'Ganjil', '2024-09-02', 'Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240902-WA0005.jpg', 'Mengecek ulang saldo akhir dan lalu mencatat ', '-7.9226245,114.3945377', 'imtiana', 'DUDI-021'),
('47', '0053691023', 'MOCH ADI SAPUTRA', '2024-2025', 'Ganjil', '2024-09-02', 'Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240902-WA0040.jpg', 'Untuk PKL hari pertama,saya membantu aparat pemerintahan desa Sidodadi untuk menyiapkan acara resepsi akhir acara peringatan HUT RI ke 79', '-7.9530593,114.3978361', 'aini', 'DUDI-007'),
('48', '0073386300', 'ADE BAGOS SUMANTRI', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240902_185638.jpg', 'Persiapan acara resepsi peringatan 17 Agustus ', '-7.9505813,114.3964621', 'aini', 'DUDI-007'),
('49', '0079052014', 'FRANS GERALDINO SEFILTO W', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240902_203140.jpg', 'Belajar mengenali area block silinder ', '-7.9241374,114.399967', 'rohim', 'DUDI-013'),
('50', '0068336295', 'ELZA ILMALIA', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240902-WA0013.jpg', 'Membuat Laporan pelaksanaan penanggulangan kemiskinan dan mengantar telur', '-7.9422782,114.3503355', 'Syamsul Rizal, S.Pd.I.', 'DUDI-018'),
('51', '0064039497', 'MOH. ARIS RAMADHAN', '2024-2025', 'Ganjil', '2024-09-02', 'Disiplin', 'Berdiskusi dengan  rekan sekelompok', '20240902_121441_mfnr.jpg', 'hari ini saya melakukan tugas ngefotocopy kwitansi saja', '-7.9425102,114.417103', 'rizal', 'DUDI-005'),
('52', '0076268723', 'RIZKIYATUL LAILIYAH', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240902-WA0029.jpeg', 'membuat surat undangan dan mengimput data', '-7.9325827,114.3712746', 'rizal', 'DUDI-004'),
('53', '0076268723', 'RIZKIYATUL LAILIYAH', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240902-WA0029.jpeg', 'membuat surat undangan dan mengimput data', '-7.9325827,114.3712746', 'rizal', 'DUDI-004'),
('54', '0076268723', 'RIZKIYATUL LAILIYAH', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240902-WA0029.jpeg', 'membuat surat undangan dan mengimput data', '-7.9325827,114.3712746', 'rizal', 'DUDI-004'),
('55', '0068089244', 'RISKI AMALIA PUTRI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'Image_20240902_0001.pdf', 'membuat undangan untuk acara sosialisasi bantuan masyarakat yang akan di lakukan di DUDI-004 pada tanggal 3 September acara sosialisasi', '-7.9328765,114.3733257', 'rizal', 'DUDI-004'),
('56', '0068089244', 'RISKI AMALIA PUTRI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'Image_20240902_0001.pdf', 'membuat undangan untuk acara sosialisasi bantuan masyarakat yang akan di lakukan di DUDI-004 pada tanggal 3 September acara sosialisasi', '-7.9328765,114.3733257', 'rizal', 'DUDI-004'),
('57', '0063150279', 'CINTA SETIAWATI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240902-WA0016.jpeg', 'Membantu mencatat laporan masyarakat ', '-7.9397862,114.3914375', 'imtiana', 'DUDI-003'),
('58', '0071494876', 'DEWI WULAN SARI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240903_080852.jpg', 'Membantu mencatat laporan masyarakat', '-7.9397849,114.3914401', 'imtiana', 'DUDI-003'),
('59', '0071494876', 'DEWI WULAN SARI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240903_080852.jpg', 'Membantu mencatat laporan masyarakat', '-7.9397849,114.3914401', 'imtiana', 'DUDI-003'),
('60', '0071494876', 'DEWI WULAN SARI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240903_080852.jpg', 'Membantu mencatat laporan masyarakat', '-7.9397849,114.3914401', 'imtiana', 'DUDI-003'),
('61', '0071494876', 'DEWI WULAN SARI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240903_080852.jpg', 'Membantu mencatat laporan masyarakat', '-7.9397849,114.3914401', 'imtiana', 'DUDI-003'),
('62', '0071494876', 'DEWI WULAN SARI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240903_080852.jpg', 'Membantu mencatat laporan masyarakat', '-7.9397849,114.3914401', 'imtiana', 'DUDI-003'),
('63', '0065025241', 'NANDA SUCI WULANDARI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240903-WA0024.jpg', 'Membantu mencatat laporan masyarakat', '-7.939895,114.39145166666667', 'imtiana', 'DUDI-003'),
('64', '0068089244', 'RISKI AMALIA PUTRI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', '17253294879428483590746177497094.jpg', 'membuat daftar hadir sosialisasi penyelesaian BSPS', '-7.9325861,114.3712866', 'rizal', 'DUDI-004'),
('65', '0068089244', 'RISKI AMALIA PUTRI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', '17253294879428483590746177497094.jpg', 'membuat daftar hadir sosialisasi penyelesaian BSPS', '-7.9325861,114.3712866', 'rizal', 'DUDI-004'),
('66', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'Gambar WhatsApp 2024-09-03 pukul 09.23.28_8e35c399.jpg', 'dilatih untuk membuat surat tugas  untuk kepala balai dan mengisi tinta printer yang ada di balai DUDI-002.', '-7.921219680297397,114.3875095230702', 'subur', 'DUDI-002'),
('67', '0066509967', 'EKA WULANDARI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0003.jpg', 'Membuatan ksk dan surat kematian ', '-7.9397934,114.3914391', 'imtiana', 'DUDI-003'),
('68', '0076571100', 'NEZHA AULIA DAMAYANTI', '2024-2025', 'Ganjil', '2024-09-03', 'Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', '17253312999313471843128766548615.jpg', 'mencatat rekaman medis', '-7.9889922,114.4023088', 'siska', 'DUDI-019'),
('69', '0077378141', 'IRMA YUNITA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur', 'Berkomunikasi dengan Pimpinan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240903-WA0042.jpg', 'Mencatat transaksi konsumsi\r\nMencetak surat lamaran', '-7.9913031,114.4022754', 'siska', 'DUDI-017'),
('70', '0072511458', 'NELA SALMA AULIA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG20240903080559.jpg', 'Mengecek ulang saldo akhir ', '-7.9226245,114.3945381', 'imtiana', 'DUDI-021'),
('71', '0073019730', 'SAFARINA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_6175.jpeg', 'Membantu pelayanan membuat KIA ( Kartu Identitas Anak)', '-7.991228864057988,114.40207903992695', 'siska', 'DUDI-017'),
('72', '3069393111', 'NURFINA', '2024-2025', 'Ganjil', '2024-09-03', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', '20240903_094225.jpg', 'Meregister surat ', '-7.950598,114.3964167', 'aini', 'DUDI-007'),
('73', '0042667649', 'MUHAMMAD SUDARSONO', '2024-2025', 'Ganjil', '2024-09-03', 'Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240903_091106.jpg', 'Hari ke 2 membantu membersihkan lingkungan balai desa ', '-7.9506003,114.3964384', 'aini', 'DUDI-007'),
('74', '0073386300', 'ADE BAGOS SUMANTRI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240903-WA0010.jpg', 'Kerja bakti membersihkan balai desa usai acara resepsi memperingati HUT RI ke 79 ', '-7.950594,114.3963564', 'aini', 'DUDI-007'),
('75', '0072446545', 'AHMAD NANDA HUSAINI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240903_085543.jpg', '1 menggunting surat stunting \r\n2 menghantarkan surat ke kantor pos', '-7.9934406,114.4021594', 'nurmala', 'DUDI-008'),
('76', '0066426900', 'MOHAMMAD HAFIZAM', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG_20240903_091556.jpg', '1.memotong beberapa surt bantuan stanting \r\n2. Mengirim beberapa berkas ke kantor pos wongsorejo', '-7.9934502,114.4021541', 'nurmala', 'DUDI-008'),
('77', '0064449451', 'ALVIAN DANIEL SEPTIANTO', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17253347738335856120381098892448.jpg', 'Membuat surat undangan ', '-7.9912662,114.4022977', 'subur', 'DUDI-017'),
('78', '0053691023', 'MOCH ADI SAPUTRA', '2024-2025', 'Ganjil', '2024-09-03', 'Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG-20240903-WA0018.jpg', 'PKL hari ke 2  di balai desa Sidodadi\r\nSaya melakukan kegiatan bersih-bersih sisa acara resepsi tadi malam ', '-7.9530593,114.3978361', 'aini', 'DUDI-007'),
('79', '0063252549', 'AMANDA WAHYUNING PRATIWI', '2024-2025', 'Ganjil', '2024-09-03', 'Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240903_104848.jpg', 'Register', '-7.9889675,114.4023176', 'siska', 'DUDI-019'),
('80', '0073363877', 'SITI LAILATUL SOFIANA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240903_094920.jpg', 'Briefing lalu mengecek ulang buku angsuran ', '-7.9223625,114.3944448', 'imtiana', 'DUDI-021'),
('81', '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17253384955965054120964680908049.jpg', 'Istirahat', '-7.9785637,114.3968382', 'nurmala', 'DUDI-006'),
('82', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', '17253386381959108261703643423439.jpg', 'Menata buku', '-7.9785655,114.3968344', 'nurmala', 'DUDI-006'),
('83', '0064722912', 'MOH. AFANDI RAMADHAN', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0012.jpeg', 'Membuat Undangan Panggilan dan mencatan nama undangan', '-7.9463473,114.4131316', 'rizal', 'DUDI-005'),
('84', '0077967364', 'APRILIA ADEL SINTIA BELA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG_20240903_095613.jpg', 'Mencatat pendaftaran', '-7.9888688,114.4022204', 'siska', 'DUDI-019'),
('85', '0072194035', 'M. DANIS ALFAIS', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin', '', 'IMG20240903074801.jpg', 'Mencatat kartu kehamilan ', '-7.9874618,114.4011784', 'siska', 'DUDI-019'),
('86', '0078877559', 'OLGA CINTYA BELLA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Tanggung Jawab, Teliti/Cermat', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240903_092208.jpg', '1. pembukaan rekening tabungan\r\n2. mengisi mila tagihan kolektibilitas nasabah npl bln sept 2024\r\n3. menyortir uang\r\n4. fotocopy bukti setoran mesin EDC', '-7.9571727,114.396669', 'nurmala', 'DUDI-020'),
('87', '0067370893', 'ALYA SOFIYATUL WIDAD', '2024-2025', 'Ganjil', '2024-09-03', 'Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG-20240903-WA0008.jpg', '1. Menyortir uang\r\n2.Mengisi Mila tagihan kolektibilitas nasabah NPL bulan\r\n3. Pembukaan rekening tabungan \r\n4.fotokopi bukti setoran mesin EDC ', '-7.9571691,114.3966822', 'nurmala', 'DUDI-020'),
('88', '0064644106', 'ALYA SHEILA SURYA AGNESIA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240903_131620.jpg', '1.ngolek ( narik tabungan keliling ) bersama bapak Dwi Agus Santoso \r\n2. menyortir uang \r\n3. menempel lalu fotocopy bukti setoran mesin EDC ', '-7.9571817,114.3966574', 'nurmala', 'DUDI-020'),
('89', '0067568716', 'CHASBI MAULANA', '2024-2025', 'Ganjil', '2024-09-03', 'Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'IMG_20240903_103456.jpg', 'Hari ke 2 ini saya melakukan kegiatan bersih bersih sisa sisa acara resepsi.', '-7.9509931,114.4108335', 'aini', 'DUDI-007'),
('90', '0072379515', 'MOHAMMAD ASSRIL AFANDI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'WhatsApp Image 2024-09-03 at 13.19.46.jpeg', 'hari ini saya di suruh mendesain baner', '-7.929856,114.3963648', 'subur', 'DUDI-002'),
('91', '0138108186', 'EGA EDI PRATAMA', '2024-2025', 'Ganjil', '2024-09-03', '', '', 'IMG-20240903-WA0066.jpg', 'Tun up dan ganti radiator ', '-7.9557337,114.3961623', 'rohim', 'DUDI-013'),
('92', '0061290613', 'PUTRA FERIYANTO', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan', 'IMG20240903103549.jpg', 'Servis alternator penggantian kabel busi dan penggantian noken as', '-7.9557702,114.3958944', 'rohim', 'DUDI-013'),
('93', '0079052014', 'FRANS GERALDINO SEFILTO W', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0007.jpg', 'Chun up ', '-7.9557231,114.3961444', 'rohim', 'DUDI-013'),
('94', '0079052014', 'FRANS GERALDINO SEFILTO W', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0007.jpg', 'Chun up ', '-7.9557231,114.3961444', 'rohim', 'DUDI-013'),
('95', '0075276084', 'ANJAR PRASASTI', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'Gambar WhatsApp 2024-09-04 pukul 13.33.13_55063f37.jpg', 'mendata di aplikasi fireworks', '-7.9207911,114.3875081', 'subur', 'DUDI-002'),
('96', '0066355743', 'FAUZI AL BIANSYAH', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0093.jpg', 'mengerjakan data keluar masuk, membuat undangan,memfoto copy undangan', '-7.9207901,114.3875176', 'subur', 'DUDI-002'),
('97', '0079617897', 'ROY FIRMAN SYAH', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0010.jpg', 'Servis rem dan tune up', '-7.9557666,114.3959085', 'rohim', 'DUDI-013'),
('98', '0073659460', 'ADINDA DEVA VERISHA', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0004.jpg', 'membantu teller membuat ban uang, membantu nasaba meng aktifkan livin, membantu bos mengurutkan nomor atm simpel, mempelajari perbedaan uang palsu dan asli dengan teller.', '-7.9237893,114.4053674', 'imtiana', 'DUDI-022'),
('99', '0064039497', 'MOH. ARIS RAMADHAN', '2024-2025', 'Ganjil', '2024-09-03', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan s', 'IMG-20240903-WA0034.jpg', 'hari saya menulis nama diundangan dan mencari dokumen dimap', '-7.946418,114.413138', 'rizal', 'DUDI-005');

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
('0042667649', 'MUHAMMAD SUDARSONO', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Sidodadi', 'aini'),
('0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Sidodadi', 'aini'),
('0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '2024-2025', 'Ganjil', 'Maharika Jaya', 'rohim'),
('0061587247', 'DWI ANDRE YOSEPTINUS', 'XII TKRO', '2024-2025', 'Ganjil', 'Cipta Agung motor Banyuwangi', 'yudi'),
('0062422700', 'YUNIKE MUANIFATUS SAFITRI', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Watukebo', 'rizal'),
('0063150279', 'CINTA SETIAWATI', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Bajulmati', 'imtiana'),
('0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '2024-2025', 'Ganjil', 'Puskesmas Wongsorejo', 'siska'),
('0063416104', 'ALUF FIRMAN RAMADANI', 'XII TKJ', '2024-2025', 'Ganjil', 'Wifi RT RW Bimorejo', 'rizal'),
('0063856764', 'AHMAD FADIL', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Wonorejo', 'subur'),
('0064039497', 'MOH. ARIS RAMADHAN', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Bimorejo', 'rizal'),
('0064226543', 'KADEK MARIYANA', 'XII AKL', '2024-2025', 'Ganjil', 'PDAM Wongsorejo', 'aini'),
('0064449451', 'ALVIAN DANIEL SEPTIANTO', 'XII TKJ', '2024-2025', 'Ganjil', 'Kantor Kecamatan Wongsorejo', 'siska'),
('0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '2024-2025', 'Ganjil', 'BANK Nusamba', 'nurmala'),
('0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Bimorejo', 'rizal'),
('0065025241', 'NANDA SUCI WULANDARI', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Bajulmati', 'imtiana'),
('0066355743', 'FAUZI AL BIANSYAH', 'XII TKJ', '2024-2025', 'Ganjil', 'Taman Nasional Baluran', 'subur'),
('0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Wongsorejo', 'nurmala'),
('0066509967', 'EKA WULANDARI', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Bajulmati', 'imtiana'),
('0067242160', 'NAUFAL DAFFA NASHIF HILMI', 'XII TKRO', '2024-2025', 'Ganjil', 'Ria Mobil ( Alas Malang)', 'rohim'),
('0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '2024-2025', 'Ganjil', 'BANK Nusamba', 'nurmala'),
('0067568716', 'CHASBI MAULANA', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Sidodadi', 'aini'),
('0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '2024-2025', 'Ganjil', 'Yudha Putra ', 'yudi'),
('0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Watukebo', 'rizal'),
('0068290329', 'MUHAMMAD EKO WAHYUDI', 'XII TKRO', '2024-2025', 'Ganjil', 'Yudha Putra ', 'yudi'),
('0068336295', 'ELZA ILMALIA', 'XII AKL', '2024-2025', 'Ganjil', 'Balai Desa Watukebo', 'rizal'),
('0068428929', 'YUDHA ANGGARA SETIAWAN', 'XII TKRO', '2024-2025', 'Ganjil', 'Ria Mobil ( Alas Malang)', 'rohim'),
('0068735572', 'ADIT SAPUTRA', 'XII TKRO', '2024-2025', 'Ganjil', 'Yudha Putra ', 'yudi'),
('0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Alasrejo', 'nurmala'),
('0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '2024-2025', 'Ganjil', 'Taman Nasional Baluran', 'subur'),
('0069714276', 'IBNU ADAM', 'XII TKRO', '2024-2025', 'Ganjil', 'Yudha Putra', 'yudi'),
('0071378766', 'ZEINUR ALIF', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Wonorejo', 'subur'),
('0071494876', 'DEWI WULAN SARI', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Bajulmati', 'imtiana'),
('0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Alasrejo', 'nurmala'),
('0072194035', 'M. DANIS ALFAIS', 'XII AKL', '2024-2025', 'Ganjil', 'Puskesmas Wongsorejo', 'siska'),
('0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '2024-2025', 'Ganjil', 'Taman Nasional Baluran', 'subur'),
('0072446545', 'AHMAD NANDA HUSAINI', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Wongsorejo', 'nurmala'),
('0072511458', 'NELA SALMA AULIA', 'XII AKL', '2024-2025', 'Ganjil', 'KSP Artha Anugrah Wonorejo', 'imtiana'),
('0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '2024-2025', 'Ganjil', 'PDAM Wongsorejo', 'aini'),
('0073019730', 'SAFARINA', 'XII AKL', '2024-2025', 'Ganjil', 'Kantor Kecamatan Wongsorejo', 'siska'),
('0073363877', 'SITI LAILATUL SOFIANA', 'XII AKL', '2024-2025', 'Ganjil', 'KSP Artha Anugrah Wonorejo', 'imtiana'),
('0073386300', 'ADE BAGOS SUMANTRI', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Sidodadi', 'aini'),
('0073659460', 'ADINDA DEVA VERISHA', 'XII AKL', '2024-2025', 'Ganjil', 'BANK Mandiri Cab.Banyuwangi', 'imtiana'),
('0075276084', 'ANJAR PRASASTI', 'XII TKJ', '2024-2025', 'Ganjil', 'Taman Nasional Baluran', 'subur'),
('0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Watukebo', 'rizal'),
('0076490949', 'RYAN HIDAYAT', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Bimorejo', 'rizal'),
('0076571100', 'NEZHA AULIA DAMAYANTI', 'XII AKL', '2024-2025', 'Ganjil', 'Puskesmas Wongsorejo', 'siska'),
('0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '2024-2025', 'Ganjil', 'Yudha Putra ', 'yudi'),
('0077378141', 'IRMA YUNITA', 'XII AKL', '2024-2025', 'Ganjil', 'Kantor Kecamatan Wongsorejo', 'siska'),
('0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '2024-2025', 'Ganjil', 'Yudha Putra ', 'yudi'),
('0077804332', 'SABAR ASTIAR', 'XII TKRO', '2024-2025', 'Ganjil', 'Maharika Jaya', 'rohim'),
('0077967364', 'APRILIA ADEL SINTIA BELA', 'XII AKL', '2024-2025', 'Ganjil', 'Puskesmas Wongsorejo', 'siska'),
('0078270826', 'AULIA ZAHIRA RAHMASARI', 'XII AKL', '2024-2025', 'Ganjil', 'BANK Mandiri Cab.Banyuwangi', 'imtiana'),
('0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '2024-2025', 'Ganjil', 'BANK Nusamba', 'nurmala'),
('0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '2024-2025', 'Ganjil', 'Maharika Jaya', 'rohim'),
('0079617897', 'ROY FIRMAN SYAH', 'XII TKRO', '2024-2025', 'Ganjil', 'Maharika Jaya', 'rohim'),
('0138108186', 'EGA EDI PRATAMA', 'XII TKRO', '2024-2025', 'Ganjil', 'Maharika Jaya', 'rohim'),
('3067556402', 'SAMSUL ARIFIN', 'XII AKL', '2024-2025', 'Ganjil', 'Balaidesa Wonorejo', 'subur'),
('3069393111', 'NURFINA', 'XII AKL', '2024-2025', 'Ganjil', 'Balaidesa Sidodadi', 'aini'),
('3072792967', 'DIKI AMRIAN', 'XII TKRO', '2024-2025', 'Ganjil', 'Ria Mobil ( Alas Malang)', 'rohim'),
('3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '2024-2025', 'Ganjil', 'Balaidesa Wonorejo', 'subur');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `nama`, `password`, `role`) VALUES
(1, 'rizky', 'Rizky', 'admin123', 'admin'),
(2, '0073659460', 'ADINDA DEVA VERISHA', '123456', 'siswa'),
(3, '3148188344', 'FAREL ARDIANSYAH', '123456', 'siswa'),
(4, '0073386300', 'ADE BAGOS SUMANTRI', '123456', 'siswa'),
(5, '0063856764', 'AHMAD FADIL', '123456', 'siswa'),
(6, '0072446545', 'AHMAD NANDA HUSAINI', '123456', 'siswa'),
(7, '0063416104', 'ALUF FIRMAN RAMADANI', '123456', 'siswa'),
(8, '0075276084', 'ANJAR PRASASTI', '123456', 'siswa'),
(9, '0067568716', 'CHASBI MAULANA', '123456', 'siswa'),
(10, '0063150279', 'CINTA SETIAWATI', '123456', 'siswa'),
(11, '0071494876', 'DEWI WULAN SARI', '123456', 'siswa'),
(12, '0066509967', 'EKA WULANDARI', '123456', 'siswa'),
(13, '3148188344', 'FAREL ARDIANSYAH', '123456', 'siswa'),
(14, '0066355743', 'FAUZI AL BIANSYAH', '123456', 'siswa'),
(15, '0053691023', 'MOCH ADI SAPUTRA', '123456', 'siswa'),
(16, '0064722912', 'MOH. AFANDI RAMADHAN', '123456', 'siswa'),
(17, '0064039497', 'MOH. ARIS RAMADHAN', '123456', 'siswa'),
(18, '0072379515', 'MOHAMMAD ASSRIL AFANDI', '123456', 'siswa'),
(19, '0066426900', 'MOHAMMAD HAFIZAM', '123456', 'siswa'),
(20, '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', '123456', 'siswa'),
(21, '0042667649', 'MUHAMMAD SUDARSONO', '123456', 'siswa'),
(22, '0065025241', 'NANDA SUCI WULANDARI', '123456', 'siswa'),
(23, '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', '123456', 'siswa'),
(24, '0068089244', 'RISKI AMALIA PUTRI', '123456', 'siswa'),
(25, '0076268723', 'RIZKIYATUL LAILIYAH', '123456', 'siswa'),
(26, '0076490949', 'RYAN HIDAYAT', '123456', 'siswa'),
(27, '0062422700', 'YUNIKE MUANIFATUS SAFITRI', '123456', 'siswa'),
(28, '0071378766', 'ZEINUR ALIF', '123456', 'siswa'),
(30, '0064644106', 'ALYA SHEILA SURYA AGNESIA', '123456', 'siswa'),
(31, '0067370893', 'ALYA SOFIYATUL WIDAD', '123456', 'siswa'),
(32, '0072754710', 'AMALIYA FITRIYANTI', '123456', 'siswa'),
(33, '0063252549', 'AMANDA WAHYUNING PRATIWI', '123456', 'siswa'),
(34, '0077967364', 'APRILIA ADEL SINTIA BELA', '123456', 'siswa'),
(35, '0078270826', 'AULIA ZAHIRA RAHMASARI', '123456', 'siswa'),
(38, '0068336295', 'ELZA ILMALIA', '123456', 'siswa'),
(39, '0077378141', 'IRMA YUNITA', '123456', 'siswa'),
(40, '0064226543', 'KADEK MARIYANA', '123456', 'siswa'),
(42, '0072194035', 'M. DANIS ALFAIS', '123456', 'siswa'),
(44, '0072511458', 'NELA SALMA AULIA', '123456', 'siswa'),
(45, '0076571100', 'NEZHA AULIA DAMAYANTI', '123456', 'siswa'),
(46, '3069393111', 'NURFINA', '123456', 'siswa'),
(47, '0078877559', 'OLGA CINTYA BELLA', '123456', 'siswa'),
(50, '0073019730', 'SAFARINA', '123456', 'siswa'),
(51, '3067556402', 'SAMSUL ARIFIN', '123456', 'siswa'),
(52, '0073363877', 'SITI LAILATUL SOFIANA', '123456', 'siswa'),
(54, '0068735572', 'ADIT SAPUTRA', '123456', 'siswa'),
(56, '0076992053', 'ALDO AINUR ROFIK', '123456', 'siswa'),
(61, '0061587247', 'DWI ANDRE YOSEPTINUS', '123456', 'siswa'),
(63, '0138108186', 'EGA EDI PRATAMA', '123456', 'siswa'),
(65, '0079052014', 'FRANS GERALDINO SEFILTO W', '123456', 'siswa'),
(68, '0069714276', 'IBNU ADAM', '123456', 'siswa'),
(75, '0067798990', 'MOH. FEBRIYANTO PRATAMA', '123456', 'siswa'),
(77, '0068290329', 'MUHAMMAD EKO WAHYUDI', '123456', 'siswa'),
(78, '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', '123456', 'siswa'),
(79, '0067242160', 'NAUFAL DAFFA NASHIF HILMI', '123456', 'siswa'),
(82, '0061290613', 'PUTRA FERIYANTO', '123456', 'siswa'),
(85, '0079617897', 'ROY FIRMAN SYAH', '123456', 'siswa'),
(86, '0077804332', 'SABAR ASTIAR', '123456', 'siswa'),
(88, '0068428929', 'YUDHA ANGGARA SETIAWAN', '123456', 'siswa'),
(89, '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', '123456', 'siswa'),
(90, '3072792967', 'DIKI AMRIAN', '123456', 'siswa'),
(91, '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', '123456', 'siswa'),
(101, 'nurul', 'Nuruh Hidayah', 'guru123', 'guru'),
(102, 'aini', 'Aini Abdul Cholis,S.Pd', 'guru123', 'guru'),
(103, 'siska', 'Siska Purwanti, S.E', 'guru123', 'guru'),
(104, 'subur', 'Dra. Subur Hindartin', 'guru123', 'guru'),
(105, 'rizal', 'Syamsul Rizal, S.Pd.I.', 'guru123', 'guru'),
(106, 'nurmala', 'Nurmala Evayanti, S.Pd', 'guru123', 'guru'),
(107, 'imtiana', 'Imtiana,S.Pd', 'guru123', 'guru'),
(108, 'yudi', 'Dwi Wahyudi,S.T', 'guru123', 'guru'),
(109, 'rohim', 'Moh.Rohim, S.T', 'guru123', 'guru'),
(1111, 'siswa', 'siswa', '123456', 'siswa');

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
  MODIFY `id_absensi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
