-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:13 PM
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
-- Table structure for table `tbl_call_approver_assignment`
--

CREATE TABLE `tbl_call_approver_assignment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approver_id` bigint(20) UNSIGNED DEFAULT '0',
  `fk_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fk_sub_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fk_disposition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_call_approver_assignment`
--

INSERT INTO `tbl_call_approver_assignment` (`id`, `caller_id`, `approver_id`, `fk_user_id`, `fk_sub_cat_id`, `fk_disposition_id`, `added_timestamp`) VALUES
(1, 6, 7, 235, 29, 138, '2018-10-25 07:53:26'),
(2, 11, 11, 30, 19, 135, '2018-10-25 06:41:25'),
(3, 6, 0, 27, 29, 127, '2018-10-30 07:23:37'),
(4, 11, 11, 28, 19, 123, '2018-10-25 05:11:35'),
(5, 6, 0, 25, 29, 102, '2018-10-30 07:23:37'),
(6, 6, 0, 23, 29, 99, '2018-10-25 07:53:26'),
(7, 11, 11, 22, 19, 90, '2018-10-25 05:11:35'),
(8, 6, 0, 221, 29, 85, '2018-10-30 07:23:37'),
(9, 6, 0, 219, 29, 79, '2018-10-30 07:23:37'),
(10, 6, 0, 20, 29, 72, '2018-10-25 07:53:26'),
(11, 11, 11, 19, 19, 69, '2018-10-25 05:11:35'),
(12, 6, 0, 18, 29, 66, '2018-10-30 07:23:37'),
(13, 6, 0, 17, 29, 63, '2018-10-30 07:23:37'),
(14, 11, 11, 13, 19, 58, '2018-10-25 05:11:35'),
(15, 6, 0, 12, 29, 57, '2018-10-25 07:53:26'),
(16, 6, 0, 11, 29, 55, '2018-10-30 07:23:37'),
(17, 11, 11, 1, 19, 8, '2018-10-25 05:10:47'),
(18, 11, 11, 2, 19, 6, '2018-10-25 05:11:36'),
(19, 6, 0, NULL, 29, NULL, '2018-10-30 07:23:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_call_approver_assignment`
--
ALTER TABLE `tbl_call_approver_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caller_id` (`caller_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_sub_cat_id` (`fk_sub_cat_id`),
  ADD KEY `added_timestamp` (`added_timestamp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_call_approver_assignment`
--
ALTER TABLE `tbl_call_approver_assignment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
