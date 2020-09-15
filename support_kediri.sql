-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2020 at 09:08 PM
-- Server version: 10.3.22-MariaDB-1ubuntu1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `support_kediri`
--

-- --------------------------------------------------------

--
-- Table structure for table `ancer`
--

CREATE TABLE `ancer` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `nama` text NOT NULL,
  `inet` text NOT NULL,
  `voip` text NOT NULL,
  `alamat` text NOT NULL,
  `ancer` text NOT NULL,
  `lat` text NOT NULL DEFAULT '0',
  `long` text NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ancer`
--

INSERT INTO `ancer` (`id`, `token`, `nama`, `inet`, `voip`, `alamat`, `ancer`, `lat`, `long`, `date`) VALUES
(1, '', 'Bustomi', '1526062204342', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-07 00:59:20'),
(5, '', 'Bustomi', '15260622023', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-07 00:59:20'),
(6, '', 'Bustomi', '1526062205', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-07 00:59:20'),
(7, '', 'Bustomi', '1527762205', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-07 00:59:29'),
(8, '0.2669514330594669', 'Bustomi', '1527762277', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-07 01:37:50'),
(9, '0.04764751071604367', 'Bustomi', '1527761277', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-07 01:40:29'),
(10, '0.5436727102313614', 'Bustomi', '1527231277', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-07 01:41:02'),
(11, '0.14675629970133364', 'Bustomi', '1527231277', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-07 01:42:03'),
(12, '0.0006101844363375353', 'Bustomi', '1527231277', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-07 01:42:59'),
(13, '0.8914786525275236', 'Bustomi', '1527231200', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 10:19:33'),
(14, '0.5818051765361694', 'Bustomi', '1527231201', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 10:20:18'),
(15, '0.8316394590867937', 'Bustomi', '1527231221', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 10:21:55'),
(16, '0.7118965456756727', 'Bustomi', '1527231233', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 10:22:44'),
(17, '0.5736624182321506', 'Bustomi', '1527299933', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 10:27:33'),
(18, '0.11248032107246586', 'Bustomi', '2315543654656', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 10:30:00'),
(19, '0.4348122283757254', 'Bustomi', '436576876', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 10:32:23'),
(20, '0.11246695749736269', 'Bustomi', '436576876', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 12:11:53'),
(21, '0.534996603828974', 'Bustomi', '15230974', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 12:14:46'),
(22, '0.5438639663818552', 'Bustomi', '15230974973', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 12:16:11'),
(23, '0.4240352203089037', 'Bustomi', '15230974973', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 12:16:58'),
(24, '0.7037257846391776', 'Bustomi', '15230974', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 12:19:09'),
(25, '0.9556029285904508', 'Bustomi', '15230974', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 12:20:07'),
(26, '0.17602551919719112', 'Bustomi', '15230974', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '0', '0', '2020-09-08 12:20:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ancer`
--
ALTER TABLE `ancer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ancer`
--
ALTER TABLE `ancer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
