-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2024 at 07:45 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mass_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categaries`
--

CREATE TABLE `categaries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categaries`
--

INSERT INTO `categaries` (`id`, `image`, `name`, `created_at`, `updated_at`) VALUES
(1, '1710926086.jpg', 'kajal', '2024-03-20 03:44:46', '2024-03-20 03:44:46'),
(3, '1710926103.jpg', 'preeet kaur', '2024-03-20 03:45:03', '2024-03-20 03:45:03'),
(4, '1710926142.jpg', 'jashan kaur', '2024-03-20 03:45:42', '2024-03-20 03:45:42'),
(5, 'C:\\Users\\Muskaan Yadav\\AppData\\Local\\Temp\\php455A.tmp', 'Clothing', '2024-03-20 04:33:55', '2024-03-20 04:33:55'),
(6, 'C:\\Users\\Muskaan Yadav\\AppData\\Local\\Temp\\php9E54.tmp', 'Information Technology', '2024-03-20 04:35:24', '2024-03-20 04:35:24'),
(8, 'C:\\Users\\Muskaan Yadav\\AppData\\Local\\Temp\\php153.tmp', 'jai mata', '2024-03-20 04:40:11', '2024-03-20 04:40:11'),
(10, 'C:\\Users\\Muskaan Yadav\\AppData\\Local\\Temp\\php8AE3.tmp', 'muskaan yadav', '2024-03-20 04:41:52', '2024-03-20 04:41:52'),
(16, '1710930868.jpg', 'jai mata collection', '2024-03-20 05:04:29', '2024-03-20 05:04:29'),
(25, '1711006612.jpg', 'jai Mata', '2024-03-21 02:06:52', '2024-03-21 02:06:52'),
(26, '1711007939.jpg', 'harman', '2024-03-21 02:28:59', '2024-03-21 02:28:59'),
(29, '1711689405.jpg', 'muskaan', '2024-03-28 23:46:46', '2024-03-28 23:46:46'),
(30, '1711952660.jpg', 'muskaan yadav', '2024-04-01 00:54:21', '2024-04-01 00:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 11, 24, 'hello', '2024-03-27 04:28:50', '2024-03-27 04:28:50'),
(2, 11, 24, 'hello', '2024-03-27 04:41:05', '2024-03-27 04:41:05'),
(3, 11, 24, 'hello', '2024-03-27 04:44:05', '2024-03-27 04:44:05'),
(4, 11, 24, 'hello', '2024-03-27 04:52:00', '2024-03-27 04:52:00'),
(5, 11, 24, 'hello', '2024-03-27 04:52:29', '2024-03-27 04:52:29'),
(6, 11, 24, 'hello', '2024-03-27 04:52:34', '2024-03-27 04:52:34'),
(7, 11, 24, 'hello', '2024-03-27 04:52:54', '2024-03-27 04:52:54'),
(8, 11, 24, 'hello', '2024-03-27 04:52:58', '2024-03-27 04:52:58'),
(9, 11, 24, 'hello', '2024-03-27 05:01:56', '2024-03-27 05:01:56'),
(10, 11, 24, 'hello', '2024-03-27 05:02:02', '2024-03-27 05:02:02'),
(11, 11, 24, 'hello', '2024-03-27 05:03:47', '2024-03-27 05:03:47'),
(12, 11, 24, 'hello', '2024-03-27 05:07:21', '2024-03-27 05:07:21'),
(13, 11, 23, 'hello', '2024-03-27 05:11:21', '2024-03-27 05:11:21'),
(14, 11, 24, 'hiii', '2024-03-27 05:26:43', '2024-03-27 05:26:43'),
(15, 14, 25, 'hii', '2024-03-28 02:55:56', '2024-03-28 02:55:56'),
(16, 14, 25, 'how are you', '2024-03-28 02:56:11', '2024-03-28 02:56:11'),
(17, 14, 25, 'how are you', '2024-03-28 02:56:17', '2024-03-28 02:56:17'),
(18, 15, 27, 'hi how are you', '2024-03-28 03:02:33', '2024-03-28 03:02:33'),
(19, 15, 27, 'hi how are you', '2024-03-28 03:02:39', '2024-03-28 03:02:39'),
(20, 15, 27, 'hii', '2024-03-28 03:07:06', '2024-03-28 03:07:06'),
(21, 15, 24, 'hhh', '2024-03-28 03:09:58', '2024-03-28 03:09:58'),
(22, 15, 24, 'hi', '2024-03-28 03:12:12', '2024-03-28 03:12:12'),
(23, 15, 24, 'hi', '2024-03-28 03:13:27', '2024-03-28 03:13:27'),
(24, 15, 24, 'hi', '2024-03-28 03:13:48', '2024-03-28 03:13:48'),
(25, 15, 24, 'gh', '2024-03-28 03:16:35', '2024-03-28 03:16:35'),
(26, 15, 24, 'hii', '2024-03-28 03:40:59', '2024-03-28 03:40:59'),
(27, 15, 24, 'hii', '2024-03-28 05:04:12', '2024-03-28 05:04:12'),
(28, 15, 24, 'jjj', '2024-03-28 05:04:21', '2024-03-28 05:04:21'),
(29, 5, 26, 'hii', '2024-03-29 00:09:39', '2024-03-29 00:09:39'),
(30, 5, 31, 'hello', '2024-04-01 00:57:11', '2024-04-01 00:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_03_19_100122_create_posts_table', 2),
(7, '2024_03_20_085413_create_categaries_table', 3),
(8, '2024_03_26_095730_alter_users_table', 4),
(9, '2024_03_26_101104_alter_users_table', 5),
(10, '2024_03_26_101457_alter_users_table', 6),
(11, '2024_03_26_101605_alter_users_table', 7),
(12, '2024_03_26_102600_alter_users_table', 8),
(13, '2024_03_26_103010_alter_users_table', 9),
(14, '2024_03_27_083849_create_comments_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `description`, `image`, `category`, `created_at`, `updated_at`) VALUES
(14, NULL, 'clothing brand', 'brand', '1711011433.jpg', NULL, '2024-03-21 03:27:13', '2024-03-21 03:27:13'),
(15, NULL, 'clothing brand', 'brand', '1711011439.jpg', NULL, '2024-03-21 03:27:19', '2024-03-21 03:27:19'),
(16, NULL, 'jass brand', 'brand', '1711011476.jpg', NULL, '2024-03-21 03:27:56', '2024-03-21 03:27:56'),
(17, NULL, 'jass brand', 'brand', '1711011519.jpg', NULL, '2024-03-21 03:28:39', '2024-03-21 03:28:39'),
(18, NULL, 'brand', 'jass', '1711012104.jpg', NULL, '2024-03-21 03:38:24', '2024-03-21 03:38:24'),
(19, NULL, 'brand', 'jass', '1711012128.jpg', NULL, '2024-03-21 03:38:48', '2024-03-21 03:38:48'),
(20, NULL, 'dbvchgfh', 'dhgdhgdg', '1711012165.jpg', NULL, '2024-03-21 03:39:25', '2024-03-21 03:39:25'),
(21, 4, 'dbvchgfh', 'dhgdhgdg', '1711012293.jpg', 16, '2024-03-21 03:41:33', '2024-03-21 03:41:33'),
(22, 4, 'dbvchgfh', 'dhgdhgdg', '1711012298.jpg', 16, '2024-03-21 03:41:38', '2024-03-21 03:41:38'),
(23, 4, 'jai mata collection', 'brand', '1711012462.jpg', 16, '2024-03-21 03:44:22', '2024-03-21 03:44:22'),
(24, 11, 'aman', 'cloth brand', '1711527424.jpg', 1, '2024-03-27 02:47:04', '2024-03-27 02:47:04'),
(25, 14, 'jyoti brand', 'brand', '1711612076.jpg', 18, '2024-03-28 02:17:56', '2024-03-28 02:17:56'),
(26, 14, 'bdfjnb', 'vkjv', '1711613798.jpg', 1, '2024-03-28 02:46:38', '2024-03-28 02:46:38'),
(27, 15, 'jai mata Collection', 'collection', '1711614685.jpg', 1, '2024-03-28 03:01:26', '2024-03-28 03:01:26'),
(28, 5, 'hdhbvcjh', 'vhvhj', '1711688558.jpg', 1, '2024-03-28 23:32:39', '2024-03-28 23:32:39'),
(29, 5, 'hsgcjhs', 'hgjhjh', '1711697682.jpg', 2, '2024-03-29 02:04:42', '2024-03-29 02:04:42'),
(30, 5, 'Clothing', 'brand', '1711697932.jpg', 1, '2024-03-29 02:08:52', '2024-03-29 02:08:52'),
(31, 5, 'hello', 'hello', '1711952732.jpg', 4, '2024-04-01 00:55:32', '2024-04-01 00:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(1, 'muskaan yadav', 'muskan@gmail.com', NULL, '$2y$12$PaJ8smdMU3.FH.3sB708lOUdB4l1EdfzvADrH6hO3yeCZhjaDaFJa', NULL, '2024-03-19 05:42:37', '2024-03-19 05:42:37', NULL),
(2, 'jass kaur', 'jass@gmail.com', NULL, '$2y$12$UfaeU8/hgsaWRM2jwvvo7OgqCWOJRz24bFrMG2m692BbndPT.caNe', NULL, '2024-03-20 02:11:45', '2024-03-20 02:11:45', NULL),
(3, 'jai singh', 'jai@gmail.com', NULL, '$2y$12$nTMrtei.CzGl1lgceMPOH.H12qSpscHTvGO6vG10N9fbsdiNa93wi', NULL, '2024-03-20 02:17:01', '2024-03-20 02:17:01', NULL),
(4, 'harkamal', 'har@gmail.com', NULL, '$2y$12$NOEuVl6Tavjii3QPtdjE6uaMwyMgF26d5LmO7IwtS1EIE82xUVvBy', NULL, '2024-03-21 03:31:12', '2024-03-21 03:31:12', NULL),
(5, 'Muskaan', 'myadav@gmail.com', NULL, '$2y$12$UwmV8JLaK0wUrncYoG030.Ahv86w4bIF1uC6gnkwQjrN/jgJ3SWYq', NULL, '2024-03-21 23:41:17', '2024-03-21 23:41:17', NULL),
(6, 'muskaan yadav', 'k@gmail.com', NULL, '$2y$12$J/nOLO07y.zdv3gfe8F7DuepLuxCiIP.fMJ1o8b6KslFtYO/zDDCG', NULL, '2024-03-26 02:56:05', '2024-03-26 02:56:05', NULL),
(7, 'paramjeet singh', 'paramjeet@gmail.com', NULL, '$2y$12$QpcASIvP6nQ1mXUhJa7x7Od7mdNaUcUoF0JBRV9D0maPnn5/jTgx.', NULL, '2024-03-26 05:38:24', '2024-03-26 05:38:24', '1711451302.jpg'),
(8, 'ammu kaur', 'ammu@gmail.com', NULL, '$2y$12$y3.yc.s5dIpaGffEG3b/Ku8RnTcKU8K9GHbYlhCA.es7BOCv3bktq', NULL, '2024-03-27 02:28:42', '2024-03-27 02:28:42', '1711526321.jpg'),
(9, 'ammu kaur', 'ammu123@gmail.com', NULL, '$2y$12$qlg5kxM.CZ6NKDNyueplq.WcyMrG66sN.7QJ3tlcpP8f9Lmf5mMku', NULL, '2024-03-27 02:42:20', '2024-03-27 02:42:20', '1711527138.jpg'),
(10, 'aman kaur', 'aman123@gmail.com', NULL, '$2y$12$bq0EfLp.0d7Sfj1bUoBEUOUOEu1C9Esd2a9w5enkszxbojr6AY5Vu', NULL, '2024-03-27 02:44:24', '2024-03-27 02:44:24', '1711527263.jpg'),
(11, 'aman kaur', 'aman@gmail.com', NULL, '$2y$12$a6w71ngWMyRZxDAyDj9Y0uwzkXsEtLkhdhuejtrfffS/Yf0jdBKfe', NULL, '2024-03-27 02:46:39', '2024-03-27 02:46:39', '1711527398.jpg'),
(12, 'anjali yadav', 'anjali@gmail.com', NULL, '$2y$12$IYB7mdqHUpDD6U/mDflWSu2j5KEtU278nTcY/G7CnB.3o6jVYp/EW', NULL, '2024-03-27 22:14:26', '2024-03-27 22:14:26', '1711597465.jpg'),
(13, 'harpreet', 'harpreet@gmail.com', NULL, '$2y$12$MDMh/v6ZzCWvSicokUFXQO8gGK82BKdqUjU1cSyylLqi/kUteHx2O', NULL, '2024-03-28 01:58:22', '2024-03-28 01:58:22', '1711610901.jpg'),
(14, 'Jyoti', 'jyoti@gmail.com', NULL, '$2y$12$QG0cJ/8GazF7ZQRVIgrKyOaDbI4ELfmyCkcQ8oRBrTF/kQIhPshjm', NULL, '2024-03-28 02:17:31', '2024-03-28 02:17:31', '1711612050.jpg'),
(15, 'jai mata', 'jai123@gmail.com', NULL, '$2y$12$TK0R6t2xw7FwYmi.MmNr.eQC92TWk5sdaFp0tXGrQYSOlJCLAkflK', NULL, '2024-03-28 03:01:00', '2024-03-28 03:01:00', '1711614659.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categaries`
--
ALTER TABLE `categaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categaries`
--
ALTER TABLE `categaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
