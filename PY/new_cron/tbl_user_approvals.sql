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
-- Table structure for table `tbl_user_approvals`
--

CREATE TABLE `tbl_user_approvals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user_id` bigint(20) UNSIGNED NOT NULL,
  `fk_approved_by_admin_id` bigint(20) UNSIGNED NOT NULL,
  `complete_approval_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='First Time User Profile Approval Data';

--
-- Dumping data for table `tbl_user_approvals`
--

INSERT INTO `tbl_user_approvals` (`id`, `fk_user_id`, `fk_approved_by_admin_id`, `complete_approval_timestamp`) VALUES
(3, 101, 2, '2018-10-01 23:00:00'),
(18, 11, 4, '2018-10-01 23:00:00'),
(19, 2350, 4, '2018-10-31 23:00:00'),
(20, 12, 4, '2016-12-17 08:33:29'),
(21, 1, 4, '2016-12-17 08:35:10'),
(22, 22, 4, '2016-12-19 08:04:57'),
(23, 13, 4, '2018-03-31 08:47:01'),
(24, 23500, 4, '2016-12-16 10:42:27'),
(25, 218, 4, '2016-12-19 12:34:16'),
(26, 26, 1, '2016-12-20 02:09:35'),
(27, 4, 4, '2016-12-20 07:47:54'),
(29, 29, 4, '2016-12-21 03:49:45'),
(30, 30, 4, '2016-12-21 06:42:11'),
(31, 31, 4, '2016-12-22 07:32:51'),
(32, 32, 4, '2016-12-22 08:49:24'),
(33, 33, 4, '2016-12-16 09:07:02'),
(34, 34, 4, '2016-12-24 00:01:28'),
(35, 35, 4, '2016-12-25 07:31:18'),
(37, 37, 4, '2016-12-25 07:39:27'),
(38, 38, 4, '2016-12-25 07:53:40'),
(39, 39, 2, '2016-12-27 00:48:18'),
(40, 40, 3, '2016-12-29 04:32:46'),
(41, 41, 3, '2016-12-30 08:41:25'),
(42, 42, 4, '2016-12-16 12:55:58'),
(43, 43, 1, '2017-04-06 08:05:33'),
(44, 44, 1, '2017-07-24 07:51:00'),
(45, 45, 1, '2017-11-16 23:12:51'),
(46, 46, 1, '2017-11-17 06:44:25'),
(47, 206, 4, '2016-12-19 12:34:16'),
(53, 368, 1, '2018-01-25 05:48:36'),
(54, 231, 1, '2018-07-22 07:22:03'),
(55, 280, 4, '2016-12-19 12:34:16'),
(56, 50, 1, '2017-04-06 08:05:33'),
(63, 235555, 1, '2018-11-19 08:55:36'),
(64, 235, 1, '2018-11-28 02:00:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user_approvals`
--
ALTER TABLE `tbl_user_approvals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_id` (`fk_user_id`),
  ADD KEY `fk_approved_by_admin_id` (`fk_approved_by_admin_id`),
  ADD KEY `complete_approval_timestamp` (`complete_approval_timestamp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user_approvals`
--
ALTER TABLE `tbl_user_approvals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
