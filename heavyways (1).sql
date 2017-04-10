-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2017 at 09:48 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heavyways`
--

-- --------------------------------------------------------

--
-- Table structure for table `alat_db`
--

CREATE TABLE `alat_db` (
  `NamaAlat` varchar(60) NOT NULL,
  `ID` varchar(60) NOT NULL,
  `Model` varchar(60) NOT NULL,
  `Jumlah` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alat_db`
--

INSERT INTO `alat_db` (`NamaAlat`, `ID`, `Model`, `Jumlah`) VALUES
('ForkLift', '123333', 'fr230', '2'),
('Trucktor', '239429', 'truck', '1');

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `NamaPerusahaan` varchar(100) NOT NULL,
  `Alamat` varchar(250) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`NamaPerusahaan`, `Alamat`, `Username`, `Password`, `Level`) VALUES
('Heavyways', 'pbb c75', 'Heavyways', 'Heavyways', 'Admin'),
('PT Rajawali', 'jln bojongsoang 1', 'PT Rajawali', 'rajawali', 'user'),
('PT Wika', 'jalan bojongsoang 1 no 54', 'WIKA', 'WIKA', 'Vendor');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `Nama` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`Nama`, `Email`, `Subject`, `Message`) VALUES
('Toni', 'toni@gmail.com', 'toni', '');

-- --------------------------------------------------------

--
-- Table structure for table `leaseform`
--

CREATE TABLE `leaseform` (
  `NamaPerusahaan` varchar(100) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `NamaBarang` varchar(100) NOT NULL,
  `TanggalPeminjaman` date NOT NULL,
  `TanggalKembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaseform`
--

INSERT INTO `leaseform` (`NamaPerusahaan`, `Nama`, `NamaBarang`, `TanggalPeminjaman`, `TanggalKembali`) VALUES
('PT Wika', 'Toni', 'forklift', '2017-10-10', '2018-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `NamaDepan` varchar(100) NOT NULL,
  `NamaBelakang` varchar(100) NOT NULL,
  `Organization` varchar(100) NOT NULL,
  `JobPosition` varchar(100) NOT NULL,
  `JobTitle` varchar(100) NOT NULL,
  `CompanyWork` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`NamaDepan`, `NamaBelakang`, `Organization`, `JobPosition`, `JobTitle`, `CompanyWork`) VALUES
('Faisal', 'Tony', 'Finance', 'Manager', 'Manager Finance', 'PT Heavyways');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alat_db`
--
ALTER TABLE `alat_db`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `leaseform`
--
ALTER TABLE `leaseform`
  ADD PRIMARY KEY (`NamaBarang`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`CompanyWork`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
