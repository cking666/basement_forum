-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 04:24 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bm_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `content`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'tesss', 1, 'App\\forum', '2022-10-29 05:30:03', '2022-10-29 05:30:03'),
(2, 1, 'tes2', 1, 'App\\forum', '2022-10-29 07:31:02', '2022-10-29 07:31:02'),
(3, 1, 'tesss', 2, 'App\\forum', '2022-10-29 07:31:45', '2022-10-29 07:31:45'),
(4, 1, 'tesss 3', 1, 'App\\forum', '2022-10-29 07:36:57', '2022-10-29 07:36:57'),
(5, 1, 'coba', 2, 'App\\forum', '2022-10-29 07:51:25', '2022-10-29 07:51:25'),
(6, 1, 'reply', 3, 'App\\Comment', '2022-10-29 07:51:53', '2022-10-29 07:51:53'),
(7, 1, 'reply tesss', 1, 'App\\Comment', '2022-10-29 07:53:40', '2022-10-29 07:53:40'),
(8, 1, 'reply', 2, 'App\\Comment', '2022-10-29 07:57:03', '2022-10-29 07:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `user_id`, `title`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'FWSFW', 'fwsfw', '<p>CSacascac</p>', '1667029730.png', '2022-10-28 23:57:59', '2022-10-30 04:37:36'),
(2, 1, 'CDSVDSVDV', 'cdsvdsvdv', '<p>dfdfdsfsdfdsfdfds</p>', '1667030769.jpg', '2022-10-29 01:06:09', '2022-10-30 04:17:37'),
(3, 1, 'cxfxf', 'cxfxf', 'fgsdsgsgd', '1667031547.jpg', '2022-10-29 01:19:07', '2022-10-29 01:19:07'),
(4, 1, 'DSGbfsB', 'dsgbfsb', '<pre>\r\n<code class=\"language-javascript\">(function(){function ka(a,f){CKEDITOR.tools.extend(this,f,{editor:a,id:\"cke-\"+CKEDITOR.tools.getUniqueId(),area:a._.notificationArea});</code></pre>\r\n\r\n<p>hfdgdggdadg</p>', NULL, '2022-10-29 01:30:56', '2022-10-29 02:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `forum_tag`
--

CREATE TABLE `forum_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `forum_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_tag`
--

INSERT INTO `forum_tag` (`id`, `forum_id`, `tag_id`) VALUES
(2, 3, 1),
(4, 4, 2),
(5, 2, 3),
(6, 1, 3),
(7, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2022_10_29_061214_create_forums_table', 2),
(4, '2022_10_29_065354_create_forums_table', 3),
(5, '2022_10_29_075019_create_tags_table', 4),
(6, '2022_10_29_075058_create_forum_tag_table', 4),
(7, '2022_10_29_115806_create_comments_table', 5),
(8, '2022_10_30_043809_create_page_views_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `page-views`
--

CREATE TABLE `page-views` (
  `id` int(10) UNSIGNED NOT NULL,
  `visitable_id` bigint(20) UNSIGNED NOT NULL,
  `visitable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page-views`
--

INSERT INTO `page-views` (`id`, `visitable_id`, `visitable_type`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\forum', '127.0.0.1', '2022-10-29 21:50:40', '2022-10-29 21:50:40'),
(2, 2, 'App\\forum', '127.0.0.1', '2022-10-29 21:50:46', '2022-10-29 21:50:46'),
(3, 1, 'App\\forum', '127.0.0.1', '2022-10-29 21:51:16', '2022-10-29 21:51:16'),
(4, 1, 'App\\forum', '127.0.0.1', '2022-10-29 21:53:42', '2022-10-29 21:53:42'),
(5, 4, 'App\\forum', '127.0.0.1', '2022-10-29 22:17:50', '2022-10-29 22:17:50'),
(6, 4, 'App\\forum', '127.0.0.1', '2022-10-29 22:37:39', '2022-10-29 22:37:39'),
(7, 4, 'App\\forum', '127.0.0.1', '2022-10-29 22:37:42', '2022-10-29 22:37:42'),
(8, 4, 'App\\forum', '127.0.0.1', '2022-10-29 22:37:44', '2022-10-29 22:37:44'),
(9, 4, 'App\\forum', '127.0.0.1', '2022-10-29 22:37:46', '2022-10-29 22:37:46'),
(10, 4, 'App\\forum', '127.0.0.1', '2022-10-29 22:41:00', '2022-10-29 22:41:00'),
(11, 1, 'App\\forum', '127.0.0.1', '2022-10-29 23:40:03', '2022-10-29 23:40:03'),
(12, 1, 'App\\forum', '127.0.0.1', '2022-10-30 00:23:55', '2022-10-30 00:23:55'),
(13, 4, 'App\\forum', '127.0.0.1', '2022-10-30 00:53:52', '2022-10-30 00:53:52'),
(14, 4, 'App\\forum', '127.0.0.1', '2022-10-30 00:56:30', '2022-10-30 00:56:30'),
(15, 1, 'App\\forum', '127.0.0.1', '2022-10-30 04:37:14', '2022-10-30 04:37:14'),
(16, 1, 'App\\forum', '127.0.0.1', '2022-10-30 04:45:08', '2022-10-30 04:45:08'),
(17, 1, 'App\\forum', '127.0.0.1', '2022-10-30 05:59:33', '2022-10-30 05:59:33'),
(18, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:00:02', '2022-10-30 06:00:02'),
(19, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:00:08', '2022-10-30 06:00:08'),
(20, 2, 'App\\forum', '127.0.0.1', '2022-10-30 06:00:12', '2022-10-30 06:00:12'),
(21, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:00:32', '2022-10-30 06:00:32'),
(22, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:09:18', '2022-10-30 06:09:18'),
(23, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:09:55', '2022-10-30 06:09:55'),
(24, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:10:03', '2022-10-30 06:10:03'),
(25, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:10:37', '2022-10-30 06:10:37'),
(26, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:10:56', '2022-10-30 06:10:56'),
(27, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:13:53', '2022-10-30 06:13:53'),
(28, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:14:08', '2022-10-30 06:14:08'),
(29, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:14:31', '2022-10-30 06:14:31'),
(30, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:14:53', '2022-10-30 06:14:53'),
(31, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:16:20', '2022-10-30 06:16:20'),
(32, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:16:58', '2022-10-30 06:16:58'),
(33, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:17:34', '2022-10-30 06:17:34'),
(34, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:18:35', '2022-10-30 06:18:35'),
(35, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:18:48', '2022-10-30 06:18:48'),
(36, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:19:00', '2022-10-30 06:19:00'),
(37, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:19:14', '2022-10-30 06:19:14'),
(38, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:19:33', '2022-10-30 06:19:33'),
(39, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:19:47', '2022-10-30 06:19:47'),
(40, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:20:01', '2022-10-30 06:20:01'),
(41, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:22:51', '2022-10-30 06:22:51'),
(42, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:24:42', '2022-10-30 06:24:42'),
(43, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:30:52', '2022-10-30 06:30:52'),
(44, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:31:04', '2022-10-30 06:31:04'),
(45, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:47:50', '2022-10-30 06:47:50'),
(46, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:47:58', '2022-10-30 06:47:58'),
(47, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:48:50', '2022-10-30 06:48:50'),
(48, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:52:17', '2022-10-30 06:52:17'),
(49, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:56:36', '2022-10-30 06:56:36'),
(50, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:56:43', '2022-10-30 06:56:43'),
(51, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:57:10', '2022-10-30 06:57:10'),
(52, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:57:18', '2022-10-30 06:57:18'),
(53, 1, 'App\\forum', '127.0.0.1', '2022-10-30 06:57:45', '2022-10-30 06:57:45'),
(54, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:03:49', '2022-10-30 07:03:49'),
(55, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:09:57', '2022-10-30 07:09:57'),
(56, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:10:17', '2022-10-30 07:10:17'),
(57, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:10:27', '2022-10-30 07:10:27'),
(58, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:12:04', '2022-10-30 07:12:04'),
(59, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:12:12', '2022-10-30 07:12:12'),
(60, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:12:41', '2022-10-30 07:12:41'),
(61, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:12:53', '2022-10-30 07:12:53'),
(62, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:13:02', '2022-10-30 07:13:02'),
(63, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:13:33', '2022-10-30 07:13:33'),
(64, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:13:38', '2022-10-30 07:13:38'),
(65, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:13:53', '2022-10-30 07:13:53'),
(66, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:14:06', '2022-10-30 07:14:06'),
(67, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:15:24', '2022-10-30 07:15:24'),
(68, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:15:29', '2022-10-30 07:15:29'),
(69, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:15:44', '2022-10-30 07:15:44'),
(70, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:15:54', '2022-10-30 07:15:54'),
(71, 1, 'App\\forum', '127.0.0.1', '2022-10-30 07:16:09', '2022-10-30 07:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'PHP', 'php', '2022-10-30 01:16:21', '2022-10-30 01:16:21'),
(4, 'Laravel', 'laravel', '2022-10-30 01:16:59', '2022-10-30 01:16:59'),
(5, 'Javascript', 'javascript', '2022-10-30 01:17:08', '2022-10-30 01:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rizki Andika', 'nvtzusy@gmail.com', '$2y$10$.rsZgnQA/okKhRJ9fZ22Z.b0oIDbxQ1B.5ljrkjezApsDrqfp16cO', 'DIzw3bQJ872LTqHFxRTd0ZlMSJxkBdpyRlO2iiL5VnlioODWrys2ZS43Hdlr', '2022-10-28 23:09:28', '2022-10-28 23:09:28'),
(2, 'ceking', 'ckingg9@gmail.com', '$2y$10$6s.8mU87Q6kTrn7dMRaSL.W8XsGadu7htcNyWTDP.nKetCDTHwZZa', 'YqPM5Zmbnnz09LRFZgIKhQDOr7ncjWZfAB1TAfWUEa7koFH2amv4y25Fi5KM', '2022-10-29 23:27:57', '2022-10-29 23:27:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_tag`
--
ALTER TABLE `forum_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page-views`
--
ALTER TABLE `page-views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_tag`
--
ALTER TABLE `forum_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `page-views`
--
ALTER TABLE `page-views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
