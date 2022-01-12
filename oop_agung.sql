-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 05:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop_agung`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_harga`
--

CREATE TABLE `tbl_harga` (
  `id` int(11) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_harga`
--

INSERT INTO `tbl_harga` (`id`, `harga`) VALUES
(1, 'Rp. 30.000 (1 jam)'),
(2, 'Rp. 50.000 (2 jam)'),
(3, 'Rp. 70.000 (3 jam)'),
(4, 'Rp. 90.000 (4 jam)'),
(5, 'Rp. 15.000 (1/2 Jam)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

CREATE TABLE `tbl_studio` (
  `id` int(11) NOT NULL,
  `kode_booking` varchar(6) NOT NULL,
  `nama_band` varchar(30) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi_studio` varchar(3) NOT NULL,
  `waktu` varchar(10) NOT NULL,
  `operator` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`id`, `kode_booking`, `nama_band`, `no_telpon`, `tanggal`, `lokasi_studio`, `waktu`, `operator`, `harga`) VALUES
(16, 'SB-01', 'Last Kiss', '081081081084', '2021-11-04', 'A', '21.00 WIB', 'Abang Studio', '3'),
(20, 'SB-03', 'ARA 120', '083083083083', '2021-11-03', 'A', '16.00 WIB', 'Abang Studio', '1'),
(21, 'SB-03', 'Threesixty', '086086087611', '2021-11-10', 'B', '20.00 WIB', 'Emba Studio', '4'),
(28, 'SB-05', 'Nocturnal', '081081081083', '2022-01-12', 'A', '20.00 WIB', 'Abang Studio', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_login` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `telepon` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_login`, `username`, `password`, `nama_pengguna`, `telepon`, `email`, `alamat`) VALUES
(1, 'band', 'dd733590ad205dff4d3b6db88a3fcb46', 'Virgoun', '081278780954', 'lastchild@gmail.com', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_harga`
--
ALTER TABLE `tbl_harga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_harga`
--
ALTER TABLE `tbl_harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
