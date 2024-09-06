-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2024 at 03:36 AM
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
  `id_absensi` varchar(100) NOT NULL,
  `nisn` varchar(12) NOT NULL,
  `nama_siswa` varchar(40) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tempat_pkl` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Hadir','Izin','Sakit','Alpha') NOT NULL,
  `keterangan` text,
  `id_guru` varchar(100) NOT NULL,
  `jam_absensi` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`id_absensi`, `nisn`, `nama_siswa`, `kelas`, `lokasi`, `tempat_pkl`, `tanggal`, `status`, `keterangan`, `id_guru`, `jam_absensi`) VALUES
('100', '0042667649', 'MUHAMMAD SUDARSONO', 'XII TKJ', '-7.9505956,114.3964316', 'Balaidesa Sidodadi', '2024-09-03', 'Hadir', 'Ini hari kedua saya', 'Aini Abdul Cholis,S.Pd', '10:24:29'),
('101', '0067568716', 'CHASBI MAULANA', 'XII TKJ', '-7.9509496,114.3963507', 'Balaidesa Sidodadi', '2024-09-03', 'Hadir', 'Sekarang saya masuk ke hari 2 PKL', 'Aini Abdul Cholis,S.Pd', '10:24:45'),
('102', '0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '-7.9530593,114.3978361', 'Balaidesa Sidodadi', '2024-09-03', 'Hadir', 'Saya hadir di hari ke 2 PKL ', 'Aini Abdul Cholis,S.Pd', '10:46:35'),
('103', '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.9889675,114.4023176', 'Puskesmas Wongsorejo', '2024-09-03', 'Hadir', '', 'Siska Purwanti, S.E', '10:50:48'),
('104', '0073363877', 'SITI LAILATUL SOFIANA', 'XII AKL', '-7.9225848,114.3945141', 'KSP Artha Anugrah Wonorejo', '2024-09-03', 'Hadir', '', 'Imtiana,S.Pd', '11:08:16'),
('105', '0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '-7.9572065,114.3965996', 'BANK Nusamba', '2024-09-03', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '11:10:32'),
('106', '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '-7.9785435,114.3968429', 'Balaidesa Alasrejo', '2024-09-03', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '11:42:33'),
('107', '0068735572', 'ADIT SAPUTRA', 'XII TKRO', '-7.9322848,114.3873772', 'Yudha Putra ', '2024-09-03', 'Hadir', '', 'Dwi Wahyudi,S.T', '11:58:42'),
('108', '0069714276', 'IBNU ADAM', 'XII TKRO', '-7.9322848,114.3873772', 'Yudha Putra', '2024-09-03', 'Hadir', '', 'Dwi Wahyudi,S.T', '11:59:18'),
('109', '0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '-7.9322848,114.3873772', 'Yudha Putra ', '2024-09-03', 'Hadir', '', 'Dwi Wahyudi,S.T', '12:00:00'),
('110', '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '-7.9322848,114.3873772', 'Yudha Putra ', '2024-09-03', 'Hadir', '', 'Dwi Wahyudi,S.T', '12:00:21'),
('111', '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9322848,114.3873772', 'Yudha Putra ', '2024-09-03', 'Hadir', '', 'Dwi Wahyudi,S.T', '12:04:46'),
('112', '0077967364', 'APRILIA ADEL SINTIA BELA', 'XII AKL', '-7.9888937,114.4022802', 'Puskesmas Wongsorejo', '2024-09-03', 'Hadir', '', 'Siska Purwanti, S.E', '13:00:53'),
('113', '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9874618,114.4011784', 'Puskesmas Wongsorejo', '2024-09-03', 'Hadir', '', 'Siska Purwanti, S.E', '13:02:08'),
('114', '0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '-7.9571889,114.3966541', 'BANK Nusamba', '2024-09-03', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '13:10:49'),
('115', '0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '-7.9571709,114.3966752', 'BANK Nusamba', '2024-09-03', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '13:16:36'),
('116', '0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '-7.929856,114.3963648', 'Taman Nasional Baluran', '2024-09-03', 'Hadir', 'datang jam 07.10', 'Dra.Subur Hindartin', '13:29:01'),
('117', '0064226543', 'KADEK MARIYANA', 'XII AKL', '-7.9631086,114.3974757', 'PDAM Wongsorejo', '2024-09-03', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '14:36:03'),
('118', '0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '-7.9631086,114.3974757', 'PDAM Wongsorejo', '2024-09-03', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '14:38:45'),
('119', '0138108186', 'EGA EDI PRATAMA', 'XII TKRO', '-7.9557337,114.3961623', 'Maharika Jaya', '2024-09-03', 'Hadir', '', 'Moh.Rohim, S.T', '15:31:10'),
('120', '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9557482,114.3960316', 'Maharika Jaya', '2024-09-03', 'Hadir', '', 'Moh.Rohim, S.T', '15:32:29'),
('121', '0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '-7.9557387,114.395927', 'Maharika Jaya', '2024-09-03', 'Hadir', 'Hadir 07.24', 'Moh.Rohim, S.T', '15:33:50'),
('122', '0061587247', 'DWI ANDRE YOSEPTINUS', 'XII TKRO', '-8.1924007,114.3755774', 'Cipta Agung motor Banyuwangi', '2024-09-03', 'Hadir', 'aktif ', 'Dwi Wahyudi,S.T', '15:38:06'),
('123', '0075276084', 'ANJAR PRASASTI', 'XII TKJ', '-7.9250256,114.407664', 'Taman Nasional Baluran', '2024-09-03', 'Hadir', '', 'Dra.Subur Hindartin', '16:47:58'),
('124', '0079617897', 'ROY FIRMAN SYAH', 'XII TKRO', '-7.9557666,114.3959085', 'Maharika Jaya', '2024-09-03', 'Hadir', '', 'Moh.Rohim, S.T', '17:07:26'),
('125', '0068290329', 'MUHAMMAD EKO WAHYUDI', 'XII TKRO', '-7.9595904,114.4169412', 'Yudha Putra ', '2024-09-03', 'Hadir', '', 'Dwi Wahyudi,S.T', '20:30:00'),
('126', '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', 'XII TKJ', '-7.9911362,114.4019884', 'Kantor Kecamatan Wongsorejo', '2024-09-04', 'Hadir', '', 'Dra.Subur Hindartin', '07:06:20'),
('127', '0066509967', 'EKA WULANDARI', 'XII TKJ', '-7.9397922,114.391447', 'Balaidesa Bajulmati', '2024-09-04', 'Hadir', '', 'Imtiana,S.Pd', '07:36:15'),
('128', '0061587247', 'DWI ANDRE YOSEPTINUS', 'XII TKRO', '-8.2198877,114.3754334', 'Cipta Agung motor Banyuwangi', '2024-09-04', 'Hadir', 'aktif ', 'Dwi Wahyudi,S.T', '07:46:26'),
('129', '0071494876', 'DEWI WULAN SARI', 'XII TKJ', '-7.9397917,114.391442', 'Balaidesa Bajulmati', '2024-09-04', 'Hadir', '', 'Imtiana,S.Pd', '07:51:33'),
('130', '0063150279', 'CINTA SETIAWATI', 'XII TKJ', '-7.9397937,114.39144', 'Balaidesa Bajulmati', '2024-09-04', 'Hadir', '', 'Imtiana,S.Pd', '07:52:22'),
('131', '0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '-7.94253,114.4145467', 'Balaidesa Bimorejo', '2024-09-04', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:56:18'),
('132', '0076490949', 'RYAN HIDAYAT', 'XII TKJ', '-7.9425265,114.4145424', 'Balaidesa Bimorejo', '2024-09-04', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:57:24'),
('133', '0071378766', 'ZEINUR ALIF', 'XII TKJ', '-7.9258772,114.40255', 'Balaidesa Wonorejo', '2024-09-04', 'Hadir', '', 'Dra.Subur Hindartin', '08:00:01'),
('134', '0063856764', 'AHMAD FADIL', 'XII TKJ', '-7.9258942,114.4025369', 'Balaidesa Wonorejo', '2024-09-04', 'Hadir', '', 'Dra.Subur Hindartin', '08:01:08'),
('135', '3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '-7.9258071,114.402647', 'Balaidesa Wonorejo', '2024-09-04', 'Hadir', '', 'Dra.Subur Hindartin', '08:03:17'),
('136', '3067556402', 'SAMSUL ARIFIN', 'XII AKL', '-7.9258715,114.4025653', 'Balaidesa Wonorejo', '2024-09-04', 'Hadir', '', 'Dra. Subur Hindartin', '08:03:38'),
('137', '0062422700', 'YUNIKE MUANIFATUS SAFITRI', 'XII TKJ', '-7.9325764,114.3712784', 'Balaidesa Watukebo', '2024-09-04', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '08:06:18'),
('138', '0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '-7.9325827,114.3712705', 'Balaidesa Watukebo', '2024-09-04', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '08:23:35'),
('139', '0072446545', 'AHMAD NANDA HUSAINI', 'XII TKJ', '-7.9934503,114.4021443', 'Balaidesa Wongsorejo', '2024-09-04', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '09:31:24'),
('140', '0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '-7.9934444,114.4021528', 'Balaidesa Wongsorejo', '2024-09-04', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '09:32:31'),
('141', '0077378141', 'IRMA YUNITA', 'XII AKL', '-7.9421098,114.3525728', 'Kantor Kecamatan Wongsorejo', '2024-09-04', 'Sakit', 'Tidak bisa masuk karena sakit', 'Siska Purwanti, S.E', '09:34:13'),
('142', '0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '-7.9325812,114.3712788', 'Balaidesa Watukebo', '2024-09-04', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '09:49:11'),
('143', '0073363877', 'SITI LAILATUL SOFIANA', 'XII AKL', '-7.9226095,114.3945549', 'KSP Artha Anugrah Wonorejo', '2024-09-04', 'Hadir', 'Mengecek buku angsuran ', 'Imtiana,S.Pd', '09:57:52'),
('144', '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9218862,114.3933798', 'KSP Artha Anugrah Wonorejo', '2024-09-04', 'Hadir', 'Mengecek buku angsuran ', 'Imtiana,S.Pd', '10:02:31'),
('145', '0068336295', 'ELZA ILMALIA', 'XII AKL', '-7.9325809,114.3712765', 'Balai Desa Watukebo', '2024-09-04', 'Hadir', '', 'Syamsul Rizal, S.Pd.I.', '11:41:54'),
('146', '0075276084', 'ANJAR PRASASTI', 'XII TKJ', '-7.9207775,114.3875074', 'Taman Nasional Baluran', '2024-09-04', 'Hadir', '', 'Dra.Subur Hindartin', '11:47:14'),
('147', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '-7.921238521620475,114.38752045287967', 'Taman Nasional Baluran', '2024-09-04', 'Hadir', 'Hadir pada pukul 07.20', 'Dra.Subur Hindartin', '11:49:54'),
('148', '0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '-7.9207788,114.3875165', 'Taman Nasional Baluran', '2024-09-04', 'Hadir', '', 'Dra.Subur Hindartin', '11:51:16'),
('149', '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9888396,114.4021886', 'Puskesmas Wongsorejo', '2024-09-04', 'Hadir', '', 'Siska Purwanti, S.E', '11:52:47'),
('150', '0068735572', 'ADIT SAPUTRA', 'XII TKRO', '-7.9322805,114.3873665', 'Yudha Putra ', '2024-09-04', 'Hadir', '', 'Dwi Wahyudi,S.T', '11:55:14'),
('151', '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '-7.9322744,114.3873597', 'Yudha Putra ', '2024-09-04', 'Hadir', '', 'Dwi Wahyudi,S.T', '11:55:28'),
('152', '0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '-7.9322792,114.3873654', 'Yudha Putra ', '2024-09-04', 'Hadir', '', 'Dwi Wahyudi,S.T', '11:55:40'),
('153', '0069714276', 'IBNU ADAM', 'XII TKRO', '-7.9322584,114.387348', 'Yudha Putra', '2024-09-04', 'Hadir', '', 'Dwi Wahyudi,S.T', '11:56:13'),
('154', '0078270826', 'AULIA ZAHIRA RAHMASARI', 'XII AKL', '-7.940773,114.3920572', 'BANK Mandiri Cab.Banyuwangi', '2024-09-04', 'Hadir', '', 'Imtiana,S.Pd', '11:56:38'),
('155', '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9322714,114.3873611', 'Yudha Putra ', '2024-09-04', 'Hadir', '', 'Dwi Wahyudi,S.T', '11:57:04'),
('156', '0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '-7.9571771,114.3966686', 'BANK Nusamba', '2024-09-04', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '12:49:53'),
('157', '0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '-7.957164,114.3966762', 'BANK Nusamba', '2024-09-04', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '12:50:22'),
('158', '0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '-7.9571693,114.3966735', 'BANK Nusamba', '2024-09-04', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '12:51:25'),
('159', '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9557487,114.3961609', 'Maharika Jaya', '2024-09-04', 'Hadir', '', 'Moh.Rohim, S.T', '13:06:56'),
('160', '0138108186', 'EGA EDI PRATAMA', 'XII TKRO', '-7.9557311,114.3961535', 'Maharika Jaya', '2024-09-04', 'Hadir', '', 'Moh.Rohim, S.T', '13:07:33'),
('161', '0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '-7.9557409,114.3961652', 'Maharika Jaya', '2024-09-04', 'Hadir', 'Service karbu', 'Moh.Rohim, S.T', '13:11:21'),
('162', '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '-7.976231,114.3959759', 'Balaidesa Alasrejo', '2024-09-04', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '13:18:35'),
('163', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '-7.9785433,114.3968368', 'Balaidesa Alasrejo', '2024-09-04', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '13:20:21'),
('164', '0067568716', 'CHASBI MAULANA', 'XII TKJ', '-7.9434133,114.4164037', 'Balaidesa Sidodadi', '2024-09-04', 'Hadir', 'Hari ke 3 masuk', 'Aini Abdul Cholis,S.Pd', '13:35:23'),
('165', '0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '-7.9460877,114.4131432', 'Balaidesa Sidodadi', '2024-09-04', 'Hadir', 'Saya hadir di PKL hari ke 3', 'Aini Abdul Cholis,S.Pd', '13:37:39'),
('166', '0073386300', 'ADE BAGOS SUMANTRI', 'XII TKJ', '-7.9268701,114.4088128', 'Balaidesa Sidodadi', '2024-09-04', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '13:41:37'),
('167', '0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '-7.9631031,114.3974668', 'PDAM Wongsorejo', '2024-09-04', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '14:36:05'),
('168', '0064226543', 'KADEK MARIYANA', 'XII AKL', '-7.9631031,114.3974668', 'PDAM Wongsorejo', '2024-09-04', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '14:37:48'),
('169', '0077804332', 'SABAR ASTIAR', 'XII TKRO', '-7.9557448,114.3961463', 'Maharika Jaya', '2024-09-04', 'Hadir', '', 'Moh.Rohim, S.T', '15:19:33'),
('170', '0079617897', 'ROY FIRMAN SYAH', 'XII TKRO', '-7.9557608,114.3958785', 'Maharika Jaya', '2024-09-04', 'Hadir', '', 'Moh.Rohim, S.T', '15:22:51'),
('171', '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.9311258,114.410999', 'Puskesmas Wongsorejo', '2024-09-04', 'Hadir', '', 'Siska Purwanti, S.E', '15:31:42'),
('172', '0042667649', 'MUHAMMAD SUDARSONO', 'XII TKJ', '-7.9443374,114.4165669', 'Balaidesa Sidodadi', '2024-09-04', 'Hadir', 'Hari ke3', 'Aini Abdul Cholis,S.Pd', '20:26:41'),
('173', '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', 'XII TKJ', '-7.9912602,114.40195', 'Kantor Kecamatan Wongsorejo', '2024-09-05', 'Hadir', '', 'Dra.Subur Hindartin', '07:07:28'),
('174', '0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '-7.9274386,114.4052633', 'PDAM Wongsorejo', '2024-09-05', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '07:15:44'),
('175', '0064226543', 'KADEK MARIYANA', 'XII AKL', '-7.9274386,114.4052633', 'PDAM Wongsorejo', '2024-09-05', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '07:16:24'),
('176', '0066509967', 'EKA WULANDARI', 'XII TKJ', '-7.9397861,114.3913957', 'Balaidesa Bajulmati', '2024-09-05', 'Hadir', '', 'Imtiana,S.Pd', '07:45:23'),
('177', '0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '-7.9934577,114.4021589', 'Balaidesa Wongsorejo', '2024-09-05', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '07:51:40'),
('178', '0071494876', 'DEWI WULAN SARI', 'XII TKJ', '-7.9397906,114.3914378', 'Balaidesa Bajulmati', '2024-09-05', 'Hadir', '', 'Imtiana,S.Pd', '07:54:49'),
('179', '0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '-7.9325821,114.3712832', 'Balaidesa Watukebo', '2024-09-05', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:59:04'),
('180', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '-7.921219073447117,114.38751642897837', 'Taman Nasional Baluran', '2024-09-05', 'Hadir', 'hadir pukul 07.13', 'Dra.Subur Hindartin', '08:00:25'),
('181', '0061587247', 'DWI ANDRE YOSEPTINUS', 'XII TKRO', '-8.1925641,114.3752797', 'Cipta Agung motor Banyuwangi', '2024-09-05', 'Hadir', 'aktif ', 'Dwi Wahyudi,S.T', '08:02:38'),
('182', '0071378766', 'ZEINUR ALIF', 'XII TKJ', '-7.9259046,114.4025276', 'Balaidesa Wonorejo', '2024-09-05', 'Hadir', '', 'Dra.Subur Hindartin', '08:02:55'),
('183', '0063856764', 'AHMAD FADIL', 'XII TKJ', '-7.9259089,114.402522', 'Balaidesa Wonorejo', '2024-09-05', 'Hadir', '', 'Dra.Subur Hindartin', '08:03:28'),
('184', '3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '-7.9258133,114.4026386', 'Balaidesa Wonorejo', '2024-09-05', 'Hadir', '', 'Dra.Subur Hindartin', '08:28:51'),
('185', '0062422700', 'YUNIKE MUANIFATUS SAFITRI', 'XII TKJ', '-7.9325776,114.3712785', 'Balaidesa Watukebo', '2024-09-05', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '08:29:29'),
('186', '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9227375,114.3948653', 'KSP Artha Anugrah Wonorejo', '2024-09-05', 'Hadir', 'Mengecek ulang angsuran ', 'Imtiana,S.Pd', '08:51:56'),
('187', '0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '-7.9571778,114.3966784', 'BANK Nusamba', '2024-09-05', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '09:11:37'),
('188', '0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '-7.9571762,114.3966697', 'BANK Nusamba', '2024-09-05', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '09:11:56'),
('189', '3067556402', 'SAMSUL ARIFIN', 'XII AKL', '-7.9259183,114.4025259', 'Balaidesa Wonorejo', '2024-09-05', 'Hadir', '', 'Dra. Subur Hindartin', '09:27:00'),
('190', '0067568716', 'CHASBI MAULANA', 'XII TKJ', '-7.9506058,114.3964287', 'Balaidesa Sidodadi', '2024-09-05', 'Hadir', 'Hadir', 'Aini Abdul Cholis,S.Pd', '09:41:37'),
('191', '0077378141', 'IRMA YUNITA', 'XII AKL', '-7.9913035,114.4022582', 'Kantor Kecamatan Wongsorejo', '2024-09-05', 'Hadir', '', 'Siska Purwanti, S.E', '09:45:34'),
('192', '0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '-7.9325803,114.3712784', 'Balaidesa Watukebo', '2024-09-05', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '09:48:03'),
('193', '0068336295', 'ELZA ILMALIA', 'XII AKL', '-7.9326066,114.3712707', 'Balai Desa Watukebo', '2024-09-05', 'Hadir', '', 'Syamsul Rizal, S.Pd.I.', '09:49:13'),
('194', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '-7.9785407,114.3968434', 'Balaidesa Alasrejo', '2024-09-05', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '09:59:32'),
('195', '0065025241', 'NANDA SUCI WULANDARI', 'XII TKJ', '-7.9404216666666665,114.39111999999999', 'Balaidesa Bajulmati', '2024-09-05', 'Hadir', '', 'Imtiana,S.Pd', '10:21:17'),
('196', '0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '-7.9506043,114.3964259', 'Balaidesa Sidodadi', '2024-09-05', 'Hadir', 'Saya hadir di PKL hari ke 4 ', 'Aini Abdul Cholis,S.Pd', '10:57:37'),
('197', '0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '-7.9425327,114.4146046', 'Balaidesa Bimorejo', '2024-09-05', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '11:05:32'),
('198', '0076490949', 'RYAN HIDAYAT', 'XII TKJ', '-7.9425155,114.4145437', 'Balaidesa Bimorejo', '2024-09-05', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '11:18:21'),
('199', '0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '-7.957188,114.3966696', 'BANK Nusamba', '2024-09-05', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '11:39:28'),
('200', '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.988998,114.4023324', 'Puskesmas Wongsorejo', '2024-09-05', 'Hadir', '', 'Siska Purwanti, S.E', '11:44:42'),
('201', '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '-7.9785424,114.3968062', 'Balaidesa Alasrejo', '2024-09-05', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '11:46:50'),
('202', '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9888253,114.4022269', 'Puskesmas Wongsorejo', '2024-09-05', 'Hadir', '', 'Siska Purwanti, S.E', '12:10:31'),
('203', '0078270826', 'AULIA ZAHIRA RAHMASARI', 'XII AKL', '-7.9407691,114.3920687', 'BANK Mandiri Cab.Banyuwangi', '2024-09-05', 'Hadir', '', 'Imtiana,S.Pd', '12:58:07'),
('204', '0138108186', 'EGA EDI PRATAMA', 'XII TKRO', '-7.9557514,114.396145', 'Maharika Jaya', '2024-09-05', 'Hadir', 'Hadir', 'Moh.Rohim, S.T', '13:40:27'),
('205', '0063150279', 'CINTA SETIAWATI', 'XII TKJ', '-7.9220369,114.4057102', 'Balaidesa Bajulmati', '2024-09-05', 'Hadir', '', 'Imtiana,S.Pd', '15:03:02'),
('206', '0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '-7.921217938301771,114.38751916982285', 'Taman Nasional Baluran', '2024-09-05', 'Hadir', '', 'Dra.Subur Hindartin', '16:01:07'),
('207', '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9285943,114.4108333', 'Yudha Putra ', '2024-09-05', 'Hadir', 'bongkar dan pasang radiator ', 'Dwi Wahyudi,S.T', '17:15:35'),
('208', '0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '-7.9289841,114.4071454', 'Yudha Putra ', '2024-09-05', 'Hadir', 'Saya tadi membenarkan radiator truk hino', 'Dwi Wahyudi,S.T', '17:26:16'),
('209', '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9388119,114.414221', 'Maharika Jaya', '2024-09-05', 'Hadir', '', 'Moh.Rohim, S.T', '17:39:56'),
('210', '0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '-7.9239503,114.4000919', 'Maharika Jaya', '2024-09-05', 'Hadir', 'Hadir ', 'Moh.Rohim, S.T', '17:47:40'),
('27', '0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '-7.9324736,114.3714241', 'Balaidesa Watukebo', '2024-09-02', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:54:03'),
('28', '0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '-7.9324736,114.3714241', 'Balaidesa Watukebo', '2024-09-02', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:55:49'),
('29', '0063416104', 'ALUF FIRMAN RAMADANI', 'XII TKJ', '-7.938542,114.4171303', 'Wifi RT RW Bimorejo', '2024-09-02', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:55:54'),
('30', '0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '-7.9425256,114.4145427', 'Balaidesa Bimorejo', '2024-09-02', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:56:22'),
('31', '0068336295', 'ELZA ILMALIA', 'XII AKL', '-7.9420349,114.3526737', 'Balai Desa Watukebo', '2024-09-02', 'Hadir', '', 'Syamsul Rizal, S.Pd.I.', '07:56:43'),
('32', '0076490949', 'RYAN HIDAYAT', 'XII TKJ', '-7.9425196,114.4145421', 'Balaidesa Bimorejo', '2024-09-02', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '08:11:04'),
('33', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '-7.9785439,114.3968354', 'Balaidesa Alasrejo', '2024-09-02', 'Hadir', 'Di kasi pengarahan ', 'Nurmala Evayanti, S.Pd', '08:13:27'),
('34', '0071987777', 'MOHAMMAD TEGAR ADI PRAYOGA', 'XII TKJ', '-7.9785516,114.3968317', 'Balaidesa Alasrejo', '2024-09-02', 'Hadir', 'Di kasik pengarahan', 'Nurmala Evayanti, S.Pd', '08:14:19'),
('35', '0072754710', 'AMALIYA FITRIYANTI', 'XII AKL', '-7.9630703,114.3975005', 'PDAM Wongsorejo', '2024-09-02', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '08:22:22'),
('36', '0063150279', 'CINTA SETIAWATI', 'XII TKJ', '-7.9397873,114.3914324', 'Balaidesa Bajulmati', '2024-09-02', 'Hadir', '', 'Imtiana,S.Pd', '08:23:51'),
('37', '0064226543', 'KADEK MARIYANA', 'XII AKL', '-7.9630766,114.39751', 'PDAM Wongsorejo', '2024-09-02', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '08:25:06'),
('38', '0071494876', 'DEWI WULAN SARI', 'XII TKJ', '-7.9397887,114.3914416', 'Balaidesa Bajulmati', '2024-09-02', 'Hadir', '', 'Imtiana,S.Pd', '08:25:25'),
('39', '0065025241', 'NANDA SUCI WULANDARI', 'XII TKJ', '-7.9397199999999994,114.39132999999998', 'Balaidesa Bajulmati', '2024-09-02', 'Hadir', '', 'Imtiana,S.Pd', '08:25:43'),
('40', '0066509967', 'EKA WULANDARI', 'XII TKJ', '-7.9397903,114.3914417', 'Balaidesa Bajulmati', '2024-09-02', 'Hadir', '-', 'Imtiana,S.Pd', '08:27:25'),
('41', '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', 'XII TKJ', '-7.9912695,114.4022289', 'Kantor Kecamatan Wongsorejo', '2024-09-02', 'Hadir', '', 'Dra.Subur Hindartin', '08:31:27'),
('42', '3069393111', 'NURFINA', 'XII AKL', '-7.9506,114.3964401', 'Balaidesa Sidodadi', '2024-09-02', 'Hadir', 'Membantu mempersiapkan acara malam puncak', 'Aini Abdul Cholis,S.Pd', '09:34:59'),
('43', '0067568716', 'CHASBI MAULANA', 'XII TKJ', '-7.9506,114.3964401', 'Balaidesa Sidodadi', '2024-09-02', 'Hadir', '', 'Aini Abdul Cholis,S.Pd', '10:02:32'),
('44', '0071378766', 'ZEINUR ALIF', 'XII TKJ', '-7.925861,114.4025713', 'Balaidesa Wonorejo', '2024-09-02', 'Hadir', '', 'Dra.Subur Hindartin', '10:05:17'),
('45', '3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '-7.9259215,114.4025289', 'Balaidesa Wonorejo', '2024-09-02', 'Hadir', '', 'Dra.Subur Hindartin', '10:09:44'),
('46', '3067556402', 'SAMSUL ARIFIN', 'XII AKL', '-7.9258903,114.4025413', 'Balaidesa Wonorejo', '2024-09-02', 'Hadir', '', 'Dra. Subur Hindartin', '10:12:58'),
('47', '0063856764', 'AHMAD FADIL', 'XII TKJ', '-7.9258343,114.4025967', 'Balaidesa Wonorejo', '2024-09-02', 'Hadir', '', 'Dra.Subur Hindartin', '10:14:13'),
('48', '0077378141', 'IRMA YUNITA', 'XII AKL', '-7.9913011,114.4021771', 'Kantor Kecamatan Wongsorejo', '2024-09-02', 'Hadir', 'Mengerjakan surat PPK dan PPS', 'Siska Purwanti, S.E', '10:39:55'),
('49', '0063252549', 'AMANDA WAHYUNING PRATIWI', 'XII AKL', '-7.9889829,114.4023334', 'Puskesmas Wongsorejo', '2024-09-02', 'Hadir', '', 'Siska Purwanti, S.E', '11:36:35'),
('50', '0068735572', 'ADIT SAPUTRA', 'XII TKRO', '-7.9322716,114.3873683', 'Yudha Putra ', '2024-09-02', 'Hadir', '', 'Dwi Wahyudi,S.T', '11:46:40'),
('51', '0077552763', 'MUHAMMAD RIZAL AL BUKHORI', 'XII TKRO', '-7.9322735,114.3873658', 'Yudha Putra ', '2024-09-02', 'Hadir', '', 'Dwi Wahyudi,S.T', '11:47:43'),
('52', '0078877559', 'OLGA CINTYA BELLA', 'XII AKL', '-7.9571969,114.3965495', 'BANK Nusamba', '2024-09-02', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '11:49:40'),
('53', '0067370893', 'ALYA SOFIYATUL WIDAD', 'XII AKL', '-7.9571762,114.3966647', 'BANK Nusamba', '2024-09-02', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '11:50:43'),
('54', '0064644106', 'ALYA SHEILA SURYA AGNESIA', 'XII AKL', '-7.9571611,114.3966786', 'BANK Nusamba', '2024-09-02', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '11:51:41'),
('55', '0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '-7.9934418,114.4021598', 'Balaidesa Wongsorejo', '2024-09-02', 'Hadir', 'Kegiatan pertama saya PKL adalah \r\n1.menurunkan bendera merah putih agustusan \r\n2.menyatat beberapa data \r\n3.memilah data bantuan per dusun  ', 'Nurmala Evayanti, S.Pd', '12:01:04'),
('56', '0072446545', 'AHMAD NANDA HUSAINI', 'XII TKJ', '-7.9933983,114.4021867', 'Balaidesa Wongsorejo', '2024-09-02', 'Hadir', '1.menurunkan bendera Indonesia \r\n2.mencatat data \r\n3 memilah data bantuan', 'Nurmala Evayanti, S.Pd', '12:05:41'),
('57', '0078270826', 'AULIA ZAHIRA RAHMASARI', 'XII AKL', '-7.9407692,114.392065', 'BANK Mandiri Cab.Banyuwangi', '2024-09-02', 'Hadir', '', 'Imtiana,S.Pd', '12:10:08'),
('58', '0068290329', 'MUHAMMAD EKO WAHYUDI', 'XII TKRO', '-7.9322773,114.3873659', 'Yudha Putra ', '2024-09-02', 'Hadir', '', 'Dwi Wahyudi,S.T', '12:34:34'),
('59', '0069714276', 'IBNU ADAM', 'XII TKRO', '-7.9322709,114.3873634', 'Yudha Putra', '2024-09-02', 'Hadir', '', 'Dwi Wahyudi,S.T', '12:35:42'),
('60', '0042667649', 'MUHAMMAD SUDARSONO', 'XII TKJ', '-7.9443345,114.4165628', 'Balaidesa Sidodadi', '2024-09-02', 'Hadir', 'Kegiatan hari pertama saya adalah membatu membuat ijazah', 'Aini Abdul Cholis,S.Pd', '12:48:01'),
('61', '0067798990', 'MOH. FEBRIYANTO PRATAMA', 'XII TKRO', '-7.9340176,114.3881998', 'Yudha Putra ', '2024-09-02', 'Hadir', '', 'Dwi Wahyudi,S.T', '12:49:54'),
('62', '0075276084', 'ANJAR PRASASTI', 'XII TKJ', '-7.9207903,114.3875025', 'Taman Nasional Baluran', '2024-09-02', 'Hadir', '', 'Dra.Subur Hindartin', '13:19:52'),
('63', '0072194035', 'M. DANIS ALFAIS', 'XII AKL', '-7.9888897,114.4022649', 'Puskesmas Wongsorejo', '2024-09-02', 'Hadir', '', 'Siska Purwanti, S.E', '13:35:54'),
('64', '0077967364', 'APRILIA ADEL SINTIA BELA', 'XII AKL', '-7.9889287,114.4022348', 'Puskesmas Wongsorejo', '2024-09-02', 'Hadir', '', 'Siska Purwanti, S.E', '13:37:11'),
('65', '0076571100', 'NEZHA AULIA DAMAYANTI', 'XII AKL', '-7.9888053,114.4022482', 'Puskesmas Wongsorejo', '2024-09-02', 'Hadir', '', 'Siska Purwanti, S.E', '13:41:17'),
('66', '0073659460', 'ADINDA DEVA VERISHA', 'XII AKL', '-7.9237446,114.4055834', 'BANK Mandiri Cab.Banyuwangi', '2024-09-02', 'Hadir', '', 'Imtiana,S.Pd', '15:49:14'),
('67', '0072379515', 'MOHAMMAD ASSRIL AFANDI', 'XII TKJ', '-7.9207828,114.387429', 'Taman Nasional Baluran', '2024-09-02', 'Hadir', 'hadir pada pukul 07.00', 'Dra.Subur Hindartin', '16:15:06'),
('68', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '-7.923705600842217,114.39988198282175', 'Taman Nasional Baluran', '2024-09-02', 'Hadir', 'HADIR PADA JAM 07.00', 'Dra.Subur Hindartin', '16:40:53'),
('69', '0076992053', 'ALDO AINUR ROFIK', 'XII TKRO', '-7.9290174,114.4071508', 'Yudha Putra ', '2024-09-02', 'Hadir', 'Hadir', 'Dwi Wahyudi,S.T', '16:59:30'),
('70', '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9226245,114.3945377', 'KSP Artha Anugrah Wonorejo', '2024-09-02', 'Hadir', 'Mencatat angsuran masuk ', 'Imtiana,S.Pd', '17:58:29'),
('71', '0073363877', 'SITI LAILATUL SOFIANA', 'XII AKL', '-7.9226245,114.3945377', 'KSP Artha Anugrah Wonorejo', '2024-09-02', 'Hadir', 'Mencatat angsuran masuk ', 'Imtiana,S.Pd', '18:02:34'),
('72', '0053691023', 'MOCH ADI SAPUTRA', 'XII TKJ', '-7.9530593,114.3978361', 'Balaidesa Sidodadi', '2024-09-02', 'Hadir', 'Saya sekarang masuk PKL hari pertama di balai desa Sidodadi serta mengikuti semua rangkaian acara kegiatan di balai desa Sidodadi ', 'Aini Abdul Cholis,S.Pd', '19:00:06'),
('73', '0067242160', 'NAUFAL DAFFA NASHIF HILMI', 'XII TKRO', '-7.9278094,114.4047758', 'Ria Mobil ( Alas Malang)', '2024-09-02', 'Hadir', 'Hadir', 'Moh.Rohim, S.T', '19:09:59'),
('74', '0073386300', 'ADE BAGOS SUMANTRI', 'XII TKJ', '-7.9505863,114.3964555', 'Balaidesa Sidodadi', '2024-09-02', 'Hadir', 'Hadir tepat waktu', 'Aini Abdul Cholis,S.Pd', '19:16:52'),
('75', '0068428929', 'YUDHA ANGGARA SETIAWAN', 'XII TKRO', '-7.9278407,114.4048277', 'Ria Mobil ( Alas Malang)', '2024-09-02', 'Hadir', '', 'Moh.Rohim, S.T', '19:30:42'),
('76', '0061290613', 'PUTRA FERIYANTO', 'XII TKRO', '-7.9388076,114.4142137', 'Maharika Jaya', '2024-09-02', 'Hadir', '', 'Moh.Rohim, S.T', '20:12:46'),
('77', '0079052014', 'FRANS GERALDINO SEFILTO W', 'XII TKRO', '-7.9241577,114.4000001', 'Maharika Jaya', '2024-09-02', 'Hadir', 'Hadir pada 07.15', 'Moh.Rohim, S.T', '20:28:53'),
('78', '0064039497', 'MOH. ARIS RAMADHAN', 'XII TKJ', '-7.9425102,114.417103', 'Balaidesa Bimorejo', '2024-09-02', 'Hadir', 'ngefotocopy surat kwitansi saja', 'Syamsul Rizal,S.Pd.I', '23:33:56'),
('79', '0063416104', 'ALUF FIRMAN RAMADANI', 'XII TKJ', '-7.9288743,114.4172402', 'Wifi RT RW Bimorejo', '2024-09-03', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '06:44:45'),
('80', '0076268723', 'RIZKIYATUL LAILIYAH', 'XII TKJ', '-7.9325827,114.3712746', 'Balaidesa Watukebo', '2024-09-03', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:46:47'),
('81', '0068336295', 'ELZA ILMALIA', 'XII AKL', '-7.932586,114.3712781', 'Balai Desa Watukebo', '2024-09-03', 'Hadir', '', 'Syamsul Rizal, S.Pd.I.', '07:50:23'),
('82', '0068089244', 'RISKI AMALIA PUTRI', 'XII TKJ', '-7.931375,114.3797103', 'Balaidesa Watukebo', '2024-09-03', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:50:31'),
('83', '0066426900', 'MOHAMMAD HAFIZAM', 'XII TKJ', '-7.9934472,114.4021479', 'Balaidesa Wongsorejo', '2024-09-03', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '07:53:06'),
('84', '0071378766', 'ZEINUR ALIF', 'XII TKJ', '-7.9259182,114.4025244', 'Balaidesa Wonorejo', '2024-09-03', 'Hadir', '', 'Dra.Subur Hindartin', '07:53:58'),
('85', '3148188344', 'FAREL ARDIANSYAH', 'XII TKJ', '-7.9258494,114.4025799', 'Balaidesa Wonorejo', '2024-09-03', 'Hadir', '', 'Dra.Subur Hindartin', '07:54:01'),
('86', '0062422700', 'YUNIKE MUANIFATUS SAFITRI', 'XII TKJ', '-7.932586,114.3712781', 'Balaidesa Watukebo', '2024-09-03', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '07:56:10'),
('87', '3067556402', 'SAMSUL ARIFIN', 'XII AKL', '-7.9258494,114.4025799', 'Balaidesa Wonorejo', '2024-09-03', 'Hadir', '', 'Dra. Subur Hindartin', '07:56:13'),
('88', '0063856764', 'AHMAD FADIL', 'XII TKJ', '-7.925867,114.4025824', 'Balaidesa Wonorejo', '2024-09-03', 'Hadir', '', 'Dra.Subur Hindartin', '07:57:48'),
('89', '0064449451', 'ALVIAN DANIEL SEPTIANTO\r\n', 'XII TKJ', '-7.9912726,114.4022999', 'Kantor Kecamatan Wongsorejo', '2024-09-03', 'Hadir', '', 'Dra.Subur Hindartin', '08:00:29'),
('90', '0063150279', 'CINTA SETIAWATI', 'XII TKJ', '-7.9397884,114.3914449', 'Balaidesa Bajulmati', '2024-09-03', 'Hadir', '', 'Imtiana,S.Pd', '08:02:42'),
('91', '0071494876', 'DEWI WULAN SARI', 'XII TKJ', '-7.9397853,114.3914104', 'Balaidesa Bajulmati', '2024-09-03', 'Hadir', '', 'Imtiana,S.Pd', '08:03:12'),
('92', '0065025241', 'NANDA SUCI WULANDARI', 'XII TKJ', '-7.939233333333334,114.391325', 'Balaidesa Bajulmati', '2024-09-03', 'Hadir', '', 'Imtiana,S.Pd', '08:03:52'),
('93', '0066509967', 'EKA WULANDARI', 'XII TKJ', '-7.9397934,114.3914391', 'Balaidesa Bajulmati', '2024-09-03', 'Hadir', '', 'Imtiana,S.Pd', '08:04:13'),
('94', '0064722912', 'MOH. AFANDI RAMADHAN', 'XII TKJ', '-7.9425253,114.4145453', 'Balaidesa Bimorejo', '2024-09-03', 'Hadir', '', 'Syamsul Rizal,S.Pd.I', '08:14:03'),
('95', '0069054501', 'PRIMA SURYO BALIS DRIMAWAN', 'XII TKJ', '-7.97854,114.3968382', 'Balaidesa Alasrejo', '2024-09-03', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '08:33:50'),
('96', '0072446545', 'AHMAD NANDA HUSAINI', 'XII TKJ', '-7.9934475,114.4021572', 'Balaidesa Wongsorejo', '2024-09-03', 'Hadir', '', 'Nurmala Evayanti, S.Pd', '08:37:38'),
('97', '0069689451', 'ZHAKARIA SAKTI HENDRA PRATAMA', 'XII TKJ', '-7.9212198455655205,114.38751008256999', 'Taman Nasional Baluran', '2024-09-03', 'Hadir', 'hadir pada pukul 07.16', 'Dra.Subur Hindartin', '09:24:49'),
('98', '0077378141', 'IRMA YUNITA', 'XII AKL', '-7.9913031,114.4022754', 'Kantor Kecamatan Wongsorejo', '2024-09-03', 'Hadir', 'mencatat transaksi konsumsi', 'Siska Purwanti, S.E', '09:42:52'),
('99', '0072511458', 'NELA SALMA AULIA', 'XII AKL', '-7.9226245,114.3945381', 'KSP Artha Anugrah Wonorejo', '2024-09-03', 'Hadir', 'Mengecek ulang saldo akhir ', 'Imtiana,S.Pd', '09:47:48');

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
('subur', 'Dra.Subur Hindartin'),
('imtiana', 'Imtiana,S.Pd');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurnal`
--

