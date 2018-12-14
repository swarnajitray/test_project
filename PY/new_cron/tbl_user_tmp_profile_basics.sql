-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:05 PM
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
-- Table structure for table `tbl_user_tmp_profile_basics`
--

CREATE TABLE `tbl_user_tmp_profile_basics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL,
  `has_profile_picture` tinyint(1) UNSIGNED NOT NULL COMMENT '0->False, 1->True',
  `profile_picture_file_extension` enum('jpg','jpeg','png','gif') COLLATE utf8_unicode_ci DEFAULT NULL,
  `s3_media_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_picture_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `display_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'By default the email id, later user changes',
  `f_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `f_name_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `m_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_name_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `l_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `l_name_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `admin_status_profile_name` enum('P','V','R','A') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P' COMMENT 'P->Pending Verification, V->Verification In Process, R->Rejected, A->Approved',
  `admin_message_profile_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_street1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_street1_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `residence_street2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_street2_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `residence_street3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_street3_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `residence_post_office` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_zipcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_zipcode_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `residence_phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_phone_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `admin_status_residence_address` enum('P','V','R','A') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P' COMMENT 'P->Pending Verification, V->Verification In Process, R->Rejected, A->Approved',
  `admin_message_residence_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_street1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_street1_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `permanent_street2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_street2_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `permanent_street3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_street3_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `permanent_post_office` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_zipcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_zipcode_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `permanent_phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_phone_allowed` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '0->False, 1->True',
  `admin_status_permanent_address` enum('P','V','R','A') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P' COMMENT 'P->Pending Verification, V->Verification In Process, R->Rejected, A->Approved',
  `admin_message_permanent_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_profession_type_id` tinyint(3) UNSIGNED NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `fathers_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mothers_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_gender_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `fk_marital_status_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `fk_residence_status_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `admin_status_other_info` enum('P','V','R','A') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P' COMMENT 'P->Pending Verification, V->Verification In Process, R->Rejected, A->Approved',
  `admin_message_other_info` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_addition_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_profile_basic_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Null->New Addition, Not Null->Modification',
  `fk_admin_id` bigint(20) UNSIGNED NOT NULL,
  `admin_notes` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_tmp_profile_basics`
--

INSERT INTO `tbl_user_tmp_profile_basics` (`id`, `fk_user_id`, `has_profile_picture`, `profile_picture_file_extension`, `s3_media_version`, `profile_picture_allowed`, `display_name`, `f_name`, `f_name_allowed`, `m_name`, `m_name_allowed`, `l_name`, `l_name_allowed`, `admin_status_profile_name`, `admin_message_profile_name`, `residence_street1`, `residence_street1_allowed`, `residence_street2`, `residence_street2_allowed`, `residence_street3`, `residence_street3_allowed`, `residence_post_office`, `residence_city`, `residence_district`, `residence_state`, `residence_zipcode`, `residence_zipcode_allowed`, `residence_phone`, `residence_phone_allowed`, `admin_status_residence_address`, `admin_message_residence_address`, `permanent_street1`, `permanent_street1_allowed`, `permanent_street2`, `permanent_street2_allowed`, `permanent_street3`, `permanent_street3_allowed`, `permanent_post_office`, `permanent_city`, `permanent_district`, `permanent_state`, `permanent_zipcode`, `permanent_zipcode_allowed`, `permanent_phone`, `permanent_phone_allowed`, `admin_status_permanent_address`, `admin_message_permanent_address`, `fk_profession_type_id`, `date_of_birth`, `fathers_name`, `mothers_name`, `fk_gender_id`, `fk_marital_status_id`, `fk_residence_status_id`, `admin_status_other_info`, `admin_message_other_info`, `profile_addition_timestamp`, `fk_profile_basic_id`, `fk_admin_id`, `admin_notes`) VALUES
(12, 11, 0, NULL, NULL, 1, 'Anuj jain', 'anuj', 1, '', 1, 'jain', 1, 'P', 'Please click or upload a picture of yourself', 'sagar', 1, 'sagar', 1, 'Sagar', 1, '', 'Sagar', '', 'MADHYA PRADESH', '470002', 1, NULL, NULL, 'P', 'Please provide a correct address', 'sagar', 1, 'sagar', 1, 'sagar', 1, '', 'Sagar', '', 'MADHYA PRADESH', '470002', 1, NULL, NULL, 'P', 'Please provide a correct address', 1, '1990-11-06', 'Anil', '', 2, 1, 4, 'P', '', '2016-12-09 05:47:10', NULL, 0, NULL),
(13, 4, 0, NULL, NULL, 1, 'parth', 'Partha', 1, NULL, 1, 'Mondal', 1, 'P', 'Please upload or click a picture or yourself', 'J R Dhar Rd', 1, '', 1, '', 1, '', 'Kolkata', '', 'West Bengal', '700028', 1, NULL, NULL, 'P', '', 'J R Dhar Rd', 1, '', 1, '', 1, '', 'Kolkata', '', 'Kolkata', '700028', 1, NULL, NULL, 'P', '', 0, '0000-00-00', 'Hara Gobindo Mondal', '', 0, 0, 0, 'P', '', '2016-12-09 10:54:20', 18, 1, NULL),
(14, 1, 0, NULL, NULL, NULL, 'Rishi', 'Rishi', NULL, 'Raj', NULL, 'Gandotra', NULL, 'P', NULL, '34A, RATU SARKAR LANE,', NULL, 'Rajendra chhattra bhawan,Room no.68', NULL, 'Kolkata 700073', NULL, '', 'Kolkata', '', 'WEST BENGAL', '700073', NULL, NULL, NULL, 'P', NULL, '3C,B Block,Krishna Apartment', NULL, 'Jodaphatak Road,Dhanbad', NULL, '', NULL, '', 'Dhanbad', '', 'JHARKHAND', '826001', NULL, NULL, NULL, 'P', NULL, 5, '1998-12-15', 'Sunil Kumar Gandotra', '', 2, 1, 3, 'P', NULL, '2016-12-09 12:13:48', NULL, 0, NULL),
(15, 44, 0, NULL, NULL, 1, 'Rahul', 'Rahul', 1, '', 1, 'Dubey', 1, 'P', 'Please click or upload a picture of yourself', '111', 1, '', 1, '', 1, '', 'Indore', '', 'MADHYA PRADESH', '452001', 1, NULL, NULL, 'P', 'Please provide a correct address', '111', 1, '', 1, '', 1, '', 'Indore', '', 'MADHYA PRADESH', '452001', 1, NULL, NULL, 'P', 'Please provide a correct address', 1, '1980-01-01', 'Shri anoop dubey', '', 2, 1, 3, 'P', '', '2016-12-09 22:09:50', NULL, 0, NULL),
(17, 15, 1, 'jpg', 'pMaoT_7avgClG0NIowfyIErvBHADnzKJ', NULL, 'Souptik', 'Souptik', NULL, '', NULL, 'Biswas', NULL, 'P', NULL, '35 Lawrence street', NULL, '', NULL, '', NULL, '', 'Hooghly', '', 'WEST BENGAL', '712258', NULL, NULL, NULL, 'P', NULL, '35 Lawrence street', NULL, '', NULL, '', NULL, '', 'Hooghly', '', 'WEST BENGAL', '712258', NULL, NULL, NULL, 'P', NULL, 1, '1997-08-21', 'Kausik Biswas', '', 2, 1, 1, 'P', NULL, '2016-12-10 04:34:08', NULL, 0, NULL),
(18, 64, 0, NULL, NULL, NULL, 'sbajoria', 'Suyash', NULL, '', NULL, 'Bajoria', NULL, 'P', NULL, '402, Jagat Plaza', NULL, 'Law College Square', NULL, '', NULL, '', 'Nagpur', '', 'MAHARASHTRA', '440010', NULL, NULL, NULL, 'P', NULL, '402, Jagat Plaza', NULL, 'Law College Square', NULL, '', NULL, '', 'Nagpur', '', 'MAHARASHTRA', '440010', NULL, NULL, NULL, 'P', NULL, 5, '1995-11-03', 'Suresh', '', 2, 1, 1, 'P', NULL, '2016-12-10 09:47:42', NULL, 0, NULL),
(19, 75, 0, NULL, NULL, 1, 'Raju', 'Raju', 1, '', 1, 'Shah', 1, 'P', 'Please click or upload a picture of yourself', 'Opp.Vraj Garden,shela', 1, '', 1, '', 1, '', 'Ahmedabad', '', 'GUJARAT', '380058', 1, NULL, NULL, 'P', '', 'Khawrang,Udalguri', 1, '', 1, '', 1, '', 'Darrang', '', 'ASSAM', '784509', 1, NULL, NULL, 'P', '', 1, '1980-10-15', 'Ganesh Shah', '', 2, 1, 2, 'P', '', '2016-12-11 08:34:20', NULL, 0, NULL),
(21, 81, 1, 'jpg', 'u1zS4G8uKlgbbjCbOAV0ciEbTYOjsLHp', 1, 'abdoor4rauf', 'Abdur', 1, '', 1, 'Rauf', 1, 'P', 'xx', '2B/H/24, DR.M.N.Chatterjee Sarani', 1, 'Kolkata- 700009', 1, '', 1, '', 'Kolkata', '', 'WEST BENGAL', '700009', 1, NULL, NULL, 'P', '', '2B/H/24, DR.M.N.Chatterjee Sarani', 1, 'Kolkata- 700009', 1, '', 1, '', 'Kolkata', '', 'WEST BENGAL', '700009', 1, NULL, NULL, 'P', '', 1, '1998-11-12', 'Abdul Hamid Shaikh', '', 2, 1, 1, 'P', '', '2016-12-11 17:21:41', NULL, 1, 's'),
(22, 82, 1, 'jpg', '8iJXxKmTniCl8c9AdXoQA5OZ8KTFwyoj', NULL, 'Mark1', 'Mark', NULL, 'Earl', NULL, 'Williams', NULL, 'P', NULL, 'abc', NULL, 'def', NULL, 'ghi', NULL, '', 'Adilabad', '', 'ANDHRA PRADESH', '504299', NULL, NULL, NULL, 'P', NULL, 'abc1', NULL, 'def2', NULL, 'ghi2', NULL, '', 'Kolkata', '', 'WEST BENGAL', '700010', NULL, NULL, NULL, 'P', NULL, 1, '1992-10-22', 'shiv', '', 2, 3, 4, 'P', NULL, '2016-12-12 00:50:37', NULL, 0, NULL),
(29, 9, 1, 'jpg', 'T_RHVV4RvjiYlxyCxuVk77EfcXKrlUDA', NULL, 'sas', 'saswata', NULL, '', NULL, 'pal', NULL, 'P', NULL, 'cd 105', NULL, '', NULL, '', NULL, '', 'North 24 Parganas', '', 'WEST BENGAL', '700064', NULL, NULL, NULL, 'P', NULL, 'cd 105', NULL, '', NULL, '', NULL, '', 'North 24 Parganas', '', 'WEST BENGAL', '700064', NULL, NULL, NULL, 'P', NULL, 1, '1980-01-10', 'p.pal', '', 1, 1, 2, 'P', NULL, '2016-12-22 05:43:04', NULL, 0, NULL),
(31, 97, 1, 'jpg', 'QBXU4D2.7cLl9bZF6z2veaTe.lGoh5oQ', NULL, 'Akash', 'Beri', NULL, '', NULL, 'Ganesh', NULL, 'P', NULL, '254', NULL, '4th main', NULL, 'K G nagar', NULL, '', 'Bangalore', '', 'KARNATAKA', '560019', NULL, NULL, NULL, 'P', NULL, '254', NULL, '4th main', NULL, 'K G nagar', NULL, '', 'Bangalore', '', 'KARNATAKA', '560019', NULL, NULL, NULL, 'P', NULL, 5, '1993-01-01', 'G ganesh', '', 2, 1, 1, 'P', NULL, '2016-12-14 10:31:52', NULL, 0, NULL),
(32, 100, 1, 'jpg', 'x80CHY4X5K1qZSWZ5vBmTQ1vTPqjv2b3', NULL, 'Gaurav v', 'Gaurav', NULL, '', NULL, 'V', NULL, 'P', NULL, '61/12,Puja homes,flat no s1 2nd floor 7th mn,7th c', NULL, '', NULL, '', NULL, '', 'Bangalore', '', 'KARNATAKA', '560085', NULL, NULL, NULL, 'P', NULL, '61/12,Puja homes,flat no s1 2nd floor 7th mn,7th c', NULL, '', NULL, '', NULL, '', 'Bangalore', '', 'KARNATAKA', '560085', NULL, NULL, NULL, 'P', NULL, 1, '1995-02-28', 'Venugopal v', '', 2, 1, 1, 'P', NULL, '2016-12-15 05:48:42', NULL, 0, NULL),
(37, 105, 1, 'jpg', '0Et0UfGXku5wrK9FVDPCOF.fLRC4I7xH', NULL, 'Roshan', 'Roshan', NULL, '', NULL, 'Choudhury', NULL, 'P', NULL, '9 Mayfair Rd', NULL, '', NULL, '', NULL, '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, NULL, NULL, 'P', NULL, '9 Mayfair Rd', NULL, '', NULL, '', NULL, '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, NULL, NULL, 'P', NULL, 1, '1979-06-18', 'Kamal V', '', 1, 2, 1, 'P', NULL, '2016-12-15 23:36:45', 16, 0, NULL),
(41, 94, 1, 'jpg', '2DTJWrLUPqGJ9CjMC5.WOyanaOeIAhwV', 1, 'MayankH', 'mayank', 1, '', 1, 'kumar', 1, 'P', '', 'CD 105 saltlate sector II kolkata webstbengal indi', 1, 'shadipur depot', 1, '', 1, '', 'Central Delhi', '', 'DELHI', '110008', 1, NULL, NULL, 'P', '', '69-A DDA Flats', 1, 'shadipur depot', 1, '', 1, '', 'Central Delhi', '', 'DELHI', '110008', 1, NULL, NULL, 'P', '', 5, '1995-11-16', 'sushil kumar', '', 2, 1, 1, 'P', '', '2016-12-17 02:00:01', NULL, 1, 'ghfgh'),
(47, 122, 0, NULL, NULL, 1, 'yogesh g', 'yogesh', 1, '', 1, 'gangatharan', 1, 'P', 'Please fill up the entire profile to request loans', '003,brindavan garden , thudiyallur', 1, 'asian  paints road', 1, '', 1, '', 'Coimbatore', '', 'TAMIL NADU', '641034', 1, NULL, NULL, 'P', '', '003,brindavan garden , thudiyallur', 1, 'asian  paints road', 1, '', 1, '', 'Coimbatore', '', 'TAMIL NADU', '641034', 1, NULL, NULL, 'P', '', 1, '1980-01-14', 'gangatharan', '', 2, 1, 3, 'P', '', '2016-12-18 11:40:17', NULL, 0, NULL),
(62, 148, 1, 'jpg', 'lxSt15MA17xXmDAMXXwrprGR1voTYa1m', NULL, 'Marshad', 'Marshad', NULL, '', NULL, 'KT', NULL, 'P', NULL, 'Pariyarath house thottilangadi post irivetty areac', NULL, '', NULL, '', NULL, '', 'Malappuram', '', 'KERALA', '673639', NULL, NULL, NULL, 'P', NULL, 'Pariyarath house thottilangadi post irivetty areac', NULL, '', NULL, '', NULL, '', 'Malappuram', '', 'KERALA', '673639', NULL, NULL, NULL, 'P', NULL, 5, '1996-02-01', 'Moideenkutty kt', '', 2, 1, 1, 'P', NULL, '2016-12-21 23:53:34', NULL, 0, NULL),
(66, 239, 1, 'jpg', 'q8jg8uqFg5gQugaeW7Del8xOaFTzuIgY', 1, 'RAVIKIRANCHOWDARY', 'RAVIKIRAN', 1, '', 1, 'V', 1, 'A', '', 'Room no 306', 1, 'The new general boys hostel the Oxford college of ', 1, 'Bommanahalli bangalore', 1, '', 'Bangalore', '', 'KARNATAKA', '560068', 1, NULL, NULL, 'A', '', '#1/07/144 r ramakrishna rrk group of constructions', 1, 'Haskahalla Raichur', 1, '', 1, '', 'Raichur', '', 'KARNATAKA', '584101', 1, NULL, NULL, 'P', 'This address is not matching with the address on your driving license. Please enter the correct address', 1, '1995-01-15', 'Sarveshwarrao Rao', '', 2, 1, 2, 'A', '', '2016-12-24 08:28:27', NULL, 0, NULL),
(72, 176, 0, NULL, NULL, 1, 'Vivek', 'Vivek', 1, '', 1, 'Vora', 1, 'P', '', 'Shanti business school hostel, opposite vraj Garde', 1, '', 1, '', 1, '', 'Ahmedabad', '', 'GUJARAT', '380058', 1, NULL, NULL, 'P', '', 'Shanti business school hostel, opposite vraj Garde', 1, '', 1, '', 1, '', 'Ahmedabad', '', 'GUJARAT', '380058', 1, NULL, NULL, 'P', 'Please enter your permanent address', 5, '1992-06-01', 'R V', '', 2, 1, 4, 'P', '', '2016-12-25 08:15:34', NULL, 0, NULL),
(78, 189, 0, NULL, NULL, NULL, 'Amol Rane', 'Amol', NULL, 'Suresh', NULL, 'Rane', NULL, 'P', NULL, 'Flat no 8 prachiti Heights kirtinagar', NULL, '', NULL, '', NULL, '', 'Pune', '', 'MAHARASHTRA', '411051', NULL, NULL, NULL, 'P', NULL, 'At dighadi tq Umarkhed dist yavatmal', NULL, '', NULL, '', NULL, '', 'Yavatmal', '', 'MAHARASHTRA', '445206', NULL, NULL, NULL, 'P', NULL, 5, '1980-01-01', 'Suresh Rane', '', 2, 1, 3, 'P', NULL, '2016-12-27 21:43:40', NULL, 0, NULL),
(79, 195, 0, NULL, NULL, 1, 'Himalaya Bhatia', 'Himalaya', 1, 'V', 1, 'Bhatia', 1, 'P', 'Please upload a photo', '22, Neelam park society, Radhanpur road, Mehesana', 1, '', 1, '', 1, '', 'Mahesana', '', 'GUJARAT', '384002', 1, NULL, NULL, 'A', '', '22, Neelam park society, Radhanpur road, Mehesana', 1, '', 1, '', 1, '', 'Mahesana', '', 'GUJARAT', '384002', 1, NULL, NULL, 'A', '', 1, '1994-01-26', 'Vinod Kumar', '', 2, 1, 1, 'A', '', '2016-12-28 12:16:44', NULL, 0, NULL),
(83, 171, 0, NULL, NULL, NULL, 'Uju', 'Ujval', NULL, 'Rajesh', NULL, 'Kaboo', NULL, 'P', NULL, 'A-2/102 Samarth enclave', NULL, 'VIP road', NULL, 'Surat', NULL, '', 'Surat', '', 'GUJARAT', '394518', NULL, NULL, NULL, 'P', NULL, 'A-2/102 Samarth enclave', NULL, 'VIP road', NULL, 'Surat', NULL, '', 'Surat', '', 'GUJARAT', '394518', NULL, NULL, NULL, 'P', NULL, 1, '1993-06-18', 'Rajesh', '', 2, 1, 3, 'P', NULL, '2016-12-29 16:10:39', NULL, 0, NULL),
(84, 172, 1, 'jpg', 'iKpyejKuraN14W7cYYixQoVV9eRl5e5q', NULL, 'Amrit', 'Amrit', NULL, '', NULL, 'Kumar', NULL, 'P', NULL, 'Flat no- 401/0, BLOCK-A.', NULL, 'SBS COLLEGE, SHELA GAON, NEAR SP RING ROAD.', NULL, 'Besides of Shanti Asiatic school.', NULL, '', 'Ahmedabad', '', 'GUJARAT', '380058', NULL, NULL, NULL, 'P', NULL, 'At+PO- Saraiya.', NULL, 'PS-Dariyapur', NULL, '', NULL, '', 'Saran', '', 'BIHAR', '841101', NULL, NULL, NULL, 'P', NULL, 1, '1992-03-10', 'Shankar Singh', '', 2, 1, 1, 'P', NULL, '2016-12-30 05:25:41', NULL, 0, NULL),
(85, 13, 0, NULL, NULL, 1, 'bngh', 'fghfh', 1, '', 1, 'dfgfgf', 1, 'A', '', '', 1, '', 1, '', 1, NULL, '', NULL, '', '', 1, NULL, NULL, 'A', '', '', 1, '', 1, '', 1, NULL, '', NULL, '', '', 1, NULL, NULL, 'A', '', 1, '2000-02-02', 'ghgdh', '', 2, 1, 1, 'R', '', '2018-02-13 09:12:04', NULL, 1, 'null'),
(109, 234, 0, 'jpg', 'SZxdzO5yz4ySWGlmpGzaf5uDPqOW2N9E', 1, 'Subham', 'Subham', 1, '', 1, 'Goyal', 1, 'P', '', '2nd main', 1, '6th cross', 1, 'Tavarekere', 1, '', 'Bangalore', '', 'KARNATAKA', '560029', 1, NULL, NULL, 'P', '', '2nd main', 1, '6th cross', 1, 'Tavarekere', 1, '', 'Bangalore', '', 'KARNATAKA', '560029', 1, NULL, NULL, 'P', '', 1, '1995-10-16', 'Pradip Goyal', 'gggg', 2, 1, 3, 'P', '', '2018-08-23 11:51:04', NULL, 1, ''),
(111, 28, 0, 'jpg', 'lqChl_kgq4IzzjHIa9g9_stOYH_ZvzWC', 1, 'VahidRT', 'Badi', 1, 'Badisss', 1, 'Vahidhushen', 1, 'P', '', 'Wankaner', 1, 'Bazar', 1, '9', 1, '', 'Rajkot', '', 'GUJARAT', '363621', 1, NULL, NULL, 'A', '', 'Wankaner', 1, 'Bazar', 1, '9', 1, '', 'Rajkot', '', 'GUJARAT', '363621', 1, NULL, NULL, 'P', '', 1, '1996-05-12', 'fdgfdgsdfsdf', 'dfgdfg', 2, 1, 2, 'P', '', '2018-09-04 10:22:00', NULL, 1, ''),
(112, 257, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:05:23', NULL, 0, NULL),
(113, 258, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:06:20', NULL, 0, NULL),
(114, 259, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:07:17', NULL, 0, NULL),
(115, 261, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:07:53', NULL, 0, NULL),
(116, 262, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:08:51', NULL, 0, NULL),
(117, 263, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:10:00', NULL, 0, NULL),
(118, 264, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:10:32', NULL, 0, NULL),
(119, 265, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:11:19', NULL, 0, NULL),
(120, 266, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:14:57', NULL, 0, NULL),
(121, 267, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:18:35', NULL, 0, NULL),
(122, 268, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:19:48', NULL, 0, NULL),
(123, 269, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:20:06', NULL, 0, NULL),
(124, 270, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:20:31', NULL, 0, NULL),
(125, 271, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:21:45', NULL, 0, NULL),
(126, 272, 0, NULL, NULL, NULL, '', 'Test', 1, '', NULL, 'deep', 1, 'P', NULL, 'test street', NULL, NULL, NULL, NULL, NULL, NULL, 'test city', NULL, NULL, 'yes', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 1, NULL, NULL, '', NULL, 0, 1, 'P', NULL, '2018-09-10 09:24:59', NULL, 0, NULL),
(127, 273, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:26:53', NULL, 0, NULL),
(128, 274, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:29:28', NULL, 0, NULL),
(129, 275, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:30:06', NULL, 0, NULL),
(130, 276, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:30:41', NULL, 0, NULL),
(131, 277, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:31:43', NULL, 0, NULL),
(132, 278, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:32:24', NULL, 0, NULL),
(133, 279, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:33:13', NULL, 0, NULL),
(134, 280, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:33:59', NULL, 0, NULL),
(135, 281, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:34:31', NULL, 0, NULL),
(136, 282, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:35:21', NULL, 0, NULL),
(137, 283, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:37:01', NULL, 0, NULL),
(138, 284, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:38:35', NULL, 0, NULL),
(139, 285, 0, 'jpg', '6buFlCwGn7HTVSZ6QsHpRzKiVOIl6EMd', NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:38:58', NULL, 0, NULL),
(140, 286, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:39:57', NULL, 0, NULL),
(141, 287, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:40:32', NULL, 0, NULL),
(142, 288, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:40:43', NULL, 0, NULL),
(143, 289, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:52:47', NULL, 0, NULL),
(144, 290, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:54:18', NULL, 0, NULL),
(145, 291, 0, NULL, NULL, NULL, '', 'Sohom', 1, '', NULL, 'deep', 1, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, 'P', NULL, '2018-09-10 09:55:28', NULL, 0, NULL),
(146, 2350, 0, NULL, NULL, NULL, '', 'Sanjoy', NULL, 'jeet', NULL, 'Das', NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, '1994-03-16', 'Nanji bhai', 'aaaaa', 0, 2, NULL, 'P', NULL, '2018-11-02 14:25:03', NULL, 0, NULL),
(147, 2355, 0, NULL, NULL, NULL, '', 'Sanjoy', NULL, 'jeet', NULL, 'Das', NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, '1994-03-16', 'Nanji bhai', 'aaaaa', 0, 2, NULL, 'P', NULL, '2018-11-05 05:19:42', NULL, 0, NULL),
(148, 2356, 0, NULL, NULL, NULL, '', 'Sanjoy', NULL, 'jeet', NULL, 'Das', NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, 0, '1994-03-16', 'Nanji bhai', 'aaaaa', 0, 2, NULL, 'P', NULL, '2018-11-05 05:38:01', NULL, 0, NULL),
(149, 0, 0, '', 'null', 1, '123444444444440000', '12', 1, '', 1, '56', 1, 'A', '', 'mukhaaaaaaaa', 1, 's', 1, '', 1, NULL, 'KOLKATA', NULL, 'West Bengal', '700001', 1, NULL, NULL, 'A', '', 'mukhaaaaaaaa', 1, 's', 1, '', 1, NULL, 'KOLKATA', NULL, 'West Bengal', '700001', 1, NULL, NULL, 'A', '', 0, '1993-08-05', '123599', '123', 1, 2, 1, 'A', NULL, '2018-12-06 08:15:24', NULL, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user_tmp_profile_basics`
--
ALTER TABLE `tbl_user_tmp_profile_basics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_id` (`fk_user_id`) USING BTREE,
  ADD KEY `fk_admin_id` (`fk_admin_id`),
  ADD KEY `fk_profile_basic_id` (`fk_profile_basic_id`),
  ADD KEY `fk_profession_type_id` (`fk_profession_type_id`),
  ADD KEY `fk_marital_status_id` (`fk_marital_status_id`),
  ADD KEY `fk_residence_status_id` (`fk_residence_status_id`),
  ADD KEY `display_name` (`display_name`),
  ADD KEY `f_name` (`f_name`),
  ADD KEY `m_name` (`m_name`),
  ADD KEY `l_name` (`l_name`),
  ADD KEY `f_name_2` (`f_name`,`m_name`,`l_name`,`fk_profession_type_id`,`fk_gender_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user_tmp_profile_basics`
--
ALTER TABLE `tbl_user_tmp_profile_basics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
