-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 11:24 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'staffselary', '2019-12-07 04:01:39', '2019-12-07 04:01:39'),
(2, 'newcate', '2019-12-07 04:02:44', '2019-12-07 04:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'rajkumar', 'drajkumar420@gmail.com', '01996339334', 'fgdgdfgdfgfd', '2019-12-05 06:52:18', '2019-12-05 06:52:18'),
(2, 'Golam Foysol', 'chondi33@gmail.com', '8801919230963', 'fdxgvxgdzx', '2019-12-06 02:44:29', '2019-12-06 02:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expensecategory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expenseamount` int(11) NOT NULL,
  `expensedate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expensecategory`, `expenseamount`, `expensedate`, `created_at`, `updated_at`) VALUES
(1, 'staffselary', 11122, '2019-12-11', '2019-12-07 04:20:25', '2019-12-07 04:20:25'),
(2, 'newcate', 3333, '2019-12-10', '2019-12-07 05:49:03', '2019-12-07 05:49:03');

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
(3, '2019_12_04_123050_create_reservations_table', 2),
(4, '2019_12_05_121132_create_rooms_table', 3),
(5, '2019_12_05_121556_create_contacts_table', 3),
(6, '2019_12_06_193140_create_staffs_table', 4),
(8, '2019_12_07_092849_create_expenses_table', 5),
(9, '2019_12_07_092603_create_categorys_table', 6);

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
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertoken` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberofperson` int(11) NOT NULL,
  `roomtype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roomnumber` int(11) NOT NULL,
  `roomprice` int(11) NOT NULL,
  `utilities` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utilitiescharge` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `usertoken`, `checkin`, `checkout`, `numberofperson`, `roomtype`, `roomnumber`, `roomprice`, `utilities`, `utilitiescharge`, `totalprice`, `name`, `email`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(5, '5deaa8e711529', '12/09/2019', '12/10/2019', 3, 'Family Room', 5, 1500, 'Reasturant, Laundry, PickupAndDrop', 30, 0, 'Golam Foysol', 'chondi33@gmail.com', '3455543544354354', 0, '2019-12-06 13:15:51', '2019-12-06 13:16:03'),
(6, '5deaa94a1f2b3', '12/11/2019', '12/17/2019', 3, 'Double Room', 10, 1200, 'Gymnesium, Minibar', 20, 0, 'Golam Foysol', 'drajkumar420@gmail.com', '8801919230963', 0, '2019-12-06 13:17:30', '2019-12-06 13:17:41'),
(7, '5decaf600769b', '2019-12-23', '2019-12-25', 2, 'Family Room', 5, 1500, 'SmokingRoom, Reasturant, Laundry', 30, 0, 'maruf', 'mesuq.live@yahoo.com', '01711085530', 1, '2019-12-08 02:08:00', '2019-12-08 02:09:10'),
(11, '5dece0b2a951d', '2019-12-10', '2019-12-20', 2, 'Double Room', 10, 1200, 'SmokingRoom, Reasturant, Laundry, PickupAndDrop', 40, 1240, 'Rajkumar Das', 'chondi33@gmail.com', '01996339334', 0, '2019-12-08 05:38:26', '2019-12-08 05:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomtype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `romnumber` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomtype`, `romnumber`, `price`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'Double Room', 10, 1200, '1564177719.jpg', '2019-12-05 06:42:16', '2019-12-05 06:42:16'),
(3, 'Family Room', 5, 1500, '1037940078.jpg', '2019-12-06 02:51:34', '2019-12-06 02:51:34'),
(5, 'Double Room', 55, 1200, '862391638.jpg', '2019-12-09 03:52:06', '2019-12-09 03:52:06'),
(8, 'Double Room', 7, 1200, '1413674072.jpg', '2019-12-09 04:16:51', '2019-12-09 04:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `name`, `designation`, `email`, `phone`, `address`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'rajkumar', 'PHP developer', 'drajkumar420@gmail.com', '8801919230963', 'sector#7 road#5 home#10, mirpur,dhaka jhhjk jjkjkkk', 120000, '2019-12-06 13:46:52', '2019-12-06 14:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rajkumar', 'chondi66@gmail.com', NULL, '$2y$10$nO0NOb611NPZk2fwyEfc/.lO0Nz4vMXqhifUf4PJlZKq2y2anEmde', 'YeLlChgsy1badXHqnbR6Rf8MRgIH28clCZG7Cn388cRrvHNOs9w5K6v7LW47', '2019-12-04 02:58:41', '2019-12-04 02:58:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
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
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
