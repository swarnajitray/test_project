-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 05:28 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cricket_players`
--

DROP TABLE IF EXISTS `cricket_players`;
CREATE TABLE `cricket_players` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `img_name` varchar(255) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cricket_players`
--

INSERT INTO `cricket_players` (`id`, `name`, `address`, `type`, `gender`, `img_name`, `status`) VALUES
(1, 'test', 'first', 'Bowler', 'Female', NULL, 'active'),
(3, 'swarnajit test', 'test address', 'Batsman', 'Male', NULL, 'active'),
(4, 'Riju test', 'test address', 'Batsman', 'Male', NULL, 'active'),
(5, 'Test sides', 'test', 'Bowler', 'Other', NULL, 'active'),
(7, 'sourav', 'kolkata', 'Batsman', 'Male', NULL, 'active'),
(8, 'swarnajit', 'kolkata saltlake', 'keeper', 'Female', NULL, 'active'),
(9, 'Stive Smith', 'Australia', 'Batsman', 'Male', NULL, 'active'),
(10, 'john', 'london', 'Bowler', 'Male', NULL, 'active'),
(11, 'Shayne Miller', 'Boston, MA, USA', 'Batsman', 'Female', NULL, 'active'),
(12, 'Mark chan', 'Massachusetts Ave NW, Washington, DC, USA', 'keeper', 'Male', NULL, 'active'),
(13, 'Edward Semans', 'Texas, USA', 'Bowler', 'Female', NULL, 'active'),
(14, 'Tim Herzinger', 'Omaha, NE, USA', 'Batsman', 'Male', NULL, 'active'),
(15, 'Mauricio Goldman', 'Eureka, KS 67045, USA', 'Batsman', 'Male', NULL, 'active'),
(16, 'swarnajit', 'Dallas, TX, USA', 'Bowler', 'Male', NULL, 'active'),
(17, 'akash', 'test address', 'keeper', 'Female', NULL, 'active'),
(18, 'test file upload', 'tesaer', 'keeper', 'Female', NULL, 'active'),
(19, 'ababab', 'adfdfaf', 'Bowler', 'Female', NULL, 'active'),
(20, 'abir', 'test address', 'keeper', 'Female', '1542459382about.png', 'active'),
(21, 'jonson', 'rbbrbrbr', 'keeper', 'Female', NULL, 'active'),
(23, 'test file upload', 'tesat', 'Bowler', 'Female', NULL, 'active'),
(24, 'fad', 'adfa', 'keeper', 'Female', NULL, 'active'),
(25, 'afda', 'afdaqr', 'keeper', 'Female', NULL, 'active'),
(26, 'swyyy', 'raaaaaaaaa', 'keeper', 'Other', '1542458398Screenshot from 2018-09-15 11-49-07.png', 'active'),
(27, 'devid', 'adfaffs', 'Batsman', 'Female', '1542459382about.png', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `fathers`
--

DROP TABLE IF EXISTS `fathers`;
CREATE TABLE `fathers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fathers`
--

INSERT INTO `fathers` (`id`, `name`, `player_id`, `created_at`, `updated_at`) VALUES
(1, 'sourav', '6', '2018-05-07 03:14:06', '2018-05-21 05:56:35'),
(2, 'rahul', '6', '2018-05-07 03:14:06', '2018-05-07 04:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2018_04_25_071336_crate_admins_table', 1),
(17, '2018_04_26_072648_crate_player_table', 1),
(18, '2018_05_08_041934_parents', 2),
(19, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(20, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(21, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(22, '2016_06_01_000004_create_oauth_clients_table', 3),
(23, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d1b14106058eca479ede1eecf10e776ad82f8e07a16012727b8818f0ef378f62adcf8105b214f209', 1, 3, 'MyApp', '[]', 0, '2018-11-19 01:08:01', '2018-11-19 01:08:01', '2018-11-20 06:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'tM5PuY8q9yjjM74SFJ2HNbUPLmq7OslSgo4xjXLc', 'http://localhost', 1, 0, 0, '2018-05-23 04:36:13', '2018-05-23 04:36:13'),
(2, NULL, 'Laravel Password Grant Client', 'ktCA7Bfgjd0K1rI0l1si1T7pNpCPiPpn8VcRnGYC', 'http://localhost', 0, 1, 0, '2018-05-23 04:36:13', '2018-05-23 04:36:13'),
(3, NULL, 'test personal', 'Q938vhql7xrsYK4a65cmboQwUZtwcXfE2k75LtUL', 'http://localhost', 1, 0, 0, '2018-05-24 01:35:12', '2018-05-24 01:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-05-23 04:36:13', '2018-05-23 04:36:13'),
(2, 3, '2018-05-24 01:35:12', '2018-05-24 01:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('swarnajit.ray@massoftind.com', '$2y$10$4W416K5nv8awWyPGaUmgyetzwVHalY5Z68xl3kIeBW9g2dC69fBZa', '2018-08-16 03:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(15) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `address`, `phone`, `gender`, `email`, `pic`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'swarnajit', 'ad', 6932412395, 'Female', 'admin@gmail.com', '1525682646Screenshot from 2018-03-26 12-24-10.png', 'active', '2018-05-07 03:14:06', '2018-05-07 04:04:52', '2018-05-07 04:04:52'),
(2, 'swarnajit', 'tes', 6932412395, 'Female', 'sds@sds', '1525688586about.png', 'active', '2018-05-07 04:53:06', '2018-05-07 04:53:06', NULL),
(6, 'test player2', 'tes', 6932412395, 'male', 'sdqws@sds', '1525688586about.png', 'active', '2018-05-07 04:53:06', '2018-05-07 04:53:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `player_role`
--

DROP TABLE IF EXISTS `player_role`;
CREATE TABLE `player_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_role`
--

INSERT INTO `player_role` (`id`, `player_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '2018-05-09 03:14:06', '2018-05-23 04:04:52'),
(2, '1', 2, '2018-05-07 03:14:06', '2018-05-07 04:04:52'),
(3, '1', 3, '2018-05-07 03:14:06', '2018-05-07 04:04:52'),
(4, '2', 1, '2018-05-07 03:14:06', '2018-05-07 04:04:52'),
(5, '2', 2, '2018-05-07 03:14:06', '2018-05-07 04:04:52'),
(6, '2', 3, '2018-05-07 03:14:06', '2018-05-07 04:04:52'),
(7, '6', 3, '2018-05-09 05:21:40', '2018-05-09 05:21:40'),
(8, '6', 3, '2018-07-19 03:30:50', '2018-07-19 03:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'batting', '2018-05-07 03:14:06', '2018-05-07 04:04:52'),
(2, 'blowing', '2018-05-07 03:14:06', '2018-05-07 04:04:52'),
(3, 'fielding', '2018-05-07 03:14:06', '2018-05-07 04:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'swarnajit', 'swarnajit.ray@massoftind.com', '$2y$10$V8ChrwvaQZVZN/hnITQNCuVPcM2kMy8Fk7B5LZv7Gr2nPEKLGHI2q', 'vZiIoTUyglDHifv5MWEJ4NoIiMtGbhAO4zNpBtTdMksbXMH5xxGGF5rWcGQV', '2018-05-03 23:48:52', '2018-05-03 23:48:52'),
(2, 'Swarnajit Ray 2', 'swarnajit.ray2@massoftind.com', '$2y$10$0W6UcwqxY6rshW7nxR.wi.ZQTeDrjsB.57.yv50Bo5EHm5cl1UX16', 'jk23VdyGRICXUBBBTdwNzMlTcENC8TlnPhQtDefaQKmzqTAeadEKHRGA2Z50', '2018-10-08 07:32:34', '2018-10-08 07:32:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cricket_players`
--
ALTER TABLE `cricket_players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fathers`
--
ALTER TABLE `fathers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `players_email_unique` (`email`);

--
-- Indexes for table `player_role`
--
ALTER TABLE `player_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cricket_players`
--
ALTER TABLE `cricket_players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `fathers`
--
ALTER TABLE `fathers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `player_role`
--
ALTER TABLE `player_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
