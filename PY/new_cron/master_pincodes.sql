-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:02 PM
-- Server version: 5.7.18
-- PHP Version: 5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_mpokket`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_pincodes`
--

CREATE TABLE `master_pincodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_office` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pin_code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `city_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Taluk',
  `district_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` enum('CAT1','CAT2') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_pincodes`
--

INSERT INTO `master_pincodes` (`id`, `post_office`, `pin_code`, `city_name`, `district_name`, `state_name`, `category`) VALUES
(1, 'COSSIPORE PO', '700001', 'KOLKATA', 'KOLKATA', 'West Bengal', NULL),
(2, 'BIRATI', '700051', 'KOLKATA', 'N 24 PGS', 'WB', NULL),
(4, 'Ada B.O', '504293', 'Asifabad', 'Adilabad', 'MAHARASHTRA', NULL),
(5, 'Andugulpet B.O', '504231', 'Luxettipet', 'Adilabad', 'MAHARASHTRA', NULL),
(6, 'Annaram B.O', '504201', 'Chennur', 'Adilabad', 'MAHARASHTRA', NULL),
(7, 'Arli (T) B.O', '504312', 'Adilabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(8, 'Bambara B.O', '504295', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(9, 'Bangalpet B.O', '504106', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(10, 'Bansapalli B.O', '504306', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(11, 'Bejjur B.O', '504299', 'Sirpur (t)', 'Adilabad', 'ANDHRA PRADESH', NULL),
(12, 'Bellalbadi B.O', '504202', 'Khanapur', 'Adilabad', 'ANDHRA PRADESH', NULL),
(13, 'Bhainsa S.O (Adilabad)', '504103', 'Mudhole', 'Adilabad', 'ANDHRA PRADESH', NULL),
(14, 'Birvelli B.O', '504306', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(15, 'Burguda B.O', '504293', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(16, 'Chichdhari Khanapur B.O', '504346', 'Utnoor', 'Adilabad', 'ANDHRA PRADESH', NULL),
(17, 'Chintaguda B.O', '504296', 'Sirpur (t)', 'Adilabad', 'ANDHRA PRADESH', NULL),
(18, 'Coal Chemical Complex S.O', '504302', 'Mancherial', 'Adilabad', 'ANDHRA PRADESH', NULL),
(19, 'Dantanpalli B.O', '504311', 'Utnoor', 'Adilabad', 'ANDHRA PRADESH', NULL),
(20, 'Deepaiguda B.O', '504309', 'Adilabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(21, 'Dehgaon B.O', '504273', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(22, 'Dhaboli B.O', '504313', 'Utnoor', 'Adilabad', 'ANDHRA PRADESH', NULL),
(23, 'Dhannoor B.O', '504304', 'Boath', 'Adilabad', 'ANDHRA PRADESH', NULL),
(24, 'Dhorpalli B.O', '504299', 'Sirpur (t)', 'Adilabad', 'ANDHRA PRADESH', NULL),
(25, 'Dwarakapur B.O', '504272', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(26, 'Easgaon - V B.O', '504296', 'Kagaznagar', 'Adilabad', 'ANDHRA PRADESH', NULL),
(27, 'Gadapur B.O', '504209', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(28, 'Ginnedhari B.O', '504297', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(29, 'Girnoor B.O', '504307', 'Boath', 'Adilabad', 'ANDHRA PRADESH', NULL),
(30, 'Gudem B.O', '504299', 'Sirpur (t)', 'Adilabad', 'ANDHRA PRADESH', NULL),
(31, 'Hazipur B.O', '504207', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(32, 'Janakapur B.O', '504251', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(33, 'Jilleda B.O', '504219', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(34, 'Kadthal B.O', '504105', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(35, 'Kalwada B.O', '504273', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(36, 'Kanchevelli B.O', '504219', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(37, 'Kannepalli B.O', '504297', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(38, 'Kerameri B.O', '504293', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(39, 'Khairdatwa B.O', '504311', 'Utnoor', 'Adilabad', 'ANDHRA PRADESH', NULL),
(40, 'Khodad B.O', '504001', 'Adilabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(41, 'Kirgul B.O', '504101', 'Mudhole', 'Adilabad', 'ANDHRA PRADESH', NULL),
(42, 'Kistapur B.O', '504205', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(43, 'Kolur B.O', '504102', 'Mudhole', 'Adilabad', 'ANDHRA PRADESH', NULL),
(44, 'Kotapalli S.O', '504214', 'Chennur', 'Adilabad', 'ANDHRA PRADESH', NULL),
(45, 'Koutha (B) B.O', '504304', 'Boath', 'Adilabad', 'ANDHRA PRADESH', NULL),
(46, 'Kushnepalli B.O', '504219', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(47, 'Lingapur B.O', '504206', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(48, 'Maddikal B.O', '504204', 'Chennur', 'Adilabad', 'ANDHRA PRADESH', NULL),
(49, 'Mahalingi B.O', '504103', 'Mudhole', 'Adilabad', 'ANDHRA PRADESH', NULL),
(50, 'Mallapur B.O', '504106', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(51, 'Mamidighat B.O', '504204', 'Chennur', 'Adilabad', 'ANDHRA PRADESH', NULL),
(52, 'Mamidipalli B.O', '504206', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(53, 'Mamidipalli B.O', '504313', 'Utnoor', 'Adilabad', 'ANDHRA PRADESH', NULL),
(54, 'Mankapur B.O', '504311', 'Utnoor', 'Adilabad', 'ANDHRA PRADESH', NULL),
(55, 'Mujgi B.O', '504306', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(56, 'Munjampalli B.O', '504299', 'Sirpur (t)', 'Adilabad', 'ANDHRA PRADESH', NULL),
(57, 'Naseerabad B.O', '504204', 'Chennur', 'Adilabad', 'ANDHRA PRADESH', NULL),
(58, 'Neradigonda S.O', '504323', 'Boath', 'Adilabad', 'ANDHRA PRADESH', NULL),
(59, 'Parimandal B.O', '504310', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(60, 'Peechara B.O', '504105', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(61, 'Pembi B.O', '504203', 'NA', 'Adilabad', 'ANDHRA PRADESH', NULL),
(62, 'Ponnaram B.O', '504216', 'Chennur', 'Adilabad', 'ANDHRA PRADESH', NULL),
(63, 'Rampur B.O', '504306', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(64, 'Rampur B.O', '504307', 'Boath', 'Adilabad', 'ANDHRA PRADESH', NULL),
(65, 'Sawapur B.O', '504309', 'Adilabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(66, 'Soan S.O', '504105', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(67, 'Srirampur Colony S.O', '504303', 'Mancherial', 'Adilabad', 'ANDHRA PRADESH', NULL),
(68, 'Sunkli B.O', '504109', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(69, 'Surjapur B.O', '504203', 'NA', 'Adilabad', 'ANDHRA PRADESH', NULL),
(70, 'Tumpalli B.O', '504294', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(71, 'Vempalli B.O', '504209', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(72, 'Vengwapet B.O', '504110', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(73, 'Venkatapur B.O', '504206', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(74, 'Yedbid B.O', '504102', 'Mudhole', 'Adilabad', 'ANDHRA PRADESH', NULL),
(75, 'Aknepalli B.O', '504251', 'Luxettipet', 'Adilabad', 'ANDHRA PRADESH', NULL),
(76, 'Aloor B.O', '504110', 'Nirmal', 'Adilabad', 'ANDHRA PRADESH', NULL),
(77, 'Angarajpally B.O', '504201', 'Chennur', 'Adilabad', 'ANDHRA PRADESH', NULL),
(78, 'Ankoli B.O', '504001', 'Adilabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(79, 'Babasagar B.O', '504299', 'Sirpur(t)', 'Adilabad', 'ANDHRA PRADESH', NULL),
(80, 'Badankurthy B.O', '504203', 'NA', 'Adilabad', 'ANDHRA PRADESH', NULL),
(81, 'Bapur B.O', '504299', 'Sirpur (t)', 'Adilabad', 'ANDHRA PRADESH', NULL),
(82, 'Bareguda B.O', '504296', 'Asifabad', 'Adilabad', 'ANDHRA PRADESH', NULL),
(83, 'Khudarda B.O', '314021', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(84, 'Kundla Kalan B.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(85, 'Kupda B.O', '327026', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(86, 'Lilwani B.O', '327606', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(87, 'Maheshpura B.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(88, 'Mahudi B.O', '327606', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(89, 'Mewada B.O', '314001', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(90, 'Mudsal B.O', '327027', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(91, 'Munged B.O', '314022', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(92, 'Obla B.O', '327031', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(93, 'Obri S.O', '314401', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(94, 'Padardi Badi B.O', '314032', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(95, 'Padra B.O', '314024', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(96, 'Palaswani B.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(97, 'Palmavit B.O', '314025', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(98, 'Palpadar B.O', '314801', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(99, 'Panchawara B.O', '327032', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(100, 'Patan B.O', '327603', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(101, 'Pindarama B.O', '327034', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(102, 'Runjia B.O', '327023', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(103, 'Sabalpur B.O', '327801', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(104, 'Sagot B.O', '314022', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(105, 'Sagrod B.O', '327604', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(106, 'Sagwa B.O', '327606', 'NA', 'Banswara', 'RAJASTHAN', NULL),
(107, 'Sakani B.O', '314034', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(108, 'Samagarha B.O', '327022', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(109, 'Sarodia B.O', '327027', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(110, 'Savgarh B.O', '314034', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(111, 'Seethal B.O', '314403', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(112, 'Semaliya B.O', '314032', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(113, 'Sendola B.O', '314030', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(114, 'Shishod B.O', '314011', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(115, 'Sodalpur B.O', '327027', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(116, 'Talwara S.O', '327025', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(117, 'Teejwar B.O', '314001', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(118, 'Umbada B.O', '327022', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(119, 'Upergaon B.O', '314036', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(120, 'Wer B.O', '314001', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(121, 'Anandpuri S.O (Banswara)', '327031', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(122, 'Andheshwar B.O', '327602', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(123, 'Asela B.O', '314036', 'NA', 'Dungarpur', 'RAJASTHAN', NULL),
(124, 'Badgun B.O', '327026', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(125, 'Badwasa B.O', '327801', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(126, 'Balwara B.O', '314804', 'NA', 'Dungarpur', 'RAJASTHAN', NULL),
(127, 'Banswara H.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(128, 'Bareth B.O', '327031', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(129, 'Bawadi B.O', '314030', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(130, 'Bhatar B.O', '327034', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(131, 'Bodamali B.O', '314402', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(132, 'Bori B.O', '314804', 'NA', 'Dungarpur', 'RAJASTHAN', NULL),
(133, 'Cheekli Teja B.O', '327031', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(134, 'Daduka B.O', '327022', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(135, 'Dariyati B.O', '314406', 'NA', 'Dungarpur', 'RAJASTHAN', NULL),
(136, 'Dhangaon B.O', '314030', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(137, 'Dojapal B.O', '314037', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(138, 'Dookan B.O', '314406', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(139, 'Dungarpur H.O', '314001', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(140, 'Gada Moriya B.O', '314036', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(141, 'Galiana B.O', '314023', 'Aspur', 'Dungarpur', 'RAJASTHAN', NULL),
(142, 'Gamdi B.O', '314022', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(143, 'Gara Bejaniya B.O', '314029', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(144, 'Ger B.O', '314801', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(145, 'Handi B.O', '327601', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(146, 'Jethali B.O', '327027', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(147, 'Kherwara B.O', '314801', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(148, 'Kherwara Sulai B.O', '314036', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(149, 'Kopda B.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(150, 'Kotra Ranga B.O', '327801', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(151, 'Mahudi Maska B.O', '327602', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(152, 'Mal B.O', '314038', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(153, 'Malmatha B.O', '314801', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(154, 'Mandwa B.O', '314001', 'NA', 'Dungarpur', 'RAJASTHAN', NULL),
(155, 'Mathugamda B.O', '314001', 'NA', 'Dungarpur', 'RAJASTHAN', NULL),
(156, 'Mota Goan B.O', '327021', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(157, 'Nagria Panchola B.O', '314402', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(158, 'Narwali B.O', '327027', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(159, 'Nichala Ghantala B.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(160, 'Odwariya B.O', '314034', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(161, 'Pachlasa Chhota B.O', '314038', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(162, 'Pagara B.O', '314404', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(163, 'Pal Nithauwa B.O', '314022', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(164, 'Parda Itiwar B.O', '314021', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(165, 'Punali S.O', '314028', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(166, 'Rohaniya B.O', '327601', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(167, 'Rohaniya Laxman Singh B.O', '327602', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(168, 'Sajjan Garh S.O', '327602', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(169, 'Samaria B.O', '327604', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(170, 'Silohi B.O', '314026', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(171, 'Tajpur B.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(172, 'Talaiya B.O', '314801', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(173, 'Tambesara B.O', '327602', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(174, 'Tamtiya B.O', '314029', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(175, 'Tamtiya B.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(176, 'Thoorkipal B.O', '314034', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(177, 'Vakhatpura B.O', '327032', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(178, 'Valai B.O', '314022', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(179, 'Vassi B.O', '314036', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(180, 'Ador B.O', '327034', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(181, 'Amarthun B.O', '327023', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(182, 'Amja B.O', '327034', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(183, 'Antri S.O (Dungarpur)', '314037', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(184, 'Badi Saredi B.O', '327025', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(185, 'Badliya B.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(186, 'Bandela B.O', '314406', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(187, 'Banswara Prathvi Ganj S.O', '327001', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(188, 'Bera B.O', '314404', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(189, 'Bodigama B.O', '327604', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(190, 'Borigama Chhota B.O', '314038', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(191, 'Chaura Kalan B.O', '327602', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(192, 'Chordi B.O', '327601', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(193, 'Deosomnath B.O', '314034', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(194, 'Dhavri B.O', '314036', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(195, 'Duchiya Bada B.O', '314032', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(196, 'Dungra Kalan B.O', '327602', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(197, 'Galiakot S.O', '314026', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(198, 'Gangad Talai B.O', '327601', 'Banswara', 'Banswara', 'RAJASTHAN', NULL),
(199, 'Gardhuna B.O', '314011', 'Dungarpur', 'Dungarpur', 'RAJASTHAN', NULL),
(200, 'Chanserpur S.O', '721653', 'Tamluk', 'East Midnapore', 'WEST BENGAL', NULL),
(201, 'Dakshinchak B.O', '721654', 'Haldia', 'East Midnapore', 'WEST BENGAL', NULL),
(202, 'Dalpara S.O', '721167', 'Panskura', 'East Midnapore', 'WEST BENGAL', NULL),
(203, 'Debipur B.O', '721650', 'Reapara', 'East Midnapore', 'WEST BENGAL', NULL),
(204, 'Deriachak B.O', '721151', 'Panskura-i', 'East Midnapore', 'WEST BENGAL', NULL),
(205, 'Dumdun B.O', '721152', 'Panskura', 'East Midnapore', 'WEST BENGAL', NULL),
(206, 'Durgapur B.O', '721631', 'Nandigram', 'East Midnapore', 'WEST BENGAL', NULL),
(207, 'Dwariberia B.O', '721654', 'Sutahata', 'East Midnapore', 'WEST BENGAL', NULL),
(208, 'Garbari B.O', '721626', 'Kajlagarh', 'East Midnapore', 'WEST BENGAL', NULL),
(209, 'Gopinathpur B.O', '721633', 'Bhagawanpur', 'East Midnapore', 'WEST BENGAL', NULL),
(210, 'Hanubhunia B.O', '721625', 'Reapara', 'East Midnapore', 'WEST BENGAL', NULL),
(211, 'Jaigirchak B.O', '721644', 'Moyna', 'East Midnapore', 'WEST BENGAL', NULL),
(212, 'Jiakhali B.O', '721641', 'Panskura', 'East Midnapore', 'WEST BENGAL', NULL),
(213, 'Kapasaria B.O', '721628', 'Mahisadal', 'East Midnapore', 'WEST BENGAL', NULL),
(214, 'Kelomal S.O', '721627', 'Tamluk-i', 'East Midnapore', 'WEST BENGAL', NULL),
(215, 'Khanjanchak B.O', '721602', 'Haldiamunicipality', 'East Midnapore', 'WEST BENGAL', NULL),
(216, 'Kishorepur B.O', '721139', 'Panskura', 'East Midnapore', 'WEST BENGAL', NULL),
(217, 'Kismatbajkul S.O', '721655', 'Kajlagarh', 'East Midnapore', 'WEST BENGAL', NULL),
(218, 'Kolaghat S.O', '721134', 'Panskura-ii', 'East Midnapore', 'WEST BENGAL', NULL),
(219, 'Kulberia B.O', '721649', 'Tamluk', 'East Midnapore', 'WEST BENGAL', NULL),
(220, 'Lalpur B.O', '721601', 'Bhagwanpur', 'East Midnapore', 'WEST BENGAL', NULL),
(221, 'Madhusudanchak B.O', '721655', 'Kajlagarh', 'East Midnapore', 'WEST BENGAL', NULL),
(222, 'Mahisadal S.O', '721628', 'Mahisadal', 'East Midnapore', 'WEST BENGAL', NULL),
(223, 'Manuchak B.O', '721656', 'Nandigram', 'East Midnapore', 'WEST BENGAL', NULL),
(224, 'Monoharpur B.O', '721650', 'Reapara', 'East Midnapore', 'WEST BENGAL', NULL),
(225, 'Padumbasan S.O', '721636', 'Tamluk', 'East Midnapore', 'WEST BENGAL', NULL),
(226, 'Paschimnaichanpur B.O', '721642', 'Moyna', 'East Midnapore', 'WEST BENGAL', NULL),
(227, 'Paschimpatna B.O', '721659', 'Chandipur', 'East Midnapore', 'PUNJAB', NULL),
(228, 'Pratappur B.O', '721152', 'Panskura', 'East Midnapore', 'PUNJAB', NULL),
(229, 'Pulsita S.O', '721154', 'Panskura-ii', 'East Midnapore', 'Chandigarh', NULL),
(230, 'Purbadakshinmoyna B.O', '721629', 'Moyna', 'East Midnapore', 'Chandigarh', NULL),
(231, 'Rajarampur B.O', '721628', 'Mahisadal', 'East Midnapore', 'WEST BENGAL', NULL),
(232, 'Ratulia B.O', '721139', 'Panskura', 'East Midnapore', 'WEST BENGAL', NULL),
(234, 'Shibrampur B.O', '721650', 'Reapara', 'East Midnapore', 'WEST BENGAL', NULL),
(235, 'Shyamsundarpatna B.O', '721139', 'Panskura-i', 'East Midnapore', 'WEST BENGAL', NULL),
(236, 'Sudampur B.O', '721644', 'Moyna', 'East Midnapore', 'WEST BENGAL', NULL),
(237, 'Sulochanarambhadrapur B.O', '721651', 'Moyna', 'East Midnapore', 'WEST BENGAL', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_pincodes`
--
ALTER TABLE `master_pincodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_location` (`pin_code`,`post_office`,`city_name`,`district_name`,`state_name`),
  ADD KEY `city_name` (`city_name`),
  ADD KEY `state_name` (`state_name`),
  ADD KEY `district_name` (`district_name`),
  ADD KEY `post_office` (`post_office`),
  ADD KEY `pin_code` (`pin_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_pincodes`
--
ALTER TABLE `master_pincodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
