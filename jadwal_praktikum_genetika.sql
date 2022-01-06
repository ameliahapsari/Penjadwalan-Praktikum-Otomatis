-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Agu 2020 pada 09.08
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwal_praktikum_genetika`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asisten`
--

CREATE TABLE `asisten` (
  `kode` int(2) NOT NULL,
  `nim` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status_asisten` int(3) NOT NULL,
  `id_asisten` varchar(10) DEFAULT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `asisten`
--

INSERT INTO `asisten` (`kode`, `nim`, `nama`, `alamat`, `telp`, `password`, `status_asisten`, `id_asisten`, `foto`) VALUES
(324, '2014470015', 'Arie Kurniawan', 'Jakarta', '', '2014470015', 1, '2014470015', 'IMG_20190924_082057.jpg'),
(325, '2015470025', 'Farras Fauzan', 'Jakarta', '', '2015470025', 4, '2015470025', ''),
(326, '2016470003', 'Amelia Tri Hapsari', 'Jakarta', '', '2016470003', 1, '2016470003', 'sketch.webp'),
(327, '2016470009', 'Aulia Syifa', 'Jakarta', '', '2016470009', 1, '2016470009', ''),
(328, '2016470057', 'Syaifudin Alkatiri', 'Bogor', '', '2016470057', 1, '2016470057', ''),
(329, '2016470066', 'Yusup Hidayat Winata', 'Jakarta', '', '2016470066', 1, '2016470066', ''),
(330, '2017470015', 'Alviant Chandra Kusuma', 'Bekasi', '', '2017470015', 1, '2017470015', ''),
(331, '2017470020', 'Bukhari Hasan', 'Bekasi', '', '2017470020', 1, '2017470020', ''),
(332, '2017470111', 'Raulina Rauzan', 'Bekasi', '', '2017470111', 1, '2017470111', ''),
(333, '2018470053', 'Muhammad Righteous Leader', 'Bekasi', '', '2018470053', 1, '2018470053', ''),
(334, '2018470039', 'Kahfi Deli Hudaya', 'Jakarta', '', '2018470039', 1, '2018470039', ''),
(335, '2018470055', 'Murti Setto Hidayani', 'Jakarta', '', '2018470055', 1, '2018470055', ''),
(336, '2018470033', 'Herlin Dwi Astuti', 'Jakarta', '', '2018470033', 1, '2018470033', ''),
(337, '2014470041', 'Muhammad Nur Arifin', 'Jakarta', '', '2014470041', 4, '2014470041', ''),
(338, '2014470023', 'Dani Darmawan', 'Jakarta', '', '2014470023', 4, '2014470023', ''),
(339, '2014470022', 'Danang Tri Atmaja', 'Jakarta', '', '2014470022', 4, '2014470022', ''),
(340, '2014470017', 'Asmarita Dewi', 'Jakarta', '', '2014470017', 4, '2014470017', ''),
(341, '2015470013', 'Bagus Windhu Aponsa', 'Jakarta', '', '2015470013', 4, '2015470013', ''),
(342, '2015470051', 'Rizal Imam Firmansyah', 'Bekasi', '', '2015470051', 4, '2015470051', ''),
(343, '2015470007', 'Andita Rizkiah', 'Depok', '', '2015470007', 4, '2015470007', ''),
(344, '2015470044', 'Muhammad Ravi Mega Arasy', 'Jakarta', '', '2015470044', 1, '2015470044', ''),
(345, '2015470042', 'Muhammad Luqman', 'Jakarta', '', '2015470042', 4, '2015470042', ''),
(346, '2015470048', 'Muzammil Insani Al-Faruqi', 'Jakarta', '', '2015470048', 4, '2015470048', ''),
(347, '2014470070', 'Yasya Nurrus Silmi', 'Bekasi', '', '2014470070', 4, '2014470070', ''),
(348, '2013470225', 'Arsya', 'Jakarta', '', '2013470225', 4, '2013470225', ''),
(349, '2013470082', 'Sabrina Nurindra Putri', 'Jakarta', '', '2013470082', 4, '2013470082', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id_hari` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`kode`, `nama`, `id_hari`) VALUES
(1, 'Senin', 'H01'),
(2, 'Selasa', 'H02'),
(3, 'Rabu', 'H03'),
(4, 'Kamis', 'H04'),
(5, 'Jumat', 'H05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalpelajaran`
--

CREATE TABLE `jadwalpelajaran` (
  `kode` int(10) NOT NULL,
  `kode_pengampu` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_ruang` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='hasil proses';

--
-- Dumping data untuk tabel `jadwalpelajaran`
--

INSERT INTO `jadwalpelajaran` (`kode`, `kode_pengampu`, `kode_jam`, `kode_hari`, `kode_ruang`) VALUES
(1, 1485, 12, 4, 4),
(2, 1486, 27, 3, 1),
(3, 1487, 27, 2, 4),
(4, 1488, 27, 1, 2),
(5, 1489, 27, 4, 1),
(6, 1490, 12, 4, 2),
(7, 1491, 12, 1, 3),
(8, 1492, 27, 4, 2),
(9, 1493, 12, 2, 2),
(10, 1494, 12, 5, 3),
(11, 1495, 27, 2, 2),
(12, 1496, 12, 1, 1),
(13, 1497, 27, 5, 2),
(14, 1498, 27, 5, 1),
(15, 1499, 12, 3, 1),
(16, 1500, 27, 3, 2),
(17, 1501, 12, 2, 1),
(18, 1502, 27, 1, 3),
(19, 1503, 27, 2, 1),
(20, 1504, 12, 5, 1),
(21, 1505, 12, 3, 2),
(22, 1506, 12, 1, 2),
(23, 1507, 27, 1, 1),
(24, 1508, 12, 5, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `kode` int(10) NOT NULL,
  `range_jam` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`kode`, `range_jam`) VALUES
(1, '07.30-08.20'),
(2, '08.20-09.10'),
(3, '09.10-10.00'),
(4, '10.10-11.00'),
(5, '11.00-11.50'),
(6, '11.50-12.40'),
(7, '12.40-13.30'),
(8, '13.30-14.20'),
(9, '14.20-15.10'),
(10, '15:10-16:00'),
(11, '16.00-16.50'),
(12, '16.50-17.40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam2`
--

CREATE TABLE `jam2` (
  `kode` int(10) NOT NULL,
  `range_jam` varchar(50) DEFAULT NULL,
  `sks` int(2) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `id_jam` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jam2`
--

INSERT INTO `jam2` (`kode`, `range_jam`, `sks`, `sesi`, `id_jam`) VALUES
(12, '15.30-17.00', 1, 1, 'T04'),
(27, '17.00 - 18.30', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kode` int(11) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kode`, `nama_jurusan`) VALUES
(1, 'TEKNIK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `kode` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kode_jurusan` int(3) NOT NULL,
  `id_kelas` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`kode`, `nama_kelas`, `kode_jurusan`, `id_kelas`) VALUES
(1, 'A1', 1, 'K01'),
(2, 'A2', 1, 'K02'),
(3, 'A3', 1, 'K03'),
(4, 'A4', 1, 'K04'),
(5, 'A5', 0, NULL),
(6, 'A6', 0, NULL),
(7, 'A7', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `kode` int(2) NOT NULL,
  `nim` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `jurusan` int(3) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`kode`, `nim`, `nama`, `alamat`, `telp`, `password`, `jurusan`, `id_semester`, `id_kelas`, `foto`) VALUES
(2, '2016470009', 'Aulia Syifa', 'Jakarta', '', '2016470009', 1, 5, '4', ''),
(3, '2016470021', 'Fatimah Ardilla', 'Jakarta', '', '2016470021', 1, 5, '3', ''),
(4, '2016470028', 'Lulu Khodijah', 'Depok', '', '2016470028', 1, 5, '2', ''),
(5, '2016470047', 'Noviarum Widyasmara Larasanti', 'Jakarta', '', '2016470047', 1, 5, '2', ''),
(6, '2016470039', 'Muhammad Efendi', 'Jakarta', '', '2016470039', 1, 5, '2', ''),
(9, '2016470032', 'Mohammad Danis', 'Jakarta', '', '2016470032', 1, 1, '2', ''),
(10, '2016470066', 'Yusup Hidayat Winata', 'Jakarta', '', '2016470066', 1, 2, '3', ''),
(11, '2016470006', 'Anggi Saputra', 'Jakarta', '', '2016470006', 1, 1, '2', ''),
(12, '20164700002', 'Aldie Yhoga', 'Jakarta', '', '20164700002', 1, 2, '3', ''),
(13, '2016470010', 'Ibnu Adamsyah', 'Bekasi', '', '2016470010', 1, 2, '1', ''),
(15, '2016470003', 'Amelia Tri Hapsari', 'Jakarta', '', '2016470003', 1, 1, '2', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matapelajaran`
--

CREATE TABLE `matapelajaran` (
  `kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jumlah_jam` int(6) DEFAULT NULL,
  `semester` int(2) DEFAULT NULL,
  `aktif` enum('True','False') DEFAULT 'True',
  `jenis` enum('TEORI','PRAKTIKUM') DEFAULT 'TEORI',
  `nama_kode` varchar(10) DEFAULT NULL,
  `kode_prodi` int(5) DEFAULT NULL,
  `id_mapel` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='example kode_mk = 0765109 ';

--
-- Dumping data untuk tabel `matapelajaran`
--

INSERT INTO `matapelajaran` (`kode`, `nama`, `jumlah_jam`, `semester`, `aktif`, `jenis`, `nama_kode`, `kode_prodi`, `id_mapel`) VALUES
(398, 'Dasar-Dasar Pemograman', 1, 1, 'True', 'PRAKTIKUM', 'PINF001', 1, 'PINF01'),
(399, 'Arsitektur dan Organisasi Komputer', 1, 2, 'True', 'PRAKTIKUM', 'PINF013', 1, 'PINF13'),
(400, 'Interaksi Manusia dan Komputer', 1, 2, 'True', 'PRAKTIKUM', 'PINF014', 1, 'PINF14'),
(401, 'Perancangan Basis Data', 1, 2, 'True', 'PRAKTIKUM', 'PINF015', 1, 'PINF15'),
(402, 'Pemograman Berorientasi Objek', 1, 2, 'True', 'PRAKTIKUM', 'PINF016', 1, 'PINF16'),
(405, 'Sistem Operasi', 1, 2, 'True', 'PRAKTIKUM', 'PINF017', 1, 'PINF17'),
(406, 'Pemograman Berbasis Web', 1, 2, 'True', 'PRAKTIKUM', 'PINF018', 1, 'PINF18'),
(407, 'Mikrokontroller', 1, 2, 'True', 'PRAKTIKUM', 'PINF019', 1, 'PINF19'),
(408, 'Pembelajaran Mesin', 1, 2, 'True', 'PRAKTIKUM', 'PINF020', 1, 'PINF20'),
(409, 'Jaringan Komputer Lanjut', 1, 2, 'True', 'PRAKTIKUM', 'PINF021', 1, 'PINF21'),
(410, 'Jaringan Komputer', 1, 2, 'True', 'PRAKTIKUM', 'PINF012', 1, 'PINF12'),
(411, 'Struktur Data dan Algoritma', 1, 2, 'True', 'PRAKTIKUM', 'PINF011', 1, 'PINF11'),
(412, 'Desain Analisis dan Algoritma', 1, 1, 'True', 'PRAKTIKUM', 'PINF002', 1, 'PINF02'),
(413, 'Statistika', 1, 1, 'True', 'PRAKTIKUM', 'PINF003', 1, 'PINF03'),
(414, 'Bahasa Rakitan', 1, 1, 'True', 'PRAKTIKUM', 'PINF004', 1, 'PINF04'),
(415, 'Keamanan Jaringan', 1, 1, 'True', 'PRAKTIKUM', 'PINF005', 1, 'PINF05'),
(416, 'Kecerdasan Buatan', 1, 1, 'True', 'PRAKTIKUM', 'PINF006', 1, 'PINF06'),
(417, 'Rekayasa Perangkat Lunak', 1, 1, 'True', 'PRAKTIKUM', 'PINF007', 1, 'PINF07'),
(418, 'Pemograman Berbasis Mobile', 1, 1, 'True', 'PRAKTIKUM', 'PINF008', 1, 'PINF08'),
(419, 'Kewirausahaan IT', 1, 1, 'True', 'PRAKTIKUM', 'PINF09', 1, 'PINF09'),
(420, 'Robotika', 1, 1, 'True', 'PRAKTIKUM', 'PINF10', 1, 'PINF10'),
(421, 'Sistem Pakar', 1, 2, 'True', 'PRAKTIKUM', 'PINF022', 1, 'PINF22'),
(422, 'Pengantar Ilmu Komputer', 1, 1, 'True', 'PRAKTIKUM', 'PINF023', 1, 'PINF023'),
(423, 'Komunikasi Data', 1, 1, 'True', 'PRAKTIKUM', 'PINF024', 1, 'PINF024'),
(424, 'Struktur Bahasa Pemograman', 1, 1, 'True', 'PRAKTIKUM', 'PINF025', 1, 'PINF025'),
(425, 'Algoritma Paralel', 1, 1, 'True', 'PRAKTIKUM', 'PINF026', 1, 'PINF026');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengampu`
--

CREATE TABLE `pengampu` (
  `kode` int(10) NOT NULL,
  `kode_mk` int(10) DEFAULT NULL,
  `kode_asisten` int(10) DEFAULT NULL,
  `kelas` int(10) DEFAULT NULL,
  `tahun_akademik` int(10) DEFAULT NULL,
  `kode_prodi` int(11) DEFAULT NULL,
  `semester` int(2) DEFAULT NULL,
  `kuota` int(5) DEFAULT NULL,
  `kode_ruang` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengampu`
--

INSERT INTO `pengampu` (`kode`, `kode_mk`, `kode_asisten`, `kelas`, `tahun_akademik`, `kode_prodi`, `semester`, `kuota`, `kode_ruang`) VALUES
(1362, 398, 342, 1, 11, 1, 1, 20, 2),
(1363, 398, 343, 2, 11, 1, 1, 20, 1),
(1364, 398, 344, 3, 11, 1, 1, 20, 1),
(1365, 398, 327, 4, 11, 1, 1, 20, 1),
(1367, 398, 341, 6, 11, 1, 1, 20, 4),
(1368, 412, 329, 1, 11, 1, 3, 20, 4),
(1369, 412, 328, 2, 11, 1, 3, 20, 1),
(1371, 413, 326, 1, 11, 1, 3, 20, 2),
(1372, 413, 326, 2, 11, 1, 3, 20, 2),
(1373, 413, 328, 3, 11, 1, 3, 20, 2),
(1374, 415, 346, 1, 11, 1, 5, 20, 2),
(1375, 415, 325, 2, 11, 1, 5, 20, 2),
(1376, 415, 346, 3, 11, 1, 5, 10, 3),
(1377, 417, 341, 1, 11, 1, 5, 20, 4),
(1378, 417, 341, 2, 11, 1, 5, 20, 4),
(1379, 416, 343, 1, 11, 1, 5, 20, 1),
(1380, 416, 343, 2, 11, 1, 5, 20, 2),
(1381, 416, 342, 3, 11, 1, 5, 20, 1),
(1382, 414, 342, 1, 11, 1, 5, 20, 1),
(1383, 414, 342, 2, 11, 1, 5, 20, 1),
(1384, 418, 338, 1, 11, 1, 7, 20, 4),
(1385, 418, 343, 2, 11, 1, 7, 20, 4),
(1386, 419, 339, 1, 11, 1, 7, 20, 1),
(1387, 419, 339, 2, 11, 1, 7, 20, 1),
(1389, 419, 339, 3, 11, 1, 7, 20, 1),
(1390, 412, 344, 3, 11, 1, 3, 20, 2),
(1391, 398, 327, 1, 12, 1, 1, 20, 2),
(1392, 398, 331, 2, 12, 1, 1, 20, 2),
(1393, 398, 330, 3, 12, 1, 1, 20, 1),
(1394, 398, 325, 4, 12, 1, 1, 20, 1),
(1395, 398, 332, 5, 12, 1, 1, 20, 2),
(1396, 398, 329, 6, 12, 1, 1, 20, 1),
(1397, 398, 326, 7, 12, 1, 1, 20, 2),
(1398, 412, 328, 1, 12, 1, 3, 20, 1),
(1399, 412, 329, 2, 12, 1, 3, 20, 2),
(1400, 412, 326, 3, 12, 1, 3, 20, 2),
(1401, 412, 330, 4, 12, 1, 3, 20, 1),
(1402, 413, 326, 1, 12, 1, 3, 20, 1),
(1403, 413, 327, 2, 12, 1, 3, 20, 2),
(1404, 413, 328, 3, 12, 1, 3, 20, 1),
(1405, 414, 346, 1, 12, 1, 5, 20, 1),
(1406, 414, 342, 2, 12, 1, 5, 20, 2),
(1407, 415, 325, 1, 12, 1, 5, 20, 1),
(1408, 415, 341, 2, 12, 1, 5, 20, 2),
(1409, 415, 346, 3, 12, 1, 5, 10, 3),
(1410, 416, 343, 1, 12, 1, 5, 20, 1),
(1411, 416, 342, 2, 12, 1, 5, 20, 2),
(1412, 416, 341, 3, 12, 1, 5, 10, 3),
(1413, 417, 345, 1, 12, 1, 5, 20, 1),
(1414, 417, 343, 2, 12, 1, 5, 20, 2),
(1415, 418, 330, 1, 12, 1, 7, 20, 2),
(1416, 418, 330, 2, 12, 1, 7, 10, 3),
(1417, 419, 332, 1, 12, 1, 7, 20, 1),
(1418, 419, 326, 2, 12, 1, 7, 20, 2),
(1419, 419, 328, 3, 12, 1, 7, 20, 2),
(1420, 420, 329, 1, 12, 1, 7, 20, 2),
(1421, 420, 329, 2, 12, 1, 7, 20, 2),
(1422, 411, 343, 1, 10, 1, 2, 20, 1),
(1423, 411, 338, 2, 10, 1, 2, 20, 2),
(1424, 411, 347, 3, 10, 1, 2, 20, 4),
(1425, 411, 340, 4, 10, 1, 2, 20, 1),
(1426, 410, 337, 1, 10, 1, 4, 20, 1),
(1427, 410, 339, 2, 10, 1, 4, 20, 2),
(1428, 410, 324, 3, 10, 1, 4, 20, 4),
(1429, 401, 329, 1, 10, 1, 4, 20, 4),
(1430, 402, 347, 1, 10, 1, 4, 20, 1),
(1431, 402, 338, 2, 10, 1, 4, 20, 2),
(1432, 402, 347, 3, 10, 1, 4, 20, 1),
(1433, 402, 338, 4, 10, 1, 4, 20, 2),
(1434, 400, 343, 1, 10, 1, 4, 20, 4),
(1435, 400, 343, 2, 10, 1, 4, 20, 4),
(1436, 399, 337, 1, 10, 1, 4, 20, 1),
(1437, 399, 339, 2, 10, 1, 4, 20, 2),
(1438, 406, 339, 1, 10, 1, 6, 20, 1),
(1439, 406, 337, 2, 10, 1, 6, 20, 2),
(1440, 406, 340, 3, 10, 1, 6, 20, 1),
(1441, 408, 340, 1, 10, 1, 6, 20, 1),
(1442, 408, 324, 2, 10, 1, 6, 20, 2),
(1443, 409, 324, 1, 10, 1, 6, 20, 1),
(1444, 409, 337, 2, 10, 1, 6, 20, 1),
(1445, 421, 340, 1, 10, 1, 4, 20, 2),
(1446, 398, 340, 1, 10, 1, 1, 20, 1),
(1447, 398, 348, 2, 10, 1, 1, 20, 2),
(1448, 398, 338, 3, 10, 1, 1, 20, 4),
(1449, 398, 339, 4, 10, 1, 1, 20, 1),
(1450, 398, 343, 5, 10, 1, 1, 20, 2),
(1451, 398, 337, 6, 10, 1, 1, 20, 4),
(1452, 412, 348, 1, 10, 1, 3, 20, 2),
(1453, 412, 349, 2, 10, 1, 3, 20, 1),
(1454, 412, 347, 3, 10, 1, 3, 20, 4),
(1455, 413, 338, 1, 10, 1, 3, 20, 1),
(1456, 413, 343, 2, 10, 1, 3, 20, 2),
(1457, 413, 343, 3, 10, 1, 3, 20, 1),
(1458, 413, 339, 4, 10, 1, 3, 20, 2),
(1459, 414, 337, 1, 10, 1, 5, 20, 1),
(1460, 416, 347, 1, 10, 1, 5, 20, 1),
(1461, 416, 340, 2, 10, 1, 5, 20, 1),
(1463, 417, 339, 1, 10, 1, 5, 20, 1),
(1464, 417, 340, 2, 10, 1, 5, 20, 2),
(1465, 417, 339, 3, 10, 1, 5, 20, 1),
(1466, 418, 348, 1, 10, 1, 7, 20, 1),
(1467, 418, 348, 2, 10, 1, 7, 10, 3),
(1468, 419, 349, 1, 10, 1, 7, 20, 1),
(1469, 419, 349, 2, 10, 1, 7, 20, 1),
(1470, 419, 349, 3, 10, 1, 7, 20, 2),
(1477, 398, 329, 5, 11, 1, 1, 20, 4),
(1485, 411, 344, 1, 11, 1, 2, 20, 4),
(1486, 411, 341, 2, 11, 1, 2, 20, 1),
(1487, 411, 343, 3, 11, 1, 2, 20, 4),
(1488, 411, 342, 4, 11, 1, 2, 20, 2),
(1489, 411, 329, 5, 11, 1, 2, 20, 1),
(1490, 410, 346, 1, 11, 1, 4, 20, 2),
(1491, 410, 325, 2, 11, 1, 4, 10, 3),
(1492, 410, 325, 3, 11, 1, 4, 20, 2),
(1493, 399, 329, 1, 11, 1, 4, 20, 2),
(1494, 399, 342, 2, 11, 1, 4, 10, 3),
(1495, 399, 342, 3, 11, 1, 4, 20, 2),
(1496, 400, 326, 1, 11, 1, 4, 20, 1),
(1497, 400, 327, 2, 11, 1, 4, 20, 2),
(1498, 401, 345, 1, 11, 1, 4, 20, 1),
(1499, 401, 343, 2, 11, 1, 4, 20, 1),
(1500, 402, 345, 1, 11, 1, 4, 20, 2),
(1501, 402, 344, 2, 11, 1, 4, 20, 1),
(1502, 402, 343, 3, 11, 1, 4, 10, 3),
(1503, 406, 344, 1, 11, 1, 6, 20, 1),
(1504, 406, 344, 2, 11, 1, 6, 20, 1),
(1505, 407, 339, 1, 11, 1, 6, 20, 2),
(1506, 407, 339, 2, 11, 1, 6, 20, 2),
(1507, 408, 344, 1, 11, 1, 6, 20, 1),
(1508, 409, 325, 1, 11, 1, 6, 20, 2),
(1509, 409, 346, 2, 11, 1, 6, 20, 1),
(1510, 421, 343, 1, 11, 1, 6, 20, 1),
(1511, 405, 325, 1, 11, 1, 4, 20, 2),
(1512, 405, 346, 2, 11, 1, 4, 10, 3),
(1513, 405, 341, 3, 11, 1, 4, 20, 2),
(1522, 416, 338, 3, 10, 1, 5, 20, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `kode` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `kode_jurusan` int(5) NOT NULL,
  `id_prodi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`kode`, `nama_prodi`, `kode_jurusan`, `id_prodi`) VALUES
(1, 'Teknik Informatika', 1, 'P01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_penjadwalan`
--

CREATE TABLE `riwayat_penjadwalan` (
  `kode` int(11) NOT NULL,
  `kode_pengampu` int(10) NOT NULL,
  `kode_hari` int(5) NOT NULL,
  `kode_jam` int(5) NOT NULL,
  `kode_ruang` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `riwayat_penjadwalan`
--

INSERT INTO `riwayat_penjadwalan` (`kode`, `kode_pengampu`, `kode_hari`, `kode_jam`, `kode_ruang`) VALUES
(1190, 1430, 1, 12, 1),
(1191, 1438, 1, 27, 1),
(1192, 1425, 2, 12, 1),
(1193, 1423, 2, 12, 2),
(1194, 1429, 2, 12, 4),
(1195, 1424, 2, 27, 4),
(1196, 1440, 2, 27, 1),
(1197, 1431, 3, 12, 2),
(1198, 1426, 3, 12, 1),
(1199, 1439, 3, 27, 2),
(1200, 1435, 3, 27, 4),
(1201, 1443, 3, 27, 1),
(1202, 1441, 4, 12, 1),
(1203, 1437, 4, 12, 2),
(1204, 1422, 4, 27, 1),
(1205, 1442, 4, 27, 2),
(1206, 1433, 5, 12, 2),
(1207, 1428, 5, 12, 4),
(1208, 1436, 5, 12, 1),
(1209, 1434, 5, 27, 4),
(1210, 1432, 5, 27, 1),
(1211, 1427, 5, 27, 2),
(1338, 1449, 1, 12, 2),
(1340, 1446, 1, 27, 1),
(1341, 1451, 2, 12, 4),
(1342, 1447, 2, 12, 2),
(1343, 1465, 2, 12, 1),
(1344, 1459, 2, 27, 1),
(1346, 1463, 3, 12, 1),
(1347, 1467, 3, 12, 3),
(1348, 1456, 3, 12, 2),
(1349, 1460, 3, 27, 1),
(1350, 1464, 3, 27, 2),
(1352, 1470, 4, 12, 2),
(1353, 1450, 4, 27, 2),
(1354, 1453, 4, 27, 1),
(1355, 1448, 4, 27, 4),
(1356, 1454, 5, 12, 4),
(1357, 1466, 5, 12, 2),
(1358, 1455, 5, 12, 1),
(1359, 1468, 5, 27, 1),
(1361, 1458, 5, 27, 2),
(1530, 1501, 1, 12, 1),
(1531, 1487, 1, 12, 4),
(1532, 1511, 1, 12, 2),
(1533, 1486, 1, 27, 1),
(1534, 1502, 1, 27, 3),
(1537, 1493, 2, 12, 2),
(1538, 1500, 2, 27, 2),
(1541, 1491, 3, 12, 3),
(1542, 1495, 3, 12, 2),
(1543, 1498, 3, 27, 1),
(1544, 1513, 3, 27, 2),
(1548, 1499, 4, 12, 1),
(1549, 1492, 4, 12, 2),
(1550, 1494, 4, 27, 3),
(1553, 1497, 5, 12, 2),
(1558, 1382, 1, 12, 1),
(1559, 1385, 1, 12, 4),
(1560, 1372, 1, 12, 2),
(1563, 1477, 2, 12, 4),
(1564, 1365, 2, 12, 1),
(1565, 1390, 2, 27, 2),
(1566, 1383, 2, 27, 1),
(1569, 1387, 3, 12, 1),
(1570, 1373, 3, 27, 2),
(1571, 1364, 3, 27, 1),
(1572, 1377, 3, 27, 4),
(1575, 1376, 4, 12, 3),
(1576, 1379, 4, 12, 1),
(1577, 1368, 4, 12, 4),
(1578, 1375, 4, 12, 2),
(1579, 1363, 4, 27, 1),
(1580, 1367, 4, 27, 4),
(1582, 1384, 5, 12, 4),
(1583, 1362, 5, 12, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kapasitas` int(10) DEFAULT NULL,
  `jenis` enum('TEORI','LABORATORIUM') DEFAULT NULL,
  `kode_jurusan` int(5) NOT NULL,
  `lantai` int(3) NOT NULL,
  `id_ruang` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`kode`, `nama`, `kapasitas`, `jenis`, `kode_jurusan`, `lantai`, `id_ruang`) VALUES
(1, 'Lab RPL', 20, 'LABORATORIUM', 1, 1, 'R0'),
(2, 'Lab Kecerdasan Buatan', 20, 'LABORATORIUM', 1, 1, 'R1'),
(3, 'Lab Jaringan', 10, 'LABORATORIUM', 1, 1, 'R2'),
(4, 'Puskom 1', 20, 'LABORATORIUM', 1, 1, 'R3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `kode` int(2) NOT NULL,
  `nama_semester` varchar(10) NOT NULL,
  `semester_tipe` int(10) NOT NULL,
  `id_semester` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`kode`, `nama_semester`, `semester_tipe`, `id_semester`) VALUES
(1, 'I', 1, 'S01'),
(2, 'II', 2, 'S02'),
(3, 'III', 1, 'S03'),
(4, 'IV', 2, 'S04'),
(5, 'V', 1, 'S05'),
(6, 'VI', 2, 'S06'),
(7, 'VII', 1, 'S07'),
(11, 'VIII', 2, 'S08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester_tipe`
--

CREATE TABLE `semester_tipe` (
  `kode` int(2) NOT NULL,
  `tipe_semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `semester_tipe`
--

INSERT INTO `semester_tipe` (`kode`, `tipe_semester`) VALUES
(1, 'GANJIL'),
(2, 'GENAP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_asisten`
--

CREATE TABLE `status_asisten` (
  `kode` int(5) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_asisten`
--

INSERT INTO `status_asisten` (`kode`, `status`) VALUES
(1, 'Mahasiswa'),
(4, 'Alumni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `kode` int(10) NOT NULL,
  `tahun` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`kode`, `tahun`) VALUES
(10, '2017-2018'),
(11, '2018-2019'),
(12, '2019-2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `kode` int(2) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`kode`, `email`, `password`, `nama`, `level`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', ''),
(4, 'kalab@gmail.com', '966676a567d83cf0fbeb8cd5c280a589', 'Kelapa Laboran', ''),
(5, 'aryuni@gmail.com', 'd0b9fb2ff99edcaf3346d036c61ccd48', 'Aryuni Arafah', 'Laboran'),
(6, 'laboran@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'Laboran', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu_tidak_bersedia`
--

CREATE TABLE `waktu_tidak_bersedia` (
  `kode` int(10) NOT NULL,
  `kode_asisten` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `waktu_tidak_bersedia`
--

INSERT INTO `waktu_tidak_bersedia` (`kode`, `kode_asisten`, `kode_hari`, `kode_jam`) VALUES
(3, 324, 2, 12);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `asisten`
--
ALTER TABLE `asisten`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `guru_ibfk_1` (`status_asisten`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `jadwalpelajaran`
--
ALTER TABLE `jadwalpelajaran`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `kode_jam` (`kode_jam`),
  ADD KEY `kode_hari` (`kode_hari`),
  ADD KEY `jadwalpelajaran_ibfk_1` (`kode_pengampu`),
  ADD KEY `jadwalpelajaran_ibfk_4` (`kode_ruang`);

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `jam2`
--
ALTER TABLE `jam2`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `guru_ibfk_1` (`jurusan`);

--
-- Indeks untuk tabel `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `matapelajaran_ibfk_1` (`semester`),
  ADD KEY `matapelajaran_ibfk_2` (`kode_prodi`);

--
-- Indeks untuk tabel `pengampu`
--
ALTER TABLE `pengampu`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `kode_mk` (`kode_mk`),
  ADD KEY `kode_guru` (`kode_asisten`),
  ADD KEY `kelas` (`kelas`),
  ADD KEY `tahun_akademik` (`tahun_akademik`),
  ADD KEY `kode_prodi` (`kode_prodi`),
  ADD KEY `semester` (`semester`),
  ADD KEY `kode_ruang` (`kode_ruang`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `prodi_ibfk_1` (`kode_jurusan`);

--
-- Indeks untuk tabel `riwayat_penjadwalan`
--
ALTER TABLE `riwayat_penjadwalan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `riwayat_penjadwalan_ibfk_4` (`kode_pengampu`),
  ADD KEY `riwayat_penjadwalan_ibfk_3` (`kode_hari`),
  ADD KEY `riwayat_penjadwalan_ibfk_2` (`kode_jam`),
  ADD KEY `riwayat_penjadwalan_ibfk_1` (`kode_ruang`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `ruang_ibfk_1` (`kode_jurusan`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `semester_ibfk_1` (`semester_tipe`);

--
-- Indeks untuk tabel `semester_tipe`
--
ALTER TABLE `semester_tipe`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `status_asisten`
--
ALTER TABLE `status_asisten`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `waktu_tidak_bersedia_ibfk_2` (`kode_asisten`),
  ADD KEY `waktu_tidak_bersedia_ibfk_1` (`kode_hari`),
  ADD KEY `waktu_tidak_bersedia_ibfk_3` (`kode_jam`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `asisten`
--
ALTER TABLE `asisten`
  MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `jadwalpelajaran`
--
ALTER TABLE `jadwalpelajaran`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `jam2`
--
ALTER TABLE `jam2`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `matapelajaran`
--
ALTER TABLE `matapelajaran`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT untuk tabel `pengampu`
--
ALTER TABLE `pengampu`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1523;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `riwayat_penjadwalan`
--
ALTER TABLE `riwayat_penjadwalan`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1584;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `semester_tipe`
--
ALTER TABLE `semester_tipe`
  MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `status_asisten`
--
ALTER TABLE `status_asisten`
  MODIFY `kode` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `asisten`
--
ALTER TABLE `asisten`
  ADD CONSTRAINT `asisten_ibfk_1` FOREIGN KEY (`status_asisten`) REFERENCES `status_asisten` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwalpelajaran`
--
ALTER TABLE `jadwalpelajaran`
  ADD CONSTRAINT `jadwalpelajaran_ibfk_1` FOREIGN KEY (`kode_pengampu`) REFERENCES `pengampu` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwalpelajaran_ibfk_2` FOREIGN KEY (`kode_jam`) REFERENCES `jam2` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwalpelajaran_ibfk_3` FOREIGN KEY (`kode_hari`) REFERENCES `hari` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwalpelajaran_ibfk_4` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD CONSTRAINT `matapelajaran_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `semester_tipe` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matapelajaran_ibfk_2` FOREIGN KEY (`kode_prodi`) REFERENCES `prodi` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengampu`
--
ALTER TABLE `pengampu`
  ADD CONSTRAINT `pengampu_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `matapelajaran` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengampu_ibfk_2` FOREIGN KEY (`kode_asisten`) REFERENCES `asisten` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengampu_ibfk_3` FOREIGN KEY (`kelas`) REFERENCES `kelas` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengampu_ibfk_4` FOREIGN KEY (`tahun_akademik`) REFERENCES `tahun_akademik` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengampu_ibfk_5` FOREIGN KEY (`kode_prodi`) REFERENCES `prodi` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengampu_ibfk_6` FOREIGN KEY (`semester`) REFERENCES `semester` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengampu_ibfk_7` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`kode_jurusan`) REFERENCES `jurusan` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `riwayat_penjadwalan`
--
ALTER TABLE `riwayat_penjadwalan`
  ADD CONSTRAINT `riwayat_penjadwalan_ibfk_1` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_penjadwalan_ibfk_2` FOREIGN KEY (`kode_jam`) REFERENCES `jam2` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_penjadwalan_ibfk_3` FOREIGN KEY (`kode_hari`) REFERENCES `hari` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_penjadwalan_ibfk_4` FOREIGN KEY (`kode_pengampu`) REFERENCES `pengampu` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD CONSTRAINT `ruang_ibfk_1` FOREIGN KEY (`kode_jurusan`) REFERENCES `jurusan` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`semester_tipe`) REFERENCES `semester_tipe` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
  ADD CONSTRAINT `waktu_tidak_bersedia_ibfk_1` FOREIGN KEY (`kode_hari`) REFERENCES `hari` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `waktu_tidak_bersedia_ibfk_2` FOREIGN KEY (`kode_asisten`) REFERENCES `asisten` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `waktu_tidak_bersedia_ibfk_3` FOREIGN KEY (`kode_jam`) REFERENCES `jam2` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
