-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 03:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sell`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_fields`
--

CREATE TABLE `additional_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_gateway_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additional_fields`
--

INSERT INTO `additional_fields` (`id`, `payment_gateway_id`, `title`, `description`, `required`, `created_at`, `updated_at`) VALUES
(1, 48, 'as', 'as', 0, '2020-05-13 12:18:29', '2020-05-13 12:18:29'),
(2, 48, 'sa', 'asa', 1, '2020-05-13 12:18:59', '2020-05-13 12:18:59'),
(4, 1, 'sa', 'sa', 0, '2020-05-13 12:31:27', '2020-05-13 12:31:27'),
(6, 47, 'your number', 'Enter your number', 1, '2020-05-14 07:58:53', '2020-05-14 07:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1556780563user.png', '$2y$10$klbY/2rpx/nNMdbnwxaK6ulVOHFEKiGHB4CU/fjE1MGO/fSAyB3A2', 1, 'Vw8mCdheMZZDWU0eLVnq6QLa7shk1DkixcUKbdy70toVkRPeIhsaerk1PFhh', '2018-02-28 23:27:08', '2019-07-26 21:21:32', 'Genius Store'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, '2019-09-18 04:47:24', '2019-09-18 21:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 18, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, '2019-09-18 21:22:41', '2019-09-18 21:22:41', NULL),
(7, 'Mr. Pratik', 'pratik@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, 'iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq', '2019-09-18 21:23:16', '2019-09-18 21:23:16', NULL),
(8, 'ashik', 'ashik@gmail.com', '01736937161', 16, '1590310380trn.jpg', '$2y$10$txtolQ/Y9vhVhRx9z8940ubzTyrHwoxqEOR06NXo5NULTVjNgaCbi', 1, NULL, '2020-05-24 02:53:01', '2020-05-24 02:53:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0),
(2, 0, 'Bangla', '1567247534xTuVLrXh.json', '1567247534xTuVLrXh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `ticket_id`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(10, 2, 29, 'sa', '2020-04-23 14:31:49', '2020-04-23 14:31:49', 'Ticket', NULL),
(11, 3, 29, 'd', '2020-04-23 14:35:06', '2020-04-23 14:35:06', 'Ticket', NULL),
(12, 4, 29, 's', '2020-04-23 17:55:54', '2020-04-23 17:55:54', 'Ticket', NULL),
(13, 5, 37, 'hi', '2020-05-02 01:23:28', '2020-05-02 01:23:28', 'Ticket', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `user_seen` int(11) NOT NULL DEFAULT 0,
  `admin_seen` int(11) NOT NULL DEFAULT 0,
  `attachment` varchar(200) NOT NULL DEFAULT 'none',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `user_seen`, `admin_seen`, `attachment`, `created_at`, `updated_at`) VALUES
(14, 10, 'sa', 29, 1, 1, 'none', '2020-04-23 14:31:49', '2020-05-11 11:11:42'),
(15, 10, 'f', 29, 1, 1, 'none', '2020-04-23 14:34:21', '2020-05-11 11:11:42'),
(16, 11, 'd', 29, 1, 0, 'none', '2020-04-23 14:35:06', '2020-04-23 18:42:21'),
(17, 10, 'konai', NULL, 1, 1, 'none', '2020-04-23 14:37:22', '2020-05-11 11:11:42'),
(18, 12, 's', 29, 1, 0, 'none', '2020-04-23 17:55:54', '2020-04-24 13:26:16'),
(19, 12, 'ok', NULL, 1, 1, 'none', '2020-04-23 18:34:24', '2020-04-24 13:26:17'),
(20, 12, 'koi', 29, 1, 0, 'none', '2020-04-24 13:48:04', '2020-04-24 13:51:56'),
(21, 12, 'ho', 29, 1, 0, 'none', '2020-04-24 13:48:09', '2020-04-24 13:51:56'),
(22, 12, 'no', 29, 1, 0, '1587710896Untitled.png', '2020-04-24 13:48:16', '2020-04-24 13:51:56'),
(23, 12, 'eta dekho', NULL, 1, 1, '1587711571New Text Document.txt', '2020-04-24 13:59:31', '2020-04-24 14:11:30'),
(24, 12, 'h', NULL, 1, 1, 'none', '2020-04-24 14:03:09', '2020-04-24 14:11:30'),
(25, 12, 'jani', NULL, 1, 1, 'none', '2020-04-24 14:05:13', '2020-04-24 14:11:30'),
(26, 13, 'hi', 37, 1, 0, 'none', '2020-05-02 01:23:28', '2020-05-02 01:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `admin_withdraws`
--

CREATE TABLE `admin_withdraws` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_withdraws`
--

INSERT INTO `admin_withdraws` (`id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(1, 500, 'sda', '2020-05-24 09:51:50', '2020-05-24 09:51:50'),
(2, 50, 'sds', '2020-05-24 11:40:40', '2020-05-24 11:40:40'),
(3, 50, 'sds', '2020-05-24 11:40:53', '2020-05-24 11:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_district_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `sub_district_id`, `created_at`, `updated_at`) VALUES
(1, 'MograPara', 1, '2020-04-10 03:28:42', '2020-04-10 03:28:57'),
(2, 'Sheworapara', 2, '2020-04-29 01:13:51', '2020-04-29 01:13:51'),
(3, 'Kajipara', 2, '2020-04-29 01:14:01', '2020-04-29 01:14:01'),
(4, 'Taltola', 2, '2020-04-29 01:14:09', '2020-04-29 01:14:09'),
(5, 'Megna', 1, '2020-04-29 01:14:21', '2020-04-29 01:14:21'),
(6, 'Chowrasta', 1, '2020-04-29 01:14:30', '2020-04-29 01:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(14, 5, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-24 00:41:46', '2019-10-03 00:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-24 00:44:13', '2019-10-03 00:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-24 00:45:45', '2019-09-24 00:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 1, 1, '2019-10-12 03:22:03', '2019-10-12 23:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(107, 14, 'No Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(108, 14, 'Local seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(109, 14, 'Non local warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(110, 14, 'International Manufacturer Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(111, 14, 'International Seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(157, 22, 'Black', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(158, 22, 'White', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(159, 22, 'Sliver', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(160, 22, 'Red', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(161, 22, 'Dark Grey', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(162, 22, 'Dark Blue', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(163, 22, 'Brown', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(172, 24, '40', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(173, 24, '22', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(174, 24, '24', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(175, 24, '32', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(176, 24, '21', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(177, 25, 'demo 1', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(178, 25, 'demo 2', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(187, 30, 'Yellow', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(188, 30, 'White', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(189, 31, '22', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(190, 31, '34', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(191, 31, '45', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(195, 20, 'Local seller warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(196, 20, 'No warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(197, 20, 'international manufacturer warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(198, 20, 'Non-local warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(199, 21, 'Symphony', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(200, 21, 'Oppo', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(201, 21, 'EStore', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(202, 21, 'Infinix', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(203, 21, 'Apple', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(243, 33, '1 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(244, 33, '2 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(245, 33, '3 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1568889151top2.jpg', 'https://www.google.com/', 'TopSmall'),
(2, '1568889146top1.jpg', NULL, 'TopSmall'),
(3, '1568889164bottom1.jpg', 'https://www.google.com/', 'Large'),
(4, '1564398600side-triple3.jpg', 'https://www.google.com/', 'BottomSmall'),
(5, '1564398579side-triple2.jpg', 'https://www.google.com/', 'BottomSmall'),
(6, '1564398571side-triple1.jpg', 'https://www.google.com/', 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(9, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700986-min.jpg', 'www.geniusocean.com', 36, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41'),
(10, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700902-min.jpg', 'www.geniusocean.com', 14, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21'),
(12, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700821-min.jpg', 'www.geniusocean.com', 19, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 22:04:20'),
(13, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700676-min.jpg', 'www.geniusocean.com', 57, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36'),
(14, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700595-min.jpg', 'www.geniusocean.com', 3, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30'),
(15, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700464-min.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 06:02:53'),
(16, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700383-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(17, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700322-min.jpg', 'www.geniusocean.com', 50, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(18, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700251-min.jpg', 'www.geniusocean.com', 151, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(20, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699136-min.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(21, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699045-min.jpg', 'www.geniusocean.com', 36, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(22, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698954-min.jpg', 'www.geniusocean.com', 68, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(23, 7, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698893-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(24, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698832-min.jpg', 'www.geniusocean.com', 34, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(25, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15557542831-min.jpg', 'www.geniusocean.com', 40, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Oil & gas', 'oil-and-gas'),
(3, 'Manufacturing', 'manufacturing'),
(4, 'Chemical Research', 'chemical_research'),
(5, 'Agriculture', 'agriculture'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology');

-- --------------------------------------------------------

--
-- Table structure for table `boosts`
--

CREATE TABLE `boosts` (
  `id` int(10) UNSIGNED NOT NULL,
  `boost_category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `paid` int(11) NOT NULL DEFAULT 0,
  `start_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_gateway_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boosts`
--

INSERT INTO `boosts` (`id`, `boost_category_id`, `product_id`, `status`, `paid`, `start_at`, `end_at`, `payment_gateway_id`, `created_at`, `updated_at`) VALUES
(6, 1, 207, 0, 0, '2020-05-27 13:06:25', '2020-05-27 13:06:25', 47, '2020-05-27 07:06:25', '2020-05-27 07:06:25'),
(7, 1, 207, 0, 0, '2020-05-27 13:07:31', '2020-05-27 13:07:31', 47, '2020-05-27 07:07:31', '2020-05-27 07:07:31'),
(8, 1, 207, 0, 0, '2020-05-30 09:54:02', '2020-05-30 09:54:02', 47, '2020-05-30 03:54:02', '2020-05-30 03:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `boost_additionals`
--

CREATE TABLE `boost_additionals` (
  `id` int(10) UNSIGNED NOT NULL,
  `boost_id` int(10) UNSIGNED NOT NULL,
  `additional_field_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boost_categories`
--

CREATE TABLE `boost_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `duration` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boost_categories`
--

INSERT INTO `boost_categories` (`id`, `duration`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1000, 1, '2020-04-29 02:25:47', '2020-04-29 02:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `boost_extra_charges`
--

CREATE TABLE `boost_extra_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `boost_id` int(10) UNSIGNED NOT NULL,
  `extra_charge_rule_id` int(10) UNSIGNED NOT NULL,
  `charge` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boost_extra_charges`
--

INSERT INTO `boost_extra_charges` (`id`, `boost_id`, `extra_charge_rule_id`, `charge`, `created_at`, `updated_at`) VALUES
(4, 7, 2, 20, '2020-05-27 07:07:31', '2020-05-27 07:07:31'),
(5, 8, 2, 20, '2020-05-30 03:54:02', '2020-05-30 03:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `boost_payments`
--

CREATE TABLE `boost_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `boost_id` int(10) UNSIGNED NOT NULL,
  `payment_gateway_id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boost_payment_verifications`
--

CREATE TABLE `boost_payment_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `boost_id` int(10) UNSIGNED NOT NULL,
  `payment_verification_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boost_payment_verifications`
--

INSERT INTO `boost_payment_verifications` (`id`, `boost_id`, `payment_verification_id`, `value`, `created_at`, `updated_at`) VALUES
(5, 7, 4, 'asa', '2020-05-27 07:07:31', '2020-05-27 07:07:31'),
(6, 8, 4, '500', '2020-05-30 03:54:02', '2020-05-30 03:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_week` int(11) NOT NULL DEFAULT 0,
  `brand_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_week`, `brand_category_id`, `name`, `image`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Easy', '1586961093.png', 'tshirt', '2020-04-15 08:31:33', '2020-04-15 08:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `brand_categories`
--

CREATE TABLE `brand_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `show_in_home` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_categories`
--

INSERT INTO `brand_categories` (`id`, `show_in_home`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fashion Brand', '2020-04-15 08:12:21', '2020-04-15 08:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`, `open`, `serial`) VALUES
(4, 'Electronic', 'electric', 1, '1557807287light.png', 1, '1568709131f6.jpg', 0, 4),
(5, 'Fashion & Beauty', 'fashion-and-Beauty', 1, '1557807279fashion.png', 1, '1568709123f1.jpg', 0, 5),
(6, 'Camera & Photo', 'camera-and-photo', 1, '1557807264camera.png', 1, '1568709110f2.jpg', 0, 0),
(7, 'Smart Phone & Table', 'smart-phone-and-table', 1, '1557377810mobile.png', 1, '1568709597f4.jpg', 0, 3),
(8, 'Sport & Outdoor', 'sport-and-Outdoor', 1, '1557807258sports.png', 0, '1568709577f8.jpg', 0, 2),
(9, 'Jewelry & Watches', 'jewelry-and-watches', 1, '1557807252furniture.png', 1, '1568709077f7.jpg', 0, 1),
(10, 'Health & Beauty', 'health-and-beauty', 1, '1557807228trends.png', 1, '1568709067f3.jpg', 0, 6),
(11, 'Books & Office', 'books-and-office', 1, '1557377917bags.png', 1, '1568709050f8.jpg', 0, 7),
(12, 'Toys & Hobbies', 'toys-and-hobbies', 1, '1557807214sports.png', 1, '1568709042f9.jpg', 0, 8),
(13, 'Books', 'books', 1, '1557807208bags.png', 1, '1568709037f10.jpg', 0, 9),
(15, 'Automobiles & Motorcycles', 'automobiles-and-motorcycles', 1, '1568708648motor.car.png', 1, '1568709031f11.jpg', 0, 10),
(16, 'Home decoration & Appliance', 'Home-decoration-and-Appliance', 1, '1568708757home.png', 1, '1568709027f12.jpg', 0, 11),
(17, 'Portable & Personal Electronics', 'portable-and-personal-electronics', 1, '1568878538electronic.jpg', 0, NULL, 1, 12),
(18, 'Outdoor, Recreation & Fitness', 'Outdoor-Recreation-and-Fitness', 1, '1568878596home.jpg', 0, NULL, 1, 13),
(19, 'Surveillance Safety & Security', 'Surveillance-Safety-and-Security', 1, NULL, 0, NULL, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`) VALUES
(1, 2, 'LCD TV', 'lcd-tv', 1),
(2, 2, 'LED TV', 'led-tv', 1),
(3, 2, 'Curved TV', 'curved-tv', 1),
(4, 2, 'Plasma TV', 'plasma-tv', 1),
(5, 3, 'Top Freezer', 'top-freezer', 1),
(6, 3, 'Side-by-Side', 'side-by-side', 1),
(7, 3, 'Counter-Depth', 'counter-depth', 1),
(8, 3, 'Mini Fridge', 'mini-fridge', 1),
(9, 4, 'Front Loading', 'front-loading', 1),
(10, 4, 'Top Loading', 'top-loading', 1),
(11, 4, 'Washer Dryer Combo', 'washer-dryer-combo', 1),
(12, 4, 'Laundry Center', 'laundry-center', 1),
(13, 5, 'Central Air', 'central-air', 1),
(14, 5, 'Window Air', 'window-air', 1),
(15, 5, 'Portable Air', 'portable-air', 1),
(16, 5, 'Hybrid Air', 'hybrid-air', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(2, 22, 97, 'fdh', '2019-10-14 01:57:28', '2019-10-14 01:57:36'),
(3, 22, 176, 'gdfg', '2019-11-13 21:57:05', '2019-11-13 21:57:05'),
(4, 22, 176, 'jghjg', '2019-11-13 21:59:27', '2019-11-13 21:59:27'),
(5, 29, 102, 'dharun', '2020-04-16 00:43:43', '2020-04-16 00:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `subject`, `sent_user`, `recieved_user`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(1, 'dfgdfdsdsdf', 22, 13, 'fdfgdfgfdgdfg', 0, '2019-08-17 08:24:14', '2019-08-17 08:24:14'),
(2, 'dfgdfdsd', 22, 13, 'dasd', 0, '2019-08-17 08:59:40', '2019-08-17 08:59:40'),
(3, 'Order Confirmation', 13, 22, 'EE', 0, '2019-08-19 23:17:26', '2019-08-19 23:17:26'),
(4, 'kinbo', 29, 13, 'kothai', 0, '2020-04-21 04:02:24', '2020-04-21 04:02:24'),
(5, 'ok', 27, 29, 'google', 0, '2020-04-21 04:04:47', '2020-04-21 04:04:47'),
(6, 'hello', 37, 29, 'I am piash', 0, '2020-04-27 17:51:27', '2020-04-27 17:51:27'),
(7, 'iam', 37, 29, 'testing', 0, '2020-05-01 22:53:59', '2020-05-01 22:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 4663, 0, NULL),
(4, 'browser', 'Linux', 221, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 384, 0, NULL),
(6, 'browser', 'Windows 7', 415, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 536, 0, NULL),
(9, 'referral', 'www.google.com', 6, 0, NULL),
(10, 'browser', 'Android', 353, 0, NULL),
(11, 'browser', 'Mac OS X', 502, 0, NULL),
(12, 'referral', 'l.facebook.com', 1, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 1, 0, NULL),
(18, 'browser', 'iPhone', 4, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 0),
(4, 'BDT', '৳', 1, 1),
(6, 'EUR', '€', 1, 0),
(8, 'INR', '₹', 1, 0),
(9, 'NGN', '₦', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `serial` int(11) NOT NULL DEFAULT 0,
  `dis_serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `serial`, `dis_serial`, `created_at`, `updated_at`) VALUES
(2, 'Narayonganj', 2, 2, 3, '2020-04-10 03:09:04', '2020-05-19 09:46:38'),
(3, 'Dhaka', 2, 1, 0, '2020-04-29 01:11:06', '2020-04-30 22:09:15'),
(4, 'Gazipur', 2, 0, 4, '2020-04-29 01:11:41', '2020-05-19 09:46:38'),
(5, 'Chittagong', 3, 1, 1, '2020-04-29 01:11:51', '2020-05-19 09:46:38'),
(6, 'Lakshmipur', 3, 2, 5, '2020-04-29 01:12:08', '2020-05-19 09:46:38'),
(7, 'laxmipur', 3, 3, 2, '2020-04-30 16:47:01', '2020-05-19 09:46:38'),
(8, 'chd', 3, 0, 6, '2020-04-30 16:58:17', '2020-05-19 09:45:55'),
(9, 'noa', 3, 4, 7, '2020-04-30 16:58:17', '2020-05-19 09:45:55'),
(10, 'Munshiganj', 2, 0, 8, '2020-05-19 09:19:58', '2020-05-19 09:45:55'),
(11, 'Madaripur', 2, 0, 9, '2020-05-19 09:19:58', '2020-05-19 09:45:55'),
(12, 'Shariatpur', 2, 0, 10, '2020-05-19 09:19:58', '2020-05-19 09:45:55'),
(13, 'Gopalgonj', 2, 0, 11, '2020-05-19 09:19:58', '2020-05-19 09:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `serial`, `created_at`, `updated_at`) VALUES
(2, 'Dhaka', 1, '2020-04-10 03:01:33', '2020-04-30 21:56:06'),
(3, 'Chittagong', 0, '2020-04-29 01:10:35', '2020-04-29 01:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},</p><p>Your Order Number is {order_number}</p><p>Your order has been placed successfully<br></p>', 1),
(2, 'new_registration', 'Welcome To Royal Commerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `extra_charge_rules`
--

CREATE TABLE `extra_charge_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_gateway_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed` int(11) NOT NULL,
  `from` double NOT NULL,
  `to` double NOT NULL,
  `charge` double NOT NULL,
  `cs` int(11) NOT NULL,
  `cr` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_charge_rules`
--

INSERT INTO `extra_charge_rules` (`id`, `payment_gateway_id`, `title`, `description`, `fixed`, `from`, `to`, `charge`, `cs`, `cr`, `created_at`, `updated_at`) VALUES
(2, 47, 'bkash charge', NULL, 0, 0, 500000, 2, 1, 0, '2020-05-16 13:01:09', '2020-05-16 13:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: center;\"><img src=\"https://i.imgur.com/MGucWKc.jpg\" width=\"350\"></div></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13),
(2, 29, 13),
(3, 29, 29),
(6, 37, 13),
(7, 37, 37);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(6, 93, '156801646314-min.jpg'),
(7, 93, '156801646315-min.jpg'),
(8, 93, '156801646316-min.jpg'),
(22, 129, '15680254328Ei8T0MB.jpg'),
(23, 129, '1568025432wRmpve8d.jpg'),
(24, 129, '1568025432kkRYzLsF.jpg'),
(25, 129, '1568025432zxQBe6Gk.jpg'),
(26, 128, '1568025537sJbDPnFk.jpg'),
(27, 128, '1568025537NBmHxJOz.jpg'),
(28, 128, '1568025537hxqeFbS8.jpg'),
(29, 128, '1568025538zK3tJpmL.jpg'),
(34, 126, '1568025693kKLReNYO.jpg'),
(35, 126, '1568025694Iv3pkz1q.jpg'),
(36, 126, '1568025694T8HhdLVS.jpg'),
(37, 126, '1568025695vTdg7ndt.jpg'),
(38, 125, '15680257894Waz2tuN.jpg'),
(39, 125, '1568025789vd0P4TBv.jpg'),
(40, 125, '15680257899bih5sGh.jpg'),
(41, 125, '156802578924sLIgzl.jpg'),
(42, 124, '1568025825cC2Pmuit.jpg'),
(43, 124, '1568025825EACzLFld.jpg'),
(44, 124, '1568025825MfCyCqtD.jpg'),
(45, 124, '15680258252yabMeAz.jpg'),
(46, 123, '15680258512fKQla5g.jpg'),
(47, 123, '1568025851pIjl0mWp.jpg'),
(48, 123, '1568025851tQw7JXXG.jpg'),
(49, 123, '1568025851ewjtSDkZ.jpg'),
(50, 96, '1568025891wWAAbOjc.jpg'),
(51, 96, '1568025891fyMNeXRy.jpg'),
(52, 96, '1568025891OdV64Tw1.jpg'),
(53, 96, '1568025891xQF7Zufe.jpg'),
(58, 102, '1568026307THs0VQQU.jpg'),
(59, 102, '1568026307jvCscHth.jpg'),
(60, 102, '1568026307g5xMFdx3.jpg'),
(61, 102, '1568026307Z3at0HEM.jpg'),
(62, 101, '1568026331Y6UMgMcI.jpg'),
(63, 101, '1568026331xZbT4OWG.jpg'),
(64, 101, '1568026331y7eIFJXZ.jpg'),
(65, 101, '1568026331i2wH8RI0.jpg'),
(66, 100, '1568026374xCTjQYZ8.jpg'),
(67, 100, '1568026374DzmvqA9d.jpg'),
(68, 100, '1568026374OEH73u5X.jpg'),
(69, 100, '1568026374vZhqRv8c.jpg'),
(70, 99, '15680264120LdBSU1v.jpg'),
(71, 99, '1568026412eMjsI940.jpg'),
(72, 99, '1568026412GFjvHiZv.jpg'),
(73, 99, '15680264122fwGi20d.jpg'),
(78, 97, '1568026469hSlmBpzE.jpg'),
(79, 97, '15680264697AI8LicQ.jpg'),
(80, 97, '15680264691xyFt5Y6.jpg'),
(81, 97, '1568026469dC3hrMz0.jpg'),
(86, 109, '1568026737EBGSE78G.jpg'),
(87, 109, '1568026737B8hO1RRr.jpg'),
(88, 109, '1568026737tf0rwVoz.jpg'),
(89, 109, '1568026737GGIPSqYo.jpg'),
(95, 107, '1568026797FFNrNPxK.jpg'),
(96, 107, '1568026797UwY9ZLfQ.jpg'),
(97, 107, '1568026797Kl6eZLx5.jpg'),
(98, 107, '1568026797h3R48VaO.jpg'),
(99, 107, '15680267989kXwH40I.jpg'),
(100, 106, '1568026836ErM5FJxg.jpg'),
(101, 106, '1568026836VLrxIk0u.jpg'),
(102, 106, '1568026836lgLuMV6p.jpg'),
(103, 106, '1568026836JBUTQX8v.jpg'),
(104, 105, '1568026861YorsLvUa.jpg'),
(105, 105, '1568026861PikoX1Qb.jpg'),
(106, 105, '1568026861SBJqjw66.jpg'),
(107, 105, '1568026861WYh54Arp.jpg'),
(108, 104, '1568026885rmo0LDoo.jpg'),
(109, 104, '15680268851m939o7O.jpg'),
(110, 104, '1568026885fVXYCGKu.jpg'),
(111, 104, '1568026885GDRL3thY.jpg'),
(112, 103, '1568026903LbVQUxIr.jpg'),
(113, 103, '1568026914IpRVYDV4.jpg'),
(114, 103, '15680269141gKO8x5X.jpg'),
(115, 103, '1568026914Q938xXM2.jpg'),
(116, 93, '1568026950y7ihS4wE.jpg'),
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(172, 130, '1568029084hQT5ZO0j.jpg'),
(173, 130, '1568029084ncGXxQzN.jpg'),
(174, 130, '1568029084b0OonKFy.jpg'),
(175, 130, '15680290857TD4iOWP.jpg'),
(180, 114, '1568029158brS7xQCe.jpg'),
(181, 114, '1568029158QlC0tg5a.jpg'),
(182, 114, '1568029158RrN4AEtQ.jpg'),
(187, 112, '1568029210JSAwjRPr.jpg'),
(188, 112, '1568029210EiVUkcK6.jpg'),
(189, 112, '1568029210fJSo5hya.jpg'),
(190, 112, '15680292101vCcGfq8.jpg'),
(191, 111, '1568029272lB0JETcn.jpg'),
(192, 111, '1568029272wF3ldKgv.jpg'),
(193, 111, '1568029272NI33ExCu.jpg'),
(194, 111, '15680292724TXrpokz.jpg'),
(197, 134, '15693932021.jpg'),
(198, 134, '15693932022.jpg'),
(199, 135, '15698200931.jpg'),
(217, 159, '1570085246audi-automobile-car-909907.jpg'),
(218, 159, '1570085246automobile-automotive-car-112460.jpg'),
(219, 160, '1570085654asphalt-auto-automobile-575386.jpg'),
(220, 160, '1570085654asphalt-auto-automobile-831475.jpg'),
(221, 161, '1570086479audi-automobile-car-909907.jpg'),
(222, 162, '1570255905asphalt-auto-automobile-831475.jpg'),
(223, 162, '1570255905audi-automobile-car-909907.jpg'),
(224, 167, '1570874976asphalt-auto-automobile-831475.jpg'),
(225, 167, '1570874976audi-automobile-car-909907.jpg'),
(226, 167, '1570874976automobile-automotive-car-112460.jpg'),
(227, 168, '1570875445automobile-automotive-car-112460.jpg'),
(228, 168, '1570875445automobile-automotive-car-358070.jpg'),
(229, 187, '1586512723soCUkb7J.jpg'),
(230, 187, '1586512723z0xFCCKt.jpg'),
(231, 187, '1586512725HPcUFML4.jpg'),
(232, 189, '15869542951568017804wRS8y4Fi.png'),
(233, 189, '15869542961568018031fQqQOqlb.png'),
(234, 189, '15869542971568027558gLSECTIh.png'),
(235, 189, '15869542981568027631cnmEylRa.png'),
(236, 190, '15869574601568026791NGCCXoMs.png'),
(237, 190, '15869574621568026881R8KnUyJv.png'),
(238, 190, '15869574621568026899SLhVRzQv.png'),
(241, 193, '158810079115.PNG'),
(242, 193, '1588100791Cat.PNG'),
(243, 194, '158810091715.PNG'),
(244, 194, '1588100918Cat.PNG'),
(245, 206, '1590330007watch2.jpg'),
(246, 206, '1590330007watch3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `map_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_contact` tinyint(1) NOT NULL DEFAULT 0,
  `is_faq` tinyint(1) NOT NULL DEFAULT 0,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_check` tinyint(1) NOT NULL DEFAULT 0,
  `cod_check` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `add_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_stock` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT 0,
  `reg_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `cod_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `is_paystack` tinyint(1) NOT NULL DEFAULT 0,
  `paystack_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT 0,
  `paypal_business` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 1,
  `paytm_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT 0,
  `molly_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `molly_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `razorpay_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `maintain_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messenger` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_messenger` int(11) NOT NULL DEFAULT 0,
  `admin_email` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_youtube` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_business`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`, `messenger`, `is_messenger`, `admin_email`, `home_youtube`) VALUES
(1, '159005860515.PNG', '1571567283favicon.png', 'Shotovag', 'Info@example.com', '0123 456789', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', 'COPYRIGHT © 2019. All Rights Reserved By <a href=\"http://geniusocean.com/\">GeniusOcean.com</a>', '#0aab68', '1564224328loading3.gif', '1564224329loading3.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 0, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 1, 1, 0, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 5, 5, 0, 5, 'mail.shotovag.com', '587', 'sell@shotovag.com', 'takwasoft1*', 'info@shotovag.com', 'info', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 1, 10, '1590072489notice.png', 'Already Added To Cart', 0, 0, 1, 1, 0, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#143250', '#02020c', 1, '#ff5500', '#02020c', 0, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 1, 1, 1, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 0, '1566878455404.png', 1, 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1567488562subscribe.jpg', '1571567295logo.png', '1567655174profile.jpg', '#666666', 0, 1, 1, 'shaon143-facilitator-1@gmail.com', '1571567309footers.png', 'tls', 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 1, 'Pay via your Paytm account.', 'live', 1, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 1, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', '<!-- Load Facebook SDK for JavaScript -->\r\n      <div id=\"fb-root\"></div>\r\n      <script>\r\n        window.fbAsyncInit = function() {\r\n          FB.init({\r\n            xfbml            : true,\r\n            version          : \'v6.0\'\r\n          });\r\n        };\r\n\r\n        (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));</script>\r\n\r\n      <!-- Your customer chat code -->\r\n      <div class=\"fb-customerchat\"\r\n        attribution=setup_tool\r\n        page_id=\"220264648887679\"\r\n  theme_color=\"#fa3c4c\">\r\n      </div>', 1, 'piash3700@gmail.com', 'https://www.youtube.com/watch?v=iO_r78EAcjA&list=RDiO_r78EAcjA&start_radio=1');

-- --------------------------------------------------------

--
-- Table structure for table `hidden_charges`
--

CREATE TABLE `hidden_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_gateway_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed` int(11) NOT NULL,
  `from` double NOT NULL,
  `to` double NOT NULL,
  `charge` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(1, 1, 'English', '1570967282kjZ4U7oI.json'),
(2, 0, 'RTL English', '1571461774YqGWmWmv.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `attachment` varchar(100) NOT NULL DEFAULT 'none',
  `admin_seen` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `message`, `sent_user`, `recieved_user`, `seen`, `attachment`, `admin_seen`, `created_at`, `updated_at`) VALUES
(1, 1, 'fdfgdfgfdgdfg', 22, NULL, 0, 'none', 0, '2019-08-17 08:24:14', '2019-08-17 08:24:14'),
(2, 2, 'dasd', 22, NULL, 0, 'none', 0, '2019-08-17 08:59:40', '2019-08-17 08:59:40'),
(3, 2, 'bv', 22, NULL, 0, 'none', 0, '2019-08-17 09:21:24', '2019-08-17 09:21:24'),
(4, 2, 'df', 22, NULL, 0, 'none', 0, '2019-08-17 09:21:27', '2019-08-17 09:21:27'),
(5, 2, 'dfg', 22, NULL, 0, 'none', 0, '2019-08-17 09:21:29', '2019-08-17 09:21:29'),
(6, 3, 'EE', 13, NULL, 0, 'none', 0, '2019-08-19 23:17:26', '2019-08-19 23:17:26'),
(7, 2, 'defgdfghdsfg', 22, NULL, 0, 'none', 0, '2019-08-20 23:34:02', '2019-08-20 23:34:02'),
(8, 1, 'te', 22, NULL, 0, 'none', 0, '2019-08-21 00:19:46', '2019-08-21 00:19:46'),
(9, 4, 'kothai', 29, NULL, 0, 'none', 0, '2020-04-21 04:02:24', '2020-04-21 04:02:24'),
(10, 4, 'eito', 29, NULL, 0, 'none', 0, '2020-04-21 04:04:12', '2020-04-21 04:04:12'),
(11, 5, 'google', 27, NULL, 0, 'none', 1, '2020-04-21 04:04:47', '2020-05-11 11:28:20'),
(12, 5, 'got it', NULL, 29, 1, 'none', 1, '2020-04-21 04:05:30', '2020-05-11 11:28:20'),
(13, 5, 'where', 27, NULL, 0, 'none', 1, '2020-04-21 04:33:11', '2020-05-11 11:28:20'),
(14, 5, 'no', 27, 29, 1, 'none', 1, '2020-04-21 04:45:44', '2020-05-11 11:28:20'),
(15, 5, 'who', NULL, 29, 1, 'none', 1, '2020-04-21 04:47:44', '2020-05-11 11:28:20'),
(16, 5, 'why', 27, 29, 1, 'none', 1, '2020-04-21 04:48:08', '2020-05-11 11:28:20'),
(17, 5, 'ok', NULL, 29, 1, 'none', 1, '2020-04-21 04:48:45', '2020-05-11 11:28:20'),
(18, 5, 'oj', 27, 29, 1, 'none', 1, '2020-04-21 04:49:05', '2020-05-11 11:28:20'),
(19, 5, 'bj', 27, 29, 1, 'none', 1, '2020-04-21 04:49:16', '2020-05-11 11:28:20'),
(20, 5, 'na', 27, 29, 1, 'none', 1, '2020-04-21 05:11:27', '2020-05-11 11:28:20'),
(21, 6, 'I am piash', 37, NULL, 0, 'none', 1, '2020-04-27 17:51:27', '2020-05-11 11:28:52'),
(23, 6, 'I am this', 37, 29, 1, 'none', 1, '2020-05-01 22:49:51', '2020-05-11 11:28:52'),
(38, 7, 'ko', 37, 29, 1, 'none', 1, '2020-05-01 23:19:02', '2020-05-11 11:28:35'),
(39, 7, 'na re', 29, 37, 1, 'none', 1, '2020-05-01 23:19:41', '2020-05-11 11:28:35'),
(40, 7, 'ami ashik', 37, 29, 1, 'none', 1, '2020-05-01 23:23:38', '2020-05-11 11:28:35'),
(41, 7, 'ami piash', 29, 37, 1, 'none', 1, '2020-05-01 23:24:08', '2020-05-11 11:28:35'),
(42, 7, 'bol', 37, 29, 1, 'none', 1, '2020-05-01 23:42:01', '2020-05-11 11:28:35'),
(43, 7, 'got it', 29, 37, 1, 'none', 1, '2020-05-01 23:43:11', '2020-05-11 11:28:35'),
(44, 7, 'vai', 29, 37, 1, 'none', 1, '2020-05-01 23:44:31', '2020-05-11 11:28:35'),
(45, 7, 'bol', 37, 29, 1, 'none', 1, '2020-05-01 23:44:50', '2020-05-11 11:28:35'),
(46, 7, 'hm', 37, 29, 1, '158835816515.PNG', 1, '2020-05-02 01:36:05', '2020-05-11 11:28:35'),
(47, 7, 'na', 37, 29, 1, '1588358303fb_cred.txt', 1, '2020-05-02 01:38:23', '2020-05-11 11:28:35'),
(48, 7, 'f', 37, 29, 1, '1588358334fb_cred.txt', 1, '2020-05-02 01:38:54', '2020-05-11 11:28:35'),
(49, 7, 'no', 37, 29, 1, '1588358534fb_cred.txt', 1, '2020-05-02 01:42:14', '2020-05-11 11:28:35'),
(50, 7, 'ok', 37, 29, 1, '1588358552fb_cred.txt', 1, '2020-05-02 01:42:32', '2020-05-11 11:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_04_10_061646_create_divisions_table', 1),
(2, '2020_04_10_061826_create_districts_table', 1),
(3, '2020_04_10_061843_create_sub_districts_table', 1),
(4, '2020_04_10_061901_create_areas_table', 1),
(6, '2020_04_15_133927_create_brand_categories_table', 2),
(7, '2020_04_15_133928_create_brands_table', 2),
(8, '2020_04_23_103102_create_ticket_categories_table', 3),
(9, '2020_04_27_173209_create_boost_categories_table', 4),
(10, '2020_04_27_173440_create_boosts_table', 5),
(11, '2020_05_13_062537_create_payments_table', 6),
(12, '2020_05_13_142216_create_additional_fields_table', 7),
(13, '2020_05_13_142401_create_payment_verifications_table', 7),
(14, '2020_05_13_142637_create_hidden_charges_table', 7),
(16, '2020_05_22_142435_create_top_ad_categories_table', 8),
(17, '2020_05_22_142545_create_top_ads_table', 8),
(18, '2020_05_22_153724_create_boost_additionals_table', 9),
(19, '2020_05_22_153756_create_boost_payment_verifications_table', 9),
(20, '2020_05_22_155023_create_boost_extra_charges_table', 9),
(21, '2020_05_22_155118_create_top_ad_additionals_table', 10),
(22, '2020_05_22_155138_create_top_ad_payment_verifications_table', 10),
(23, '2020_05_22_155201_create_top_ad_extra_charges_table', 10),
(24, '2020_05_24_150407_create_transactions_table', 11),
(25, '2020_05_24_153949_create_admin_withdraws_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, NULL, 29, NULL, NULL, NULL, 1, '2020-04-09 08:05:23', '2020-04-10 00:13:13'),
(2, 3, NULL, NULL, NULL, NULL, 1, '2020-04-13 07:38:08', '2020-04-15 04:50:21'),
(3, 4, NULL, NULL, NULL, NULL, 1, '2020-04-14 09:13:03', '2020-04-15 04:50:21'),
(4, 5, NULL, NULL, NULL, NULL, 1, '2020-04-17 05:32:31', '2020-04-17 05:37:44'),
(5, 6, NULL, NULL, NULL, NULL, 1, '2020-04-17 06:58:41', '2020-04-20 20:59:41'),
(6, 7, NULL, NULL, NULL, NULL, 1, '2020-04-17 07:04:49', '2020-04-20 20:59:41'),
(7, NULL, 31, NULL, NULL, NULL, 1, '2020-04-17 08:55:10', '2020-04-20 20:59:43'),
(8, NULL, 32, NULL, NULL, NULL, 1, '2020-04-21 02:44:37', '2020-04-24 13:54:10'),
(9, NULL, NULL, NULL, NULL, 8, 1, '2020-04-23 13:58:50', '2020-04-23 23:52:32'),
(10, NULL, NULL, NULL, NULL, 9, 1, '2020-04-23 13:59:30', '2020-04-23 23:52:32'),
(11, NULL, NULL, NULL, NULL, 10, 1, '2020-04-23 14:31:49', '2020-04-23 23:52:32'),
(12, NULL, NULL, NULL, NULL, 10, 1, '2020-04-23 14:34:21', '2020-04-23 23:52:32'),
(13, NULL, NULL, NULL, NULL, 11, 1, '2020-04-23 14:35:06', '2020-04-23 23:52:32'),
(14, NULL, NULL, NULL, NULL, 12, 1, '2020-04-23 17:55:54', '2020-04-23 23:52:32'),
(15, NULL, NULL, NULL, NULL, 12, 1, '2020-04-24 13:48:04', '2020-04-24 13:54:13'),
(16, NULL, NULL, NULL, NULL, 12, 1, '2020-04-24 13:48:09', '2020-04-24 13:54:13'),
(17, NULL, NULL, NULL, NULL, 12, 1, '2020-04-24 13:48:16', '2020-04-24 13:54:13'),
(18, NULL, 33, NULL, NULL, NULL, 1, '2020-04-25 13:15:58', '2020-04-27 14:05:37'),
(19, NULL, 37, NULL, NULL, NULL, 1, '2020-04-25 15:05:36', '2020-04-27 14:05:37'),
(20, NULL, 37, NULL, NULL, NULL, 1, '2020-04-27 17:41:19', '2020-04-27 17:49:37'),
(21, NULL, 37, NULL, NULL, NULL, 1, '2020-04-27 17:42:42', '2020-04-27 17:49:37'),
(22, NULL, NULL, NULL, NULL, 13, 1, '2020-05-02 01:23:28', '2020-05-02 01:47:56'),
(23, NULL, 38, NULL, NULL, NULL, 1, '2020-05-11 22:31:45', '2020-05-11 22:37:33'),
(24, NULL, 29, NULL, NULL, NULL, 1, '2020-05-11 08:36:36', '2020-05-13 04:24:57'),
(25, 8, NULL, NULL, NULL, NULL, 1, '2020-05-12 07:31:25', '2020-05-13 04:24:55'),
(26, 11, NULL, NULL, NULL, NULL, 1, '2020-05-15 08:27:46', '2020-05-15 08:53:49'),
(27, 12, NULL, NULL, NULL, NULL, 1, '2020-05-15 08:38:20', '2020-05-15 08:53:49'),
(28, 13, NULL, NULL, NULL, NULL, 1, '2020-05-15 08:44:46', '2020-05-15 08:53:49'),
(29, 14, NULL, NULL, NULL, NULL, 1, '2020-05-15 10:37:49', '2020-05-21 07:47:38'),
(30, 15, NULL, NULL, NULL, NULL, 1, '2020-05-16 00:46:19', '2020-05-21 07:47:38'),
(31, 16, NULL, NULL, NULL, NULL, 1, '2020-05-16 00:48:59', '2020-05-21 07:47:38'),
(32, 17, NULL, NULL, NULL, NULL, 1, '2020-05-16 00:51:32', '2020-05-21 07:47:38'),
(33, 18, NULL, NULL, NULL, NULL, 1, '2020-05-16 00:55:49', '2020-05-21 07:47:38'),
(34, 19, NULL, NULL, NULL, NULL, 1, '2020-05-16 02:42:41', '2020-05-21 07:47:38'),
(35, 20, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:09:33', '2020-05-21 07:47:38'),
(36, 21, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:10:08', '2020-05-21 07:47:38'),
(37, 22, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:12:39', '2020-05-21 07:47:38'),
(38, 23, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:16:07', '2020-05-21 07:47:38'),
(39, 24, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:17:35', '2020-05-21 07:47:38'),
(40, 25, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:17:58', '2020-05-21 07:47:38'),
(41, 26, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:19:07', '2020-05-21 07:47:38'),
(42, 27, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:27:06', '2020-05-21 07:47:38'),
(43, 28, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:28:54', '2020-05-21 07:47:38'),
(44, 29, NULL, NULL, NULL, NULL, 1, '2020-05-16 03:50:22', '2020-05-21 07:47:38'),
(45, 37, NULL, NULL, NULL, NULL, 1, '2020-05-16 13:55:35', '2020-05-21 07:47:38'),
(46, 38, NULL, NULL, NULL, NULL, 1, '2020-05-18 11:54:17', '2020-05-21 07:47:38'),
(47, 39, NULL, NULL, NULL, NULL, 1, '2020-05-21 04:10:40', '2020-05-21 07:47:38'),
(48, 40, NULL, NULL, NULL, NULL, 1, '2020-05-21 04:22:08', '2020-05-21 07:47:38'),
(49, 41, NULL, NULL, NULL, NULL, 0, '2020-05-21 08:51:24', '2020-05-21 08:51:24'),
(50, NULL, NULL, NULL, 188, NULL, 0, '2020-05-21 08:51:24', '2020-05-21 08:51:24'),
(51, NULL, 39, NULL, NULL, NULL, 1, '2020-05-21 10:48:36', '2020-05-29 09:21:07'),
(52, 42, NULL, NULL, NULL, NULL, 0, '2020-05-24 08:24:41', '2020-05-24 08:24:41'),
(53, 51, NULL, NULL, NULL, NULL, 0, '2020-05-24 08:37:45', '2020-05-24 08:37:45'),
(54, 53, NULL, NULL, NULL, NULL, 0, '2020-05-24 08:39:24', '2020-05-24 08:39:24'),
(55, 54, NULL, NULL, NULL, NULL, 0, '2020-05-24 08:41:04', '2020-05-24 08:41:04'),
(56, 55, NULL, NULL, NULL, NULL, 0, '2020-05-26 07:19:01', '2020-05-26 07:19:01'),
(57, 56, NULL, NULL, NULL, NULL, 0, '2020-05-30 06:05:34', '2020-05-30 06:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT 0,
  `vendor_packing_id` int(191) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(54, 29, 'BZh91AY&SYà7ÁÉ\0ä_@\0ø+ü¿ÿÿúPù·ºXíC­Y%2§´\rSÉ¦ ¦õFh¦\nj¦ 2hÈ10dÐÈ$ÔDBA õ\r\Zh4\0ihÑ À\0\0\0\0\0\0\0DBi¤hF4\0h yD$,$8a$üø|stYÔtôÙ©\"[9Æ4tLYG8j¾í³«nÖv´Ì¼v)bÅsÅÆ`ZR±¸ùG·#\r*ÿ¶#)°Å° Q)Pö\"iÚJ<¢ÑÌ Ò§¹@3PHfgäGcyðy+	\\M\nBSï©è¼à3^0 #\06!@Á¢k7Ê¤5hï\"eHË\r\nå7Ù¸IcH¦tÆÌV1ZÆ24(\nrãLM6\Zð\ZÌ ¡®.ñ¡³ÄrÞq¦	I\"fêñÀ$=\rZ2j\\ê \n2Ä9	ÑÜcR\\ÒbÇij©à¢Ñò\"Ö°òL&f2f`ÌK¸ÌRU2D)Rd­jf¬£Ì_Àéè¹²\nº¨û]ÄXÕÁaY(Kð1eAÈÂ0%Ô4Ð\r¿MÆý»ëAA!ê(£îår+Ë»r\\^Èãêör)Þ¬}H¸\rF\n6ÀâÉ³1OJö*ÀùeAn\Z\nÂU\Z|S¨¦µ£*jrVe6¥|6M¤´lª±OacÑþ\\9`l 8ox«à[î;AWåJè+ü­AñF\ZÀÁ´¬é¼@8Tü/\rÕ»h¥hÂ2Fé<\rDû=Må%(Ò$ÿN§EöÝE9ÑÔá¨ÕkP|ÉD.PñÒ9044_ÆêsDæFFcÌ&Óh!Dn7eYÂæÝ¼È8¦Ó,eóc;RY!kËg[wÕë¶ÍÂdµ&Eu&íÙ*tgpÉ¸ÌE¦`RLÎ%ÎÄ##°öxÖ}ji[¨¾ûN3ãp¨òCR¥ØÜL¯0Á£	TTnFG0calæ½ç°yáªÄ@zÜbú>=\nsuã±»IT{Y³âe*{{LÐ°t9\r»RöàÍqºuÂÑà)\"ÀKZXT-TDÈúªº¡B	&2¢©Fn(´*@T*¤p,Öñ±pæ-FÓ8Ü°ftÿäTRc°T¹ìÂ¡·½B%é»ÅÌÀf\"¢ªk*¡ÂR¡¢è46bZ	]cPÉ¢\rI#B°Ñg\"ãÓO>,qñW¨\"F\"21dÈrI\0S#*)ÙÂn7ðo¨W]UÐµ##½E»àÐ[¸«W:sÉ4\rªl±ß(]\\2\rÉª5da¯WágÌèfi´ñZ%zª©ª#>£×Ük\" %|(à63LOðå97BuO? EPRS\Zñw$S	|', 'Mobile Money', 'shipto', 'Azampur', '6', 900, ' ', NULL, '0052', 'Completed', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2020-05-24 08:41:04', '2020-05-24 11:32:46', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(55, 29, 'BZh91AY&SYÂA5\0à_@\0ø+ü¿ÿÿúPÛÝÛºA7vÅT+6®j6©M\ZÔ=&2hHQ \0\r@\0\Zh\0B¡\0\0Ph\0\r\0\0\0\0\0\0\0\0ô)çôÕ=G¨ÈQ£\Z)Sª¢ýöz ø>y>ç76N#FÃ%¯1 þÉ1¢=îZøR	Ã²ßQ?vkØÔr\\¼ØÚLiúU*·løÊsñÊàHµ\ndN\rFßÆ­æ)h3 ~A\0fËâ=GÈgUÄÐ %â5ã\ZÆ\rhâðt@îJ<0,9Û	Ê!ÂÜ^>R!@ÅC²\"_ÏK@Q\ro­öÙ¤*«\ZÖÑ¶Ó¹0Èµ­ôï¿@ÝÔY6d¡C&\Z*nDì$ÅCÄ×81gAe+|us¡ÎaÇ8Hã@åYÌ@ârÉÇÍ\'ÙQ»ÀhÖ²ÍÙ£j¤LTm®°)Ju9r<DÞU\nö\nqQ.ô:|WtAµiüBçº:$& (Lã]Àøç,Sc$§N\r\'d±4á es,CHm\0Ø!°wægÄåÃh!`ùÇ´äCÜSKEä^V*>X«QÞ>Äãnhàå\rTç­ÔTàÐÆ1»x4ê÷3¬^¬fyæQÚéeºÅêbä©³aëùÞr,qîîDü¼9:ÁÞ@ä¾¯îÓ­^3|c²L[!UJ\n¨,óeIfÐýhþÆ#F4Üv;þ§ìÈÉ$fKÌs²ý.£$Í3êsÔJzÀÔd¢A(ua1\ryQT,È+\ryÀÜà!6A\n#AÆØÁØÎw8pï æ^HLÒQK2¤\nk?£Ù7Lf\r\ZWÄ©-£nÂÊÛ®¡Güq*`ªci#ó	nÔÈ±Ô{ÇÈkwJó®ðµí;Èk\"F´ØÏC.J\r¤\Z;ÁP=:zû@ñPÆ\"\0cÖãQx]7$÷	®f³¬¨ÇBDkÖ/*zv°lhû5/0ôk°\nqØé¨Æ~ø {q±It8.Ñ¥¥$A2$KË2W\n\nKÀ(ÄÌPÓi¸L]\n¨¥¨\\oþØáx¨¦`ÖQ·u;rJ#Uà?ÿsb<fD³V.5L¥\rðf¬×*3Ðödä¨b1XT1¼d(:lÐ; ÄmJué@{B!X%\"V$9H[I&Ð4¡ÉÌÁ¦zB+ØÂªØË#xá\0È±ÜÊ\"A^Pf¥ÜHUÌ+7MËÙ4\nlÈÁî.®Ç¢%Tk$a¯$¾¬-Äg³ÌØÜgÀõ-B½UTÊÕ¡?QëÚk\" %kF Ì¹ï§üF¹Nhþª\nMþ.äp¡!j', 'Bkash', 'shipto', 'Azampur', '1', 150, ' ', NULL, '0061', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-26 07:19:01', '2020-05-26 07:19:01', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(56, 29, 'BZh91AY&SYR\0Ó_@\0ø;Kô¿ÿÿúPÞîÉ  PÖqLjzi<Q¡£@\0\r4$)©\0\0\r\0\0\0\0I¥$i3Tdõ\r¨h\04hC\0\0\0 \0\0\0\")£\"\Z´©úd£G¨z@õ<ú¦Ô`\0	z±æ&0õ?rOêãØôô¥Æ¡0Î±ói\nuâ·±Ã4ÊÚç4´;1öaÆ½g5ËÍµ®J­Û>2üAr²È¸ÒÅK¬X7~KÌò ¿NÜàÇ±Î£>]ªBtã4aRx\r dÉ0²b¤Æs%!#¡Âê\"^Üq0À3SUHç0uÄ9ÝqFA`*Æ+YlL#ª2ZjU40LTD×Ð`ËzºË=`©x¼¢*xu\\Õ¢CI$1dQe:TÝ,»OÆy0\Z7¬³nlÃc¨1Q¶ºÀ¥)ÔåÊdñyT+Ø0L)Ä9D»Ðéñ]ÑµkWNá	ÇÙÄYHbÙålEm+Ê(ï`LMìY``!HdXìä7=Ónr!b[_°ÆSJI,Zº[ØÛB¸Ö¾Vfê·<XÎh\\1lhäå\r(Tç\r[¬ÂèÆ*M¼Y­hâ_vÇpCc\ZXÕÖ+C§Åéø$ÌËÏ4%îüMQTÎ%2.\"²jeFº5ÊµT IJ+=4MÇÍ°ö3hâDYÅÂ~#±´Ú¤ÌF«ò½EÉ`ègÞåqÅb5ÈªIÏ+w°2/,dVÁ!ÐÕb0,;Á¦Óh$hyÉC:å½dnÝÈB·Z*DKÂ2ÅFp>¤£6S\\âÑmbp¶%ÁB[Þ¿UBì¦eJ&6¤JÃ:`£Ø<Æ­IÛà|¯¸Ðzm<Á5ø¼¥JÆqÇ1à`ãâ-Ü}pø I¥MPÆ\"\0cÖÃÇàuéy<¾MçRÄ2	%\\ö3,k¡DÃÜId/¨3\"·è­oíÜÏ\rF0¾:\nH¼	k+Åq}N+=ô¥¥$A2$KËWp¤p+,ÆÝ»Ql¢1LÒ¥ácììO6²yÈ¨éOªNÂ±úK¤ÍÃKd-Âû0$Hq°¯øÏ&h¦¬8Æ¢ÖW>e9È\Z#ÀæÔÉM\nj³,nYNjs»éLËãÝÃ.{çðHÀDAF BÉ\"T0rN]ßÓQ~½.bÁs0ÀÜ8@2*qeÈ¸Ø2\\´ ~q!G0ªs6ÚjWÐ±6¨m²óÖ(\\UT0É¨5z1kÉ/«7óæTÇaÞµbR­êõ2µDq\'þ¼\rd	EH³ÐØQò¢eê8mÿAIXÙÿrE8PR', 'Mobile Money', 'shipto', 'Azampur', '1', 200, ' ', NULL, '0096', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-30 06:05:34', '2020-05-30 06:05:34', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_additionals`
--

CREATE TABLE `order_additionals` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `additional_field_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_additionals`
--

INSERT INTO `order_additionals` (`id`, `order_id`, `additional_field_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 9, 6, '01742349', '2020-05-15 08:25:21', '2020-05-15 08:25:21'),
(2, 10, 6, '01742349', '2020-05-15 08:26:31', '2020-05-15 08:26:31'),
(3, 11, 6, '01742349', '2020-05-15 08:27:46', '2020-05-15 08:27:46'),
(4, 12, 6, '01485', '2020-05-15 08:38:20', '2020-05-15 08:38:20'),
(5, 13, 6, '017441a', '2020-05-15 08:44:46', '2020-05-15 08:44:46'),
(6, 30, 6, '017452', '2020-05-16 13:35:06', '2020-05-16 13:35:06'),
(7, 31, 6, 'as', '2020-05-16 13:35:51', '2020-05-16 13:35:51'),
(8, 32, 6, 'as', '2020-05-16 13:36:45', '2020-05-16 13:36:45'),
(9, 33, 6, 'sd', '2020-05-16 13:51:11', '2020-05-16 13:51:11'),
(10, 34, 6, 'sd', '2020-05-16 13:52:59', '2020-05-16 13:52:59'),
(11, 35, 6, 'sd', '2020-05-16 13:54:09', '2020-05-16 13:54:09'),
(12, 36, 6, 'sd', '2020-05-16 13:54:58', '2020-05-16 13:54:58'),
(13, 37, 6, 'sd', '2020-05-16 13:55:35', '2020-05-16 13:55:35'),
(14, 39, 6, 'sa', '2020-05-21 04:10:40', '2020-05-21 04:10:40'),
(15, 40, 6, '01742349541', '2020-05-21 04:22:08', '2020-05-21 04:22:08'),
(16, 41, 6, 'adad', '2020-05-21 08:51:23', '2020-05-21 08:51:23'),
(17, 42, 6, '01736937161', '2020-05-24 08:24:41', '2020-05-24 08:24:41'),
(18, 46, 6, 'sd', '2020-05-24 08:30:38', '2020-05-24 08:30:38'),
(19, 47, 1, 'sd', '2020-05-24 08:30:57', '2020-05-24 08:30:57'),
(20, 47, 2, 'sd', '2020-05-24 08:30:57', '2020-05-24 08:30:57'),
(21, 55, 6, '01726', '2020-05-26 07:19:01', '2020-05-26 07:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_extra_charges`
--

CREATE TABLE `order_extra_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extra_charge_rule_id` int(10) UNSIGNED NOT NULL,
  `charge` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_extra_charges`
--

INSERT INTO `order_extra_charges` (`id`, `order_id`, `extra_charge_rule_id`, `charge`, `created_at`, `updated_at`) VALUES
(1, 37, 2, 200, '2020-05-16 13:55:35', '2020-05-16 13:55:35'),
(2, 39, 2, 42.5, '2020-05-21 04:10:40', '2020-05-21 04:10:40'),
(3, 40, 2, 4, '2020-05-21 04:22:08', '2020-05-21 04:22:08'),
(4, 41, 2, 10, '2020-05-21 08:51:23', '2020-05-21 08:51:23'),
(5, 42, 2, 18, '2020-05-24 08:24:41', '2020-05-24 08:24:41'),
(6, 55, 2, 3, '2020-05-26 07:19:01', '2020-05-26 07:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment_verifications`
--

CREATE TABLE `order_payment_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `payment_verification_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payment_verifications`
--

INSERT INTO `order_payment_verifications` (`id`, `order_id`, `payment_verification_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 11, 4, '0125', '2020-05-15 08:27:46', '2020-05-15 08:27:46'),
(2, 12, 4, '2553', '2020-05-15 08:38:20', '2020-05-15 08:38:20'),
(3, 13, 4, 'dads', '2020-05-15 08:44:46', '2020-05-15 08:44:46'),
(4, 30, 4, '01251', '2020-05-16 13:35:06', '2020-05-16 13:35:06'),
(5, 31, 4, 'ds', '2020-05-16 13:35:51', '2020-05-16 13:35:51'),
(6, 32, 4, 'd', '2020-05-16 13:36:45', '2020-05-16 13:36:45'),
(7, 39, 4, 'sa', '2020-05-21 04:10:40', '2020-05-21 04:10:40'),
(8, 40, 4, '02145', '2020-05-21 04:22:08', '2020-05-21 04:22:08'),
(9, 41, 4, 'sa', '2020-05-21 08:51:23', '2020-05-21 08:51:23'),
(10, 42, 4, '01455', '2020-05-24 08:24:41', '2020-05-24 08:24:41'),
(11, 44, 2, 'd', '2020-05-24 08:29:25', '2020-05-24 08:29:25'),
(12, 45, 2, 'd', '2020-05-24 08:30:19', '2020-05-24 08:30:19'),
(13, 46, 4, 'sd', '2020-05-24 08:30:38', '2020-05-24 08:30:38'),
(14, 48, 2, 'g', '2020-05-24 08:31:15', '2020-05-24 08:31:15'),
(15, 49, 2, 'dsd', '2020-05-24 08:32:16', '2020-05-24 08:32:16'),
(16, 56, 2, 'sds', '2020-05-30 06:05:34', '2020-05-30 06:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pending', 'You have successfully placed your order.', '2019-10-09 22:28:22', '2019-10-09 22:28:22'),
(2, 2, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:13:21', '2019-10-10 00:13:21'),
(3, 3, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:14:54', '2019-10-10 00:14:54'),
(4, 4, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:26:24', '2019-10-10 00:26:24'),
(5, 5, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:27:37', '2019-10-10 00:27:37'),
(6, 6, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:36:05', '2019-10-10 00:36:05'),
(7, 7, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:37:46', '2019-10-10 00:37:46'),
(8, 8, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:42:27', '2019-10-10 00:42:27'),
(9, 9, 'Pending', 'You have successfully placed your order.', '2019-10-10 00:52:55', '2019-10-10 00:52:55'),
(10, 10, 'Pending', 'You have successfully placed your order.', '2019-10-10 01:45:51', '2019-10-10 01:45:51'),
(11, 11, 'Pending', 'You have successfully placed your order.', '2019-10-10 01:49:36', '2019-10-10 01:49:36'),
(12, 12, 'Completed', 'Your order has completed successfully.', '2019-10-12 00:57:48', '2019-10-12 00:57:48'),
(13, 13, 'Pending', 'You have successfully placed your order.', '2019-10-12 12:38:32', '2019-10-12 12:38:32'),
(14, 14, 'Pending', 'You have successfully placed your order.', '2019-10-13 04:31:52', '2019-10-13 04:31:52'),
(15, 15, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:08:46', '2019-10-13 05:08:46'),
(16, 16, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:12:20', '2019-10-13 05:12:20'),
(17, 17, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:14:18', '2019-10-13 05:14:18'),
(18, 18, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:16:01', '2019-10-13 05:16:01'),
(19, 19, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:37:27', '2019-10-13 05:37:27'),
(20, 20, 'Pending', 'You have successfully placed your order.', '2019-10-13 05:39:14', '2019-10-13 05:39:14'),
(21, 21, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:17:39', '2019-10-13 06:17:39'),
(22, 22, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:19:20', '2019-10-13 06:19:20'),
(23, 23, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:21:27', '2019-10-13 06:21:27'),
(24, 24, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:24:57', '2019-10-13 06:24:57'),
(25, 25, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:38:00', '2019-10-13 06:38:00'),
(26, 26, 'Pending', 'You have successfully placed your order.', '2019-10-13 06:44:26', '2019-10-13 06:44:26'),
(27, 27, 'Pending', 'You have successfully placed your order.', '2019-10-14 02:08:07', '2019-10-14 02:08:07'),
(28, 28, 'Pending', 'You have successfully placed your order.', '2019-10-14 02:11:15', '2019-10-14 02:11:15'),
(29, 1, 'Pending', 'You have successfully placed your order.', '2019-11-14 01:43:24', '2019-11-14 01:43:24'),
(30, 2, 'Pending', 'You have successfully placed your order.', '2019-11-14 01:51:11', '2019-11-14 01:51:11'),
(31, 3, 'Pending', 'You have successfully placed your order.', '2020-04-13 07:38:08', '2020-04-13 07:38:08'),
(32, 4, 'Pending', 'You have successfully placed your order.', '2020-04-14 09:13:03', '2020-04-14 09:13:03'),
(33, 5, 'Pending', 'You have successfully placed your order.', '2020-04-17 05:32:31', '2020-04-17 05:32:31'),
(34, 5, 'On Delivery', 'Take it', '2020-04-17 05:37:31', '2020-04-17 05:37:31'),
(35, 6, 'Pending', 'You have successfully placed your order.', '2020-04-17 06:58:41', '2020-04-17 06:58:41'),
(36, 7, 'Pending', 'You have successfully placed your order.', '2020-04-17 07:04:49', '2020-04-17 07:04:49'),
(37, 8, 'Pending', 'You have successfully placed your order.', '2020-05-12 07:31:25', '2020-05-12 07:31:25'),
(38, 11, 'Pending', 'You have successfully placed your order.', '2020-05-15 08:27:46', '2020-05-15 08:27:46'),
(39, 12, 'Pending', 'You have successfully placed your order.', '2020-05-15 08:38:20', '2020-05-15 08:38:20'),
(40, 13, 'Pending', 'You have successfully placed your order.', '2020-05-15 08:44:46', '2020-05-15 08:44:46'),
(41, 13, 'On Delivery', 'ok', '2020-05-15 09:06:45', '2020-05-15 09:06:45'),
(42, 14, 'Pending', 'You have successfully placed your order.', '2020-05-15 10:37:49', '2020-05-15 10:37:49'),
(43, 15, 'Pending', 'You have successfully placed your order.', '2020-05-16 00:46:19', '2020-05-16 00:46:19'),
(44, 16, 'Pending', 'You have successfully placed your order.', '2020-05-16 00:48:59', '2020-05-16 00:48:59'),
(45, 17, 'Pending', 'You have successfully placed your order.', '2020-05-16 00:51:32', '2020-05-16 00:51:32'),
(46, 18, 'Pending', 'You have successfully placed your order.', '2020-05-16 00:55:49', '2020-05-16 00:55:49'),
(47, 19, 'Pending', 'You have successfully placed your order.', '2020-05-16 02:42:41', '2020-05-16 02:42:41'),
(48, 20, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:09:33', '2020-05-16 03:09:33'),
(49, 21, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:10:08', '2020-05-16 03:10:08'),
(50, 22, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:12:39', '2020-05-16 03:12:39'),
(51, 23, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:16:07', '2020-05-16 03:16:07'),
(52, 24, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:17:35', '2020-05-16 03:17:35'),
(53, 25, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:17:58', '2020-05-16 03:17:58'),
(54, 26, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:19:07', '2020-05-16 03:19:07'),
(55, 27, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:27:06', '2020-05-16 03:27:06'),
(56, 28, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:28:54', '2020-05-16 03:28:54'),
(57, 29, 'Pending', 'You have successfully placed your order.', '2020-05-16 03:50:22', '2020-05-16 03:50:22'),
(58, 37, 'Pending', 'You have successfully placed your order.', '2020-05-16 13:55:35', '2020-05-16 13:55:35'),
(59, 38, 'Pending', 'You have successfully placed your order.', '2020-05-18 11:54:17', '2020-05-18 11:54:17'),
(60, 39, 'Pending', 'You have successfully placed your order.', '2020-05-21 04:10:40', '2020-05-21 04:10:40'),
(61, 40, 'Pending', 'You have successfully placed your order.', '2020-05-21 04:22:08', '2020-05-21 04:22:08'),
(62, 41, 'Pending', 'You have successfully placed your order.', '2020-05-21 08:51:23', '2020-05-21 08:51:23'),
(63, 42, 'Pending', 'You have successfully placed your order.', '2020-05-24 08:24:41', '2020-05-24 08:24:41'),
(64, 51, 'Pending', 'You have successfully placed your order.', '2020-05-24 08:37:45', '2020-05-24 08:37:45'),
(65, 53, 'Pending', 'You have successfully placed your order.', '2020-05-24 08:39:24', '2020-05-24 08:39:24'),
(66, 54, 'Pending', 'You have successfully placed your order.', '2020-05-24 08:41:04', '2020-05-24 08:41:04'),
(67, 55, 'Pending', 'You have successfully placed your order.', '2020-05-26 07:19:01', '2020-05-26 07:19:01'),
(68, 56, 'Pending', 'You have successfully placed your order.', '2020-05-30 06:05:34', '2020-05-30 06:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about-us', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, 1, 1),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(4, 'How To Buy', 'buy', 'dsdsdsds', NULL, NULL, 0, 0),
(5, 'How To Sell', 'sells', 'dsdsdsd', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `service` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `small_banner` tinyint(1) NOT NULL DEFAULT 1,
  `best` tinyint(1) NOT NULL DEFAULT 1,
  `top_rated` tinyint(1) NOT NULL DEFAULT 1,
  `large_banner` tinyint(1) NOT NULL DEFAULT 1,
  `big` tinyint(1) NOT NULL DEFAULT 1,
  `hot_sale` tinyint(1) NOT NULL DEFAULT 1,
  `partners` tinyint(1) NOT NULL DEFAULT 0,
  `review_blog` tinyint(1) NOT NULL DEFAULT 1,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_small` tinyint(1) NOT NULL DEFAULT 0,
  `flash_deal` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category` int(1) NOT NULL DEFAULT 0,
  `notice` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`, `notice`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'admin@geniusocean.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', '3584 Hickory Heights Drive ,Hanover MD 21076, USA', '00 000 000 000', '00 000 000 000', 'admin@geniusocean.com', 'https://geniusocean.com/', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, '1568889138banner1.jpg', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 1, 1, '1568889138banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 1, '00sasa');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(1, '1563165366brand-1.png', 'https://www.google.com/'),
(2, '1563165383brand-2.png', 'https://www.google.com/'),
(3, '1563165393brand-3.png', 'https://www.google.com/'),
(4, '1563165400brand-1.png', NULL),
(5, '1563165411brand-2.png', NULL),
(6, '1563165444brand-3.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(46, 'Pay via your Mobile Money.', 'Mobile Money', '<font size=\"3\"><b style=\"\">Mobile Money</b><b>&nbsp;No: 6528068515</b><br><br></font>', 1),
(47, 'Bkash', 'Bkash', 'Bkash', 1),
(48, NULL, 'neteller', '<br>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_verifications`
--

CREATE TABLE `payment_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_gateway_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_verifications`
--

INSERT INTO `payment_verifications` (`id`, `payment_gateway_id`, `title`, `description`, `required`, `created_at`, `updated_at`) VALUES
(2, 46, 's', 'a', 0, '2020-05-14 07:26:18', '2020-05-14 07:26:18'),
(4, 47, 'number', NULL, 0, '2020-05-15 08:14:56', '2020-05-15 08:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `views` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0,
  `area_id` int(11) NOT NULL DEFAULT 0,
  `division_id` int(11) DEFAULT 0,
  `district_id` int(11) DEFAULT 0,
  `sub_district_id` int(11) DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `deal_code` varchar(50) NOT NULL DEFAULT '',
  `boost` int(11) NOT NULL DEFAULT 0,
  `boost_expired` timestamp NOT NULL DEFAULT current_timestamp(),
  `top_ad` int(11) NOT NULL DEFAULT 0,
  `top_ad_expired` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `area_id`, `division_id`, `district_id`, `sub_district_id`, `brand_id`, `deal_code`, `boost`, `boost_expired`, `top_ad`, `top_ad_expired`) VALUES
(206, 'IGj96238Df', 'normal', NULL, 29, 5, NULL, NULL, NULL, 'Watch1', 'watch1-igj96238df', '15903300051124uAMS.png', '15903300063j1sL9oR.jpg', NULL, NULL, NULL, NULL, '#21ac8d', 150, 200, '<div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\">\"Product details of A-1 Bluetooth Smart Watch Phone with Pedometer Camera Single SIM - Black</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Single SIM</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Compatible OS: Android</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Camera: 3.0MP 720P</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Display screen size: 1.54\'\' IPS</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">RAM: 64MB,</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">ROM: 128MB</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Bluetooth v3.0</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Capacitive Touch screen</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Resolutions: 240 x 240</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Battery: 380mAh</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Standby time: 100hrs</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Case Material: Stainless Steel</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Band Material: Silicone/ Rubber</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Language: English, Simplified Chinese</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Speed: MTK-6260A</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Transmit power: CLASS2</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Contrast ratio: 16.7M</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Picture Format: JPEG</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Music Format: MP3 WAV</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Video Format: MP4</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">USB Port: Mini 5pin</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Technology: Point + Gesture</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Calling time: 2 - 3hrs</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">GSMNo 3GNo WIFITF card slot: Max 32G (not included)No Compass</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Waterproof: No</span></div><div class=\"product-details-text\" style=\"width: 855.359px; float: left; font-size: 15px; line-height: 27px; color: rgb(93, 90, 90); font-family: SolaimanLipi, helvetica, verdana;\"><span style=\"margin-right: 10px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"border: 0px; margin-top: -5px !important;\"></span><span style=\"margin-right: 10px;\">Support for Downloading Apps\"</span></div>', 40, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-24 08:20:06', '2020-05-26 07:19:01', 0, NULL, NULL, NULL, 0, 0, 0, 2, 3, 0, 1, 'DC2069844', 0, '2020-05-24 14:20:06', 0, '2020-05-24 14:20:06'),
(207, 'Sa74548Ujq', 'normal', NULL, 29, 5, NULL, NULL, NULL, 'dsd', 'dsd-sa74548ujq', '15904845822dBdE7Hi.png', '1590484582LBn6kySx.jpg', NULL, NULL, NULL, NULL, NULL, 200, 250, '<br>', 2499, '<br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-26 03:16:22', '2020-05-30 06:05:34', 0, NULL, NULL, NULL, 0, 0, 0, 2, 2, NULL, 1, 'DC2071017', 0, '2020-05-26 09:16:22', 0, '2020-05-26 09:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(453, 97, '2019-10-14'),
(454, 97, '2019-10-14'),
(455, 97, '2019-10-14'),
(456, 97, '2019-10-14'),
(457, 176, '2019-10-15'),
(458, 102, '2019-10-15'),
(459, 102, '2019-10-15'),
(460, 102, '2019-10-15'),
(461, 102, '2019-10-15'),
(462, 102, '2019-10-15'),
(463, 102, '2019-10-15'),
(464, 102, '2019-10-15'),
(465, 102, '2019-10-15'),
(466, 176, '2019-10-17'),
(467, 166, '2019-10-17'),
(468, 166, '2019-10-17'),
(469, 176, '2019-10-19'),
(470, 176, '2019-10-19'),
(471, 176, '2019-10-19'),
(472, 176, '2019-10-19'),
(473, 176, '2019-10-19'),
(474, 176, '2019-10-19'),
(475, 176, '2019-10-19'),
(476, 176, '2019-10-19'),
(477, 101, '2019-10-19'),
(478, 101, '2019-10-19'),
(479, 101, '2019-10-19'),
(480, 176, '2019-11-13'),
(481, 95, '2019-11-14'),
(482, 176, '2019-11-14'),
(483, 176, '2019-11-14'),
(484, 176, '2019-11-14'),
(485, 176, '2019-11-14'),
(486, 176, '2019-11-14'),
(487, 176, '2019-11-14'),
(488, 93, '2019-11-14'),
(489, 93, '2019-11-14'),
(490, 93, '2019-11-14'),
(491, 93, '2019-11-14'),
(492, 96, '2019-11-14'),
(493, 93, '2019-11-14'),
(494, 93, '2019-11-14'),
(495, 93, '2019-11-14'),
(496, 166, '2020-04-11'),
(497, 162, '2020-04-11'),
(498, 188, '2020-04-11'),
(499, 176, '2020-04-11'),
(500, 102, '2020-04-11'),
(501, 95, '2020-04-11'),
(502, 102, '2020-04-11'),
(503, 102, '2020-04-12'),
(504, 99, '2020-04-12'),
(505, 99, '2020-04-12'),
(506, 99, '2020-04-13'),
(507, 99, '2020-04-13'),
(508, 99, '2020-04-13'),
(509, 99, '2020-04-13'),
(510, 99, '2020-04-13'),
(511, 99, '2020-04-13'),
(512, 99, '2020-04-13'),
(513, 99, '2020-04-13'),
(514, 99, '2020-04-13'),
(515, 101, '2020-04-13'),
(516, 102, '2020-04-13'),
(517, 101, '2020-04-13'),
(518, 102, '2020-04-13'),
(519, 102, '2020-04-13'),
(520, 102, '2020-04-13'),
(521, 102, '2020-04-13'),
(522, 102, '2020-04-13'),
(523, 102, '2020-04-13'),
(524, 102, '2020-04-13'),
(525, 102, '2020-04-13'),
(526, 101, '2020-04-13'),
(527, 101, '2020-04-13'),
(528, 101, '2020-04-13'),
(529, 101, '2020-04-13'),
(530, 101, '2020-04-13'),
(531, 102, '2020-04-13'),
(532, 101, '2020-04-13'),
(533, 101, '2020-04-13'),
(534, 188, '2020-04-13'),
(535, 101, '2020-04-13'),
(536, 101, '2020-04-13'),
(537, 101, '2020-04-13'),
(538, 101, '2020-04-13'),
(539, 188, '2020-04-13'),
(540, 188, '2020-04-13'),
(541, 188, '2020-04-13'),
(542, 188, '2020-04-13'),
(543, 188, '2020-04-13'),
(544, 188, '2020-04-13'),
(545, 188, '2020-04-13'),
(546, 185, '2020-04-13'),
(547, 109, '2020-04-13'),
(548, 185, '2020-04-13'),
(549, 188, '2020-04-13'),
(550, 162, '2020-04-15'),
(551, 189, '2020-04-15'),
(552, 189, '2020-04-15'),
(553, 187, '2020-04-16'),
(554, 102, '2020-04-16'),
(555, 102, '2020-04-16'),
(556, 102, '2020-04-16'),
(557, 190, '2020-04-16'),
(558, 101, '2020-04-16'),
(559, 176, '2020-04-16'),
(560, 101, '2020-04-16'),
(561, 101, '2020-04-16'),
(562, 102, '2020-04-16'),
(563, 102, '2020-04-16'),
(564, 102, '2020-04-16'),
(565, 102, '2020-04-16'),
(566, 102, '2020-04-16'),
(567, 102, '2020-04-16'),
(568, 102, '2020-04-16'),
(569, 183, '2020-04-16'),
(570, 101, '2020-04-16'),
(571, 101, '2020-04-16'),
(572, 101, '2020-04-16'),
(573, 101, '2020-04-16'),
(574, 101, '2020-04-16'),
(575, 101, '2020-04-16'),
(576, 190, '2020-04-16'),
(577, 190, '2020-04-16'),
(578, 101, '2020-04-17'),
(579, 101, '2020-04-17'),
(580, 101, '2020-04-17'),
(581, 101, '2020-04-17'),
(582, 101, '2020-04-17'),
(583, 101, '2020-04-17'),
(584, 102, '2020-04-17'),
(585, 190, '2020-04-17'),
(586, 188, '2020-04-17'),
(587, 159, '2020-04-17'),
(588, 102, '2020-04-17'),
(589, 188, '2020-04-17'),
(590, 188, '2020-04-17'),
(591, 188, '2020-04-17'),
(592, 188, '2020-04-17'),
(593, 102, '2020-04-17'),
(594, 188, '2020-04-17'),
(595, 188, '2020-04-17'),
(596, 188, '2020-04-17'),
(597, 188, '2020-04-17'),
(598, 188, '2020-04-17'),
(599, 188, '2020-04-17'),
(600, 188, '2020-04-17'),
(601, 188, '2020-04-17'),
(602, 188, '2020-04-17'),
(603, 188, '2020-04-17'),
(604, 188, '2020-04-17'),
(605, 188, '2020-04-17'),
(606, 188, '2020-04-17'),
(607, 188, '2020-04-17'),
(608, 188, '2020-04-17'),
(609, 188, '2020-04-17'),
(610, 188, '2020-04-17'),
(611, 192, '2020-04-21'),
(613, 192, '2020-04-21'),
(614, 101, '2020-04-21'),
(615, 176, '2020-04-21'),
(617, 93, '2020-04-24'),
(618, 93, '2020-04-24'),
(619, 189, '2020-04-24'),
(620, 189, '2020-04-24'),
(621, 102, '2020-04-24'),
(622, 102, '2020-04-24'),
(623, 102, '2020-04-24'),
(624, 102, '2020-04-24'),
(625, 102, '2020-04-24'),
(626, 102, '2020-04-24'),
(627, 188, '2020-04-24'),
(628, 188, '2020-04-24'),
(629, 188, '2020-04-24'),
(630, 188, '2020-04-24'),
(631, 188, '2020-04-24'),
(632, 188, '2020-04-24'),
(633, 188, '2020-04-24'),
(634, 188, '2020-04-24'),
(635, 188, '2020-04-24'),
(636, 188, '2020-04-24'),
(637, 188, '2020-04-24'),
(638, 188, '2020-04-24'),
(639, 101, '2020-04-27'),
(641, 101, '2020-04-27'),
(642, 101, '2020-04-27'),
(643, 101, '2020-04-27'),
(644, 97, '2020-04-27'),
(645, 97, '2020-04-27'),
(646, 97, '2020-04-27'),
(647, 97, '2020-04-27'),
(648, 101, '2020-04-27'),
(649, 101, '2020-04-27'),
(650, 101, '2020-04-27'),
(651, 101, '2020-04-27'),
(652, 188, '2020-04-27'),
(653, 188, '2020-04-27'),
(654, 100, '2020-04-27'),
(655, 100, '2020-04-27'),
(656, 184, '2020-04-28'),
(657, 184, '2020-04-28'),
(658, 184, '2020-04-28'),
(659, 184, '2020-04-28'),
(660, 188, '2020-04-28'),
(661, 188, '2020-04-28'),
(662, 188, '2020-04-28'),
(663, 188, '2020-04-28'),
(664, 188, '2020-04-28'),
(665, 188, '2020-04-28'),
(666, 188, '2020-04-28'),
(667, 188, '2020-04-28'),
(668, 188, '2020-04-28'),
(669, 187, '2020-04-28'),
(670, 100, '2020-04-28'),
(671, 100, '2020-04-28'),
(672, 187, '2020-04-28'),
(673, 187, '2020-04-28'),
(674, 187, '2020-04-28'),
(675, 187, '2020-04-28'),
(676, 187, '2020-04-28'),
(677, 187, '2020-04-28'),
(678, 134, '2020-04-28'),
(679, 134, '2020-04-28'),
(680, 182, '2020-05-01'),
(681, 182, '2020-05-01'),
(682, 194, '2020-05-01'),
(683, 194, '2020-05-01'),
(684, 194, '2020-05-01'),
(685, 194, '2020-05-01'),
(686, 194, '2020-05-01'),
(687, 194, '2020-05-01'),
(688, 187, '2020-05-01'),
(689, 187, '2020-05-01'),
(690, 187, '2020-05-01'),
(691, 187, '2020-05-01'),
(692, 97, '2020-05-02'),
(693, 97, '2020-05-02'),
(694, 97, '2020-05-02'),
(695, 186, '2020-05-03'),
(696, 186, '2020-05-03'),
(697, 187, '2020-05-03'),
(698, 187, '2020-05-03'),
(699, 194, '2020-05-03'),
(700, 194, '2020-05-03'),
(701, 184, '2020-05-04'),
(702, 184, '2020-05-04'),
(703, 194, '2020-05-06'),
(704, 194, '2020-05-06'),
(705, 187, '2020-05-06'),
(706, 187, '2020-05-06'),
(707, 97, '2020-05-06'),
(708, 97, '2020-05-06'),
(709, 201, '2020-05-07'),
(710, 201, '2020-05-07'),
(711, 101, '2020-05-07'),
(712, 101, '2020-05-07'),
(713, 101, '2020-05-07'),
(714, 101, '2020-05-07'),
(715, 201, '2020-05-07'),
(716, 201, '2020-05-07'),
(717, 194, '2020-05-07'),
(718, 194, '2020-05-07'),
(719, 96, '2020-05-07'),
(720, 96, '2020-05-07'),
(721, 201, '2020-05-07'),
(722, 201, '2020-05-07'),
(723, 187, '2020-05-07'),
(724, 187, '2020-05-07'),
(725, 187, '2020-05-07'),
(726, 201, '2020-05-07'),
(727, 201, '2020-05-07'),
(728, 201, '2020-05-07'),
(729, 201, '2020-05-07'),
(730, 194, '2020-05-11'),
(731, 194, '2020-05-11'),
(732, 205, '2020-05-15'),
(733, 205, '2020-05-15'),
(734, 201, '2020-05-21'),
(735, 201, '2020-05-21'),
(736, 188, '2020-05-21'),
(737, 188, '2020-05-21'),
(738, 188, '2020-05-21'),
(739, 188, '2020-05-21'),
(740, 188, '2020-05-21'),
(741, 188, '2020-05-21'),
(742, 188, '2020-05-21'),
(743, 188, '2020-05-21'),
(744, 188, '2020-05-21'),
(745, 188, '2020-05-21'),
(746, 188, '2020-05-21'),
(747, 188, '2020-05-21'),
(748, 188, '2020-05-21'),
(749, 188, '2020-05-21'),
(750, 202, '2020-05-21'),
(751, 202, '2020-05-21'),
(752, 188, '2020-05-21'),
(753, 188, '2020-05-21'),
(754, 188, '2020-05-22'),
(755, 188, '2020-05-22'),
(756, 188, '2020-05-22'),
(757, 188, '2020-05-22'),
(758, 188, '2020-05-22'),
(759, 188, '2020-05-22'),
(760, 188, '2020-05-23'),
(761, 206, '2020-05-24'),
(762, 206, '2020-05-24'),
(763, 206, '2020-05-24'),
(764, 207, '2020-05-26'),
(765, 207, '2020-05-26'),
(766, 207, '2020-05-30'),
(767, 207, '2020-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`) VALUES
(1, 29, 188, 'd', 5, '2020-04-17 13:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 22, 2, 'gf', '2019-10-14 01:57:32', '2019-10-14 01:57:32'),
(2, 22, 3, 'ghjh', '2019-11-13 21:59:30', '2019-11-13 21:59:30'),
(3, 22, 3, 'ghjhgj', '2019-11-13 21:59:32', '2019-11-13 21:59:32'),
(4, 22, 3, 'ghjghjg', '2019-11-13 21:59:34', '2019-11-13 21:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'accounts , brands , areas , orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'accounts , orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keys` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Free Shipping All Order', '1561348133service1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1561348138service2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1561348143service3.png'),
(5, 0, 'HELP CENTER', '24/7 Support System', '1590244078notice.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1563247602brand1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1563247614brand2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1563247620brand3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1563247670brand4.png'),
(10, 29, 'Marketing', 'Hi shhhhlore,', '15870282411568889138banner1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(8, 'World Fashion', '24', '#ffffff', 'slideInUp', 'Get Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#ffffff', 'slideInRight', '1564224870012.jpg', 'slide-three', 'https://www.google.com/'),
(9, 'World Fashion', '24', '#ffffff', 'slideInUp', 'Get Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#ffffff', 'slideInDown', '1564224753007.jpg', 'slide-one', 'https://www.google.com/'),
(10, 'World Fashion', '24', '#c32d2d', 'slideInUp', 'Get Up to 40% Off', '60', '#bc2727', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#c51d1d', 'slideInLeft', '156422490902.jpg', 'slide-one', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '2951017404943929', '0d267cc1b23e5255457aa6f50872c6eb', 'https://localhost/gen/auth/facebook/callback', '612023788074-3mm10ao64jg780d7vbcf7il4dqo9grmc.apps.googleusercontent.com', 'zwijLDCy4Jc9BmZf1RPFyiqL', 'http://localhost/gen/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`, `serial`) VALUES
(2, 4, 'TELEVISION', 'television', 1, 2),
(3, 4, 'REFRIGERATOR', 'refrigerator', 1, 1),
(4, 4, 'WASHING MACHINE', 'washing-machine', 1, 3),
(5, 4, 'AIR CONDITIONERS', 'air-conditioners', 1, 4),
(6, 5, 'ACCESSORIES', 'accessories', 1, 0),
(7, 5, 'BAGS', 'bags', 1, 0),
(8, 5, 'CLOTHINGS', 'clothings', 1, 0),
(9, 5, 'SHOES', 'shoes', 1, 0),
(10, 7, 'APPLE', 'apple', 1, 1),
(11, 7, 'SAMSUNG', 'samsung', 1, 2),
(12, 7, 'LG', 'lg', 1, 3),
(13, 7, 'SONY', 'sony', 1, 0),
(14, 6, 'DSLR', 'dslr', 1, 1),
(15, 6, 'Camera Phone', 'camera-phone', 1, 2),
(16, 6, 'Action Camera', 'animation-camera', 1, 0),
(17, 6, 'Digital Camera', 'digital-camera', 1, 3),
(18, 4, 'sa', 'sa', 1, 5),
(19, 4, 'da', 'da', 1, 0),
(20, 4, 'ta', 'ta', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'admin@gmail.com'),
(2, 'vendor@gmail.com'),
(3, 'junnuns@gmail.com'),
(4, 'shaon@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_price` double NOT NULL,
  `product_duration` int(11) NOT NULL,
  `contact_hide` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `max_price`, `product_duration`, `contact_hide`) VALUES
(5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 0, 0, 0),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 0, 0, 0),
(7, 'Unlimited', 'ট', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 0, 0, 0),
(8, 'Basic', 'ট', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 1500, 0, 0),
(11, 'test', 'bdt', 'bd', 52, 10, 0, 'd', 50, 10, 0),
(12, 'pos', 's', 'sa', 10, 15, 0, 're', 15, 20, 1),
(13, 'tr', 's', 's', 20, 15, 15, 'as', 500, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_categories`
--

CREATE TABLE `subscription_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_categories`
--

INSERT INTO `subscription_categories` (`id`, `subscription_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 11, 4, '2020-04-28 15:03:04', '2020-04-28 15:03:04'),
(2, 11, 10, '2020-04-28 15:03:04', '2020-04-28 15:03:04'),
(8, 8, 4, NULL, NULL),
(9, 8, 5, NULL, NULL),
(10, 8, 6, NULL, NULL),
(13, 12, 18, NULL, NULL),
(14, 12, 19, NULL, NULL),
(15, 13, 6, NULL, NULL),
(16, 13, 9, NULL, NULL),
(17, 13, 8, NULL, NULL),
(18, 13, 7, NULL, NULL),
(19, 13, 4, NULL, NULL),
(20, 13, 5, NULL, NULL),
(21, 13, 10, NULL, NULL),
(22, 13, 11, NULL, NULL),
(23, 13, 12, NULL, NULL),
(24, 13, 13, NULL, NULL),
(25, 13, 15, NULL, NULL),
(26, 13, 16, NULL, NULL),
(27, 13, 17, NULL, NULL),
(28, 13, 18, NULL, NULL),
(29, 13, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_districts`
--

CREATE TABLE `sub_districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_districts`
--

INSERT INTO `sub_districts` (`id`, `name`, `district_id`, `serial`, `created_at`, `updated_at`) VALUES
(1, 'Sonargaon', 2, 1, '2020-04-10 03:11:52', '2020-05-07 23:41:29'),
(2, 'Mirpur', 3, 2, '2020-04-29 01:13:23', '2020-05-19 00:11:21'),
(3, 'as', 2, 2, '2020-04-30 17:04:44', '2020-05-07 23:41:29'),
(4, 'fd', 2, 3, '2020-04-30 17:04:45', '2020-05-07 23:41:29'),
(5, 'cd', 2, 0, '2020-04-30 17:04:45', '2020-05-07 23:41:29'),
(6, 'Gulshan', 3, 3, '2020-05-18 23:45:48', '2020-05-19 00:11:21'),
(7, 'Gulistan', 3, 4, '2020-05-18 23:45:48', '2020-05-19 00:11:21'),
(8, 'Farmgate', 3, 5, '2020-05-18 23:45:48', '2020-05-19 00:11:21'),
(9, 'Shahbag', 3, 6, '2020-05-18 23:45:48', '2020-05-19 00:11:21'),
(10, 'uttara', 3, 0, '2020-05-18 23:45:48', '2020-05-18 23:45:48'),
(11, 'Badda', 3, 1, '2020-05-18 23:45:48', '2020-05-19 00:11:21'),
(12, 'Banasree', 3, 7, '2020-05-18 23:45:48', '2020-05-19 00:11:21'),
(13, 'Rampura', 3, 8, '2020-05-18 23:45:48', '2020-05-19 00:11:21'),
(14, 'Mugda', 3, 9, '2020-05-18 23:45:48', '2020-05-19 00:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `ticket_category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `status`, `ticket_category_id`, `created_at`, `updated_at`) VALUES
(1, 'as', 0, 1, '2020-04-23 14:27:29', '2020-04-23 14:27:29'),
(2, 'd', 1, 2, '2020-04-23 14:31:49', '2020-04-23 15:02:21'),
(3, 'c', 0, 1, '2020-04-23 14:35:06', '2020-04-23 14:35:06'),
(4, 'd', 0, 1, '2020-04-23 17:55:54', '2020-04-23 17:55:54'),
(5, 'ds', 0, 1, '2020-05-02 01:23:28', '2020-05-02 01:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_categories`
--

CREATE TABLE `ticket_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_categories`
--

INSERT INTO `ticket_categories` (`id`, `name`, `serial`, `created_at`, `updated_at`) VALUES
(1, 'payment', 0, '2020-04-23 17:42:59', '2020-04-23 17:42:59'),
(2, 'Product', 0, '2020-04-23 17:44:06', '2020-04-23 17:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `top_ads`
--

CREATE TABLE `top_ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `top_ad_category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `paid` int(11) NOT NULL DEFAULT 0,
  `start_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_ad_additionals`
--

CREATE TABLE `top_ad_additionals` (
  `id` int(10) UNSIGNED NOT NULL,
  `top_ad_id` int(10) UNSIGNED NOT NULL,
  `additional_field_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_ad_categories`
--

CREATE TABLE `top_ad_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `duration` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_ad_categories`
--

INSERT INTO `top_ad_categories` (`id`, `duration`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 50, 1, '2020-05-22 08:37:36', '2020-05-22 08:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `top_ad_extra_charges`
--

CREATE TABLE `top_ad_extra_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `top_ad_id` int(10) UNSIGNED NOT NULL,
  `extra_charge_rule_id` int(10) UNSIGNED NOT NULL,
  `charge` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_ad_payment_verifications`
--

CREATE TABLE `top_ad_payment_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `top_ad_id` int(10) UNSIGNED NOT NULL,
  `payment_verification_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `withdraw_id` int(11) NOT NULL DEFAULT 0,
  `boost_id` int(11) NOT NULL DEFAULT 0,
  `top_ad_id` int(11) NOT NULL DEFAULT 0,
  `sub_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `collected` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `amount`, `order_id`, `withdraw_id`, `boost_id`, `top_ad_id`, `sub_id`, `type`, `collected`, `created_at`, `updated_at`) VALUES
(2, 900, 54, 0, 0, 0, 0, 'Order Payment', 1, '2020-05-24 11:32:46', '2020-05-24 11:32:46'),
(3, 100, 0, 7, 0, 0, 0, 'Vendor Withdraw', 0, '2020-05-26 11:37:46', '2020-05-24 11:37:46'),
(4, 50, 0, 3, 0, 0, 0, 'Admin Withdraw', 0, '2020-05-24 11:40:53', '2020-05-24 11:40:53'),
(5, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:35', '2020-05-27 21:07:35'),
(6, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:35', '2020-05-27 21:07:35'),
(7, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:36', '2020-05-27 21:07:36'),
(8, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:36', '2020-05-27 21:07:36'),
(9, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:37', '2020-05-27 21:07:37'),
(10, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:37', '2020-05-27 21:07:37'),
(11, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:37', '2020-05-27 21:07:37'),
(12, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:38', '2020-05-27 21:07:38'),
(13, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:38', '2020-05-27 21:07:38'),
(14, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:38', '2020-05-27 21:07:38'),
(15, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:39', '2020-05-27 21:07:39'),
(16, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:39', '2020-05-27 21:07:39'),
(17, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:39', '2020-05-27 21:07:39'),
(18, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:40', '2020-05-27 21:07:40'),
(19, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:40', '2020-05-27 21:07:40'),
(20, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:41', '2020-05-27 21:07:41'),
(21, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:41', '2020-05-27 21:07:41'),
(22, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:42', '2020-05-27 21:07:42'),
(23, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:42', '2020-05-27 21:07:42'),
(24, 120, 0, 0, 0, 0, 101, 'subscription', 1, '2020-05-27 21:07:42', '2020-05-27 21:07:42'),
(26, 250, 0, 0, 0, 0, 98, 'subscription', 1, '2020-05-27 21:08:21', '2020-05-27 21:08:21'),
(27, 120, 0, 0, 0, 0, 102, 'subscription', 1, '2020-05-29 09:10:07', '2020-05-29 09:10:07'),
(28, 120, 0, 0, 0, 0, 103, 'subscription', 1, '2020-05-29 09:16:28', '2020-05-29 09:16:28'),
(29, 50, 0, 12, 0, 0, 0, 'User Withdraw', 0, '2020-05-30 03:17:38', '2020-05-30 03:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' Not Set',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `subdistrict_id` int(11) DEFAULT 0,
  `district_id` int(11) DEFAULT 0,
  `division_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `subdistrict_id`, `district_id`, `division_id`) VALUES
(13, 'Vendor', '1557677677bouquet_PNG62.png', '1234', 'Washington, DC', 'Algeria', 'Space Needle 400 Broad St, Seattles', '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'XRcBh8iPSOYwxzJhbnpfED9m1wEVZ3B6jkNGFD34CkLnUStmPIS2A5HEAUlh', '2018-03-07 18:05:44', '2019-10-10 02:35:29', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 5000, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2019-11-24', 0, 0, 0, 0),
(28, 'User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'junnung@gmail.com', '$2y$10$YDfElg7O3K6eQK5enu.TBOyo.8TIr6Ynf9hFQ8dsIDeWAfmmg6hA.', 'pNFebTvEQ3jRaky9p7XnCetHs9aNFFG7nqRFho0U7nWrgT7phS6MoX8f9EYz', '2019-10-13 05:39:13', '2019-10-13 05:39:13', 0, 0, '8036978c6d71501e893ba7d3f3ecc15d', 'Yes', '33899bafa30292165430cb90b545728a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(29, 'piash', '15870303761567226936Baby.tux-800x800.png', '1200', 'Dhaka', 'Bangladesh', 'Dhaka', '01742349541', NULL, 'piash3700@gmail.com', '$2y$10$klbY/2rpx/nNMdbnwxaK6ulVOHFEKiGHB4CU/fjE1MGO/fSAyB3A2', 'kQHNC5ZqRbJi3e0bLrsLuRhIuj1nAIMAljIuYI4dRjsGRpmZRbXduzS8ZTcP', '2020-04-09 08:05:23', '2020-05-30 01:03:38', 0, 0, 'ee1da91c1a625f09d87a87f3b0ed62f7', 'Yes', '9567af758a92a16104a4f341dc1b2a38', 47.5, 'sy', 'sa', 'sa', 'Dhaka', NULL, NULL, 'dammy details', '15865770251584479344.jpg', 'sa', NULL, NULL, NULL, 0, 1, 0, 0, 0, 1, 0, 7.2565, '2020-08-27', 0, NULL, 3, 2),
(38, 'piash', NULL, NULL, NULL, NULL, 'dhaka', '01736937160', NULL, 'piash@gmail.com', '$2y$10$qVNkmD28F8VWAWuEa0BHOOx9P53Tj7RCbo9e3A6dQmqKdoWIwFpxi', 'HrkB7SFH7R2eQvLlSDf1UxfplFy4k9eixfV4EaG5CSLuFF3XPnqA2wRCxl2X', '2020-05-11 22:31:45', '2020-05-21 08:51:23', 0, 0, 'ef5fce96a21cabb1b2e92a6cd8e8e151', 'No', '98bca6972aaa2ea6a5f45f50a3dfeb04', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(39, 'piash', NULL, NULL, NULL, NULL, 'dhaka', '01736937161', NULL, 'piash58@gmail.com', '$2y$10$5fSlobaL2R69KDGtV10T1.EmjeU9ctK0H8Gek1sSdo9D2qS9yp8/6', 'Aly608g9DR7MdVWEmbiUWoHVyQMNveRCHnR0zZA9v6J8ydjLH8mTGUzG0LgP', '2020-05-21 10:48:36', '2020-05-29 09:10:07', 0, 0, '9db1dd46760c0087df95d3463647f50a', 'No', '5535569fb0e64f567b40bf387194903b', 0, 'dth', 'piash', 'sa', 'dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2020-08-27', 0, NULL, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_categories`
--

CREATE TABLE `user_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 13, 'fFgw1573717404', 1, '2019-11-14 01:43:24', '2019-11-23 22:30:07'),
(2, 13, '1g811573717871', 1, '2019-11-14 01:51:11', '2019-11-23 22:30:07'),
(3, 29, '6Lqq1586785088', 1, '2020-04-13 07:38:08', '2020-04-15 05:00:00'),
(4, 13, 'EjEu1586877183', 0, '2020-04-14 09:13:03', '2020-04-14 09:13:03'),
(5, 29, 'zqEk1587123151', 1, '2020-04-17 05:32:31', '2020-04-17 05:34:02'),
(6, 29, 'uD3v1587128321', 1, '2020-04-17 06:58:41', '2020-04-20 21:00:20'),
(7, 13, 'uD3v1587128321', 0, '2020-04-17 06:58:41', '2020-04-17 06:58:41'),
(8, 29, 'Q94n1587128689', 1, '2020-04-17 07:04:49', '2020-04-20 21:00:20'),
(9, 13, 'Q94n1587128689', 0, '2020-04-17 07:04:49', '2020-04-17 07:04:49'),
(10, 29, '#0098', 0, '2020-05-12 07:31:26', '2020-05-12 07:31:26'),
(11, 37, '0054', 0, '2020-05-15 08:27:46', '2020-05-15 08:27:46'),
(12, 37, '0073', 0, '2020-05-15 08:38:20', '2020-05-15 08:38:20'),
(13, 37, '0011', 0, '2020-05-15 08:44:46', '2020-05-15 08:44:46'),
(14, 37, 'BhNS1589560669', 0, '2020-05-15 10:37:49', '2020-05-15 10:37:49'),
(15, 37, '0059', 0, '2020-05-16 00:46:19', '2020-05-16 00:46:19'),
(16, 37, '0080', 0, '2020-05-16 00:48:59', '2020-05-16 00:48:59'),
(17, 37, '0014', 0, '2020-05-16 00:51:32', '2020-05-16 00:51:32'),
(18, 37, '0070', 0, '2020-05-16 00:55:49', '2020-05-16 00:55:49'),
(19, 37, '0057', 0, '2020-05-16 02:42:41', '2020-05-16 02:42:41'),
(20, 37, '0085', 0, '2020-05-16 03:09:33', '2020-05-16 03:09:33'),
(21, 37, '0021', 0, '2020-05-16 03:10:08', '2020-05-16 03:10:08'),
(22, 37, '0095', 0, '2020-05-16 03:12:39', '2020-05-16 03:12:39'),
(23, 37, '0015', 0, '2020-05-16 03:16:07', '2020-05-16 03:16:07'),
(24, 37, '0068', 0, '2020-05-16 03:17:35', '2020-05-16 03:17:35'),
(25, 37, '0014', 0, '2020-05-16 03:17:58', '2020-05-16 03:17:58'),
(26, 37, '0072', 0, '2020-05-16 03:19:07', '2020-05-16 03:19:07'),
(27, 37, '0080', 0, '2020-05-16 03:27:06', '2020-05-16 03:27:06'),
(28, 37, '0099', 0, '2020-05-16 03:28:54', '2020-05-16 03:28:54'),
(29, 37, '0027', 0, '2020-05-16 03:50:22', '2020-05-16 03:50:22'),
(30, 37, '0038', 0, '2020-05-16 13:55:35', '2020-05-16 13:55:35'),
(31, 29, '0021', 0, '2020-05-18 11:54:17', '2020-05-18 11:54:17'),
(32, 37, '0039', 0, '2020-05-21 04:10:40', '2020-05-21 04:10:40'),
(33, 37, '0032', 0, '2020-05-21 04:22:08', '2020-05-21 04:22:08'),
(34, 29, '0064', 0, '2020-05-21 08:51:24', '2020-05-21 08:51:24'),
(35, 29, '0053', 0, '2020-05-24 08:24:41', '2020-05-24 08:24:41'),
(36, 29, '0011', 0, '2020-05-24 08:37:45', '2020-05-24 08:37:45'),
(37, 29, '0099', 0, '2020-05-24 08:39:24', '2020-05-24 08:39:24'),
(38, 29, '0052', 0, '2020-05-24 08:41:04', '2020-05-24 08:41:04'),
(39, 29, '0061', 0, '2020-05-26 07:19:01', '2020-05-26 07:19:01'),
(40, 29, '0096', 0, '2020-05-30 06:05:34', '2020-05-30 06:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscription_payment_verifications`
--

CREATE TABLE `user_subscription_payment_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_subscription_id` int(10) UNSIGNED NOT NULL,
  `payment_verification_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_subscription_payment_verifications`
--

INSERT INTO `user_subscription_payment_verifications` (`id`, `user_subscription_id`, `payment_verification_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 101, 4, 's', '2020-05-27 09:43:08', '2020-05-27 09:43:08'),
(2, 102, 2, 'ds', '2020-05-29 08:58:09', '2020-05-29 08:58:09'),
(3, 103, 2, 'd', '2020-05-29 09:09:05', '2020-05-29 09:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(39, 29, 54, 6, 900, '0052', 'processing'),
(40, 29, 55, 1, 150, '0061', 'pending'),
(41, 29, 56, 1, 200, '0096', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_warning` tinyint(1) NOT NULL DEFAULT 0,
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Verified', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2019-11-14 03:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(1, 22, 176),
(2, 22, 102),
(3, 22, 101),
(4, 22, 97),
(5, 22, 99),
(6, 37, 188),
(7, 37, 187),
(8, 37, 186),
(9, 37, 183),
(10, 37, 189),
(11, 37, 100),
(12, 29, 97),
(13, 38, 188);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(3, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.5, 5.5, '2020-05-14 14:52:19', '2020-05-16 20:36:54', 'rejected', 'vendor'),
(4, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.5, 5.5, '2020-05-14 14:52:36', '2020-05-16 20:36:50', 'rejected', 'vendor'),
(5, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 0, '2020-05-14 15:09:31', '2020-05-14 17:27:06', 'completed', 'vendor'),
(6, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 0, '2020-05-16 20:37:26', '2020-05-16 20:37:52', 'rejected', 'vendor'),
(7, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 0, '2020-05-22 14:03:55', '2020-05-24 17:36:33', 'completed', 'vendor'),
(8, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150, 0, '2020-05-26 13:11:04', '2020-05-26 13:11:04', 'pending', 'vendor'),
(9, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 0, '2020-05-26 13:21:38', '2020-05-26 13:21:38', 'pending', 'vendor'),
(10, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 0, '2020-05-26 13:26:49', '2020-05-26 13:26:49', 'pending', 'vendor'),
(11, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 5, '2020-05-26 13:28:30', '2020-05-26 13:28:58', 'rejected', 'vendor'),
(12, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 2.5, '2020-05-30 07:03:38', '2020-05-30 09:17:38', 'completed', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_additionals`
--

CREATE TABLE `withdraw_additionals` (
  `id` int(10) UNSIGNED NOT NULL,
  `withdraw_id` int(10) UNSIGNED NOT NULL,
  `additional_field_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_additionals`
--

INSERT INTO `withdraw_additionals` (`id`, `withdraw_id`, `additional_field_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 5, 6, '01736937161', '2020-05-14 09:09:31', '2020-05-14 09:09:31'),
(2, 6, 6, 'fd', '2020-05-16 14:37:26', '2020-05-16 14:37:26'),
(3, 7, 6, 'sass', '2020-05-22 08:03:55', '2020-05-22 08:03:55'),
(4, 12, 6, '01751', '2020-05-30 01:03:38', '2020-05-30 01:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_extra_charges`
--

CREATE TABLE `withdraw_extra_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `withdraw_id` int(10) UNSIGNED NOT NULL,
  `extra_charge_rule_id` int(10) UNSIGNED NOT NULL,
  `charge` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_payment_verifications`
--

CREATE TABLE `withdraw_payment_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `withdraw_id` int(10) UNSIGNED NOT NULL,
  `payment_verification_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_fields`
--
ALTER TABLE `additional_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `additional_fields_payment_gateway_id_index` (`payment_gateway_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_withdraws`
--
ALTER TABLE `admin_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_sub_district_id_index` (`sub_district_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boosts`
--
ALTER TABLE `boosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boosts_boost_category_id_index` (`boost_category_id`),
  ADD KEY `boosts_product_id_index` (`product_id`);

--
-- Indexes for table `boost_additionals`
--
ALTER TABLE `boost_additionals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boost_additionals_boost_id_index` (`boost_id`),
  ADD KEY `boost_additionals_additional_field_id_index` (`additional_field_id`);

--
-- Indexes for table `boost_categories`
--
ALTER TABLE `boost_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boost_extra_charges`
--
ALTER TABLE `boost_extra_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boost_extra_charges_boost_id_index` (`boost_id`),
  ADD KEY `boost_extra_charges_extra_charge_rule_id_index` (`extra_charge_rule_id`);

--
-- Indexes for table `boost_payments`
--
ALTER TABLE `boost_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boost_payments_boost_id_foreign` (`boost_id`);

--
-- Indexes for table `boost_payment_verifications`
--
ALTER TABLE `boost_payment_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boost_payment_verifications_boost_id_index` (`boost_id`),
  ADD KEY `boost_payment_verifications_payment_verification_id_index` (`payment_verification_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_brand_category_id_index` (`brand_category_id`);

--
-- Indexes for table `brand_categories`
--
ALTER TABLE `brand_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division_id_index` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_charge_rules`
--
ALTER TABLE `extra_charge_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hidden_charges`
--
ALTER TABLE `hidden_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hidden_charges_payment_gateway_id_index` (`payment_gateway_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_additionals`
--
ALTER TABLE `order_additionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_extra_charges`
--
ALTER TABLE `order_extra_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payment_verifications`
--
ALTER TABLE `order_payment_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_verifications`
--
ALTER TABLE `payment_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_verifications_payment_gateway_id_index` (`payment_gateway_id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_categories`
--
ALTER TABLE `subscription_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_districts`
--
ALTER TABLE `sub_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_districts_district_id_index` (`district_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_ads`
--
ALTER TABLE `top_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `top_ads_top_ad_category_id_index` (`top_ad_category_id`),
  ADD KEY `top_ads_product_id_index` (`product_id`);

--
-- Indexes for table `top_ad_additionals`
--
ALTER TABLE `top_ad_additionals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `top_ad_additionals_top_ad_id_index` (`top_ad_id`),
  ADD KEY `top_ad_additionals_additional_field_id_index` (`additional_field_id`);

--
-- Indexes for table `top_ad_categories`
--
ALTER TABLE `top_ad_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_ad_extra_charges`
--
ALTER TABLE `top_ad_extra_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `top_ad_extra_charges_top_ad_id_index` (`top_ad_id`),
  ADD KEY `top_ad_extra_charges_extra_charge_rule_id_index` (`extra_charge_rule_id`);

--
-- Indexes for table `top_ad_payment_verifications`
--
ALTER TABLE `top_ad_payment_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `top_ad_payment_verifications_top_ad_id_index` (`top_ad_id`),
  ADD KEY `top_ad_payment_verifications_payment_verification_id_index` (`payment_verification_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_categories`
--
ALTER TABLE `user_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscription_payment_verifications`
--
ALTER TABLE `user_subscription_payment_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_additionals`
--
ALTER TABLE `withdraw_additionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_extra_charges`
--
ALTER TABLE `withdraw_extra_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_payment_verifications`
--
ALTER TABLE `withdraw_payment_verifications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_fields`
--
ALTER TABLE `additional_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `admin_withdraws`
--
ALTER TABLE `admin_withdraws`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `boosts`
--
ALTER TABLE `boosts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `boost_additionals`
--
ALTER TABLE `boost_additionals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `boost_categories`
--
ALTER TABLE `boost_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boost_extra_charges`
--
ALTER TABLE `boost_extra_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `boost_payments`
--
ALTER TABLE `boost_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boost_payment_verifications`
--
ALTER TABLE `boost_payment_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand_categories`
--
ALTER TABLE `brand_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `extra_charge_rules`
--
ALTER TABLE `extra_charge_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hidden_charges`
--
ALTER TABLE `hidden_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `order_additionals`
--
ALTER TABLE `order_additionals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_extra_charges`
--
ALTER TABLE `order_extra_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_payment_verifications`
--
ALTER TABLE `order_payment_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `payment_verifications`
--
ALTER TABLE `payment_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=768;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscription_categories`
--
ALTER TABLE `subscription_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sub_districts`
--
ALTER TABLE `sub_districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket_categories`
--
ALTER TABLE `ticket_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `top_ads`
--
ALTER TABLE `top_ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `top_ad_additionals`
--
ALTER TABLE `top_ad_additionals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `top_ad_categories`
--
ALTER TABLE `top_ad_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `top_ad_extra_charges`
--
ALTER TABLE `top_ad_extra_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `top_ad_payment_verifications`
--
ALTER TABLE `top_ad_payment_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_categories`
--
ALTER TABLE `user_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `user_subscription_payment_verifications`
--
ALTER TABLE `user_subscription_payment_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `withdraw_additionals`
--
ALTER TABLE `withdraw_additionals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdraw_extra_charges`
--
ALTER TABLE `withdraw_extra_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_payment_verifications`
--
ALTER TABLE `withdraw_payment_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_sub_district_id_foreign` FOREIGN KEY (`sub_district_id`) REFERENCES `sub_districts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boosts`
--
ALTER TABLE `boosts`
  ADD CONSTRAINT `boosts_boost_category_id_foreign` FOREIGN KEY (`boost_category_id`) REFERENCES `boost_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `boosts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boost_additionals`
--
ALTER TABLE `boost_additionals`
  ADD CONSTRAINT `boost_additionals_additional_field_id_foreign` FOREIGN KEY (`additional_field_id`) REFERENCES `additional_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `boost_additionals_boost_id_foreign` FOREIGN KEY (`boost_id`) REFERENCES `boosts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boost_extra_charges`
--
ALTER TABLE `boost_extra_charges`
  ADD CONSTRAINT `boost_extra_charges_boost_id_foreign` FOREIGN KEY (`boost_id`) REFERENCES `boosts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `boost_extra_charges_extra_charge_rule_id_foreign` FOREIGN KEY (`extra_charge_rule_id`) REFERENCES `extra_charge_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boost_payments`
--
ALTER TABLE `boost_payments`
  ADD CONSTRAINT `boost_payments_boost_id_foreign` FOREIGN KEY (`boost_id`) REFERENCES `boosts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `boost_payment_verifications`
--
ALTER TABLE `boost_payment_verifications`
  ADD CONSTRAINT `boost_payment_verifications_boost_id_foreign` FOREIGN KEY (`boost_id`) REFERENCES `boosts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `boost_payment_verifications_payment_verification_id_foreign` FOREIGN KEY (`payment_verification_id`) REFERENCES `payment_verifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_brand_category_id_foreign` FOREIGN KEY (`brand_category_id`) REFERENCES `brand_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_districts`
--
ALTER TABLE `sub_districts`
  ADD CONSTRAINT `sub_districts_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `top_ads`
--
ALTER TABLE `top_ads`
  ADD CONSTRAINT `top_ads_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `top_ads_top_ad_category_id_foreign` FOREIGN KEY (`top_ad_category_id`) REFERENCES `top_ad_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `top_ad_additionals`
--
ALTER TABLE `top_ad_additionals`
  ADD CONSTRAINT `top_ad_additionals_additional_field_id_foreign` FOREIGN KEY (`additional_field_id`) REFERENCES `additional_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `top_ad_additionals_top_ad_id_foreign` FOREIGN KEY (`top_ad_id`) REFERENCES `top_ads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `top_ad_extra_charges`
--
ALTER TABLE `top_ad_extra_charges`
  ADD CONSTRAINT `top_ad_extra_charges_extra_charge_rule_id_foreign` FOREIGN KEY (`extra_charge_rule_id`) REFERENCES `extra_charge_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `top_ad_extra_charges_top_ad_id_foreign` FOREIGN KEY (`top_ad_id`) REFERENCES `top_ads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `top_ad_payment_verifications`
--
ALTER TABLE `top_ad_payment_verifications`
  ADD CONSTRAINT `top_ad_payment_verifications_payment_verification_id_foreign` FOREIGN KEY (`payment_verification_id`) REFERENCES `payment_verifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `top_ad_payment_verifications_top_ad_id_foreign` FOREIGN KEY (`top_ad_id`) REFERENCES `top_ads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_categories`
--
ALTER TABLE `user_categories`
  ADD CONSTRAINT `user_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
