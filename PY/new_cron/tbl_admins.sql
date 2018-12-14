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
-- Table structure for table `tbl_admins`
--

CREATE TABLE `tbl_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `login_pwd` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `f_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `l_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `has_profile_picture` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `file_extension` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'File Extension Name',
  `admin_level` tinyint(1) UNSIGNED NOT NULL COMMENT '1->Super Admin, 2->Junior Admin, 3-> Caller Users,4 ->Caller admin,5->Risk Manager',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0->False, 1->True',
  `last_activity_timestamp` timestamp NULL DEFAULT NULL,
  `last_login_timestamp` timestamp NULL DEFAULT NULL,
  `admin_since_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_role_id` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admins`
--

INSERT INTO `tbl_admins` (`id`, `login_email`, `login_pwd`, `f_name`, `l_name`, `has_profile_picture`, `file_extension`, `admin_level`, `is_active`, `last_activity_timestamp`, `last_login_timestamp`, `admin_since_timestamp`, `fk_role_id`) VALUES
(1, 'admin@mpokket.com', 'e10adc3949ba59abbe56e057f20f883e', 'Super', 'Admin', 0, NULL, 1, 1, '2018-12-13 04:20:47', '2018-12-13 04:20:47', '2016-08-09 08:53:12', 1),
(2, 'samarjit@mpokket.com', 'e10adc3949ba59abbe56e057f20f883e', 'Samarjit', 'Choudhury', 0, NULL, 2, 1, '2018-09-19 05:59:03', '2018-09-19 05:59:03', '2016-11-07 07:33:48', 2),
(3, 'gaurav@mpokket.com', 'e10adc3949ba59abbe56e057f20f883e', 'Gaurav', 'Jalan', 0, NULL, 2, 1, NULL, NULL, '2016-11-07 07:34:47', 2),
(4, 'debjyoti@mpokket.com', 'e10adc3949ba59abbe56e057f20f883e', 'Debjyoti', 'Sarkar', 0, NULL, 2, 1, '2017-07-13 04:44:34', '2017-07-13 04:44:34', '2016-11-07 07:35:21', 2),
(5, 'jradmin@mpokket.com', 'e10adc3949ba59abbe56e057f20f883e', 'Jr.', 'Admin', 0, NULL, 2, 1, '2017-08-10 00:02:58', '2017-08-10 00:02:58', '2016-11-07 08:08:04', 2),
(6, 'caller1@demo.com', '25d55ad283aa400af464c76d713c07ad', 'CALLER', 'NAME', 0, NULL, 3, 1, '2018-11-27 01:11:33', '2018-11-27 01:11:33', '2017-06-29 00:03:33', 3),
(7, 'caller2@demo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Second', 'Users', 0, NULL, 3, 1, '2017-08-03 06:16:16', '2018-01-28 06:42:24', '2017-06-29 00:04:16', 3),
(8, 'caller3@demo.com', 'e10adc3949ba59abbe56e057f20f883e', 'caller', '3', 0, NULL, 3, 1, '2018-02-14 04:40:28', '2018-02-14 04:40:28', '2017-07-10 03:13:57', 3),
(9, 'caller4@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 'caller', '4', 0, NULL, 3, 1, '2017-08-08 07:37:46', '2017-08-08 07:37:46', '2017-07-11 04:25:46', 3),
(10, 'caller5@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 'caller', '5', 0, NULL, 3, 1, '2017-08-10 00:38:46', '2017-08-10 00:38:46', '2017-07-11 04:26:11', 3),
(11, 'caller6@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 'Caller', '6', 0, NULL, 3, 1, '2018-06-01 06:44:33', '2018-06-01 06:44:33', '2017-07-12 04:22:19', 3),
(12, 'caller7@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 'Caller', '7', 0, NULL, 3, 1, '2018-03-06 22:24:12', '2018-03-06 22:24:12', '2017-07-21 05:42:56', 3),
(13, 'dj@demo.com', 'e10adc3949ba59abbe56e057f20f883e', 'dj', 'dj', 0, NULL, 3, 1, '2017-10-03 03:35:05', '2017-10-03 03:35:05', '2017-07-25 07:54:32', 3),
(14, 'sam@demo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Samarjit', 'Samar', 0, NULL, 1, 1, '2017-09-05 00:37:41', '2017-09-05 00:37:41', '2017-07-25 08:06:48', 1),
(15, 'deb@demo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Debashish', 'Roy', 0, NULL, 5, 1, NULL, NULL, '2017-08-04 04:01:22', 5),
(16, 'jw@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 'John', 'Willams', 0, NULL, 5, 1, '2017-08-10 00:50:28', '2017-08-10 00:50:28', '2017-08-04 04:02:10', 5),
(17, 'caller8@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 'Caller', '8', 0, NULL, 3, 1, '2018-06-01 06:43:52', '2018-06-01 06:43:52', '2017-08-08 05:05:18', 3),
(18, 'Approver1@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 'Approver', '1', 0, NULL, 4, 1, '2018-06-04 04:45:10', '2018-06-04 04:45:10', '2017-08-09 00:32:11', 4),
(19, 'abc@demo.com', 'e10adc3949ba59abbe56e057f20f883e', 'abc', 'bcd', 0, NULL, 3, 1, '2018-09-19 06:00:06', '2018-09-19 06:00:06', '2017-09-04 13:31:17', 4),
(21, 'admin1@mpokket.com', 'e10adc3949ba59abbe56e057f20f883e', 'Super', 'Admin', 0, NULL, 1, 1, NULL, NULL, '2018-03-30 11:44:06', 1),
(23, 'palashgcl@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'bandhu_edit', 'palash_edit', 0, NULL, 1, 1, NULL, NULL, '2018-04-03 06:14:31', 1),
(24, 'adminuser@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 'Adminuser', 'ameyo', 0, NULL, 2, 1, '2018-04-10 03:53:18', '2018-04-10 03:53:18', '2018-04-05 09:41:03', 2),
(25, '20jun01@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 'Finance', 'Test', 0, NULL, 6, 1, '2018-06-21 04:52:04', '2018-06-21 04:52:04', '2018-06-20 12:30:50', 6),
(26, 'nabamita@mssspl.com', '25f9e794323b453885f5181f1b624d0b', 'Nabamita', 'Dey', 0, NULL, 5, 1, '2018-09-18 07:47:53', '2018-09-18 07:47:53', '2018-09-14 13:18:55', 5),
(27, 'subhadip@mass.com', '25f9e794323b453885f5181f1b624d0b', 'Subhadip', 'Halder', 0, NULL, 5, 1, NULL, NULL, '2018-09-20 05:50:37', 5),
(28, 'manager@test.risk', '25f9e794323b453885f5181f1b624d0b', 'Test Risk', 'Manager', 0, NULL, 5, 1, NULL, NULL, '2018-09-20 06:48:43', 5),
(29, 'bhaskar.poddar@massoftind.com', '0eafdaa8b814be901ccb993dbf4848d9', 'Bhaskar', 'Poddar', 0, NULL, 2, 1, NULL, NULL, '2018-12-12 06:29:04', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_login_email` (`login_email`) USING BTREE,
  ADD KEY `l_name` (`l_name`),
  ADD KEY `f_name` (`f_name`) USING BTREE,
  ADD KEY `admin_level` (`admin_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
