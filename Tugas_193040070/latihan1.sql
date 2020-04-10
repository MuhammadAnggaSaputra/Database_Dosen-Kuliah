-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2020 at 08:59 AM
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
-- Database: `latihan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `ID_Dosen` char(5) NOT NULL,
  `Nama_Dosen` char(30) NOT NULL,
  `Email_Dosen` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`ID_Dosen`, `Nama_Dosen`, `Email_Dosen`) VALUES
('IF001', 'ANGGORO ARI NURCAHYO', 'anggoro@mail.unpas.ac.id'),
('IF002', 'FAJAR DARMAWAN', 'fajar@mail.unpas.ac.id'),
('IF003', 'ADE SUKENDAR', 'ade@mail.unpas.ac.id'),
('IF004', 'R.SANDHIKA GALIH AMALGA', 'sandhika@mail.unpas.ac.id'),
('IF005', 'MIFTAHUL FADLI MUTTAQIN', 'miftahul@mail.unpas.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `kuliah`
--

CREATE TABLE `kuliah` (
  `ID_Kuliah` char(8) NOT NULL,
  `Nama_Kuliah` char(30) NOT NULL,
  `SKS` int(11) DEFAULT NULL,
  `ID_Dosen` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuliah`
--

INSERT INTO `kuliah` (`ID_Kuliah`, `Nama_Kuliah`, `SKS`, `ID_Dosen`) VALUES
('IF161201', 'DASAR PEMROGRAMAN', 4, 'IF003'),
('IF161202', 'MATEMATIKA LOGIKA', 2, 'IF005'),
('IF164204', 'PEMROGRAMAN WEB', 3, 'IF004'),
('IF164205', 'PERANCANGAN BASIS DATA', 3, 'IF001'),
('IF164307', 'POLA PIKIR KOMPUTASIONAL', 2, 'IF002');

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
  ADD PRIMARY KEY (`ID_Kuliah`),
  ADD KEY `ID_Dosen` (`ID_Dosen`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kuliah`
--
ALTER TABLE `kuliah`
  ADD CONSTRAINT `kuliah_ibfk_1` FOREIGN KEY (`ID_Dosen`) REFERENCES `dosen` (`ID_Dosen`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
