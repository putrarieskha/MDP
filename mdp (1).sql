-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31 Des 2018 pada 03.42
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_karyawan`
--

CREATE TABLE IF NOT EXISTS `master_karyawan` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `bagian` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_karyawan`
--

INSERT INTO `master_karyawan` (`id`, `id_pabrik`, `nama`, `bagian`) VALUES
(3, 'GSIP', 'Sis', 'elektrik'),
(4, 'GSIP', 'Har', 'elektrik'),
(5, 'GSIP', 'eko', 'elektrik'),
(6, 'GSIP', 'kik', 'mekanik'),
(7, 'GSPP', 'Sigit', 'elektrik'),
(10, 'BCL2', 'andi', 'elektrik'),
(11, 'BCL2', 'barkah', 'mekanik'),
(16, 'GSDI', 'Suharyanto', 'elektrik'),
(17, 'GSDI', 'Sismadi', 'elektrik'),
(18, 'GSDI', 'Eko Nugroho', 'elektrik'),
(19, 'GSDI', 'Iwan Yulianto', 'mekanik'),
(20, 'GSDI', 'Sangadun', 'mekanik'),
(21, 'GSDI', 'Ana Nugroho', 'mekanik'),
(22, 'GSDI', 'Eko Junianto', 'mekanik'),
(23, 'GSDI', 'Ahmad Fatoni', 'mekanik'),
(24, 'GSDI', 'Bayu Setiawan', 'mekanik'),
(25, 'GSDI', 'Catur Riyatno', 'mekanik'),
(26, 'GSDI', 'Denis Prayoga', 'mekanik'),
(27, 'GSDI', 'Eko Hadi Susanto', 'mekanik'),
(28, 'GSDI', 'Endang Supriyatno', 'mekanik'),
(29, 'GSDI', 'Hariyanto', 'mekanik'),
(30, 'GSDI', 'Setiawan', 'mekanik'),
(31, 'GSDI', 'Slamet Arianto', 'mekanik'),
(32, 'GSDI', 'Sri Rohmadi', 'mekanik'),
(33, 'GSDI', 'Sudarwinto', 'mekanik'),
(34, 'GSDI', 'Sukasdianto', 'mekanik'),
(35, 'GSDI', 'Sungkono', 'mekanik'),
(36, 'GSDI', 'Umarrudin', 'mekanik'),
(37, 'GSDI', 'Widodo Roziqin', 'mekanik'),
(60, 'ANA', 'Suharyanto', 'elektrik'),
(61, 'ANA', 'Sismadi', 'elektrik'),
(62, 'ANA', 'Eko Nugroho', 'elektrik'),
(63, 'ANA', 'Iwan Yulianto', 'mekanik'),
(64, 'ANA', 'Sangadun', 'mekanik'),
(65, 'ANA', 'Ana Nugroho', 'mekanik'),
(66, 'ANA', 'Eko Junianto', 'mekanik'),
(67, 'ANA', 'Ahmad Fatoni', 'mekanik'),
(68, 'ANA', 'Bayu Setiawan', 'mekanik'),
(69, 'ANA', 'Catur Riyatno', 'mekanik'),
(70, 'ANA', 'Denis Prayoga', 'mekanik'),
(71, 'ANA', 'Eko Hadi Susanto', 'mekanik'),
(72, 'ANA', 'Endang Supriyatno', 'mekanik'),
(73, 'ANA', 'Hariyanto', 'mekanik'),
(74, 'ANA', 'Setiawan', 'mekanik'),
(75, 'ANA', 'Slamet Arianto', 'mekanik'),
(76, 'ANA', 'Sri Rohmadi', 'mekanik'),
(77, 'ANA', 'Sudarwinto', 'mekanik'),
(78, 'ANA', 'Sukasdianto', 'mekanik'),
(79, 'ANA', 'Sungkono', 'mekanik'),
(80, 'ANA', 'Umarrudin', 'mekanik'),
(81, 'ANA', 'Widodo Roziqin', 'mekanik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pabrik`
--

CREATE TABLE IF NOT EXISTS `master_pabrik` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `tipe` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_pabrik`
--

INSERT INTO `master_pabrik` (`id`, `nama`, `tipe`) VALUES
(1, 'ANA', 'Mill 45 Tph'),
(2, 'BCL2 ', 'Mill 45 Tph'),
(3, 'BIM', 'Mill 45 Tph'),
(4, 'SINP', 'Mill 45 Tph'),
(5, 'CAN3', 'Mill 45 Tph'),
(6, 'CAP2', 'NPK'),
(7, 'CPN', 'Mill 45 Tph'),
(8, 'EDC', 'Mill 45 Tph'),
(9, 'EDI', 'Mill 45 Tph'),
(10, 'EDP', 'Mill 45 Tph'),
(11, 'KED', 'Refinery'),
(12, 'KED2', 'Mill 45 Tph'),
(13, 'KTS', 'Mill 45 Tph'),
(14, 'KTU', 'Mill 45 Tph'),
(15, 'LTT', 'Mill 45 Tph'),
(16, 'LTW', 'Mill 60 Tph'),
(17, 'NAL', 'Mill 60 Tph'),
(18, 'PLB', 'Mill 60 Tph'),
(19, 'PLB2', 'Mill 60 Tph'),
(20, 'PSK', 'Mill 60 Tph'),
(21, 'PWR', 'Mill 60 Tph'),
(22, 'SAI', 'Mill 60 Tph'),
(23, 'SAL1', 'Mill 60 Tph'),
(24, 'SAL2', 'Mill 60 Tph'),
(25, 'SAM', 'Mill 60 Tph'),
(26, 'GSDI', 'Mill 80 Tph'),
(27, 'GSIP', 'Mill 70 Tph'),
(28, 'SJA2', 'Mill 70 Tph'),
(29, 'SKP', 'Mill 70 Tph'),
(30, 'SLS1', 'Mill 70 Tph'),
(31, 'SLS2', 'Mill 70 Tph'),
(32, 'GSPP', 'Mill 70 Tph'),
(33, 'SRL1', 'Mill 70 Tph'),
(34, 'SRL2', 'Mill 70 Tph'),
(35, 'STN', 'Mill 70 Tph'),
(36, 'TBM', 'Mill 70 Tph'),
(37, 'TPP', 'Mill 70 Tph');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_station`
--

CREATE TABLE IF NOT EXISTS `master_station` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `nama` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_station`
--

INSERT INTO `master_station` (`id`, `id_pabrik`, `nama`) VALUES
(10, 'GSIP', 'Loading Ramp'),
(11, 'GSIP', 'Sterilizer'),
(12, 'GSIP', 'Threser'),
(13, 'GSIP', 'Press'),
(14, 'GSIP', 'Bunch Press'),
(15, 'GSIP', 'Kernel'),
(16, 'GSIP', 'Klarifikasi'),
(17, 'GSIP', 'Boiler'),
(18, 'GSIP', 'Effluent'),
(29, 'GSPP', 'Loading Ramp'),
(30, 'GSPP', 'Sterilizer'),
(31, 'GSPP', 'Threser'),
(32, 'GSPP', 'Press'),
(33, 'GSPP', 'Bunch Press'),
(34, 'GSPP', 'Kernel'),
(35, 'GSPP', 'Klarifikasi'),
(36, 'GSPP', 'Boiler'),
(37, 'GSPP', 'Effluent'),
(39, 'STN', 'Effluent'),
(65, 'ANA', 'Fruit Reception'),
(66, 'ANA', 'Threshing'),
(67, 'ANA', 'Pressing'),
(68, 'ANA', 'Bunch Press'),
(69, 'ANA', 'Kernel Line A'),
(70, 'ANA', 'Kernel Line B'),
(71, 'ANA', 'Klarifikasi'),
(72, 'ANA', 'Boiler 1 &amp; Softener'),
(73, 'ANA', 'BOILER 2'),
(74, 'ANA', 'BOILER 3'),
(75, 'ANA', 'KCP'),
(76, 'ANA', 'WTP'),
(77, 'ANA', 'Effluent'),
(78, 'ANA', 'Komposting'),
(79, 'ANA', 'Biodiesel'),
(80, 'ANA', 'Despatch'),
(81, 'GSDI', 'Fruit Reception'),
(82, 'GSDI', 'Threshing'),
(83, 'GSDI', 'Pressing'),
(84, 'GSDI', 'Bunch Press'),
(85, 'GSDI', 'Kernel Line A'),
(86, 'GSDI', 'Kernel Line B'),
(87, 'GSDI', 'Klarifikasi'),
(88, 'GSDI', 'Boiler 1 &amp; Softener'),
(89, 'GSDI', 'BOILER 2'),
(90, 'GSDI', 'BOILER 3'),
(91, 'GSDI', 'KCP'),
(92, 'GSDI', 'WTP'),
(93, 'GSDI', 'Effluent'),
(94, 'GSDI', 'Komposting'),
(95, 'GSDI', 'Biodiesel'),
(96, 'GSDI', 'Despatch'),
(97, 'GSDI', 'General');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_unit`
--

CREATE TABLE IF NOT EXISTS `master_unit` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `id_station` varchar(64) NOT NULL,
  `kode_asset` varchar(64) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `hm_installed` int(11) NOT NULL,
  `oil_monitoring` int(11) NOT NULL,
  `screwpress_monitoring` int(11) NOT NULL,
  `bunchpress_monitoring` int(11) NOT NULL,
  `hydrocyclone_monitoring` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_unit`
--

INSERT INTO `master_unit` (`id`, `id_pabrik`, `id_station`, `kode_asset`, `nama`, `hm_installed`, `oil_monitoring`, `screwpress_monitoring`, `bunchpress_monitoring`, `hydrocyclone_monitoring`) VALUES
(2, 'GSPP', 'Threser', 't1', 'Threser 1', 0, 0, 0, 0, 0),
(23, 'GSIP', 'Press', 'p1', 'Press 1', 0, 0, 0, 0, 0),
(24, 'GSIP', 'Press', '', 'Press 2', 0, 0, 0, 0, 0),
(25, 'GSIP', 'Press', '', 'Press 3', 0, 0, 0, 0, 0),
(26, 'GSIP', 'Press', '', 'Press 4', 0, 0, 0, 0, 0),
(27, 'GSIP', 'Press', '', 'Press 5', 0, 0, 0, 0, 0),
(28, 'GSIP', 'Press', '', 'Press 6', 0, 0, 0, 0, 0),
(29, 'GSIP', '', '', 'Press 7', 0, 0, 0, 0, 0),
(30, 'GSIP', '', '', 'Press 8', 0, 0, 0, 0, 0),
(31, 'GSIP', '', '', 'Press 9', 0, 0, 0, 0, 0),
(32, 'GSIP', '', '', 'Press 10', 0, 0, 0, 0, 0),
(33, 'GSIP', '', '', 'Press 11', 0, 0, 0, 0, 0),
(34, 'GSIP', '', '', 'Press 12', 0, 0, 0, 0, 0),
(35, 'GSIP', '', '', 'Press 13', 0, 0, 0, 0, 0),
(36, 'GSIP', '', '', 'Press 14', 0, 0, 0, 0, 0),
(37, 'GSIP', '', '', 'Press 15', 0, 0, 0, 0, 0),
(68, 'GSDI', '', '', '', 0, 0, 0, 0, 0),
(89, 'GSDI', 'Pressing', '', 'Inclined Fruit Scraper Conveyor', 0, 0, 0, 0, 0),
(90, 'GSDI', 'Pressing', '', 'Top Cross Conveyor', 0, 0, 0, 0, 0),
(91, 'GSDI', 'Pressing', '', 'Fruit Distributing Conveyor', 0, 0, 0, 0, 0),
(92, 'GSDI', 'Pressing', '', 'Digester No. 1', 0, 0, 0, 0, 0),
(93, 'GSDI', 'Pressing', '', 'Digester No. 2', 0, 0, 0, 0, 0),
(94, 'GSDI', 'Pressing', '', 'Digester No. 3', 0, 0, 0, 0, 0),
(95, 'GSDI', 'Pressing', '', 'Digester No. 4', 0, 0, 0, 0, 0),
(96, 'GSDI', 'Pressing', '', 'Digester No. 5', 0, 0, 0, 0, 0),
(97, 'GSDI', 'Pressing', '', 'Digester No. 6', 0, 0, 0, 0, 0),
(98, 'GSDI', 'Pressing', '', 'Screw Press No. 1', 0, 0, 0, 0, 0),
(99, 'GSDI', 'Pressing', '', 'Screw Press No. 2', 0, 0, 0, 0, 0),
(100, 'GSDI', 'Pressing', '', 'Screw Press No. 3', 0, 0, 0, 0, 0),
(101, 'GSDI', 'Pressing', '', 'Screw Press No. 4', 0, 0, 0, 0, 0),
(102, 'GSDI', 'Pressing', '', 'Screw Press No. 5', 0, 0, 0, 0, 0),
(103, 'GSDI', 'Pressing', '', 'Screw Press No. 6', 0, 0, 0, 0, 0),
(104, 'GSDI', 'Pressing', '', 'Power Pack Hydraulic Press No. 1 ', 0, 0, 0, 0, 0),
(105, 'GSDI', 'Pressing', '', 'Power Pack Hydraulic Press No. 2', 0, 0, 0, 0, 0),
(106, 'GSDI', 'Pressing', '', 'Power Pack Hydraulic Press No. 3', 0, 0, 0, 0, 0),
(107, 'GSDI', 'Pressing', '', 'Power Pack Hydraulic Press No. 4', 0, 0, 0, 0, 0),
(108, 'GSDI', 'Pressing', '', 'Power Pack Hydraulic Press No. 5', 0, 0, 0, 0, 0),
(109, 'GSDI', 'Pressing', '', 'Power Pack Hydraulic Press No. 6', 0, 0, 0, 0, 0),
(110, 'GSDI', 'Pressing', '', 'CBC line A', 0, 0, 0, 0, 0),
(111, 'GSDI', 'Pressing', '', 'CBC line B', 0, 0, 0, 0, 0),
(112, 'GSDI', 'Pressing', '', 'Under sandtrap conveyor no. 1', 0, 0, 0, 0, 0),
(113, 'GSDI', 'Pressing', '', 'Under sandtrap conveyor no. 2', 0, 0, 0, 0, 0),
(114, 'GSDI', 'Pressing', '', 'Fibrecyclone fan line A', 0, 0, 0, 0, 0),
(115, 'GSDI', 'Pressing', '', 'Fibrecyclone fan line B', 0, 0, 0, 0, 0),
(116, 'GSDI', 'Pressing', '', 'Air lock fibrecyclone line A', 0, 0, 0, 0, 0),
(117, 'GSDI', 'Pressing', '', 'Air lock fibrecyclone line B', 0, 0, 0, 0, 0),
(118, 'GSDI', 'Pressing', '', 'Nut Polishing Drum  A', 0, 0, 0, 0, 0),
(119, 'GSDI', 'Pressing', '', 'Nut Polishing Drum  B', 0, 0, 0, 0, 0),
(120, 'GSDI', 'Bunch Press', '', 'Distributing bunch press no. 1', 0, 0, 0, 0, 0),
(121, 'GSDI', 'Bunch Press', '', 'Distributing bunch press no. 2', 0, 0, 0, 0, 0),
(122, 'GSDI', 'Bunch Press', '', 'Bunch Press no. 1', 0, 0, 0, 0, 0),
(123, 'GSDI', 'Bunch Press', '', 'Bunch Press no. 2', 0, 0, 0, 0, 0),
(124, 'GSDI', 'Bunch Press', '', 'Bunch Press no. 3', 0, 0, 0, 0, 0),
(125, 'GSDI', 'Bunch Press', '', 'Bunch Press no. 4', 0, 0, 0, 0, 0),
(126, 'GSDI', 'Bunch Press', '', 'Bunch Press no. 5', 0, 0, 0, 0, 0),
(127, 'GSDI', 'Bunch Press', '', 'Power pack bunch press no. 2', 0, 0, 0, 0, 0),
(128, 'GSDI', 'Bunch Press', '', 'Power pack bunch press no. 3', 0, 0, 0, 0, 0),
(129, 'GSDI', 'Bunch Press', '', 'Power pack bunch press no. 4', 0, 0, 0, 0, 0),
(130, 'GSDI', 'Bunch Press', '', 'Power pack bunch press no. 5', 0, 0, 0, 0, 0),
(131, 'GSDI', 'Bunch Press', '', 'Distributing bunch shreder', 0, 0, 0, 0, 0),
(132, 'GSDI', 'Bunch Press', '', 'Bunch shreder no. 1', 0, 0, 0, 0, 0),
(133, 'GSDI', 'Bunch Press', '', 'Bunch shreder no. 2', 0, 0, 0, 0, 0),
(134, 'GSDI', 'Bunch Press', '', 'Bunch shreder no. 3', 0, 0, 0, 0, 0),
(135, 'GSDI', 'Bunch Press', '', 'Bunch shreder no. 4', 0, 0, 0, 0, 0),
(136, 'GSDI', 'Bunch Press', '', 'Bunch shreder no. 5', 0, 0, 0, 0, 0),
(137, 'GSDI', 'Bunch Press', '', 'Bunch shreder no. 6', 0, 0, 0, 0, 0),
(138, 'GSDI', 'Bunch Press', '', 'Oil Bunch Press Pump', 0, 0, 0, 0, 0),
(139, 'GSDI', 'Bunch Press', '', 'Vibrating bunch press', 0, 0, 0, 0, 0),
(140, 'GSDI', 'Kernel Line A', '', 'Distributing inclined nut conv ', 0, 0, 0, 0, 0),
(141, 'GSDI', 'Kernel Line A', '', 'Inclined Nut Conveyor  ', 0, 0, 0, 0, 0),
(142, 'GSDI', 'Kernel Line A', '', 'Destoner fan ', 0, 0, 0, 0, 0),
(143, 'GSDI', 'Kernel Line A', '', 'Air lock no. 1 Destoner ', 0, 0, 0, 0, 0),
(144, 'GSDI', 'Kernel Line A', '', 'Air lock no. 2 Destoner ', 0, 0, 0, 0, 0),
(145, 'GSDI', 'Kernel Line A', '', 'Vibrating Trought ', 0, 0, 0, 0, 0),
(146, 'GSDI', 'Kernel Line A', '', 'Riple mill No. 1', 0, 0, 0, 0, 0),
(147, 'GSDI', 'Kernel Line A', '', 'Riple mill No. 2', 0, 0, 0, 0, 0),
(148, 'GSDI', 'Kernel Line A', '', 'CM Conveyor line A', 0, 0, 0, 0, 0),
(149, 'GSDI', 'Kernel Line A', '', 'CM Elevator 1', 0, 0, 0, 0, 0),
(150, 'GSDI', 'Kernel Line A', '', 'LTDS 1 Fan ', 0, 0, 0, 0, 0),
(151, 'GSDI', 'Kernel Line A', '', 'LTDS 2 Fan ', 0, 0, 0, 0, 0),
(152, 'GSDI', 'Kernel Line A', '', 'Air lock no. 1 LTDS 1 ', 0, 0, 0, 0, 0),
(153, 'GSDI', 'Kernel Line A', '', 'Air lock no. 2 LTDS 1 ', 0, 0, 0, 0, 0),
(154, 'GSDI', 'Kernel Line A', '', 'Air lock LTDS 2 ', 0, 0, 0, 0, 0),
(155, 'GSDI', 'Kernel Line A', '', 'Vibratory feeder riple mill 1', 0, 0, 0, 0, 0),
(156, 'GSDI', 'Kernel Line A', '', 'Vibratory feeder riple mill 2', 0, 0, 0, 0, 0),
(157, 'GSDI', 'Kernel Line A', '', 'Wet Kernel Conveyor ', 0, 0, 0, 0, 0),
(158, 'GSDI', 'Kernel Line A', '', 'Wet Shell Conveyor ', 0, 0, 0, 0, 0),
(159, 'GSDI', 'Kernel Line A', '', 'Air lock CM elevator ', 0, 0, 0, 0, 0),
(160, 'GSDI', 'Kernel Line A', '', 'Hydrocyclone Kernel pump', 0, 0, 0, 0, 0),
(161, 'GSDI', 'Kernel Line A', '', 'Hydrocyclone Shell pump', 0, 0, 0, 0, 0),
(162, 'GSDI', 'Kernel Line A', '', 'Washing drump Hydrocyclone ', 0, 0, 0, 0, 0),
(163, 'GSDI', 'Kernel Line A', '', 'Wet Shell Elevator ', 0, 0, 0, 0, 0),
(164, 'GSDI', 'Kernel Line A', '', 'Wet Kernel Elevator ', 0, 0, 0, 0, 0),
(165, 'GSDI', 'Kernel Line A', '', 'Distributing Silo Conveyor 1', 0, 0, 0, 0, 0),
(166, 'GSDI', 'Kernel Line A', '', 'Distributing Silo Conveyor 2', 0, 0, 0, 0, 0),
(167, 'GSDI', 'Kernel Line A', '', 'Fan Dryer Silo 3', 0, 0, 0, 0, 0),
(168, 'GSDI', 'Kernel Line A', '', 'Fan Dryer Silo 4', 0, 0, 0, 0, 0),
(169, 'GSDI', 'Kernel Line A', '', 'Fan Dryer Silo 5', 0, 0, 0, 0, 0),
(170, 'GSDI', 'Kernel Line A', '', 'Fan Dryer Silo 6', 0, 0, 0, 0, 0),
(171, 'GSDI', 'Kernel Line A', '', 'Winowing fan', 0, 0, 0, 0, 0),
(172, 'GSDI', 'Kernel Line A', '', 'Air lock winowing fan', 0, 0, 0, 0, 0),
(173, 'GSDI', 'Kernel Line A', '', 'Under Silo Kernel 1', 0, 0, 0, 0, 0),
(174, 'GSDI', 'Kernel Line A', '', 'Under Silo Kernel 2', 0, 0, 0, 0, 0),
(175, 'GSDI', 'Kernel Line A', '', 'Kompresor', 0, 0, 0, 0, 0),
(176, 'GSDI', 'Kernel Line A', '', 'Dustributing nut hopper conv.', 0, 0, 0, 0, 0),
(177, 'GSDI', 'Kernel Line B', '', 'Distributing inclined nut conv ', 0, 0, 0, 0, 0),
(178, 'GSDI', 'Kernel Line B', '', 'Inclined Nut Conveyor  2', 0, 0, 0, 0, 0),
(179, 'GSDI', 'Kernel Line B', '', 'Destoner fan ', 0, 0, 0, 0, 0),
(180, 'GSDI', 'Kernel Line B', '', 'Air lock no. 1 Destoner ', 0, 0, 0, 0, 0),
(181, 'GSDI', 'Kernel Line B', '', 'Air lock no. 2 Destoner line B', 0, 0, 0, 0, 0),
(182, 'GSDI', 'Kernel Line B', '', 'Vibrating Trought ', 0, 0, 0, 0, 0),
(183, 'GSDI', 'Kernel Line B', '', 'Riple mill No. 3', 0, 0, 0, 0, 0),
(184, 'GSDI', 'Kernel Line B', '', 'Riple mill No. 4', 0, 0, 0, 0, 0),
(185, 'GSDI', 'Kernel Line B', '', 'CM Conveyor ', 0, 0, 0, 0, 0),
(186, 'GSDI', 'Kernel Line B', '', 'CM Elevator ', 0, 0, 0, 0, 0),
(187, 'GSDI', 'Kernel Line B', '', 'LTDS 1 Fan ', 0, 0, 0, 0, 0),
(188, 'GSDI', 'Kernel Line B', '', 'LTDS 2 Fan ', 0, 0, 0, 0, 0),
(189, 'GSDI', 'Kernel Line B', '', 'Air lock no. 1 LTDS 1 ', 0, 0, 0, 0, 0),
(190, 'GSDI', 'Kernel Line B', '', 'Air lock no. 2 LTDS 1 ', 0, 0, 0, 0, 0),
(191, 'GSDI', 'Kernel Line B', '', 'Air lock LTDS 2 ', 0, 0, 0, 0, 0),
(192, 'GSDI', 'Kernel Line B', '', 'Vibratory feeder riple miil no 3', 0, 0, 0, 0, 0),
(193, 'GSDI', 'Kernel Line B', '', 'Vibratory feeder riple miil no 4', 0, 0, 0, 0, 0),
(194, 'GSDI', 'Kernel Line B', '', 'Wet Kernel Conveyor ', 0, 0, 0, 0, 0),
(195, 'GSDI', 'Kernel Line B', '', 'Wet Shell Conveyor ', 0, 0, 0, 0, 0),
(196, 'GSDI', 'Kernel Line B', '', 'Air lock CM elevator ', 0, 0, 0, 0, 0),
(197, 'GSDI', 'Kernel Line B', '', 'Hydrocyclone Shell Pump ', 0, 0, 0, 0, 0),
(198, 'GSDI', 'Kernel Line B', '', 'Hydrocyclone Kernel Pump ', 0, 0, 0, 0, 0),
(199, 'GSDI', 'Kernel Line B', '', 'Washing drump Hydrocyclone ', 0, 0, 0, 0, 0),
(200, 'GSDI', 'Kernel Line B', '', 'Wet Shell Elevator ', 0, 0, 0, 0, 0),
(201, 'GSDI', 'Kernel Line B', '', 'Wet Kernel Elevator ', 0, 0, 0, 0, 0),
(202, 'GSDI', 'Kernel Line B', '', 'Distributing Silo Conveyor 2', 0, 0, 0, 0, 0),
(203, 'GSDI', 'Kernel Line B', '', 'Fan Dryer Silo 1', 0, 0, 0, 0, 0),
(204, 'GSDI', 'Kernel Line B', '', 'Fan Dryer Silo 2', 0, 0, 0, 0, 0),
(205, 'GSDI', 'Kernel Line B', '', 'Ex Hydro cyclone pump', 0, 0, 0, 0, 0),
(206, 'GSDI', 'Kernel Line B', '', 'Kernel bunker conveyor', 0, 0, 0, 0, 0),
(207, 'GSDI', 'Kernel Line B', '', 'Under sheell hopper', 0, 0, 0, 0, 0),
(208, 'GSDI', 'Kernel Line B', '', 'Riple mill no. 5', 0, 0, 0, 0, 0),
(209, 'GSDI', 'Kernel Line B', '', 'Riple mill no. 6', 0, 0, 0, 0, 0),
(210, 'GSDI', 'Kernel Line B', '', 'Distributing nut hopper conv.', 0, 0, 0, 0, 0),
(211, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 1', 0, 0, 0, 0, 0),
(212, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 2', 0, 0, 0, 0, 0),
(213, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 3', 0, 0, 0, 0, 0),
(214, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 4', 0, 0, 0, 0, 0),
(215, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 5', 0, 0, 0, 0, 0),
(216, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 6', 0, 0, 0, 0, 0),
(217, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 7', 0, 0, 0, 0, 0),
(218, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 8', 0, 0, 0, 0, 0),
(219, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 9', 0, 0, 0, 0, 0),
(220, 'GSDI', 'Klarifikasi', '', 'Sludge Sparator No. 10', 0, 0, 0, 0, 0),
(221, 'GSDI', 'Klarifikasi', '', 'CO Pump No. 1', 0, 0, 0, 0, 0),
(222, 'GSDI', 'Klarifikasi', '', 'CO Pump No. 2', 0, 0, 0, 0, 0),
(223, 'GSDI', 'Klarifikasi', '', 'CO Pump No   3', 0, 0, 0, 0, 0),
(224, 'GSDI', 'Klarifikasi', '', 'CCT Motor No. 1', 0, 0, 0, 0, 0),
(225, 'GSDI', 'Klarifikasi', '', 'CCT Motor No. 2', 0, 0, 0, 0, 0),
(226, 'GSDI', 'Klarifikasi', '', 'CCT Motor No. 3', 0, 0, 0, 0, 0),
(227, 'GSDI', 'Klarifikasi', '', 'Desanding Pump No. 1', 0, 0, 0, 0, 0),
(228, 'GSDI', 'Klarifikasi', '', 'Desanding Pump No. 2', 0, 0, 0, 0, 0),
(229, 'GSDI', 'Klarifikasi', '', 'Desanding Pump No. 3', 0, 0, 0, 0, 0),
(230, 'GSDI', 'Klarifikasi', '', 'Brush Strainer No. 1', 0, 0, 0, 0, 0),
(231, 'GSDI', 'Klarifikasi', '', 'Brush Strainer No. 2', 0, 0, 0, 0, 0),
(232, 'GSDI', 'Klarifikasi', '', 'Brush Strainer No. 3', 0, 0, 0, 0, 0),
(233, 'GSDI', 'Klarifikasi', '', 'Brush Strainer No. 4', 0, 0, 0, 0, 0),
(234, 'GSDI', 'Klarifikasi', '', 'Brush Strainer No. 5', 0, 0, 0, 0, 0),
(235, 'GSDI', 'Klarifikasi', '', 'Tailing conveyor no 1', 0, 0, 0, 0, 0),
(236, 'GSDI', 'Klarifikasi', '', 'Tailing conveyor no 2', 0, 0, 0, 0, 0),
(237, 'GSDI', 'Klarifikasi', '', 'Hot Well Pump No.1', 0, 0, 0, 0, 0),
(238, 'GSDI', 'Klarifikasi', '', 'Hot Wel Pump No. 2', 0, 0, 0, 0, 0),
(239, 'GSDI', 'Klarifikasi', '', 'Furifier No. 1', 0, 0, 0, 0, 0),
(240, 'GSDI', 'Klarifikasi', '', 'Furifier No. 2', 0, 0, 0, 0, 0),
(241, 'GSDI', 'Klarifikasi', '', 'Furifier No. 3', 0, 0, 0, 0, 0),
(242, 'GSDI', 'Klarifikasi', '', 'Feed Purifier no. 1', 0, 0, 0, 0, 0),
(243, 'GSDI', 'Klarifikasi', '', 'Feed Purifier no. 2', 0, 0, 0, 0, 0),
(244, 'GSDI', 'Klarifikasi', '', 'Feed Purifier no. 3', 0, 0, 0, 0, 0),
(245, 'GSDI', 'Klarifikasi', '', 'Waste Colection Pump', 0, 0, 0, 0, 0),
(246, 'GSDI', 'Klarifikasi', '', 'Recycle Oil Pump No. 1', 0, 0, 0, 0, 0),
(247, 'GSDI', 'Klarifikasi', '', 'Recycle Oil Pump No. 2', 0, 0, 0, 0, 0),
(248, 'GSDI', 'Klarifikasi', '', 'Vacum Oil Pump No. 1', 0, 0, 0, 0, 0),
(249, 'GSDI', 'Klarifikasi', '', 'Vacum Oil Pump No. 2', 0, 0, 0, 0, 0),
(250, 'GSDI', 'Klarifikasi', '', 'Sludge Pit Pump No. 1', 0, 0, 0, 0, 0),
(251, 'GSDI', 'Klarifikasi', '', 'Sludge Pit Pump No. 2', 0, 0, 0, 0, 0),
(252, 'GSDI', 'Klarifikasi', '', 'Oil transfer pump no. 1', 0, 0, 0, 0, 0),
(253, 'GSDI', 'Klarifikasi', '', 'Oil transfer pump no. 2', 0, 0, 0, 0, 0),
(254, 'GSDI', 'Klarifikasi', '', 'Oil transfer pump no. 3', 0, 0, 0, 0, 0),
(255, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 1', 0, 0, 0, 0, 0),
(256, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 2', 0, 0, 0, 0, 0),
(257, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 3', 0, 0, 0, 0, 0),
(258, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 4', 0, 0, 0, 0, 0),
(259, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 5', 0, 0, 0, 0, 0),
(260, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 6', 0, 0, 0, 0, 0),
(261, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 7', 0, 0, 0, 0, 0),
(262, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 8', 0, 0, 0, 0, 0),
(263, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 9', 0, 0, 0, 0, 0),
(264, 'GSDI', 'Klarifikasi', '', 'Vibrating Screen No. 10', 0, 0, 0, 0, 0),
(265, 'GSDI', 'Klarifikasi', '', 'Under setlink conveyor', 0, 0, 0, 0, 0),
(266, 'GSDI', 'Klarifikasi', '', 'Distribusi Under setlink conveyor', 0, 0, 0, 0, 0),
(267, 'GSDI', 'Klarifikasi', '', 'Air Compressor', 0, 0, 0, 0, 0),
(268, 'GSDI', 'Boiler 1 & Softener', '', 'Undercyclone Conveyor', 0, 0, 0, 0, 0),
(269, 'GSDI', 'Boiler 1 & Softener', '', 'Inclined Fibershell conveyor no. 1', 0, 0, 0, 0, 0),
(270, 'GSDI', 'Boiler 1 & Softener', '', 'Fuel distributing conv. Boiler no. 3', 0, 0, 0, 0, 0),
(271, 'GSDI', 'Boiler 1 & Softener', '', 'Excess recovery scraper coveyor no. 2', 0, 0, 0, 0, 0),
(272, 'GSDI', 'Boiler 1 & Softener', '', 'Softener no. 1', 0, 0, 0, 0, 0),
(273, 'GSDI', 'Boiler 1 & Softener', '', 'Softener no. 2', 0, 0, 0, 0, 0),
(274, 'GSDI', 'Boiler 1 & Softener', '', 'Dearator pump no. 1', 0, 0, 0, 0, 0),
(275, 'GSDI', 'Boiler 1 & Softener', '', 'Dearator pump no. 2', 0, 0, 0, 0, 0),
(276, 'GSDI', 'Boiler 1 & Softener', '', 'Dearator pump no. 3', 0, 0, 0, 0, 0),
(277, 'GSDI', 'Boiler 1 & Softener', '', 'BPV Feed pump ', 0, 0, 0, 0, 0),
(278, 'GSDI', 'Boiler 1 & Softener', '', 'Feed Water Pump no. 1', 0, 0, 0, 0, 0),
(279, 'GSDI', 'Boiler 1 & Softener', '', 'Feed Water Pump no. 2', 0, 0, 0, 0, 0),
(280, 'GSDI', 'Boiler 1 & Softener', '', 'Feed Water Pump no. 3', 0, 0, 0, 0, 0),
(281, 'GSDI', 'Boiler 1 & Softener', '', 'Thermal Dearator pump no. 2', 0, 0, 0, 0, 0),
(282, 'GSDI', 'Boiler 1 & Softener', '', 'Inclined Fibershell conveyor no. 2', 0, 0, 0, 0, 0),
(283, 'GSDI', 'Boiler 1 & Softener', '', 'Fuel distributing conv. Boiler no. 1.2', 0, 0, 0, 0, 0),
(284, 'GSDI', 'Boiler 1 & Softener', '', 'Hydraulic power pack boiler ', 0, 0, 0, 0, 0),
(285, 'GSDI', 'Boiler 1 & Softener', '', 'Ash Scraper conveyor ', 0, 0, 0, 0, 0),
(286, 'GSDI', 'Boiler 1 & Softener', '', 'Thermal Dearator pump no. 1', 0, 0, 0, 0, 0),
(287, 'GSDI', 'Boiler 1 & Softener', '', 'Dosing pump no. 1', 0, 0, 0, 0, 0),
(288, 'GSDI', 'Boiler 1 & Softener', '', 'Dosing pump no. 2', 0, 0, 0, 0, 0),
(289, 'GSDI', 'Boiler 1 & Softener', '', 'IDF ', 0, 0, 0, 0, 0),
(290, 'GSDI', 'Boiler 1 & Softener', '', 'FDF ', 0, 0, 0, 0, 0),
(291, 'GSDI', 'Boiler 1 & Softener', '', 'Secondary air fan', 0, 0, 0, 0, 0),
(292, 'GSDI', 'Boiler 1 & Softener', '', 'CAF / Air Duct', 0, 0, 0, 0, 0),
(293, 'GSDI', 'Boiler 1 & Softener', '', 'Ash screw conveyor AT Drump', 0, 0, 0, 0, 0),
(294, 'GSDI', 'Boiler 1 & Softener', '', 'Dust screw conveyor AT /DC', 0, 0, 0, 0, 0),
(295, 'GSDI', 'Boiler 1 & Softener', '', 'Ash &amp; dust conveyor ', 0, 0, 0, 0, 0),
(296, 'GSDI', 'Boiler 1 & Softener', '', 'Air lock ash hopper no. 1 ', 0, 0, 0, 0, 0),
(297, 'GSDI', 'Boiler 1 & Softener', '', 'Air lock ash hopper no. 2', 0, 0, 0, 0, 0),
(298, 'GSDI', 'Boiler 1 & Softener', '', 'Air lock Dust hopper', 0, 0, 0, 0, 0),
(299, 'GSDI', 'Boiler 1 & Softener', '', 'Air lock no. 1 fuel feeder', 0, 0, 0, 0, 0),
(300, 'GSDI', 'Boiler 1 & Softener', '', 'Air lock no. 2 fuel feeder', 0, 0, 0, 0, 0),
(301, 'GSDI', 'Boiler 1 & Softener', '', 'Air lock no. 3 fuel feeder', 0, 0, 0, 0, 0),
(302, 'GSDI', 'Boiler 1 & Softener', '', 'Thermal dearator pump no. 3', 0, 0, 0, 0, 0),
(303, 'GSDI', 'BOILER 2', '', 'Hydraulic power pack boiler ', 0, 0, 0, 0, 0),
(304, 'GSDI', 'BOILER 2', '', 'IDF ', 0, 0, 0, 0, 0),
(305, 'GSDI', 'BOILER 2', '', 'FDF ', 0, 0, 0, 0, 0),
(306, 'GSDI', 'BOILER 2', '', 'Secondary fan ', 0, 0, 0, 0, 0),
(307, 'GSDI', 'BOILER 2', '', 'CAF Boiler no. ', 0, 0, 0, 0, 0),
(308, 'GSDI', 'BOILER 2', '', 'Ash Scraper Conveyor ', 0, 0, 0, 0, 0),
(309, 'GSDI', 'BOILER 2', '', 'Ash screw conveyor AT drum', 0, 0, 0, 0, 0),
(310, 'GSDI', 'BOILER 2', '', 'Dust screw conveyor AT /DC', 0, 0, 0, 0, 0),
(311, 'GSDI', 'BOILER 2', '', 'Ash &amp; dust conveyor no. 1', 0, 0, 0, 0, 0),
(312, 'GSDI', 'BOILER 2', '', 'Ash &amp; dust conveyor no. 2', 0, 0, 0, 0, 0),
(313, 'GSDI', 'BOILER 2', '', 'Rotary valve AT drum 1', 0, 0, 0, 0, 0),
(314, 'GSDI', 'BOILER 2', '', 'Rotary valve AT drum 2', 0, 0, 0, 0, 0),
(315, 'GSDI', 'BOILER 2', '', 'Rotary valve AT / DC 1', 0, 0, 0, 0, 0),
(316, 'GSDI', 'BOILER 2', '', 'Air lock no. 1 fuel feeder', 0, 0, 0, 0, 0),
(317, 'GSDI', 'BOILER 2', '', 'Air lock no. 2 fuel feeder', 0, 0, 0, 0, 0),
(318, 'GSDI', 'BOILER 2', '', 'Air lock no. 3 fuel feeder', 0, 0, 0, 0, 0),
(319, 'GSDI', 'BOILER 2', '', 'Recycle fibre conveyor', 0, 0, 0, 0, 0),
(320, 'GSDI', 'BOILER 2', '', 'Exces Fuel Conveyor no. 1', 0, 0, 0, 0, 0),
(321, 'GSDI', 'BOILER 2', '', 'Exces Fuel Conveyor no. 2', 0, 0, 0, 0, 0),
(322, 'GSDI', 'BOILER 3', '', 'Hydraulic power pack', 0, 0, 0, 0, 0),
(323, 'GSDI', 'BOILER 3', '', 'Scraper Conveyor AT grade ', 0, 0, 0, 0, 0),
(324, 'GSDI', 'BOILER 3', '', 'Feed water pump 1 ', 0, 0, 0, 0, 0),
(325, 'GSDI', 'BOILER 3', '', 'Feed water pump 2', 0, 0, 0, 0, 0),
(326, 'GSDI', 'BOILER 3', '', 'IDF ', 0, 0, 0, 0, 0),
(327, 'GSDI', 'BOILER 3', '', 'FDF ', 0, 0, 0, 0, 0),
(328, 'GSDI', 'BOILER 3', '', 'Secondary fan ', 0, 0, 0, 0, 0),
(329, 'GSDI', 'BOILER 3', '', 'Fuel feeder fan', 0, 0, 0, 0, 0),
(330, 'GSDI', 'BOILER 3', '', 'Ash screw conveyor AT drum', 0, 0, 0, 0, 0),
(331, 'GSDI', 'BOILER 3', '', 'Dust screw conveyor AT /DC', 0, 0, 0, 0, 0),
(332, 'GSDI', 'BOILER 3', '', 'Ash &amp; dust screw conveyor 1 ', 0, 0, 0, 0, 0),
(333, 'GSDI', 'BOILER 3', '', 'Ash &amp; dust screw conveyor 2 ', 0, 0, 0, 0, 0),
(334, 'GSDI', 'BOILER 3', '', 'Ash  &amp; dust screw conveyor 3', 0, 0, 0, 0, 0),
(335, 'GSDI', 'BOILER 3', '', 'Rotary valve AT drum 1', 0, 0, 0, 0, 0),
(336, 'GSDI', 'BOILER 3', '', 'Rotary valve AT drum 2', 0, 0, 0, 0, 0),
(337, 'GSDI', 'BOILER 3', '', 'Rotary valve AT/ DC  1', 0, 0, 0, 0, 0),
(338, 'GSDI', 'BOILER 3', '', 'Rotary valve AT / DC 2', 0, 0, 0, 0, 0),
(339, 'GSDI', 'BOILER 3', '', 'Rotary fuel feeder 1 ', 0, 0, 0, 0, 0),
(340, 'GSDI', 'BOILER 3', '', 'Rotary fuel feeder 2 ', 0, 0, 0, 0, 0),
(341, 'GSDI', 'BOILER 3', '', 'Rotary fuel feeder 3', 0, 0, 0, 0, 0),
(342, 'GSDI', 'BOILER 3', '', 'Rotary fuel feeder 4', 0, 0, 0, 0, 0),
(343, 'GSDI', 'BOILER 3', '', 'Exces recovery scraper no. 1', 0, 0, 0, 0, 0),
(344, 'GSDI', 'BOILER 3', '', 'Air compressor', 0, 0, 0, 0, 0),
(345, 'GSDI', 'KCP', '', 'Kernel Feed Conveyor A', 0, 0, 0, 0, 0),
(346, 'GSDI', 'KCP', '', 'Kernel Feed Conveyor B', 0, 0, 0, 0, 0),
(347, 'GSDI', 'KCP', '', 'Kernel Intake Elevator', 0, 0, 0, 0, 0),
(348, 'GSDI', 'KCP', '', 'Over heat Kernel Transfer Conveyor', 0, 0, 0, 0, 0),
(349, 'GSDI', 'KCP', '', 'Kernel Distributing Coveyor', 0, 0, 0, 0, 0),
(350, 'GSDI', 'KCP', '', '1st Oil Conveyor Under Expeller', 0, 0, 0, 0, 0),
(351, 'GSDI', 'KCP', '', 'Cake Conveyor', 0, 0, 0, 0, 0),
(352, 'GSDI', 'KCP', '', 'Cake Buckat Elevator', 0, 0, 0, 0, 0),
(353, 'GSDI', 'KCP', '', 'Cake Cross Conveyor', 0, 0, 0, 0, 0),
(354, 'GSDI', 'KCP', '', 'Residu Return Conveyor', 0, 0, 0, 0, 0),
(355, 'GSDI', 'KCP', '', '2nd Oil Conveyor Under Expeller', 0, 0, 0, 0, 0),
(356, 'GSDI', 'KCP', '', 'Cross Oil Conveyor', 0, 0, 0, 0, 0),
(357, 'GSDI', 'KCP', '', 'Elevating Scoop', 0, 0, 0, 0, 0),
(358, 'GSDI', 'KCP', '', 'Meal Conveyor', 0, 0, 0, 0, 0),
(359, 'GSDI', 'KCP', '', 'Meal Elevator 1', 0, 0, 0, 0, 0),
(360, 'GSDI', 'KCP', '', 'Meal Elevator 2', 0, 0, 0, 0, 0),
(361, 'GSDI', 'KCP', '', 'Meal Distributing Conveyor', 0, 0, 0, 0, 0),
(362, 'GSDI', 'KCP', '', 'Meal Transfer Conveyor', 0, 0, 0, 0, 0),
(363, 'GSDI', 'KCP', '', 'Pressure Leaf Filter Pump A', 0, 0, 0, 0, 0),
(364, 'GSDI', 'KCP', '', 'Pressure Leap Filter Pump B', 0, 0, 0, 0, 0),
(365, 'GSDI', 'KCP', '', 'Cake Dist Conveyor', 0, 0, 0, 0, 0),
(366, 'GSDI', 'KCP', '', 'Filtered Oil transfer Pump A', 0, 0, 0, 0, 0),
(367, 'GSDI', 'KCP', '', 'Filtered Oil transfer Pump B', 0, 0, 0, 0, 0),
(368, 'GSDI', 'KCP', '', 'Residu Return Conveyor no. 2', 0, 0, 0, 0, 0),
(369, 'GSDI', 'KCP', '', 'Air Compresor', 0, 0, 0, 0, 0),
(370, 'GSDI', 'KCP', '', 'Pressing 1 st No. 1', 0, 0, 0, 0, 0),
(371, 'GSDI', 'KCP', '', 'Pressing 1 st No. 2', 0, 0, 0, 0, 0),
(372, 'GSDI', 'KCP', '', 'Pressing 1 st No. 3', 0, 0, 0, 0, 0),
(373, 'GSDI', 'KCP', '', 'Pressing 1 st No. 4', 0, 0, 0, 0, 0),
(374, 'GSDI', 'KCP', '', 'Pressing 1 st No. 5', 0, 0, 0, 0, 0),
(375, 'GSDI', 'KCP', '', 'Pressing 1 st No. 6', 0, 0, 0, 0, 0),
(376, 'GSDI', 'KCP', '', 'Pressing 1 st No. 7', 0, 0, 0, 0, 0),
(377, 'GSDI', 'KCP', '', '2nd Press No. 1 ', 0, 0, 0, 0, 0),
(378, 'GSDI', 'KCP', '', '2nd Press No. 2', 0, 0, 0, 0, 0),
(379, 'GSDI', 'KCP', '', '2nd Press No. 3', 0, 0, 0, 0, 0),
(380, 'GSDI', 'KCP', '', '2nd Press No. 4', 0, 0, 0, 0, 0),
(381, 'GSDI', 'KCP', '', '2nd Press No. 5', 0, 0, 0, 0, 0),
(382, 'GSDI', 'KCP', '', '2nd Press No. 6', 0, 0, 0, 0, 0),
(383, 'GSDI', 'KCP', '', 'Fan dryer 1st', 0, 0, 0, 0, 0),
(384, 'GSDI', 'KCP', '', 'Kernel bunker fan', 0, 0, 0, 0, 0),
(385, 'GSDI', 'KCP', '', 'Air lock kernel bunker fan', 0, 0, 0, 0, 0),
(386, 'GSDI', 'WTP', '', 'Raw Watter Pump 1', 0, 0, 0, 0, 0),
(387, 'GSDI', 'WTP', '', 'Raw Watter Pump 2', 0, 0, 0, 0, 0),
(388, 'GSDI', 'WTP', '', 'Sedimen Pump 1', 0, 0, 0, 0, 0),
(389, 'GSDI', 'WTP', '', 'Sedimen Pump 2', 0, 0, 0, 0, 0),
(390, 'GSDI', 'WTP', '', 'Dosing Pump 1 (Alum)', 0, 0, 0, 0, 0),
(391, 'GSDI', 'WTP', '', 'Dosing Pump 2 (Soda)', 0, 0, 0, 0, 0),
(392, 'GSDI', 'WTP', '', 'Dosing pump 3 ( casflog )', 0, 0, 0, 0, 0),
(393, 'GSDI', 'WTP', '', 'Pengaduk Alum', 0, 0, 0, 0, 0),
(394, 'GSDI', 'WTP', '', 'Pengaduk Soda', 0, 0, 0, 0, 0),
(395, 'GSDI', 'WTP', '', 'Pengaduk casflog', 0, 0, 0, 0, 0),
(396, 'GSDI', 'WTP', '', 'Elektrik Hydrant Pump no. 1', 0, 0, 0, 0, 0),
(397, 'GSDI', 'WTP', '', 'Elektrik Hydrant Pump no. 2', 0, 0, 0, 0, 0),
(398, 'GSDI', 'WTP', '', 'Pompa bak sedimen no 1 ke no 2', 0, 0, 0, 0, 0),
(399, 'GSDI', 'Effluent', '', 'Anairobic Pond 1', 0, 0, 0, 0, 0),
(400, 'GSDI', 'Effluent', '', 'Anairobic Pond 2', 0, 0, 0, 0, 0),
(401, 'GSDI', 'Effluent', '', 'Anairobic Pond 3', 0, 0, 0, 0, 0),
(402, 'GSDI', 'Effluent', '', 'Anairobic Pond 4', 0, 0, 0, 0, 0),
(403, 'GSDI', 'Effluent', '', 'Buffer Pond', 0, 0, 0, 0, 0),
(404, 'GSDI', 'Effluent', '', 'Contact pond', 0, 0, 0, 0, 0),
(405, 'GSDI', 'Effluent', '', 'Agitator no 1', 0, 0, 0, 0, 0),
(406, 'GSDI', 'Effluent', '', 'Agitator no 2', 0, 0, 0, 0, 0),
(407, 'GSDI', 'Effluent', '', 'Agitator no 3', 0, 0, 0, 0, 0),
(408, 'GSDI', 'Effluent', '', 'Agitator no 4', 0, 0, 0, 0, 0),
(409, 'GSDI', 'Komposting', '', 'Pompa Siram', 0, 0, 0, 0, 0),
(410, 'GSDI', 'Komposting', '', 'Recycle pump', 0, 0, 0, 0, 0),
(411, 'GSDI', 'Biodiesel', '', 'Methanol Pump ', 0, 0, 0, 0, 0),
(412, 'GSDI', 'Biodiesel', '', 'Methoxioe Storage Pump', 0, 0, 0, 0, 0),
(413, 'GSDI', 'Biodiesel', '', 'Reaktor Tank 1', 0, 0, 0, 0, 0),
(414, 'GSDI', 'Biodiesel', '', 'SettlinkTank 1', 0, 0, 0, 0, 0),
(415, 'GSDI', 'Biodiesel', '', 'Reaktor Tank 2', 0, 0, 0, 0, 0),
(416, 'GSDI', 'Biodiesel', '', 'SettlinkTank 2', 0, 0, 0, 0, 0),
(417, 'GSDI', 'Biodiesel', '', 'Biodiesel Pump', 0, 0, 0, 0, 0),
(418, 'GSDI', 'Biodiesel', '', 'Washing Tank', 0, 0, 0, 0, 0),
(419, 'GSDI', 'Biodiesel', '', 'Flash Epaporator ', 0, 0, 0, 0, 0),
(420, 'GSDI', 'Biodiesel', '', 'Biodiesel storage', 0, 0, 0, 0, 0),
(421, 'GSDI', 'Biodiesel', '', 'Condensor methanol', 0, 0, 0, 0, 0),
(422, 'GSDI', 'Biodiesel', '', 'Reaktor Tank 1', 0, 0, 0, 0, 0),
(423, 'GSDI', 'Biodiesel', '', 'Reaktor Tank 2', 0, 0, 0, 0, 0),
(424, 'GSDI', 'Biodiesel', '', 'Washing tank', 0, 0, 0, 0, 0),
(425, 'GSDI', 'Biodiesel', '', 'KOH Methanol Mixer', 0, 0, 0, 0, 0),
(426, 'GSDI', 'Biodiesel', '', 'Oil Tank', 0, 0, 0, 0, 0),
(427, 'GSDI', 'Despatch', '', 'Dispatch Pump CPO No. 1', 0, 0, 0, 0, 0),
(428, 'GSDI', 'Despatch', '', 'Dispatch Pump CPO No. 2', 0, 0, 0, 0, 0),
(429, 'GSDI', 'Despatch', '', 'Dispatch pump PKO no 1', 0, 0, 0, 0, 0),
(430, 'GSDI', 'Despatch', '', 'Dispatch pump PKO no 1', 0, 0, 0, 0, 0),
(431, 'GSDI', 'Threshing', '', 'Power Pack Tipper No. 1', 0, 0, 0, 0, 0),
(432, 'GSDI', 'Threshing', '', 'Sterilizer Bunch Conveyor', 0, 0, 0, 0, 0),
(433, 'GSDI', 'Threshing', '', 'Distribusi Bunch Conveyor', 0, 0, 0, 0, 0),
(434, 'GSDI', 'Threshing', '', 'Horizontal Empty Bunch Conveyor', 0, 0, 0, 0, 0),
(435, 'GSDI', 'Threshing', '', 'Inclined Empty Bunch Conveyor', 0, 0, 0, 0, 0),
(436, 'GSDI', 'Threshing', '', 'Thresher No. 4', 0, 0, 0, 0, 0),
(437, 'GSDI', 'Threshing', '', 'Thresher No. 2', 0, 0, 0, 0, 0),
(438, 'GSDI', 'Threshing', '', 'Thresher No. 3', 0, 0, 0, 0, 0),
(439, 'GSDI', 'Threshing', '', 'Thresher No. 1', 0, 0, 0, 0, 0),
(440, 'GSDI', 'Threshing', '', 'Bellow Thresher no. 1', 0, 0, 0, 0, 0),
(441, 'GSDI', 'Threshing', '', 'Bellow Thresher no. 2', 0, 0, 0, 0, 0),
(442, 'GSDI', 'Threshing', '', 'Bellow Thresher no. 3', 0, 0, 0, 0, 0),
(443, 'GSDI', 'Threshing', '', 'Bellow Thresher no. 4', 0, 0, 0, 0, 0),
(444, 'GSDI', 'Threshing', '', 'Re Treshing', 0, 0, 0, 0, 0),
(445, 'GSDI', 'Threshing', '', 'Bunch crusher', 0, 0, 0, 0, 0),
(446, 'GSDI', 'Threshing', '', 'Bottom Cross Conveyor', 0, 0, 0, 0, 0),
(447, 'GSDI', 'Threshing', '', 'Auto feeder  ', 0, 0, 0, 0, 0),
(448, 'GSDI', 'Threshing', '', 'Doble wins no 7 - 8', 0, 0, 0, 0, 0),
(449, 'GSDI', 'Threshing', '', 'Transfer cariage 3', 0, 0, 0, 0, 0),
(450, 'GSDI', 'Threshing', '', 'Transfer cariage 4', 0, 0, 0, 0, 0),
(544, 'GSDI', 'Fruit Reception', '', 'Tipping dump line B', 1, 0, 0, 0, 0),
(545, 'GSDI', 'Fruit Reception', '', 'Motor Power Pack L/R line A', 1, 0, 0, 0, 0),
(546, 'GSDI', 'Fruit Reception', '', 'Motor Power Pack L/R   line B', 1, 0, 0, 0, 0),
(547, 'GSDI', 'Fruit Reception', '', 'Motor Transfer Carryage I', 1, 0, 0, 0, 0),
(548, 'GSDI', 'Fruit Reception', '', 'Motor Transfer Carryage II', 1, 0, 0, 0, 0),
(549, 'GSDI', 'Fruit Reception', '', 'Motor Hydrolic Double Winch No. 1', 1, 0, 0, 0, 0),
(550, 'GSDI', 'Fruit Reception', '', 'Motor Hydrolic Double Winch No. 2', 1, 0, 0, 0, 0),
(551, 'GSDI', 'Fruit Reception', '', 'FFB HorizontalConveyor', 1, 0, 0, 0, 0),
(552, 'GSDI', 'Fruit Reception', '', 'FFB Cross Conveyor', 1, 0, 0, 0, 0),
(553, 'GSDI', 'Fruit Reception', '', 'Hydraulic sliding FFB Cross', 1, 0, 0, 0, 0),
(554, 'GSDI', 'Fruit Reception', '', 'Motor Distributing calig conveyor no. 1 line A', 1, 0, 0, 0, 0),
(555, 'GSDI', 'Fruit Reception', '', 'Inklined screper calig line A', 1, 0, 0, 0, 0),
(556, 'GSDI', 'Fruit Reception', '', 'Inklined conveor calic line A', 1, 0, 0, 0, 0),
(557, 'GSDI', 'Fruit Reception', '', 'Distribusi conveyor calig line B', 1, 0, 0, 0, 0),
(558, 'GSDI', 'Fruit Reception', '', 'Power pack winch atas', 1, 0, 0, 0, 0),
(559, 'GSDI', 'Fruit Reception', '', 'Singgle Winch no 3', 1, 0, 0, 0, 0),
(560, 'GSDI', 'Fruit Reception', '', 'Singgle Winch 5 / undertow', 1, 0, 0, 0, 0),
(561, 'GSDI', 'Fruit Reception', '', 'Singgle Winch 6', 1, 0, 0, 0, 0),
(562, 'GSDI', 'Fruit Reception', '', 'Condensat Pump No. 2', 1, 0, 0, 0, 0),
(563, 'GSDI', 'Fruit Reception', '', 'Condensat Pump No. 1', 1, 0, 0, 0, 0),
(564, 'GSDI', 'Fruit Reception', '', 'Condensat Pump No. 3', 1, 0, 0, 0, 0),
(565, 'GSDI', 'Fruit Reception', '', 'Power pack cantilever no. 1 &amp; 2', 1, 0, 0, 0, 0),
(566, 'GSDI', 'Fruit Reception', '', 'Power pack cantilever no. 3 &amp; 4', 1, 0, 0, 0, 0),
(567, 'GSDI', 'Fruit Reception', '', 'Drainase sterililzer pump', 1, 0, 0, 0, 0),
(568, 'GSDI', 'Fruit Reception', '', 'Air compressor sterilizer', 1, 0, 0, 0, 0),
(569, 'GSDI', 'Fruit Reception', '', 'Bang dong Cagemen', 1, 0, 0, 0, 0),
(570, 'GSDI', 'Fruit Reception', '', 'Indekser ', 1, 0, 0, 0, 0),
(571, 'GSDI', 'Fruit Reception', '', 'Singgle Winch no 4', 1, 0, 0, 0, 0),
(572, 'GSDI', 'Fruit Reception', '', 'Bangdong  L/R ', 1, 0, 0, 0, 0),
(573, 'GSDI', 'Fruit Reception', '', 'Motor Distributing calig conveyor no. 2 line A', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_unit_elektrik`
--

CREATE TABLE IF NOT EXISTS `master_unit_elektrik` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(32) NOT NULL,
  `id_station` varchar(32) NOT NULL,
  `unit` varchar(11) NOT NULL,
  `kw` float NOT NULL,
  `class` varchar(2) NOT NULL,
  `starter` varchar(16) NOT NULL,
  `mccb` int(11) NOT NULL,
  `kontaktor_line` int(11) NOT NULL,
  `kontaktor_delta` int(11) NOT NULL,
  `kontaktor_star` int(11) NOT NULL,
  `kabel` float NOT NULL,
  `jumlah_kabel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_unit_mekanik`
--

CREATE TABLE IF NOT EXISTS `master_unit_mekanik` (
  `id_pabrik` varchar(8) NOT NULL,
  `id_station` varchar(32) NOT NULL,
  `unit` varchar(64) NOT NULL,
  `merk_gearbox` varchar(64) NOT NULL,
  `kapasitas_gearbox` varchar(64) NOT NULL,
  `rasio_gearbox` varchar(64) NOT NULL,
  `type_gearbox` varchar(64) NOT NULL,
  `pulley_motor` varchar(64) NOT NULL,
  `pulley_driven` varchar(64) NOT NULL,
  `pulley_type` varchar(64) NOT NULL,
  `merk_pompa` varchar(64) NOT NULL,
  `type_pompa` varchar(64) NOT NULL,
  `kapasitas_pompa` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_acm`
--

CREATE TABLE IF NOT EXISTS `m_acm` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `id_station` varchar(64) NOT NULL,
  `unit` varchar(64) NOT NULL,
  `acm` int(2) NOT NULL,
  `keterangan` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_acm`
--

INSERT INTO `m_acm` (`id`, `tanggal`, `id_pabrik`, `id_station`, `unit`, `acm`, `keterangan`) VALUES
(1, '2018-11-22', 'GSIP', 'Press', 'Press 1', 1, ''),
(2, '2018-11-22', 'GSIP', 'Press', 'Press 2', 0, ''),
(3, '2018-11-22', 'GSIP', 'Press', 'Press 3', 1, ''),
(4, '2018-11-22', 'GSIP', 'Press', 'Press 4', 0, ''),
(5, '2018-11-22', 'GSIP', 'Press', 'Press 5', 1, ''),
(6, '2018-11-22', 'GSIP', 'Press', 'Press 6', 0, ''),
(7, '2018-12-17', 'GSIP', 'Press', 'Press 1', 1, ''),
(8, '2018-12-17', 'GSIP', 'Press', 'Press 2', 1, ''),
(9, '2018-12-17', 'GSIP', 'Press', 'Press 3', 1, ''),
(10, '2018-12-17', 'GSIP', 'Press', 'Press 4', 1, ''),
(11, '2018-12-17', 'GSIP', 'Press', 'Press 5', 1, ''),
(12, '2018-12-17', 'GSIP', 'Press', 'Press 6', 0, 'screw patah'),
(103, '2018-12-20', 'GSDI', 'Fruit Reception', 'Tipping dump line B', 1, ''),
(104, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R line A', 1, ''),
(105, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R   line B', 1, ''),
(106, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage I', 1, ''),
(107, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage II', 1, ''),
(108, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 1', 1, ''),
(109, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 2', 1, ''),
(110, '2018-12-20', 'GSDI', 'Fruit Reception', 'FFB HorizontalConveyor', 1, ''),
(111, '2018-12-20', 'GSDI', 'Fruit Reception', 'FFB Cross Conveyor', 1, ''),
(112, '2018-12-20', 'GSDI', 'Fruit Reception', 'Hydraulic sliding FFB Cross', 1, ''),
(113, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 1 line A', 1, ''),
(114, '2018-12-20', 'GSDI', 'Fruit Reception', 'Inklined screper calig line A', 1, ''),
(115, '2018-12-20', 'GSDI', 'Fruit Reception', 'Inklined conveor calic line A', 1, ''),
(116, '2018-12-20', 'GSDI', 'Fruit Reception', 'Distribusi conveyor calig line B', 1, ''),
(117, '2018-12-20', 'GSDI', 'Fruit Reception', 'Power pack winch atas', 1, ''),
(118, '2018-12-20', 'GSDI', 'Fruit Reception', 'Singgle Winch no 3', 1, ''),
(119, '2018-12-20', 'GSDI', 'Fruit Reception', 'Singgle Winch 5 / undertow', 1, ''),
(120, '2018-12-20', 'GSDI', 'Fruit Reception', 'Singgle Winch 6', 1, ''),
(121, '2018-12-20', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 2', 1, ''),
(122, '2018-12-20', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 1', 1, ''),
(123, '2018-12-20', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 3', 1, ''),
(124, '2018-12-20', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 1 &amp; 2', 1, ''),
(125, '2018-12-20', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 3 &amp; 4', 1, ''),
(126, '2018-12-20', 'GSDI', 'Fruit Reception', 'Drainase sterililzer pump', 1, ''),
(127, '2018-12-20', 'GSDI', 'Fruit Reception', 'Air compressor sterilizer', 1, ''),
(128, '2018-12-20', 'GSDI', 'Fruit Reception', 'Bang dong Cagemen', 1, ''),
(129, '2018-12-20', 'GSDI', 'Fruit Reception', 'Indekser ', 1, ''),
(130, '2018-12-20', 'GSDI', 'Fruit Reception', 'Singgle Winch no 4', 1, ''),
(131, '2018-12-20', 'GSDI', 'Fruit Reception', 'Bangdong  L/R ', 1, ''),
(132, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 2 line A', 1, ''),
(133, '2018-12-21', 'GSDI', 'Fruit Reception', 'Tipping dump line B', 1, ''),
(134, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R line A', 0, ''),
(135, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R   line B', 0, ''),
(136, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage I', 0, ''),
(137, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage II', 0, ''),
(138, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 1', 0, ''),
(139, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 2', 0, ''),
(140, '2018-12-21', 'GSDI', 'Fruit Reception', 'FFB HorizontalConveyor', 0, ''),
(141, '2018-12-21', 'GSDI', 'Fruit Reception', 'FFB Cross Conveyor', 0, ''),
(142, '2018-12-21', 'GSDI', 'Fruit Reception', 'Hydraulic sliding FFB Cross', 0, ''),
(143, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 1 line A', 0, ''),
(144, '2018-12-21', 'GSDI', 'Fruit Reception', 'Inklined screper calig line A', 0, ''),
(145, '2018-12-21', 'GSDI', 'Fruit Reception', 'Inklined conveor calic line A', 0, ''),
(146, '2018-12-21', 'GSDI', 'Fruit Reception', 'Distribusi conveyor calig line B', 0, ''),
(147, '2018-12-21', 'GSDI', 'Fruit Reception', 'Power pack winch atas', 0, ''),
(148, '2018-12-21', 'GSDI', 'Fruit Reception', 'Singgle Winch no 3', 0, ''),
(149, '2018-12-21', 'GSDI', 'Fruit Reception', 'Singgle Winch 5 / undertow', 0, ''),
(150, '2018-12-21', 'GSDI', 'Fruit Reception', 'Singgle Winch 6', 0, ''),
(151, '2018-12-21', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 2', 0, ''),
(152, '2018-12-21', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 1', 0, ''),
(153, '2018-12-21', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 3', 0, ''),
(154, '2018-12-21', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 1 &amp; 2', 0, ''),
(155, '2018-12-21', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 3 &amp; 4', 0, ''),
(156, '2018-12-21', 'GSDI', 'Fruit Reception', 'Drainase sterililzer pump', 0, ''),
(157, '2018-12-21', 'GSDI', 'Fruit Reception', 'Air compressor sterilizer', 0, ''),
(158, '2018-12-21', 'GSDI', 'Fruit Reception', 'Bang dong Cagemen', 0, ''),
(159, '2018-12-21', 'GSDI', 'Fruit Reception', 'Indekser ', 0, ''),
(160, '2018-12-21', 'GSDI', 'Fruit Reception', 'Singgle Winch no 4', 0, ''),
(161, '2018-12-21', 'GSDI', 'Fruit Reception', 'Bangdong  L/R ', 0, ''),
(162, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 2 line A', 0, ''),
(163, '2018-12-18', 'GSDI', 'Fruit Reception', 'Tipping dump line B', 1, ''),
(164, '2018-12-18', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R line A', 0, ''),
(165, '2018-12-18', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R   line B', 0, ''),
(166, '2018-12-18', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage I', 0, ''),
(167, '2018-12-18', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage II', 0, ''),
(168, '2018-12-18', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 1', 0, ''),
(169, '2018-12-18', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 2', 0, ''),
(170, '2018-12-18', 'GSDI', 'Fruit Reception', 'FFB HorizontalConveyor', 0, ''),
(171, '2018-12-18', 'GSDI', 'Fruit Reception', 'FFB Cross Conveyor', 0, ''),
(172, '2018-12-18', 'GSDI', 'Fruit Reception', 'Hydraulic sliding FFB Cross', 0, ''),
(173, '2018-12-18', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 1 line A', 0, ''),
(174, '2018-12-18', 'GSDI', 'Fruit Reception', 'Inklined screper calig line A', 0, ''),
(175, '2018-12-18', 'GSDI', 'Fruit Reception', 'Inklined conveor calic line A', 0, ''),
(176, '2018-12-18', 'GSDI', 'Fruit Reception', 'Distribusi conveyor calig line B', 0, ''),
(177, '2018-12-18', 'GSDI', 'Fruit Reception', 'Power pack winch atas', 0, ''),
(178, '2018-12-18', 'GSDI', 'Fruit Reception', 'Singgle Winch no 3', 0, ''),
(179, '2018-12-18', 'GSDI', 'Fruit Reception', 'Singgle Winch 5 / undertow', 0, ''),
(180, '2018-12-18', 'GSDI', 'Fruit Reception', 'Singgle Winch 6', 0, ''),
(181, '2018-12-18', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 2', 0, ''),
(182, '2018-12-18', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 1', 0, ''),
(183, '2018-12-18', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 3', 0, ''),
(184, '2018-12-18', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 1 &amp; 2', 0, ''),
(185, '2018-12-18', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 3 &amp; 4', 0, ''),
(186, '2018-12-18', 'GSDI', 'Fruit Reception', 'Drainase sterililzer pump', 0, ''),
(187, '2018-12-18', 'GSDI', 'Fruit Reception', 'Air compressor sterilizer', 0, ''),
(188, '2018-12-18', 'GSDI', 'Fruit Reception', 'Bang dong Cagemen', 0, ''),
(189, '2018-12-18', 'GSDI', 'Fruit Reception', 'Indekser ', 0, ''),
(190, '2018-12-18', 'GSDI', 'Fruit Reception', 'Singgle Winch no 4', 0, ''),
(191, '2018-12-18', 'GSDI', 'Fruit Reception', 'Bangdong  L/R ', 0, ''),
(192, '2018-12-18', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 2 line A', 0, ''),
(193, '2018-12-19', 'GSDI', 'Fruit Reception', 'Tipping dump line B', 1, ''),
(194, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R line A', 0, ''),
(195, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R   line B', 0, ''),
(196, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage I', 0, ''),
(197, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage II', 0, ''),
(198, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 1', 0, ''),
(199, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 2', 0, ''),
(200, '2018-12-19', 'GSDI', 'Fruit Reception', 'FFB HorizontalConveyor', 0, ''),
(201, '2018-12-19', 'GSDI', 'Fruit Reception', 'FFB Cross Conveyor', 0, ''),
(202, '2018-12-19', 'GSDI', 'Fruit Reception', 'Hydraulic sliding FFB Cross', 0, ''),
(203, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 1 line A', 0, ''),
(204, '2018-12-19', 'GSDI', 'Fruit Reception', 'Inklined screper calig line A', 0, ''),
(205, '2018-12-19', 'GSDI', 'Fruit Reception', 'Inklined conveor calic line A', 0, ''),
(206, '2018-12-19', 'GSDI', 'Fruit Reception', 'Distribusi conveyor calig line B', 0, ''),
(207, '2018-12-19', 'GSDI', 'Fruit Reception', 'Power pack winch atas', 0, ''),
(208, '2018-12-19', 'GSDI', 'Fruit Reception', 'Singgle Winch no 3', 0, ''),
(209, '2018-12-19', 'GSDI', 'Fruit Reception', 'Singgle Winch 5 / undertow', 0, ''),
(210, '2018-12-19', 'GSDI', 'Fruit Reception', 'Singgle Winch 6', 0, ''),
(211, '2018-12-19', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 2', 0, ''),
(212, '2018-12-19', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 1', 0, ''),
(213, '2018-12-19', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 3', 0, ''),
(214, '2018-12-19', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 1 &amp; 2', 0, ''),
(215, '2018-12-19', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 3 &amp; 4', 0, ''),
(216, '2018-12-19', 'GSDI', 'Fruit Reception', 'Drainase sterililzer pump', 0, ''),
(217, '2018-12-19', 'GSDI', 'Fruit Reception', 'Air compressor sterilizer', 0, ''),
(218, '2018-12-19', 'GSDI', 'Fruit Reception', 'Bang dong Cagemen', 0, ''),
(219, '2018-12-19', 'GSDI', 'Fruit Reception', 'Indekser ', 0, ''),
(220, '2018-12-19', 'GSDI', 'Fruit Reception', 'Singgle Winch no 4', 0, ''),
(221, '2018-12-19', 'GSDI', 'Fruit Reception', 'Bangdong  L/R ', 0, ''),
(222, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 2 line A', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_activity`
--

CREATE TABLE IF NOT EXISTS `m_activity` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `no_wo` varchar(64) NOT NULL,
  `tanggal` date NOT NULL,
  `perbaikan` varchar(160) NOT NULL,
  `jenis_breakdown` varchar(32) NOT NULL,
  `jenis_problem` enum('alat','proses') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_activity`
--

INSERT INTO `m_activity` (`id`, `id_pabrik`, `no_wo`, `tanggal`, `perbaikan`, `jenis_breakdown`, `jenis_problem`) VALUES
(65, 'GSIP', 'GSIP-2018-11-19-02', '2018-12-01', 'cek piping', 'unit', 'alat'),
(66, 'GSIP', 'GSIP-2018-11-12-01', '2018-12-01', 'ganti bearing', 'unit', 'alat'),
(68, 'GSDI', 'GSDI-2018-12-02-01', '2018-12-02', 'perbaiki chain', 'pabrik', 'alat'),
(69, 'GSIP', 'GSIP-2018-11-12-01', '2018-12-03', 'cek', 'unit', 'alat'),
(92, 'GSDI', 'GSDI-2018-12-18-01', '2018-12-18', 'ganti screw', '', ''),
(93, 'GSDI', 'GSDI-2018-12-18-02', '2018-12-18', 'aspal jalan', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_activity_detail`
--

CREATE TABLE IF NOT EXISTS `m_activity_detail` (
  `id_pabrik` varchar(32) NOT NULL,
  `tanggal` date NOT NULL,
  `no_wo` varchar(32) NOT NULL,
  `nama_teknisi` varchar(32) DEFAULT NULL,
  `t_mulai` varchar(8) NOT NULL,
  `t_selesai` varchar(8) NOT NULL,
  `r_mulai` varchar(8) NOT NULL,
  `r_selesai` varchar(8) NOT NULL,
  `realisasi` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_activity_detail`
--

INSERT INTO `m_activity_detail` (`id_pabrik`, `tanggal`, `no_wo`, `nama_teknisi`, `t_mulai`, `t_selesai`, `r_mulai`, `r_selesai`, `realisasi`) VALUES
('GSIP', '2018-12-01', 'GSIP-2018-11-19-02', 'Har', '10:10', '10:00', '10:10', '10:00', '23:50'),
('GSIP', '2018-12-01', 'GSIP-2018-11-19-02', 'Sis', '10:10', '10:00', '10:10', '10:00', '23:50'),
('GSIP', '2018-12-01', 'GSIP-2018-11-12-01', 'eko', '10:10', '12:00', '13:00', '14:00', '01:00'),
('GSDI', '2018-12-02', 'GSDI-2018-12-02-01', 'Sis', '10:00', '12:00', '10:00', '12:00', '02:00'),
('GSIP', '2018-12-03', 'GSIP-2018-11-12-01', 'kik', '06:00', '08:00', '07:00', '09:00', '02:00'),
('GSDI', '2018-12-18', 'GSDI-2018-12-18-01', 'Sangadun', '07:00', '15:00', '07:00', '15:00', '08:00'),
('GSDI', '2018-12-18', 'GSDI-2018-12-18-01', 'Ahmad Fatoni', '10:00', '17:00', '12:00', '17:00', '05:00'),
('GSDI', '2018-12-18', 'GSDI-2018-12-18-02', 'Umarrudin', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_breakdown_pabrik`
--

CREATE TABLE IF NOT EXISTS `m_breakdown_pabrik` (
  `id` int(11) NOT NULL,
  `pt` varchar(64) NOT NULL,
  `station` varchar(64) NOT NULL,
  `equipment` varchar(64) NOT NULL,
  `problem` varchar(64) NOT NULL,
  `jenis` varchar(64) NOT NULL,
  `tipe` varchar(64) NOT NULL,
  `tindakan` varchar(64) NOT NULL,
  `mulai` datetime NOT NULL,
  `selesai` datetime NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_capex_pi`
--

CREATE TABLE IF NOT EXISTS `m_capex_pi` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `tahun` int(11) NOT NULL,
  `project_id` varchar(64) NOT NULL,
  `tipe` enum('Mill Replacement','HO Project') NOT NULL,
  `deskripsi` varchar(128) NOT NULL,
  `qty` varchar(64) NOT NULL,
  `um` enum('Pcs','Lot','Unit','Meter') NOT NULL,
  `budget` bigint(20) NOT NULL,
  `pkpo` enum('PK','PO') NOT NULL,
  `status_pi` enum('Process','Approve','Cancel','Dialihkan') NOT NULL,
  `due_date` date NOT NULL,
  `PIC` enum('Site','WSC','HO') NOT NULL,
  `kategori_progress` enum('Project Id Release','Fabrikasi','Mesin On Site','Install','Testing Commisioning') NOT NULL,
  `progress` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_capex_pi`
--

INSERT INTO `m_capex_pi` (`id`, `id_pabrik`, `tahun`, `project_id`, `tipe`, `deskripsi`, `qty`, `um`, `budget`, `pkpo`, `status_pi`, `due_date`, `PIC`, `kategori_progress`, `progress`) VALUES
(13, 'GSIP', 2018, 'apem', 'Mill Replacement', 'makanana 1', '10', 'Lot', 123, 'PK', 'Approve', '2018-11-26', 'Site', 'Project Id Release', '10%'),
(14, 'GSIP', 2018, 'bakpia', 'HO Project', 'food 2', '2', 'Pcs', 12, 'PO', 'Cancel', '2018-11-27', 'WSC', 'Project Id Release', '10%'),
(15, 'GSIP', 2018, 'cakwe', 'Mill Replacement', 'food 3', '4', 'Meter', 1, 'PO', 'Dialihkan', '2018-11-30', 'HO', 'Project Id Release', '10%'),
(18, 'ANA', 2018, 'tes', 'Mill Replacement', 'ini cuma ngetes', '12', 'Pcs', 1, 'PO', 'Process', '2018-12-19', 'WSC', 'Project Id Release', '10%'),
(19, 'GSDI', 2018, 'apem', 'Mill Replacement', 'makanana 1', '10', 'Lot', 123, 'PK', 'Approve', '2018-11-26', 'Site', 'Project Id Release', '10%'),
(20, 'GSDI', 2018, 'bakpia', 'HO Project', 'food 2', '2', 'Pcs', 12, 'PO', 'Process', '2018-11-27', 'WSC', 'Project Id Release', '10%'),
(21, 'GSDI', 2018, 'cakwe', 'Mill Replacement', 'food 3', '4', 'Meter', 1, 'PO', 'Dialihkan', '2018-11-30', 'HO', 'Project Id Release', '10%');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_capex_prpo`
--

CREATE TABLE IF NOT EXISTS `m_capex_prpo` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `tahun` int(11) NOT NULL,
  `project_id` varchar(64) NOT NULL,
  `no_pr` varchar(64) NOT NULL,
  `nominal_pr` bigint(20) NOT NULL,
  `status` varchar(64) NOT NULL,
  `no_po` varchar(64) NOT NULL,
  `nominal_po` bigint(20) NOT NULL,
  `vendor` varchar(64) NOT NULL,
  `keterangan` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_capex_prpo`
--

INSERT INTO `m_capex_prpo` (`id`, `id_pabrik`, `tahun`, `project_id`, `no_pr`, `nominal_pr`, `status`, `no_po`, `nominal_po`, `vendor`, `keterangan`) VALUES
(1, 'GSIP', 2018, 'cakwe', '12', 1, 'Authorized', '123', 2, 'mamang', 'pinggir jalan'),
(2, 'ANA', 2018, 'tes', '1234', 1000, 'Planned', '12345', 1200, 'allun jaya', 'barang dikirim dalam satu minggu'),
(3, 'GSDI', 2018, 'apem', '1111', 1, 'Planned', '2222', 2, 'naga jaya', 'harga naik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_grounding`
--

CREATE TABLE IF NOT EXISTS `m_grounding` (
  `id_pabrik` varchar(32) NOT NULL,
  `tahun` int(11) NOT NULL,
  `bak_kontrol` int(11) NOT NULL,
  `titik_pengukuran` varchar(32) NOT NULL,
  `jan` float NOT NULL,
  `feb` float NOT NULL,
  `mar` float NOT NULL,
  `apr` float NOT NULL,
  `mei` float NOT NULL,
  `jun` float NOT NULL,
  `jul` float NOT NULL,
  `agt` float NOT NULL,
  `sep` float NOT NULL,
  `okt` float NOT NULL,
  `nov` float NOT NULL,
  `des` float NOT NULL,
  `keterangan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_grounding`
--

INSERT INTO `m_grounding` (`id_pabrik`, `tahun`, `bak_kontrol`, `titik_pengukuran`, `jan`, `feb`, `mar`, `apr`, `mei`, `jun`, `jul`, `agt`, `sep`, `okt`, `nov`, `des`, `keterangan`) VALUES
('SAM', 2018, 1, 'limbah', 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
('GSDI', 2018, 1, 'timbangan', 12, 0.1, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
('GSDI', 2018, 0, '', 0, 2.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_highlight`
--

CREATE TABLE IF NOT EXISTS `m_highlight` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(32) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `bulan` varchar(2) NOT NULL,
  `station` varchar(32) NOT NULL,
  `unit` varchar(32) NOT NULL,
  `problem` varchar(64) NOT NULL,
  `corrective_action` varchar(64) NOT NULL,
  `due_date` varchar(32) NOT NULL,
  `PIC` varchar(32) NOT NULL,
  `account` varchar(32) NOT NULL,
  `status` varchar(32) NOT NULL,
  `penyelesaian` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_highlight`
--

INSERT INTO `m_highlight` (`id`, `id_pabrik`, `tahun`, `bulan`, `station`, `unit`, `problem`, `corrective_action`, `due_date`, `PIC`, `account`, `status`, `penyelesaian`) VALUES
(1, 'GSIP', '2018', '12', 'Loading Ramp', 'Press 4', 'asdf', 'asddd', '70 mei', 'Internal', 'RM', 'PR', 'Close');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_inventory`
--

CREATE TABLE IF NOT EXISTS `m_inventory` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` varchar(64) NOT NULL,
  `norma_min` varchar(64) NOT NULL,
  `norma_max` varchar(64) NOT NULL,
  `nilai_stok` varchar(64) NOT NULL,
  `shortage` varchar(64) NOT NULL,
  `normal` varchar(64) NOT NULL,
  `excess` varchar(64) NOT NULL,
  `undefined` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_inventory`
--

INSERT INTO `m_inventory` (`id`, `id_pabrik`, `tahun`, `bulan`, `norma_min`, `norma_max`, `nilai_stok`, `shortage`, `normal`, `excess`, `undefined`) VALUES
(1, 'GSIP', 2018, 'Januari', '1234', '', '', '', '', '', ''),
(2, 'GSIP', 2018, 'Februari', '5678', '', '', '', '', '', ''),
(3, 'GSIP', 2018, 'Maret', '', '', '', '', '', '', ''),
(4, 'GSIP', 2018, 'April', '', '', '', '', '', '', ''),
(5, 'GSIP', 2018, 'Mei', '', '', '', '', '', '', ''),
(6, 'GSIP', 2018, 'Juni', '', '', '', '', '', '', ''),
(7, 'GSIP', 2018, 'Juli', '', '', '', '', '', '', ''),
(8, 'GSIP', 2018, 'Agustus', '', '', '', '', '', '', ''),
(9, 'GSIP', 2018, 'September', '', '', '', '', '', '', ''),
(10, 'GSIP', 2018, 'Oktober', '', '', '', '', '', '', ''),
(11, 'GSIP', 2018, 'November', '', '', '', '', '', '', ''),
(12, 'GSIP', 2018, 'Desember', '', '', '', '', '', '', ''),
(13, 'GSPP', 2018, 'Januari', '1', '', '', '', '5', '', ''),
(14, 'GSPP', 2018, 'Februari', '', '2', '', '4', '', '6', ''),
(15, 'GSPP', 2018, 'Maret', '', '', '3', '', '', '', '7'),
(16, 'GSPP', 2018, 'April', '', '', '', '', '', '', ''),
(17, 'GSPP', 2018, 'Mei', '', '', '', '', '', '', ''),
(18, 'GSPP', 2018, 'Juni', '', '', '', '', '', '', ''),
(19, 'GSPP', 2018, 'Juli', '', '', '', '', '', '', ''),
(20, 'GSPP', 2018, 'Agustus', '', '', '', '', '', '', ''),
(21, 'GSPP', 2018, 'September', '', '', '', '', '', '', ''),
(22, 'GSPP', 2018, 'Oktober', '', '', '', '', '', '', ''),
(23, 'GSPP', 2018, 'November', '', '', '', '', '', '', ''),
(24, 'GSPP', 2018, 'Desember', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kapasitor`
--

CREATE TABLE IF NOT EXISTS `m_kapasitor` (
  `id_pabrik` varchar(8) NOT NULL,
  `tahun` int(11) NOT NULL,
  `kapasitor` varchar(32) NOT NULL,
  `kvar` int(11) NOT NULL,
  `jan` float NOT NULL,
  `feb` float NOT NULL,
  `mar` float NOT NULL,
  `apr` float NOT NULL,
  `mei` float NOT NULL,
  `jun` float NOT NULL,
  `jul` float NOT NULL,
  `agt` float NOT NULL,
  `sep` float NOT NULL,
  `okt` float NOT NULL,
  `nov` float NOT NULL,
  `des` float NOT NULL,
  `keterangan` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kapasitor`
--

INSERT INTO `m_kapasitor` (`id_pabrik`, `tahun`, `kapasitor`, `kvar`, `jan`, `feb`, `mar`, `apr`, `mei`, `jun`, `jul`, `agt`, `sep`, `okt`, `nov`, `des`, `keterangan`) VALUES
('GSDI', 2018, 'channel 1 power house', 50, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, ''),
('GSDI', 2018, 'channel 2 power house', 50, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, ''),
('GSDI', 2018, 'channel 3 power house', 50, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, ''),
('GSDI', 2018, 'channel 4 power house', 50, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, ''),
('GSDI', 2018, 'channel 5 power house', 50, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, ''),
('GSDI', 2018, 'channel 6 power house', 50, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, ''),
('GSDI', 2018, 'channel 7 power house', 50, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, 60.8, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_lkpmp`
--

CREATE TABLE IF NOT EXISTS `m_lkpmp` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` int(11) NOT NULL,
  `id_station` varchar(64) NOT NULL,
  `id_unit` varchar(64) NOT NULL,
  `kondisi` varchar(128) NOT NULL,
  `status` enum('Hijau','Kuning','Merah') NOT NULL,
  `identifikasi` varchar(128) NOT NULL,
  `perbaikan` varchar(128) NOT NULL,
  `pic` enum('Internal','WSC','External') NOT NULL,
  `status_sparepart` enum('Ready','Order','Progress Order') NOT NULL,
  `keterangan` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_lkpmp`
--

INSERT INTO `m_lkpmp` (`id`, `id_pabrik`, `tahun`, `bulan`, `id_station`, `id_unit`, `kondisi`, `status`, `identifikasi`, `perbaikan`, `pic`, `status_sparepart`, `keterangan`) VALUES
(3, 'GSIP', 2018, 11, 'Loading Ramp', 'Press 6', 'inverter short', 'Kuning', 'lifetime turun', 'penggantian IGBT', 'Internal', 'Progress Order', 'ke heriwell'),
(4, 'GSDI', 2018, 11, 'Loading Ramp', 'FFB conveyor', 'shaft patah', 'Kuning', 'overload', 'ganti shaft', 'Internal', 'Ready', 'pasang hari minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_recordhm`
--

CREATE TABLE IF NOT EXISTS `m_recordhm` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `id_station` varchar(64) NOT NULL,
  `unit` varchar(64) NOT NULL,
  `hm` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_recordhm`
--

INSERT INTO `m_recordhm` (`id`, `tanggal`, `id_pabrik`, `id_station`, `unit`, `hm`) VALUES
(1, '2018-11-15', 'GSDI', 'Loading Ramp', 'FFB conveyor', 10),
(14, '2018-11-22', 'GSIP', 'Press', 'Press 1', 100),
(15, '2018-11-22', 'GSIP', 'Press', 'Press 2', 0),
(16, '2018-11-22', 'GSIP', 'Press', 'Press 3', 0),
(17, '2018-11-22', 'GSIP', 'Press', 'Press 4', 1),
(18, '2018-11-22', 'GSIP', 'Press', 'Press 5', 1),
(19, '2018-11-22', 'GSIP', 'Press', 'Press 6', 1),
(20, '2018-11-21', 'GSIP', 'Press', 'Press 1', 90),
(21, '2018-11-21', 'GSIP', 'Press', 'Press 2', 0),
(22, '2018-11-21', 'GSIP', 'Press', 'Press 3', 0),
(23, '2018-11-21', 'GSIP', 'Press', 'Press 4', 0),
(24, '2018-11-21', 'GSIP', 'Press', 'Press 5', 0),
(25, '2018-11-21', 'GSIP', 'Press', 'Press 6', 0),
(46, '2018-12-18', 'GSDI', 'Threshing', 'Power Pack Tipper No. 1', 0),
(47, '2018-12-18', 'GSDI', 'Threshing', 'Sterilizer Bunch Conveyor', 0),
(48, '2018-12-18', 'GSDI', 'Threshing', 'Distribusi Bunch Conveyor', 0),
(49, '2018-12-18', 'GSDI', 'Threshing', 'Horizontal Empty Bunch Conveyor', 0),
(50, '2018-12-18', 'GSDI', 'Threshing', 'Inclined Empty Bunch Conveyor', 0),
(51, '2018-12-18', 'GSDI', 'Threshing', 'Thresher No. 4', 0),
(52, '2018-12-18', 'GSDI', 'Threshing', 'Thresher No. 2', 0),
(53, '2018-12-18', 'GSDI', 'Threshing', 'Thresher No. 3', 0),
(54, '2018-12-18', 'GSDI', 'Threshing', 'Thresher No. 1', 0),
(55, '2018-12-18', 'GSDI', 'Threshing', 'Bellow Thresher no. 1', 0),
(56, '2018-12-18', 'GSDI', 'Threshing', 'Bellow Thresher no. 2', 0),
(57, '2018-12-18', 'GSDI', 'Threshing', 'Bellow Thresher no. 3', 0),
(58, '2018-12-18', 'GSDI', 'Threshing', 'Bellow Thresher no. 4', 0),
(59, '2018-12-18', 'GSDI', 'Threshing', 'Re Treshing', 0),
(60, '2018-12-18', 'GSDI', 'Threshing', 'Bunch crusher', 0),
(61, '2018-12-18', 'GSDI', 'Threshing', 'Bottom Cross Conveyor', 0),
(62, '2018-12-18', 'GSDI', 'Threshing', 'Auto feeder  ', 0),
(63, '2018-12-18', 'GSDI', 'Threshing', 'Doble wins no 7 - 8', 0),
(64, '2018-12-18', 'GSDI', 'Threshing', 'Transfer cariage 3', 0),
(65, '2018-12-18', 'GSDI', 'Threshing', 'Transfer cariage 4', 0),
(66, '2018-12-21', 'GSDI', 'Fruit Reception', 'Tipping dump line B', 10),
(67, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R line A', 0),
(68, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R   line B', 0),
(69, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage I', 0),
(70, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage II', 0),
(71, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 1', 0),
(72, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 2', 0),
(73, '2018-12-21', 'GSDI', 'Fruit Reception', 'FFB HorizontalConveyor', 0),
(74, '2018-12-21', 'GSDI', 'Fruit Reception', 'FFB Cross Conveyor', 0),
(75, '2018-12-21', 'GSDI', 'Fruit Reception', 'Hydraulic sliding FFB Cross', 0),
(76, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 1 line A', 0),
(77, '2018-12-21', 'GSDI', 'Fruit Reception', 'Inklined screper calig line A', 0),
(78, '2018-12-21', 'GSDI', 'Fruit Reception', 'Inklined conveor calic line A', 0),
(79, '2018-12-21', 'GSDI', 'Fruit Reception', 'Distribusi conveyor calig line B', 0),
(80, '2018-12-21', 'GSDI', 'Fruit Reception', 'Power pack winch atas', 0),
(81, '2018-12-21', 'GSDI', 'Fruit Reception', 'Singgle Winch no 3', 0),
(82, '2018-12-21', 'GSDI', 'Fruit Reception', 'Singgle Winch 5 / undertow', 0),
(83, '2018-12-21', 'GSDI', 'Fruit Reception', 'Singgle Winch 6', 0),
(84, '2018-12-21', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 2', 0),
(85, '2018-12-21', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 1', 0),
(86, '2018-12-21', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 3', 0),
(87, '2018-12-21', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 1 &amp; 2', 0),
(88, '2018-12-21', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 3 &amp; 4', 0),
(89, '2018-12-21', 'GSDI', 'Fruit Reception', 'Drainase sterililzer pump', 0),
(90, '2018-12-21', 'GSDI', 'Fruit Reception', 'Air compressor sterilizer', 0),
(91, '2018-12-21', 'GSDI', 'Fruit Reception', 'Bang dong Cagemen', 0),
(92, '2018-12-21', 'GSDI', 'Fruit Reception', 'Indekser ', 0),
(93, '2018-12-21', 'GSDI', 'Fruit Reception', 'Singgle Winch no 4', 0),
(94, '2018-12-21', 'GSDI', 'Fruit Reception', 'Bangdong  L/R ', 0),
(95, '2018-12-21', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 2 line A', 0),
(96, '2018-12-20', 'GSDI', 'Fruit Reception', 'Tipping dump line B', 9),
(97, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R line A', 0),
(98, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R   line B', 0),
(99, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage I', 0),
(100, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage II', 0),
(101, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 1', 0),
(102, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 2', 0),
(103, '2018-12-20', 'GSDI', 'Fruit Reception', 'FFB HorizontalConveyor', 0),
(104, '2018-12-20', 'GSDI', 'Fruit Reception', 'FFB Cross Conveyor', 0),
(105, '2018-12-20', 'GSDI', 'Fruit Reception', 'Hydraulic sliding FFB Cross', 0),
(106, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 1 line A', 0),
(107, '2018-12-20', 'GSDI', 'Fruit Reception', 'Inklined screper calig line A', 0),
(108, '2018-12-20', 'GSDI', 'Fruit Reception', 'Inklined conveor calic line A', 0),
(109, '2018-12-20', 'GSDI', 'Fruit Reception', 'Distribusi conveyor calig line B', 0),
(110, '2018-12-20', 'GSDI', 'Fruit Reception', 'Power pack winch atas', 0),
(111, '2018-12-20', 'GSDI', 'Fruit Reception', 'Singgle Winch no 3', 0),
(112, '2018-12-20', 'GSDI', 'Fruit Reception', 'Singgle Winch 5 / undertow', 0),
(113, '2018-12-20', 'GSDI', 'Fruit Reception', 'Singgle Winch 6', 0),
(114, '2018-12-20', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 2', 0),
(115, '2018-12-20', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 1', 0),
(116, '2018-12-20', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 3', 0),
(117, '2018-12-20', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 1 &amp; 2', 0),
(118, '2018-12-20', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 3 &amp; 4', 0),
(119, '2018-12-20', 'GSDI', 'Fruit Reception', 'Drainase sterililzer pump', 0),
(120, '2018-12-20', 'GSDI', 'Fruit Reception', 'Air compressor sterilizer', 0),
(121, '2018-12-20', 'GSDI', 'Fruit Reception', 'Bang dong Cagemen', 0),
(122, '2018-12-20', 'GSDI', 'Fruit Reception', 'Indekser ', 0),
(123, '2018-12-20', 'GSDI', 'Fruit Reception', 'Singgle Winch no 4', 0),
(124, '2018-12-20', 'GSDI', 'Fruit Reception', 'Bangdong  L/R ', 0),
(125, '2018-12-20', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 2 line A', 0),
(126, '2018-12-19', 'GSDI', 'Fruit Reception', 'Tipping dump line B', 8),
(127, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R line A', 0),
(128, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Power Pack L/R   line B', 0),
(129, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage I', 0),
(130, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Transfer Carryage II', 0),
(131, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 1', 0),
(132, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Hydrolic Double Winch No. 2', 0),
(133, '2018-12-19', 'GSDI', 'Fruit Reception', 'FFB HorizontalConveyor', 0),
(134, '2018-12-19', 'GSDI', 'Fruit Reception', 'FFB Cross Conveyor', 0),
(135, '2018-12-19', 'GSDI', 'Fruit Reception', 'Hydraulic sliding FFB Cross', 0),
(136, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 1 line A', 0),
(137, '2018-12-19', 'GSDI', 'Fruit Reception', 'Inklined screper calig line A', 0),
(138, '2018-12-19', 'GSDI', 'Fruit Reception', 'Inklined conveor calic line A', 0),
(139, '2018-12-19', 'GSDI', 'Fruit Reception', 'Distribusi conveyor calig line B', 0),
(140, '2018-12-19', 'GSDI', 'Fruit Reception', 'Power pack winch atas', 0),
(141, '2018-12-19', 'GSDI', 'Fruit Reception', 'Singgle Winch no 3', 0),
(142, '2018-12-19', 'GSDI', 'Fruit Reception', 'Singgle Winch 5 / undertow', 0),
(143, '2018-12-19', 'GSDI', 'Fruit Reception', 'Singgle Winch 6', 0),
(144, '2018-12-19', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 2', 0),
(145, '2018-12-19', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 1', 0),
(146, '2018-12-19', 'GSDI', 'Fruit Reception', 'Condensat Pump No. 3', 0),
(147, '2018-12-19', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 1 &amp; 2', 0),
(148, '2018-12-19', 'GSDI', 'Fruit Reception', 'Power pack cantilever no. 3 &amp; 4', 0),
(149, '2018-12-19', 'GSDI', 'Fruit Reception', 'Drainase sterililzer pump', 0),
(150, '2018-12-19', 'GSDI', 'Fruit Reception', 'Air compressor sterilizer', 0),
(151, '2018-12-19', 'GSDI', 'Fruit Reception', 'Bang dong Cagemen', 0),
(152, '2018-12-19', 'GSDI', 'Fruit Reception', 'Indekser ', 0),
(153, '2018-12-19', 'GSDI', 'Fruit Reception', 'Singgle Winch no 4', 0),
(154, '2018-12-19', 'GSDI', 'Fruit Reception', 'Bangdong  L/R ', 0),
(155, '2018-12-19', 'GSDI', 'Fruit Reception', 'Motor Distributing calig conveyor no. 2 line A', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_recordhm_bunchpress`
--

CREATE TABLE IF NOT EXISTS `m_recordhm_bunchpress` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `unit` varchar(64) NOT NULL,
  `scroll` float NOT NULL,
  `top_semi_cage_ring` float NOT NULL,
  `bottom_semi_cage_ring` float NOT NULL,
  `semi_press_cone` float NOT NULL,
  `adjusting_knife` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_recordhm_htdrocyclone`
--

CREATE TABLE IF NOT EXISTS `m_recordhm_htdrocyclone` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(32) NOT NULL,
  `tanggal` date NOT NULL,
  `unit` varchar(64) NOT NULL,
  `cone` float NOT NULL,
  `dome` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_recordhm_screwpress`
--

CREATE TABLE IF NOT EXISTS `m_recordhm_screwpress` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `unit` varchar(64) NOT NULL,
  `ab` float NOT NULL,
  `cd` float NOT NULL,
  `presscage` float NOT NULL,
  `wearpipe` float NOT NULL,
  `shaft` float NOT NULL,
  `cone_guide` float NOT NULL,
  `adjusting_cone_guide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_sparepart_usage`
--

CREATE TABLE IF NOT EXISTS `m_sparepart_usage` (
  `no_wo` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `material` varchar(64) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_sparepart_usage`
--

INSERT INTO `m_sparepart_usage` (`no_wo`, `tanggal`, `material`, `qty`) VALUES
('GSDI-2018-12-18-01', '2018-12-18', 'screw AB', 3),
('GSDI-2018-12-18-02', '2018-12-18', 'aspal', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_wo`
--

CREATE TABLE IF NOT EXISTS `m_wo` (
  `id` int(11) NOT NULL,
  `id_pabrik` varchar(64) NOT NULL,
  `tanggal` date NOT NULL,
  `no_wo` varchar(64) NOT NULL,
  `station` varchar(64) NOT NULL,
  `unit` varchar(64) NOT NULL,
  `problem` varchar(64) NOT NULL,
  `desc_masalah` varchar(256) NOT NULL,
  `hm` float NOT NULL,
  `kategori` enum('plan','unplan') NOT NULL,
  `status` enum('open','close') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_wo`
--

INSERT INTO `m_wo` (`id`, `id_pabrik`, `tanggal`, `no_wo`, `station`, `unit`, `problem`, `desc_masalah`, `hm`, `kategori`, `status`) VALUES
(5, 'GSIP', '2018-11-12', 'GSIP-2018-11-12-01', 'Press', 'Press 1', 'bearing pecah', 'bearing screw press pecah', 5000, 'unplan', 'open'),
(6, 'GSIP', '2018-11-19', 'GSIP-2018-11-19-02', 'Sterilizer', '', 'grafik rebusan no 1 tidak terbaca', '', 10000, 'plan', 'open'),
(7, 'GSIP', '2018-11-22', 'GSIP-2018-11-22-01', 'Press', 'Press 1', 'screw patah', '', 3500, 'plan', 'open'),
(8, 'GSDI', '2018-12-02', 'GSDI-2018-12-02-01', 'Loading Ramp', 'FFB conveyor', 'chain putus', '', 4500, 'unplan', 'open'),
(9, 'GSIP', '2018-12-10', 'GSIP-2018-12-10-01', 'Press', 'Press 2', 'bearing press pecah', '', 8000, 'plan', 'open'),
(18, 'GSIP', '2018-12-13', 'GSIP-2018-12-13-01', 'Loading Ramp', '', 'Winch captan', 'Ganti motor bintang winch capstan no 1', 8000, 'plan', 'open'),
(19, 'GSIP', '2018-12-13', 'GSIP-2018-12-13-02', 'Loading Ramp', '', 'Tipping dump', 'Service tipping dump hidrolik no 1', 9000, '', ''),
(20, 'GSIP', '2018-12-13', 'GSIP-2018-12-13-03', 'Loading Ramp', '', 'Pintu loading ramp no 7', 'Penggantian bearing pintu loading ramp ', 0, '', ''),
(21, 'GSIP', '2018-12-13', 'GSIP-2018-12-13-04', 'Loading Ramp', '', 'Rail ', 'Penggantian rail lori kosong loading ramp line A', 0, '', ''),
(23, 'GSDI', '2018-12-18', 'GSDI-2018-12-18-01', 'Pressing', 'Screw Press No. 1', 'screw patah', 'patah cuk ra sah dijelasne', 23908, 'plan', 'open'),
(24, 'GSDI', '2018-12-18', 'GSDI-2018-12-18-02', 'General', '', '', '', 0, 'plan', 'open');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `user` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `kategori` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `user`, `password`, `kategori`) VALUES
(1, 'franggoro', '123', '0'),
(2, 'GSDI', '123', '2'),
(3, 'GSPP', '123', '2'),
(4, 'NAL', '123', '2'),
(5, 'GSIP', '123', '2'),
(6, 'SINP', '123', '2'),
(7, 'AAL1', '123', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_karyawan`
--
ALTER TABLE `master_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_pabrik`
--
ALTER TABLE `master_pabrik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_station`
--
ALTER TABLE `master_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_unit`
--
ALTER TABLE `master_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_unit_elektrik`
--
ALTER TABLE `master_unit_elektrik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_acm`
--
ALTER TABLE `m_acm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_activity`
--
ALTER TABLE `m_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_activity_detail`
--
ALTER TABLE `m_activity_detail`
  ADD KEY `id_pabrik` (`id_pabrik`),
  ADD KEY `tanggal` (`tanggal`),
  ADD KEY `no_wo` (`no_wo`);

--
-- Indexes for table `m_breakdown_pabrik`
--
ALTER TABLE `m_breakdown_pabrik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_capex_pi`
--
ALTER TABLE `m_capex_pi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_capex_prpo`
--
ALTER TABLE `m_capex_prpo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_highlight`
--
ALTER TABLE `m_highlight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_inventory`
--
ALTER TABLE `m_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_lkpmp`
--
ALTER TABLE `m_lkpmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_recordhm`
--
ALTER TABLE `m_recordhm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_recordhm_bunchpress`
--
ALTER TABLE `m_recordhm_bunchpress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_recordhm_htdrocyclone`
--
ALTER TABLE `m_recordhm_htdrocyclone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_recordhm_screwpress`
--
ALTER TABLE `m_recordhm_screwpress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_wo`
--
ALTER TABLE `m_wo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pabrik` (`id_pabrik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_karyawan`
--
ALTER TABLE `master_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `master_pabrik`
--
ALTER TABLE `master_pabrik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `master_station`
--
ALTER TABLE `master_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `master_unit`
--
ALTER TABLE `master_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=574;
--
-- AUTO_INCREMENT for table `master_unit_elektrik`
--
ALTER TABLE `master_unit_elektrik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_acm`
--
ALTER TABLE `m_acm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT for table `m_activity`
--
ALTER TABLE `m_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `m_breakdown_pabrik`
--
ALTER TABLE `m_breakdown_pabrik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_capex_pi`
--
ALTER TABLE `m_capex_pi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `m_capex_prpo`
--
ALTER TABLE `m_capex_prpo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_highlight`
--
ALTER TABLE `m_highlight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `m_inventory`
--
ALTER TABLE `m_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `m_lkpmp`
--
ALTER TABLE `m_lkpmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_recordhm`
--
ALTER TABLE `m_recordhm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `m_recordhm_bunchpress`
--
ALTER TABLE `m_recordhm_bunchpress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_recordhm_htdrocyclone`
--
ALTER TABLE `m_recordhm_htdrocyclone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_recordhm_screwpress`
--
ALTER TABLE `m_recordhm_screwpress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_wo`
--
ALTER TABLE `m_wo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
