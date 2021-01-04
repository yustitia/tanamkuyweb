-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2021 at 08:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hp_sistem`
--

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `id_mr` int(11) NOT NULL,
  `ph` varchar(128) NOT NULL,
  `ldr` varchar(128) NOT NULL,
  `ppm` varchar(255) NOT NULL,
  `ec` varchar(255) NOT NULL,
  `suhu` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`id_mr`, `ph`, `ldr`, `ppm`, `ec`, `suhu`, `waktu`) VALUES
(1, '7.00', '557', '0.00', '0.00', '27.56', '2021-01-04 08:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `role_id` varchar(128) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `password`, `email`, `foto`, `role_id`, `status`) VALUES
(10116503, 'adisri', '$2y$10$QYxfWQP4YBiowBMJxaViqesGfV.fvKhmxJ0DZgtjASUhcFOhT2lSm', 'yustitiaarofa22@gmail.com', 'weqweqw.jpg', 'admin', 1),
(10116504, 'nuzulia', '$2y$10$/AxvzRv1yFAdR5HoOAtYr.DXF2EkGbDvNHd6zcavcvaq.fM9b6fyy', 'zuliaap@gmail.com', 'weqweqw.jpg', 'petani', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_relay`
--

CREATE TABLE `tabel_relay` (
  `id_relay` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_monitoring`
--

CREATE TABLE `tb_monitoring` (
  `id_m` int(11) NOT NULL,
  `ph` varchar(128) NOT NULL,
  `ldr` varchar(128) NOT NULL,
  `ppm` varchar(128) NOT NULL,
  `ec` varchar(128) NOT NULL,
  `suhu` varchar(128) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_monitoring`
--

INSERT INTO `tb_monitoring` (`id_m`, `ph`, `ldr`, `ppm`, `ec`, `suhu`, `waktu`) VALUES
(64, '7.00', '630', '0.00', '0.00', '26.81', '2021-01-04 07:58:56'),
(65, '7.00', '627', '0.00', '0.00', '26.81', '2021-01-04 07:58:57'),
(66, '7.00', '627', '0.00', '0.00', '26.81', '2021-01-04 07:58:58'),
(67, '7.00', '627', '0.00', '0.00', '26.81', '2021-01-04 07:58:59'),
(68, '7.00', '630', '0.00', '0.00', '26.81', '2021-01-04 07:59:00'),
(69, '7.00', '630', '0.00', '0.00', '26.81', '2021-01-04 07:59:01'),
(70, '7.00', '630', '0.00', '0.00', '26.81', '2021-01-04 07:59:02'),
(71, '7.00', '629', '0.00', '0.00', '26.81', '2021-01-04 07:59:03'),
(72, '7.00', '629', '0.00', '0.00', '26.81', '2021-01-04 07:59:04'),
(73, '7.00', '629', '0.00', '0.00', '26.81', '2021-01-04 07:59:05'),
(74, '7.00', '632', '0.00', '0.00', '26.88', '2021-01-04 07:59:06'),
(75, '7.00', '632', '0.00', '0.00', '26.88', '2021-01-04 07:59:07'),
(76, '7.00', '632', '0.00', '0.00', '26.88', '2021-01-04 07:59:08'),
(77, '7.00', '619', '0.00', '0.00', '26.88', '2021-01-04 07:59:09'),
(78, '7.00', '619', '0.00', '0.00', '26.88', '2021-01-04 07:59:11'),
(79, '7.00', '619', '0.00', '0.00', '26.88', '2021-01-04 07:59:12'),
(80, '7.00', '625', '0.00', '0.00', '26.81', '2021-01-04 07:59:13'),
(81, '7.00', '625', '0.00', '0.00', '26.81', '2021-01-04 07:59:14'),
(82, '7.00', '625', '0.00', '0.00', '26.81', '2021-01-04 07:59:15'),
(83, '7.00', '625', '0.00', '0.00', '26.88', '2021-01-04 07:59:16'),
(84, '7.00', '625', '0.00', '0.00', '26.88', '2021-01-04 07:59:17'),
(85, '7.00', '625', '0.00', '0.00', '26.88', '2021-01-04 07:59:18'),
(86, '7.00', '628', '0.00', '0.00', '26.81', '2021-01-04 07:59:19'),
(87, '7.00', '628', '0.00', '0.00', '26.81', '2021-01-04 07:59:20'),
(88, '7.00', '628', '0.00', '0.00', '26.81', '2021-01-04 07:59:21'),
(89, '7.00', '626', '0.00', '0.00', '26.88', '2021-01-04 07:59:22'),
(90, '7.00', '626', '0.00', '0.00', '26.88', '2021-01-04 07:59:23'),
(91, '7.00', '626', '0.00', '0.00', '26.88', '2021-01-04 07:59:24'),
(92, '7.00', '617', '0.00', '0.00', '26.81', '2021-01-04 07:59:25'),
(93, '7.00', '617', '0.00', '0.00', '26.81', '2021-01-04 07:59:26'),
(94, '7.00', '617', '0.00', '0.00', '26.81', '2021-01-04 07:59:27'),
(95, '7.00', '445', '1.00', '0.00', '26.81', '2021-01-04 07:59:28'),
(96, '7.00', '445', '1.00', '0.00', '26.81', '2021-01-04 07:59:29'),
(97, '7.00', '445', '1.00', '0.00', '26.81', '2021-01-04 07:59:30'),
(98, '7.00', '461', '0.00', '0.00', '26.81', '2021-01-04 07:59:31'),
(99, '7.00', '461', '0.00', '0.00', '26.81', '2021-01-04 07:59:33'),
(100, '7.00', '461', '0.00', '0.00', '26.81', '2021-01-04 07:59:34'),
(101, '7.00', '459', '0.00', '0.00', '26.81', '2021-01-04 07:59:35'),
(102, '7.00', '459', '0.00', '0.00', '26.81', '2021-01-04 07:59:36'),
(103, '7.00', '459', '0.00', '0.00', '26.81', '2021-01-04 07:59:37'),
(104, '7.00', '449', '0.00', '0.00', '26.81', '2021-01-04 07:59:38'),
(105, '7.00', '449', '0.00', '0.00', '26.81', '2021-01-04 07:59:39'),
(106, '7.00', '449', '0.00', '0.00', '26.81', '2021-01-04 07:59:40'),
(107, '7.00', '449', '0.00', '0.00', '26.88', '2021-01-04 07:59:41'),
(108, '7.00', '449', '0.00', '0.00', '26.88', '2021-01-04 07:59:42'),
(109, '7.00', '449', '0.00', '0.00', '26.88', '2021-01-04 07:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengecekan`
--

CREATE TABLE `tb_pengecekan` (
  `id_pengecekan` int(10) NOT NULL,
  `id_tanaman` int(10) NOT NULL,
  `id_monitoring` int(10) NOT NULL,
  `status_tanaman` varchar(128) NOT NULL,
  `banyak_daun` varchar(128) NOT NULL,
  `banyak_buah` varchar(128) NOT NULL,
  `ukuran_pH` varchar(128) NOT NULL,
  `ukuran_PPM` varchar(128) NOT NULL,
  `status_suhu` varchar(128) NOT NULL,
  `status_cahaya` varchar(128) NOT NULL,
  `tanggal_monitoring` date NOT NULL,
  `tanggal_pengecekan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tanaman`
--

CREATE TABLE `tb_tanaman` (
  `id_tanaman` int(10) NOT NULL,
  `nama_tanaman` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id_mr`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  ADD PRIMARY KEY (`id_m`);

--
-- Indexes for table `tb_pengecekan`
--
ALTER TABLE `tb_pengecekan`
  ADD PRIMARY KEY (`id_pengecekan`),
  ADD UNIQUE KEY `id_tanaman` (`id_tanaman`),
  ADD UNIQUE KEY `id_monitoring` (`id_monitoring`);

--
-- Indexes for table `tb_tanaman`
--
ALTER TABLE `tb_tanaman`
  ADD PRIMARY KEY (`id_tanaman`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id_mr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tb_pengecekan`
--
ALTER TABLE `tb_pengecekan`
  MODIFY `id_pengecekan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tanaman`
--
ALTER TABLE `tb_tanaman`
  MODIFY `id_tanaman` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
