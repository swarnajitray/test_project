-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:00 PM
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
-- Table structure for table `tbl_user_profile_basics`
--

CREATE TABLE `tbl_user_profile_basics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Only single active data for each user, inactive ones are history',
  `profile_picture_file_extension` enum('jpg','jpeg','png','gif') COLLATE utf8_unicode_ci NOT NULL,
  `s3_media_version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'By default the email id, later user changes (Unique)',
  `f_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `m_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `residence_street1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `residence_street2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_street3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_post_office` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `residence_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `residence_district` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `residence_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `residence_zipcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `residence_phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_street1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_street2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_street3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_post_office` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_district` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_zipcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_profession_type_id` tinyint(3) UNSIGNED NOT NULL,
  `date_of_birth` date NOT NULL,
  `fathers_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mothers_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_gender_id` tinyint(3) UNSIGNED NOT NULL,
  `fk_marital_status_id` tinyint(3) UNSIGNED NOT NULL,
  `fk_residence_status_id` tinyint(3) UNSIGNED NOT NULL,
  `addition_timestamp` timestamp NULL DEFAULT NULL COMMENT 'Copied Date',
  `fk_admin_id` bigint(20) UNSIGNED NOT NULL,
  `admin_notes` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_profile_basics`
--

INSERT INTO `tbl_user_profile_basics` (`id`, `fk_user_id`, `profile_picture_file_extension`, `s3_media_version`, `display_name`, `f_name`, `m_name`, `l_name`, `residence_street1`, `residence_street2`, `residence_street3`, `residence_post_office`, `residence_city`, `residence_district`, `residence_state`, `residence_zipcode`, `residence_phone`, `permanent_street1`, `permanent_street2`, `permanent_street3`, `permanent_post_office`, `permanent_city`, `permanent_district`, `permanent_state`, `permanent_zipcode`, `permanent_phone`, `fk_profession_type_id`, `date_of_birth`, `fathers_name`, `mothers_name`, `fk_gender_id`, `fk_marital_status_id`, `fk_residence_status_id`, `addition_timestamp`, `fk_admin_id`, `admin_notes`, `approved_timestamp`) VALUES
(2, 1, 'jpg', 'f.Bkb_ki1idefCiaaONyG62q7Em2jTMy', 'Mark DRozario', 'Mark', '', 'DRozario', 'Christian Para', 'Rishi Bankim Nagar,Baruipur', 'Kolkata-700144', '', 'South 24 Parganas', '', 'WEST BENGAL', '700144', NULL, 'Christian Para', 'Rishi Bankim Nagar,Baruipur', 'Kolkata-700144', '', 'South 24 Parganas', '', 'WEST BENGAL', '700144', NULL, 2, '1992-04-23', 'Anil DRozario', '', 1, 1, 1, '2016-12-19 07:43:11', 4, NULL, '2016-12-19 23:15:15'),
(3, 23, 'jpg', 'Xx5hyt5kAH0coCTFdD1QCvSrEs5k3RMm', 'Bakshi', 'Pakhi', '', 'Bakshi', 'Cd 105', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700010', NULL, 'Cd 105', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700010', NULL, 1, '1980-01-18', 'P.test', '', 1, 1, 2, '2016-12-07 07:14:52', 1, NULL, '2016-12-07 07:21:30'),
(4, 5, 'jpg', 'vlbBweD97g5B.F8LF.l38dWIBkfR1s1O', 'mPokketer', 'Gaurav', '', 'Jalan', '7 Bright Street', 'Flat 9AB', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, '7 Bright Street', 'Flat 9AB', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, 1, '1978-10-11', 'Arun Kumar Jalan', '', 2, 2, 2, '2016-12-24 02:12:46', 3, NULL, '2016-12-24 02:18:45'),
(5, 8, 'jpg', 'QnaLOZLHLV9Xhua8UUPWebt5M9bfGBkW', 'Samarjit', 'Samarjit', '', 'Choudhury', '9 Mayfair Road', 'Flat  5D', 'Venus Apartment', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, '9 Mayfair Road', 'Flat  5D', 'Venus Apartment', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, 5, '1978-06-17', 'Ranajit Choudhury', '', 2, 2, 1, '2016-12-08 02:09:30', 2, NULL, '2016-12-08 02:21:59'),
(7, 1658, 'jpg', 'd6d4NiGLYtjLIBBkS52BJTEScUPNi2d7', 'Debthecheater', 'Debjyoti', '', 'Sarkar', '27 Christopher Road', 'Ekta Floral Flat 6E Block 5', 'Tangra', '', 'Kolkata', '', 'WEST BENGAL', '700046', NULL, '27 Christopher Road', 'Ekta Floral Flat 6E Block 5', 'Tangra', '', 'Kolkata', '', 'WEST BENGAL', '700046', NULL, 1, '1989-12-27', 'Sarkar', '', 2, 1, 4, '2016-12-09 23:55:04', 4, NULL, '2016-12-10 00:11:51'),
(8, 3427, '', '', 'talk2mou', 'mousumi', '', 'bakshi', 'cd 105', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700065', NULL, 'cd 105', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700065', NULL, 1, '1980-01-18', 'P.Bakshi', '', 1, 1, 2, '2016-12-12 01:52:56', 1, NULL, '2016-12-12 02:06:31'),
(9, 14, 'jpg', '6CrDmIWjYoPbDC56dcs6ejyMe2M67u.K', 'Gandharva', 'Gandharva', '', '', 'Radha Krishna temple', 'Parle point,  Surat', '', '', 'Surat', '', 'GUJARAT', '395007', NULL, '4, Manik chowk, Runni saidpur', 'Sitamarhi, Bihar', '', '', 'Sitamarhi', '', 'BIHAR', '843323', NULL, 1, '1994-03-04', 'Vijay Shankar jha', '', 2, 1, 1, '2016-12-11 14:31:51', 4, NULL, '2016-12-12 07:36:20'),
(10, 9, 'jpg', '1pij4p2aXOSlKouXjmXL_5N16yKkEGEc', 'Jayshree', 'Jayshree', '', 'Khandelia', 'Gouri Apartment,59,ballygunge place,first floor', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, 'Gouri Apartment,59,ballygunge place,first floor', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, 1, '1996-07-02', 'Venkatesh Khandelia', '', 1, 1, 1, '2016-12-13 12:37:09', 4, NULL, '2016-12-13 23:56:52'),
(11, 36, 'jpg', '.NIkvPaGJ60UssEJ1kcUfn3ELPAqAIpn', 'zer0mortal', 'Ashok', '', 'Yadav', 'A 405, Silver coin complex, Makarpura road', '', '', '', 'Vadodara', '', 'GUJARAT', '390014', NULL, 'A 405, Silver coin complex, Makarpura road', '', '', '', 'Vadodara', '', 'GUJARAT', '390014', NULL, 1, '1996-07-21', 'Vadan yadav', '', 2, 1, 1, '2016-12-13 12:12:22', 4, NULL, '2016-12-14 00:58:58'),
(12, 15, 'jpg', 'hwLXPkO0jQkupNLoAYqBRe2A88k4aruN', 'Chintan', 'Chintan', '', 'Agrawal', 'Baroda dairy', '', '', '', 'Vadodara', '', 'GUJARAT', '390014', NULL, 'Baroda dairy', '', '', '', 'Vadodara', '', 'GUJARAT', '390014', NULL, 1, '1980-06-30', 'Hashmukh', '', 2, 1, 3, '2016-12-14 01:12:56', 4, NULL, '2016-12-14 01:19:44'),
(13, 16, 'jpg', 'F_Jq53hTNJ257gNy4sa2hGeMsch7T7bk', 'Nishanth', 'Nishanth', 'Reddy', 'Konda', '#103, dsr topaz, 5th cross, 7th main, iblur, banga', '', '', '', 'Bangalore', '', 'KARNATAKA', '560103', NULL, '#103, dsr topaz, 5th cross, 7th main, iblur, banga', '', '', '', 'Bangalore', '', 'KARNATAKA', '560103', NULL, 1, '1992-08-23', 'Srinivasa reddy', '', 2, 1, 3, '2016-12-14 07:46:22', 4, NULL, '2016-12-14 08:24:19'),
(14, 96, 'jpg', '4dBpy4T59nAVVLQhIi.JM1_uCY57i5FE', 'VB', 'Vaibhav', '', 'V', '#61/12 puja homes flat no s1 2nd floor  7th cross ', '', '', '', 'Bangalore', '', 'KARNATAKA', '560085', NULL, '#61/12 puja homes flat no s1 2nd floor  7th cross ', '', '', '', 'Bangalore', '', 'KARNATAKA', '560085', NULL, 1, '1997-06-05', 'Venugopal V', '', 2, 1, 1, '2016-12-14 09:47:32', 4, NULL, '2016-12-14 09:50:28'),
(15, 65, 'jpg', 'phSFHWjBrx71o77J1vlzECTi1Co.Ly60', 'Saikat', 'Saikat', '', 'Banerjee', 'Laxmi narayan nagar', 'Road no. 3, p.o.r.k.ashram', 'Bela, muzaffarpur', '', 'Muzaffarpur', '', 'BIHAR', '843116', NULL, 'Laxmi narayan nagar', 'Road no. 3, p.o.r.k.ashram', 'Bela, muzaffarpur', '', 'Muzaffarpur', '', 'BIHAR', '843116', NULL, 1, '1990-01-22', 'Debashish Banerjee', '', 2, 1, 2, '2016-12-15 07:59:28', 4, NULL, '2016-12-15 09:54:38'),
(16, 105, 'jpg', '0Et0UfGXku5wrK9FVDPCOF.fLRC4I7xH', 'Roshan', 'Roshan', '', 'Choudhury', '9 Mayfair Rd', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, '9 Mayfair Rd', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, 1, '1979-01-18', 'Kamal V', '', 1, 2, 1, '2016-12-15 22:40:14', 4, NULL, '2016-12-15 23:29:08'),
(17, 234, 'jpg', 'SZxdzO5yz4ySWGlmpGzaf5uDPqOW2N9E', 'Subham', 'Subham', '', 'Goyal', '2nd main', '6th cross', 'Tavarekere', '', 'Bangalore', '', 'KARNATAKA', '560029', NULL, '2nd main', '6th cross', 'Tavarekere', '', 'Bangalore', '', 'KARNATAKA', '560029', NULL, 1, '1995-10-16', 'Pradip Goyal', '', 2, 1, 3, '2016-12-16 01:39:48', 4, NULL, '2016-12-16 01:52:40'),
(18, 4, 'jpg', 'NhMwg0QYoXQ6OInfIdK_gD.3EGLP1utI', 'MousumiA', 'Mousumi', '', 'Bakshi', 'CD 105', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700010', NULL, 'CD 105', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700010', NULL, 1, '1986-01-16', 'P.Bakshi', '', 2, 1, 2, '2016-12-22 05:27:49', 0, NULL, '2017-01-24 08:47:44'),
(19, 89, 'jpg', 'aSnIik6P7e3S08ko56Z4IWgEPOlTfZDN', 'Jitu', 'Jitendra', '', 'Kumar', '97A, Government colony, bansdroni, Kolkata', '', '', '', 'South 24 Parganas', '', 'WEST BENGAL', '700070', NULL, 'S/O= Babulal Marandi, Dhodhri Mandare, Kharagpur', '', '', '', 'Munger', '', 'BIHAR', '811213', NULL, 1, '1994-10-08', 'Babulal Marandi', '', 2, 1, 3, '2016-12-19 01:06:09', 2, NULL, '2016-12-19 02:12:16'),
(20, 62, 'jpg', 'pHYz43VPDw6PWFTilqGTmFmf.TT5qRhv', 'Rohit_Majumder', 'Rohit', '', 'Majumder', 'Ekdalia Place', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, 'Ekdalia Place', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, 1, '1997-10-25', 'Late Subhashis Majumder', '', 2, 1, 3, '2016-12-15 22:45:52', 4, NULL, '2016-12-17 02:12:26'),
(21, 43, 'jpg', '_uQ3Fc2ddS8QZubSyn.yjgd2wl1AkL.P', 'Suravi Parik', 'Suravi', '', 'Parik', '3rd cross, Manasa Pg for ladies, tavrekere main ro', '', '', '', 'Bangalore', '', 'KARNATAKA', '560029', NULL, '3rd cross, Manasa Pg for ladies, tavrekere main ro', '', '', '', 'Bangalore', '', 'KARNATAKA', '560029', NULL, 1, '1996-09-09', 'Sanjay Parik', '', 1, 1, 4, '2016-12-17 05:09:43', 4, NULL, '2016-12-17 05:11:14'),
(22, 114, 'jpg', 'IVJL_O6DodGD7BusGQDKPX7paCMFqm7G', 'dhiraj rite', 'dhiraj', 'mohan', 'rite', 'Sr.No 15/ 21A /1C/3 /1B', 'Flat no 9 Vighnharta angan', 'near Bhintade nagar ambegaon Bk', '', 'Pune', '', 'MAHARASHTRA', '411046', NULL, 'shinganapur road', 'buvasaheb nagar', 'kolki tal phaltan', '', 'Satara', '', 'MAHARASHTRA', '415523', NULL, 1, '1991-01-04', 'mohan rite', '', 2, 1, 3, '2016-12-26 11:56:40', 2, NULL, '2016-12-27 00:41:57'),
(23, 60, 'jpg', 'zJ69XvUzqcOsUh5NgHzBqHX.wMpnAZ2y', 'Rushalee', 'Rushalee', '', 'Goswami', 'A/4,Bansdroni Road.Megha Apartment .', '', '', '', 'South 24 Parganas', '', 'WEST BENGAL', '700070', NULL, 'A/4,Bansdroni Road.Megha Apartment .', '', '', '', 'South 24 Parganas', '', 'WEST BENGAL', '700070', NULL, 1, '1980-01-19', 'Amit Goswami', '', 1, 1, 1, '2016-12-17 04:44:56', 4, NULL, '2016-12-17 05:36:15'),
(25, 109, 'jpg', 'UYCLvBI706NkdCByqrTepTozGp17mkzm', 'Amit kumar', 'Amit', '', 'Kumar', 'vrajgarden shela', 'shanti usiness school', 'ahmedabad', '', 'Ahmedabad', '', 'GUJARAT', '380058', NULL, 'vrajgarden shela', 'shanti usiness school', 'ahmedabad', '', 'Ahmedabad', '', 'GUJARAT', '380058', NULL, 1, '1995-01-15', 'parmanand prasad', '', 2, 1, 3, '2016-12-17 04:29:37', 4, NULL, '2016-12-17 08:34:29'),
(26, 147, 'jpg', 'oCnycjxSlVCAIv7N0ipXgzdjbtWWhIOW', 'Mahith', 'Mahith', 'Kumar', 'Reddy', '#306,new general boys hostel,the oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560068', NULL, '#306,new general boys hostel,the oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560068', NULL, 1, '1997-04-11', 'Adi Narayana reddy', '', 2, 1, 4, '2016-12-19 03:51:32', 2, NULL, '2016-12-19 04:13:19'),
(27, 181, 'jpg', 'UQtPmQjsbhDIsy5kk0agcQO53rcuevEX', 'Rajesh', 'Rajesh', '', 'Nath', '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, 1, '1995-03-08', 'Veerappa', '', 2, 1, 4, '2016-12-19 08:48:59', 4, NULL, '2016-12-19 08:55:23'),
(28, 132, 'jpg', 'EW62SnUfwbjklISx_M_JbZXq0hulbylv', 'Umar', 'Umarta', '', 'Das', 'A-10-30', 'Kalyani', '', '', 'Nadia', '', 'WEST BENGAL', '741235', NULL, 'A-10-30', 'Kalyani', '', '', 'Nadia', '', 'WEST BENGAL', '741235', NULL, 1, '1998-04-28', 'Uttam Kumar Das', '', 2, 1, 1, '2016-12-19 12:20:00', 4, NULL, '2016-12-19 12:34:16'),
(30, 129, 'jpg', 'Er1Wytx3hyeyjcVHXtot3mlHEHzWMmEB', 'Aadrik_Das', 'Aadrik', '', 'Das', '17J, Ballygunge Station Road', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, '17J, Ballygunge Station Road', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700019', NULL, 1, '1996-06-04', 'Kallol Das', '', 2, 1, 1, '2016-12-19 13:04:18', 4, NULL, '2016-12-20 07:44:50'),
(31, 104, 'jpg', 'uIEbxsaKDGX32hnio023swCsSlOmpmYs', 'HennaPalta', 'Henna', '', 'Palta', '164/D/4/4 Lake Gardens', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700045', NULL, '164/D/4/4 Lake Gardens', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700045', NULL, 1, '1998-03-10', 'Rabindra Kumar Palta', '', 1, 1, 1, '2016-12-19 13:01:05', 4, NULL, '2016-12-20 07:50:15'),
(32, 145, 'jpg', 'JaSKjeLiE1I1cw01YPnMIvQxARPKX8gF', 'RishiRajGandotra', 'Rishi', 'Raj', 'Gandotra', '34A,Ratu SARKAR LANE,Rajendra Chatrra Bhawan', '4th floor,Room no. 68', 'Kolkata 700073', '', 'Kolkata', '', 'WEST BENGAL', '700073', NULL, '3C,B Block,Krishna Apartment', 'Howrah motor,Jodaphatak Road', 'Dhanbad,Jharkhand', '', 'Dhanbad', '', 'JHARKHAND', '826001', NULL, 1, '1998-12-15', 'Sunil Kumar Gandotra', '', 2, 1, 4, '2016-12-21 03:23:22', 4, NULL, '2016-12-21 03:49:45'),
(33, 127, 'jpg', '0VxAA6kYqAsb.eCdsfVHbvzxXN47esHl', 'ajay', 'ajay', 'kumar', 'raju', '#306, new general boys hostel, the Oxford college ', '', '', '', 'Bangalore', '', 'KARNATAKA', '560068', NULL, '#306, new general boys hostel, the Oxford college ', '', '', '', 'Bangalore', '', 'KARNATAKA', '560068', NULL, 1, '1996-07-08', 'p. venkatasubbha raju', '', 2, 1, 4, '2016-12-19 08:18:38', 4, NULL, '2016-12-21 06:37:28'),
(34, 146, 'jpg', 'xVcf7FFNlLfS0V7UVnpJCPWXNJMeG0R6', 'Jivesh Madan', 'Jivesh', '', 'Madan', '491/22 Bank Street, Gandhi Nagar', '', '', '', 'Gurgaon', '', 'HARYANA', '122001', NULL, '491/22 Bank Street, Gandhi Nagar', '', '', '', 'Gurgaon', '', 'HARYANA', '122001', NULL, 1, '1998-08-06', 'Diwan Chand', '', 2, 1, 2, '2016-12-21 06:25:17', 4, NULL, '2016-12-21 06:43:42'),
(35, 150, 'jpg', 'C63bYH78ZsCgHQXHB6eRouvGLx58qZzg', 'Saurav', 'Saurav', 's', 'Shetty', '#357 1st B main', '7th block , Koramangala', 'Bangalore', '', 'Bangalore', '', 'KARNATAKA', '560095', NULL, '#357 1st B main', '7th block , Koramangala', 'Bangalore', '', 'Bangalore', '', 'KARNATAKA', '560095', NULL, 1, '1996-11-21', 'M Shekhar Shetty', '', 2, 1, 1, '2016-12-22 05:08:50', 4, NULL, '2016-12-22 07:32:51'),
(36, 156, 'jpg', '1OXlGsY4tZUDSyBOPoxJSKd6oU5xf33C', 'RitoshreeDe', 'Ritoshree', '', 'De', '35,Chakraberia road south', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700025', NULL, '35,Chakraberia road south', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700025', NULL, 1, '1991-08-08', 'Anjan De', '', 1, 1, 2, '2016-12-23 08:40:37', 4, NULL, '2016-12-23 09:07:01'),
(37, 10, 'jpg', 'BdXp_8aVBRTspKi6sKb8iYF.uXRwYsfB', 'AritraB', 'Aritra', '', 'Bhattacharya', '4RB,3/6,Sector 3,Phase 2,Purbachal', '', '', '', 'North 24 Parganas', '', 'WEST BENGAL', '700097', NULL, '4RB,3/6,Sector 3,Phase 2,Purbachal', '', '', '', 'North 24 Parganas', '', 'WEST BENGAL', '700097', NULL, 1, '1993-10-05', 'Kumar Kanti Bhattacharya', '', 2, 1, 1, '2016-12-23 23:44:02', 4, NULL, '2016-12-23 23:51:04'),
(38, 168, 'jpg', '2N79UGKO4xQQAuKPVv4_ns8AMNLV9nQO', 'Sakshya', 'Sakshya', '', 'Sen', 'Kabristan road', 'Nasriganj digha patna', '', '', 'Patna', '', 'BIHAR', '800012', NULL, 'Kabristan road', 'Nasriganj digha patna', '', '', 'Patna', '', 'BIHAR', '800012', NULL, 1, '1994-08-15', 'Prabhu nath roy sen', '', 2, 1, 3, '2016-12-25 07:17:09', 4, NULL, '2016-12-25 07:19:15'),
(39, 166, 'jpg', 'kkdprqvX4ehtzKanJZR2jhs4WM.lXlEX', 'Rikhil', 'Rikhil', 'Prakash', 'Patel', '227, gamatal vistar dadhvav', '', '', '', 'Sabarkantha', '', 'GUJARAT', '383460', NULL, '227, gamatal vistar Dadhwav', '', '', '', 'Sabarkantha', '', 'GUJARAT', '383460', NULL, 1, '1995-10-24', 'Prakash Patel', '', 2, 1, 2, '2016-12-25 07:16:40', 4, NULL, '2016-12-25 07:27:53'),
(40, 169, 'jpg', '7ehSkGdmu28ZX8cOzDU9u6CcLahbIbYl', 'Shubham', 'Shubham', 'Kumar', 'Pandey', 'MIG-355', 'Kankarbagh', 'Lohiyanagar', '', 'Patna', '', 'BIHAR', '800020', NULL, 'MIG-355', 'Kankarbagh', 'Lohiyanagar', '', 'Patna', '', 'BIHAR', '800020', NULL, 1, '1995-10-04', 'Biplav nath pandey', '', 2, 1, 1, '2016-12-25 07:28:37', 4, NULL, '2016-12-25 07:30:25'),
(41, 167, 'jpg', 'b2.J_hR3SuBNG5PCRaqapfwpUJq.876Z', 'Himanshu', 'Himanshu', '', 'Bhatia', '22 neelam park soc radhanpur road mahesana', '', '', '', 'Mahesana', '', 'GUJARAT', '384002', NULL, '22 neelam park soc radhanpur road mahesana', '', '', '', 'Mahesana', '', 'GUJARAT', '384002', NULL, 1, '1994-01-26', 'Vinodkumar bhatia', '', 2, 2, 2, '2016-12-25 07:12:17', 4, NULL, '2016-12-25 07:53:40'),
(42, 138, 'jpg', 'BInzJNNjAntiH0Yqj3kDpr3N9svKOf68', 'Glamour', 'Glamour', '', 'Hasnu', 'R A Road', '3rd A Cross, Ejipura', 'Viveknagar post', '', 'Bangalore', '', 'KARNATAKA', '560047', NULL, 'Dhansiripar Village', 'P O Doyapur', 'DIMAPUR', '', 'Dimapur', '', 'NAGALAND', '797112', NULL, 1, '1998-04-07', 'Late S K Hasnu', '', 2, 1, 3, '2016-12-28 14:38:46', 3, NULL, '2016-12-29 04:32:46'),
(43, 99, 'jpg', 'GF0qwRU_nKKi3zn8jF3gLjMoSyoVrqsA', 'Snehal Gandotra', 'Snehal', '', 'Gandotra', 'Krishna Apartment', '3C B Block,Joraphatak Road', 'Dhanbad', '', 'Dhanbad', '', 'JHARKHAND', '826001', NULL, 'Krishna Apartment', '3C B Block,Joraphatak Road', 'Dhanbad', '', 'Dhanbad', '', 'JHARKHAND', '826001', NULL, 1, '1993-08-28', 'Sunil Kumar Gandotra', '', 2, 1, 1, '2016-12-26 05:40:37', 3, NULL, '2016-12-29 04:43:24'),
(44, 34, 'jpg', 'OjFaZJ2MtvYlajTnJ2LUO4JCR7eCBJu_', 'Let_Me_See', 'Riya', '', 'Sen', 'Patti Gali', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700025', NULL, 'Patti Gali', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700025', NULL, 1, '1980-01-01', 'Good Father', '', 1, 3, 3, '2016-12-09 04:22:22', 3, NULL, '2016-12-30 08:40:01'),
(45, 188, 'jpg', '6RpnREtsHsB6up43Er6Z6hn4aoqSgZkG', 'Simranjeet singh', 'Simranjeet', 'Singh', 'Bamhrah', '86/1 samrat nagar', 'Ishanpur', '', '', 'Ahmedabad', '', 'GUJARAT', '382443', NULL, '86/1 samrat nagar', 'Ishanpur', '', '', 'Ahmedabad', '', 'GUJARAT', '382443', NULL, 1, '1994-03-04', 'Paramjeet singh', '', 2, 1, 1, '2016-12-30 08:55:50', 4, NULL, '2016-12-30 11:57:37'),
(46, 193, 'jpg', 'IhWSAv.CT4H.9vaT3ZDwoc_xY.lr5LJX', 'nainpreetbhatia', 'Nainpreet', '', 'Bhatia', '613, Sandipani A, K. J. Somaiya Institute of Manag', 'Vidyavihar East', '', '', 'Mumbai', '', 'MAHARASHTRA', '400077', NULL, '74-B', 'Air Base Colony', 'Kadma, Jamshedpur', '', 'East Singhbhum', '', 'JHARKHAND', '831005', NULL, 1, '1993-03-03', 'Charanjit Singh Bhatia', '', 1, 1, 4, '2016-12-28 13:25:55', 4, NULL, '2016-12-30 12:55:58'),
(48, 165, '', '', 'Dev2', 'Devanshu', 'A', 'Pancharia', 'A-13 /18B', 'Near Ranjitnagar', 'Jamnagar', '', 'Jamnagar', '', 'GUJARAT', '361005', NULL, 'A-13 /146', 'Near Ranjitnagar', 'Jamnagar', '', 'Jamnagar', '', 'GUJARAT', '361005', NULL, 1, '1980-09-20', 'Anil KApoor', '', 2, 1, 1, '2016-12-25 07:08:11', 1, 'Father\'s name is wrong', '2017-01-24 00:04:24'),
(52, 37, 'jpg', 'GiAkZWd.i_rvu7WH7hBlNKjiSv3YAAiA', 'Cruise', 'Shreyes', 'null', 'G', '#71/1,13th main road,hongasandra,begur road', 'null', 'null', '', 'Bangalore', '', 'KARNATAKA', '560068', NULL, '#71/1,13th main road,hongasandra,begur road', 'null', 'null', '', 'Bangalore', '', 'KARNATAKA', '560068', NULL, 1, '1995-11-28', 'Gopalaiah', '', 2, 1, 1, '2017-04-06 13:33:17', 1, 'dyd', '2017-04-06 08:05:32'),
(70, 206, '', '', 'Anuj jain', 'anuj', '', 'jain', 'sagar', 'sagar', 'Sagar', '', 'Sagar', '', 'MADHYA PRADESH', '470002', NULL, 'sagar', 'sagar', 'sagar', '', 'Sagar', '', 'MADHYA PRADESH', '470002', NULL, 1, '1993-10-19', 'Anil', '', 2, 1, 4, '2016-12-09 00:17:10', 1, 'dcfsd', '2017-07-24 07:50:59'),
(71, 2, 'png', 'QH6M1yDWIfFpra73e5_vg_.OHv5BBu4a', 'pd1', 'Pradip', 'fsdfdd  ssdfs', 'Das', 'Sankhari Pukur', 'zxczxc', 'aaa', '', 'Burdwan', '', 'West Bengal', '700001', NULL, 'Sankhari Pukur', 'zxczxc', 'sdfsdf', '', 'Burdwan', '', 'West Bengal', '361005', NULL, 1, '2001-11-30', 'zxzXzx', 'Nanji bhai', 1, 2, 4, '2018-08-08 07:16:25', 1, '', '2018-09-04 05:25:54'),
(72, 58, 'jpg', 'e09JavUVvFkaOX2Y4Pfh43uuxiOTVdx2', 'DMaj', 'Debarshi', '', 'Majumder', '78 Dr. Sundari Mohan Avenue, 2nd floor.', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700014', NULL, '78 Dr. Sundari Mohan Avenue, 2nd floor.', '', '', '', 'Kolkata', '', 'WEST BENGAL', '700014', NULL, 1, '1995-01-11', 'Chandan Majumder', '', 2, 1, 1, '2016-12-19 14:14:48', 1, 'fsdf', '2017-08-28 05:43:27'),
(73, 183, '', '', 'Randhir', 'randhir', '', 'kumar', 'chandragupt institute of management Patna', 'educational area', 'bus stand patna', '', 'Patna', '', 'BIHAR', '800001', NULL, 'chandragupt institute of management Patna', 'educational area', 'bus stand patna', '', 'Patna', '', 'BIHAR', '800001', NULL, 1, '1995-08-18', 'Ranjan sharma', '', 2, 1, 3, '2016-12-27 08:55:33', 1, 'dfgfdg', '2017-08-28 05:56:30'),
(74, 178, '', '', 'Ravi hn', 'Ravichandran', '', 'H', '24/d, pavana,  1st cross,  17th main,  muneshwara ', 'Girinagar', '', '', 'Bangalore', '', 'KARNATAKA', '560026', NULL, '24/d, pavana,  1st cross,  17th main,  muneshwara ', 'Girinagar', '', '', 'Bangalore', '', 'KARNATAKA', '560026', NULL, 1, '1991-02-28', 'Nagaraj hv', '', 2, 1, 3, '2016-12-27 04:34:10', 1, 'fdgd', '2017-08-28 06:05:15'),
(75, 116, '', '', 'Aman', 'Aman', '', 'Singhal', '134, Salkia School Road', 'Sukhi Sansar Apartments', 'Block E,  Flat 518', '', 'Howrah', '', 'WEST BENGAL', '711106', NULL, '134, Salkia School Road', 'Sukhi Sansar Apartments', 'Block E,  Flat 518', '', 'Howrah', '', 'WEST BENGAL', '711106', NULL, 5, '1998-07-20', 'Mukesh Singhal', '', 2, 1, 1, '2016-12-08 05:43:31', 1, 'sdfs', '2017-08-30 06:24:53'),
(78, 51, 'jpg', 'UQtPmQjsbhDIsy5kk0agcQO53rcuevEX', 'Rajesh1', 'Rajesh', '', 'Nath', '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, 1, '1995-03-08', 'Veerappa', '', 2, 1, 4, '2016-12-19 08:48:59', 4, NULL, '2016-12-19 08:55:23'),
(80, 218, 'jpg', 'UQtPmQjsbhDIsy5kk0agcQO53rcuevEX', 'Rajesh3', 'Rajesh', '', 'Nath', '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, 1, '1995-03-08', 'Veerappa', '', 2, 1, 4, '2016-12-19 08:48:59', 4, NULL, '2016-12-19 08:55:23'),
(82, 12, 'jpg', 'UQtPmQjsbhDIsy5kk0agcQO53rcuevEX', '19jan test', 'Rajesh', '', 'Nath', '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, 1, '1995-03-08', 'Veerappa', '', 2, 1, 4, '2016-12-19 08:48:59', 4, NULL, '2016-12-19 08:55:23'),
(83, 170, '', '', 'gfhfgh', 'asdasdas', '', 'tyutyuty', 'Cd 105', 'aaaa', 'bbbaaaa', '', 'KOLKATA', '', 'WESTBENGAL', '700001', NULL, 'Cd 105', 'aa', 'vvvssss', '', 'KOLKATA', '', 'WESTBENGAL', '700001', NULL, 1, '1997-02-03', 'Dwane Johnson', '', 1, 1, 1, '2018-02-07 07:26:06', 1, 'null', '2018-02-07 04:16:49'),
(84, 162, '', '', 'Borrower2', 'Sankhadip23', 'Sankhadip', 'Marylin', 'Cd 105', 'aaaa', 'bbbaaaa', '', 'KOLKATA', '', 'WESTBENGAL', '700001', NULL, 'Cd 105', 'aa', 'vvvssss', '', 'KOLKATA', '', 'WESTBENGAL', '700001', NULL, 1, '2000-01-04', 'Dwane Johnson2', '', 1, 1, 1, '2018-01-25 13:23:07', 1, 'null', '2018-02-08 08:07:10'),
(85, 234, 'jpg', '7c.GvL38xSfZQcBHyNf1SoSZrrOzK9eH', 'Sanjoyy10', 'SANJ', 'jeet', 'Das==', 'Millnium park', 'rs22222', 'rs3', '', 'KOLKATA', '', 'WESTBENGAL', '700001', NULL, 'Millnium park', '11', 'ps3', '', 'KOLKATA', '', 'WESTBENGAL', '700001', NULL, 1, '1994-03-16', 'Nanji bhai', 'MOMs', 2, 2, 3, '2018-08-17 09:02:06', 1, '', '2018-08-17 03:32:44'),
(88, 17, 'jpg', 'UQtPmQjsbhDIsy5kk0agcQO53rcuevEX', 'Rajesh1111', 'Rajesh', '', 'Nath', '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, 1, '1995-03-08', 'Veerappa', '', 2, 1, 4, '2016-12-19 08:48:59', 4, NULL, '2016-12-19 08:55:23'),
(90, 231, 'jpg', 'UQtPmQjsbhDIsy5kk0agcQO53rcuevEX', 'Rajesh4', 'Rajesh', '', 'Nath', '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, '#306,new general boys hostel,the Oxford college of', '', '', '', 'Bangalore', '', 'KARNATAKA', '560060', NULL, 1, '1995-03-08', 'Veerappa', '', 2, 1, 4, '2016-12-19 08:48:59', 4, NULL, '2016-12-19 08:55:23'),
(91, 28, 'jpg', 'lqChl_kgq4IzzjHIa9g9_stOYH_ZvzWC', 'VahidRT', 'Badi', 'Badi', 'Vahidhushen', 'Wankaner', 'Bazar', '9', '', 'Rajkot', '', 'GUJARAT', '363621', NULL, 'Wankaner', 'Bazar', '9', '', 'Rajkot', '', 'GUJARAT', '363621', NULL, 1, '1996-05-12', 'fdgfdgsdfsdf', 'dfgdfg', 2, 1, 2, '2018-09-04 09:42:34', 1, '', '2018-09-04 04:41:01'),
(92, 2350, 'jpg', '', '', 'Sanjoy', 'jeet', 'Das', '', NULL, NULL, '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', NULL, 0, '1994-03-16', 'Nanji bhai', 'aaaaa', 0, 2, 0, NULL, 0, NULL, '2018-11-02 14:25:03'),
(93, 23500, '', 'null', '123444444444440000', '12', '', '56', 'mukhaaaaaaaa', 's', '', '', 'KOLKATA', '', 'West Bengal', '700001', NULL, 'mukhaaaaaaaa', 's', '', '', 'KOLKATA', '', 'West Bengal', '700001', NULL, 0, '1993-08-05', '123599', '123', 1, 2, 1, '2018-11-17 10:41:55', 1, NULL, '2018-11-17 05:14:11'),
(95, 23511, '', 'null', 'ehehe', 'eheh', 'ehet', 'heth', 'etheth', 'ethet', '', '', 'KOLKATA', '', 'West Bengal', '700001', NULL, 'y5y5', '5y5y', '5y5', '', 'KOLKATA', '', 'WB', '700051', NULL, 1, '1967-11-15', 'y5y5y', '5y5y', 1, 2, 1, '2018-11-22 07:21:47', 1, NULL, '2018-11-26 02:30:55'),
(96, 235, 'png', 'Wfm0_MwmC56aG8uCYAQck6Cj3SlnE2Rf', 'SANJU BHAI', 'SANJOY', 'KUMAR', 'DAS', '1234', 'Topsia', 'science city', '', 'KOLKATA', '', 'West Bengal', '700001', NULL, '1234', 'Topsia', 'science city', '', 'KOLKATA', '', 'West Bengal', '700001', NULL, 0, '1988-04-06', 'SANJ DAD', 'SANJ MOM', 1, 1, 1, '2018-12-13 10:16:36', 1, NULL, '2018-12-13 05:17:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user_profile_basics`
--
ALTER TABLE `tbl_user_profile_basics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_display_name` (`display_name`),
  ADD KEY `fk_admin_id` (`fk_admin_id`),
  ADD KEY `fk_user_id` (`fk_user_id`) USING BTREE,
  ADD KEY `fk_profession_type_id` (`fk_profession_type_id`),
  ADD KEY `fk_gender_id` (`fk_gender_id`),
  ADD KEY `fk_marital_status_id` (`fk_marital_status_id`),
  ADD KEY `fk_residence_status_id` (`fk_residence_status_id`),
  ADD KEY `f_name` (`f_name`),
  ADD KEY `m_name` (`m_name`),
  ADD KEY `l_name` (`l_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user_profile_basics`
--
ALTER TABLE `tbl_user_profile_basics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
