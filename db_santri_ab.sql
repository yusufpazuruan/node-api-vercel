-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 02:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bt0c1py6lc9las0dii7m`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `santri_id` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `mapel` varchar(50) DEFAULT NULL,
  `pengajar` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `status_pengajar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `santri_id`, `tanggal`, `mapel`, `pengajar`, `status`, `status_pengajar`) VALUES
(53, 11, '2023-07-09 01:32:28', 'matematika', 'ustadz yusuf matter', 'hadir', 'hadir'),
(54, 11, '2023-07-09 02:09:59', 'indo', 'ustadz yusuf matter', 'hadir', 'hadir'),
(55, 11, '2023-07-09 02:11:09', 'indo cina', 'ustadz yusuf matter', 'hadir', 'hadir'),
(56, 11, '2023-07-09 02:34:04', 'korea leanguage', 'ustadz yusuf matter', 'hadir', 'hadir'),
(57, 11, '2023-07-09 02:41:47', 'korea leanguage', 'ustadz yusuf matter', 'hadir', 'hadir'),
(58, 11, '2023-07-09 22:40:42', 'korea leanguage', 'ustadz yusuf matter', 'hadir', 'hadir'),
(59, 11, '2023-07-10 05:58:13', 'korea leanguage', 'ustadz yusuf matter', 'sakit', 'hadir'),
(63, 10, '2023-07-10 06:11:22', NULL, NULL, NULL, NULL),
(64, NULL, '2023-07-10 06:16:51', NULL, NULL, NULL, NULL),
(65, NULL, '2023-07-10 06:18:25', NULL, NULL, NULL, NULL),
(66, 10, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(67, 11, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', 'sakit', 'berhalangan'),
(68, 12, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(69, 13, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(70, 14, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(71, 15, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(72, 16, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(73, 17, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(74, 18, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(75, 19, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(76, 20, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(77, 21, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(78, 22, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(79, 23, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(80, 24, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(81, 25, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(82, 26, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(83, 27, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(84, 28, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(85, 29, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(86, 30, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(87, 31, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(88, 32, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(89, 33, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(90, 34, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan'),
(91, 35, '2023-07-10 06:22:48', 'Matematika', 'Ustadz Rijub Widodo', NULL, 'berhalangan');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `usia` int(3) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `nama`, `usia`, `tanggal`) VALUES
(7, 'ayu', 98, '2023-07-09 15:34:47'),
(8, 'ayu', 98, '2023-07-09 15:34:50'),
(9, 'ayu', 98, '2023-07-09 15:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `hafalan_alquran`
--

CREATE TABLE `hafalan_alquran` (
  `id` int(11) NOT NULL,
  `santri_id` int(11) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT current_timestamp(),
  `total` varchar(10) DEFAULT NULL,
  `surat` varchar(50) DEFAULT NULL,
  `halaman` varchar(50) DEFAULT NULL,
  `ayat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hafalan_alquran`
--

INSERT INTO `hafalan_alquran` (`id`, `santri_id`, `tanggal`, `total`, `surat`, `halaman`, `ayat`) VALUES
(16, 11, '2023-07-07 05:34:56', '10', 'arrahman', '15', '30'),
(17, 11, '2023-07-07 05:34:56', '20', 'arrahman akhir', '22', '21'),
(18, 11, NULL, '21', 'arrahman akhir web', '21', ''),
(19, 11, NULL, '22', 'arrahman akhir web 2', '22', ''),
(20, 11, '2023-07-07 05:34:56', '1', 'yusuf 1', '1', '1'),
(22, 11, NULL, '30', 'juz akhir', '30', '30'),
(23, 11, '2023-07-09 05:12:32', '30', 'juz akhir', '30', '30'),
(24, 11, '2023-07-09 05:17:39', '30', 'juz akhir 1', '30', '30'),
(25, 11, '2023-07-09 05:17:44', '30', 'juz akhir 2', '30', '30');

-- --------------------------------------------------------

--
-- Table structure for table `isasi`
--

CREATE TABLE `isasi` (
  `id` int(11) NOT NULL,
  `santri_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `dari_tgl` datetime DEFAULT current_timestamp(),
  `sampai_tgl` datetime DEFAULT NULL,
  `pejuang` varchar(50) DEFAULT NULL,
  `ttd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isasi`
--

INSERT INTO `isasi` (`id`, `santri_id`, `status`, `keterangan`, `dari_tgl`, `sampai_tgl`, `pejuang`, `ttd`) VALUES
(2, 11, 'sakit', 'sakit pinggang', '2023-07-09 19:31:59', '2023-07-09 20:31:00', 'guru', 'ustadz yusuf pazuruan'),
(3, 11, 'sakit', 'sakit gigi dalam', '2023-07-09 19:40:31', '2023-07-10 09:40:00', 'guru', 'ustadz rijub widodo'),
(4, 11, 'sakit', 'sakit gigi dalam', '2023-07-09 19:40:53', '2023-07-10 09:40:00', 'guru', 'ustadz rijub widodo'),
(5, 11, 'sakit', 'sakit gigi dalam', '2023-07-09 19:40:56', '2023-07-10 09:40:00', 'guru', 'ustadz rijub widodo'),
(6, 11, 'sakit', 'masuk angkin', '2023-07-09 19:42:41', '2023-07-10 22:42:00', 'guru', 'ustadz yusuf pazuruan'),
(7, 11, '', 'Sakit Pinggang', '2023-07-09 20:15:55', '2023-07-07 12:34:56', 'Guru', 'Ustadz Yusuf Pazuruan'),
(8, 11, 'HADIR', 'Sakit Pinggang', '2023-07-09 20:16:39', '2023-07-07 12:34:56', 'Guru', 'Ustadz Yusuf Pazuruan'),
(9, 11, 'HADIR', 'Sakit Pinggang', '2023-07-09 20:17:41', '2023-07-07 12:34:56', 'Guru', 'Ustadz Yusuf Pazuruan'),
(10, 11, '', 'Sakit Pinggang', '2023-07-09 20:25:23', '2023-07-07 12:34:56', 'Guru', 'Ustadz Yusuf Pazuruan'),
(11, 11, 'HADIR', 'Sakit Pinggang', '2023-07-09 20:26:16', '2023-07-07 12:34:56', 'Guru', 'Ustadz Yusuf Pazuruan'),
(12, 11, 'hadir', 'Sakit Pinggang 12', '2023-07-09 20:29:41', '2023-07-07 12:34:56', 'Guru', 'Ustadz Yusuf Pazuruan'),
(13, 11, 'hadir', 'Sakit Pinggang 13', '2023-07-09 20:32:33', '2023-07-07 12:34:56', 'Guru', 'Ustadz Yusuf Pazuruan'),
(14, 11, 'hadir', 'Sakit Pinggang 13', '2023-07-09 20:33:19', '2023-07-07 12:34:56', 'Guru', 'Ustadz Yusuf Pazuruan'),
(15, 11, 'hadir', 'Sakit Pinggang 14', '2023-07-09 20:33:27', '2023-07-07 12:34:56', 'Guru', 'Ustadz Yusuf Pazuruan');

-- --------------------------------------------------------

--
-- Table structure for table `santri`
--

CREATE TABLE `santri` (
  `id` int(11) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(12) DEFAULT NULL,
  `wali_kelas` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `santri`
--

INSERT INTO `santri` (`id`, `nis`, `nama`, `kelas`, `wali_kelas`, `active`, `created_at`) VALUES
(10, NULL, 'Abdul Rahman Ahmed', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(11, NULL, 'Abdurrahman Aziz', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(12, NULL, 'Ahmad Rizky Riyanto', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(13, NULL, 'Alfian Nur Khoirul Fajri', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(14, NULL, 'Arfan Farras Rahmatullah', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(15, NULL, 'Bagus Ismail', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(16, NULL, 'Daffa El Shirazy', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(17, NULL, 'Habib Isagi Yoi', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(18, NULL, 'Ibrah Kusuma Dinata', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(19, NULL, 'Jouvan Hermansyah', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(20, NULL, 'Kevian Priansah', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(21, NULL, 'Marwa Agung Mulyana', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(22, NULL, 'Mochamad Raffa Ruchyansyach', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(23, NULL, 'Muhammad Azka Habibie Rafsanjani', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(24, NULL, 'Muhammad Farhanuddin Ahsan', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(25, NULL, 'Muhammad Jiddan Darmawan', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(26, NULL, 'Muhammad Labib Badruzaman', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(27, NULL, 'Muhammad Rafa Fadlurrahman', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(28, NULL, 'Muhammad Rizki Ramadhan Siregar', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(29, NULL, 'Muhammad Ryan Annafi', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(30, NULL, 'Nugraha Sugiyanto Atlantico', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(31, NULL, 'Putra Adi Pratama', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(32, NULL, 'Rakha Putra Ardhiyanto', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(33, NULL, 'Reza Dwiyanto', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(34, NULL, 'Ridho Muhammad Iqbal', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(35, NULL, 'Zaid Tsabit Abbas', 'X MIPA 1', 'Ustadz Jeri Setiadi S.Pd', 1, '2023-07-08 05:53:28'),
(36, NULL, 'Banyu Pangumbaraan Martino', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(37, NULL, 'Azka Rochman Abdan', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(38, NULL, 'Ardan Baihaqi', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(39, NULL, 'Andhika Rahman Putra', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(40, NULL, 'Alfath Esfahan', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(41, NULL, 'Abdul Malik', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(42, NULL, 'Dika Maulana', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(43, NULL, 'Haykal Fazlur Rahman', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(44, NULL, 'Ibrahim Zaki Al Jauhari', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(45, NULL, 'M. Sani Taufiqurrahman', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(46, NULL, 'Muhamad Heru Hartawan', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(47, NULL, 'Muhamad Pajri \'Allaamulhuda', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(48, NULL, 'Muhammad Arsy', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(49, NULL, 'Muhammad Faiq Kautsar Dermawan', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:34'),
(50, NULL, 'Muhammad Fathan Nurdin', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(51, NULL, 'Muhammad Isam Falih', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(52, NULL, 'Muhammad Rafi Habibi', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(53, NULL, 'Muhammad Rafi Haidar Putra Santoso', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(54, NULL, 'Muhammad Riffa Irawan', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(55, NULL, 'Muhammad Thofur Kurniawan', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(56, NULL, 'Naufal Jatmikaningtyas', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(57, NULL, 'Qais Jinan Nayaka', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(58, NULL, 'Rakha Kaindra Rahman', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(59, NULL, 'Reyhan Nurcahya Firdaus', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(60, NULL, 'Rizqi Nur Syabani', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(61, NULL, 'Tora Maulana Ibrahim', 'X MIPA 2', 'Ustadz Ivan Arief Rachman S.Pd', 1, '2023-07-08 05:55:35'),
(62, NULL, 'Abdullah Zain', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(63, NULL, 'Ahmad Fauzi Endika', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(64, NULL, 'Aghni Aulia Mubarok', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(65, NULL, 'Alfata Dzaky Ramadhan', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(66, NULL, 'Anugrah Bumi', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(67, NULL, 'Aqil Rizqullah', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(68, NULL, 'Azzam Risqi Ramadhan', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(69, NULL, 'Dicky Ahmad Fadilah', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(70, NULL, 'Dimas Aditiya Nugraha', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(71, NULL, 'M.Fadhlan Rifa\'i', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(72, NULL, 'Miself Arieste Aprilna', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(73, NULL, 'Mochtar Aziz Anshorullah', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(74, NULL, 'Mohammad Ridho', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(75, NULL, 'Muhammad Aji Rafiansyah', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(76, NULL, 'Muhammad Alief Dhiaulhaq', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(77, NULL, 'Muhammad Fikry', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(78, NULL, 'Muhammad Guntur Al Ghifari', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(79, NULL, 'Muhammad Hasanudin', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(80, NULL, 'Muhammad Tian Arraafi', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(81, NULL, 'Nadzryl Adlii Faadhilah', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(82, NULL, 'Nevan Dilan Assidqi', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(83, NULL, 'Pandu Ahmad Zulkifli', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(84, NULL, 'Raisya Affansyah', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(85, NULL, 'Rechan Alhaq Sutisna', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52'),
(86, NULL, 'Rizky Maulana Gofar', 'X MIPA 3', 'Ustadz Mahmud S.Pd', 1, '2023-07-08 05:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `tahsin_alquran`
--

CREATE TABLE `tahsin_alquran` (
  `id` int(11) NOT NULL,
  `santri_id` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `surat` varchar(50) DEFAULT NULL,
  `halaman` varchar(50) DEFAULT NULL,
  `ayat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tahsin_alquran`
--

INSERT INTO `tahsin_alquran` (`id`, `santri_id`, `tanggal`, `surat`, `halaman`, `ayat`) VALUES
(3, 11, '2023-07-07 12:34:56', 'arrahman tahsin', '1', '1'),
(4, 11, NULL, 'arrahman tahsin web 2', '2', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `santri_id` (`santri_id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hafalan_alquran`
--
ALTER TABLE `hafalan_alquran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `santri_id` (`santri_id`);

--
-- Indexes for table `isasi`
--
ALTER TABLE `isasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `santri_id` (`santri_id`);

--
-- Indexes for table `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahsin_alquran`
--
ALTER TABLE `tahsin_alquran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `santri_id` (`santri_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hafalan_alquran`
--
ALTER TABLE `hafalan_alquran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `isasi`
--
ALTER TABLE `isasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `santri`
--
ALTER TABLE `santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tahsin_alquran`
--
ALTER TABLE `tahsin_alquran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`);

--
-- Constraints for table `hafalan_alquran`
--
ALTER TABLE `hafalan_alquran`
  ADD CONSTRAINT `hafalan_alquran_ibfk_1` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`);

--
-- Constraints for table `isasi`
--
ALTER TABLE `isasi`
  ADD CONSTRAINT `isasi_ibfk_1` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`);

--
-- Constraints for table `tahsin_alquran`
--
ALTER TABLE `tahsin_alquran`
  ADD CONSTRAINT `tahsin_alquran_ibfk_1` FOREIGN KEY (`santri_id`) REFERENCES `santri` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
