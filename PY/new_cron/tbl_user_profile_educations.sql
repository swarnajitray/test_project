-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:01 PM
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
-- Table structure for table `tbl_user_profile_educations`
--

CREATE TABLE `tbl_user_profile_educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Only single active data for each kyc type for each user, inactive ones are history',
  `fk_degree_type_id` bigint(20) UNSIGNED NOT NULL,
  `fk_degree_id` bigint(20) UNSIGNED NOT NULL,
  `fk_field_of_study_id` bigint(20) UNSIGNED NOT NULL,
  `fk_attendence_id` bigint(20) NOT NULL,
  `month_of_joining` int(10) UNSIGNED DEFAULT NULL,
  `year_of_joining` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `month_of_graduation` int(10) UNSIGNED DEFAULT NULL,
  `year_of_graduation` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_profile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->No, 1->Yes',
  `fk_college_id` bigint(20) UNSIGNED NOT NULL,
  `name_of_institution` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fk_pincode_id` bigint(20) UNSIGNED NOT NULL,
  `work_status` enum('P','F','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N' COMMENT 'P->Part time, F->Full time, N- Not employed',
  `grades_marks` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `marks` float UNSIGNED NOT NULL,
  `out_of_range` int(10) UNSIGNED NOT NULL,
  `is_file_uploaded` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s3_media_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addition_datetime` timestamp NULL DEFAULT NULL COMMENT 'Copied Date',
  `fk_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_notes` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_profile_educations`
--

INSERT INTO `tbl_user_profile_educations` (`id`, `fk_user_id`, `fk_degree_type_id`, `fk_degree_id`, `fk_field_of_study_id`, `fk_attendence_id`, `month_of_joining`, `year_of_joining`, `month_of_graduation`, `year_of_graduation`, `show_in_profile`, `fk_college_id`, `name_of_institution`, `fk_pincode_id`, `work_status`, `grades_marks`, `marks`, `out_of_range`, `is_file_uploaded`, `file_name`, `s3_media_version`, `addition_datetime`, `fk_admin_id`, `admin_notes`, `approved_timestamp`) VALUES
(3, 11, 3, 201, 46, 0, 0, '2014', NULL, '2019', 1, 721152, 'Dream Institute of Technology 209 ', 721152, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-08 07:15:39', 4, NULL, '2016-12-08 07:39:26'),
(4, 57, 5, 202, 42, 0, 0, '2015', NULL, '2017', 1, 721154, 'ST XAVIERS COLLEGE ', 721154, 'P', '0', 0, 0, 0, NULL, NULL, '2016-12-10 00:04:13', 4, NULL, '2016-12-10 00:12:16'),
(5, 1, 4, 10, 1, 0, 2, '2011', 2, '2013', 1, 72162942, 'Lady Brabourne College ', 230, 'N', '80', 8, 10, 1, '1481528011.jpg', 'Z88E6UWoZKyxaCROTawsVrznr_mmeH6W', '2016-12-12 02:03:00', 1, NULL, '2016-12-12 02:06:45'),
(6, 73, 5, 204, 43, 0, 0, '2015', NULL, '2017', 1, 1054, 'C B R Degree College, Kethanakonda ', 33027, 'N', '88.5', 8.85, 10, 0, NULL, NULL, '2016-12-11 14:26:56', 4, NULL, '2016-12-12 07:36:48'),
(7, 93, 4, 205, 5, 0, 0, '2015', NULL, '2018', 1, 54983128598, 'College of Nursing, Pondicherry Institute of Medical Sciences ', 2, 'N', '55', 110, 200, 0, NULL, NULL, '2016-12-13 12:38:45', 4, NULL, '2016-12-13 23:57:11'),
(8, 36, 3, 206, 42, 0, 0, '2014', NULL, '2017', 1, 54983128598, 'College of Nursing, Pondicherry Institute of Medical Sciences ', 2, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-14 00:38:00', 4, NULL, '2016-12-14 00:44:36'),
(9, 86, 3, 206, 49, 0, 0, '2014', NULL, '2017', 1, 0, 'clg tset', 1, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-14 00:56:28', 4, NULL, '2016-12-14 01:06:02'),
(10, 16, 3, 30, 46, 0, 0, '2012', NULL, '2017', 1, 0, 'clg tset', 1, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-14 07:48:09', 4, NULL, '2016-12-14 08:24:41'),
(11, 96, 4, 30, 16, 0, 0, '2015', NULL, '2019', 1, 0, 'clg tset', 1, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-14 09:35:54', 4, NULL, '2016-12-14 09:48:28'),
(12, 105, 5, 209, 4, 0, 0, '2016', NULL, '2018', 1, 0, 'clg tset', 1, 'P', '0', 0, 0, 0, NULL, NULL, '2016-12-15 22:44:23', 4, NULL, '2016-12-15 23:29:52'),
(13, 82, 4, 9, 16, 0, 0, '2007', NULL, '2011', 1, 0, 'clg tset', 1, 'F', '93.75', 750, 800, 0, NULL, NULL, '2016-12-16 01:04:55', 1, NULL, '2016-12-16 01:09:56'),
(14, 106, 3, 214, 20, 0, 0, '2014', NULL, '2017', 1, 38104, 'H S D LAW MAHAVIDYALAYA MIRZAPUR ', 52250, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-16 01:44:14', 4, NULL, '2016-12-16 01:52:59'),
(16, 89, 3, 20, 20, 0, 0, '2013', NULL, '2017', 1, 5279, 'St. Xavier\'s College ', 146876, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-16 03:05:48', 4, NULL, '2016-12-16 11:30:34'),
(17, 62, 3, 205, 41, 0, 0, '2016', NULL, '2019', 1, 40256, 'Asutosh College ', 146847, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-15 22:47:51', 4, NULL, '2016-12-17 02:12:49'),
(18, 109, 5, 204, 55, 0, 0, '2015', NULL, '2015', 1, 42309, 'undefined', 33027, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-17 08:00:57', 4, NULL, '2016-12-17 08:35:10'),
(19, 113, 3, 216, 45, 0, 0, '2015', NULL, '2018', 1, 55007, 'Christ university banga', 52250, 'P', '0', 0, 0, 0, NULL, NULL, '2016-12-17 05:11:50', 4, NULL, '2016-12-17 05:15:48'),
(20, 60, 3, 205, 54, 0, 0, '2016', NULL, '2019', 1, 40256, 'Asutosh College ', 146847, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-17 04:49:04', 4, NULL, '2016-12-17 05:36:32'),
(21, 116, 3, 14, 45, 0, 0, '2013', NULL, '2016', 1, 4811, 'Hans Raj College ', 32541, 'N', '76.3076923', 1984, 2600, 0, NULL, NULL, '2016-12-17 07:19:38', 4, NULL, '2016-12-17 08:32:17'),
(22, 234, 3, 201, 31, 0, 0, '2013', 2, '2017', 1, 9780, 'The Oxford College of Education, 1st Phase, J.P. N', 52307, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-19 03:55:19', 4, NULL, '2016-12-19 08:04:57'),
(23, 126, 3, 201, 31, 0, 0, '2013', NULL, '2017', 1, 9780, 'The Oxford College of Education, 1st Phase, J.P. N', 52307, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-19 08:34:09', 4, NULL, '2016-12-19 08:44:25'),
(24, 65, 5, 204, 20, 0, 0, '2015', NULL, '2017', 1, 42309, 'SHANTI BUSINESS SCHOOL ', 33027, 'F', '0', 0, 0, 0, NULL, NULL, '2016-12-19 10:23:06', 4, NULL, '2016-12-19 10:35:17'),
(25, 127, 3, 201, 31, 0, 0, '2014', NULL, '2018', 1, 9780, 'undefined', 52307, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-21 02:30:15', 4, NULL, '2016-12-21 06:42:11'),
(26, 132, 3, 62, 57, 0, 0, '2016', NULL, '2019', 1, 5279, 'St. Xavier\'s College ', 146876, 'P', '0', 0, 0, 0, NULL, NULL, '2016-12-19 12:23:42', 4, NULL, '2016-12-19 12:26:06'),
(27, 9, 4, 85, 16, 0, 0, '2007', NULL, '2010', 1, 40292, 'Lady Brabourne College ', 146908, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-20 02:04:56', 1, NULL, '2016-12-20 02:08:18'),
(28, 138, 4, 229, 59, 0, 0, '2015', NULL, '2018', 1, 9001, 'St. Joseph College ', 52257, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-20 04:51:05', 3, NULL, '2016-12-20 07:28:24'),
(29, 129, 7, 109, 45, 0, 0, '2014', NULL, '2017', 1, 12, 'Jadavpur University', 4, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-19 13:01:27', 4, NULL, '2016-12-20 07:44:23'),
(30, 104, 3, 61, 57, 0, 0, '2016', NULL, '2019', 1, 3121, 'ST XAVIERS COLLEGE ', 146776, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-19 12:52:36', 4, NULL, '2016-12-20 07:50:32'),
(31, 145, 3, 20, 20, 0, 0, '2016', NULL, '2019', 1, 40335, 'St. Xavier\'s College ', 146869, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-21 03:28:00', 4, NULL, '2016-12-21 03:48:29'),
(32, 146, 4, 230, 60, 0, 0, '2016', NULL, '2020', 1, 0, 'clg tset', 1, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-21 06:27:08', 4, NULL, '2016-12-21 06:40:31'),
(33, 150, 3, 214, 61, 0, 0, '2015', NULL, '2018', 1, 22387, 'St Joseph College ', 52257, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-22 05:11:23', 4, NULL, '2016-12-22 07:31:38'),
(34, 156, 5, 231, 62, 0, 0, '2015', NULL, '2017', 1, 40272, 'Dinabandhu Andrews College ', 146808, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-23 08:49:59', 4, NULL, '2016-12-23 08:55:07'),
(35, 10, 5, 87, 63, 0, 0, '2015', NULL, '2017', 1, 40321, 'Scottish Church College ', 146939, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-23 23:30:55', 4, NULL, '2016-12-23 23:59:49'),
(36, 169, 5, 204, 20, 0, 0, '2015', NULL, '2017', 1, 42309, 'SHANTI BUSINESS SCHOOL ', 33027, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-25 07:17:51', 4, NULL, '2016-12-25 07:24:02'),
(37, 168, 5, 152, 20, 0, 0, '2015', NULL, '2017', 1, 42309, 'SHANTI BUSINESS SCHOOL ', 33027, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-25 07:20:31', 4, NULL, '2016-12-25 07:25:23'),
(38, 167, 5, 152, 55, 0, 0, '2015', NULL, '2017', 1, 42309, 'SHANTI BUSINESS SCHOOL ', 33027, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-25 07:18:22', 4, NULL, '2016-12-25 07:26:20'),
(39, 166, 5, 204, 43, 0, 0, '2015', NULL, '2017', 1, 42309, 'SHANTI BUSINESS SCHOOL ', 33027, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-25 07:18:38', 4, NULL, '2016-12-25 07:28:08'),
(40, 153, 3, 73, 64, 0, 0, '2013', NULL, '2017', 1, 9780, 'The Oxford College of Education, 1st Phase, J.P. N', 52307, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-24 08:19:29', 3, NULL, '2016-12-25 11:04:48'),
(41, 37, 11, 201, 46, 0, 0, '2013', NULL, '2017', 1, 9780, 'The Oxford College of Education, 1st Phase, J.P. N', 52307, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-19 04:08:37', 3, NULL, '2016-12-25 11:37:22'),
(42, 114, 5, 217, 43, 0, 0, '2014', NULL, '2016', 1, 49284, 'SINHGAD INSTITUTE OF MANAGEMENT & COMPUTER APPLICA', 86183, 'F', '0', 0, 0, 0, NULL, NULL, '2016-12-17 05:18:59', 2, NULL, '2016-12-27 00:48:18'),
(43, 172, 5, 232, 65, 0, 0, '2012', NULL, '2015', 1, 42309, 'SHANTI BUSINESS SCHOOL ', 33027, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-26 13:24:00', 4, NULL, '2016-12-27 13:39:10'),
(44, 195, 4, 204, 20, 0, 0, '2015', NULL, '2017', 1, 42309, 'SHANTI BUSINESS SCHOOL ', 33027, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-28 12:19:07', 4, NULL, '2016-12-28 12:27:06'),
(45, 178, 5, 89, 43, 0, 0, '2014', NULL, '2016', 1, 55010, 'Sikkim manual university', 52249, 'F', '0', 0, 0, 0, NULL, NULL, '2016-12-27 04:22:01', 3, NULL, '2016-12-29 03:01:22'),
(46, 193, 5, 204, 43, 0, 0, '2015', NULL, '2017', 1, 55011, 'K. J. Institute of Management Studies and Research', 81497, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-28 13:26:58', 3, NULL, '2016-12-29 04:15:43'),
(47, 90, 7, 165, 66, 0, 0, '2012', 5, '2018', 1, 42235, 'INSTITUTE OF CHARTERED ACOUNTANTS OF INDIA ', 49216, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-28 02:26:21', 3, NULL, '2016-12-29 04:40:07'),
(48, 99, 4, 207, 22, 0, 0, '2012', 10, '2017', 0, 40274, 'Goenka College of Commerce & Business Administrati', 146975, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-15 05:46:13', 3, NULL, '2016-12-29 04:42:34'),
(49, 34, 3, 10, 6, 0, 0, '2014', NULL, '2018', 1, 3121, 'ST XAVIERS COLLEGE ', 146888, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-15 23:02:06', 3, NULL, '2016-12-30 08:39:21'),
(50, 199, 5, 204, 20, 0, 0, '2016', NULL, '2018', 1, 42309, 'SHANTI BUSINESS SCHOOL ', 33027, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-30 04:17:11', 4, NULL, '2016-12-30 11:55:34'),
(51, 100, 4, 30, 16, 0, 0, '2013', NULL, '2017', 1, 55012, 'KS school of engineering and management', 52261, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-15 05:54:55', 3, NULL, '2017-01-02 09:01:54'),
(52, 171, 4, 232, 67, 0, 0, '2016', NULL, '2018', 0, 42309, 'SHANTI BUSINESS SCHOOL ', 33027, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-29 16:11:59', 1, NULL, '2017-01-09 04:49:53'),
(53, 4, 7, 30, 1, 0, 0, '2012', NULL, '2018', 0, 4, 'Asutosh College ', 1, 'P', '0', 0, 0, 0, NULL, NULL, '2016-12-08 23:19:49', 1, 'sdfsddf', '2017-01-24 07:12:01'),
(54, 29, 4, 233, 7, 0, 0, '2013', NULL, '2016', 1, 42310, 'SHETH CHIMANLAL TEST', 37669, 'N', '', 0, 0, 0, NULL, NULL, '2016-12-30 12:50:28', NULL, NULL, '2017-02-16 07:09:33'),
(55, 206, 3, 10, 4, 0, 5, '2004', 10, '2007', 1, 40256, 'Asutosh College ', 146756, 'F', '0', 0, 0, 0, NULL, NULL, '2016-12-15 20:38:17', 1, 'tert', '2017-04-10 22:01:27'),
(58, 2, 7, 14, 1, 0, 7, '2016', 11, '2018', 1, 5, 'Mahatma Gandhi Govt. College (Id: C-6547)eee', 2, 'N', '80', 80, 100, 0, NULL, NULL, '2018-11-08 05:32:31', 1, 'null', '2018-11-08 01:53:32'),
(59, 67, 3, 14, 1, 0, 7, '2016', 6, '2019', 1, 55015, 'njhgjg', 1, 'N', '0', 0, 0, 0, NULL, NULL, '2016-12-09 23:06:12', 1, 'sda', '2017-08-30 06:29:01'),
(60, 162, 5, 83, 1, 0, 3, '2016', 3, '2020', 1, 40702, 'Kolkata Teacher\'s Training College ', 1, 'P', '84', 84, 100, 0, NULL, NULL, '2018-02-05 10:16:53', 1, 'null', '2018-02-08 00:13:33'),
(61, 170, 3, 9, 3, 0, 3, '2014', 3, '2018', 1, 446, 'Benaiah Christian College of Education ', 1, 'N', '82', 82, 100, 0, NULL, NULL, '2018-02-07 12:14:31', 1, 'null', '2018-02-08 01:55:56'),
(80, 3, 3, 9, 1, 0, 3, '1988', 3, '1999', 1, 38104, 'H S D LAW MAHAVIDYALAYA MIRZAPUR ', 1, 'N', '80', 8, 10, 1, '1481867303.jpg', '20wPwXMW_5CjZlcb4YKtx1xkCznf6Y_C', '2018-05-22 12:57:56', 1, 'null', '2018-05-22 07:35:55'),
(82, 239, 3, 7, 0, 0, 2, '2017', 1, '2023', 1, 54983124628, 'Sikkim Manipal University5', 2, 'P', '80', 8, 10, 0, NULL, NULL, '2018-05-29 12:38:14', 1, 'null', '2018-05-29 07:09:01'),
(83, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 3, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, 'xyz', NULL, 1, 'abc', '2018-09-12 12:31:41'),
(84, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 3, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:36:41'),
(85, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:38:36'),
(86, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:40:37'),
(87, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:41:28'),
(88, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:41:51'),
(89, 12, 11, 10, 9, 0, 8, '2013', 7, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:46:40'),
(90, 12, 11, 10, 9, 0, 8, '2013', 7, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:50:53'),
(91, 12, 11, 10, 9, 0, 8, '2013', 7, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:51:00'),
(92, 12, 11, 10, 9, 0, 8, '2013', 7, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:51:32'),
(93, 12, 11, 10, 9, 0, 8, '2013', 7, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:54:27'),
(94, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 12:56:00'),
(95, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 13:13:19'),
(96, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 13:14:07'),
(97, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 13:15:23'),
(98, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-12 13:16:40'),
(99, 3, 2, 1, 9, 0, 8, '2013', 6, '2017', 0, 12345, 'cemk', 712245, 'N', '7.2', 50, 2, 1, '99.jpeg', NULL, NULL, NULL, NULL, '2018-09-12 13:17:12'),
(100, 2350, 3, 9, 3, 0, 2, '2013', 4, '2018', 1, 5, 'Mahatma Gandhi Govt. College (Id: C-6547)eee', 2, 'F', '85', 85, 100, 0, NULL, NULL, '2018-11-08 11:19:29', 1, 'null', '2018-11-14 08:59:39'),
(101, 23500, 3, 9, 3, 0, 2, '2013', 4, '2018', 1, 5, 'Mahatma Gandhi Govt. College (Id: C-6547)eee', 2, 'F', '85', 85, 100, 0, NULL, NULL, '2018-11-15 05:47:46', 1, 'null', '2018-11-15 00:37:35'),
(102, 2350, 3, 9, 3, 0, 2, '2013', 4, '2018', 1, 5, 'Mahatma Gandhi Govt. College (Id: C-6547)eee', 2, 'F', '85', 85, 100, 0, NULL, NULL, '2018-11-15 06:37:40', 1, 'null', '2018-11-15 01:10:38'),
(103, 23500, 3, 9, 3, 0, 2, '2013', 4, '2018', 1, 5, 'Mahatma Gandhi Govt. College (Id: C-6547)eee', 2, 'F', '85', 85, 100, 0, NULL, NULL, '2018-11-19 10:44:09', 1, 'null', '2018-11-19 05:15:21'),
(108, 2350, 3, 9, 3, 0, 7, '2013', 4, '2018', 1, 5, 'Mahatma Gandhi Govt. College (Id: C-6547)eee', 2, 'F', '', 185, 100, 1, '', '', '2018-11-22 07:22:55', 1, '', '2018-11-26 02:22:18'),
(109, 2350, 0, 0, 0, 0, NULL, '', NULL, NULL, 0, 0, 'clg tset', 1, 'N', '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-12-07 05:56:17'),
(110, 2350, 5, 184, 3, 0, 4, '2018', 7, '2024', 1, 54983130254, 'Tagore Government College of Education 1234', 1, 'N', '', 23, 50, 1, '1544446451.jpeg', 'xeEp9ZY3hiyXtDxlj6G0E115KgOOPg5c', '2018-12-10 07:00:26', 1, '', '2018-12-10 04:19:40'),
(111, 235, 3, 184, 3, 3, 1, '2000', 1, '2008', 1, 17, 'Sri Adi Siva Sadguru College of B.Sc. MLT, Guntakal (Id: C-30665)', 1, 'N', '66.6666666', 20, 30, 0, NULL, NULL, '2018-12-13 11:19:07', 1, 'null', '2018-12-13 05:49:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user_profile_educations`
--
ALTER TABLE `tbl_user_profile_educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`fk_user_id`) USING BTREE,
  ADD KEY `fk_admin_id` (`fk_admin_id`),
  ADD KEY `fk_degree_type_id` (`fk_degree_type_id`),
  ADD KEY `fk_degree_id` (`fk_degree_id`),
  ADD KEY `fk_field_of_study_id` (`fk_field_of_study_id`),
  ADD KEY `fk_pincode_id` (`fk_pincode_id`),
  ADD KEY `show_in_profile` (`show_in_profile`),
  ADD KEY `fk_college_id` (`fk_college_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user_profile_educations`
--
ALTER TABLE `tbl_user_profile_educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
