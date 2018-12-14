-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:03 PM
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
-- Table structure for table `tbl_call_sub_categories`
--

CREATE TABLE `tbl_call_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_cat_id` bigint(20) UNSIGNED NOT NULL,
  `subcat_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `added_timestamp` timestamp NOT NULL,
  `status` enum('A','I') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A' COMMENT '''A''->Active,''I''->Inactive',
  `type` enum('O','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'O' COMMENT '''O''=>Old,N=>''New'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_call_sub_categories`
--

INSERT INTO `tbl_call_sub_categories` (`id`, `fk_cat_id`, `subcat_name`, `added_timestamp`, `status`, `type`) VALUES
(1, 5, 'SUBSUB', '2018-01-05 12:03:56', 'A', 'O'),
(2, 1, 'RS1', '2018-01-05 11:58:16', 'A', 'O'),
(3, 3, 'Not Interested', '2017-07-13 03:33:46', 'A', 'O'),
(4, 4, 'Already Approved', '2017-07-13 00:32:44', 'A', 'O'),
(5, 2, 'Phone Ringing No Answer', '2017-07-10 03:41:59', 'A', 'O'),
(6, 3, 'Disconnected', '2017-08-06 23:39:56', 'A', 'O'),
(7, 3, 'Out of Coverage Area', '2017-08-06 23:39:00', 'A', 'O'),
(8, 2, 'Switched Off', '2017-07-10 03:41:59', 'A', 'O'),
(9, 3, 'No does not exist', '2017-08-06 23:36:08', 'A', 'O'),
(10, 2, 'Busy', '2017-07-10 03:41:59', 'A', 'O'),
(11, 4, 'Received then hungup1', '2018-04-03 11:27:01', 'A', 'O'),
(12, 3, 'Salaried', '2017-07-10 03:43:28', 'A', 'O'),
(13, 3, '<=2017 passout', '2017-07-10 03:43:28', 'A', 'O'),
(14, 3, 'Duplicate User', '2017-07-13 00:27:43', 'A', 'O'),
(15, 3, 'Misbehaving', '2017-07-10 03:43:28', 'A', 'O'),
(16, 5, 'School Student', '2017-08-06 23:46:40', 'A', 'O'),
(17, 3, 'Language Problem', '2017-07-10 03:43:28', 'A', 'O'),
(18, 3, '<=2017 passout\n', '2017-07-10 03:43:28', 'A', 'O'),
(19, 4, 'Approved', '2017-07-10 03:44:07', 'A', 'O'),
(20, 3, 'Not Serviceable', '2017-07-13 00:28:59', 'A', 'O'),
(21, 5, 'Future Prospect', '2017-07-24 00:33:36', 'A', 'O'),
(22, 1, 'Someone else answered', '2017-07-13 00:31:32', 'A', 'O'),
(23, 1, 'Interested but not contactable', '2017-07-17 02:10:59', 'A', 'O'),
(24, 3, '3 Calls made still not contactable', '2017-07-20 01:05:36', 'A', 'O'),
(25, 2, 'hello', '2018-01-05 11:06:50', 'A', 'O'),
(26, 6, 'Loan', '2018-02-13 11:39:52', 'A', 'N'),
(27, 7, 'Future Prospect', '2018-02-01 08:50:28', 'A', 'N'),
(28, 7, 'Ineligible', '2018-02-01 08:51:16', 'A', 'N'),
(29, 7, 'Profile In Process', '2018-02-01 08:51:34', 'A', 'N'),
(30, 7, 'Sent For Approval', '2018-02-01 08:52:02', 'A', 'N'),
(31, 8, 'Callback', '2018-02-01 08:52:52', 'A', 'N'),
(32, 8, 'Contacted', '2018-02-01 08:53:37', 'A', 'N'),
(33, 8, 'Not Interested', '2018-02-01 08:53:58', 'A', 'N'),
(34, 8, 'Profile Approved', '2018-02-01 08:54:19', 'A', 'N'),
(35, 8, 'Waste Call', '2018-02-01 08:54:40', 'A', 'N'),
(36, 8, 'Transfer', '2018-02-01 08:55:14', 'A', 'N'),
(37, 9, 'First Attempt', '2018-02-01 08:55:32', 'A', 'N'),
(38, 9, 'Second Attempt', '2018-02-01 08:55:44', 'A', 'N'),
(39, 9, 'Third Attempt', '2018-02-01 08:55:55', 'A', 'N'),
(40, 10, 'Profile Rejected', '2018-02-01 09:32:10', 'A', 'N'),
(41, 10, 'Profile Approval', '2018-02-01 09:32:22', 'A', 'N'),
(42, 10, 'Sent to Caller', '2018-02-01 09:32:45', 'A', 'N'),
(43, 7, 'Recent Graduate', '2018-09-17 08:59:44', 'A', 'O');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_call_sub_categories`
--
ALTER TABLE `tbl_call_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cat_id` (`fk_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_call_sub_categories`
--
ALTER TABLE `tbl_call_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
