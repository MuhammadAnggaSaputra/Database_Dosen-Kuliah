-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2020 at 09:01 AM
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
-- Database: `latihan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `ID_Dosen` char(5) NOT NULL,
  `Nama_Dosen` char(30) NOT NULL,
  `Nama_Depan_Dosen` char(10) NOT NULL,
  `Nama_Belakang_Dosen` char(10) NOT NULL,
  `Email_Dosen` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`ID_Dosen`, `Nama_Dosen`, `Nama_Depan_Dosen`, `Nama_Belakang_Dosen`, `Email_Dosen`) VALUES
('IF001', 'ANGGORO ARI NURCAHYO', 'ANGGORO', 'NURCAHYO', 'ANGGORO@MAIL.UNPAS.AC.ID'),
('IF002', 'FAJAR DARMAWAN', 'FAJAR', 'DARMAWAN', 'FAJAR@MAIL.UNPAS.AC.ID'),
('IF003', 'ADE SUKENDAR', 'ADE', 'SUKENDAR', 'ADE@MAIL.UNPAS.AC.ID'),
('IF004', 'R.SANDHIKA GALIH AMALGA', 'SANDHIKA', 'GALIH', 'SANDHIKA@MAIL.UNPAS.AC.ID'),
('IF005', 'MIFTAHUL FADLI MUTTAQIN', 'MIFTAHUL', 'MUTTAQIN', 'MIFTAHUL@MAIL.UNPAS.AC.ID');

-- --------------------------------------------------------

--
-- Table structure for table `kuliah`
--

CREATE TABLE `kuliah` (
  `ID_Kuliah` char(8) NOT NULL,
  `Nama_Kuliah` char(30) NOT NULL,
  `SKS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuliah`
--

INSERT INTO `kuliah` (`ID_Kuliah`, `Nama_Kuliah`, `SKS`) VALUES
('IF161201', 'DASAR PEMROGRAMAN', 4),
('IF161202', 'MATEMATIKA LOGIKA', 2),
('IF164204', 'PEMROGRAMAN WEB', 3),
('IF164205', 'PERANCANGAN BASIS DATA', 3),
('IF164307', 'POLA PIKIR KOMPUTASIONAL', 2);

-- --------------------------------------------------------

--
-- Table structure for table `r1`
--

CREATE TABLE `r1` (
  `Tanggal_Ajar` date DEFAULT NULL,
  `ID_Dosen` char(5) NOT NULL,
  `ID_Kuliah` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `r1`
--

INSERT INTO `r1` (`Tanggal_Ajar`, `ID_Dosen`, `ID_Kuliah`) VALUES
('2020-04-25', 'IF001', 'IF164205'),
('2020-04-26', 'IF003', 'IF161201'),
('2020-04-27', 'IF005', 'IF161202'),
('2020-04-28', 'IF002', 'IF164307'),
('2020-04-29', 'IF004', 'IF164204');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`ID_Dosen`);

--
-- Indexes for table `kuliah`
--
ALTER TABLE `kuliah`
  ADD PRIMARY KEY (`ID_Kuliah`);

--
-- Indexes for table `r1`
--
ALTER TABLE `r1`
  ADD KEY `ID_Dosen` (`ID_Dosen`),
  ADD KEY `ID_Kuliah` (`ID_Kuliah`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `r1`
--
ALTER TABLE `r1`
  ADD CONSTRAINT `r1_ibfk_1` FOREIGN KEY (`ID_Dosen`) REFERENCES `dosen` (`ID_Dosen`),
  ADD CONSTRAINT `r1_ibfk_2` FOREIGN KEY (`ID_Kuliah`) REFERENCES `kuliah` (`ID_Kuliah`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
