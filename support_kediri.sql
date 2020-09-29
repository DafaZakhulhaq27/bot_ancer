-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 29, 2020 at 10:31 PM
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
(27, '0.5702725884185471', 'Bustomi', '15230974', '03555236152', 'REJOWINANGUN ,KADEMANGAN', 'Ada gg masuk. rumah nomor 3 cat warna kuning', '-6.296334', '106.861419', '2020-09-29 15:26:53');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
