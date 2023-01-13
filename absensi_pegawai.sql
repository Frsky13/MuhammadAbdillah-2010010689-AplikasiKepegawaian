-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 11:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` char(20) NOT NULL,
  `nip` char(20) NOT NULL,
  `kode_jabatan` char(20) NOT NULL,
  `tgl` date NOT NULL,
  `jam_masuk` varchar(20) NOT NULL,
  `jam_keluar` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `nip`, `kode_jabatan`, `tgl`, `jam_masuk`, `jam_keluar`, `keterangan`) VALUES
('01', '2341', '01', '2023-01-10', '08:15', '17:15', 'Hadir'),
('02', '2523', '02', '2023-01-10', '08:07', '17:13', 'Hadir'),
('03', '2821', '03', '2023-01-10', '08:15', '17:05', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` char(20) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`) VALUES
('01', 'CEO'),
('02', 'Direktur'),
('03', 'Bendaraha');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` char(20) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` enum('Islam','Kristen','Hindu','Budha') NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama_pegawai`, `jk`, `tgl_lahir`, `agama`, `alamat`) VALUES
('01', 'Abdil', 'Laki-laki', '2002-03-12', 'Islam', 'Jl Pasar Baru'),
('02', 'Edwan', 'Laki-laki', '2002-04-15', 'Islam', 'Jl Kelayan'),
('03', 'Ega', 'Perempuan', '2002-02-09', 'Islam', 'jl Sungai besar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `nip` (`nip`),
  ADD KEY `kode_jabatan` (`kode_jabatan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
