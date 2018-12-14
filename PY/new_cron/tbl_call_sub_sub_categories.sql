-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 06:14 PM
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
-- Table structure for table `tbl_call_sub_sub_categories`
--

CREATE TABLE `tbl_call_sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_cat_id` bigint(20) UNSIGNED NOT NULL,
  `fk_sub_cat_id` bigint(20) NOT NULL,
  `subcat_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `added_timestamp` timestamp NOT NULL,
  `status` enum('A','I') COLLATE utf8_unicode_ci NOT NULL COMMENT '''A''->Active,''I''->Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_call_sub_sub_categories`
--

INSERT INTO `tbl_call_sub_sub_categories` (`id`, `fk_cat_id`, `fk_sub_cat_id`, `subcat_name`, `added_timestamp`, `status`) VALUES
(1, 6, 26, 'Eligibility Information Given', '2018-02-01 08:57:47', 'A'),
(2, 6, 26, 'Enhancement -Pending Balance', '2018-02-01 08:58:15', 'A'),
(3, 6, 26, 'Late Payment Charges', '2018-02-01 08:58:42', 'A'),
(4, 6, 26, 'Payment Reversal', '2018-02-01 08:59:03', 'A'),
(5, 6, 26, 'Payment related Query', '2018-02-01 08:59:26', 'A'),
(6, 7, 27, 'School Passing year_2018', '2018-02-01 08:59:43', 'A'),
(7, 7, 27, 'School Passing Year_2019', '2018-02-01 09:00:44', 'A'),
(8, 7, 27, 'School Passing Year_2020', '2018-02-01 09:00:16', 'A'),
(9, 7, 28, '2017 passout', '2018-02-01 09:01:06', 'A'),
(10, 7, 28, '2018 passout', '2018-02-01 09:01:42', 'A'),
(11, 7, 28, 'Aadhaar Card Not Available', '2018-02-01 09:01:57', 'A'),
(12, 7, 28, 'DOB Not matching with Documents', '2018-02-01 09:02:13', 'A'),
(13, 7, 28, 'Duplicate Users', '2018-02-01 09:02:25', 'A'),
(14, 7, 28, 'Name not matching with Document', '2018-02-01 09:02:39', 'A'),
(15, 7, 28, 'Salaried', '2018-02-01 09:02:51', 'A'),
(16, 7, 28, 'Student ID not available', '2018-02-01 09:03:07', 'A'),
(17, 7, 28, 'Duplicate Aadhaar Card', '2018-02-01 09:03:24', 'A'),
(18, 7, 29, 'Aadhaar Card not uploaded', '2018-02-01 09:03:38', 'A'),
(19, 7, 29, 'Acknowledge Responsibility Video not Uploaded', '2018-02-01 09:03:51', 'A'),
(20, 7, 29, 'All Sections Due', '2018-02-01 09:04:30', 'A'),
(21, 7, 29, 'Basic Info Not captured', '2018-02-01 09:04:43', 'A'),
(22, 7, 29, 'Confirm Identity Video not uploaded', '2018-02-01 09:05:03', 'A'),
(23, 7, 29, 'Education Details not completed', '2018-02-01 09:05:16', 'A'),
(24, 7, 29, 'Email ID not proper_Request Change', '2018-02-01 09:05:30', 'A'),
(25, 7, 29, 'Email ID not Verified', '2018-02-01 09:05:42', 'A'),
(26, 7, 29, 'Facebook like not completed', '2018-02-01 09:05:56', 'A'),
(27, 7, 29, 'Facebook link not captured', '2018-02-01 09:06:08', 'A'),
(28, 7, 29, 'Permanent Address not captured', '2018-02-01 09:06:22', 'A'),
(29, 7, 29, 'Personal Information not captured', '2018-02-01 09:06:39', 'A'),
(30, 7, 29, 'Profile Completed - Sent for Review', '2018-02-01 09:06:52', 'A'),
(31, 7, 29, 'Profile Picture not uploaded', '2018-02-01 09:07:04', 'A'),
(32, 7, 29, 'Residence Address not captured', '2018-02-01 09:07:24', 'A'),
(33, 7, 29, 'Student ID Card Not Uploaded', '2018-02-01 09:07:39', 'A'),
(34, 7, 29, 'Student ID Due to be received', '2018-02-01 09:07:55', 'A'),
(35, 7, 30, 'Sent For Approval', '2018-02-01 09:08:19', 'A'),
(36, 7, 28, 'Lender', '2018-02-01 09:08:36', 'A'),
(37, 8, 31, 'Callback set as per customer', '2018-02-01 09:08:54', 'A'),
(38, 8, 32, 'Call Later', '2018-02-01 09:09:12', 'A'),
(39, 8, 32, 'customer not available', '2018-02-01 09:09:26', 'A'),
(40, 8, 32, 'Wrong No', '2018-02-01 09:09:43', 'A'),
(41, 8, 33, 'Payment Charges Too High', '2018-02-01 09:10:07', 'A'),
(42, 8, 33, 'Loan Amount', '2018-02-01 09:10:26', 'A'),
(43, 8, 33, 'Document Process_Aadhaar', '2018-02-01 09:10:44', 'A'),
(44, 8, 33, 'Document Process_SI', '2018-02-01 09:10:57', 'A'),
(45, 8, 33, 'Doesnot want to Upload Video', '2018-02-01 09:11:14', 'A'),
(46, 8, 33, 'No Need for Money', '2018-02-01 09:11:29', 'A'),
(47, 8, 33, 'App Services not in Line with requirement', '2018-02-01 09:11:46', 'A'),
(48, 8, 33, 'Not ok Providing Parent Info', '2018-02-01 09:12:06', 'A'),
(49, 8, 33, 'Approval Process Delayed', '2018-02-01 09:12:26', 'A'),
(50, 8, 33, 'Customer Service', '2018-02-01 09:12:39', 'A'),
(51, 8, 34, 'Change in Profile', '2018-02-01 09:18:54', 'A'),
(52, 8, 34, 'Limit Enhancement', '2018-02-01 09:19:09', 'A'),
(53, 8, 34, 'Loan process', '2018-02-01 09:19:23', 'A'),
(54, 8, 34, 'Loan Processing Status', '2018-02-01 09:19:34', 'A'),
(55, 8, 35, 'Abusive Caller', '2018-02-01 09:19:58', 'A'),
(56, 8, 32, 'Call Not Tagged', '2018-02-01 09:20:14', 'A'),
(57, 8, 32, 'Blank Call', '2018-02-01 09:20:28', 'A'),
(58, 8, 32, 'Irate Customer', '2018-02-01 09:20:42', 'A'),
(59, 8, 35, 'Language Barrier', '2018-02-01 09:21:00', 'A'),
(60, 8, 32, 'Call Drop', '2018-02-01 09:21:13', 'A'),
(61, 8, 32, 'Call disconnected by the Customer', '2018-02-01 09:21:42', 'A'),
(62, 8, 35, 'Timepass Customer', '2018-02-01 09:22:08', 'A'),
(63, 8, 36, 'Transferred to Service Team', '2018-02-01 09:22:22', 'A'),
(64, 8, 36, 'Transferred to CollectionTeam', '2018-02-01 09:22:36', 'A'),
(65, 8, 36, 'Transferred to Onboarding Team', '2018-02-01 09:22:46', 'A'),
(66, 9, 37, 'Phone ringing No Answer', '2018-02-01 09:23:16', 'A'),
(67, 9, 37, 'Disconnected', '2018-02-01 09:23:28', 'A'),
(68, 9, 37, 'Out Of Coverage Area', '2018-02-01 09:23:44', 'A'),
(69, 9, 37, 'Switched off', '2018-02-01 09:23:58', 'A'),
(70, 9, 37, 'Busy', '2018-02-01 09:24:16', 'A'),
(71, 9, 37, 'Received then hungup', '2018-02-01 09:24:30', 'A'),
(72, 9, 37, 'No Does not Exist', '2018-02-01 09:24:47', 'A'),
(73, 9, 38, 'Phone ringing No Answer', '2018-02-01 09:25:45', 'A'),
(74, 9, 38, 'Disconnected', '2018-02-01 09:25:59', 'A'),
(75, 9, 38, 'Out Of Coverage Area', '2018-02-01 09:26:11', 'A'),
(76, 9, 38, 'Switched off', '2018-02-01 09:26:34', 'A'),
(77, 9, 38, 'Busy', '2018-02-01 09:26:47', 'A'),
(78, 9, 38, 'Received then hungup', '2018-02-01 09:26:59', 'A'),
(79, 9, 38, 'No Does not Exist', '2018-02-01 09:27:10', 'A'),
(80, 9, 39, 'Phone ringing No Answer', '2018-02-01 09:27:23', 'A'),
(81, 9, 39, 'Disconnected', '2018-02-01 09:27:35', 'A'),
(82, 9, 39, 'Out Of Coverage Area', '2018-02-01 09:27:49', 'A'),
(83, 9, 39, 'Switched off', '2018-02-01 09:28:03', 'A'),
(84, 9, 39, 'Busy', '2018-02-01 09:28:16', 'A'),
(85, 9, 39, 'Received then hungup', '2018-02-01 09:28:30', 'A'),
(86, 9, 39, 'No Does not Exist', '2018-02-01 09:28:39', 'A'),
(87, 10, 40, 'Fake Documents', '2018-02-01 09:33:34', 'A'),
(88, 10, 41, 'Approved', '2018-02-01 09:33:48', 'A'),
(89, 10, 40, 'Aadhaar Card number not matching with document', '2018-02-01 09:34:00', 'A'),
(90, 10, 40, 'Aadhaar upload not Clear', '2018-02-01 09:34:16', 'A'),
(91, 10, 40, 'Acknowledge Responsibility Video not in line with Guidelines', '2018-02-01 09:34:30', 'A'),
(92, 10, 40, 'Basic Information not matching with Documents', '2018-02-01 09:34:56', 'A'),
(93, 10, 40, 'College ID card not Clear', '2018-02-01 09:35:08', 'A'),
(94, 10, 40, 'Confirm Identity Video not in line with Guidelines', '2018-02-01 09:41:53', 'A'),
(95, 10, 40, 'Education Details incorrect', '2018-02-01 09:42:07', 'A'),
(96, 10, 40, 'Permanent Address not matching with Documents', '2018-02-01 09:42:18', 'A'),
(97, 10, 40, 'Personal Information incorrect', '2018-02-01 09:42:30', 'A'),
(98, 10, 40, 'Profile Picture not as per guidelines', '2018-02-01 09:42:44', 'A'),
(99, 10, 40, 'Residence Address not in Line as per guidelines', '2018-02-01 09:42:59', 'A'),
(100, 10, 42, 'Aadhaar Card number not matching with document', '2018-02-01 09:43:12', 'A'),
(101, 10, 42, 'Aadhaar upload not Clear', '2018-02-01 10:41:07', 'A'),
(102, 10, 42, 'Acknowledge Responsibility Video not in line with Guidelines', '2018-02-01 10:41:34', 'A'),
(103, 10, 42, 'Basic Information not matching with Documents', '2018-02-01 10:41:49', 'A'),
(104, 10, 42, 'College ID card not Clear', '2018-02-01 10:42:03', 'A'),
(105, 10, 42, 'Confirm Identity Video not in line with Guidelines', '2018-02-01 10:42:18', 'A'),
(106, 10, 42, 'Education Details incorrect', '2018-02-01 10:42:29', 'A'),
(107, 10, 42, 'Permanent Address not matching with Documents', '2018-02-01 10:42:42', 'A'),
(108, 10, 42, 'Personal Information incorrect', '2018-02-01 10:42:55', 'A'),
(109, 10, 42, 'Profile Picture not as per guidelines', '2018-02-01 10:43:07', 'A'),
(110, 10, 42, 'Residence Address not in Line as per guidelines', '2018-02-01 10:43:20', 'A'),
(111, 10, 41, 'Profile Approved_Handwritten ID Card_Supporting Document Uploaded', '2018-02-01 10:44:13', 'A'),
(112, 10, 41, 'Profile Approved_Student ID Due_ Admit Card/Registration Certificate submitted', '2018-02-01 10:45:49', 'A'),
(113, 10, 42, 'Profile Approved_Backlog Documents Uploaded', '2018-02-01 10:47:36', 'A'),
(114, 7, 28, 'Less than 18 years', '2018-07-04 05:08:15', 'A'),
(115, 8, 35, 'Blank Call', '2018-07-04 05:10:56', 'A'),
(116, 8, 35, 'Irate Customer', '2018-07-04 05:26:23', 'A'),
(117, 8, 35, 'Do not Call', '2018-07-04 05:26:23', 'A'),
(118, 7, 43, '2018 passout', '2018-09-17 09:00:57', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_call_sub_sub_categories`
--
ALTER TABLE `tbl_call_sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cat_id` (`fk_cat_id`),
  ADD KEY `fk_sub_cat_id` (`fk_sub_cat_id`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_call_sub_sub_categories`
--
ALTER TABLE `tbl_call_sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