CREATE TABLE `tb_jurnal` (
  `id_jurnal` varchar(11) NOT NULL,
  `nisn` varchar(12) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `tahun_pelajaran` varchar(11) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `tempat_pkl` varchar(100) NOT NULL,
  `evadir_personal` varchar(200) NOT NULL,
  `evadir_sosial` varchar(200) NOT NULL,
  `foto_kegiatan` varchar(200) NOT NULL,
  `deskripsi_kegiatan` text NOT NULL,
  `lokasi` varchar(70) NOT NULL,
  `id_guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_jurnal`
--

INSERT INTO `tb_jurnal` (`id_jurnal`, `nisn`, `nama_siswa`, `tahun_pelajaran`, `semester`, `tanggal`, `tempat_pkl`, `evadir_personal`, `evadir_sosial`, `foto_kegiatan`, `deskripsi_kegiatan`, `lokasi`, `id_guru`) VALUES
('14', '0073659460', 'ADINDA DEVA VERISHA', '2024-2025', 'Ganjil', '2024-09-05', 'BANK Mandiri Cab.Banyuwangi', 'Disiplin, Jujur, Tanggung Jawab, Teliti/Cermat, Kreatif/Inovatif', 'Berkomunikasi dengan Pimpinan, Berkomunikasi/bekerjasama dengan karyawan, Berdiskusi dengan  rekan sekelompok', 'uploads/IMG_7540.jpg', 'sadsadsadassssssssssssssssssssssssssss', '-8.1657856,113.7147904', 'Imtiana,S.Pd');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL,
  `kelas` varchar(25) DEFAULT NULL,
  `tahun_pelajaran` varchar(11) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `tempat_pkl` varchar(100) DEFAULT NULL,
  `id_guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(3, 'dinda', '123456', 'dinda', 'siswa');

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
-- Indexes for table `tb_jurnal`
--
ALTER TABLE `tb_jurnal`
  ADD PRIMARY KEY (`id_jurnal`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
