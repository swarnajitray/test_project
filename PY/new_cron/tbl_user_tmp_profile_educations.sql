-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:12 PM
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
-- Table structure for table `tbl_user_tmp_profile_educations`
--

CREATE TABLE `tbl_user_tmp_profile_educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Only single active data for each kyc type for each user, inactive ones are history',
  `fk_degree_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fk_degree_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fk_field_of_study_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fk_attendence_id` bigint(20) UNSIGNED NOT NULL,
  `month_of_joining` int(10) UNSIGNED DEFAULT NULL,
  `year_of_joining` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month_of_graduation` int(10) UNSIGNED DEFAULT NULL,
  `year_of_graduation` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_profile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->No, 1->Yes',
  `fk_college_id` bigint(20) UNSIGNED NOT NULL,
  `name_of_institution` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_pincode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type_of_grade` enum('C','P') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `work_status` enum('P','F','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N' COMMENT 'P->Part time, F->Full time, N- Not employed',
  `grades_marks` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marks` float UNSIGNED DEFAULT NULL,
  `out_of_range` int(10) UNSIGNED DEFAULT NULL,
  `is_file_uploaded` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s3_media_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education_addition_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_profile_education_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Null->New Addition, Not Null->Modification',
  `education_status` enum('P','V','R') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P' COMMENT 'P->Pending Verification, V->Verification In Process, R->Rejected',
  `admin_message_education` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_notes` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_tmp_profile_educations`
--

