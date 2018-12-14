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
-- Table structure for table `master_degrees`
--

CREATE TABLE `master_degrees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `degree_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` enum('CAT1','CAT2') COLLATE utf8_unicode_ci NOT NULL,
  `is_new` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_degrees`
--

INSERT INTO `master_degrees` (`id`, `degree_name`, `category`, `is_new`) VALUES
(7, 'Doctor of Philosophy (Ph.D)', 'CAT1', 'N'),
(8, 'Bachelor Hotel Management and Catering Technology(B.H.M.C.T)', 'CAT1', 'N'),
(9, 'Bachelor Library Science(B.L.Sc)', 'CAT1', 'N'),
(10, 'Bachelor of Applied Sciences(B.A.S)', 'CAT1', 'N'),
(11, 'Bachelor of Architecture(B.Arch)', 'CAT1', 'N'),
(12, 'Bachelor of Arts Bachelor of Education(B.A. B.Ed)', 'CAT1', 'N'),
(13, 'Bachelor of Arts Bachelor of Law(B.A.LLB)', 'CAT1', 'N'),
(14, 'Bachelor of Arts(B.A)', 'CAT2', 'N'),
(15, 'Bachelor of Ayurvedic Medicine and Surgery(B.A.M.S)', 'CAT1', 'N'),
(16, 'Bachelor of Business Administration Bachelor of Law(B.B.A LL.B)', 'CAT2', 'N'),
(17, 'Bachelor of Business Administration(B.B.A)', 'CAT2', 'N'),
(18, 'Bachelor of Business Management(B.B.M)', 'CAT2', 'N'),
(19, 'Bachelor of Business Studies(B.B.S)', 'CAT2', 'N'),
(20, 'Bachelor of Commerce(B.Com)', 'CAT2', 'N'),
(21, 'Bachelor of Communication Journalism(B.C.J)', 'CAT2', 'N'),
(22, 'Bachelor of Computer Applications(B.C.A)', 'CAT2', 'N'),
(23, 'Bachelor of Computer Science(B.C.S)', 'CAT2', 'N'),
(24, 'Bachelor of Dental Surgery(B.D.S)', 'CAT2', 'N'),
(25, 'Bachelor of Design(B.Des)', 'CAT2', 'N'),
(26, 'Bachelor of education in Artificial Intelligence(B.Ed AI)', 'CAT2', 'N'),
(27, 'Bachelor of Education(B.Ed)', 'CAT2', 'N'),
(28, 'Bachelor of Electronic Science(B.E.S)', 'CAT2', 'N'),
(29, 'Bachelor of Elementary Education(B.EL.Ed)', 'CAT2', 'N'),
(30, 'Bachelor of Engineering(B.E)', 'CAT2', 'N'),
(31, 'Bachelor of Fashion Technology(B.F.Tech)', 'CAT2', 'N'),
(32, 'Bachelor of Financial Investment and Analysis(B.F.I.A)', 'CAT2', 'N'),
(33, 'Bachelor of Fine Arts(B.F.A)', 'CAT2', 'N'),
(34, 'Bachelor of Fishery Sciences(B.F.S)', '', 'N'),
(35, 'Bachelor of General Law(B.G.L)', '', 'N'),
(36, 'Bachelor of Homeopathic Medicine & Surgery(B.H.M.S)', '', 'N'),
(37, 'Bachelor of Hospitality and Tourism Management(B.H.T.M)', '', 'N'),
(38, 'Bachelor of Hotel Management(B.H.M)', '', 'N'),
(39, 'Bachelor of Information Systems Management(B.I.S.M)', '', 'N'),
(40, 'Bachelor of Labour Management(B.L.M)', '', 'N'),
(41, 'Bachelor of Law(LL.B)', '', 'N'),
(42, 'Bachelor of Laws(B.L)', '', 'N'),
(43, 'Bachelor of Library and Information Science(B.L.I.S)', '', 'N'),
(44, 'Bachelor of Literature(B.Lit)', '', 'N'),
(45, 'Bachelor of Medical Laboratory Technology(B.M.L.T)', '', 'N'),
(46, 'Bachelor of Medical Record Science(B.M.R.Sc)', '', 'N'),
(47, 'Bachelor of Medical Technology(B.M.T)', '', 'N'),
(48, 'Bachelor of Medicine Bachelor of Surgery(M.B.B.S)', '', 'N'),
(49, 'Bachelor of Mental Retardation(B.M.R)', '', 'N'),
(50, 'Bachelor of Naturopathy and Yogic Sciences(B.N.Y.Sc)', '', 'N'),
(51, 'Bachelor of Occupational Therapy(B.O.T)', '', 'N'),
(52, 'Bachelor of Occupational Therapy(B.O.Th)', '', 'N'),
(53, 'Bachelor of Optometry and Vision Science(B.Optom)', '', 'N'),
(54, 'Bachelor of Pharmacy(B.Pharma)', '', 'N'),
(55, 'Bachelor of Physical Education(B.P.E)', '', 'N'),
(56, 'Bachelor Of Physical Education(B.P.Ed)', '', 'N'),
(57, 'Bachelor of Physiotherapy(B.P.T)', '', 'N'),
(58, 'Bachelor of Public Relations(B.P.R)', '', 'N'),
(59, 'Bachelor of Science Bachelor of Education(B.Sc.B.Ed)', '', 'N'),
(60, 'Bachelor of Science Education(B.S.E)', '', 'N'),
(61, 'Bachelor of Science in Education(B.Sc.Ed)', '', 'N'),
(62, 'Bachelor of Science(B.S)', '', 'N'),
(63, 'Bachelor of Siddha Medical Sciences(B.S.M.S)', '', 'N'),
(64, 'Bachelor Of Social Work(B.S.W)', '', 'N'),
(65, 'Bachelor of Socio Legal Sciences Bachelor of Laws(B.S.L.LL.B)', '', 'N'),
(66, 'Bachelor of Speech Language & Audiology(B.S.L.A)', '', 'N'),
(67, 'Bachelor of Tourism Administration(B.T.A)', '', 'N'),
(68, 'Bachelor of Unani Medicine & Surgery(B.U.M.S)', '', 'N'),
(69, 'Bachelor of Unani Medicine & Surgery(Kamil e Tob o Jarahat)', '', 'N'),
(70, 'Bachelor of Veterinary Science(B.V.Sc)', '', 'N'),
(71, 'Bachelors of Technology(B.Tech)', '', 'N'),
(72, 'Basic Training Certificate(B.T.C)', '', 'N'),
(73, 'Behavioral Healthcare Education(B.H.Ed)', '', 'N'),
(74, 'Under Graduate Basic Training(U.G.B.T)', '', 'N'),
(75, 'Under Graduate Teacher Training(U.G.T.T)', '', 'N'),
(76, 'Under Graduate Training(U.G.T)', '', 'N'),
(77, 'Doctor of Medicine Unani(Mahir e Tibb)', '', 'N'),
(78, 'Doctor of Medicine(M.D)', '', 'N'),
(79, 'Executive Fellow Program In Management(E.F.P.M)', '', 'N'),
(80, 'Executive Management Programme(E.M.P)', '', 'N'),
(81, 'Fellow Programme in Management(F.P.M)', '', 'N'),
(82, 'Management Development Programme(M.D.P)', '', 'N'),
(83, 'Master of Architecture(M.Arch)', '', 'N'),
(84, 'Master of Arts in Management(M.A.M)', '', 'N'),
(85, 'Master of Arts in Personal Management(M.A.P.M)', '', 'N'),
(86, 'Master of Arts in Theatre & Television(M.A.T.T)', '', 'N'),
(87, 'Master of Arts(M.A)', '', 'N'),
(88, 'Master of Audiology & Speech Language Pathology(M.A.S.L.P)', '', 'N'),
(89, 'Master of Business Administration(M.B.A)', '', 'N'),
(90, 'Master of Business Economics(M.B.E)', '', 'N'),
(91, 'Master of Business Laws(M.B.L)', '', 'N'),
(92, 'Master of Business Management(M.B.M)', '', 'N'),
(93, 'Master of Business Studies(M.B.S)', '', 'N'),
(94, 'Master of Chirurgical(M.Ch)', '', 'N'),
(95, 'Master of Commerce(M.Com)', '', 'N'),
(96, 'Master of Communication & Journalism(M.C.J)', '', 'N'),
(97, 'Master of Comparative Laws(M.C.L)', '', 'N'),
(98, 'Master of Computer Applications(M.C.A)', '', 'N'),
(99, 'Master of Computer Management(M.C.M)', '', 'N'),
(100, 'Master of Corporate Secretaryship(M.C.S)', '', 'N'),
(101, 'Master of Dental Surgery(M.D.S)', '', 'N'),
(102, 'Master of Education(M.Ed)', '', 'N'),
(103, 'Master of Engineering(M.E)', '', 'N'),
(104, 'Master of Film Management(M.F.M)', '', 'N'),
(105, 'Master of Finance & Control(M.F.C)', '', 'N'),
(106, 'Master of Financial Services(M.F.S)', '', 'N'),
(107, 'Master of Fine Arts(M.F.A)', '', 'N'),
(108, 'Master of Fishery Sciences(M.F.Sc)', '', 'N'),
(109, 'Master of Foreign Trade(M.F.T)', '', 'N'),
(110, 'Master Of Health Science(M.H.Sc)', '', 'N'),
(111, 'Master of Hospital Administration(M.H.A)', '', 'N'),
(112, 'Master of Hospitality & Hotel Management(M.H.H.M)', '', 'N'),
(113, 'Master of Hospitality Management(M.H.M)', '', 'N'),
(114, 'Master of Human Resource Management(M.H.R.M)', '', 'N'),
(115, 'Master of Industrial Relation and Personal Management(MIR and PM)', '', 'N'),
(116, 'Master of Information Management(M.I.M)', '', 'N'),
(119, 'Master of International Business(M.I.B)', '', 'N'),
(120, 'Master of Journalism(M.J)', '', 'N'),
(121, 'Master of Labour Management(M.L.M)', '', 'N'),
(122, 'Master of Law(LL.M)', '', 'N'),
(123, 'Master of Laws(M.L)', '', 'N'),
(124, 'Master of Library and Information Science(M.L.I.Sc)', '', 'N'),
(125, 'Master of Library Science(M.L.Sc)', '', 'N'),
(126, 'Master of Management Program(M.M.P)', '', 'N'),
(127, 'Master of Management Studies(M.M.S)', '', 'N'),
(128, 'Master of Marketing Management(M.M.M)', '', 'N'),
(129, 'Master of Occupational Theraphy(M.O.T)', '', 'N'),
(130, 'Master of Performance Management(M.P.M)', '', 'N'),
(131, 'Master of Performing Arts(M.P.A)', '', 'N'),
(132, 'Master of Personal Management and Industrial Relation(MPM and IR)', '', 'N'),
(133, 'Master of Personnel Management(MPM)', '', 'N'),
(134, 'Master of Pharmacy(M.Pharma)', '', 'N'),
(135, 'Master of Philosophy(M.Phil)', '', 'N'),
(136, 'Master Of Physical Education(M.P.Ed)', '', 'N'),
(137, 'Master of Physiotheraphy(M.P.T)', '', 'N'),
(138, 'Master of Psychiatric Epidemiology(M.P.E)', '', 'N'),
(139, 'Master of Public Health(M.P.H)', '', 'N'),
(140, 'Master of Science(BOTANY)', '', 'N'),
(141, 'Master of Science(M.Sc)', '', 'N'),
(142, 'Master of Social Dynamics(M.S.D)', '', 'N'),
(143, 'Master of Social Work(M.S.W)', '', 'N'),
(144, 'Master of Technology(M.Tech)', '', 'N'),
(145, 'Master of Tourism Administrations(M.T.A)', '', 'N'),
(146, 'Master of Tourism Management(M.T.M)', '', 'N'),
(147, 'Master of Veterinary Science(M.V.Sc)', '', 'N'),
(148, 'Masters of Hospitality and Tourism Management(M.H.T.M)', '', 'N'),
(149, 'Masters of Public Systems Management(M.P.S.M)', '', 'N'),
(150, 'Masters Programme in International Business(M.P.I.B)', '', 'N'),
(151, 'Masters Programme In Sports Physiotheraphy(M.S.P.T)', '', 'N'),
(152, 'PG Diploma - Adult Continuing Education', '', 'N'),
(153, 'PG Diploma - Adult Education & Development', '', 'N'),
(154, 'PG Diploma - Higher Education', '', 'N'),
(155, 'PG Diploma - Lmottomg & Hoisery Technology', '', 'N'),
(156, 'PG Diploma - Pgdece', '', 'N'),
(157, 'PG Diploma - Pgdped', '', 'N'),
(158, 'PG Diploma - Pgdte', '', 'N'),
(159, 'PG Diploma - Population Education', '', 'N'),
(160, 'PG Diploma - School Administration', '', 'N'),
(161, 'PG Diploma - Womens Studies', '', 'N'),
(162, 'Diploma - Pre-Primary Teacher Training Education', '', 'N'),
(163, 'Diploma - Pre-School Education', '', 'N'),
(164, 'U.G.D.P.Ed - Under Graduate Diploma in Physical Education', '', 'N'),
(165, 'Chartered Accountancy', '', 'N'),
(166, 'Company Secretary', '', 'N'),
(167, 'Actuary', '', 'N'),
(168, 'Basic School Training Certificate (B.S.T.C)', '', 'N'),
(169, 'Certificate in Education (C.Ed)', '', 'N'),
(170, 'Certificate In Physical Education (C.P.Ed)', '', 'N'),
(171, 'Certificate Training (C.T)', '', 'N'),
(172, 'Certification - 2D & 3D Animation', '', 'N'),
(173, 'Certification - Camera and Photography', '', 'N'),
(174, 'Certification - Family Education', '', 'N'),
(175, 'Certification - Fashion Modelling and Acting', '', 'N'),
(176, 'Certification - Fire Works And Safety Matches', '', 'N'),
(177, 'Certification - Floriculture Technology', '', 'N'),
(178, 'Certification - Script Writing', '', 'N'),
(179, 'Certification - Wedding Planning', '', 'N'),
(180, 'Elementary Teacher Education (E.T.E)', '', 'N'),
(181, 'Education Training Programme (E.T.P)', '', 'N'),
(182, 'Elementary Teacher Training (E.T.T)', '', 'N'),
(183, 'Polymer Technology Training Course (P.T.T.C)', '', 'N'),
(184, 'Senior Teaching Certificate (S.T.C)', '', 'N'),
(185, 'Teachers Certificate Course (T.C)', '', 'N'),
(186, 'Telegu Pandits Training Course (T.P.T)', '', 'N'),
(187, 'Teachers Training Certificate (T.T.C)', '', 'N'),
(188, 'Graduate Basic Training Course (G.B.T.C)', '', 'N'),
(189, 'Hindi Pandit Training (H.P.T)', '', 'N'),
(190, 'Junior teacher\'s Training Certificate (J.T.T.C)', '', 'N'),
(191, 'Native Teacher Education Program (N.T.E.P)', '', 'N'),
(192, 'Nursery Teacher Training (N.T.T)', '', 'N'),
(193, 'Patient Care Technician (P.C.T)', '', 'N'),
(194, 'Pre-Primary Teacher Training Course (P.P.T.C)', '', 'N'),
(195, 'Pre-Service Teacher Education (P.S.T.E)', '', 'N'),
(196, 'Primary Teachers Training Certificate (P.T.T)', '', 'N'),
(199, 'Dimploma in Technical Education (C.P.Ed)', 'CAT1', 'N'),
(200, 't', 'CAT1', 'Y'),
(201, 'test90', 'CAT2', 'N'),
(202, 'TEST BSC', 'CAT1', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_degrees`
--
ALTER TABLE `master_degrees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_degree` (`degree_name`),
  ADD KEY `is_new` (`is_new`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_degrees`
--
ALTER TABLE `master_degrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
