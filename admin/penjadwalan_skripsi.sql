-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2020 at 04:07 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `penjadwalan_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `asisten`
--

CREATE TABLE IF NOT EXISTS `asisten` (
`kode` int(2) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status_asisten` int(3) NOT NULL,
  `id_asisten` varchar(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=322 ;

--
-- Dumping data for table `asisten`
--

INSERT INTO `asisten` (`kode`, `nip`, `nama`, `alamat`, `telp`, `password`, `status_asisten`, `id_asisten`) VALUES
(85, '', 'Fatayat, M.Kom', '', '', 'agama', 1, 'D94'),
(86, '', 'Dr. Rendi Prayuda, M.Si', '', '', '', 1, 'D42'),
(87, '1234', 'Dr. Elfizar, S.Si., M.Kom.', 'gading', '0823', '', 1, 'D20'),
(88, '', 'Yanti Andriyani, ST, M.TI, PhD', '', '', '', 1, 'D156'),
(89, '', 'Zaiful Bahri,S.Si.,M.Kom', '', '', '', 1, 'D163'),
(90, '', 'Drs. Awaluddin ML., M.Ag', '', '', '', 1, 'D69'),
(91, '', 'Tito Handoko, S.IP., M.Si', '', '', '', 1, 'D154'),
(92, '', 'Alfirman, M.Kom.', '', '', '', 1, 'D06'),
(93, '', 'Ibnu Daqiqil, S.Kom., M.TI', '', '', '', 1, 'D103'),
(94, '', 'Drs. Sukamto, M.Kom', '', '', '', 1, 'D84'),
(95, '', 'Aidil Fitriansyah, S.Kom., MIT', '', '', '', 1, 'D04'),
(96, '', 'Joko Risanto, M.Kom', '', '', '', 1, 'D106'),
(97, '', 'Astried, M.Kom', '', '', '', 1, 'D10'),
(98, '', 'Gita Sastria, ST, MIT', '', '', '', 1, 'D96'),
(99, '', 'Evfi  Mahdiyah, S.Kom., MIT', '', '', '', 1, 'D93'),
(100, '', 'Roni Salambue,S.Kom., M. Si', '', '', '', 1, 'D137'),
(101, '', 'Johari Nur, M.Pd', '', '', '', 1, 'D105'),
(102, '', 'Yustinus Susanto, S.Pd.', '', '', '', 1, 'D162'),
(103, '', 'Ardikal Bali, S.Th., M.Th.', '', '', '', 1, 'D08'),
(104, '', 'Pdt. Md. Sonika, S.Ag., M.Pd', '', '', '', 1, 'D122'),
(105, '', 'Putu Senawa, S.Pd.', '', '', '', 1, 'D133'),
(106, '', 'Ir. Rusmadi Awza, S.Sos., M.Si.', '', '', '', 1, 'D104'),
(107, '', 'Al Aminuddin, ST., M.Sc.', '', '', '', 1, 'D05'),
(108, '', 'Yuliantoro, S.Pd, M.Pd', '', '', '', 1, 'D161'),
(109, '', 'Roza Afifah, S.Pd SD', '', '', '', 1, 'D138'),
(110, '', 'Riki Ario Nugroho, S.Si., M.Kom.', '', '', '', 1, 'D134'),
(111, '', 'Suci Alvianita, S.Kom., M.Kom. ', '', '', '', 1, 'D142'),
(113, '', 'Dini Onasis, SE, MM, AK, CA, CTA', '', '', '', 1, 'D14'),
(114, '', 'Lembaga Bahasa', '', '', '', 1, 'D109'),
(115, '', 'Drs. Bustami, M.Si.	', '', '', '', 1, 'D70'),
(116, '', 'Drs. Sigit Sugiarto, M.Si', '', '', '', 1, 'D83'),
(117, '', 'Tim MKDU	', '', '', '', 1, 'D150'),
(118, '', 'Tim Kalkulus	', '', '', '', 1, 'D147'),
(119, '', 'Drs.Harison, M.Si	', '', '', '', 1, 'D89'),
(120, '', 'Rustam Efendi, M.Si	', '', '', '', 1, 'D139'),
(121, '', 'Drs. Firdaus, M.Si	', '', '', '', 1, 'D74'),
(122, '', 'Dr. Arisman Adnan,M.Sc	', '', '', '', 1, 'D17'),
(123, '', 'Tim Komputasi	', '', '', '', 1, 'D148'),
(124, '', 'Haposan Sirait, M.Si	', '', '', '', 1, 'D98'),
(125, '', 'Tim Fisika Dasar	', '', '', '', 1, 'D146'),
(126, '', 'Tim Riset Operasi', '', '', '', 1, 'D152'),
(127, '', 'Tim UP2B	', '', '', '', 1, 'D153'),
(128, '', 'Drs. Rolan Pane, M.Si', '', '', '', 2, 'D81'),
(145, '1234', 'Musraini M., M.Si', 'gading', '0823', '', 1, 'D118'),
(148, '2332', 'Dr. Syamsudhuha, M.Sc', 'gading', '0823', '', 1, 'D49'),
(194, '', 'Dr. Ihda Hasbiyati, M.Si', '', '', '', 1, 'D27'),
(195, '', 'Dra. Asli Sirait, M.Si', '', '', '', 2, 'D59'),
(196, '1234', 'Abdul Hadi, M.Sc', 'gading', '0823', '', 1, 'D01'),
(197, '', 'Dr. Sri Gemawati, M.Si', '', '', '', 1, 'D48'),
(198, '', 'Zulkarnain, M.Si.', '', '', '', 1, 'D165'),
(199, '', 'Drs. Endang Lily, M.Si', '', '', '', 1, 'D73'),
(201, '', 'Afrizal, M.Pd.', '', '', '', 1, 'D03'),
(202, '', 'Dra. Hasriati, M.Si', '', '', '', 1, 'D62'),
(203, '', 'Dr. Leli Deswita, M.Si', '', '', '', 1, 'D31'),
(204, '', 'Dr. Imran M., M.Sc', '', '', '', 1, 'D28'),
(205, '', 'Noor Ell Goldameir, M.Si', '', '', '', 1, 'D120'),
(206, '', 'Supriadi Putra, M.Si', '', '', '', 1, 'D144'),
(208, '', 'Drs. T. P. Nababan, M.Si', '', '', '', 1, 'D86'),
(209, '', 'Drs. M. Natsir, M.Si', '', '', '', 1, 'D78'),
(210, '', 'Yen Norahma Yeni, M.Pd', '', '', '', 1, 'D157'),
(211, '', 'Perawati, S.Pd., M.Pd.', '', '', '', 1, 'D124'),
(212, '', 'Dr. Rahmi Dewi, M.Si', '', '', '', 1, 'D39'),
(213, '', 'Dr. Rakhmawati Farma, M.Si', '', '', '', 1, 'D41'),
(214, '', 'Drs. Yuharmen, M.Si                        ', '', '', '', 1, 'D88'),
(215, '', 'Dra. Andi Dahliaty, MS', '', '', '', 1, 'D58'),
(216, '', 'Dra. Itnawita, M.Si                              ', '', '', '', 1, 'D63'),
(217, '', 'Pepi  Helzayanti, M.Si', '', '', '', 1, 'D123'),
(218, '', 'Prof.Dr. Adel Zamri, M.S. DEA          ', '', '', '', 1, 'D132'),
(219, '', 'Ganis Fia Kartika, MSi           ', '', '', '', 1, 'D95'),
(220, '', 'Prof. Dr. Jasril. MS', '', '', '', 1, 'D127'),
(221, '', 'Prof. Dr.Amir Awaluddin, M.Sc', '', '', '', 1, 'D131'),
(222, '', 'Drs.Usman Malik. MSi', '', '', '', 1, 'D91'),
(223, '', 'Dr. Muhdarina, MSi', '', '', '', 1, 'D37'),
(224, '', 'Dr. Nurhayati, MSc', '', '', '', 1, 'D38'),
(225, '', 'Drs.T.Ariful Amri, M.S', '', '', '', 4, 'D90'),
(226, '', 'Drs. Emrizal M.Tamboesai, M.Si       ', '', '', '', 1, 'D72'),
(227, '', 'Halida Sophia, M.Si', '', '', '', 1, 'D97'),
(228, '', 'Dr. Amilia Linggawati, M.Si', '', '', '', 1, 'D15'),
(229, '', 'Riryn Novianty,  M.Si', '', '', '', 1, 'D135'),
(230, '', 'Prof. Dr. Titania. T. Nugroho, MS       ', '', '', '', 2, 'D130'),
(231, '', 'Yuli Haryani, M.Sc. Apt', '', '', '', 1, 'D159'),
(232, '', 'Drs. T. Abu Hanifah, MSi', '', '', '', 1, 'D85'),
(233, '', 'Dr. Sofia Anita, M.Sc                          ', '', '', '', 1, 'D47'),
(234, '', 'Mukhlis.MSi', '', '', '', 1, 'D117'),
(235, '', 'Dr. Yum Eryanti. MS                           ', '', '', '', 1, 'D56'),
(236, '', 'Hilwan Y Teruna, MSi;  Apt', '', '', '', 1, 'D102'),
(238, '2332', 'Sujarwati, MSi                    ', 'gading', '0823', '', 1, 'D143'),
(239, '', 'Bernadeta Leni Fibriarti, M.Si ', '', '', '', 1, 'D11'),
(240, '', 'Dr. Rr. Sri Catur Setyawatiningsih. MSi', '', '', '', 1, 'D46'),
(241, '1234', 'M. Alparadi, M.Pd. I', 'gading', '0823', '', 1, 'D111'),
(242, '', 'Prof. Dr. Saryono. MS                         ', '', '', '', 1, 'D129'),
(243, '', 'Dra. Silvera Devi, MS', '', '', '', 1, 'D64'),
(244, '', 'Drs. H. Basri. M.Si', '', '', '', 1, 'D75'),
(245, '', 'Dr. Yuana Nurulita. M. Si', '', '', '', 1, 'D54'),
(246, '', 'Dr. Hilwan Yuda Teruna. MSi             ', '', '', '', 1, 'D26'),
(247, '', 'Leo Saputra. MSi', '', '', '', 1, 'D110'),
(248, '', 'Harinal Setiawan. MH', '', '', '', 1, 'D99'),
(249, '', 'Separen, S.Pd. MH', '', '', '', 1, 'D140'),
(250, '', 'Bobby Ferly, SH. MM', '', '', '', 1, 'D12'),
(251, '', 'Drs. Tugiman, MS', '', '', '', 1, 'D87'),
(252, '', 'Drs. Krisman, MSi', '', '', '', 1, 'D77'),
(253, '', 'Maria Olpa. M.Pd', '', '', '', 1, 'D115'),
(254, '', 'Dessy Dwisusila, M.Pd', '', '', '', 1, 'D13'),
(255, '', 'Novri Malia. M.Pd', '', '', '', 1, 'D121'),
(256, '', 'Drs. Defrianto, DEA', '', '', '', 1, 'D71'),
(257, '', 'Abdul Kadir, S.H.I., M.H.I', '', '', '', 1, 'D02'),
(258, '', 'Dr. Awitdrus, M.Si', '', '', '', 1, 'D18'),
(259, '', 'Dr. Erman Taer, M.Si', '', '', '', 1, 'D22'),
(260, '', 'Prof. Dr. Saktioto, M.Phil', '', '', '', 1, 'D128'),
(261, '', 'Hevi Susanti, S.I.Kom., MA', '', '', '', 1, 'D101'),
(262, '', 'Taufik Hidayat, S.H.I., M.E.Sy', '', '', '', 1, 'D145'),
(263, '', 'Kholid Junaidi, M.Pd.I', '', '', '', 1, 'D107'),
(264, '', 'M. Syamsurizal, M.Pd', '', '', '', 1, 'D114'),
(265, '', 'Dr. Muhammad Hamdi,M.Si', '', '', '', 1, 'D36'),
(266, '', 'Dr. Iwantono, M.Phil', '', '', '', 1, 'D29'),
(268, '', 'Dr.-Ing. Lazuardi, M.Si', '', '', '', 1, 'D57'),
(269, '', 'Dr. Rahmondia Nanda S, M.Si', '', '', '', 1, 'D40'),
(270, '', 'Drs. Riad Syech, MT', '', '', '', 1, 'D80'),
(271, '', 'Drs. Antonius Surbakti, M.Si', '', '', '', 1, 'D68'),
(272, '', 'Prof. Dr. Erwin, M.Sc', '', '', '', 1, 'D126'),
(273, '', 'Dr. Juandi M, M.Si', '', '', '', 1, 'D30'),
(274, '', 'Drs. Maksi Ginting, M.Si', '', '', '', 1, 'D79'),
(275, '', 'Drs. Salomo, M.Si', '', '', '', 1, 'D82'),
(276, '', 'Dr. Yanuar, M.Si', '', '', '', 1, 'D53'),
(277, '', 'Vepy Asyana, M.Si', '', '', '', 1, 'D155'),
(278, '', 'Dr. Minarni, M.Sc', '', '', '', 1, 'D35'),
(280, '', 'Dr. Emrizal Mahidin T, M.Si', '', '', '', 1, 'D21'),
(281, '', 'Dra. Dyah Iriani, M.Si', '', '', '', 1, 'D61'),
(282, '1234', 'Dr. rer. Nat. Radith Mahatma, M.Si', 'gading', '0823', '', 1, 'D44'),
(283, '2332', 'Dr. Yanuar Hamzah, M.Si', 'gading', '0823', '', 1, 'D52'),
(284, '', 'Dra. Atria Martina, M.Si', '', '', '', 1, 'D60'),
(285, '', 'Dr. Vanda Julita Yahya, M.Si', '', '', '', 1, 'D51'),
(286, '1234', 'Drs. Khairijon, MS', 'gading', '0823', '', 1, 'D76'),
(287, '', 'Dr. rer. nat. Delita Zul, M.Si', '', '', '', 1, 'D43'),
(288, '', 'Ennie Chahyadi, M.Si', '', '', '', 2, 'D92'),
(289, '', 'Dr. Dewi Indriyani Roslim, M.Si', '', '', '', 1, 'D19'),
(290, '', 'Dr. Tetty Marta Linda, M.Si', '', '', '', 1, 'D50'),
(291, '', 'Rodesia Mustika Roza, M.Si', '', '', '', 1, 'D136'),
(292, '', 'Dr. Roza Elvyra, M.Si', '', '', '', 1, 'D45'),
(293, '', 'Antonius Ekaputra, M.Pd', '', '', '', 1, 'D07'),
(294, '', 'Siti Fatonah, MP', '', '', '', 1, 'D141'),
(295, '', 'Dr. Miharty, M. Pd', '', '', '', 1, 'D34'),
(296, '', 'Hendrizal Hadi, LC., M.Si', '', '', '', 1, 'D100'),
(297, '', 'Kingkel Panah Grosman, SH., MH', '', '', '', 1, 'D108'),
(298, '', 'M. Nurhadi, M. Pd.I', '', '', '', 1, 'D113'),
(299, '', 'Mita Rosaliza, S.Sos. M.Soc.Sc', '', '', '', 1, 'D116'),
(300, '', 'Dra. Wahyu Lestari, M.Si', '', '', '', 1, 'D66'),
(301, '', 'Drs. Ahmad Muhammad, M.Si', '', '', '', 1, 'D67'),
(304, '', 'Dra. Titrawani, M.Si', '', '', '', 1, 'D65'),
(305, '', 'Zulfirman Zani, M.Pd', '', '', '', 1, 'D164'),
(306, '', 'Dr. Mayta Novaliza Isda, M.Si', '', '', '', 1, 'D33'),
(307, '', 'Dr. Herman, M.Sc', '', '', '', 1, 'D25'),
(308, '125', 'Asisten', '', '', '', 1, 'D09'),
(309, '56', 'Yulianingsih Tanjung, M.Pd.', '', '', '', 1, 'D160'),
(310, '564', 'Dr. M. D. H. Gamal, M.Sc', '', '', '', 1, 'D32'),
(311, '765', 'Dr. Ari Sulistyo Rini, M.Si', '', '', '', 1, 'D16'),
(312, '98', 'M. Hamdan, M.Pd', '', '', '', 1, 'D112'),
(313, '908', 'Dr. Gimin, M.Pd', '', '', '', 1, 'D24'),
(314, '642', 'Nery Sofiyanti, Ph.D', '', '', '', 1, 'D119'),
(315, '634', 'TIM MATEMATIKA			 			', '', '', '', 1, 'D149'),
(316, '734', 'TIM MKU	', '', '', '', 1, 'D151'),
(318, '635', 'Dr. Yulminarti, M.Si', '', '', '', 1, 'D55'),
(319, '31', 'Pretti Ristra, S.Pd., M.Ed			 			', '', '', '', 1, 'D125'),
(320, '53', 'Dr. Fitmawati, M.Si', '', '', '', 1, 'D23'),
(321, '75', 'Yesi, S.Sos. M.Soc. Sc', '', '', '', 1, 'D158');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE IF NOT EXISTS `hari` (
`kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id_hari` varchar(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`kode`, `nama`, `id_hari`) VALUES
(1, 'Senin', 'H01'),
(2, 'Selasa', 'H02'),
(3, 'Rabu', 'H03'),
(4, 'Kamis', 'H04'),
(5, 'Jumat', 'H05');

-- --------------------------------------------------------

--
-- Table structure for table `jadwalpelajaran`
--

CREATE TABLE IF NOT EXISTS `jadwalpelajaran` (
`kode` int(10) NOT NULL,
  `kode_pengampu` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_ruang` int(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='hasil proses' AUTO_INCREMENT=105 ;

--
-- Dumping data for table `jadwalpelajaran`
--

INSERT INTO `jadwalpelajaran` (`kode`, `kode_pengampu`, `kode_jam`, `kode_hari`, `kode_ruang`) VALUES
(1, 646, 1, 1, 2),
(2, 647, 14, 5, 24),
(3, 648, 3, 1, 35),
(4, 652, 8, 4, 2),
(5, 653, 1, 5, 35),
(6, 657, 8, 1, 35),
(7, 658, 8, 2, 24),
(8, 662, 1, 3, 18),
(9, 663, 6, 5, 35),
(10, 664, 3, 2, 25),
(11, 668, 14, 5, 4),
(12, 669, 7, 2, 18),
(13, 673, 3, 4, 18),
(14, 674, 5, 4, 35),
(15, 678, 8, 2, 25),
(16, 679, 1, 4, 10),
(17, 680, 7, 1, 24),
(18, 684, 3, 1, 2),
(19, 685, 6, 3, 35),
(20, 689, 2, 4, 10),
(21, 690, 5, 1, 25),
(22, 694, 8, 4, 25),
(23, 695, 7, 1, 25),
(24, 696, 8, 1, 25),
(25, 700, 3, 3, 24),
(26, 701, 3, 4, 35),
(27, 705, 5, 3, 24),
(28, 706, 2, 1, 2),
(29, 710, 8, 2, 35),
(30, 711, 6, 4, 2),
(31, 712, 6, 2, 10),
(32, 716, 1, 1, 24),
(33, 717, 7, 3, 35),
(34, 721, 1, 3, 35),
(35, 722, 8, 1, 24),
(36, 726, 8, 3, 18),
(37, 727, 5, 5, 10),
(38, 728, 3, 2, 10),
(39, 732, 3, 2, 35),
(40, 733, 1, 2, 2),
(41, 737, 8, 4, 24),
(42, 738, 1, 2, 24),
(43, 742, 8, 3, 25),
(44, 743, 1, 5, 25),
(45, 744, 7, 3, 10),
(46, 748, 3, 4, 24),
(47, 749, 6, 5, 18),
(48, 753, 6, 4, 25),
(49, 754, 6, 1, 18),
(50, 758, 14, 5, 2),
(51, 759, 8, 2, 2),
(52, 760, 1, 4, 2),
(53, 764, 15, 5, 25),
(54, 765, 7, 3, 25),
(55, 769, 13, 5, 10),
(56, 770, 1, 2, 35),
(57, 774, 4, 2, 10),
(58, 775, 4, 4, 4),
(59, 776, 1, 2, 10),
(60, 780, 6, 5, 2),
(61, 781, 6, 2, 2),
(62, 785, 7, 4, 2),
(63, 786, 5, 5, 18),
(64, 790, 8, 2, 18),
(65, 791, 6, 2, 18),
(66, 792, 5, 3, 2),
(67, 796, 8, 3, 2),
(68, 797, 6, 5, 24),
(69, 801, 3, 3, 2),
(70, 802, 1, 3, 10),
(71, 806, 8, 1, 10),
(72, 807, 1, 4, 25),
(73, 808, 6, 5, 10),
(74, 812, 5, 2, 18),
(75, 813, 6, 4, 18),
(76, 817, 3, 4, 10),
(77, 818, 5, 1, 35),
(78, 822, 5, 4, 18),
(79, 823, 5, 1, 10),
(80, 824, 6, 2, 35),
(81, 828, 6, 3, 18),
(82, 829, 5, 1, 18),
(83, 833, 15, 5, 35),
(84, 834, 8, 3, 35),
(85, 838, 6, 3, 10),
(86, 839, 8, 4, 18),
(87, 840, 7, 4, 25),
(88, 844, 5, 5, 24),
(89, 845, 6, 4, 35),
(90, 849, 14, 5, 35),
(91, 850, 7, 1, 10),
(92, 854, 6, 3, 2),
(93, 855, 6, 1, 35),
(94, 856, 11, 3, 36),
(95, 860, 12, 3, 36),
(96, 861, 12, 4, 36),
(97, 865, 11, 4, 28),
(98, 866, 9, 2, 28),
(99, 870, 11, 2, 28),
(100, 871, 10, 4, 29),
(103, 872, 10, 2, 29),
(104, 876, 9, 5, 29);

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE IF NOT EXISTS `jam` (
`kode` int(10) NOT NULL,
  `range_jam` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jam`
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
-- Table structure for table `jam2`
--

CREATE TABLE IF NOT EXISTS `jam2` (
`kode` int(10) NOT NULL,
  `range_jam` varchar(50) DEFAULT NULL,
  `sks` int(2) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `id_jam` varchar(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `jam2`
--

INSERT INTO `jam2` (`kode`, `range_jam`, `sks`, `sesi`, `id_jam`) VALUES
(1, '07.30-10.00', 3, 1, 'T11'),
(2, '10.10-12.40', 3, 2, 'T12'),
(3, '13.00-15.30', 3, 3, 'T13'),
(4, '15.30-18.00', 3, 4, 'T14'),
(5, '07.30-09.10', 2, 1, 'T05'),
(6, '10.10-11.50', 2, 2, 'T06'),
(7, '13.00-14.40', 2, 3, 'T07'),
(8, '15.30-17.10', 2, 4, 'T08'),
(9, '07.30-08.20', 1, 1, 'T01'),
(10, '10.10-11:00', 1, 2, 'T02'),
(11, '13.00-13.50', 1, 3, 'T03'),
(12, '15.30-16.20', 1, 4, 'T04'),
(13, '13.30-16.00', 3, 5, 'T15'),
(14, '13.30-15.10', 2, 5, 'T09'),
(15, '16.00-17.40', 2, 6, 'T10'),
(16, '07.30-09.10', 4, 1, 'T16'),
(17, '10.10-11.50', 4, 2, 'T17'),
(18, '13.00-14.40', 4, 3, 'T18'),
(19, '15.30-17.10', 4, 4, 'T19'),
(20, '13.30-15.10', 4, 5, 'T20'),
(21, '16.00-17.40', 4, 6, 'T21');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
`kode` int(11) NOT NULL,
  `nama_jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`kode`, `nama_jurusan`) VALUES
(0, 'MIPA'),
(1, 'ILKOM'),
(2, 'Matematika'),
(3, 'Biologi'),
(4, 'Kimia'),
(5, 'Fisika');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
`kode` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kode_jurusan` int(3) NOT NULL,
  `id_kelas` varchar(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode`, `nama_kelas`, `kode_jurusan`, `id_kelas`) VALUES
(1, 'A', 1, 'K01'),
(2, 'B', 1, 'K02'),
(3, 'C', 1, 'K03'),
(4, 'D', 1, 'K04');

-- --------------------------------------------------------

--
-- Table structure for table `matapelajaran`
--

CREATE TABLE IF NOT EXISTS `matapelajaran` (
`kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jumlah_jam` int(6) DEFAULT NULL,
  `semester` int(2) DEFAULT NULL,
  `aktif` enum('True','False') DEFAULT 'True',
  `jenis` enum('TEORI','PRAKTIKUM') DEFAULT 'TEORI',
  `nama_kode` varchar(10) DEFAULT NULL,
  `kode_prodi` int(5) DEFAULT NULL,
  `id_mapel` varchar(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='example kode_mk = 0765109 ' AUTO_INCREMENT=398 ;

--
-- Dumping data for table `matapelajaran`
--

INSERT INTO `matapelajaran` (`kode`, `nama`, `jumlah_jam`, `semester`, `aktif`, `jenis`, `nama_kode`, `kode_prodi`, `id_mapel`) VALUES
(73, 'Manajemen dan Organisasi', 2, 1, 'True', 'TEORI', 'PAS11003', 1, 'M19'),
(74, 'Pengembangan Sistem Informasi Berbasis Web Lanjut', 3, 1, 'True', 'TEORI', 'PAS31132', 1, 'M08'),
(75, 'Kapita Selekta SIG', 3, 1, 'True', 'TEORI', 'MAS4111', 1, 'M27'),
(77, 'Kapita Selekta Bisnis', 3, 1, 'True', 'TEORI', 'MAS4121', 1, 'M14'),
(78, 'Perencanaan Sumber daya Perusahaan', 3, 1, 'True', 'TEORI', 'PAS31028', 1, 'M04'),
(79, 'Metode Penelitian', 2, 1, 'True', 'TEORI', 'MAS3102', 1, 'M21'),
(81, 'Komunikasi Antar Pribadi', 2, 1, 'True', 'TEORI', 'PAS31027', 1, 'M10'),
(82, 'Analisis dan Perancangan Berorientasi Objek', 3, 1, 'True', 'TEORI', 'PAS31024', 1, 'M29'),
(83, 'Aplikasi  Mobile', 3, 1, 'True', 'TEORI', 'MAS4102', 1, 'M17'),
(84, 'Pengembangan Antarmuka Pengguna Sistem Informasi', 3, 1, 'True', 'TEORI', 'PAS21012', 1, 'M07'),
(85, 'Sistem Pendukung Keputusan', 3, 1, 'True', 'TEORI', 'PAS31133', 1, 'M24'),
(87, 'Rekayasa Perangkat Lunak', 3, 1, 'True', 'TEORI', 'PAS21014', 1, 'M12'),
(88, 'Konsep Pemograman', 2, 1, 'True', 'TEORI', 'PAS11002', 1, 'M01'),
(89, 'Sistem Enterprise', 3, 1, 'True', 'TEORI', 'PAS31030', 1, 'M18'),
(90, 'Pengantar Analisis Real ', 3, 1, 'True', 'TEORI', 'PAM33025', 4, 'M87'),
(93, 'Fungsi Var. Kompleks', 3, 1, 'True', 'TEORI', 'PAM33025', 4, 'M105'),
(96, 'Kalkulus I', 2, 1, 'True', 'TEORI', 'PAM13001', 4, 'M93'),
(97, 'Agama Protestan', 2, 1, 'True', 'TEORI', 'UXN11055', 8, 'M260'),
(99, 'Agama Buddha', 2, 1, 'True', 'TEORI', 'UXN11139', 8, 'M262'),
(100, 'Agama Katolik', 2, 1, 'True', 'TEORI', 'UXN11097', 8, 'M261'),
(101, 'Statistika dan Probabilitas', 3, 1, 'True', 'TEORI', 'MIP11065', 1, 'M26'),
(102, 'Matematika Komputasi ', 3, 1, 'True', 'PRAKTIKUM', 'PAM21011', 4, 'M96'),
(103, 'Kewirausahaan', 2, 1, 'True', 'TEORI', 'MAS4103', 1, 'M03'),
(104, 'Matematika Diskrit', 3, 1, 'True', 'TEORI', 'PAS11001', 1, 'M20'),
(105, 'Bahasa Indonesia', 2, 1, 'True', 'TEORI', 'UXN12096', 1, 'M09'),
(106, 'Pendidikan Agama', 3, 1, 'True', 'TEORI', 'UXN11013', 1, 'M28'),
(107, 'Pendidikan Pancasila', 2, 1, 'True', 'TEORI', 'UXN11181', 1, 'M15'),
(108, 'Sistem Informasi Geografis Terdistribusi', 3, 1, 'True', 'TEORI', 'PAS32037', 1, 'M05'),
(109, 'Tata Kelola Sistem Informasi', 3, 1, 'True', 'TEORI', 'PAS31029', 1, 'M22'),
(110, 'Bahasa Inggris', 2, 1, 'True', 'TEORI', 'UXN12162', 1, 'M11'),
(112, 'Metode Diskrit ', 3, 1, 'True', 'TEORI', 'PAM13001', 4, 'M110'),
(113, 'Pengantar Teknologi dan Sistem Informasi', 3, 1, 'True', 'TEORI', 'MIP11057', 2, 'M43'),
(114, 'Multimedia', 3, 1, 'True', 'PRAKTIKUM', 'PAI31032', 2, 'M33'),
(115, 'Manajemen dan Organisasi', 3, 1, 'True', 'TEORI', 'PAI21013', 2, 'M48'),
(116, 'Konsep Pemrograman', 4, 1, 'True', 'TEORI', 'PAI11003', 2, 'M40'),
(117, 'Matematika Diskrit', 3, 1, 'True', 'TEORI', 'PAI11001', 2, 'M30'),
(118, 'Algoritma dan Struktur Data', 3, 1, 'True', 'PRAKTIKUM', 'PAI21015', 2, 'M45'),
(119, 'Sistem Informasi Geografis II', 3, 1, 'True', 'PRAKTIKUM', 'PAI31031', 2, 'M35'),
(120, 'Sistem Informasi Manajemen', 2, 1, 'True', 'TEORI', 'PAI21012', 2, 'M49'),
(123, 'Keamanan Sistem Informasi', 3, 1, 'True', 'PRAKTIKUM', 'PAI31027', 2, 'M41'),
(124, 'Pendidikan Pancasila', 2, 1, 'True', 'TEORI', 'UXN11182', 2, 'M31'),
(125, 'Agama Islam', 2, 1, 'True', 'TEORI', 'UXN11014', 2, 'M46'),
(126, 'Pemograman Web Lanjut', 3, 1, 'True', 'PRAKTIKUM', 'PAI21018', 2, 'M36'),
(127, 'Aplikasi Perkantoran', 3, 1, 'True', 'PRAKTIKUM', 'PAI11004', 2, 'M50'),
(128, 'Etika Profesi', 2, 1, 'True', 'TEORI', 'PAI31026', 2, 'M42'),
(129, 'Kewarganegaraan', 2, 1, 'True', 'TEORI', 'UXN12125', 2, 'M32'),
(130, 'Pemograman Visual', 3, 1, 'True', 'PRAKTIKUM', 'PAI21017', 2, 'M47'),
(131, 'Manajemen Infrastruktur Sistem Informasi', 3, 1, 'True', 'TEORI', 'PAI21014', 2, 'M38'),
(132, 'Perancangan Antar Muka', 3, 1, 'True', 'PRAKTIKUM', 'PAI31030', 2, 'M52'),
(133, 'Pengantar Teknologi dan Sistem Informasi', 3, 1, 'True', 'TEORI', 'MIP11055', 1, 'M16'),
(135, 'Algoritma dan Struktur Data', 3, 1, 'True', 'TEORI', 'PAS21011', 1, 'M06'),
(137, 'Jaringan Komputer', 3, 1, 'True', 'TEORI', 'PAS21013', 1, 'M23'),
(140, 'Bahasa Inggris I', 2, 1, 'True', 'TEORI', 'UXN12163', 2, 'M39'),
(141, 'Administrasi Basis Data', 3, 1, 'True', 'PRAKTIKUM', 'PAI21016', 2, 'M53'),
(142, 'Aplikasi Grafika', 2, 1, 'True', 'PRAKTIKUM', 'PAI11002', 2, 'M44'),
(143, 'Proyek Sistem Informasi', 3, 1, 'True', 'TEORI', 'PAI31029', 2, 'M34'),
(144, 'Kecerdasan Bisnis dan Gudang Data', 3, 1, 'True', 'TEORI', 'PAS31026', 1, 'M25'),
(145, 'Sistem Informasi Geografis', 3, 1, 'True', 'TEORI', 'PAS21015', 1, 'M13'),
(146, 'Etika Profesi', 2, 1, 'True', 'TEORI', 'MAS4101', 1, 'M02'),
(148, 'Statistika Elementer ', 3, 1, 'True', 'TEORI', 'MIP11064', 4, 'M101'),
(149, 'Optimisasi Kombinatorik', 2, 1, 'True', 'TEORI', 'PAM31129', 4, 'M89'),
(150, 'Proses Stokastik', 3, 1, 'True', 'TEORI', 'MAM4133', 4, 'M107'),
(151, 'Peng.Teori Bilangan', 3, 1, 'True', 'TEORI', 'PAM21012', 4, 'M95'),
(152, 'Bahasa Inggris', 2, 1, 'True', 'TEORI', 'UXN12161', 4, 'M84'),
(153, 'Geometri Bidang', 3, 1, 'True', 'TEORI', 'PAM13002', 4, 'M102'),
(154, 'Masalah Nilai Batas ', 3, 1, 'True', 'TEORI', 'PAM31027', 4, 'M90'),
(155, 'Kalkulus II', 2, 1, 'True', 'TEORI', 'PAM13004', 4, 'M108'),
(156, 'Analisa Runtun Waktu', 2, 1, 'True', 'TEORI', 'MAM4134', 4, 'M97'),
(157, 'Metode Numerik I', 3, 1, 'True', 'TEORI', 'PAM33026', 4, 'M85'),
(158, 'Pancasila', 2, 1, 'True', 'TEORI', 'UXN11180', 4, 'M103'),
(159, 'Aljabar Linear Elementer I ', 3, 1, 'True', 'TEORI', 'PAM11003', 4, 'M91'),
(160, 'Kapita Selekta', 3, 1, 'True', 'TEORI', 'MAM4051', 4, 'M109'),
(161, 'Matematika Keuangan', 3, 1, 'True', 'TEORI', 'PAM32138', 4, 'M99'),
(162, 'Kalkulus 3 ', 3, 1, 'True', 'TEORI', 'PAM23010', 4, 'M86'),
(163, 'Bahasa Indonesia ', 2, 1, 'True', 'TEORI', 'UXN12095', 4, 'M104'),
(164, 'Pengantar Kombinatorik ', 3, 1, 'True', 'TEORI', 'PAM21015', 4, 'M92'),
(166, 'Matematika Aktuaria I  ', 3, 1, 'True', 'TEORI', 'PAM21116', 4, 'M82'),
(167, 'Fisika Dasar I ', 3, 1, 'True', 'TEORI', 'MIP11024', 4, 'M100'),
(168, 'Aljabar Linier', 3, 1, 'True', 'TEORI', 'PAM31130', 4, 'M88'),
(169, 'Struktur Aljabar I', 3, 1, 'True', 'TEORI', 'PAM21013', 4, 'M106'),
(170, 'Riset Operasi II', 3, 1, 'True', 'TEORI', 'PAM31131', 4, 'M94'),
(171, 'Kimia Dasar ', 3, 1, 'True', 'TEORI', 'MIP11034', 4, 'M83'),
(172, 'Kalkulus I', 3, 1, 'True', 'TEORI', 'PST11002', 3, 'M72'),
(173, 'Pengantar Teori Peluang', 3, 1, 'True', 'TEORI', 'PST21010', 3, 'M61'),
(174, 'Data Mining', 3, 1, 'True', 'TEORI', 'PST31018', 3, 'M78'),
(175, 'Proses Stokastik', 3, 1, 'True', 'TEORI', 'PST41145', 3, 'M67'),
(176, 'Bahasa Indonesia', 2, 1, 'True', 'TEORI', 'UXN12098', 3, 'M56'),
(177, 'Statistika Ekologi', 3, 1, 'True', 'TEORI', 'PST21128', 3, 'M74'),
(178, 'Pengantar Model Linear', 3, 1, 'True', 'TEORI', 'PST31136', 3, 'M63'),
(179, 'Metode Statistika', 3, 1, 'True', 'TEORI', 'PST11001', 3, 'M80'),
(180, 'Komputasi Statistika', 3, 1, 'True', 'PRAKTIKUM', 'PTS21011', 3, 'M69'),
(181, 'Analisis Multivariat', 3, 1, 'True', 'TEORI', 'PST31020', 3, 'M58'),
(182, 'Metode Diskrit', 3, 1, 'True', 'TEORI', 'PST21127', 3, 'M75'),
(183, 'Kalkulus III', 3, 1, 'True', 'TEORI', 'PST21130', 3, 'M64'),
(184, 'Pancasila', 2, 1, 'True', 'TEORI', 'UXN11183', 3, 'M81'),
(185, 'Analisis Data Kategorik', 3, 1, 'True', 'TEORI', 'PST31021', 3, 'M70'),
(186, 'Logika Matematika', 3, 1, 'True', 'TEORI', 'PST21129', 3, 'M59'),
(187, 'Eksplorasi Data Multivariat', 3, 1, 'True', 'TEORI', 'PST41144', 3, 'M76'),
(188, 'Pengantar Metode Demografi', 3, 1, 'True', 'TEORI', 'PST31139', 3, 'M65'),
(189, 'Pengantar Komputer', 3, 1, 'True', 'PRAKTIKUM', 'PST11003', 3, 'M54'),
(190, 'Aljabar Matriks untuk Statistika', 3, 1, 'True', 'TEORI', 'PST21126', 3, 'M71'),
(191, 'Biostatistika', 3, 1, 'True', 'TEORI', 'PST31137', 3, 'M60'),
(192, 'Pendidikan Agama Islam', 2, 1, 'True', 'TEORI', 'UXN11015', 3, 'M77'),
(193, 'Fisika Dasar', 3, 1, 'True', 'TEORI', 'MIP11026', 3, 'M66'),
(194, 'Teknik Sampling', 3, 1, 'True', 'TEORI', 'PST21012', 3, 'M55'),
(195, 'Riset Operasi', 3, 1, 'True', 'TEORI', 'PST31138', 3, 'M73'),
(196, 'Kalkulus II', 3, 1, 'True', 'TEORI', 'PST12005', 3, 'M62'),
(197, 'Bahasa Inggris', 2, 1, 'True', 'TEORI', 'UXN12164', 3, 'M79'),
(198, 'Statistika Nonparametrik', 3, 1, 'True', 'TEORI', 'PST31019', 3, 'M68'),
(199, 'Rancangan Percobaan', 3, 1, 'True', 'TEORI', 'PST21013', 3, 'M57'),
(200, 'Kimia Dasar I', 3, 1, 'True', 'TEORI', 'MIP11033', 6, 'M194'),
(201, 'Kimia Organik Sintesis', 3, 1, 'True', 'TEORI', 'PAK31032', 6, 'M177'),
(202, 'Elektro Analisa dan Dasar Pemisahan', 3, 1, 'True', 'TEORI', 'PAK31030', 6, 'M203'),
(203, 'Kimia Anorganik III', 2, 1, 'True', 'TEORI', 'PAK31033', 6, 'M186'),
(204, 'Prak Fisika Dasar', 1, 1, 'True', 'PRAKTIKUM', 'MIP12023', 6, 'M169'),
(205, 'Kinetika Kimia', 3, 1, 'True', 'TEORI', 'PAK31036', 6, 'M196'),
(206, 'Ikatan Kimia', 3, 1, 'True', 'PRAKTIKUM', 'PAK31035', 6, 'M179'),
(207, 'Kimia Analitik I', 2, 1, 'True', 'TEORI', 'PAK21011', 6, 'M205'),
(208, 'Kimia Anorganik I', 3, 1, 'True', 'TEORI', 'PAK21008', 6, 'M188'),
(209, 'Kimia Koordinasi', 2, 1, 'True', 'TEORI', 'PAK31034', 6, 'M171'),
(210, 'Kimia Fisik I', 3, 1, 'True', 'TEORI', 'PAK21007', 6, 'M198'),
(211, 'Biokimia I', 3, 1, 'True', 'TEORI', 'PAK21010', 6, 'M181'),
(212, 'Praktikum  Kimia Fisika I', 1, 1, 'True', 'PRAKTIKUM', 'PAK31037', 6, 'M163'),
(213, 'Kimia Analisa Terapan', 3, 1, 'True', 'TEORI', 'MAK 4110', 6, 'M190'),
(214, 'Manajemen dan Keselamatan Laboratorium', 2, 1, 'True', 'TEORI', 'PAK11001', 6, 'M173'),
(215, 'Prak Kimia Organik I', 1, 1, 'True', 'PRAKTIKUM', 'PAK21013', 6, 'M200'),
(216, 'Analisis Mengenai Dampak Lingkungan (AMDAL)', 3, 1, 'True', 'TEORI', 'PAK21114', 6, 'M183'),
(217, 'Biologi  Dasar', 2, 1, 'True', 'TEORI', 'MIP11013', 6, 'M165'),
(218, 'Mineralogi', 2, 1, 'True', 'TEORI', 'PAK21115', 6, 'M192'),
(219, 'Pendidikan Agama Islam', 2, 1, 'True', 'TEORI', 'UXN 11010', 6, 'M175'),
(220, 'Pendidikan Pancasila', 2, 1, 'True', 'TEORI', 'UXN 11178', 6, 'M202'),
(221, 'Praktikum Elektroanalisis', 1, 1, 'True', 'PRAKTIKUM', 'PAK31031', 6, 'M185'),
(223, 'Kimia Organik II', 3, 1, 'True', 'TEORI', 'PAK21012', 6, 'M167'),
(225, 'Prak. Kimia Anorganik I', 1, 1, 'True', 'PRAKTIKUM', 'PAK21009', 6, 'M195'),
(226, 'Penentuan Struktur Senyawa Organik', 2, 1, 'True', 'TEORI', 'MAK 4109', 6, 'M178'),
(228, 'Kimia Medisinal', 2, 1, 'True', 'TEORI', 'MAK 4113', 6, 'M204'),
(229, 'Oleo Kimia', 2, 1, 'True', 'TEORI', 'PAK21116', 6, 'M187'),
(230, 'Kimia Zat Padat', 2, 1, 'True', 'TEORI', 'MAK 4112', 6, 'M170'),
(231, 'Matematika I', 3, 1, 'True', 'TEORI', 'MIP11043', 6, 'M197'),
(233, 'Kimia Membran', 2, 1, 'True', 'TEORI', 'MAK 4116', 6, 'M180'),
(234, 'Ikatan Kimia ', 3, 1, 'True', 'TEORI', 'PAK31035', 6, 'M162'),
(235, 'Geokimia', 2, 1, 'True', 'TEORI', 'PAK21117', 6, 'M189'),
(236, 'Kimia Bioteknologi', 2, 1, 'True', 'TEORI', 'MAK 4111', 6, 'M172'),
(238, 'Teknik Penelitian Biokimia', 2, 1, 'True', 'TEORI', 'MAK 4117', 6, 'M199'),
(240, 'Pendidikan Kewarganegaraan', 2, 1, 'True', 'TEORI', 'UXN12113', 6, 'M182'),
(242, 'Seminar Literatur ', 1, 1, 'True', 'TEORI', 'MAK3209', 6, 'M164'),
(243, 'Fisika Dasar ', 3, 1, 'True', 'TEORI', 'MIP11023', 6, 'M191'),
(244, 'Kapita Selekta Kimia Fisik', 2, 1, 'True', 'TEORI', 'PAK31140', 6, 'M174'),
(245, 'Biokimia Medis dan Imunologi', 2, 1, 'True', 'TEORI', 'PAK31138', 6, 'M201'),
(246, 'Bahasa Inggris I', 2, 1, 'True', 'TEORI', 'UXN12152', 6, 'M184'),
(247, 'Bioanorganik', 2, 1, 'True', 'TEORI', 'MAK 4114', 6, 'M166'),
(252, 'Kimia Organik Bahan Alam', 3, 1, 'True', 'TEORI', 'PAK31139', 6, 'M193'),
(253, 'Standarisasi dan Pengawasan Mutu ', 2, 1, 'True', 'TEORI', 'MAK 4115', 6, 'M176'),
(254, 'Matematika I ', 3, 1, 'True', 'TEORI', 'MIP1106', 7, 'M255'),
(255, 'Pendidikan Agama Islam ', 2, 1, 'True', 'TEORI', 'UXN11008', 7, 'M234'),
(256, 'Mekanika Klasik I ', 3, 1, 'True', 'TEORI', 'PAF2104', 7, 'M213'),
(257, 'Fisika Modern ', 3, 1, 'True', 'TEORI', 'PAF2116', 7, 'M246'),
(258, 'Elektronika  I', 2, 1, 'True', 'TEORI', 'PAF2111', 7, 'M225'),
(259, 'Fisika Statistik ', 3, 1, 'True', 'TEORI', 'MAF4102', 7, 'M258'),
(260, 'Analisa Vektor', 2, 1, 'True', 'TEORI', 'PAF 2113', 7, 'M237'),
(261, 'Mikroprosessor', 2, 1, 'True', 'TEORI', 'MAF4109', 7, 'M216'),
(262, 'Instrumentasi', 3, 1, 'True', 'TEORI', 'MAF3104', 7, 'M249'),
(263, 'Metode Pengukuran Fisika', 2, 1, 'True', 'TEORI', 'PAF1106', 7, 'M228'),
(264, 'Matematika Fisika I ', 2, 1, 'True', 'TEORI', 'PAF2115', 7, 'M207'),
(265, 'Fisika Nuklir ', 3, 1, 'True', 'TEORI', 'MAF4101', 7, 'M240'),
(266, 'Eksperimen Fisika I ', 2, 1, 'True', 'TEORI', 'PAF31034', 7, 'M219'),
(267, 'Teori Elektromagnetik I ', 3, 1, 'True', 'TEORI', 'PAF31033', 7, 'M251'),
(268, 'Teori Gelombang ', 2, 1, 'True', 'TEORI', 'PAF2114', 7, 'M230'),
(269, 'Metodologi Riset ', 2, 1, 'True', 'TEORI', 'MIP11082', 7, 'M209'),
(270, 'Kemagnetan', 3, 1, 'True', 'TEORI', 'MAF4108', 7, 'M242'),
(271, 'Fisika Dasar I ', 3, 1, 'True', 'TEORI', 'MIP1101', 7, 'M221'),
(272, 'Fisika Kuantum I ', 2, 1, 'True', 'TEORI', 'PAF31031', 7, 'M253'),
(273, 'Fisika Zat Padat I ', 3, 1, 'True', 'TEORI', 'PAF31035', 7, 'M232'),
(274, 'Fisika Perminyakan dan Gas Alam', 2, 1, 'True', 'TEORI', 'MAF3109', 7, 'M211'),
(275, 'Bahasa Inggris Fisika', 2, 1, 'True', 'TEORI', 'PAF41055', 7, 'M244'),
(276, 'Optik Modern', 2, 1, 'True', 'TEORI', 'PAF31137', 7, 'M223'),
(277, 'Thermodinamika I ', 2, 1, 'True', 'TEORI', 'PAF31030', 7, 'M256'),
(278, 'Kimia Dasar I ', 2, 1, 'True', 'TEORI', 'MIP1103', 7, 'M235'),
(279, 'Fisika Komputasi ', 3, 1, 'True', 'TEORI', 'PAF31032', 7, 'M214'),
(280, 'Biologi Dasar ', 2, 1, 'True', 'TEORI', 'MIP1105', 7, 'M247'),
(281, 'Teknologi Informasi dan Komunikasi ', 2, 1, 'True', 'TEORI', 'MIP11052', 7, 'M226'),
(282, 'Fisika Atom dan Molekul', 2, 1, 'True', 'TEORI', 'PAF31140', 7, 'M259'),
(283, 'Spektroskopi Optik', 3, 1, 'True', 'TEORI', 'PAF41159', 7, 'M238'),
(284, 'Fisika Matematika I  ', 3, 1, 'True', 'TEORI', 'MAF2103', 7, 'M217'),
(285, 'Geofisika', 2, 1, 'True', 'TEORI', 'PAF 2117', 7, 'M250'),
(288, 'Fisika Partikel', 3, 1, 'True', 'TEORI', 'MAF4107', 7, 'M229'),
(290, 'Karakterisasi Material ', 3, 1, 'True', 'TEORI', 'PAF41156', 7, 'M208'),
(291, 'Kapita Selekta Fisika', 2, 1, 'True', 'TEORI', 'PAF 2121', 7, 'M241'),
(292, 'Fisika Nano', 2, 1, 'True', 'TEORI', 'MAF3108', 7, 'M220'),
(293, 'Metode Numerik', 2, 1, 'True', 'TEORI', 'MAF4106', 7, 'M252'),
(294, 'Fisika Fluida', 2, 1, 'True', 'TEORI', 'PAF2119', 7, 'M231'),
(295, 'Seminar Literatur', 2, 1, 'True', 'TEORI', 'PAF33036', 7, 'M210'),
(296, 'Geologi', 2, 1, 'True', 'TEORI', 'MAF2110', 7, 'M243'),
(297, 'Fisika Reaktor dan Partikel', 2, 1, 'True', 'TEORI', 'PAF41157', 7, 'M222'),
(298, 'Pencitraan Medis', 2, 1, 'True', 'TEORI', 'PAF41158', 7, 'M254'),
(299, 'Akustik Bawah Air', 2, 1, 'True', 'TEORI', 'MAF4104', 7, 'M233'),
(300, 'Fisika Lingkungan', 2, 1, 'True', 'TEORI', 'PAF21115', 7, 'M212'),
(301, 'Konversi Energi', 2, 1, 'True', 'TEORI', 'PAF 2122', 7, 'M245'),
(302, 'Managemen dan Kwirausahaan Fisika', 2, 1, 'True', 'TEORI', 'MIP11072', 7, 'M224'),
(304, 'Elektronika Digital', 2, 1, 'True', 'TEORI', 'PAF31138', 7, 'M257'),
(305, 'Pengantar Biofisika', 2, 1, 'True', 'TEORI', 'PAF31139', 7, 'M236'),
(306, 'Astronomi Dasar ', 2, 1, 'True', 'TEORI', 'PAF 2118', 7, 'M215'),
(307, 'Pemodelan dan Simulasi Fisika', 2, 1, 'True', 'TEORI', 'PAF41161', 7, 'M248'),
(308, 'Prak. Elektronika I ', 1, 1, 'True', 'PRAKTIKUM', 'PAF2112', 7, 'M227'),
(309, 'Prak. Fisika Dasar I ', 1, 1, 'True', 'PRAKTIKUM', 'MIP12022', 7, 'M206'),
(310, 'Prak. Kimia Dasar I  ', 1, 1, 'True', 'PRAKTIKUM', 'MIP1104', 7, 'M239'),
(311, 'Pendidikan Pancasila', 2, 1, 'True', 'TEORI', 'UXN11176', 7, 'M218'),
(312, 'BIOLOGI SEL DAN MOLEKUL ', 3, 1, 'True', 'TEORI', 'PAB3102', 5, 'M153'),
(313, 'MIKROBIOLOGI ', 3, 1, 'True', 'TEORI', 'PAB21010', 5, 'M132'),
(314, 'EKOLOGI LAHAN BASAH ', 3, 1, 'True', 'TEORI', 'PAB21008', 5, 'M113'),
(315, 'EKOFISIOLOGI TUMBUHAN', 2, 1, 'True', 'TEORI', 'PAB3117', 5, 'M143'),
(316, 'ILMU LINGKUNGAN ', 2, 1, 'True', 'TEORI', 'PAB21011', 5, 'M124'),
(317, 'BIOLOGI DASAR ', 3, 1, 'True', 'TEORI', 'MIP11011', 5, 'M156'),
(318, 'SISTEMATIKA TUMBUHAN ', 3, 1, 'True', 'TEORI', 'PAB2101', 5, 'M135'),
(319, 'MIKROTEKNIK', 2, 1, 'True', 'TEORI', 'PAB3118', 5, 'M116'),
(321, 'GENETIKA TUMBUHAN', 2, 1, 'True', 'TEORI', 'BM13132', 5, 'M146'),
(322, 'FISIOLOGI MIKROBA', 3, 1, 'True', 'TEORI', 'PAB3103', 5, 'M126'),
(323, 'TEKNIK PENGELOLAAN MIKROBA', 3, 1, 'True', 'TEORI', 'PAB3145', 5, 'M158'),
(324, 'LIMNOLOGI', 2, 1, 'True', 'TEORI', 'BM13122', 5, 'M137'),
(325, 'BIOTEKNOLOGI ', 3, 1, 'True', 'TEORI', 'PAB3104', 5, 'M118'),
(326, 'FITOGEOGRAFI', 3, 1, 'True', 'TEORI', 'PAB3116', 5, 'M149'),
(327, 'FISIKA DASAR ', 3, 1, 'True', 'PRAKTIKUM', 'BM11104', 5, 'M128'),
(328, 'ORCHIDOLOGI', 2, 1, 'True', 'TEORI', 'BM14211', 5, 'M160'),
(329, 'SISTEMATIKA HEWAN ', 3, 1, 'True', 'TEORI', 'PAB21007', 5, 'M139'),
(330, 'MATEMATIKA ', 2, 1, 'True', 'TEORI', 'MIP11041', 5, 'M120'),
(331, 'PENDIDIKAN AGAMA ISLAM ', 2, 1, 'True', 'TEORI', 'UXN 1001', 5, 'M151'),
(332, 'FISIOLOGI BIJI', 3, 1, 'True', 'TEORI', 'BM13113', 5, 'M130'),
(333, 'BAKTERIOLOGI', 2, 1, 'True', 'TEORI', 'BM13142', 5, 'M111'),
(334, 'RANCANGAN PERCOBAAN ', 3, 1, 'True', 'TEORI', 'PAB3101', 5, 'M141'),
(335, 'PENDIDIKAN PANCASILA ', 2, 1, 'True', 'TEORI', 'UXN11177', 5, 'M122'),
(336, 'FISIKA ', 3, 1, 'True', 'TEORI', 'MIP11021', 5, 'M154'),
(337, 'KIMIA ', 2, 1, 'True', 'TEORI', 'MIP11031', 5, 'M133'),
(338, 'GENETIKA ', 3, 1, 'True', 'TEORI', 'PAB21009', 5, 'M114'),
(339, 'PENGANTAR BIOTEKNOLOGI', 2, 1, 'True', 'TEORI', 'BM13106', 5, 'M144'),
(340, 'MIKOLOGI', 3, 1, 'True', 'TEORI', 'BM13143', 5, 'M125'),
(341, 'EKOLOGI HEWAN TANAH', 3, 1, 'True', 'TEORI', 'BM14121', 5, 'M157'),
(342, 'SOSIOLOGI MASYARAKAT ', 2, 1, 'True', 'TEORI', 'PAB11001', 5, 'M136'),
(343, 'ANALISIS LINGKUNGAN', 2, 1, 'True', 'TEORI', 'BM14222', 5, 'M117'),
(344, 'MIKROTEKNIK HEWAN', 2, 1, 'True', 'TEORI', 'BM12151', 5, 'M147'),
(345, 'BIOLOGI KONSERVASI ', 3, 1, 'True', 'TEORI', 'PAB3105', 5, 'M127'),
(346, 'SISTEMATIKA MIKROBA', 3, 1, 'True', 'TEORI', 'BM13101', 5, 'M159'),
(347, 'EKOLOGI DAN PENGELOLAAN SATWA LIAR', 2, 1, 'True', 'TEORI', 'BM14221', 5, 'M138'),
(348, 'MIKROBIOLOGI MEDIS', 3, 1, 'True', 'TEORI', 'BM14142', 5, 'M119'),
(349, 'BUDIDAYA JAMUR', 2, 1, 'True', 'TEORI', 'BM14143', 5, 'M150'),
(350, 'SEMINAR LITERATUR', 2, 1, 'True', 'TEORI', 'BM13203', 5, 'M129'),
(352, 'KAPITA SELEKTA SISTEMATIKA TUMBUHAN', 3, 1, 'True', 'TEORI', 'BM13204', 5, 'M161'),
(353, 'EVOLUSI', 2, 1, 'True', 'TEORI', 'BM13103', 5, 'M140'),
(354, 'PLANKTONOLOGI', 3, 1, 'True', 'TEORI', 'PAB3153', 5, 'M121'),
(355, 'FITOHORMON', 3, 1, 'True', 'TEORI', 'BM14112', 5, 'M152'),
(356, 'BAHASA INDONESIA ', 2, 1, 'True', 'TEORI', 'UXN1008', 5, 'M131'),
(357, 'PENGENDALIAN BIOLOGI', 2, 1, 'True', 'TEORI', 'BM13103', 5, 'M112'),
(358, 'BAHASA INGGRIS ', 2, 1, 'True', 'TEORI', 'BM11103', 5, 'M142'),
(359, 'KULTUR JARINGAN TUMBUHAN', 2, 1, 'True', 'TEORI', 'PAB3113', 5, 'M123'),
(360, 'MIKROTEKNIK TUMBUHAN', 2, 1, 'True', 'TEORI', 'BM13114', 5, 'M155'),
(361, 'BIOLOGI MOLEKULER', 2, 1, 'True', 'TEORI', 'BM13131', 5, 'M134'),
(362, 'MIKROBIOLOGI LINGKUNGAN', 3, 1, 'True', 'TEORI', 'PAB3143', 5, 'M115'),
(392, 'AMDAL', 2, 1, 'True', 'TEORI', 'BM13223', 5, 'M145'),
(393, 'Keamanan Sistem Informasi', 3, 1, 'True', 'TEORI', 'PAI31027', 2, 'M37'),
(394, 'Konsep Pemrograman', 4, 1, 'True', 'PRAKTIKUM', 'PAI11003', 2, 'M51'),
(395, 'Aljabar Linier Elementer II', 3, 1, 'True', 'TEORI', 'PAM13005', 4, 'M98'),
(396, 'Prak Kimia Dasar I', 1, 1, 'True', 'PRAKTIKUM', 'MIP12033', 6, 'M168'),
(397, 'METABOLISME TUMBUHAN', 3, 1, 'True', 'TEORI', 'BM14111', 5, 'M148');

-- --------------------------------------------------------

--
-- Table structure for table `pengampu`
--

CREATE TABLE IF NOT EXISTS `pengampu` (
`kode` int(10) NOT NULL,
  `kode_mk` int(10) DEFAULT NULL,
  `kode_asisten` int(10) DEFAULT NULL,
  `kelas` int(10) DEFAULT NULL,
  `tahun_akademik` int(10) DEFAULT NULL,
  `kode_prodi` int(11) DEFAULT NULL,
  `semester` int(2) DEFAULT NULL,
  `kuota` int(5) DEFAULT NULL,
  `kode_ruang` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1358 ;

--
-- Dumping data for table `pengampu`
--

INSERT INTO `pengampu` (`kode`, `kode_mk`, `kode_asisten`, `kelas`, `tahun_akademik`, `kode_prodi`, `semester`, `kuota`, `kode_ruang`) VALUES
(264, 362, 284, 1, 9, 5, 5, 40, 0),
(267, 337, 216, 1, 9, 5, 1, 40, 0),
(268, 73, 85, 1, 7, 2, 1, 0, 0),
(272, 74, 86, 4, 7, 1, 3, 0, 0),
(273, 74, 86, 2, 7, 1, 3, 0, 0),
(274, 74, 86, 3, 7, 1, 3, 0, 0),
(275, 74, 86, 1, 7, 4, 3, 0, 0),
(276, 74, 86, 1, 7, 2, 3, 0, 0),
(277, 74, 86, 2, 7, 2, 3, 0, 0),
(278, 74, 86, 1, 7, 6, 3, 0, 0),
(279, 74, 86, 2, 7, 2, 3, 0, 0),
(280, 189, 123, 1, 9, 3, 1, 20, 0),
(281, 190, 121, 1, 9, 3, 3, 30, 0),
(282, 187, 122, 1, 9, 3, 7, 30, 0),
(283, 192, 117, 1, 9, 3, 1, 40, 0),
(284, 185, 122, 1, 9, 3, 5, 35, 0),
(285, 191, 124, 1, 9, 3, 5, 30, 0),
(286, 186, 115, 1, 9, 3, 3, 30, 0),
(287, 188, 119, 1, 9, 3, 5, 30, 0),
(288, 101, 88, 1, 7, 1, 1, 0, 0),
(289, 101, 88, 2, 7, 1, 1, 0, 0),
(290, 101, 88, 3, 7, 1, 1, 0, 0),
(291, 101, 88, 1, 7, 4, 1, 0, 0),
(293, 101, 88, 2, 7, 2, 1, 0, 0),
(294, 101, 88, 1, 7, 6, 3, 0, 0),
(295, 101, 88, 2, 7, 2, 3, 0, 0),
(296, 102, 88, 1, 7, 1, 3, 0, 0),
(297, 102, 88, 2, 7, 1, 3, 0, 0),
(298, 102, 88, 3, 7, 1, 3, 0, 0),
(299, 102, 88, 1, 7, 4, 1, 0, 0),
(300, 102, 89, 1, 7, 2, 3, 0, 0),
(301, 102, 89, 2, 7, 2, 3, 0, 0),
(302, 102, 89, 1, 7, 2, 3, 0, 0),
(303, 102, 89, 2, 7, 2, 3, 0, 0),
(304, 193, 125, 1, 9, 3, 1, 40, 0),
(305, 199, 124, 1, 9, 3, 3, 35, 0),
(306, 180, 123, 2, 9, 3, 3, 20, 0),
(307, 194, 124, 1, 9, 3, 3, 35, 0),
(308, 195, 126, 1, 9, 3, 5, 30, 0),
(309, 189, 123, 2, 9, 3, 1, 20, 0),
(310, 197, 127, 1, 9, 3, 1, 40, 0),
(311, 198, 119, 1, 9, 3, 5, 35, 0),
(312, 184, 117, 1, 9, 3, 1, 40, 0),
(314, 79, 90, 1, 7, 1, 5, 0, 0),
(315, 79, 90, 2, 7, 1, 5, 0, 0),
(316, 79, 90, 3, 7, 1, 5, 0, 0),
(317, 79, 90, 1, 7, 4, 5, 0, 0),
(318, 79, 90, 1, 7, 3, 5, 0, 0),
(319, 79, 90, 2, 7, 3, 5, 0, 0),
(320, 79, 90, 1, 7, 2, 5, 0, 0),
(321, 79, 90, 2, 7, 2, 5, 0, 0),
(322, 183, 121, 1, 9, 3, 3, 30, 0),
(323, 119, 308, 1, 9, 2, 5, 35, 0),
(328, 169, 197, 1, 9, 4, 3, 40, 0),
(329, 170, 310, 1, 9, 4, 5, 40, 0),
(330, 169, 195, 2, 9, 4, 3, 40, 0),
(331, 171, 245, 2, 9, 4, 1, 40, 0),
(332, 171, 214, 1, 9, 4, 1, 40, 0),
(333, 166, 202, 1, 9, 4, 3, 40, 0),
(334, 167, 212, 1, 9, 4, 1, 40, 0),
(335, 167, 213, 2, 9, 4, 1, 40, 0),
(336, 106, 94, 1, 7, 1, 5, 0, 0),
(337, 106, 94, 2, 7, 1, 5, 0, 0),
(338, 106, 94, 3, 7, 1, 5, 0, 0),
(339, 106, 94, 1, 7, 4, 5, 0, 0),
(340, 106, 94, 1, 7, 3, 5, 0, 0),
(341, 106, 94, 2, 7, 3, 5, 0, 0),
(342, 106, 94, 1, 7, 2, 5, 0, 0),
(343, 106, 94, 2, 7, 2, 5, 0, 0),
(344, 104, 95, 1, 7, 1, 1, 0, 0),
(345, 118, 93, 1, 9, 2, 3, 50, 0),
(349, 118, 308, 1, 9, 2, 5, 35, 0),
(352, 200, 214, 1, 9, 6, 1, 45, 0),
(353, 127, 88, 1, 9, 2, 1, 50, 0),
(355, 201, 218, 1, 9, 6, 5, 45, 0),
(357, 126, 89, 1, 9, 2, 3, 50, 0),
(359, 126, 308, 1, 9, 2, 3, 50, 0),
(360, 84, 97, 1, 7, 1, 5, 0, 0),
(361, 84, 97, 2, 7, 1, 5, 0, 0),
(362, 84, 97, 3, 7, 1, 5, 0, 0),
(363, 84, 97, 1, 7, 4, 5, 0, 0),
(364, 84, 97, 1, 7, 3, 5, 0, 0),
(365, 84, 97, 2, 7, 3, 5, 0, 0),
(366, 84, 97, 1, 7, 2, 5, 0, 0),
(367, 84, 97, 2, 7, 6, 5, 0, 0),
(368, 159, 145, 2, 9, 4, 1, 40, 0),
(369, 162, 124, 1, 9, 4, 3, 40, 0),
(370, 161, 208, 1, 9, 4, 5, 40, 0),
(371, 395, 196, 1, 9, 4, 3, 40, 0),
(372, 102, 206, 4, 9, 4, 3, 20, 0),
(373, 162, 209, 2, 9, 4, 3, 40, 0),
(374, 160, 202, 1, 9, 4, 7, 40, 0),
(375, 96, 148, 1, 9, 4, 1, 40, 0),
(376, 158, 108, 2, 9, 4, 3, 40, 0),
(377, 159, 195, 1, 9, 4, 1, 40, 0),
(378, 159, 145, 2, 9, 4, 1, 40, 0),
(384, 85, 101, 1, 7, 1, 1, 0, 0),
(385, 129, 86, 1, 9, 2, 3, 50, 0),
(386, 85, 101, 3, 7, 1, 1, 0, 0),
(387, 125, 90, 1, 9, 2, 1, 50, 0),
(388, 120, 85, 1, 9, 2, 3, 50, 0),
(390, 123, 92, 1, 9, 2, 5, 35, 0),
(391, 85, 101, 2, 7, 6, 1, 0, 0),
(392, 108, 102, 1, 7, 3, 3, 0, 0),
(393, 108, 102, 2, 7, 3, 3, 0, 0),
(394, 108, 102, 1, 7, 6, 3, 0, 0),
(395, 108, 102, 2, 7, 6, 3, 0, 0),
(396, 109, 102, 1, 7, 1, 5, 0, 0),
(397, 109, 102, 2, 7, 1, 5, 0, 0),
(398, 109, 102, 3, 7, 1, 5, 0, 0),
(399, 109, 102, 1, 7, 4, 5, 0, 0),
(400, 109, 102, 1, 7, 3, 5, 0, 0),
(401, 109, 102, 2, 7, 3, 5, 0, 0),
(402, 109, 102, 1, 7, 6, 5, 0, 0),
(403, 109, 102, 2, 7, 6, 5, 0, 0),
(404, 107, 103, 1, 7, 1, 1, 0, 0),
(405, 128, 87, 1, 9, 2, 5, 35, 0),
(409, 107, 103, 2, 7, 4, 1, 0, 0),
(411, 107, 103, 2, 7, 6, 1, 0, 0),
(412, 108, 103, 1, 7, 2, 3, 0, 0),
(413, 108, 103, 2, 7, 2, 3, 0, 0),
(414, 108, 103, 3, 7, 2, 3, 0, 0),
(415, 108, 103, 1, 7, 2, 1, 0, 0),
(418, 87, 104, 3, 7, 2, 1, 0, 0),
(422, 87, 104, 1, 7, 6, 1, 0, 0),
(423, 113, 85, 1, 9, 2, 1, 50, 0),
(424, 205, 223, 2, 9, 6, 5, 45, 0),
(425, 243, 252, 2, 9, 6, 1, 45, 0),
(426, 203, 221, 3, 9, 6, 5, 45, 0),
(427, 208, 226, 3, 9, 6, 3, 45, 0),
(428, 209, 221, 1, 9, 6, 5, 45, 0),
(429, 234, 225, 3, 9, 6, 5, 45, 0),
(430, 202, 219, 2, 9, 6, 5, 45, 0),
(431, 207, 216, 1, 9, 6, 3, 45, 0),
(432, 172, 118, 1, 9, 3, 1, 40, 0),
(433, 173, 115, 1, 9, 3, 3, 35, 0),
(434, 180, 116, 1, 9, 3, 3, 20, 0),
(435, 176, 117, 1, 9, 3, 1, 40, 0),
(436, 179, 121, 1, 9, 3, 1, 40, 0),
(437, 182, 120, 1, 9, 3, 3, 35, 0),
(438, 181, 122, 1, 9, 3, 5, 35, 0),
(439, 177, 119, 1, 9, 3, 3, 35, 0),
(440, 175, 116, 1, 9, 3, 7, 30, 0),
(441, 178, 120, 1, 9, 3, 5, 35, 0),
(443, 89, 107, 2, 7, 2, 1, 0, 0),
(495, 83, 87, 1, 1, 1, 3, 40, 37),
(496, 135, 87, 1, 1, 1, 1, 40, 30),
(497, 82, 87, 1, 1, 1, 1, 40, 38),
(499, 107, 109, 1, 1, 1, 1, 34, 0),
(501, 144, 108, 1, 1, 1, 1, 40, 0),
(502, 145, 102, 1, 7, 2, 1, 0, 0),
(503, 174, 116, 1, 9, 3, 5, 35, 0),
(505, 159, 97, 1, 1, 4, 1, 45, 0),
(508, 336, 268, 3, 9, 5, 1, 40, 0),
(509, 343, 301, 3, 9, 5, 5, 40, 0),
(513, 354, 292, 1, 9, 5, 7, 40, 0),
(514, 355, 300, 1, 9, 5, 5, 40, 0),
(515, 313, 284, 1, 9, 5, 3, 40, 0),
(519, 314, 285, 2, 9, 5, 3, 40, 0),
(520, 316, 286, 3, 9, 5, 3, 40, 0),
(524, 337, 216, 2, 9, 5, 1, 40, 0),
(525, 335, 295, 1, 9, 5, 1, 40, 0),
(529, 329, 282, 2, 9, 5, 3, 40, 0),
(530, 353, 320, 1, 9, 5, 7, 40, 0),
(531, 317, 282, 1, 9, 5, 1, 40, 0),
(535, 361, 289, 1, 9, 5, 7, 40, 0),
(536, 338, 307, 3, 9, 5, 3, 40, 0),
(540, 325, 289, 2, 9, 5, 5, 40, 0),
(541, 214, 233, 1, 9, 6, 1, 40, 0),
(545, 396, 245, 2, 9, 6, 1, 45, 29),
(546, 221, 232, 3, 9, 6, 5, 40, 33),
(547, 212, 228, 1, 9, 6, 5, 40, 30),
(551, 208, 221, 2, 9, 6, 5, 45, 0),
(552, 238, 230, 1, 9, 6, 7, 30, 0),
(556, 229, 218, 3, 9, 6, 3, 20, 0),
(557, 218, 226, 2, 9, 6, 3, 20, 0),
(561, 220, 248, 2, 9, 6, 1, 40, 0),
(562, 240, 249, 3, 9, 6, 1, 40, 0),
(563, 219, 244, 1, 9, 6, 1, 40, 0),
(567, 243, 311, 1, 9, 6, 1, 45, 0),
(568, 220, 250, 3, 9, 6, 1, 40, 0),
(572, 240, 251, 2, 9, 6, 1, 40, 0),
(573, 225, 217, 3, 9, 6, 3, 45, 32),
(577, 231, 202, 3, 9, 6, 1, 45, 0),
(578, 231, 196, 1, 9, 6, 1, 45, 0),
(579, 235, 226, 1, 9, 6, 3, 20, 0),
(583, 244, 224, 1, 9, 6, 5, 20, 0),
(584, 221, 232, 1, 9, 6, 5, 40, 33),
(588, 245, 230, 1, 9, 6, 5, 20, 0),
(589, 246, 253, 1, 9, 6, 1, 30, 0),
(593, 246, 254, 2, 9, 6, 1, 30, 0),
(594, 246, 255, 3, 9, 6, 1, 30, 0),
(595, 230, 221, 2, 9, 6, 7, 30, 0),
(599, 223, 218, 1, 9, 6, 3, 45, 0),
(600, 234, 223, 1, 9, 6, 5, 45, 0),
(604, 201, 220, 3, 9, 6, 5, 45, 0),
(605, 213, 233, 2, 9, 6, 7, 20, 0),
(609, 214, 233, 2, 9, 6, 1, 40, 0),
(610, 216, 232, 3, 9, 6, 3, 30, 0),
(611, 229, 221, 2, 9, 6, 3, 45, 0),
(615, 209, 226, 2, 9, 6, 5, 45, 0),
(616, 226, 246, 3, 9, 6, 7, 45, 0),
(620, 235, 226, 2, 9, 6, 3, 45, 0),
(621, 243, 256, 3, 9, 6, 1, 40, 0),
(625, 252, 246, 1, 9, 6, 5, 45, 0),
(626, 217, 238, 1, 9, 6, 1, 40, 0),
(627, 215, 214, 3, 9, 6, 3, 40, 31),
(631, 253, 216, 1, 9, 6, 7, 30, 0),
(632, 240, 312, 1, 9, 6, 1, 40, 0),
(636, 207, 216, 2, 9, 6, 3, 45, 0),
(637, 218, 217, 1, 9, 6, 3, 30, 0),
(638, 117, 94, 1, 9, 2, 1, 50, 0),
(639, 116, 95, 1, 9, 2, 1, 50, 0),
(640, 115, 96, 1, 9, 2, 3, 50, 0),
(641, 114, 97, 1, 9, 2, 5, 35, 0),
(642, 119, 98, 1, 9, 2, 5, 35, 0),
(646, 254, 128, 2, 9, 7, 1, 40, 0),
(647, 255, 257, 1, 9, 7, 1, 40, 0),
(648, 256, 260, 1, 9, 7, 3, 40, 0),
(652, 311, 261, 1, 9, 7, 1, 40, 0),
(653, 254, 209, 1, 9, 7, 1, 40, 0),
(657, 255, 262, 2, 9, 7, 1, 45, 0),
(658, 311, 264, 3, 9, 7, 1, 40, 0),
(662, 257, 213, 1, 9, 7, 3, 34, 0),
(663, 258, 212, 3, 9, 7, 3, 28, 0),
(664, 259, 259, 2, 9, 7, 7, 17, 0),
(668, 260, 311, 1, 9, 7, 3, 34, 0),
(669, 261, 269, 1, 9, 7, 7, 10, 0),
(673, 262, 268, 1, 9, 7, 5, 16, 0),
(674, 263, 212, 1, 9, 7, 1, 40, 0),
(678, 264, 272, 1, 9, 7, 3, 40, 0),
(679, 265, 274, 3, 9, 7, 7, 30, 0),
(680, 266, 274, 2, 9, 7, 5, 40, 0),
(684, 267, 272, 3, 9, 7, 5, 40, 0),
(685, 263, 270, 2, 9, 7, 1, 40, 0),
(689, 257, 213, 2, 9, 7, 3, 40, 0),
(690, 268, 252, 3, 9, 7, 3, 40, 0),
(694, 260, 311, 2, 9, 7, 3, 29, 0),
(695, 269, 268, 1, 9, 7, 7, 22, 0),
(696, 263, 271, 3, 9, 7, 1, 40, 0),
(700, 270, 272, 1, 9, 7, 7, 30, 0),
(701, 271, 266, 2, 9, 7, 1, 43, 0),
(705, 272, 275, 2, 9, 7, 5, 40, 0),
(706, 273, 266, 1, 9, 7, 5, 39, 0),
(710, 274, 273, 1, 9, 7, 5, 39, 0),
(711, 275, 260, 1, 9, 7, 7, 30, 0),
(712, 276, 85, 1, 9, 7, 5, 40, 0),
(716, 271, 277, 3, 9, 7, 1, 40, 0),
(717, 277, 271, 2, 9, 7, 5, 40, 0),
(721, 259, 259, 1, 9, 7, 7, 40, 0),
(722, 268, 252, 1, 9, 7, 3, 40, 0),
(726, 278, 280, 1, 9, 7, 1, 40, 0),
(727, 264, 272, 2, 9, 7, 3, 40, 0),
(728, 273, 266, 3, 9, 7, 5, 40, 0),
(732, 279, 260, 1, 9, 7, 5, 40, 0),
(733, 265, 274, 1, 9, 7, 7, 30, 0),
(737, 280, 281, 3, 9, 7, 1, 40, 0),
(738, 265, 85, 2, 9, 7, 7, 40, 0),
(742, 281, 97, 2, 9, 7, 1, 40, 0),
(743, 273, 266, 2, 9, 7, 5, 30, 0),
(744, 272, 275, 1, 9, 7, 5, 45, 0),
(748, 257, 265, 3, 9, 7, 3, 32, 0),
(749, 282, 278, 1, 9, 7, 5, 39, 0),
(753, 280, 281, 2, 9, 7, 1, 40, 0),
(754, 264, 272, 3, 9, 7, 3, 40, 0),
(758, 266, 271, 3, 9, 7, 5, 40, 0),
(759, 281, 97, 1, 9, 7, 1, 40, 0),
(760, 267, 272, 2, 9, 7, 1, 40, 0),
(764, 277, 271, 1, 9, 7, 5, 40, 0),
(765, 278, 229, 3, 9, 7, 1, 40, 0),
(769, 283, 277, 1, 9, 7, 7, 30, 0),
(770, 271, 278, 1, 9, 7, 1, 40, 0),
(774, 279, 260, 2, 9, 7, 5, 40, 0),
(775, 259, 85, 3, 9, 7, 7, 30, 0),
(776, 284, 272, 3, 9, 7, 7, 30, 0),
(780, 258, 268, 2, 9, 7, 3, 30, 0),
(781, 272, 275, 3, 9, 7, 5, 45, 0),
(785, 285, 273, 1, 9, 7, 3, 40, 0),
(786, 260, 265, 3, 9, 7, 3, 29, 0),
(790, 268, 252, 2, 9, 7, 3, 40, 0),
(791, 280, 281, 1, 9, 7, 1, 40, 0),
(792, 269, 268, 2, 9, 7, 7, 40, 0),
(796, 269, 268, 3, 9, 7, 7, 40, 0),
(797, 278, 243, 2, 9, 7, 1, 40, 0),
(801, 288, 278, 3, 9, 7, 7, 40, 0),
(802, 267, 272, 1, 9, 7, 5, 40, 0),
(806, 266, 274, 1, 9, 7, 5, 40, 0),
(807, 279, 260, 3, 9, 7, 5, 40, 0),
(808, 281, 97, 3, 9, 7, 1, 40, 0),
(812, 258, 212, 1, 9, 7, 3, 36, 0),
(813, 277, 271, 3, 9, 7, 5, 45, 0),
(817, 290, 259, 1, 9, 7, 7, 45, 0),
(818, 291, 85, 1, 9, 7, 3, 45, 0),
(822, 292, 266, 1, 9, 7, 5, 40, 0),
(823, 293, 256, 1, 9, 7, 7, 40, 0),
(824, 294, 270, 1, 9, 7, 3, 40, 0),
(828, 295, 222, 1, 9, 7, 5, 45, 0),
(829, 296, 222, 1, 9, 7, 5, 40, 0),
(833, 297, 278, 1, 9, 7, 7, 45, 0),
(834, 298, 265, 1, 9, 7, 7, 45, 0),
(838, 299, 256, 1, 9, 7, 7, 40, 0),
(839, 300, 222, 1, 9, 7, 5, 40, 0),
(840, 300, 222, 2, 9, 7, 5, 40, 0),
(844, 301, 274, 1, 9, 7, 3, 40, 0),
(845, 299, 313, 1, 9, 7, 5, 40, 0),
(849, 304, 268, 1, 9, 7, 5, 40, 0),
(850, 305, 265, 1, 9, 7, 5, 40, 0),
(854, 306, 277, 1, 9, 7, 3, 40, 0),
(855, 307, 256, 1, 9, 7, 7, 40, 0),
(856, 308, 212, 1, 9, 7, 3, 40, 36),
(860, 308, 212, 2, 9, 7, 3, 40, 36),
(861, 308, 212, 3, 9, 7, 3, 40, 36),
(865, 309, 275, 1, 9, 7, 1, 40, 28),
(866, 309, 275, 2, 9, 7, 1, 40, 28),
(870, 309, 275, 3, 9, 7, 1, 40, 28),
(871, 310, 280, 1, 9, 7, 1, 40, 29),
(872, 310, 243, 2, 9, 7, 1, 40, 29),
(876, 310, 229, 3, 9, 7, 1, 40, 29),
(877, 313, 284, 2, 9, 5, 3, 40, 0),
(881, 314, 285, 1, 9, 5, 3, 40, 0),
(882, 315, 238, 1, 9, 5, 5, 40, 0),
(886, 316, 286, 2, 9, 5, 5, 40, 0),
(887, 317, 287, 2, 9, 5, 1, 40, 0),
(888, 78, 85, 2, 9, 1, 5, 40, 0),
(892, 114, 308, 1, 9, 2, 5, 35, 0),
(893, 130, 95, 1, 9, 2, 3, 50, 0),
(897, 130, 308, 1, 9, 2, 3, 50, 0),
(898, 127, 308, 1, 9, 2, 1, 50, 0),
(902, 131, 92, 1, 9, 2, 3, 50, 0),
(903, 132, 94, 1, 9, 2, 5, 35, 0),
(904, 143, 99, 1, 9, 2, 5, 35, 0),
(908, 142, 99, 1, 9, 2, 1, 50, 0),
(909, 141, 100, 1, 9, 2, 3, 50, 0),
(913, 140, 101, 1, 9, 2, 1, 50, 0),
(914, 141, 308, 1, 9, 2, 3, 50, 0),
(918, 142, 308, 1, 9, 2, 1, 50, 0),
(919, 132, 308, 1, 7, 2, 5, 35, 0),
(920, 123, 308, 1, 9, 2, 5, 35, 0),
(924, 104, 94, 1, 9, 1, 1, 40, 0),
(925, 133, 85, 2, 9, 1, 1, 40, 0),
(929, 135, 100, 1, 9, 1, 3, 40, 0),
(930, 73, 96, 3, 9, 1, 1, 40, 0),
(934, 104, 94, 2, 9, 1, 1, 40, 0),
(935, 88, 99, 3, 9, 1, 1, 40, 0),
(936, 85, 97, 2, 9, 1, 5, 40, 0),
(940, 84, 99, 1, 9, 1, 3, 40, 0),
(941, 82, 95, 2, 9, 1, 5, 40, 0),
(945, 81, 106, 1, 9, 1, 5, 40, 0),
(946, 146, 97, 1, 9, 1, 7, 40, 0),
(950, 133, 85, 3, 9, 1, 1, 40, 0),
(951, 88, 100, 1, 9, 1, 1, 40, 0),
(952, 85, 97, 1, 9, 1, 5, 40, 0),
(956, 79, 100, 1, 9, 1, 5, 40, 0),
(957, 104, 94, 3, 9, 1, 1, 40, 0),
(961, 145, 98, 2, 9, 1, 3, 40, 0),
(962, 144, 95, 1, 9, 1, 5, 40, 0),
(966, 133, 92, 1, 9, 1, 1, 40, 0),
(967, 137, 87, 2, 9, 1, 3, 40, 0),
(968, 83, 89, 1, 9, 1, 7, 40, 0),
(972, 144, 95, 2, 9, 1, 5, 40, 0),
(973, 87, 88, 2, 9, 1, 3, 40, 0),
(977, 77, 87, 1, 9, 1, 7, 40, 0),
(978, 75, 100, 1, 9, 1, 7, 40, 0),
(982, 137, 92, 2, 9, 1, 3, 40, 0),
(983, 74, 89, 2, 9, 1, 5, 40, 0),
(984, 84, 99, 2, 9, 1, 3, 40, 0),
(988, 88, 100, 1, 9, 1, 1, 40, 0),
(989, 73, 96, 2, 9, 1, 1, 40, 0),
(993, 145, 98, 1, 9, 1, 3, 40, 0),
(994, 74, 89, 1, 9, 1, 5, 40, 0),
(998, 78, 85, 2, 7, 1, 5, 40, 0),
(999, 88, 99, 3, 9, 1, 1, 40, 0),
(1000, 89, 111, 1, 9, 1, 5, 40, 0),
(1004, 88, 98, 2, 9, 1, 1, 40, 0),
(1005, 105, 109, 1, 9, 1, 1, 40, 0),
(1009, 105, 109, 2, 9, 1, 1, 40, 0),
(1010, 106, 90, 3, 9, 1, 1, 40, 0),
(1014, 107, 108, 1, 9, 1, 3, 40, 0),
(1015, 135, 100, 2, 9, 1, 3, 40, 0),
(1016, 108, 98, 1, 9, 1, 5, 40, 0),
(1020, 105, 109, 3, 9, 1, 1, 40, 0),
(1021, 106, 90, 1, 9, 1, 1, 40, 0),
(1025, 106, 90, 2, 9, 1, 1, 40, 0),
(1026, 107, 108, 2, 9, 1, 3, 40, 0),
(1030, 108, 98, 2, 9, 1, 5, 40, 0),
(1031, 109, 88, 1, 9, 1, 5, 40, 0),
(1032, 110, 114, 1, 9, 1, 1, 40, 0),
(1036, 110, 114, 2, 9, 1, 1, 40, 0),
(1037, 110, 114, 3, 9, 1, 1, 40, 0),
(1041, 78, 113, 1, 9, 1, 5, 40, 0),
(1042, 101, 119, 2, 9, 1, 3, 40, 0),
(1046, 87, 88, 1, 9, 1, 3, 40, 0),
(1047, 81, 106, 2, 9, 1, 5, 40, 0),
(1048, 103, 309, 1, 9, 1, 7, 40, 0),
(1052, 82, 95, 1, 9, 1, 5, 40, 0),
(1053, 101, 119, 1, 9, 1, 3, 40, 0),
(1057, 83, 89, 2, 9, 1, 7, 40, 0),
(1058, 89, 111, 2, 9, 1, 5, 40, 0),
(1062, 112, 128, 1, 9, 4, 3, 40, 0),
(1063, 96, 145, 2, 9, 4, 1, 40, 0),
(1064, 96, 148, 2, 9, 4, 1, 40, 0),
(1067, 112, 194, 2, 9, 4, 3, 40, 0),
(1068, 93, 195, 2, 9, 4, 7, 40, 0),
(1069, 90, 196, 2, 9, 4, 5, 40, 0),
(1073, 93, 145, 1, 9, 4, 7, 40, 0),
(1074, 90, 197, 1, 9, 4, 5, 40, 0),
(1078, 102, 198, 1, 9, 4, 3, 20, 0),
(1079, 148, 115, 1, 9, 4, 1, 40, 0),
(1080, 148, 122, 2, 9, 4, 1, 40, 0),
(1084, 149, 199, 1, 9, 4, 5, 40, 0),
(1085, 149, 199, 2, 9, 4, 5, 40, 0),
(1089, 102, 198, 2, 9, 4, 3, 20, 0),
(1090, 150, 116, 1, 9, 4, 7, 40, 0),
(1094, 151, 209, 1, 9, 4, 3, 40, 0),
(1095, 151, 196, 2, 9, 4, 3, 40, 0),
(1096, 152, 101, 1, 9, 4, 1, 40, 0),
(1100, 152, 201, 2, 9, 4, 1, 40, 0),
(1101, 153, 202, 1, 9, 4, 1, 40, 0),
(1105, 153, 145, 2, 9, 4, 1, 40, 0),
(1106, 154, 203, 1, 9, 4, 5, 40, 0),
(1110, 154, 198, 2, 9, 4, 5, 40, 0),
(1111, 102, 204, 3, 9, 4, 3, 20, 0),
(1112, 155, 206, 1, 9, 4, 3, 40, 0),
(1116, 156, 205, 1, 9, 4, 7, 40, 0),
(1117, 157, 204, 1, 9, 4, 5, 40, 0),
(1121, 157, 206, 2, 9, 4, 5, 40, 0),
(1122, 158, 108, 1, 9, 4, 3, 40, 0),
(1126, 326, 314, 1, 9, 5, 5, 40, 0),
(1127, 336, 273, 1, 9, 5, 1, 40, 0),
(1128, 328, 281, 3, 9, 5, 7, 40, 0),
(1132, 325, 289, 1, 9, 5, 5, 40, 0),
(1133, 337, 216, 3, 9, 5, 1, 40, 0),
(1137, 338, 289, 2, 9, 5, 3, 40, 0),
(1138, 318, 314, 1, 9, 5, 3, 40, 0),
(1142, 329, 282, 3, 9, 5, 3, 40, 0),
(1143, 344, 288, 1, 9, 5, 7, 40, 0),
(1144, 345, 301, 1, 9, 5, 5, 40, 0),
(1148, 200, 215, 3, 9, 6, 1, 45, 0),
(1149, 312, 300, 2, 9, 5, 5, 40, 0),
(1153, 330, 315, 1, 9, 5, 1, 40, 0),
(1154, 356, 316, 2, 9, 5, 1, 40, 0),
(1158, 357, 304, 1, 9, 5, 7, 40, 0),
(1159, 317, 287, 3, 9, 5, 1, 40, 0),
(1160, 318, 314, 2, 9, 5, 3, 40, 0),
(1164, 316, 286, 1, 9, 5, 3, 40, 0),
(1165, 319, 281, 1, 9, 5, 1, 40, 0),
(1169, 313, 284, 3, 9, 5, 3, 40, 0),
(1170, 330, 315, 2, 9, 5, 1, 40, 0),
(1174, 331, 296, 2, 9, 5, 1, 40, 0),
(1175, 335, 297, 3, 9, 5, 1, 40, 0),
(1176, 339, 289, 1, 9, 5, 7, 40, 0),
(1180, 345, 301, 2, 9, 5, 5, 40, 0),
(1181, 346, 239, 1, 9, 5, 5, 40, 0),
(1185, 347, 240, 1, 9, 5, 7, 40, 0),
(1186, 348, 291, 1, 9, 5, 7, 40, 0),
(1190, 349, 284, 1, 9, 5, 7, 40, 0),
(1191, 358, 305, 1, 9, 5, 1, 40, 0),
(1192, 322, 291, 1, 9, 5, 5, 40, 0),
(1196, 359, 306, 1, 9, 5, 7, 40, 0),
(1197, 334, 318, 1, 9, 5, 5, 40, 0),
(1201, 392, 286, 1, 9, 5, 7, 40, 0),
(1202, 321, 289, 1, 9, 5, 7, 40, 0),
(1203, 331, 241, 1, 9, 5, 1, 40, 0),
(1206, 358, 293, 2, 9, 5, 1, 40, 0),
(1207, 332, 281, 1, 9, 5, 7, 40, 0),
(1208, 333, 287, 1, 9, 5, 7, 40, 0),
(1212, 340, 284, 1, 9, 5, 7, 40, 0),
(1213, 341, 318, 1, 9, 5, 5, 40, 0),
(1217, 356, 316, 1, 9, 5, 1, 40, 0),
(1218, 358, 319, 3, 9, 5, 1, 40, 0),
(1219, 330, 315, 3, 9, 5, 1, 40, 0),
(1222, 360, 281, 1, 9, 5, 5, 40, 0),
(1223, 318, 314, 1, 9, 5, 3, 40, 0),
(1224, 323, 290, 1, 9, 5, 7, 40, 0),
(1228, 322, 291, 2, 9, 5, 5, 40, 0),
(1229, 324, 292, 1, 9, 5, 5, 40, 0),
(1233, 334, 318, 2, 9, 5, 5, 40, 0),
(1234, 335, 111, 2, 9, 5, 1, 40, 0),
(1235, 336, 270, 2, 9, 5, 1, 40, 0),
(1238, 338, 289, 1, 9, 5, 3, 40, 0),
(1239, 331, 298, 3, 9, 5, 1, 40, 0),
(1240, 342, 299, 1, 9, 5, 1, 40, 0),
(1244, 397, 300, 1, 9, 5, 5, 40, 0),
(1245, 312, 300, 1, 9, 5, 5, 40, 0),
(1249, 352, 314, 1, 9, 5, 5, 40, 0),
(1250, 210, 224, 2, 9, 6, 3, 45, 0),
(1251, 211, 230, 3, 9, 6, 3, 45, 0),
(1254, 212, 228, 2, 9, 6, 5, 45, 30),
(1255, 213, 233, 1, 9, 6, 1, 20, 0),
(1256, 214, 233, 3, 9, 6, 1, 40, 0),
(1260, 204, 222, 1, 9, 6, 1, 45, 28),
(1261, 215, 235, 1, 9, 6, 3, 45, 31),
(1265, 216, 232, 2, 9, 6, 3, 30, 0),
(1266, 217, 238, 3, 9, 6, 1, 45, 0),
(1267, 218, 226, 3, 9, 6, 3, 20, 0),
(1270, 219, 241, 2, 9, 6, 1, 20, 0),
(1271, 211, 242, 2, 9, 6, 3, 45, 0),
(1272, 210, 228, 1, 9, 6, 3, 45, 0),
(1276, 219, 244, 3, 9, 6, 1, 40, 0),
(1277, 220, 91, 1, 9, 6, 1, 40, 0),
(1281, 206, 232, 2, 9, 6, 5, 40, 33),
(1282, 202, 216, 1, 9, 6, 5, 45, 0),
(1283, 216, 232, 1, 9, 6, 3, 20, 0),
(1286, 212, 228, 3, 9, 6, 5, 45, 30),
(1287, 223, 218, 2, 9, 6, 3, 45, 0),
(1288, 217, 238, 2, 9, 6, 1, 45, 0),
(1292, 201, 218, 2, 9, 6, 5, 45, 0),
(1293, 204, 222, 3, 9, 6, 1, 40, 28),
(1297, 225, 217, 1, 9, 6, 3, 40, 32),
(1298, 226, 220, 1, 9, 6, 7, 45, 0),
(1299, 207, 216, 3, 9, 6, 3, 45, 0),
(1302, 208, 221, 2, 9, 6, 3, 45, 0),
(1303, 205, 223, 3, 9, 6, 5, 45, 0),
(1304, 396, 215, 1, 9, 6, 1, 45, 29),
(1308, 205, 223, 3, 9, 6, 5, 45, 0),
(1309, 396, 215, 1, 9, 6, 1, 45, 29),
(1313, 200, 216, 2, 9, 6, 1, 45, 0),
(1314, 228, 246, 1, 9, 6, 7, 30, 0),
(1315, 229, 221, 1, 9, 6, 3, 20, 0),
(1318, 203, 226, 1, 9, 6, 5, 45, 0),
(1319, 230, 221, 1, 9, 6, 7, 30, 0),
(1320, 314, 286, 3, 9, 5, 3, 40, 0),
(1324, 210, 228, 3, 9, 6, 3, 45, 0),
(1325, 202, 216, 3, 9, 6, 5, 45, 0),
(1329, 231, 199, 2, 9, 6, 1, 45, 0),
(1330, 208, 221, 1, 9, 6, 3, 45, 0),
(1331, 215, 246, 2, 9, 6, 3, 45, 31),
(1334, 205, 223, 1, 9, 6, 5, 45, 0),
(1335, 223, 218, 3, 9, 6, 3, 45, 0),
(1336, 226, 246, 2, 9, 6, 7, 45, 0),
(1340, 209, 226, 3, 9, 6, 5, 45, 0),
(1341, 233, 228, 1, 9, 6, 7, 30, 0),
(1345, 225, 226, 2, 9, 6, 3, 40, 32),
(1346, 396, 215, 3, 9, 6, 1, 45, 29),
(1347, 234, 223, 2, 9, 6, 5, 45, 0),
(1350, 235, 226, 3, 9, 6, 3, 20, 0),
(1351, 211, 242, 1, 9, 6, 3, 45, 0),
(1352, 236, 243, 1, 9, 6, 7, 30, 0),
(1356, 394, 95, 1, 9, 2, 1, 50, 0),
(1357, 135, 92, 1, 9, 1, 1, 50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE IF NOT EXISTS `prodi` (
`kode` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `kode_jurusan` int(5) NOT NULL,
  `id_prodi` varchar(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`kode`, `nama_prodi`, `kode_jurusan`, `id_prodi`) VALUES
(1, 'Sistem Informasi', 1, 'P01'),
(2, 'Manajemen Informatika', 1, 'P02'),
(3, 'Statistika', 2, 'P03'),
(4, 'Matematika', 2, 'P04'),
(5, 'Biologi', 3, 'P05'),
(6, 'Kimia', 4, 'P06'),
(7, 'Fisika', 5, 'P07'),
(8, 'MIPA', 0, 'P08');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_penjadwalan`
--

CREATE TABLE IF NOT EXISTS `riwayat_penjadwalan` (
`kode` int(11) NOT NULL,
  `kode_pengampu` int(10) NOT NULL,
  `kode_hari` int(5) NOT NULL,
  `kode_jam` int(5) NOT NULL,
  `kode_ruang` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=457 ;

--
-- Dumping data for table `riwayat_penjadwalan`
--

INSERT INTO `riwayat_penjadwalan` (`kode`, `kode_pengampu`, `kode_hari`, `kode_jam`, `kode_ruang`) VALUES
(1, 1037, 1, 5, 21),
(2, 1048, 1, 5, 13),
(3, 936, 1, 1, 3),
(4, 1032, 1, 6, 13),
(5, 957, 1, 2, 9),
(6, 961, 1, 2, 21),
(7, 1041, 1, 2, 15),
(8, 930, 1, 7, 21),
(9, 888, 1, 3, 15),
(10, 993, 1, 3, 9),
(11, 1015, 1, 3, 13),
(12, 945, 1, 8, 13),
(13, 999, 1, 8, 9),
(14, 972, 2, 1, 9),
(15, 984, 2, 1, 3),
(16, 1031, 2, 1, 21),
(17, 988, 2, 6, 13),
(18, 1053, 2, 2, 15),
(19, 1020, 2, 7, 9),
(20, 966, 2, 3, 21),
(21, 978, 2, 3, 15),
(22, 1025, 2, 3, 13),
(23, 1030, 2, 3, 3),
(24, 1010, 2, 4, 3),
(25, 1057, 2, 4, 9),
(26, 1058, 2, 4, 15),
(27, 935, 3, 5, 13),
(28, 1036, 3, 5, 9),
(29, 925, 3, 2, 9),
(30, 983, 3, 2, 3),
(31, 1042, 3, 2, 21),
(32, 1004, 3, 7, 21),
(33, 1047, 3, 7, 9),
(34, 924, 3, 3, 15),
(35, 952, 3, 3, 3),
(36, 989, 3, 8, 9),
(37, 941, 3, 4, 21),
(38, 973, 3, 4, 15),
(39, 977, 3, 4, 13),
(40, 1000, 3, 4, 3),
(41, 1005, 4, 5, 3),
(42, 1014, 4, 5, 21),
(43, 1052, 4, 1, 15),
(44, 934, 4, 2, 9),
(45, 967, 4, 2, 3),
(46, 929, 4, 3, 15),
(47, 950, 4, 3, 21),
(48, 1016, 4, 3, 13),
(49, 1021, 4, 3, 9),
(50, 956, 4, 8, 9),
(51, 1046, 4, 4, 3),
(52, 940, 5, 1, 13),
(53, 962, 5, 1, 9),
(54, 968, 5, 1, 15),
(55, 982, 5, 1, 21),
(56, 951, 5, 6, 13),
(57, 946, 5, 14, 15),
(58, 1026, 5, 14, 21),
(59, 994, 5, 13, 3),
(60, 1009, 5, 15, 21),
(61, 432, 1, 2, 23),
(62, 433, 1, 2, 20),
(63, 440, 1, 2, 1),
(64, 280, 1, 3, 34),
(65, 286, 1, 3, 20),
(66, 311, 1, 3, 22),
(67, 283, 1, 8, 1),
(68, 307, 1, 4, 14),
(69, 441, 1, 4, 22),
(70, 281, 2, 1, 22),
(71, 308, 2, 2, 16),
(72, 306, 2, 3, 34),
(73, 438, 2, 3, 20),
(74, 434, 2, 4, 34),
(75, 312, 3, 5, 20),
(76, 304, 3, 2, 23),
(77, 285, 3, 3, 16),
(78, 437, 3, 3, 23),
(79, 310, 3, 8, 14),
(80, 284, 3, 4, 16),
(81, 439, 3, 4, 20),
(82, 436, 4, 1, 1),
(83, 309, 4, 2, 34),
(84, 282, 4, 3, 1),
(85, 287, 4, 3, 20),
(86, 305, 4, 3, 22),
(87, 435, 4, 8, 14),
(88, 322, 4, 4, 8),
(89, 503, 5, 1, 8),
(90, 390, 1, 1, 37),
(91, 349, 1, 2, 37),
(92, 892, 1, 3, 37),
(93, 353, 1, 4, 37),
(94, 638, 2, 1, 15),
(95, 914, 2, 1, 37),
(96, 908, 2, 6, 37),
(97, 359, 2, 3, 37),
(98, 641, 2, 3, 38),
(99, 913, 2, 8, 21),
(100, 345, 2, 4, 37),
(101, 902, 3, 1, 21),
(102, 323, 3, 2, 38),
(103, 909, 3, 2, 37),
(104, 357, 3, 3, 37),
(105, 423, 3, 3, 13),
(106, 920, 3, 3, 38),
(107, 898, 3, 4, 37),
(108, 918, 4, 5, 37),
(109, 640, 4, 1, 13),
(110, 893, 4, 2, 37),
(111, 904, 4, 2, 21),
(112, 903, 4, 3, 37),
(113, 385, 4, 8, 15),
(114, 387, 4, 8, 13),
(115, 405, 4, 8, 39),
(116, 642, 5, 1, 38),
(117, 897, 5, 1, 37),
(118, 388, 5, 6, 15),
(119, 639, 5, 17, 21),
(120, 1356, 5, 20, 37),
(121, 1100, 1, 5, 14),
(122, 1116, 1, 5, 16),
(123, 1069, 1, 1, 20),
(124, 1117, 1, 1, 22),
(125, 331, 1, 2, 16),
(126, 375, 1, 7, 14),
(127, 1063, 1, 7, 16),
(128, 328, 1, 4, 8),
(129, 1079, 1, 4, 23),
(130, 1067, 2, 1, 16),
(131, 1078, 2, 1, 34),
(132, 1096, 2, 6, 14),
(133, 369, 2, 2, 1),
(134, 373, 2, 2, 22),
(135, 368, 2, 3, 16),
(136, 1062, 2, 3, 1),
(137, 1101, 2, 3, 14),
(138, 332, 2, 4, 20),
(139, 333, 2, 4, 14),
(140, 370, 2, 4, 23),
(141, 1085, 3, 5, 1),
(142, 1080, 3, 1, 8),
(143, 1064, 3, 6, 14),
(144, 1068, 3, 2, 1),
(145, 335, 3, 3, 20),
(146, 371, 3, 3, 1),
(147, 1106, 3, 3, 8),
(148, 377, 3, 4, 1),
(149, 1089, 3, 4, 34),
(150, 1105, 3, 4, 8),
(151, 334, 4, 2, 14),
(152, 374, 4, 2, 20),
(153, 1074, 4, 2, 23),
(154, 1110, 4, 2, 8),
(155, 329, 4, 3, 14),
(156, 372, 4, 3, 34),
(157, 1090, 4, 3, 8),
(158, 1095, 4, 4, 16),
(159, 1111, 4, 4, 34),
(160, 1073, 5, 1, 22),
(161, 1121, 5, 1, 16),
(162, 330, 5, 1, 1),
(163, 376, 5, 6, 1),
(164, 1084, 5, 6, 20),
(165, 1112, 5, 6, 8),
(166, 378, 5, 13, 20),
(167, 1094, 5, 13, 1),
(168, 1122, 5, 15, 14),
(169, 882, 1, 5, 7),
(170, 1202, 1, 5, 6),
(171, 1158, 1, 6, 11),
(172, 1239, 1, 6, 7),
(173, 1149, 1, 2, 12),
(174, 267, 1, 7, 19),
(175, 1143, 1, 7, 6),
(176, 1169, 1, 3, 11),
(177, 1244, 1, 3, 7),
(178, 530, 1, 8, 11),
(179, 886, 1, 8, 7),
(180, 1191, 1, 8, 19),
(181, 1213, 1, 4, 12),
(182, 1174, 2, 5, 6),
(183, 1201, 2, 5, 11),
(184, 508, 2, 1, 12),
(185, 1132, 2, 1, 7),
(186, 1164, 2, 6, 11),
(187, 1190, 2, 6, 6),
(188, 536, 2, 2, 12),
(189, 1228, 2, 2, 7),
(190, 1249, 2, 2, 19),
(191, 535, 2, 7, 19),
(192, 1128, 2, 7, 11),
(193, 1217, 2, 7, 6),
(194, 1223, 2, 3, 12),
(195, 1245, 2, 3, 7),
(196, 1133, 2, 8, 7),
(197, 1176, 2, 8, 12),
(198, 514, 2, 4, 19),
(199, 1206, 3, 5, 7),
(200, 1159, 3, 1, 12),
(201, 1181, 3, 1, 11),
(202, 1229, 3, 6, 11),
(203, 1234, 3, 6, 19),
(204, 1238, 3, 2, 12),
(205, 520, 3, 7, 7),
(206, 1165, 3, 7, 12),
(207, 1175, 3, 7, 11),
(208, 513, 3, 3, 19),
(209, 1197, 3, 3, 6),
(210, 1240, 3, 8, 11),
(211, 1170, 3, 8, 7),
(212, 1207, 3, 4, 19),
(213, 264, 3, 4, 12),
(214, 1137, 3, 4, 6),
(215, 1160, 4, 1, 7),
(216, 1212, 4, 1, 11),
(217, 1235, 4, 1, 12),
(218, 1154, 4, 6, 11),
(219, 515, 4, 2, 12),
(220, 1127, 4, 2, 19),
(221, 1192, 4, 2, 6),
(222, 1153, 4, 7, 7),
(223, 529, 4, 3, 12),
(224, 881, 4, 3, 6),
(225, 1180, 4, 3, 19),
(226, 1186, 4, 3, 11),
(227, 509, 4, 8, 6),
(228, 519, 4, 4, 7),
(229, 531, 4, 4, 11),
(230, 1126, 4, 4, 12),
(231, 1224, 4, 4, 19),
(232, 524, 5, 5, 6),
(233, 540, 5, 1, 19),
(234, 877, 5, 1, 12),
(235, 1138, 5, 1, 7),
(236, 1320, 5, 1, 11),
(237, 1203, 5, 6, 6),
(238, 1208, 5, 6, 12),
(239, 1219, 5, 6, 19),
(240, 1222, 5, 6, 7),
(241, 1196, 5, 14, 6),
(242, 887, 5, 13, 19),
(243, 1142, 5, 13, 11),
(244, 1144, 5, 13, 12),
(245, 1233, 5, 13, 7),
(246, 525, 5, 15, 12),
(247, 1185, 5, 15, 6),
(248, 1218, 5, 15, 11),
(249, 546, 1, 9, 33),
(250, 1277, 1, 5, 5),
(251, 600, 1, 1, 17),
(252, 1251, 1, 1, 26),
(253, 1302, 1, 1, 27),
(254, 547, 1, 10, 30),
(255, 1345, 1, 10, 32),
(256, 1283, 1, 2, 27),
(257, 1308, 1, 2, 47),
(258, 1313, 1, 2, 5),
(259, 1293, 1, 11, 28),
(260, 425, 1, 3, 27),
(261, 429, 1, 3, 26),
(262, 430, 1, 3, 47),
(263, 625, 1, 3, 17),
(264, 1330, 1, 3, 5),
(265, 1254, 1, 12, 30),
(266, 1304, 1, 12, 29),
(267, 428, 1, 8, 47),
(268, 631, 1, 8, 27),
(269, 1270, 1, 8, 17),
(270, 1250, 1, 4, 26),
(271, 573, 2, 9, 32),
(272, 584, 2, 9, 33),
(273, 1341, 2, 5, 27),
(274, 562, 2, 5, 5),
(275, 609, 2, 5, 47),
(276, 578, 2, 1, 17),
(277, 594, 2, 6, 17),
(278, 1314, 2, 6, 5),
(279, 1297, 2, 10, 32),
(280, 352, 2, 2, 47),
(281, 1265, 2, 2, 26),
(282, 1335, 2, 2, 27),
(283, 1346, 2, 11, 29),
(284, 1352, 2, 7, 47),
(285, 583, 2, 7, 17),
(286, 1351, 2, 3, 27),
(287, 424, 2, 3, 5),
(288, 427, 2, 3, 26),
(289, 556, 2, 8, 5),
(290, 579, 2, 8, 27),
(291, 1298, 2, 8, 17),
(292, 567, 2, 4, 26),
(293, 1309, 3, 9, 29),
(294, 1331, 3, 9, 31),
(295, 572, 3, 5, 5),
(296, 1319, 3, 5, 17),
(297, 1303, 3, 1, 27),
(298, 1324, 3, 1, 47),
(299, 636, 3, 6, 5),
(300, 1261, 3, 10, 31),
(301, 355, 3, 2, 26),
(302, 604, 3, 2, 47),
(303, 1329, 3, 2, 27),
(304, 1347, 3, 2, 17),
(305, 589, 3, 7, 17),
(306, 1267, 3, 7, 47),
(307, 1276, 3, 7, 27),
(308, 1315, 3, 7, 26),
(309, 1281, 3, 3, 33),
(310, 1287, 3, 3, 5),
(311, 1260, 3, 12, 28),
(312, 431, 3, 8, 47),
(313, 611, 3, 8, 5),
(314, 1288, 3, 8, 26),
(315, 1336, 3, 8, 27),
(316, 577, 3, 4, 17),
(317, 545, 4, 9, 29),
(318, 627, 4, 9, 31),
(319, 541, 4, 5, 47),
(320, 615, 4, 5, 26),
(321, 1148, 4, 1, 5),
(322, 1272, 4, 1, 17),
(323, 568, 4, 6, 17),
(324, 1350, 4, 6, 47),
(325, 605, 4, 2, 27),
(326, 1325, 4, 2, 5),
(327, 1286, 4, 11, 30),
(328, 557, 4, 7, 5),
(329, 595, 4, 7, 26),
(330, 632, 4, 7, 17),
(331, 621, 4, 3, 47),
(332, 1334, 4, 3, 27),
(333, 593, 4, 8, 47),
(334, 620, 4, 8, 17),
(335, 551, 4, 4, 5),
(336, 1255, 4, 4, 27),
(337, 1282, 4, 4, 26),
(338, 426, 5, 5, 47),
(339, 616, 5, 5, 17),
(340, 610, 5, 1, 5),
(341, 1271, 5, 1, 27),
(342, 1292, 5, 1, 26),
(343, 1318, 5, 6, 17),
(344, 626, 5, 6, 27),
(345, 637, 5, 6, 26),
(346, 1256, 5, 6, 47),
(347, 1299, 5, 6, 5),
(348, 561, 5, 14, 26),
(349, 563, 5, 14, 27),
(350, 588, 5, 14, 5),
(351, 1266, 5, 14, 47),
(352, 599, 5, 13, 17),
(353, 1340, 5, 15, 26),
(354, 552, 5, 15, 5),
(355, 690, 1, 5, 25),
(356, 818, 1, 5, 35),
(357, 823, 1, 5, 10),
(358, 829, 1, 5, 18),
(359, 646, 1, 1, 2),
(360, 716, 1, 1, 24),
(361, 754, 1, 6, 18),
(362, 855, 1, 6, 35),
(363, 706, 1, 2, 2),
(364, 680, 1, 7, 24),
(365, 695, 1, 7, 25),
(366, 850, 1, 7, 10),
(367, 648, 1, 3, 35),
(368, 684, 1, 3, 2),
(369, 657, 1, 8, 35),
(370, 696, 1, 8, 25),
(371, 722, 1, 8, 24),
(372, 806, 1, 8, 10),
(373, 866, 2, 9, 28),
(374, 812, 2, 5, 18),
(375, 733, 2, 1, 2),
(376, 738, 2, 1, 24),
(377, 770, 2, 1, 35),
(378, 776, 2, 1, 10),
(379, 712, 2, 6, 10),
(380, 781, 2, 6, 2),
(381, 791, 2, 6, 18),
(382, 824, 2, 6, 35),
(383, 872, 2, 10, 29),
(384, 870, 2, 11, 28),
(385, 669, 2, 7, 18),
(386, 664, 2, 3, 25),
(387, 728, 2, 3, 10),
(388, 732, 2, 3, 35),
(389, 658, 2, 8, 24),
(390, 678, 2, 8, 25),
(391, 710, 2, 8, 35),
(392, 759, 2, 8, 2),
(393, 790, 2, 8, 18),
(394, 774, 2, 4, 10),
(395, 705, 3, 5, 24),
(396, 792, 3, 5, 2),
(397, 662, 3, 1, 18),
(398, 721, 3, 1, 35),
(399, 802, 3, 1, 10),
(400, 685, 3, 6, 35),
(401, 828, 3, 6, 18),
(402, 838, 3, 6, 10),
(403, 854, 3, 6, 2),
(404, 856, 3, 11, 36),
(405, 717, 3, 7, 35),
(406, 744, 3, 7, 10),
(407, 765, 3, 7, 25),
(408, 700, 3, 3, 24),
(409, 801, 3, 3, 2),
(410, 860, 3, 12, 36),
(411, 726, 3, 8, 18),
(412, 742, 3, 8, 25),
(413, 796, 3, 8, 2),
(414, 834, 3, 8, 35),
(415, 674, 4, 5, 35),
(416, 822, 4, 5, 18),
(417, 679, 4, 1, 10),
(418, 760, 4, 1, 2),
(419, 807, 4, 1, 25),
(420, 711, 4, 6, 2),
(421, 753, 4, 6, 25),
(422, 813, 4, 6, 18),
(423, 845, 4, 6, 35),
(424, 871, 4, 10, 29),
(425, 689, 4, 2, 10),
(426, 865, 4, 11, 28),
(427, 785, 4, 7, 2),
(428, 840, 4, 7, 25),
(429, 701, 4, 3, 35),
(430, 748, 4, 3, 24),
(431, 817, 4, 3, 10),
(432, 673, 4, 3, 18),
(433, 861, 4, 12, 36),
(434, 694, 4, 8, 25),
(435, 737, 4, 8, 24),
(436, 839, 4, 8, 18),
(437, 652, 4, 8, 2),
(438, 775, 4, 4, 4),
(439, 876, 5, 9, 29),
(440, 727, 5, 5, 10),
(441, 786, 5, 5, 18),
(442, 844, 5, 5, 24),
(443, 653, 5, 1, 35),
(444, 743, 5, 1, 25),
(445, 663, 5, 6, 35),
(446, 749, 5, 6, 18),
(447, 780, 5, 6, 2),
(448, 797, 5, 6, 24),
(449, 808, 5, 6, 10),
(450, 647, 5, 14, 24),
(451, 668, 5, 14, 4),
(452, 758, 5, 14, 2),
(453, 849, 5, 14, 35),
(454, 769, 5, 13, 10),
(455, 764, 5, 15, 25),
(456, 833, 5, 15, 35);

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE IF NOT EXISTS `ruang` (
`kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kapasitas` int(10) DEFAULT NULL,
  `jenis` enum('TEORI','LABORATORIUM') DEFAULT NULL,
  `kode_jurusan` int(5) NOT NULL,
  `lantai` int(3) NOT NULL,
  `id_ruang` varchar(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`kode`, `nama`, `kapasitas`, `jenis`, `kode_jurusan`, `lantai`, `id_ruang`) VALUES
(0, 'Acak', 0, NULL, 0, 1, 'R0'),
(1, 'Ruang 101', 50, 'TEORI', 2, 1, 'R1'),
(2, 'Ruang 102', 45, 'TEORI', 5, 1, 'R2'),
(3, 'Ruang 103', 40, 'TEORI', 1, 1, 'R3'),
(4, 'Ruang 105', 35, 'TEORI', 5, 1, 'R4'),
(5, 'Ruang 106', 45, 'TEORI', 4, 1, 'R5'),
(6, 'Ruang 107', 45, 'TEORI', 3, 1, 'R6'),
(7, 'Ruang 201', 50, 'TEORI', 3, 2, 'R7'),
(8, 'Ruang 202', 45, 'TEORI', 2, 2, 'R8'),
(9, 'Ruang 203', 40, 'TEORI', 1, 2, 'R9'),
(10, 'Ruang 206', 45, 'TEORI', 5, 2, 'R10'),
(11, 'Ruang 207', 45, 'TEORI', 3, 2, 'R11'),
(12, 'Ruang 208', 45, 'TEORI', 3, 2, 'R12'),
(13, 'Ruang 301', 50, 'TEORI', 1, 3, 'R13'),
(14, 'Ruang 302', 45, 'TEORI', 2, 3, 'R14'),
(15, 'Ruang 303', 50, 'TEORI', 1, 3, 'R15'),
(16, 'Ruang 304', 45, 'TEORI', 2, 3, 'R16'),
(17, 'Ruang 305', 45, 'TEORI', 4, 3, 'R17'),
(18, 'Ruang 306', 45, 'TEORI', 5, 3, 'R18'),
(19, 'Ruang 307', 45, 'TEORI', 3, 3, 'R19'),
(20, 'Ruang 308', 45, 'TEORI', 2, 3, 'R20'),
(21, 'Ruang 309', 50, 'TEORI', 1, 3, 'R21'),
(22, 'Dekanat 202', 40, 'TEORI', 2, 2, 'R22'),
(23, 'Dekanat 204', 40, 'TEORI', 2, 2, 'R23'),
(24, 'Dekanat 207', 40, 'TEORI', 5, 2, 'R24'),
(25, 'Dekanat 208', 40, 'TEORI', 5, 2, 'R25'),
(26, 'Ruang Seminar I', 45, 'TEORI', 4, 1, 'R26'),
(27, 'Ruang Seminar II', 45, 'TEORI', 4, 1, 'R27'),
(28, 'Lab. Fisika Dasar', 45, 'LABORATORIUM', 0, 1, 'R28'),
(29, 'Lab. Kimia Dasar', 45, 'LABORATORIUM', 0, 1, 'R29'),
(30, 'Lab. Kimia Fisik', 45, 'LABORATORIUM', 0, 1, 'R30'),
(31, 'Lab. Organik', 45, 'LABORATORIUM', 4, 1, 'R31'),
(32, 'Lab. Anorganik', 45, 'LABORATORIUM', 4, 1, 'R32'),
(33, 'Lab. Analitik', 45, 'LABORATORIUM', 4, 1, 'R33'),
(34, 'Lab. Kom Matematika', 20, 'LABORATORIUM', 2, 1, 'R34'),
(35, 'Audit Fisika', 50, 'TEORI', 5, 1, 'R35'),
(36, 'Lab. Elka', 45, 'LABORATORIUM', 5, 1, 'R36'),
(37, 'Lab. Multimedia', 50, 'LABORATORIUM', 1, 2, 'R37'),
(38, 'Lab. SIKOM', 35, 'LABORATORIUM', 1, 1, 'R38'),
(39, 'EDP', 35, 'TEORI', 1, 2, 'R39'),
(40, 'Lab. Zoologi', 0, 'LABORATORIUM', 3, 1, 'R40'),
(41, 'Lab. Botani', 0, 'LABORATORIUM', 3, 1, 'R41'),
(42, 'Lab. Ekologi', 0, 'LABORATORIUM', 3, 1, 'R42'),
(43, 'Lab. Genetika', 0, 'LABORATORIUM', 3, 1, 'R43'),
(44, 'Lab. Mikrobiologi', 0, 'LABORATORIUM', 3, 1, 'R44'),
(45, 'Lab. Riset', 0, 'LABORATORIUM', 3, 1, 'R45'),
(46, 'Lab. Mikroteknik', 0, 'LABORATORIUM', 3, 1, 'R46'),
(47, 'Ruang 205', 45, 'TEORI', 4, 2, 'R47');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
`kode` int(2) NOT NULL,
  `nama_semester` varchar(10) NOT NULL,
  `semester_tipe` int(10) NOT NULL,
  `id_semester` varchar(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `semester`
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
-- Table structure for table `semester_tipe`
--

CREATE TABLE IF NOT EXISTS `semester_tipe` (
`kode` int(2) NOT NULL,
  `tipe_semester` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `semester_tipe`
--

INSERT INTO `semester_tipe` (`kode`, `tipe_semester`) VALUES
(1, 'GANJIL'),
(2, 'GENAP');

-- --------------------------------------------------------

--
-- Table structure for table `status_asisten`
--

CREATE TABLE IF NOT EXISTS `status_asisten` (
`kode` int(5) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `status_asisten`
--

INSERT INTO `status_asisten` (`kode`, `status`) VALUES
(1, 'Normal'),
(2, 'Lansia'),
(3, 'Bumil'),
(4, 'Difabel');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademik`
--

CREATE TABLE IF NOT EXISTS `tahun_akademik` (
`kode` int(10) NOT NULL,
  `tahun` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`kode`, `tahun`) VALUES
(1, '2011-2012'),
(2, '2012-2013'),
(3, '2013-2014'),
(4, '2014-2015'),
(5, '2015-2016'),
(6, '2016-2017'),
(7, '2017-2018'),
(8, '2018-2019'),
(9, '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`kode` int(2) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`kode`, `email`, `password`, `nama`) VALUES
(1, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(4, 'alex@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'alex');

-- --------------------------------------------------------

--
-- Table structure for table `waktu_tidak_bersedia`
--

CREATE TABLE IF NOT EXISTS `waktu_tidak_bersedia` (
`kode` int(10) NOT NULL,
  `kode_asisten` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asisten`
--
ALTER TABLE `asisten`
 ADD PRIMARY KEY (`kode`), ADD KEY `asisten_ibfk_1` (`status_asisten`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jadwalpelajaran`
--
ALTER TABLE `jadwalpelajaran`
 ADD PRIMARY KEY (`kode`), ADD KEY `jadwalpelajaran_ibfk_1` (`kode_pengampu`), ADD KEY `kode_jam` (`kode_jam`), ADD KEY `kode_hari` (`kode_hari`), ADD KEY `kode_ruang` (`kode_ruang`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jam2`
--
ALTER TABLE `jam2`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
 ADD PRIMARY KEY (`kode`), ADD KEY `matapelajaran_ibfk_1` (`semester`), ADD KEY `matapelajaran_ibfk_2` (`kode_prodi`);

--
-- Indexes for table `pengampu`
--
ALTER TABLE `pengampu`
 ADD PRIMARY KEY (`kode`), ADD KEY `kode_mk` (`kode_mk`), ADD KEY `kode_asisten` (`kode_asisten`), ADD KEY `kelas` (`kelas`), ADD KEY `tahun_akademik` (`tahun_akademik`), ADD KEY `kode_prodi` (`kode_prodi`), ADD KEY `semester` (`semester`), ADD KEY `kode_ruang` (`kode_ruang`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
 ADD PRIMARY KEY (`kode`), ADD KEY `prodi_ibfk_1` (`kode_jurusan`);

--
-- Indexes for table `riwayat_penjadwalan`
--
ALTER TABLE `riwayat_penjadwalan`
 ADD PRIMARY KEY (`kode`), ADD KEY `riwayat_penjadwalan_ibfk_4` (`kode_pengampu`), ADD KEY `riwayat_penjadwalan_ibfk_3` (`kode_hari`), ADD KEY `riwayat_penjadwalan_ibfk_2` (`kode_jam`), ADD KEY `riwayat_penjadwalan_ibfk_1` (`kode_ruang`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
 ADD PRIMARY KEY (`kode`), ADD KEY `ruang_ibfk_1` (`kode_jurusan`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
 ADD PRIMARY KEY (`kode`), ADD KEY `semester_ibfk_1` (`semester_tipe`);

--
-- Indexes for table `semester_tipe`
--
ALTER TABLE `semester_tipe`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `status_asisten`
--
ALTER TABLE `status_asisten`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
 ADD PRIMARY KEY (`kode`), ADD KEY `waktu_tidak_bersedia_ibfk_2` (`kode_asisten`), ADD KEY `waktu_tidak_bersedia_ibfk_1` (`kode_hari`), ADD KEY `waktu_tidak_bersedia_ibfk_3` (`kode_jam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asisten`
--
ALTER TABLE `asisten`
MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jadwalpelajaran`
--
ALTER TABLE `jadwalpelajaran`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `jam2`
--
ALTER TABLE `jam2`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=398;
--
-- AUTO_INCREMENT for table `pengampu`
--
ALTER TABLE `pengampu`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1358;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `riwayat_penjadwalan`
--
ALTER TABLE `riwayat_penjadwalan`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=457;
--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `semester_tipe`
--
ALTER TABLE `semester_tipe`
MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status_asisten`
--
ALTER TABLE `status_asisten`
MODIFY `kode` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `asisten`
--
ALTER TABLE `asisten`
ADD CONSTRAINT `asisten_ibfk_1` FOREIGN KEY (`status_asisten`) REFERENCES `status_asisten` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwalpelajaran`
--
ALTER TABLE `jadwalpelajaran`
ADD CONSTRAINT `jadwalpelajaran_ibfk_1` FOREIGN KEY (`kode_pengampu`) REFERENCES `pengampu` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `jadwalpelajaran_ibfk_2` FOREIGN KEY (`kode_jam`) REFERENCES `jam2` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `jadwalpelajaran_ibfk_3` FOREIGN KEY (`kode_hari`) REFERENCES `hari` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `jadwalpelajaran_ibfk_4` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
ADD CONSTRAINT `matapelajaran_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `semester_tipe` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `matapelajaran_ibfk_2` FOREIGN KEY (`kode_prodi`) REFERENCES `prodi` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengampu`
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
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`kode_jurusan`) REFERENCES `jurusan` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat_penjadwalan`
--
ALTER TABLE `riwayat_penjadwalan`
ADD CONSTRAINT `riwayat_penjadwalan_ibfk_1` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `riwayat_penjadwalan_ibfk_2` FOREIGN KEY (`kode_jam`) REFERENCES `jam2` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `riwayat_penjadwalan_ibfk_3` FOREIGN KEY (`kode_hari`) REFERENCES `hari` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `riwayat_penjadwalan_ibfk_4` FOREIGN KEY (`kode_pengampu`) REFERENCES `pengampu` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ruang`
--
ALTER TABLE `ruang`
ADD CONSTRAINT `ruang_ibfk_1` FOREIGN KEY (`kode_jurusan`) REFERENCES `jurusan` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`semester_tipe`) REFERENCES `semester_tipe` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
ADD CONSTRAINT `waktu_tidak_bersedia_ibfk_1` FOREIGN KEY (`kode_hari`) REFERENCES `hari` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `waktu_tidak_bersedia_ibfk_2` FOREIGN KEY (`kode_asisten`) REFERENCES `asisten` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `waktu_tidak_bersedia_ibfk_3` FOREIGN KEY (`kode_jam`) REFERENCES `jam2` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
