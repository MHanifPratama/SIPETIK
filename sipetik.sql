-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220525.c1e393abce
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 26, 2022 at 02:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipetik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(1000) NOT NULL,
  `nomor_hp_admin` varchar(20) NOT NULL,
  `id_akun_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `akun_admin`
--

CREATE TABLE `akun_admin` (
  `id_akun_admin` int(11) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun_admin`
--

INSERT INTO `akun_admin` (`id_akun_admin`, `username`, `password`, `id_admin`, `email`) VALUES
(1, 'm.hanifpratama2040', '$2y$10$dJh1y9szn7X.dJ6tqLk7a.LCxuN3bPd1/B1vfBYUtWYvVZ.p8WLsy', 0, 'mhanifp27@gmail.com'),
(2, 'isaccdesnutsd', '$2y$10$iy2ELkN37wJvU1taF0uzXexn.vODdL92eo.jAlu5kGnE9zN9jp2H2', 0, 'mhanifp61@gmail.com'),
(3, 'MHanifPratama', '$2y$10$./eH42OKUnJdCv23iNi4ru4ZXWPRcT0gFkbclIfRGKI/AY.HBpFYC', 0, 'mhanifp45@gmail.com'),
(4, 'isaccdesnuts1', '$2y$10$3DoCEbk8nDUrL3Ujboagv.ZGshbGPNz73LCNnmEhyYPo1DECZKEhW', 0, 'mhanifp111@gmail.com'),
(5, 'm.hanifpratama333', '$2y$10$r/9qENKMijnQrJuQwB.VMuWC1Y.kiF6bQ3.iQkQUAELre6Ew71Eee', 0, 'mhanifp333@gmail.com'),
(6, 'lele222', '$2y$10$PK.vQN05RnhKYu9EE9F3Ke0wTj0iaLC1rD88QiOgMv1B.8i7n0y3i', 0, 'mhanifp222@gmail.com'),
(7, 'Hanif1', '$2y$10$LUgegCnwErbNoqQq9pMm.Oaq5EU8fTBlD6IPgUg9/nkFdK2sQBdGC', 0, 'm.hanifpratama2040@unila.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `akun_staff`
--

CREATE TABLE `akun_staff` (
  `id_staff` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun_staff`
--

INSERT INTO `akun_staff` (`id_staff`, `email`, `username`, `password`) VALUES
(1, 'mhanifp27@gmail.com', 'm.hanifpratama2040', '$2y$10$08kKSJCD7WkTPquucv272.sH5aNw82lJgsCgSsRS65ORuFOK/NQUO');

-- --------------------------------------------------------

--
-- Table structure for table `akun_user`
--

CREATE TABLE `akun_user` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun_user`
--

INSERT INTO `akun_user` (`id_akun`, `username`, `password`, `id_pelanggan`, `email`) VALUES
(1, 'm.hanifpratama2040', '$2y$10$Zacxl25OedihD3YkXVWqxe0yFGAc7drkYEnpSimE7SakAGY/pvA8S', 1, 'mhanifp27@gmail.com'),
(2, 'f4mouseAA', '$2y$10$TZ0/vs7FKb/oauhRrE9/N.afL6Ch54wkR8d03QEKNDOn406/Wpp7a', 2, 'mhanifp2711@gmail.com'),
(3, 'm.hanifpratama2022', '$2y$10$OnPKsv4nPIRIywi3hlBb2OrXO3pFnJsnTKIaUMzO3hilHDtLq.wHi', 3, 'mhanifp222@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id_bus` int(100) NOT NULL,
  `nama_bus` varchar(1000) NOT NULL,
  `id_tipe` int(11) NOT NULL,
  `id_supir` int(11) NOT NULL,
  `id_perjalanan` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id_bus`, `nama_bus`, `id_tipe`, `id_supir`, `id_perjalanan`, `id_jadwal`) VALUES
(9, 'Dulux', 3, 2, 2, 5),
(10, 'Surya Kejenggotan', 1, 1, 1, 4),
(11, 'Surya Kencana', 3, 9, 6, 6),
(12, 'Mclaren Bus', 1, 10, 6, 6),
(13, 'Dulux', 3, 179, 1, 8),
(14, 'Williams', 2, 10, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `judul`, `deskripsi`) VALUES
(1, 'Diskon Akhir Tahun', 'Dapatkan Diskon Senilai 30% khusus rute Bandar Lampung ke Pringsewu dan Sebaliknya'),
(3, 'Semarak Ramadhan', 'Semarakan Ramadhan Dengan Promo yang ada');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `tanggal`, `jam`) VALUES
(4, '2022-05-24', '21:00:00'),
(5, '2022-05-24', '12:00:00'),
(6, '2022-05-26', '13:00:00'),
(8, '2022-05-27', '20:00:00'),
(9, '2022-05-27', '08:00:00'),
(10, '2022-05-26', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `total_tiket` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `tanggal_laporan`, `total_tiket`, `total_harga`) VALUES
(1, '2022-05-26', 3, 2304000),
(2, '2022-05-27', 2, 2928000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(1000) NOT NULL,
  `nomor_hp_pelanggan` varchar(20) NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `nomor_hp_pelanggan`, `id_akun`) VALUES
(1, 'M Hanif Pratama ', '081272562034', 1),
(2, 'Rifqi Adliansyah', '081269694646', 2),
(3, 'Hanif Nuk Pynka Sarah', '08121122554488', 3);

-- --------------------------------------------------------

--
-- Table structure for table `perjalanan`
--

CREATE TABLE `perjalanan` (
  `id_perjalanan` int(11) NOT NULL,
  `kota_awal` varchar(1000) NOT NULL,
  `kota_akhir` varchar(1000) NOT NULL,
  `total_km` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perjalanan`
--

INSERT INTO `perjalanan` (`id_perjalanan`, `kota_awal`, `kota_akhir`, `total_km`) VALUES
(1, 'Bandar Lampung', 'Mesuji', 183),
(2, 'Bandar Lampung', 'Pringsewu', 44),
(3, 'Pringsewu', 'Bandar Lampung', 44),
(6, 'Bandar Lampung', 'Lampung Barat', 128);

-- --------------------------------------------------------

--
-- Table structure for table `supir`
--

CREATE TABLE `supir` (
  `id_supir` int(11) NOT NULL,
  `nama_supir` varchar(1000) NOT NULL,
  `nomor_hp_supir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supir`
--

INSERT INTO `supir` (`id_supir`, `nama_supir`, `nomor_hp_supir`) VALUES
(1, 'PaijoMan', '100202202'),
(2, 'Ayrton Senna', '1111122223333'),
(3, 'Schumacher', '081245712213'),
(4, 'Naufal', '0515458454'),
(6, 'Verstappen', '081245758689'),
(7, 'Paimon', '18115154747'),
(8, 'Dimas', '081245784575'),
(9, 'Bottas', '0845154114'),
(10, 'Prost', '08121254541'),
(11, 'Sendi', '081122457541'),
(12, 'Hamilton', '08121245151'),
(179, 'Leclerc', '01578122415'),
(180, 'AAA', '0812752541');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `id_bus` int(11) NOT NULL,
  `nama` varchar(1000) NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `id_laporan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `id_bus`, `nama`, `harga_tiket`, `id_akun`, `id_laporan`) VALUES
(1, 10, 'Hanif Nuk Pynka Sarah', 366000, 3, 0),
(2, 9, 'Hanif Nuk Pynka Sarah', 352000, 3, 0),
(3, 11, 'M Hanif Pratama ', 1024000, 1, 0),
(4, 13, 'Adrian Newey', 1464000, 3, 0),
(5, 12, 'Kucing', 256000, 3, 0),
(6, 11, 'Rendi', 1024000, 1, 0),
(7, 13, 'Contoh', 1464000, 3, 0),
(8, 13, 'Hanif Nuk Pynka Sarah', 1464000, 3, 0),
(9, 14, 'Naufal Dapi', 732000, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tipe_bus`
--

CREATE TABLE `tipe_bus` (
  `id_tipe` int(11) NOT NULL,
  `nama_tipe` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipe_bus`
--

INSERT INTO `tipe_bus` (`id_tipe`, `nama_tipe`, `harga`) VALUES
(1, 'Ekonomi', 2000),
(2, 'Medium', 4000),
(3, 'Bisnis', 8000),
(11, 'Pribadi', 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `akun_admin`
--
ALTER TABLE `akun_admin`
  ADD PRIMARY KEY (`id_akun_admin`);

--
-- Indexes for table `akun_staff`
--
ALTER TABLE `akun_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `akun_user`
--
ALTER TABLE `akun_user`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id_bus`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `perjalanan`
--
ALTER TABLE `perjalanan`
  ADD PRIMARY KEY (`id_perjalanan`);

--
-- Indexes for table `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`id_supir`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- Indexes for table `tipe_bus`
--
ALTER TABLE `tipe_bus`
  ADD PRIMARY KEY (`id_tipe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun_admin`
--
ALTER TABLE `akun_admin`
  MODIFY `id_akun_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `akun_staff`
--
ALTER TABLE `akun_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `akun_user`
--
ALTER TABLE `akun_user`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id_bus` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `perjalanan`
--
ALTER TABLE `perjalanan`
  MODIFY `id_perjalanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supir`
--
ALTER TABLE `supir`
  MODIFY `id_supir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tipe_bus`
--
ALTER TABLE `tipe_bus`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



