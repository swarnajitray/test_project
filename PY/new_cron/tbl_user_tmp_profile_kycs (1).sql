-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:15 PM
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
-- Table structure for table `tbl_user_tmp_profile_kycs`
--

CREATE TABLE `tbl_user_tmp_profile_kycs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL,
  `fk_kyc_template_id` bigint(20) UNSIGNED NOT NULL,
  `kyc_data` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_front_file_uploaded` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `front_file_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `front_s3_media_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_back_file_uploaded` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `back_file_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `back_s3_media_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kyc_addition_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_profile_kyc_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Null->New Addition, Not Null->Modification',
  `kyc_status` enum('P','V','R') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P' COMMENT 'P->Pending Verification, V->Verification In Process, R->Rejected',
  `is_aadhaar_check` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_message_kyc` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_notes` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_encryted` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Temporary User KYC';

--
-- Dumping data for table `tbl_user_tmp_profile_kycs`
--

INSERT INTO `tbl_user_tmp_profile_kycs` (`id`, `fk_user_id`, `fk_kyc_template_id`, `kyc_data`, `is_front_file_uploaded`, `front_file_name`, `front_s3_media_version`, `is_back_file_uploaded`, `back_file_name`, `back_s3_media_version`, `kyc_addition_datetime`, `fk_profile_kyc_id`, `kyc_status`, `is_aadhaar_check`, `admin_message_kyc`, `fk_admin_id`, `admin_notes`, `is_encryted`) VALUES
(11, 1, 29, '471871882814', 1, '1506004991_front.jpg', 'ABAQlxGIuWiGoQQQd1cD9npjQkCkJn8f', 0, NULL, NULL, '2017-09-21 14:20:13', NULL, 'P', 'N', NULL, 1, 'null', 'N'),
(12, 196, 32, NULL, 1, '1506004512_front.jpg', 'mey0EcgOl.vRXEQl7gnRcFXS_W02Q1Ep', 0, NULL, NULL, '2017-09-21 14:20:47', NULL, 'P', NULL, NULL, 1, 'null', 'N'),
(21, 162, 29, '1234567', 1, '1506054469_front.jpg', 'tShDDXvYqmkqN5Mr52X7d3sD3V4Pl.M_', 1, '1506054445_back.jpg', 'a5AhJdUx4dk061bxDctsGkZJ6m7rdNlZ', '2017-09-22 04:27:25', NULL, 'P', 'N', NULL, NULL, NULL, 'N'),
(28, 4, 29, '471871882820', 0, NULL, NULL, 0, NULL, NULL, '2018-02-07 11:03:46', NULL, 'P', 'N', NULL, NULL, NULL, 'N'),
(29, 7, 29, '471871882821', 0, NULL, NULL, 0, NULL, NULL, '2018-02-07 11:05:31', NULL, 'P', 'N', NULL, NULL, NULL, 'N'),
(31, 52, 3, '20056535', 0, NULL, NULL, 0, NULL, NULL, '2018-05-22 13:22:35', NULL, 'P', NULL, NULL, NULL, NULL, 'Y'),
(33, 17, 3, '121212', 1, '1527228322_front.png', 'zdc0humJeyoNlQnh.DSKcurytB9QXOHl', 1, '1527228323_back.png', 'uE4es8r74ZflK.4EhPjbls4rujRKN1xD', '2018-05-25 06:05:22', NULL, 'P', NULL, NULL, 1, 'null', 'Y'),
(35, 2, 6, '1234556', 1, '1541481307_front.jpg', 'IZuWxmuD1cSABVu7V6VcDd_9BPDvAXtb', 1, '1531979078_back.png', 'w9kJDb67yMBHt5zMecV3vX_bMbb3yM6H', '2018-07-19 05:44:36', NULL, 'P', NULL, NULL, 1, 'null', 'N'),
(37, 2, 25, '111122', 0, NULL, NULL, 0, NULL, NULL, '2018-07-21 12:45:44', NULL, 'P', NULL, NULL, NULL, NULL, 'N'),
(38, 2, 24, '111122', 0, NULL, NULL, 0, NULL, NULL, '2018-07-21 12:46:19', NULL, 'P', NULL, NULL, NULL, NULL, 'N'),
(47, 2, 3, '12121', 0, '1533644802_front.png', 'Q61IHCR74jMeUyEB1vxXkh4W7G7igiMX', 0, '1527228323_back.png', 'uE4es8r74ZflK.4EhPjbls4rujRKN1xD', '2018-08-07 07:06:39', NULL, 'P', NULL, NULL, 1, '', 'Y'),
(60, 2290, 6, '930036636879', 1, '1533724941_front.png', 'vndcZ9s5j4i.KHKsUgU.bK1XnbFAmvvr', 1, '1533724944_back.png', 'watn4MMJ6GPWhgxacI49gWNbFOrs0eDj', '2018-08-08 10:42:20', NULL, '', NULL, NULL, 1, NULL, 'N'),
(61, 93, 6, '1234556123', 1, '1534856368_front.png', '3FhmRGBUjtUJuDE0XS6mEQM_605XbX38', 1, '1534856369_back.png', 'TxIhiW_lC62GYkp0_eHPtdlwKIm6wOo9', '2018-08-21 12:59:27', NULL, 'P', NULL, NULL, NULL, NULL, 'N'),
(64, 2355, 1, '93003663688000', 1, '1536138956_front.jpg', 'GZAAZ0YxPCWeSWXkX4MQpIBFYhNGydGn', 1, '1536138957_back.png', '_AI1op2DKx9aijwfyNu9S4VhFw8lhjM4', '2018-09-05 09:15:56', NULL, 'P', NULL, NULL, NULL, NULL, 'N'),
(65, 147, 1, NULL, 1, '1536139404_front.jpg', 'dhHlOsxVkoPNcUYNDYRnvE502qY5rwUw', 1, '1536139405_back.png', 'Rr4.Dmmo2cPye03kW7Ue__77SX77MRlR', '2018-09-05 09:23:24', NULL, 'P', NULL, NULL, NULL, NULL, 'N'),
(70, 2356, 6, NULL, 0, NULL, NULL, 0, NULL, NULL, '2018-11-08 10:30:55', NULL, 'P', NULL, NULL, NULL, NULL, 'N'),
(73, 2350, 6, NULL, 0, '1544012611_front.jpg', '3BxYtqhuZukoxPbQO87LbxlNSDhNP3ns', 0, '1544012594_back.png', 'hnJQhw0TbbN0x3yHopBNdPc5s64kGoU1', '2018-12-05 12:23:16', NULL, 'P', NULL, NULL, NULL, NULL, 'N'),
(76, 2350, 3, '9300366368809', 0, NULL, NULL, 0, NULL, NULL, '2018-12-06 08:15:24', NULL, 'P', 'Y', NULL, 1, NULL, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user_tmp_profile_kycs`
--
ALTER TABLE `tbl_user_tmp_profile_kycs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_admin_id` (`fk_admin_id`),
  ADD KEY `fk_profile_kyc_id` (`fk_profile_kyc_id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_kyc_template_id` (`fk_kyc_template_id`) USING BTREE,
  ADD KEY `kyc_data` (`kyc_data`),
  ADD KEY `is_encryted` (`is_encryted`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user_tmp_profile_kycs`
--
ALTER TABLE `tbl_user_tmp_profile_kycs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
