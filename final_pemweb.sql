-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 01:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_pemweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kas`
--

CREATE TABLE `tb_kas` (
  `ID` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `keluar` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kas`
--

INSERT INTO `tb_kas` (`ID`, `status`, `tanggal`, `deskripsi`, `jumlah`, `keluar`, `id_user`) VALUES
(1, 'masuk', '2021-06-01', 'saldo bulan juni 2021', 550000, 0, 1),
(2, 'masuk', '2021-06-02', 'coba jadi 15k', 15000, 0, 1),
(6, 'keluar', '2021-06-02', 'Cicilan Motor', 0, 700000, 1),
(7, 'keluar', '2021-06-01', 'tes dulu 100k', 0, 100000, 1),
(8, 'masuk', '2021-06-01', 'Saldo bulan juni 2021', 550000, 0, 3),
(9, 'masuk', '2021-06-02', 'Terima Bayar pak agus', 250000, 0, 3),
(10, 'keluar', '2021-06-04', 'Cicilan Motor', 0, 700000, 3),
(11, 'keluar', '2021-06-10', 'bayar listrik bulan mei 2021', 0, 250000, 3),
(12, 'masuk', '2021-06-08', 'rejeki', 200000, 0, 3),
(13, 'masuk', '2021-06-21', 'rejeki 150k', 150000, 0, 3),
(14, 'keluar', '2021-06-22', 'bayar listrik 150k', NULL, 150000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `pass` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nomor_telp` varchar(15) NOT NULL,
  `gambar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `pass`, `nama`, `email`, `nomor_telp`, `gambar`) VALUES
(1, 'ipul', '12345', 'Bagas Adil Putrajaya', 'bagazap@gmail.com', '081347510059', ''),
(2, 'steff', '12345', 'Stefanus AF', 'stefanusaf@gmail.com', '081347510059', ''),
(3, 'Risav', '12345', 'Risav Arrahman', 'risavbm@gmail.com', '081347510059', '60d1c72b1a5a2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kas`
--
ALTER TABLE `tb_kas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kas`
--
ALTER TABLE `tb_kas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kas`
--
ALTER TABLE `tb_kas`
  ADD CONSTRAINT `tb_kas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
