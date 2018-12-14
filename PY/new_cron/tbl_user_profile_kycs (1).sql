-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:16 PM
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
-- Table structure for table `tbl_user_profile_kycs`
--

CREATE TABLE `tbl_user_profile_kycs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Only single active data for each kyc type for each user, inactive ones are history',
  `fk_kyc_template_id` bigint(20) UNSIGNED NOT NULL,
  `kyc_data` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `front_file_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `front_s3_media_version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `back_file_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `back_s3_media_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addition_datetime` timestamp NULL DEFAULT NULL COMMENT 'Copied Date',
  `fk_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_notes` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `is_aadhaar_check` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_profile_kycs`
--

INSERT INTO `tbl_user_profile_kycs` (`id`, `fk_user_id`, `fk_kyc_template_id`, `kyc_data`, `front_file_name`, `front_s3_media_version`, `back_file_name`, `back_s3_media_version`, `addition_datetime`, `fk_admin_id`, `admin_notes`, `approved_timestamp`, `is_active`, `is_aadhaar_check`) VALUES
(5, 5, 32, 'Student Id1', 'jpg', 'LnjS26ZuFBvm.1O7OBSl5gYw1JHrgK7P', 'jpg', 'Zlylu89g15ua_rZsKDMsOlCKy27J_HDM', '2016-11-09 03:42:57', 1, NULL, '2016-11-09 03:46:49', 1, NULL),
(6, 5, 31, 'DL1', 'jpg', 'FDW2LtVlhCighstyeYqfM36BTb0C4Wkz', 'jpg', 'Nojm45hwPG3r_.SzYhvoPUMZ3HZaK6C7', '2016-11-09 03:43:24', 1, NULL, '2016-11-09 03:46:41', 1, NULL),
(7, 4, 32, 'student 1', 'jpg', '0JrpPWEv.TihbQARuu2OTzmBc2dehio8', '', '', '2016-11-09 04:27:49', 1, NULL, '2016-11-09 04:29:47', 1, NULL),
(8, 4, 27, 'Pan1', 'jpg', 'ZcJvrO_FI28tacplZ.5uYVk456I5AJGB', 'jpg', 'z3CvQYefaonlSK1Plm5wmRnrPkMOpeZT', '2016-11-09 04:28:54', 1, NULL, '2016-11-09 04:29:40', 1, NULL),
(9, 6, 32, 'Stud 2', 'jpg', 'hzksckITFM7RUCotoMAZzgDx1cmDBS07', 'jpg', 'Ywd2X4MjgsKvYsoCRmUzJVCeMPWyeSc4', '2016-11-09 05:05:27', 1, NULL, '2016-11-09 05:05:51', 1, NULL),
(10, 6, 30, 'voter id', 'jpg', '5T9Ggy1o9MXeX8VEgLt5wy3aHl2edDhd', 'jpg', 'XlDq4wjOZUpxuDZDga_UliwtwFkcgi0Y', '2016-11-09 05:06:08', 1, NULL, '2016-11-09 05:05:44', 1, NULL),
(12, 8, 32, '', 'jpg', 'Ekv.kr6FFNptddd6WXcwctT_.K_sDFGw', '', '', '2016-11-09 05:48:46', 1, NULL, '2016-11-09 05:48:36', 1, NULL),
(13, 8, 27, 'pan', '', '', '', '', '2016-11-09 05:49:14', 1, NULL, '2016-11-09 05:48:29', 1, NULL),
(14, 31, 32, 's1', 'jpg', 'J3sk5OgzIwtHLZbAWuI3P3CsONyAjR5E', '', '', '2016-11-15 01:41:26', 1, NULL, '2016-11-15 07:19:54', 1, NULL),
(15, 31, 30, 'v1', 'jpg', '6sKsdTyRWld0tVN09aT5XRJGnBGD2WWT', 'jpg', '8cknesYoBsLEA1h0Gz6JuyVPRGAtetR8', '2016-11-15 01:44:08', 1, NULL, '2016-11-15 07:20:03', 1, NULL),
(16, 32, 32, 's2', 'jpg', '7kLj4mprJBwHfzkwc3Z3uI5tid_eE8Ln', '', '', '2016-11-15 02:10:40', 1, NULL, '2016-11-15 07:43:22', 1, NULL),
(17, 32, 31, 'dl1', 'jpg', '1rOSczmla6bcT2N5tdpVVKM5zgyRV3YO', '', '', '2016-11-15 02:11:37', 1, NULL, '2016-11-15 07:43:10', 1, NULL),
(18, 33, 32, 's3', 'jpg', 'lNFJFwWtveDmWAJU7XNI3Wspej.nsbex', 'jpg', 'IsFS7mdcaKpCAcO2DNvW1XJzo3p2vlUc', '2016-11-15 03:10:00', 1, NULL, '2016-11-15 08:43:46', 1, NULL),
(19, 33, 29, 'a1', 'jpg', 'XjKZfXARB15AGaPlkRG2CsL1AULsZ_3L', 'jpg', 'kg6w4HX8X.NtZboWstvKHVkU9F2w40H_', '2016-11-15 03:11:45', 1, NULL, '2016-11-15 08:43:38', 1, 'N'),
(20, 34, 32, 's1', 'jpg', 'Q8.SqYn.mp8uDdYI7yo_RE0wgMGw5mVq', 'jpg', 'ZSOtcBynrR701r1cf3JIvb.ZHK.EVeVZ', '2016-11-15 03:39:57', 1, NULL, '2016-11-15 09:13:09', 1, NULL),
(21, 11, 28, 'p1', 'jpg', 'ZD.5hfXavdoM8O6iAalKzXKzDkEUQeyP', 'jpg', 'LdnSiTzjC_2mzbTnprcW6VLrzs57rani', '2016-11-15 03:40:29', 1, NULL, '2016-11-15 09:12:56', 1, NULL),
(22, 30, 7, 'pan 2', '', '', '', '', '2016-11-15 05:01:20', 1, NULL, '2016-11-15 10:35:06', 1, NULL),
(23, 30, 18, 'Aad 1', '', '', '', '', '2016-11-15 05:03:12', 1, NULL, '2016-11-15 10:34:52', 1, NULL),
(24, 37, 32, 'ID253788272', 'jpg', 'XgtKc3N3myxVRPW0d79Hj8pOuVgTiXlr', 'jpg', '7tyP73HpbUJV38mlfadPm0umptYEH_xN', '2016-11-16 07:32:43', 1, NULL, '2016-11-17 06:31:10', 1, NULL),
(26, 37, 27, 'qwerr', 'jpg', 'Iglky_QQIjY62qjjvfie33pBmAiKJB60', 'jpg', 'zRA1XvQHl5Eiy1jQmN3kRZoCHRrMFn1a', '2016-11-17 01:00:21', 1, NULL, '2016-11-17 06:31:00', 1, NULL),
(31, 206, 7, 'Pan224242424', 't5.jpg', 'iGzYRJ_ubcd9vQ4PpVpLquQiRYd2k3uB', 't3.jpg', 'iOdssAL0tA0_fXe72IeTHFZEcxIFDhnu', '2017-01-03 06:32:27', 1, NULL, '2017-01-03 06:40:42', 1, NULL),
(32, 2, 17, 'PANH002', 't1.jpeg', 'P06_dsuye1ugcoNypXtIRLoYT_Ar7.5j', 'r2.jpeg', 'Ih9PVMJaUN7U9AlPAcp5xxT22uRnmdvZ', '2016-12-13 10:40:45', 1, 'Direct from Admin', '2017-01-24 01:09:44', 1, NULL),
(38, 116, 35, '35dsfdsf', '14811089sdf_front.jpg', 'zGo9EJBzxcHN31IKJ7NEPkLOY.ho4Qao', '', '', '2017-05-23 08:59:01', 1, 'v', '2017-08-30 06:37:50', 1, NULL),
(39, 116, 32, '563658577', '1481108908_front.jpg', 'zGo9EJBhKqHN31IKJ7NEPkLOY.ho4Qao', '', '', '2016-12-07 05:38:01', 1, 'da', '2017-08-30 06:38:59', 1, NULL),
(40, 5, 29, '222222222222', '', '', '', '', '2018-02-07 09:34:16', 1, 'null', '2018-02-07 04:57:33', 1, 'N'),
(41, 4, 29, '471871882813', '', '', '', '', '2018-02-07 09:08:56', 1, 'null', '2018-02-07 05:31:56', 1, 'N'),
(43, 2, 29, 'null', '', '', '', '', '2018-02-07 11:47:11', 1, 'null', '2018-02-07 06:17:37', 1, 'N'),
(45, 23, 17, 'Aadhaar XYZ1234', 'jpg', 'FIMNben9Dvhd59MII8896TmTW.m2TpDL', 'jpg', 'tWyh7MGPUFqUwIR1ZD18QGpDEH8sIPXo', '2016-11-09 01:47:05', 1, 'vxvxc', '2017-08-03 23:12:50', 1, NULL),
(48, 3, 3, '200658', '', '', '', '', '2018-05-22 08:15:23', 1, 'null', '2018-05-22 08:16:20', 1, NULL),
(50, 2350000000, 3, '930036636833', '', '', NULL, NULL, '2018-11-12 01:42:01', 1, NULL, '2018-11-12 01:42:01', 1, 'Y'),
(51, 235000, 3, '930036636833', '', '', NULL, NULL, '2018-11-12 01:18:14', 1, NULL, '2018-11-12 01:18:14', 1, 'Y'),
(52, 23522, 3, '9300366368800', '1542010812_front.png', 'ITbwsO0o.NEx3ntoOTP13fhOiCuC7_tZ', '1542010821_back.png', '57QZuVdk7xSQScxcBSC1wBD6Yl503kxq', '2018-11-12 01:51:39', 1, NULL, '2018-11-12 01:51:39', 1, 'Y'),
(53, 36, 6, '112233', '1534857604_front.png', 'PcPeXk95BTkfxv2fv5D_555_Qf1trcG3', '1534857605_back.png', '9iyFzil4GfwqCMv_A9W4VkPmmrPVUOVk', '2018-08-21 13:20:04', 1, 'null', '2018-08-21 07:50:21', 1, NULL),
(54, 23500, 3, NULL, '', '', NULL, NULL, '2018-11-12 00:54:29', 1, NULL, '2018-11-12 00:54:29', 1, 'Y'),
(55, 236, 3, NULL, '', '', NULL, NULL, '2018-11-12 01:46:14', 1, NULL, '2018-11-12 01:46:14', 1, 'Y'),
(57, 2400, 3, '930036636851', '1542087542_front.jpg', '_6FJgSOvXIL.P8STiEXotxvFlMzLU77x', '1542019697_back.png', '779xpKov9SaVrXewvDHqjXJFNILW1Qrf', '2018-11-12 23:15:37', 1, 'null', '2018-11-12 23:18:14', 1, 'Y'),
(58, 2350, 6, '789', '1542256922_front.jpg', 'YIDdSc1XaO9cEdNpwOoxRypVMAjUyZnM', '1542256925_back.jpg', 'WLl.7Avj9mWzK_ezuKy1nrUzlB.lnNeh', '2018-11-15 04:42:02', 1, 'null', '2018-11-14 23:12:32', 1, NULL),
(62, 23511, 6, 'grg4444444', '1542807381_front.png', 'lsmfL3HCbOP6IxZYfhO_U70C5bHry.JZ', '1542807383_back.jpg', 'skduqlvaK7IYKUg_qVa8EtBbQs6UkrcM', NULL, 6, '', '2018-11-22 06:09:12', 1, NULL),
(67, 2350, 3, '930036636851', '1543922435_front.jpeg', 'eIXrH70ZxHqhZcTyruo1nTLGc7FoEc5F', '1542634438_back.jpg', '50fQlII08GVnCn8bVwquI5rtr7vb7oXf', '2018-11-22 01:52:04', 1, 'null', '2018-11-22 23:53:05', 1, NULL),
(69, 23510, 3, '930036636880', '1544089295_front.jpg', '5OF.MsiqoCgEOofVESnvGrGkjPpxwA1A', '1544089307_back.jpg', 'UQ7zZwanNxf8ICGXPHQ7GYGi8wuPAuW7', '2018-12-06 08:26:11', 1, NULL, '2018-12-06 04:12:12', 1, NULL),
(70, 235123, 6, NULL, '1544446279_front.jpeg', 'enHHWQUXzW9vmneajQdPovWrLfuTsTJx', '1544446300_back.jpg', 'pbOONw97kdVvju1Ig1PRRXYE9jaAk_5D', NULL, 0, NULL, '2018-12-10 07:00:11', 1, NULL),
(71, 235, 3, '930036636898', '1544697803_front.jpeg', '.WOC3Llvor9Yr2fKyWtYurfXz6qtm469', '1544446424_back.png', 'DfzozoLOb8mV1lUEzOCm2xCSm.G8VVZs', '2018-12-12 02:18:17', 1, NULL, '2018-12-13 05:16:09', 1, NULL),
(72, 235, 6, NULL, '1544697815_front.png', 'HJuPnHWesyLjX9_Y4PMiabgAnfVs7I3E', '1544697839_back.jpg', 'dV8O_KLTKm14H0M9WisGEqf31S3VF7gb', '2018-12-13 10:43:37', 1, NULL, '2018-12-13 05:14:07', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user_profile_kycs`
--
ALTER TABLE `tbl_user_profile_kycs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_kyc` (`fk_user_id`,`fk_kyc_template_id`) USING BTREE,
  ADD KEY `fk_user_id` (`fk_user_id`) USING BTREE,
  ADD KEY `fk_admin_id` (`fk_admin_id`),
  ADD KEY `fk_kyc_template_id` (`fk_kyc_template_id`) USING BTREE,
  ADD KEY `kyc_data` (`kyc_data`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user_profile_kycs`
--
ALTER TABLE `tbl_user_profile_kycs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