INSERT INTO `tbl_user_tmp_profile_educations` (`id`, `fk_user_id`, `fk_degree_type_id`, `fk_degree_id`, `fk_field_of_study_id`, `fk_attendence_id`, `month_of_joining`, `year_of_joining`, `month_of_graduation`, `year_of_graduation`, `show_in_profile`, `fk_college_id`, `name_of_institution`, `fk_pincode_id`, `type_of_grade`, `work_status`, `grades_marks`, `marks`, `out_of_range`, `is_file_uploaded`, `file_name`, `s3_media_version`, `education_addition_datetime`, `fk_profile_education_id`, `education_status`, `admin_message_education`, `fk_admin_id`, `admin_notes`) VALUES
(7, 1, 3, 14, 1, 0, 7, '2016', 7, '2018', 0, 54983124628, 'Sikkim Manipal University5', 2, 'P', 'N', '', 0, 0, 0, NULL, NULL, '2016-12-10 04:36:12', NULL, 'P', 'Please provide name of college and student ID photo in KYC section', 1, 'abc'),
(17, 103, 3, 14, 1, 0, 7, '2014', 6, '2017', 0, 13268, 'abcdefg', 1, 'P', 'N', '', 0, 0, 0, NULL, NULL, '2016-12-15 09:37:12', NULL, 'P', NULL, 1, 'CHRIST COLLEGE 3'),
(65, 4, 3, 20, 20, 0, 0, '2013', NULL, '2016', 0, 5279, 'St. Xavier\'s College ', 146876, 'P', 'P', '', 0, 0, 0, NULL, NULL, '2016-12-19 14:18:21', NULL, 'P', NULL, NULL, NULL),
(66, 62, 3, 205, 41, 0, 0, '2016', NULL, '2019', 0, 40256, 'Asutosh College ', 146847, 'P', 'N', '', 0, 0, 0, NULL, NULL, '2016-12-19 14:19:40', 17, 'P', NULL, NULL, NULL),
(95, 9, 4, 85, 16, 0, 0, '2007', NULL, '2010', 0, 41009, 'Tech College of Education ', 146908, 'P', 'N', '', 0, 0, 1, '1482734614.jpg', '5eltkFMrpCPGNGPvfxtSYV.9fxNM0IwU', '2016-12-26 01:08:39', 27, 'P', NULL, NULL, NULL),
(96, 1, 3, 9, 40, 0, 0, '2012', NULL, '2013', 0, 23792, 'GURU AMAR DASS COLLEGE OF IT AND Mgt. ', 146908, 'P', 'P', '', 7, 10, 0, NULL, NULL, '2016-12-26 01:14:49', NULL, 'P', NULL, NULL, NULL),
(104, 28, 4, 233, 7, 0, 0, '2013', NULL, '2016', 1, 54983130264, 'Mahatma Gandhi Govt. C455678', 4, 'P', 'N', '', 0, 0, 0, NULL, NULL, '2016-12-30 12:50:28', NULL, 'P', 'Please change degree name to Bachelor of Commerce', NULL, NULL),
(105, 204, 3, 234, 7, 0, 0, '2016', NULL, '2018', 0, 55013, 'Abeda inamadar', 86107, 'P', 'F', '', 0, 0, 0, NULL, NULL, '2017-01-02 06:28:51', NULL, 'P', 'Please fill up the KYC details', NULL, NULL),
(109, 216, 3, 10, 3, 0, 2, '2016', 2, '2020', 1, 40471, 'BENGAL COLLEGE OF EDUCATION ', 1, 'P', 'P', '', 69, 100, 0, NULL, NULL, '2018-02-05 10:11:25', NULL, 'P', NULL, 1, NULL),
(111, 17, 3, 14, 1, 0, 7, '2016', 6, '2019', 1, 55015, 'pondi', 1, 'P', 'N', NULL, 0, 0, 0, NULL, NULL, '2018-05-28 12:51:58', NULL, 'P', NULL, 1, ''),
(116, 288, 1, NULL, 1, 0, 2, '2016', 3, '2024', 1, 54958, 'PANSKURA PRIMARY TEACHERS TRAINING INSTITUTE PURBA MEDINIPUR ', NULL, 'P', 'N', NULL, NULL, 0, 0, NULL, NULL, '2018-08-30 12:57:45', NULL, 'P', NULL, 1, NULL),
(117, 289, 3, 9, 1, 0, 3, '2002', 3, '2003', 1, 54958, 'PANSKURA PRIMARY TEACHERS TRAINING INSTITUTE PURBA MEDINIPUR (Id: S-8832)', 1, 'P', 'F', NULL, 8, 10, 0, NULL, NULL, '2018-08-30 13:01:07', NULL, 'P', NULL, 1, 'null'),
(118, 290, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, 54983111323, 'Abcdefgh', 1, 'P', 'N', NULL, NULL, 0, 0, NULL, NULL, '2018-08-30 13:11:19', NULL, 'P', NULL, 1, NULL),
(119, 291, 1, 9, 1, 0, 1, '2015', 2, '2016', 1, 54983130265, 'DDA', 1, 'P', 'N', NULL, 8, 10, 0, NULL, NULL, '2018-08-31 04:38:02', NULL, 'P', NULL, 1, NULL),
(120, 292, 3, 14, 1, 0, 2, '2017', 2, '2024', 1, 54983130265, 'DDA', 1, 'P', 'F', NULL, 8, 10, 0, NULL, NULL, '2018-08-31 05:14:43', NULL, 'P', NULL, 1, NULL),
(121, 293, 3, 9, 1, 0, 2, '2017', 2, '2019', 1, 54983130266, 'snj1', 1, 'P', 'P', NULL, 8, 10, 0, NULL, NULL, '2018-08-31 08:57:35', NULL, 'P', NULL, 1, NULL),
(122, 294, 1, 9, 1, 0, 2, '2017', 3, '2018', 1, 54983130267, 'SANJ2', 1, 'P', 'N', NULL, 8, 10, 0, NULL, NULL, '2018-08-31 09:06:12', NULL, 'P', NULL, 1, NULL),
(123, 297, 1, 9, 1, 0, 2, '2017', 3, '2018', 1, 5, 'Mahatma Gandhi Govt. College (Id: C-6547)eee', 2, 'P', 'N', NULL, 8, 10, 0, NULL, NULL, '2018-08-31 09:16:43', NULL, 'P', NULL, 1, NULL),
(138, 2, 7, 14, 1, 0, 7, '2016', 11, '2018', 1, 5, 'Mahatma Gandhi Govt. College (Id: C-6547)eee', 2, 'P', 'N', NULL, 89, 100, 0, NULL, NULL, '2018-11-13 07:59:48', NULL, 'P', NULL, 1, ''),
(139, 2350, 3, 9, 3, 0, 7, '2013', 4, '2018', 1, 5, 'Mahatma Gandhi Govt. College (Id: C-6547)eee', 2, 'P', 'F', NULL, 185, 100, 1, '', '', '2018-12-03 12:07:01', NULL, 'P', NULL, 1, ''),
(140, 2350, 3, 9, 3, 0, 3, '2017', 4, '2021', 0, 0, 'The Calcutta Anglo Gujarati College', NULL, 'P', 'N', NULL, 75, 100, 0, NULL, NULL, '2018-12-07 10:23:23', NULL, 'P', NULL, 1, NULL),
(141, 2350, 3, 9, 3, 0, 3, '2017', 4, '2021', 0, 0, 'The Calcutta Anglo Gujarati College', NULL, 'P', 'N', NULL, 75, 100, 0, NULL, NULL, '2018-12-07 10:25:15', NULL, 'P', NULL, 1, NULL),
(142, 2351, NULL, 9, 3, 0, 1, '2018', 5, '2020', 0, 25, 'Anantha lakshmi Engineering college ', 1, 'P', 'N', NULL, 32, 25, 0, NULL, NULL, '2018-12-07 12:59:15', NULL, 'P', NULL, 1, NULL),
(143, 2352, 4, 184, 3, 0, 7, '2017', 4, '2023', 0, 54983130283, 'The Calcutta Anglo Gujarati College New', 1, 'P', 'N', NULL, 34, 34, 0, NULL, NULL, '2018-12-07 13:05:11', NULL, 'P', NULL, 1, NULL),
(144, 2350, 4, 11, 0, 0, 2, '2017', 9, '2023', 0, 54983130289, 'F H COLLEGE OF NURSING (Id: S-15700)77777777', 1, 'P', 'N', NULL, 54, 5, 0, NULL, NULL, '2018-12-07 13:12:03', NULL, 'P', NULL, 1, 'null'),
(145, 2351, 3, 167, 3, 0, 6, '2018', 12, '2024', 0, 34165, 'Q.F. MAHAVIDYALAYA, NANDAURA, FATEHPUR, BARABANKI (Id: C-42641)', 1, 'P', 'N', NULL, 34, 43, 0, NULL, NULL, '2018-12-10 06:16:10', NULL, 'P', NULL, 1, 'null');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user_tmp_profile_educations`
--
ALTER TABLE `tbl_user_tmp_profile_educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`fk_user_id`) USING BTREE,
  ADD KEY `fk_admin_id` (`fk_admin_id`),
  ADD KEY `fk_degree_type_id` (`fk_degree_type_id`),
  ADD KEY `fk_degree_id` (`fk_degree_id`),
  ADD KEY `fk_field_of_study_id` (`fk_field_of_study_id`),
  ADD KEY `fk_pincode_id` (`fk_pincode_id`),
  ADD KEY `fk_profile_education_id` (`fk_profile_education_id`),
  ADD KEY `fk_college_id` (`fk_college_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user_tmp_profile_educations`
--
ALTER TABLE `tbl_user_tmp_profile_educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
