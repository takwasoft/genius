-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 10:35 AM
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
(7, 'Mr. Pratik', 'pratik@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, 'iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq', '2019-09-18 21:23:16', '2019-09-18 21:23:16', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boosts`
--

INSERT INTO `boosts` (`id`, `boost_category_id`, `product_id`, `status`, `paid`, `start_at`, `end_at`, `created_at`, `updated_at`) VALUES
(1, 1, 194, 1, 1, '2020-04-29 12:14:22', '2020-04-29 12:14:22', '2020-04-29 19:14:22', '2020-04-29 22:51:17');

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
(1, 2, 100, 1, '2020-04-29 02:25:47', '2020-04-29 02:29:39');

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
(3, 'browser', 'Windows 10', 4387, 0, NULL),
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
(244, 194, '1588100918Cat.PNG');

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
(1, '159005860515.PNG', '1571567283favicon.png', 'Shotovag', 'Info@example.com', '0123 456789', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', 'COPYRIGHT © 2019. All Rights Reserved By <a href=\"http://geniusocean.com/\">GeniusOcean.com</a>', '#0aab68', '1564224328loading3.gif', '1564224329loading3.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 0, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 1, 1, 0, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 5, 5, 0, 5, 'mail.shotovag.com', '587', 'sell@shotovag.com', 'takwasoft1*', 'info@shotovag.com', 'info', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 1, 10, '1590072489notice.png', 'Already Added To Cart', 0, 0, 1, 1, 0, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#143250', '#02020c', 1, '#ff5500', '#02020c', 0, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 1, 1, 1, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 0, '1566878455404.png', 1, 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1567488562subscribe.jpg', '1571567295logo.png', '1567655174profile.jpg', '#666666', 0, 1, 1, 'shaon143-facilitator-1@gmail.com', '1571567309footers.png', 'tls', 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 1, 'Pay via your Paytm account.', 'live', 1, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 1, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', '<!-- Load Facebook SDK for JavaScript -->\r\n      <div id=\"fb-root\"></div>\r\n      <script>\r\n        window.fbAsyncInit = function() {\r\n          FB.init({\r\n            xfbml            : true,\r\n            version          : \'v6.0\'\r\n          });\r\n        };\r\n\r\n        (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));</script>\r\n\r\n      <!-- Your customer chat code -->\r\n      <div class=\"fb-customerchat\"\r\n        attribution=setup_tool\r\n        page_id=\"220264648887679\"\r\n  theme_color=\"#fa3c4c\">\r\n      </div>', 1, 'piash3700@gmail.com', 'dsd');

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
(14, '2020_05_13_142637_create_hidden_charges_table', 7);

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
(51, NULL, 39, NULL, NULL, NULL, 0, '2020-05-21 10:48:36', '2020-05-21 10:48:36');

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
(1, 22, 'BZh91AY&SY8Q\0_PXø;Kü¿ÿÿúP<CM1ÌiL\0`\0\0	 õ\rÔÐaFÔ\0$Ô¢¨\04È\0\0\Z\0ÌiL\0`\0\0	@MÍL42LO(ÓÈ\ZzHHfùÐwÅ¹\0((}ûÏf¬ÂJ^¡v~ãTz 8öûéÃÁE4§éícde§fºÌ­Õ>ÿ8±&m7«I\rHÆ«PÖêÊþ°á³¨ò7]øð)Ð¡ ¼Äó>¬æÅ¨ÌfÒAö(;L¡v;JºòÊ2\ZøKrbW³Â\n´éY8pm9ÆE;Ò	4 ZÉÈ\ZcMZ§STÇS»JFÃlû¢¸}UÀm»+%[\n	I0V¥î/¸µÁ%ô$R¥h5*{ÒMlÁöYiÀfCÝÏQ£&d&2â1<´DàÆôHã@åYé tå.Cº[RÕ&ÓÆ¬+PhÒ×X¥:¹Lxx	¼ªè&à9Dµ±]ÉµJ½Ú½ÕÞ\Z)hH²\nR [d l¡Aª)ÉFDR,ÔbÐ\"DDc2ÊSI@Q¸¹½|ºõHLÂ\0±Ö5L4ÑRv\\)7¶íí#K3dsnr0rÇ6ü7w	Ê7Ál¡·Û¾IÎ÷»³	c\\q:S8ú\"N ²Æ>#Ï¼ý´ð:Ê*}g¤ue¥cêbQsn*Ì}§(½b¬ù³b£J ²±ÜjÜgÈïA{²j\rãè}¼Oô¼ÍHsâ¾&¤l\r¡\r dw9Ö^#°b¼¡òÊb9ùGii~ Ñø¡Á©\\^Á¡±^æÐºàæ°õ\ZË5jIC(pf2Cðÿ°d·pW]ÜgrµXLe¥¡iVÂÑ¶¤+mU<	ñ5KËx¤JC²Ä®ì$Uyd<kï¦;\'JÍ7èkaÎLî9rSé2ÐÁØÍ¦DA*OhÂCÓÜ,¸®Àg¢öKMÄÄB\nÔÈêõXK@È¶fÓÖ\\AêÄ$IM¬/­*ô$`ü¡ØÜ¸t/³Y°^@0\'§§ Ð<Æ)#\0] 0Le!àVðÐÅ-)$r|qHPãCH\\8PR^A@Ð+cÉYô\r¨½\r2´N?±.uLýKwv¸ãâj7%fñ~GýòAÅ°°#âem-AÁâ´âm9§l!ö0/HRR¾ñ ä4ªn \\AS£¾r}ÞDtB¤©dc$FIBEÁ(i0hM©\ZËÎ7B)±-EÖYa¡T$ÐÑg#DÝÇUòÃZLÉÕ8Ãpq£¸$\n6¶\Z]¢(L-F\r{£¹ùð-¿Z%55Z\"&n\'ä=ûHên$Wïh Ä¸«f¹·¶a>8¡Sü]ÉáBBáF\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 180, NULL, NULL, 'fFgw1573717404', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-11-14 01:43:24', '2019-11-14 01:43:24', NULL, NULL, '$', 1, 10, 15, 0, 0, NULL, 0, 0),
(2, 22, 'BZh91AY&SY6%¡\0ßP\0Xø;Kü¿ÿÿú`=ª,±P\09¦&\0\0\0\0\0	P%\Z\r\r\0z\Zi Ð\0æ\0L\0L\0`\0&RC&i§¢4È!CF 9¦&\0\0\0\0\0	DDÐ#MM¦ £M2M4hÓÔÐ×6è\">æà``$ë:ÓY:§H¢ºµépÔWwï,2JÂ7Räá©hBñº!32Ùü)ªbMçI$Ùj5×q±¸·Ø{Á¾ÿ1ô8á9ù\nù\03 `Ôì3>§ÞubÔØg!!ó*<\r!w<\nÆ¾Âê4\ZóKhH[euÊ.¤88GB¾Ã¼ZMI!¦ÄÐ\ZcMZÒý(ªÍK11L¢Ø	Pb¸/ fIÓdÉiblª«xtÅ¢Â*z!0X®æþdÈa\nÄ$ZÂqJh»PU·wæJIP)PjºÔeVâ	´&MÓ6d\rEÍ,2ò=0¥1%8uÇÒ*¢\\3Ýâpæ$@[ÚÔØJB2EÔ\"¢ìás\"VB\"Á!dt´«¨`ª«ì_TÁA½I&ÒÂ\0]3YIC£»FhA·5JKDL:`&HP´¡E¸ÜõØÝ¬$,\0|ÆY¾Uìt©Z]*^.(êµ¶jcaCe6¦ØÌ9§F$ÍB*:æÆ¦klç5F´BØÖ£	màÓ80§têæ=fóè9K$³å?Íã8¾òÑò3*º¸Êì?¤b³W{½U¥VÅVÝa\0`ÜÿaMç¼PcKPwcùüÙ£e$uÕøT¢xo2MpCàTëY\r|HGxÅSòÒ:úy¡±`Ñö©Úd°1`ÐØ±À0À:®<ÆâíuÉU+¡l2F.Àÿ dñígn<é½\\PeÅåáyfÂñ¶¤WÞ¬|Iò58\r3I28-9=_SÒAÐfáâûªg¾ÝËüÿC[Î²¼èzeS¸Ó¹×tPóØ°fz>^±iÍw<W¨],rC,zgCÏå¸A 3ÀËI*e«dPg&A?p¼6Bþ+ÙÃÛâñN\\ÎíDAP-g!a2ÕDI9+ÉãQWª bÐ0¡*`rÍIY\n¥åØa÷2Ko ²àPÓ-P¼çúÜ°¸i0÷î#S°¹(6;÷Øä{	mÄ{M2¹Q¥¨dv£Ó8lÎU/>ö#+\nTcÈPt\ZV8Aº0ì»~ÞÇÕzÓè·Â²1`f%\"Wi \\	\Zt;æÉ«.0ïKª½%×EQB!xÒdsäàUMàvã6/½4TdÆ&3Æ*w\0©À/Y*P/FMz×Û÷vãÑ.A	QQE$E%?öp Ä¢ÄväFÁöµB5½ÃºX!ÁÁÂAcÿrE8P6%¡', 'Cash On Delivery', 'shipto', 'Azampur', '1', 155, NULL, NULL, '1g811573717871', 'Pending', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2019-11-14 01:51:11', '2019-11-14 01:51:11', NULL, NULL, '$', 1, 10, 15, 0, 0, NULL, 0, 0),
(3, 29, 'BZh91AY&SYÞG\0Ú_@\0Pø;ôN¿ïÿúPÝÙÕbÈè\0:P!)M\'¦i=@\0\0\0\0\0\0ÐÑD\0@\0\0\0\0BD\0Ð\0\r\0\0@s\0À\0L\0\0\0\0\"F£ÈB=#ÔÈiêz4Òz\nhù¼@OÜ9SÜh0Á?ÃÈÎ0*2ZúFD]ÖH>$2Îªy\0îØÆ()KèÄ&ÙYÒáDG,¢ÑH%)m\Z<¯(Ò!îÂ8Ô~3ÚeÔm³J%Àc&I Æ0\\#3AóõÕÄº íÉ\r#¸^,MlñB!¼¥6	Û÷ïÙÝ)Pb¨ÂB¤\"ëZWêTEm±´ÛcEæ8LÓHPNìà×á£ÈFùºÖhÙoyÓJLÍº	(Ð6Ö´ÌÌa1¡2Ê³8N¡%©-I5Ìe  Ì¡B\\\n,H{É!PSV] RrÈe&`F%dáä&$&b2I\nZõ¨­0¤ª\\ d(êU]VÎ*®íäQè? Ò÷ñ¤6ÌÓòÇADÙ%;8nhëZÆIIe$5JÒ ]¼ãY:¡!U$ñª	fÊ\\­\nÐè´*^Ñhª¹LÞF9%aÂEB\n7`tÂD@\ng8rYaªÆ«Ð»QYðj:^ÕÙ×À¡caÈ§Å!][¶|\nöx#°	ýp=§<\n<+­jÃÒ¤f &Z±è0Ê~cÀûhwEÝI¸Ú;â\'=\"àòUCBfY1!)cÐâwÀÖXâ´xEt½ÂÆ&fd\r@½ÏÒç$h+A¡M Ô¸l¡ÀÌÖ[J4ÀFÃ*¶ÚzûNÛÃ»¾Þ¾6(5R[FÝÅkÔ. æ}ÌÍ3!I280%ÎÒK®ñÜe¨fÁèjµ4ì¦a(¶ý§÷þqRv5¿¬Ñ¼ÅÛZ®H(s	¹pÚ(ï`´ñ^ãÉw\0+Æ\"\0`îu$ÇÖvr±;Å±=!$ª5£+Öè ÏRN h\\MÀÇÖÍæèVtö\nñë9pÂñÌRE´ØT-P\"F\nâüRK¬J&1	St³,@T*p¤p*%òZWPÃÐÒº¹Nð4¡¦^©`vúÚ±°Ó0>XüutÏf£ak7!rs;¤ÔA¸3Ã¹vxvÊóNÛt}IÕNC^ö#@Êè%RIK ÈW	ÒÀÚAÈýÝvØÃz^ Æ&ý#	fHÈÂiVrIBmPè28èÝ(®Ä¸\nËò-cI\"æ ËQ%H¿T^÷\0Â°ñ8c(¹	1P\Z23 $ÈÊvÅJ,ë@÷\"¥ÈÉ¥ÞáRÔ`Æ?9i9-ÀBTTJ0[IG÷tj$HQdb({Z ^£\"R®Ñê5NóÙÉæ î<Çìö¡8(rFø»)Âò8xð', 'Bkash', 'shipto', 'Azampur', '1', 15.5, 'dsff', NULL, '6Lqq1586785088', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '370', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2020-04-13 07:38:08', '2020-05-13 00:51:39', NULL, NULL, '৳', 84.63, 0, 0, 0, 0, NULL, 0, 0),
(4, NULL, 'BZh91AY&SYsÜ©\0_PXø;oþ¿ïÿú`=ð\0\0\00À	Âi\0É¦a0		Ó\0\0	MÂ`\0&	¦\0\0&¥%4Ó&P\Zdb2h\0\0\0\0s	L\0L&\0\0LhH&4M¢i\'OÔjy\' 2Òyªj6M Ý}¸ûÂ{Óö|¼O,\\¡Q×ò1¿r.ë$ÈÉè}&d\ZÀkR®6LÈÔÖÕ\"øÛJ,«XÊÿX3¸È*sVDI²ëh×MH\rÇ1í~»àÿifn²½H@íØ	x4<OiÜsbÔÚ1uIIë5\'¨ õ)+é(-F%Á1,¶çm:çâMç9\'aé=FýHARH´Ún$FÐi41n¦ÝÔUe%{FÑÁ\0<eLðYXX@\r±Z\"×{Á6°jb³^EÖel\Z ¨ ¢Á(1ÅU~9BåÝaKÌÍ2$©UDV´[ma6ËVfÖ ©«®Ñ À¡B\\\n,HxB«&MÊ-,ÆUbQ¦.ÕÄ0©A2ówjÜ*¨¡Rö¢h\nZõ¨­aIT¸AR¤««ZJª¾µõH[ÞP×\ZiJÇÕ£_ÂÌ2J9Ía¡Vk\0\r0$)ZP¢ÖnÝ-ÓMÌQa øµò°ÇJ¡ºÒ¨eß¾Îï$`´´\Z4f©&V´ªÈò¹B,Ô¼®E¢/CL²ÊÖ4ÓB¬Ë5á^C9,H`gYãï=Æó¼©ñ(~ÅÏÌäü\rÙhÐ¢ßPÌþÏoÿÉÝ­WY¥dÐMãpjþ7Oô3Þ~c3v¢¨ø#/ãö>ÆÕ$p<º¥Ã#AÔÕ8\Z§ ×È{,Ê´ÃÜ@\Zæ\rMÆ{£íSÌt²3`ÐÚYÀç²sS¶Ý°aJÇÌÈ7| dôù¡Ýß§²,+cÛ\rµ\"Å°ú3û6æe¤%ÏA%×ød@õÌ<ß*7ÓPutO¨ÖóCàvªr5ê4vß9I%ð\røh[Ü£¹ÀóqçáÙ;)&!²r,>ãÑç±=a´ÑC ï3 óì	%Q­3½nò$Ð\'î\rÈ]+°lßÔe]Ç0¿ êì9l$/¢¡7ZÙ!q2õDI:,Â£*°¨PIÀÂ©Ë6´,@T*p¤p/aò7sT·ù¯lCL½C/¹=«+\r3ò2F^þxå©ÔU(6Bûô:ÈÆÂ§¬ÀÙû*]Y¥ÞnÔh3¹2:	¾§AÂðí`f2°¥HFYxÒ¹Äçocà¹ÚÂ²1`f!bWi¤\\	\Zt5Gko¯]éu«ÔZÆÁB¸J2(D.+l¸¸Sx:ÍrÂi¨ÈÏ©È(LA°|QRh×%äÀ¾áYöâ]qDtä><äú$C|Z6	ÙÔøÕÞ>±¾ùø8¸¸Ñ ¡È,âîH§\nq{ ', 'Bkash', 'shipto', 'Azampur', '1', 130, 'jsas014', NULL, 'EjEu1586877183', 'Pending', 'piash1840@gmail.com', 'Ashikur', 'Bangladesh', '01736937161', 'DHAKA', 'Dhaka', '3700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-04-14 09:13:03', '2020-04-14 09:13:03', NULL, NULL, '৳', 84.63, 0, 0, 0, 0, NULL, 0, 0),
(5, 29, 'BZh91AY&SY¼à\0â_@\0Pø;ôN¿ïÿúPdàÄl7qËC±²6	LG©¤f)è@\0 \"Lå\0 \0\Z\r\0&	4Ð¡d\04hÑ Ðæ\0	\0\0\0\0\0$@M\0SM¨=K.HýçQÚTó?ô\\²ÉJ?§Áw?;3hÅKÔø©\Z|Î±ºÏ5fÞ®©´Pââa^\\F×\r©XÝ0V¸¿ÊÀ¥Bk_ÆEÛpÓ&ó¹±úf4³Ñ¿±¯[°©¼ØÁy\'r¥(¤èRNâFö×ð4ßÁÜÊ=o[éRM±R0R/ÓÉÃ6rD@ÔÈ¦B1 kxÍÁhae%ÕâñÒA,	 É4Ó96hÆâ°ÀdB@3®»!g¤£3/Ktæ+!#	ê±ÌD$L]c=aÆX[+;\rh¬L±ºÃ$¹PÃ@Â8ÄPáçd%¬©mH×{X.qyR E0øZ	HFHºTgw«²\né(Ä¹2êçIf×.py¥G}ê)h5	º¡\'<h$#*GSÐÐ³Hé¤ÅD8 JH¬!R¥ÉÒß¾Ý-\"e<½iÇå*ÒNi4nx%ÞR£ZDÒÉ$[5w1,j³U,)G2KàSÁ¬¶iMuÔu5¼#ÚiÃ4\ZY°;éäA±ÎwG$ö\"	i\\_&Äô`WàÄ.qÓÌÇRA1²»\"b:Âö:>Ó¨¢P¥_jc%ÃKaÚKñ/N0¬jb-\'WuZÌ]äûNsr¥½ëÉªïÇ~åCzÚk©SåtöÕ³xFÕl[h©Tó8âÝ¯rÎð,[EíLgc{VÅ;iÛÀ)ºz2Ùlô3Þ\\ÐTÕDUlJ¼Ðaà~ÍåH¨¦8î+}FDÈ§|s9îS¸ö5èSi-ÜpÞ^2åØòþÕ9Ë»9â§\"bæ°P¼ëò^ÄÝ±JE¬R»Þ¯äcÂ`êxµYã¸ºó\nuÏã=uáµJ*qäÓ.Ò§Hÿy÷¼;£;x¥ÖÈ^¦ìX]Eãl´íaÃÉïb»9¬ÉËÃ¶aÅWánù!â×ÁIfY´Æ¬Ð,qHiE*M{Iµª°\r2¨j®ºòÍª²ó\0ì{KHi\Zm\"3Å)NÔñ¦µÞByS#1dû°CfJc¹y\rd½`¥¦eÇ©RhíYgU¬Ñný|ü7ÛyÂ`Õ\nHc\ZJ È« ­E,íõ·xÉÍ2ÙdÜ´[6ÂÅØ­iË¢ÍNþUbm[Úì¼fÓI)0*5o²X»V·ì¶,\ZMæÕvÆ,£ZÝ\'Î¥YKú7°ÈÐ­	N§J«Q	â;r×KSnãhÔïD£õÅÃ¬N²7Êqð£Ð\Zâ?ãäF@jÁþ.äp¡ ?yÀ', 'Bkash', 'shipto', 'Azampur', '2', 200, '123456', NULL, 'zqEk1587123151', 'Completed', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2020-04-17 05:32:31', '2020-05-17 11:20:03', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(6, 29, 'BZh91AY&SYAò)Ï\0KßP\0Xø;KüN¿ÿÿú`	_>\0$*IJ	@4ÄÀF`\0\0aÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F$I4Hi¡\0\r\0Ð\0IA&1¢FÓPÔzG¡Ô~©t n}¯½J~k?	O#æTCöex²Ò)Gà§è´\\ÿhÿ/6rcp:X®ÝÏ¯\Ziéck°ÁeRÊaQÑ1fË0s~j,ÑË4:5afÑd³gVXL·h¥°Õú«4ÁÇÌMïgÕ0ÄÑÂ´urZnÚZ8w?Ë«Ø±k?óÔúÃ^ëÕéÖ½tÛÎ{G¨á²é\'¢¡E(WGÅÓä?WG{õ£²½sÅà³Ée×>·âÔÑóz}6G¿?&t(ì©ÙüVó¡dEacøÊ­J`Ùg±àóti>ÇÍeé5!ËHutv]è©H¨ÃíT[,XäÞRñ¶Ë;3,NJj¨n¨Ñ9%¤¬°»²ÙVýÎNLDç(lJR¤R¦îK¹9,Ù¡ÉI¼¤Ä£ùK,þoË!J)ºîN:µa«ªÔFD6SFìÆ_îö2ÌÝ³m%))LÍYvù{Û5Êid)HÑª×aêu]ÑLO[ñ¬*TS,ÙÉÉEd9$QeE4mÔÓCN×\Zcm99ºöÚd/i4³U36a³fWe³QMÛ5nÄØÝ0Â*l»jhËQÂY0Õ£	IK.²ã\r\Z²É4n(atÃQbfaYMS-ºe2»ì¬ê;å1$QQHÑÁAHéCÀF(^f/R.d¡XY*\rÒâ\0Z1@ Á!)e*$©D)QF	Ý::;»ÎëI\rdI\'ã)Y=L\ZR`ËVLÎæ[¬õ0Ê]£<4SÊCE¦å¨ÉMN\\Ù(ËujºY4T^Vóe´UÙ[62³vU8pàº71²a²,¶ÙrlÕLF.hÙâ³ñÐáöC®üNwCS­÷:ùÏ.Yþ¶[ûºLÏ§IÙõ}ROè³\n:ÃêrE\Z<ªMT)E(.Áf²·Ô\Z,©ö°6}X÷0hÌØQ¬r;oTí±}oÁÝ?ÓêiÞ£Ú8ó30¹7q(ÉÕ)ÿJ|Òv0Ðò9Ê?¼¼>jLk«.kIGÍ´é;NNs¥EOôº>ÊY¬ø#¤¦èç9©(R æ}Ï\\·nÆ³«Ý-;æ¬&Ë6YS(Ñù7<Å¦\n<EÒ{YþÒ¬¼Û¬Ýfï%k¹RóQ£fÆÓU)¥&Í´7KÏ¨Ê|í5Í\nè\r¶[)Ì³u¡wó6æ?côêCev;åÙ²³:;Øué£ÉíôtÉ÷>/Üºeñ^s;Ëø¯/1>°³71Þ|aÂxAÞ9Æ0ú\'}U{o(Tjö©I*Sá>·Å¤»Ät*w§Æfzç¤âZz:ËÆÜ5eª1*}%ç4»ö6;?³Û=åJ*p©ëyN\Z»ðú,²TäeæøO±ç,Rl²ç¡1.Ô.¤è¹©*jÌK/(ºsKM¦N&ÜÇAÔá ±º7)a±²`ûÞ!È^U-!ø»£×`öì{ÉÑáQSVdm=|»Ñ7h¤©³î7G^õßÝgÐ-;Oj?b¤ð%ß%)IFë¾tpÑR:rÒÑç\'9w½)g²]»¬öO-\n*IºÇ#BÓÑlcCXÆ	­í4Ó\rúu¶qó¶`ÚqPO1\"FO!\ZR$XÄJ0	 ´A`ÅYÑâ6ÄÈÚÈ\'Ñ¤æ,ÒÍMÊEæeO£ÄíyÄ{*Zd²9Ãé«fÐ¤`¨q:ËJJ,§+¼f{ÌÍÓq±ÎSÆM¡Âü	ÿÔÉÙ²+íyÍÜçÁ$´L&fÉã0ðOÂSÚï×YàÂf8p,©íQ-.ñ)Øáná\0ô10xæ8Ä~S Ç:2$ Â!Deü]ÉáBAÈ§<', 'Bkash', 'shipto', 'Azampur', '3', 320, 'sed', NULL, 'uD3v1587128321', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-04-17 06:58:41', '2020-04-17 06:58:41', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(7, 29, 'BZh91AY&SYAò)Ï\0KßP\0Xø;KüN¿ÿÿú`	_>\0$*IJ	@4ÄÀF`\0\0aÓ\Z`F\0\0	`sLLiF\0\0\0&Í10¦a\0\0\0F$I4Hi¡\0\r\0Ð\0IA&1¢FÓPÔzG¡Ô~©t n}¯½J~k?	O#æTCöex²Ò)Gà§è´\\ÿhÿ/6rcp:X®ÝÏ¯\Ziéck°ÁeRÊaQÑ1fË0s~j,ÑË4:5afÑd³gVXL·h¥°Õú«4ÁÇÌMïgÕ0ÄÑÂ´urZnÚZ8w?Ë«Ø±k?óÔúÃ^ëÕéÖ½tÛÎ{G¨á²é\'¢¡E(WGÅÓä?WG{õ£²½sÅà³Ée×>·âÔÑóz}6G¿?&t(ì©ÙüVó¡dEacøÊ­J`Ùg±àóti>ÇÍeé5!ËHutv]è©H¨ÃíT[,XäÞRñ¶Ë;3,NJj¨n¨Ñ9%¤¬°»²ÙVýÎNLDç(lJR¤R¦îK¹9,Ù¡ÉI¼¤Ä£ùK,þoË!J)ºîN:µa«ªÔFD6SFìÆ_îö2ÌÝ³m%))LÍYvù{Û5Êid)HÑª×aêu]ÑLO[ñ¬*TS,ÙÉÉEd9$QeE4mÔÓCN×\Zcm99ºöÚd/i4³U36a³fWe³QMÛ5nÄØÝ0Â*l»jhËQÂY0Õ£	IK.²ã\r\Z²É4n(atÃQbfaYMS-ºe2»ì¬ê;å1$QQHÑÁAHéCÀF(^f/R.d¡XY*\rÒâ\0Z1@ Á!)e*$©D)QF	Ý::;»ÎëI\rdI\'ã)Y=L\ZR`ËVLÎæ[¬õ0Ê]£<4SÊCE¦å¨ÉMN\\Ù(ËujºY4T^Vóe´UÙ[62³vU8pàº71²a²,¶ÙrlÕLF.hÙâ³ñÐáöC®üNwCS­÷:ùÏ.Yþ¶[ûºLÏ§IÙõ}ROè³\n:ÃêrE\Z<ªMT)E(.Áf²·Ô\Z,©ö°6}X÷0hÌØQ¬r;oTí±}oÁÝ?ÓêiÞ£Ú8ó30¹7q(ÉÕ)ÿJ|Òv0Ðò9Ê?¼¼>jLk«.kIGÍ´é;NNs¥EOôº>ÊY¬ø#¤¦èç9©(R æ}Ï\\·nÆ³«Ý-;æ¬&Ë6YS(Ñù7<Å¦\n<EÒ{YþÒ¬¼Û¬Ýfï%k¹RóQ£fÆÓU)¥&Í´7KÏ¨Ê|í5Í\nè\r¶[)Ì³u¡wó6æ?côêCev;åÙ²³:;Øué£ÉíôtÉ÷>/Üºeñ^s;Ëø¯/1>°³71Þ|aÂxAÞ9Æ0ú\'}U{o(Tjö©I*Sá>·Å¤»Ät*w§Æfzç¤âZz:ËÆÜ5eª1*}%ç4»ö6;?³Û=åJ*p©ëyN\Z»ðú,²TäeæøO±ç,Rl²ç¡1.Ô.¤è¹©*jÌK/(ºsKM¦N&ÜÇAÔá ±º7)a±²`ûÞ!È^U-!ø»£×`öì{ÉÑáQSVdm=|»Ñ7h¤©³î7G^õßÝgÐ-;Oj?b¤ð%ß%)IFë¾tpÑR:rÒÑç\'9w½)g²]»¬öO-\n*IºÇ#BÓÑlcCXÆ	­í4Ó\rúu¶qó¶`ÚqPO1\"FO!\ZR$XÄJ0	 ´A`ÅYÑâ6ÄÈÚÈ\'Ñ¤æ,ÒÍMÊEæeO£ÄíyÄ{*Zd²9Ãé«fÐ¤`¨q:ËJJ,§+¼f{ÌÍÓq±ÎSÆM¡Âü	ÿÔÉÙ²+íyÍÜçÁ$´L&fÉã0ðOÂSÚï×YàÂf8p,©íQ-.ñ)Øáná\0ô10xæ8Ä~S Ç:2$ Â!Deü]ÉáBAÈ§<', 'Bkash', 'shipto', 'Azampur', '3', 320, 'sed', NULL, 'Q94n1587128689', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2020-04-17 07:04:49', '2020-05-16 06:05:16', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(8, 29, 'BZh91AY&SYeýÓ\0ß@\0Pø;ôN¿ïÿú`]¾¯!× Pµ±Xæ\0	\0\0\0\0\0%@M)¦h\0Ñ \r6 h`\0\0	\0\0\0 Ä\r\Zh4Ð4¤Ì¦Q¶©úMM=M\0hM´AQ=\'¢OãTõõýShÕ0Ð)õ{ ¤\'9ÈÙÈh0Á>\rC<Ã&@Q5=C¤¤q¬Qh§-rµÉ-»E)·£ wÐèå{E®Ö3ÅYBWIQò>Tb/J±e¥·ht(PÄpÚP¤`Î`õá¾ÞÓ 5Àh± á\0ÿæ\nbj;@äÇYztIÒuÝG¦¶®:`(h\"²)`I±¡ZfÑ^°\r&ê÷½QälD¦	´\rXÆYcæ1\\m Tí{+ù@Úc¢×v¿Y$´\r;T¿\"ä«	I%ÄÖLARjÑ0ªÜ.A\"ÅrH(¹rCÈJiÓ1QÓX:Î.jæM*°S§zÀR²l^É¨µñT+èZU°tR*»£Jê¤ø#ÐBûu0ybJP&ÌÁ/¦cddéÃ¨ÑwF-cN$ºÅ1C0 \"V`JmÚîWl×R!\\HAæ2Ðs´ÊÉg=`Ö\rµ²¢·¹ÕÍ­ußÉmx2j\n\ræLÔºÐÞ£Õ½´3ZÑ½F×fûîK7ÆTámÍdß=>¥G3¼É!a_ß?RÇÎïDÏ\"à°Yy.Bç[ßh®èÅÈ\n\r¥z&£Ø \"Z¹û8ò1l}1¼e{ó\"ûOzöõ1R58Üfõ^ÒæCScZvÃ067îhu]%Nn883¶À×9ÉÆNähØ{Á¦Á7ÔVr{YÙýÄÃ6F #$D±´plhgCÔîøâ»u\ZvÄãRl5D¶*xñ«T¯ö:(ci\nIÁÜ´3àIô`÷ÄÛ¨|Æ·eQË¸	Eûº¾¨Ô)=íww÷\ZwëPwÉ\0¡2ó9Ø~$Ae ûÏÉî4x+± Uå¾yãH¤ÃÔÚiî;F5¡®Îã7æ­sì×Þx{0ÄxH¸×+Åè£u´·_æQ&Êå%\Z¢Ä©Ñfv\\@X,¼¤ Ü¿W··xã`0Ã,âBý^¨¥R½Øä×mFôÆp\'\Z÷¸§yA[£ÊB1çÞºMètöà±Û]y48 ®	Uct¥Ød,ð\Z2ÙÜAA<1òñ·c]ÿD¼ÁMDÁ,Ã>ÈÂiV´\ZPZ@¸Øi2Õ@Ê©o\nîÝÅ÷\Zd.2]Ýpn¿N$ *\"¸ÛRÂLVÇÛLciéXÊÈan>ÔJ¡«£f_õ%Ôe~ìÏ§{^K6ZÕÉ)´ªu/{¢Ê\\\n\Zíj	ê87,5+\r£Vò>þ¾áÖ CÊsÎ\rPPäÚ4ÿÅÜN$ftÀ', 'Bkash', 'shipto', 'Azampur', '1', 100, 'sdr', NULL, '0098', 'Completed', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2020-05-12 07:31:25', '2020-05-19 12:34:30', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(9, 29, 'BZh91AY&SY§Wÿ!\0Æ_@\0ø+ü¿ÿÿúP»ÝSî®æèåZÂI¤Õ<DôÔ\rF aPSÁMP5=@4\0\0¦IOe5=OÕ¦£Ô\0Ô\Zh\0`\0\0\04\0\0\0\0$B©ªc*~*{F§ªhz\0hd©J\njõìö!ÈQ\\\\¹ÓÓ2¾Aúì© øÖ#ørÖÕp¶GÛ©RpX9#i)Õo6HÉV¥M«­ÉÙ5¢ú{\nÔÔî9w°ûòA7\nà!óD=êt>G¸êJê%¸vÚlËQv$F$X\Zi4b¦Ôa00 ¡`wÙ§¼Pè *ªUÝíGÂR`@Ø;c\ZPhí½îX\rªó5x%\"XSªeZÅ,I16²úJ)5Qhµ`äd¢rH GdHF2¦Q¨Ùë_.¤É,Åj-:»ÛeJbô\n¾-a_PaR«ev)FïcUun©~âËâJBI\0LZåZÂIibHá¹$è#;¤.*5F!hÈ X¬3±Ù:óSõÀ2¬NBGs^/Ê2ót5kVD\\jbDÞX³hÓ¹pÆ,V2Â\\¥&Ç»5-¦µ¡ÔÕQ{Zo¼fèôª\'ßÒyNpòSX¸þvóDÍÄ¤¬ v±¯! ÁÄÚ¶WÓß§¾ô>(ËY6Ýo\Z£y¾~#\'7&ÓJWq¨ØQ·aÄ¨©<à>âÕª	Ò&\"6þ w*9,Aú7P,\rÅÍ\rÆzµ&Ã1¡vBÀÉ¼)³<Î9èÖ»CÅí\rc3¨¤\')p?£nø§$qçllâÏXæâ:¨*­	5Üw2Xci#IÜBZò$Â0y\rHØÆ\\×JQTR:vþ¾IÙ[¦ÒvEI £È\'ÄP>}E·ìzdhBóÁÍb >zC×Îäóù7MH<÷©ìÍÙÓÃ\Z¢ÉÔIÀ$Õî8¯³3KïV¸]Þ\'Nc^<$\\	kuÅEìr¿c\\¿3YV(I`h¢TÁQLð){%í¼aÃý6\\:k#\"iÅ\0æ/â?:ÇDÃ&\'<Ti¯¬ÊF	<ÆZ°mãp2Î2fb%TÊ«ÂôfÈ$_Dõq·CF=RFv\nhÑÎd·Jm/w\\x_B!,±,\"¢¶,mÀÁàdå»\"ÛÒè+/÷6 R(ÈÊWZn	Ã9p6[\\Î~ÌÏkæ7¶6îB1b¸|*ÃWFZôKÕj¸ÄOIÔ¬%4ªT÷«ì	9\rlK^î\ZÈäÑ5z^£+ë;eüxøÁ@leâîH§\nêÿä ', NULL, 'shipto', 'Azampur', '3', 600, ' ', NULL, '0066', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-15 08:25:21', '2020-05-15 08:25:21', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(10, 29, 'BZh91AY&SY§Wÿ!\0Æ_@\0ø+ü¿ÿÿúP»ÝSî®æèåZÂI¤Õ<DôÔ\rF aPSÁMP5=@4\0\0¦IOe5=OÕ¦£Ô\0Ô\Zh\0`\0\0\04\0\0\0\0$B©ªc*~*{F§ªhz\0hd©J\njõìö!ÈQ\\\\¹ÓÓ2¾Aúì© øÖ#ørÖÕp¶GÛ©RpX9#i)Õo6HÉV¥M«­ÉÙ5¢ú{\nÔÔî9w°ûòA7\nà!óD=êt>G¸êJê%¸vÚlËQv$F$X\Zi4b¦Ôa00 ¡`wÙ§¼Pè *ªUÝíGÂR`@Ø;c\ZPhí½îX\rªó5x%\"XSªeZÅ,I16²úJ)5Qhµ`äd¢rH GdHF2¦Q¨Ùë_.¤É,Åj-:»ÛeJbô\n¾-a_PaR«ev)FïcUun©~âËâJBI\0LZåZÂIibHá¹$è#;¤.*5F!hÈ X¬3±Ù:óSõÀ2¬NBGs^/Ê2ót5kVD\\jbDÞX³hÓ¹pÆ,V2Â\\¥&Ç»5-¦µ¡ÔÕQ{Zo¼fèôª\'ßÒyNpòSX¸þvóDÍÄ¤¬ v±¯! ÁÄÚ¶WÓß§¾ô>(ËY6Ýo\Z£y¾~#\'7&ÓJWq¨ØQ·aÄ¨©<à>âÕª	Ò&\"6þ w*9,Aú7P,\rÅÍ\rÆzµ&Ã1¡vBÀÉ¼)³<Î9èÖ»CÅí\rc3¨¤\')p?£nø§$qçllâÏXæâ:¨*­	5Üw2Xci#IÜBZò$Â0y\rHØÆ\\×JQTR:vþ¾IÙ[¦ÒvEI £È\'ÄP>}E·ìzdhBóÁÍb >zC×Îäóù7MH<÷©ìÍÙÓÃ\Z¢ÉÔIÀ$Õî8¯³3KïV¸]Þ\'Nc^<$\\	kuÅEìr¿c\\¿3YV(I`h¢TÁQLð){%í¼aÃý6\\:k#\"iÅ\0æ/â?:ÇDÃ&\'<Ti¯¬ÊF	<ÆZ°mãp2Î2fb%TÊ«ÂôfÈ$_Dõq·CF=RFv\nhÑÎd·Jm/w\\x_B!,±,\"¢¶,mÀÁàdå»\"ÛÒè+/÷6 R(ÈÊWZn	Ã9p6[\\Î~ÌÏkæ7¶6îB1b¸|*ÃWFZôKÕj¸ÄOIÔ¬%4ªT÷«ì	9\rlK^î\ZÈäÑ5z^£+ë;eüxøÁ@leâîH§\nêÿä ', NULL, 'shipto', 'Azampur', '3', 600, ' ', NULL, '0012', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-15 08:26:31', '2020-05-15 08:26:31', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(11, 29, 'BZh91AY&SY§Wÿ!\0Æ_@\0ø+ü¿ÿÿúP»ÝSî®æèåZÂI¤Õ<DôÔ\rF aPSÁMP5=@4\0\0¦IOe5=OÕ¦£Ô\0Ô\Zh\0`\0\0\04\0\0\0\0$B©ªc*~*{F§ªhz\0hd©J\njõìö!ÈQ\\\\¹ÓÓ2¾Aúì© øÖ#ørÖÕp¶GÛ©RpX9#i)Õo6HÉV¥M«­ÉÙ5¢ú{\nÔÔî9w°ûòA7\nà!óD=êt>G¸êJê%¸vÚlËQv$F$X\Zi4b¦Ôa00 ¡`wÙ§¼Pè *ªUÝíGÂR`@Ø;c\ZPhí½îX\rªó5x%\"XSªeZÅ,I16²úJ)5Qhµ`äd¢rH GdHF2¦Q¨Ùë_.¤É,Åj-:»ÛeJbô\n¾-a_PaR«ev)FïcUun©~âËâJBI\0LZåZÂIibHá¹$è#;¤.*5F!hÈ X¬3±Ù:óSõÀ2¬NBGs^/Ê2ót5kVD\\jbDÞX³hÓ¹pÆ,V2Â\\¥&Ç»5-¦µ¡ÔÕQ{Zo¼fèôª\'ßÒyNpòSX¸þvóDÍÄ¤¬ v±¯! ÁÄÚ¶WÓß§¾ô>(ËY6Ýo\Z£y¾~#\'7&ÓJWq¨ØQ·aÄ¨©<à>âÕª	Ò&\"6þ w*9,Aú7P,\rÅÍ\rÆzµ&Ã1¡vBÀÉ¼)³<Î9èÖ»CÅí\rc3¨¤\')p?£nø§$qçllâÏXæâ:¨*­	5Üw2Xci#IÜBZò$Â0y\rHØÆ\\×JQTR:vþ¾IÙ[¦ÒvEI £È\'ÄP>}E·ìzdhBóÁÍb >zC×Îäóù7MH<÷©ìÍÙÓÃ\Z¢ÉÔIÀ$Õî8¯³3KïV¸]Þ\'Nc^<$\\	kuÅEìr¿c\\¿3YV(I`h¢TÁQLð){%í¼aÃý6\\:k#\"iÅ\0æ/â?:ÇDÃ&\'<Ti¯¬ÊF	<ÆZ°mãp2Î2fb%TÊ«ÂôfÈ$_Dõq·CF=RFv\nhÑÎd·Jm/w\\x_B!,±,\"¢¶,mÀÁàdå»\"ÛÒè+/÷6 R(ÈÊWZn	Ã9p6[\\Î~ÌÏkæ7¶6îB1b¸|*ÃWFZôKÕj¸ÄOIÔ¬%4ªT÷«ì	9\rlK^î\ZÈäÑ5z^£+ë;eüxøÁ@leâîH§\nêÿä ', NULL, 'shipto', 'Azampur', '3', 600, ' ', NULL, '0054', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-15 08:27:46', '2020-05-15 08:27:46', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(12, 29, 'BZh91AY&SY§Wÿ!\0Æ_@\0ø+ü¿ÿÿúP»ÝSî®æèåZÂI¤Õ<DôÔ\rF aPSÁMP5=@4\0\0¦IOe5=OÕ¦£Ô\0Ô\Zh\0`\0\0\04\0\0\0\0$B©ªc*~*{F§ªhz\0hd©J\njõìö!ÈQ\\\\¹ÓÓ2¾Aúì© øÖ#ørÖÕp¶GÛ©RpX9#i)Õo6HÉV¥M«­ÉÙ5¢ú{\nÔÔî9w°ûòA7\nà!óD=êt>G¸êJê%¸vÚlËQv$F$X\Zi4b¦Ôa00 ¡`wÙ§¼Pè *ªUÝíGÂR`@Ø;c\ZPhí½îX\rªó5x%\"XSªeZÅ,I16²úJ)5Qhµ`äd¢rH GdHF2¦Q¨Ùë_.¤É,Åj-:»ÛeJbô\n¾-a_PaR«ev)FïcUun©~âËâJBI\0LZåZÂIibHá¹$è#;¤.*5F!hÈ X¬3±Ù:óSõÀ2¬NBGs^/Ê2ót5kVD\\jbDÞX³hÓ¹pÆ,V2Â\\¥&Ç»5-¦µ¡ÔÕQ{Zo¼fèôª\'ßÒyNpòSX¸þvóDÍÄ¤¬ v±¯! ÁÄÚ¶WÓß§¾ô>(ËY6Ýo\Z£y¾~#\'7&ÓJWq¨ØQ·aÄ¨©<à>âÕª	Ò&\"6þ w*9,Aú7P,\rÅÍ\rÆzµ&Ã1¡vBÀÉ¼)³<Î9èÖ»CÅí\rc3¨¤\')p?£nø§$qçllâÏXæâ:¨*­	5Üw2Xci#IÜBZò$Â0y\rHØÆ\\×JQTR:vþ¾IÙ[¦ÒvEI £È\'ÄP>}E·ìzdhBóÁÍb >zC×Îäóù7MH<÷©ìÍÙÓÃ\Z¢ÉÔIÀ$Õî8¯³3KïV¸]Þ\'Nc^<$\\	kuÅEìr¿c\\¿3YV(I`h¢TÁQLð){%í¼aÃý6\\:k#\"iÅ\0æ/â?:ÇDÃ&\'<Ti¯¬ÊF	<ÆZ°mãp2Î2fb%TÊ«ÂôfÈ$_Dõq·CF=RFv\nhÑÎd·Jm/w\\x_B!,±,\"¢¶,mÀÁàdå»\"ÛÒè+/÷6 R(ÈÊWZn	Ã9p6[\\Î~ÌÏkæ7¶6îB1b¸|*ÃWFZôKÕj¸ÄOIÔ¬%4ªT÷«ì	9\rlK^î\ZÈäÑ5z^£+ë;eüxøÁ@leâîH§\nêÿä ', NULL, 'shipto', 'Azampur', '3', 600, ' ', NULL, '0073', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-15 08:38:20', '2020-05-15 08:38:20', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(13, 29, 'BZh91AY&SY§Wÿ!\0Æ_@\0ø+ü¿ÿÿúP»ÝSî®æèåZÂI¤Õ<DôÔ\rF aPSÁMP5=@4\0\0¦IOe5=OÕ¦£Ô\0Ô\Zh\0`\0\0\04\0\0\0\0$B©ªc*~*{F§ªhz\0hd©J\njõìö!ÈQ\\\\¹ÓÓ2¾Aúì© øÖ#ørÖÕp¶GÛ©RpX9#i)Õo6HÉV¥M«­ÉÙ5¢ú{\nÔÔî9w°ûòA7\nà!óD=êt>G¸êJê%¸vÚlËQv$F$X\Zi4b¦Ôa00 ¡`wÙ§¼Pè *ªUÝíGÂR`@Ø;c\ZPhí½îX\rªó5x%\"XSªeZÅ,I16²úJ)5Qhµ`äd¢rH GdHF2¦Q¨Ùë_.¤É,Åj-:»ÛeJbô\n¾-a_PaR«ev)FïcUun©~âËâJBI\0LZåZÂIibHá¹$è#;¤.*5F!hÈ X¬3±Ù:óSõÀ2¬NBGs^/Ê2ót5kVD\\jbDÞX³hÓ¹pÆ,V2Â\\¥&Ç»5-¦µ¡ÔÕQ{Zo¼fèôª\'ßÒyNpòSX¸þvóDÍÄ¤¬ v±¯! ÁÄÚ¶WÓß§¾ô>(ËY6Ýo\Z£y¾~#\'7&ÓJWq¨ØQ·aÄ¨©<à>âÕª	Ò&\"6þ w*9,Aú7P,\rÅÍ\rÆzµ&Ã1¡vBÀÉ¼)³<Î9èÖ»CÅí\rc3¨¤\')p?£nø§$qçllâÏXæâ:¨*­	5Üw2Xci#IÜBZò$Â0y\rHØÆ\\×JQTR:vþ¾IÙ[¦ÒvEI £È\'ÄP>}E·ìzdhBóÁÍb >zC×Îäóù7MH<÷©ìÍÙÓÃ\Z¢ÉÔIÀ$Õî8¯³3KïV¸]Þ\'Nc^<$\\	kuÅEìr¿c\\¿3YV(I`h¢TÁQLð){%í¼aÃý6\\:k#\"iÅ\0æ/â?:ÇDÃ&\'<Ti¯¬ÊF	<ÆZ°mãp2Î2fb%TÊ«ÂôfÈ$_Dõq·CF=RFv\nhÑÎd·Jm/w\\x_B!,±,\"¢¶,mÀÁàdå»\"ÛÒè+/÷6 R(ÈÊWZn	Ã9p6[\\Î~ÌÏkæ7¶6îB1b¸|*ÃWFZôKÕj¸ÄOIÔ¬%4ªT÷«ì	9\rlK^î\ZÈäÑ5z^£+ë;eüxøÁ@leâîH§\nêÿä ', 'Bkash', 'shipto', 'Azampur', '3', 600, ' ', NULL, '0011', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2020-05-15 08:44:46', '2020-05-15 09:06:45', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(14, 29, 'BZh91AY&SY§Wÿ!\0Æ_@\0ø+ü¿ÿÿúP»ÝSî®æèåZÂI¤Õ<DôÔ\rF aPSÁMP5=@4\0\0¦IOe5=OÕ¦£Ô\0Ô\Zh\0`\0\0\04\0\0\0\0$B©ªc*~*{F§ªhz\0hd©J\njõìö!ÈQ\\\\¹ÓÓ2¾Aúì© øÖ#ørÖÕp¶GÛ©RpX9#i)Õo6HÉV¥M«­ÉÙ5¢ú{\nÔÔî9w°ûòA7\nà!óD=êt>G¸êJê%¸vÚlËQv$F$X\Zi4b¦Ôa00 ¡`wÙ§¼Pè *ªUÝíGÂR`@Ø;c\ZPhí½îX\rªó5x%\"XSªeZÅ,I16²úJ)5Qhµ`äd¢rH GdHF2¦Q¨Ùë_.¤É,Åj-:»ÛeJbô\n¾-a_PaR«ev)FïcUun©~âËâJBI\0LZåZÂIibHá¹$è#;¤.*5F!hÈ X¬3±Ù:óSõÀ2¬NBGs^/Ê2ót5kVD\\jbDÞX³hÓ¹pÆ,V2Â\\¥&Ç»5-¦µ¡ÔÕQ{Zo¼fèôª\'ßÒyNpòSX¸þvóDÍÄ¤¬ v±¯! ÁÄÚ¶WÓß§¾ô>(ËY6Ýo\Z£y¾~#\'7&ÓJWq¨ØQ·aÄ¨©<à>âÕª	Ò&\"6þ w*9,Aú7P,\rÅÍ\rÆzµ&Ã1¡vBÀÉ¼)³<Î9èÖ»CÅí\rc3¨¤\')p?£nø§$qçllâÏXæâ:¨*­	5Üw2Xci#IÜBZò$Â0y\rHØÆ\\×JQTR:vþ¾IÙ[¦ÒvEI £È\'ÄP>}E·ìzdhBóÁÍb >zC×Îäóù7MH<÷©ìÍÙÓÃ\Z¢ÉÔIÀ$Õî8¯³3KïV¸]Þ\'Nc^<$\\	kuÅEìr¿c\\¿3YV(I`h¢TÁQLð){%í¼aÃý6\\:k#\"iÅ\0æ/â?:ÇDÃ&\'<Ti¯¬ÊF	<ÆZ°mãp2Î2fb%TÊ«ÂôfÈ$_Dõq·CF=RFv\nhÑÎd·Jm/w\\x_B!,±,\"¢¶,mÀÁàdå»\"ÛÒè+/÷6 R(ÈÊWZn	Ã9p6[\\Î~ÌÏkæ7¶6îB1b¸|*ÃWFZôKÕj¸ÄOIÔ¬%4ªT÷«ì	9\rlK^î\ZÈäÑ5z^£+ë;eüxøÁ@leâîH§\nêÿä ', 'Cash On Delivery', 'shipto', 'Azampur', '3', 600, NULL, NULL, 'BhNS1589560669', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-15 10:37:49', '2020-05-15 10:37:49', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(15, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0059', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 00:46:19', '2020-05-16 00:46:19', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(16, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0080', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 00:48:59', '2020-05-16 00:48:59', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(17, 29, 'BZh91AY&SYýÓ±\0Æ_@\0ø+ü¿ÿÿúP¹½d#º´5PBP¥6Ð(õDñ@ÐÄh2¢Q4ÄÔÕ#4`\0ÓL@?Jdô@\0=A¦@\0\0\0@\0\0\0DAOÒlª~j\n\rò SxÔ?³Ú0¨lgOMH\\~¤CæM!(ú°Ú«ï.<X¢÷IMk:5üÕ\"sYï=\'\'º=BÚU/?Æ\"éÉddpâO##¯2åh>x ´ÌÎú@xjzç³Ìx|Bì±\Z)·ÑOEæÁ¤\r)X:âóX©©ZJSö,I#!ÔÆv½ïOô4Á6±0tµ¯0(6Ð\r:Ò)Z*Ô¬iw(µ.&1g&Fà°««Î_9qY¬ãR\n((Ü`ÁD4,£&1dGKé1	i.ÓÉ ­X*qv¥tºY/1tT³3â]Ä²^R12a­]4É³£\Zôõõ0-FE$A.¨	Âa$ª*$´aá!4d¤ÅºRbB\0Y$gkâËãßb;(»àªp £êv5=ªªJJÑ|ájãÎ|>d[&cXqdË1±|b°Ä¨É\Z1T©äe32bøM)jÔæ24ªåÐr¼q!°\0Þ6F$M2¯r#l\ZLXzõ?­þøVcê5iUÏA\0á©\ZKä3CÌÒÈSq¬ÚGvÓAB8à:âÔ×g¢¡Ï¨ÍV ý	%rG|æ#«2¦FeòpCdK\",d<`Ó`âR÷=Ìçc<õ ä^y@EÈ1\\LÐõ  <.¼$8³Í¾¶­¹ªõÚÍÄ2\\I¨é®ÝäPÁA¦`R%!ÁyfBYÜdXÜsP©é×\"¡ÑaÏ»ðTø^©n{I£äA3pa@öòËÐöDiñ±²Ä@{\\b÷<¼jKai#CÈÈÇ0%7Áâþëd&Q# HÉâu]Î®ì×@\'Ë±ßa+DT	5E2´DHçìwwx\Zjîr`¢Ë­¨Û£rx (KÌRAOøàºw\n#iÅüG`FQQIR: ×Òg,#SÈ^q°TÆ¢äDz¥!Ö^Ñl,tf yÜÏ-$=Qhã(Í8²·q¦&²âåß?§yùïô1 c44a,\"²µ5BÔ9\Zç¬\"%ÜT]Ôà8@2,.¬&`d¶ç`÷»\"!\\ìqÊW/dÐ°qPÛu %Ö(Lº¸Yf=Q%Aª£\r}iz°·!¹ëP­EE)-Qf¤ýG·´cXkV r«5ì2~óÓ_è óèò$ Ôe?ñw$S	Ý8K', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0014', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 00:51:32', '2020-05-16 00:51:32', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(18, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0070', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 00:55:49', '2020-05-16 00:55:49', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(19, 29, 'BZh91AY&SY×V\0Ä_@\0ø+õ$¿ÿÿúP¹·· ¨(k8Á	DOÓDõ&ÑôÒ\0Ñ  ¦¨4\0\0\0\0\0\0JQêzCF\04Ó@h0\0\0\0\0\0\0\0\0É¦ôd\"f§¨\04©å¡!×Nri>b<â`ûdüÜØ:FM	r ìÁNQ0;~îÃ4Æ÷9éDý^Æ£SdS²ÍsêUnÙñçâÄÇ2$W`é\nDa3Ì Z	byÍsªM\nB]Zëu` ¨Ä¼¸qX2dZ¸É4É\nCK¨Î´cd&@Q\"+­¶Öµör°s¶Û²Mâl+\0]j¦Ù¢m¢è&f\"kÄJD0SM17aeXI¿!@Å&Tðõ<hqÁÍHã@åYÈÒ¤ç*Yv	ñ`4oYfìÑµR&*6×X¥:¹L\"o*{	8(¢È%N,Ì6­Wu/÷ú¦HLÒ\nÅ ?+b+iX,Ä¦bQ03À³¹bâD6BÀH´`ÓÙ¸Ñí\'³lWHKsHü1Q0sVst·ðå¾FY|a/º/S:,g4+sFÜ§|85NpÕ¡· º1W$Vdm÷qÇ1Ær7:Q¦ÓêZ!F3éç;G1¨è\Z<Ø\0/Y#ë\"\'± Þ:bé#°ÅS¬UÏÒÞÀ|YJ¯\râÃX§	úÈÞ0LÑKâ~[¥ÓxÛË²Ç\"F¡·´\rUÔ)X¿<v°3*\\ÌµÃl!Ðä¹È`Ó`ì)k·<õ Ø[ÀEc(»¼ö  8Ìt¥8íÅøÄã|¶*\r¼E\\oeÔÿMm3!I28-9Æt$Å ´%{Éå}`Øm.Îhôù\Zb©vwXeF4aÐ\'æ(/iÍyáäm ]q9!D\0Ç­!¡áÖ¤òù7È:æJÁèÌò¶ìn&äK¡}UÞ6qî/\0÷kmï:waXê)\" KYÔX¢\"IÉuÈëAC´¨È!ñÆD¡Éyc Jà¢D¼#d¶7Æw1iDd&¾Õ	\ZâEE*:Ië4àP¼ÏFKÓRýö`3QUH5+z#(¡\"ÚZÚ¥Xã;ølÐÉN5fp]ü²c\rÊw^Í)¸¼]NOxø¯Ä#DÀô$VFZIPÁØ7ÜõSz\\ÅEÌ­M¸ljÊ#1BîÝúYÄÂ±Þl¼Ø¶)¡dlPÛdL§X¡e`Åf>HAª£&¾i{0Å}Ëhu\\ÆerDvì=x\ZÁ H@XM®Ö abF«÷å¨ ññòÕ%cgü]ÉáBB+]X', 'Cash On Delivery', 'shipto', 'Azampur', '1', 25, NULL, NULL, '0057', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 02:42:41', '2020-05-16 02:42:41', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(20, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0085', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:09:33', '2020-05-16 03:09:33', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(21, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0021', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:10:08', '2020-05-16 03:10:08', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(22, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0095', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:12:39', '2020-05-16 03:12:39', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(23, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0015', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:16:07', '2020-05-16 03:16:07', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(24, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0068', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:17:35', '2020-05-16 03:17:35', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(25, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0014', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:17:58', '2020-05-16 03:17:58', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(26, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0072', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:19:07', '2020-05-16 03:19:07', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(27, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0080', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:27:06', '2020-05-16 03:27:06', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(28, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0099', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:28:54', '2020-05-16 03:28:54', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(29, 29, 'BZh91AY&SYtª½Ï\0Æ_@\0ø++ô¿ïÿúP½î´a¼cÞ¦¹\ZÂIòFjy\Z$\rHh	@	5(z@\0\0\0\Z\0R¦M44z	À&@\"Ih2zF a4Ä	Ð?Ð&Ñ@hFÒ\nHæuÓÐ`Ü5Lû¡¬Ñ¢fE\n¾AûÌ¤|Hb#úrÖ´svQã¥R´,¦(yeKÎ¤ÂN©ZÕ\"ÿT&ô(qÁ]Å0`>£ÈÈ±¿B\\b@r$Pø%}obÂ2$ÉlgX+BØPi¤ÕZ½ij±Üi\"¡R{LÒ.ÁH\rt­k_SØº¦ÆÚÁ¥­zìa¶n®¶¢¶`U\nw²PR+Ìh,±%DE\ZYîûJ*K;LrÁ8 (q(¡ÃÆDcKªF²÷`¯¬º4Æ42<¤¾¦ÂR.¡ÝÂ*æD­&ÒâH©H©6W,©ÂØ×éüÖÀMF%(\nLÁ.ÜÆ*Ì2JtpÔÑ{Bt#QìÖ$,¦ Èfd+@Þ½³fÚ4õmh#èQ|ªv)=ç9£9ôjÍYÆ¸I\'ycjJÈÐ¬X)Ja¦$[6îd±µX%¨éX=faºmZÞÇSvæE§¸Õ\':=ªO¨í37\0Èü&;âÚÉä£¶y\rn1?JnVËß¾ÔÈÍ¬Æ\r¥gN\"ÃT?ÃûJpI+¤qNqi5{Î%	çúM§bLl¦ý@oU9­ ìJX$í­s`jXÁ©!ÔñDà`Ó`¤p99BðÞûcS#L\r3¨¢§#F\nx2ÇÍk¶øÄchã2R[FÝÅkã%õ?cyS2£LÌRL§BÀÏpòDH\\4ãedÓlÐ:þ8¾EÌ´uô3và í$<n\\:Ó¸µê¿Ðúª´yäx¡D\0Çãc÷üìO¼$ð; óÐ$G«4Ï.7Â*}	6	0Éu8ô/^ì×)»©ÛÆ!IZÒÂ¡j¢$×\"v¨Ê¬\nI1x\Z(J)e&%1Á\0W	ã8Y#8ð«JªÑSN&Lucd5srÏ4&%6¦Â.ÕIidRyµ^ÜFäjxÉ0(¨¢)AP½ÊfM±´éÅUð3îiA©aRHÏQ ô\Z/G¸Ã=aæ3áéãßÕ¯ãuC!°K0D,H}\nU \\s¡ÎzsWqK¨¬º¹¸pddreCABéÂ\röÉÄ\\ÂÈênÄäetÐ³7(m²ÆfsÎ*PÉdZ¢%TjÈÍ­t`Ð-1ÎV¬%\n	ïV!Õè5ä	ÚäÔ\Z5j/àe=Nù¡|Á½|\0ÕM»)Â¥Uîx', 'Cash On Delivery', 'shipto', 'Azampur', '1', 200, NULL, NULL, '0027', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 03:50:22', '2020-05-16 03:50:22', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(30, 29, 'BZh91AY&SYj>Ý\0Å_@\0ø+õ$¿ÿÿúP»6À\'±Ú­q%OM)äÅ=\0dh\0zA\"\"=@i \0\Z4\04jd104Mibd0\0\0\0\0\0\0\0\0\nm\nzdh\0\0zù\0¾#êt!ØBxÀîÄò;ûð6Qc%¯HÐ~CÆTzFHr#Ôå¯\n­/µ5û5XMÃZß­tªß5Zþ$Ê]ÈqÅ%Î]QyT\"ÁÖ ÌrpÝ`ºK¥Eøè®2ËD\rKÎ~¦G2uG\nBHD95vN0Tcwwh?£ä\"SÚÁ+3TC0m ·yP3,Âª¦jý$Kul¬ÀÃLIQ9rÁ¸ºìdp¢YBV êÖ³h©×£@çÖÃgÐsÇ µJk)52»pTªÒ ²IJ´µ­X¯âKô¿Raï±I\0m~­a$´±$pnIÀô¬,.5J´B°I6m=ÛÍ^Äøm\"ÞÄ?¹©<mï~>Ï4sg\\éY}á¸åº­×x86YÎAcÑÜÉ»·{6f+(Ö¨ïÍ3¾û%ë£µ;{´qNëô	âk:F\0ÚDèb@ø.2!tØj`åÖêU´ø_ájÅµÁ´¬éÀ@8j©ã?¸ÌÌg¼Øn%é¸ÚRR2zw=äRÐÔu6äåCÌjÈ®Iå¥r`hXÁ¡|ÐS¢\'d`x!MoÀ ­îofÙ\ZiÌqzb.DKUà`¸Î±Æc°ÍkÇhÄcNXÌ TÅQ·­.¡zé¸©Q¦f)&GçBÀÎÄ##°õ¡R8LJ¹¨¿i~ïo±Q¦¥Kñ(¼¾´aF;ädEéæ-z¯Câ&Ðß#¢Ä@|î1}>ö\' ¸IÀó0Aß@U%>já&EK¤POs¹1Kp#\\@¦ÞGopÆâ,µ¥BÕDI9®û²Y­«(I@ÑD©¢ë»,¨U/1HàY­ÿãU¿¨µª3Lá{\r?Ãu%R¨¤çX©.Ç³N%F\"4¬Á5¯à¿¦$w\Zm úÚÔ\n3`î,\'Äã9ãR*ð©H´Õ)qÀ¹õHV$LÒe.½)»ß¶þ<;×°!,±\"¤EYlXÚ-ó3ZsW]EUÔµG´nseQCAB÷oP}®âB®a\\ò7bn_$Ð³7(m²ÆfsÎ*Pº¸d´DJ¨Õ_@ÍdÃ>¾¥Ìõ;®	eUU2º\"9ì>~\'8$	¾M0Ð¹#V¢ø§Òzfê=þÿ@NH\r¯ü]ÉáBBa¨ût', 'Bkash', 'shipto', 'Azampur', '4', 100, ' ', NULL, '0089', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 13:35:06', '2020-05-16 13:35:06', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(31, 29, 'BZh91AY&SYj>Ý\0Å_@\0ø+õ$¿ÿÿúP»6À\'±Ú­q%OM)äÅ=\0dh\0zA\"\"=@i \0\Z4\04jd104Mibd0\0\0\0\0\0\0\0\0\nm\nzdh\0\0zù\0¾#êt!ØBxÀîÄò;ûð6Qc%¯HÐ~CÆTzFHr#Ôå¯\n­/µ5û5XMÃZß­tªß5Zþ$Ê]ÈqÅ%Î]QyT\"ÁÖ ÌrpÝ`ºK¥Eøè®2ËD\rKÎ~¦G2uG\nBHD95vN0Tcwwh?£ä\"SÚÁ+3TC0m ·yP3,Âª¦jý$Kul¬ÀÃLIQ9rÁ¸ºìdp¢YBV êÖ³h©×£@çÖÃgÐsÇ µJk)52»pTªÒ ²IJ´µ­X¯âKô¿Raï±I\0m~­a$´±$pnIÀô¬,.5J´B°I6m=ÛÍ^Äøm\"ÞÄ?¹©<mï~>Ï4sg\\éY}á¸åº­×x86YÎAcÑÜÉ»·{6f+(Ö¨ïÍ3¾û%ë£µ;{´qNëô	âk:F\0ÚDèb@ø.2!tØj`åÖêU´ø_ájÅµÁ´¬éÀ@8j©ã?¸ÌÌg¼Øn%é¸ÚRR2zw=äRÐÔu6äåCÌjÈ®Iå¥r`hXÁ¡|ÐS¢\'d`x!MoÀ ­îofÙ\ZiÌqzb.DKUà`¸Î±Æc°ÍkÇhÄcNXÌ TÅQ·­.¡zé¸©Q¦f)&GçBÀÎÄ##°õ¡R8LJ¹¨¿i~ïo±Q¦¥Kñ(¼¾´aF;ädEéæ-z¯Câ&Ðß#¢Ä@|î1}>ö\' ¸IÀó0Aß@U%>já&EK¤POs¹1Kp#\\@¦ÞGopÆâ,µ¥BÕDI9®û²Y­«(I@ÑD©¢ë»,¨U/1HàY­ÿãU¿¨µª3Lá{\r?Ãu%R¨¤çX©.Ç³N%F\"4¬Á5¯à¿¦$w\Zm úÚÔ\n3`î,\'Äã9ãR*ð©H´Õ)qÀ¹õHV$LÒe.½)»ß¶þ<;×°!,±\"¤EYlXÚ-ó3ZsW]EUÔµG´nseQCAB÷oP}®âB®a\\ò7bn_$Ð³7(m²ÆfsÎ*Pº¸d´DJ¨Õ_@ÍdÃ>¾¥Ìõ;®	eUU2º\"9ì>~\'8$	¾M0Ð¹#V¢ø§Òzfê=þÿ@NH\r¯ü]ÉáBBa¨ût', 'Bkash', 'shipto', 'Azampur', '4', 100, ' ', NULL, '0034', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 13:35:51', '2020-05-16 13:35:51', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(32, 29, 'BZh91AY&SYj>Ý\0Å_@\0ø+õ$¿ÿÿúP»6À\'±Ú­q%OM)äÅ=\0dh\0zA\"\"=@i \0\Z4\04jd104Mibd0\0\0\0\0\0\0\0\0\nm\nzdh\0\0zù\0¾#êt!ØBxÀîÄò;ûð6Qc%¯HÐ~CÆTzFHr#Ôå¯\n­/µ5û5XMÃZß­tªß5Zþ$Ê]ÈqÅ%Î]QyT\"ÁÖ ÌrpÝ`ºK¥Eøè®2ËD\rKÎ~¦G2uG\nBHD95vN0Tcwwh?£ä\"SÚÁ+3TC0m ·yP3,Âª¦jý$Kul¬ÀÃLIQ9rÁ¸ºìdp¢YBV êÖ³h©×£@çÖÃgÐsÇ µJk)52»pTªÒ ²IJ´µ­X¯âKô¿Raï±I\0m~­a$´±$pnIÀô¬,.5J´B°I6m=ÛÍ^Äøm\"ÞÄ?¹©<mï~>Ï4sg\\éY}á¸åº­×x86YÎAcÑÜÉ»·{6f+(Ö¨ïÍ3¾û%ë£µ;{´qNëô	âk:F\0ÚDèb@ø.2!tØj`åÖêU´ø_ájÅµÁ´¬éÀ@8j©ã?¸ÌÌg¼Øn%é¸ÚRR2zw=äRÐÔu6äåCÌjÈ®Iå¥r`hXÁ¡|ÐS¢\'d`x!MoÀ ­îofÙ\ZiÌqzb.DKUà`¸Î±Æc°ÍkÇhÄcNXÌ TÅQ·­.¡zé¸©Q¦f)&GçBÀÎÄ##°õ¡R8LJ¹¨¿i~ïo±Q¦¥Kñ(¼¾´aF;ädEéæ-z¯Câ&Ðß#¢Ä@|î1}>ö\' ¸IÀó0Aß@U%>já&EK¤POs¹1Kp#\\@¦ÞGopÆâ,µ¥BÕDI9®û²Y­«(I@ÑD©¢ë»,¨U/1HàY­ÿãU¿¨µª3Lá{\r?Ãu%R¨¤çX©.Ç³N%F\"4¬Á5¯à¿¦$w\Zm úÚÔ\n3`î,\'Äã9ãR*ð©H´Õ)qÀ¹õHV$LÒe.½)»ß¶þ<;×°!,±\"¤EYlXÚ-ó3ZsW]EUÔµG´nseQCAB÷oP}®âB®a\\ò7bn_$Ð³7(m²ÆfsÎ*Pº¸d´DJ¨Õ_@ÍdÃ>¾¥Ìõ;®	eUU2º\"9ì>~\'8$	¾M0Ð¹#V¢ø§Òzfê=þÿ@NH\r¯ü]ÉáBBa¨ût', 'Bkash', 'shipto', 'Azampur', '4', 100, ' ', NULL, '0093', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 13:36:45', '2020-05-16 13:36:45', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(33, 29, 'BZh91AY&SYj>Ý\0Å_@\0ø+õ$¿ÿÿúP»6À\'±Ú­q%OM)äÅ=\0dh\0zA\"\"=@i \0\Z4\04jd104Mibd0\0\0\0\0\0\0\0\0\nm\nzdh\0\0zù\0¾#êt!ØBxÀîÄò;ûð6Qc%¯HÐ~CÆTzFHr#Ôå¯\n­/µ5û5XMÃZß­tªß5Zþ$Ê]ÈqÅ%Î]QyT\"ÁÖ ÌrpÝ`ºK¥Eøè®2ËD\rKÎ~¦G2uG\nBHD95vN0Tcwwh?£ä\"SÚÁ+3TC0m ·yP3,Âª¦jý$Kul¬ÀÃLIQ9rÁ¸ºìdp¢YBV êÖ³h©×£@çÖÃgÐsÇ µJk)52»pTªÒ ²IJ´µ­X¯âKô¿Raï±I\0m~­a$´±$pnIÀô¬,.5J´B°I6m=ÛÍ^Äøm\"ÞÄ?¹©<mï~>Ï4sg\\éY}á¸åº­×x86YÎAcÑÜÉ»·{6f+(Ö¨ïÍ3¾û%ë£µ;{´qNëô	âk:F\0ÚDèb@ø.2!tØj`åÖêU´ø_ájÅµÁ´¬éÀ@8j©ã?¸ÌÌg¼Øn%é¸ÚRR2zw=äRÐÔu6äåCÌjÈ®Iå¥r`hXÁ¡|ÐS¢\'d`x!MoÀ ­îofÙ\ZiÌqzb.DKUà`¸Î±Æc°ÍkÇhÄcNXÌ TÅQ·­.¡zé¸©Q¦f)&GçBÀÎÄ##°õ¡R8LJ¹¨¿i~ïo±Q¦¥Kñ(¼¾´aF;ädEéæ-z¯Câ&Ðß#¢Ä@|î1}>ö\' ¸IÀó0Aß@U%>já&EK¤POs¹1Kp#\\@¦ÞGopÆâ,µ¥BÕDI9®û²Y­«(I@ÑD©¢ë»,¨U/1HàY­ÿãU¿¨µª3Lá{\r?Ãu%R¨¤çX©.Ç³N%F\"4¬Á5¯à¿¦$w\Zm úÚÔ\n3`î,\'Äã9ãR*ð©H´Õ)qÀ¹õHV$LÒe.½)»ß¶þ<;×°!,±\"¤EYlXÚ-ó3ZsW]EUÔµG´nseQCAB÷oP}®âB®a\\ò7bn_$Ð³7(m²ÆfsÎ*Pº¸d´DJ¨Õ_@ÍdÃ>¾¥Ìõ;®	eUU2º\"9ì>~\'8$	¾M0Ð¹#V¢ø§Òzfê=þÿ@NH\r¯ü]ÉáBBa¨ût', 'Bkash', 'shipto', 'Azampur', '4', 100, ' ', NULL, '0092', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 13:51:11', '2020-05-16 13:51:11', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(34, 29, 'BZh91AY&SYj>Ý\0Å_@\0ø+õ$¿ÿÿúP»6À\'±Ú­q%OM)äÅ=\0dh\0zA\"\"=@i \0\Z4\04jd104Mibd0\0\0\0\0\0\0\0\0\nm\nzdh\0\0zù\0¾#êt!ØBxÀîÄò;ûð6Qc%¯HÐ~CÆTzFHr#Ôå¯\n­/µ5û5XMÃZß­tªß5Zþ$Ê]ÈqÅ%Î]QyT\"ÁÖ ÌrpÝ`ºK¥Eøè®2ËD\rKÎ~¦G2uG\nBHD95vN0Tcwwh?£ä\"SÚÁ+3TC0m ·yP3,Âª¦jý$Kul¬ÀÃLIQ9rÁ¸ºìdp¢YBV êÖ³h©×£@çÖÃgÐsÇ µJk)52»pTªÒ ²IJ´µ­X¯âKô¿Raï±I\0m~­a$´±$pnIÀô¬,.5J´B°I6m=ÛÍ^Äøm\"ÞÄ?¹©<mï~>Ï4sg\\éY}á¸åº­×x86YÎAcÑÜÉ»·{6f+(Ö¨ïÍ3¾û%ë£µ;{´qNëô	âk:F\0ÚDèb@ø.2!tØj`åÖêU´ø_ájÅµÁ´¬éÀ@8j©ã?¸ÌÌg¼Øn%é¸ÚRR2zw=äRÐÔu6äåCÌjÈ®Iå¥r`hXÁ¡|ÐS¢\'d`x!MoÀ ­îofÙ\ZiÌqzb.DKUà`¸Î±Æc°ÍkÇhÄcNXÌ TÅQ·­.¡zé¸©Q¦f)&GçBÀÎÄ##°õ¡R8LJ¹¨¿i~ïo±Q¦¥Kñ(¼¾´aF;ädEéæ-z¯Câ&Ðß#¢Ä@|î1}>ö\' ¸IÀó0Aß@U%>já&EK¤POs¹1Kp#\\@¦ÞGopÆâ,µ¥BÕDI9®û²Y­«(I@ÑD©¢ë»,¨U/1HàY­ÿãU¿¨µª3Lá{\r?Ãu%R¨¤çX©.Ç³N%F\"4¬Á5¯à¿¦$w\Zm úÚÔ\n3`î,\'Äã9ãR*ð©H´Õ)qÀ¹õHV$LÒe.½)»ß¶þ<;×°!,±\"¤EYlXÚ-ó3ZsW]EUÔµG´nseQCAB÷oP}®âB®a\\ò7bn_$Ð³7(m²ÆfsÎ*Pº¸d´DJ¨Õ_@ÍdÃ>¾¥Ìõ;®	eUU2º\"9ì>~\'8$	¾M0Ð¹#V¢ø§Òzfê=þÿ@NH\r¯ü]ÉáBBa¨ût', 'Bkash', 'shipto', 'Azampur', '4', 100, ' ', NULL, '0089', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 13:52:59', '2020-05-16 13:52:59', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(35, 29, 'BZh91AY&SYj>Ý\0Å_@\0ø+õ$¿ÿÿúP»6À\'±Ú­q%OM)äÅ=\0dh\0zA\"\"=@i \0\Z4\04jd104Mibd0\0\0\0\0\0\0\0\0\nm\nzdh\0\0zù\0¾#êt!ØBxÀîÄò;ûð6Qc%¯HÐ~CÆTzFHr#Ôå¯\n­/µ5û5XMÃZß­tªß5Zþ$Ê]ÈqÅ%Î]QyT\"ÁÖ ÌrpÝ`ºK¥Eøè®2ËD\rKÎ~¦G2uG\nBHD95vN0Tcwwh?£ä\"SÚÁ+3TC0m ·yP3,Âª¦jý$Kul¬ÀÃLIQ9rÁ¸ºìdp¢YBV êÖ³h©×£@çÖÃgÐsÇ µJk)52»pTªÒ ²IJ´µ­X¯âKô¿Raï±I\0m~­a$´±$pnIÀô¬,.5J´B°I6m=ÛÍ^Äøm\"ÞÄ?¹©<mï~>Ï4sg\\éY}á¸åº­×x86YÎAcÑÜÉ»·{6f+(Ö¨ïÍ3¾û%ë£µ;{´qNëô	âk:F\0ÚDèb@ø.2!tØj`åÖêU´ø_ájÅµÁ´¬éÀ@8j©ã?¸ÌÌg¼Øn%é¸ÚRR2zw=äRÐÔu6äåCÌjÈ®Iå¥r`hXÁ¡|ÐS¢\'d`x!MoÀ ­îofÙ\ZiÌqzb.DKUà`¸Î±Æc°ÍkÇhÄcNXÌ TÅQ·­.¡zé¸©Q¦f)&GçBÀÎÄ##°õ¡R8LJ¹¨¿i~ïo±Q¦¥Kñ(¼¾´aF;ädEéæ-z¯Câ&Ðß#¢Ä@|î1}>ö\' ¸IÀó0Aß@U%>já&EK¤POs¹1Kp#\\@¦ÞGopÆâ,µ¥BÕDI9®û²Y­«(I@ÑD©¢ë»,¨U/1HàY­ÿãU¿¨µª3Lá{\r?Ãu%R¨¤çX©.Ç³N%F\"4¬Á5¯à¿¦$w\Zm úÚÔ\n3`î,\'Äã9ãR*ð©H´Õ)qÀ¹õHV$LÒe.½)»ß¶þ<;×°!,±\"¤EYlXÚ-ó3ZsW]EUÔµG´nseQCAB÷oP}®âB®a\\ò7bn_$Ð³7(m²ÆfsÎ*Pº¸d´DJ¨Õ_@ÍdÃ>¾¥Ìõ;®	eUU2º\"9ì>~\'8$	¾M0Ð¹#V¢ø§Òzfê=þÿ@NH\r¯ü]ÉáBBa¨ût', 'Bkash', 'shipto', 'Azampur', '4', 100, ' ', NULL, '0073', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 13:54:09', '2020-05-16 13:54:09', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(36, 29, 'BZh91AY&SYj>Ý\0Å_@\0ø+õ$¿ÿÿúP»6À\'±Ú­q%OM)äÅ=\0dh\0zA\"\"=@i \0\Z4\04jd104Mibd0\0\0\0\0\0\0\0\0\nm\nzdh\0\0zù\0¾#êt!ØBxÀîÄò;ûð6Qc%¯HÐ~CÆTzFHr#Ôå¯\n­/µ5û5XMÃZß­tªß5Zþ$Ê]ÈqÅ%Î]QyT\"ÁÖ ÌrpÝ`ºK¥Eøè®2ËD\rKÎ~¦G2uG\nBHD95vN0Tcwwh?£ä\"SÚÁ+3TC0m ·yP3,Âª¦jý$Kul¬ÀÃLIQ9rÁ¸ºìdp¢YBV êÖ³h©×£@çÖÃgÐsÇ µJk)52»pTªÒ ²IJ´µ­X¯âKô¿Raï±I\0m~­a$´±$pnIÀô¬,.5J´B°I6m=ÛÍ^Äøm\"ÞÄ?¹©<mï~>Ï4sg\\éY}á¸åº­×x86YÎAcÑÜÉ»·{6f+(Ö¨ïÍ3¾û%ë£µ;{´qNëô	âk:F\0ÚDèb@ø.2!tØj`åÖêU´ø_ájÅµÁ´¬éÀ@8j©ã?¸ÌÌg¼Øn%é¸ÚRR2zw=äRÐÔu6äåCÌjÈ®Iå¥r`hXÁ¡|ÐS¢\'d`x!MoÀ ­îofÙ\ZiÌqzb.DKUà`¸Î±Æc°ÍkÇhÄcNXÌ TÅQ·­.¡zé¸©Q¦f)&GçBÀÎÄ##°õ¡R8LJ¹¨¿i~ïo±Q¦¥Kñ(¼¾´aF;ädEéæ-z¯Câ&Ðß#¢Ä@|î1}>ö\' ¸IÀó0Aß@U%>já&EK¤POs¹1Kp#\\@¦ÞGopÆâ,µ¥BÕDI9®û²Y­«(I@ÑD©¢ë»,¨U/1HàY­ÿãU¿¨µª3Lá{\r?Ãu%R¨¤çX©.Ç³N%F\"4¬Á5¯à¿¦$w\Zm úÚÔ\n3`î,\'Äã9ãR*ð©H´Õ)qÀ¹õHV$LÒe.½)»ß¶þ<;×°!,±\"¤EYlXÚ-ó3ZsW]EUÔµG´nseQCAB÷oP}®âB®a\\ò7bn_$Ð³7(m²ÆfsÎ*Pº¸d´DJ¨Õ_@ÍdÃ>¾¥Ìõ;®	eUU2º\"9ì>~\'8$	¾M0Ð¹#V¢ø§Òzfê=þÿ@NH\r¯ü]ÉáBBa¨ût', 'Bkash', 'shipto', 'Azampur', '4', 100, ' ', NULL, '0053', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 13:54:58', '2020-05-16 13:54:58', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(37, 29, 'BZh91AY&SYC*èÿ\0Å_@\0ø+õ$¿ÿÿúP»ÝÝ#º¢¥k8Á	M$ÓOPM\rM¥?B4zF¢mA$)ª\r\0\0\0\0\0\0\")Òf¦É\Z=Ñ ÐÓM À\0\0\0\0\0\0\0DBjz*cIâih\0Ð )AM@/p÷1>ä\'qÑÛÛå\n»æ;2AÜ2CTGÝËZRd¹×J\'ìÊëcÙÎ¹Â)Ù^¹õ*knÏ§?\\®.*6AøA¨ÝaY+¡q´«hÃ)M9}GÚX*.öÊìÆyäl!	xpâ°dÉ27qmP:ÝÔMQÈR0Âaªîª~ð4\rRÖÊÀË\r´uuµ eªEA&f\"kÄJD0SM17aeXI¿!@Å&Tðõ<hqÁÍHã@åYÈÒ¤ç*Yv	ñ`4oYfìÑµR&*6×X¥:¹L\"o*{	8(¢È%N,Ì6­Wu/÷ú¦Á)	ÊÐ\'M¬$$@¤0@Ìà¬X¬\\ª	hH¬3{Y¦j1åÕ\"®\n§HÃ56µÍÒÞÑË|Å}ÑzÔñc9 9[6å\r©Î\Z´6ôF1\näÌ¾ñ8à8ÎFçJ4ÚwQÂúyÎÑÌr=À«ÞAëèÜt*¸\\\ns8¹RåV\nÙöß¶Ô:0Ö\r¥gMbÃT;ÎyûÁÐr½&ÎjÌæw}»ÎãÐó6øVÏS# ´Ðu9vÈ¨mX\ZäJW$éÎ603,j3,ÅØS3bP=2@É`NË\rhÆ×nÔYT8=¼¶ØyIø¾ybðñÊiPLCLIPjé3·àj*`¨ÆÓ0)&Gç2Ô3&HÈà=7Ì»\\ï	WÜgØnüDÒ8¦ÏBüÈUëg4å9ñ@÷uMë°ÿbI´!qÈÜ1ÛC«Ü-rk:Ds	%Q^­³]!²¤¡\"oÉç76F[È¦Ðê×\nrô:0´q`%¬ì*ª\"IÂÜGZ\n¥¥DA2$KËW\n¥Ô)aÍý4\\ÛÅ¥Q4Íw°j8qln á5Ýµ¿\rMçe¤k7·%à/AøEc¦«æÍRlC\ZA,¥l^TvOc¤=ñi¤¦uËÜÒB´ä\"hô»ô¦ñnû}yrq_r`!,±\"äEYlXÚ-Y¸z7vÂ+­-âªÞZÆ´nmeQC1Bèæ@|.âB®a\\é95MËäE\r¶@XÁÛ(]\\2Yr%TjÈÃ^É={ËÐâ·%UTÊÜØOöó`$ .&ö4@Ã2äZü2³]à¯¯°rc+ÿrE8PC*èÿ', 'Bkash', 'shipto', 'Azampur', '4', 100, ' ', NULL, '0038', 'Completed', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-16 13:55:35', '2020-05-18 11:59:59', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(38, 29, 'BZh91AY&SYÞì}\0Î_@\0Pø+üD¿ïÿúPÉ{P8ÙÕ»n±rkh Ô4MOÔzjõC &SA\")#C54\r4ÄÐÓC)H£Ô3(24ÄÚ\0\0Ð0À\0\0\0h\0\0\0\0HhÒjzd@\0\0\0h$8$w@KÄ\\Îñ0Áâ~G8Äò<<°¢ÆK_ÀÐ{© ì!¸åË]:åÏdY`¯é<ØðìÊÆ¸ã¹t¯xãMV¾N*ûÈm´­Æ¢65ó(LÙt*o#¼BPHÅÏi<ÎÐúÉºM%J|0°eÑåô	Æ#´hZX@·ªª6Â°Xh\nD°¤Y\ZMÕÝÚ,CLh±ÄÕÙ``Û@7n±¯,\n¬¬aNj­`¥2*&óG ´Zjã!eal¢Y¤¨9µF²h©×:;ãXo\r«¡2ço/Aj*ÖRj&d+5w¡£[*øDS²Tp³,ÚÅ}%Üéü°hJP&Ä\Z,Æ*Ì0$§S¶B{ÓN$ºb!!­SmÜp[8wh!\\´h|¯\nÉZâcÓÂö/c+äªW>è½UjºÁÁ°9È87GS\'Nö7FF39ÊÙ½ìê£g=tK:ÕV4ø$]`éèÌ.Z¦äô%èÓ4-=³hPôéÞelþêågn;rÝG-r0m,uä>e#±ýãd\n_\nI@ò\"a¡ÜWõö:\Z\Z)?dò:Ö¸(¢g|27§\r@ÑPÙd5¼±$çlÀÌÀ¹Ã|!ÔÕr,\\w!Mo  ®8,ßc<õ ÐÆHc*ºàwf;n¯ñx¿_\"R[FÝ¯ý?Lm}H3\nHàZõ Ã±Ê\"cj½/Û*Ïç«ÔmÈÏ`»Ãzå$9Ø°u\n¯h·xçPtJ/påØq¤B`l8ÔÆgÂcâ-În3- p¼u«ÝfÚZ&CA%ÐºA6-^ÿ5À\ntwÎ½F0Â9\nHÀ%®°Te¢$Wx²ÆZáQDKÔ%L3CU¸C\0Á*\nGºÞ0aÐªÃVH¸LÛdÂÓ³ ù.&°dÅæ*üç¶fù¤æZÍ¿£s2!É45VIE°ÍZlM¸Ü÷[R\'T¶Á|( J\n.C-Ã!Aà\Z,Ù©pË?:x9Gðôdàe\" 	fOQ\r*Ð.K9ä\ZÎÀpyNÇó·Ãxá\0È±ÔDPÈd®\\`Ü¶î$ ¬D+N&6M3E\r¶@`de=qR*À¢¼lêC)¢æZ%þ`¦±¦eÕ;V!­\nªelù\ZîÜM¤	â5é35´á´íNÍOQ\Z½g/?ðC~ÿ(5ACcÖ.äp¡!½Ù(ú', 'Cash On Delivery', 'shipto', 'Azampur', '1', 1400, NULL, NULL, '0021', 'Completed', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'Dhaka', 'Dhaka', '1200', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2020-05-18 11:54:17', '2020-05-19 13:03:12', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(39, NULL, 'BZh91AY&SY±tO7\0Óß@\0ø+ý$¿ÿÿú`?}\0JQRP\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0À\0\0\0\0\0\0\0¡!\ZSÒz¨òj4zõ¨z§êOPI¦!iM4ÓS5PÇ¢¥ Y¼>¨ÿgôEE>¥ÚÁù©ÌÙ¹ 9°&ùËÎT¼,³ü)uGf9le.Ãê¤Ó;2ÃEÙYI³w©.\ZRÍlý4ÂtèÄõ¾<ÎOSqZTæ;Ï7¹¦TðlåsvN¸ÇcÛ-íDN\\¿w¿áÍ?5Oàûé%	bÈå6ùS,\Zqhõ$K\"nü²T¤á²í*éT*K%`¨ZJÓ+°Ë+´ø.ºG\nh¢¤R¦ÍÛ·eõ}®¡þY¡)HRBnÝÃÔÉ:Q±J¨S]SvVTÝ¦jJPË,.»\r,ûÂTË*0ÓFC\n*Yi§ÚÁf[)y¨¤ÕYËMKIs¶lË\rí2ÜÞÞÐèinIH1¸vi¤³c´û\n]ÃvÍ578L°]Å4ËaÂY0Ù¦Ë®¸ÃMdp(atÃdY)fivS\rfÍ§	¤ËèüD?GæT¢)ò´K),´E¥,´²¡JòÌfR\\¥©Å©pÚAe$RAT	!X!J!Jw<\'gwñHLøX$~R¥\ZaÏ[3[\rN\\9jiÓfpÉ¦í2ËvzlRÓAËKMÎ2µY±Òë²±ÒnRÎ.l¢é¦7ªÃMÛ³:ig\r:tèº9nááeØ9nsÂ¨}}Ïk©Þäp,ÞüQ\\ô\rïx8`GðÒ÷Íq´ûÙïô8~Ñc\né§OÅ»ñiär¤ä¡JI¥0ñ²£Æx®üå/@L^£sÅäè2äñtºFFÉçÕ¨³	SÛ\'\'iLïw&#Qcÿ¥âo.|1!â êjq:¸ë\"h»fÇ8RRR¤SÕ%·o<;ÛN<¥§tÝ7Yu2£¹G¬ý%¤ö®³ã(ìËÚïYÂÎÕláËf]J&JRM72Ôõ78·0â\r4Sæ(ÐÈÎ%O¼Ú]¥wÊNægOS´iø¼ÍoÈîa9)°Üé68^xCqL¶~Bí¦Éð¥=Ï;>	ô?y>%Sþ(ù·øQR\n)îpQ)öOGÍ©wºG±yìiót//S²§N[½m!rBðië\Zâ<LæÁò\ZÎÇ1Ö¿º&ûùE&|ÉyfêNÍåÂIMFÖÆÂÇ3½³!MIXÍ\rØÄ:&¹.ß\"òIë=ÖvOcäNÌ£=­ÚOõz\'{¦ÊJÒRtþ­,ù¾NùµÖ`:ç ýÆNÐÙÜìÉwµöCâæx%<gî=SÉ±hPü)=RÓ+F,ç´©d±é*MSÝ--Oe-6|]>çÉ£â³ïù¥J!R¥%$¤©\n	Rü\n%(\n¤e$¢ËH©/<\'3ÉÓÉdeëIð&Sß4ÔìRÈ?éivãÉS(ÁÔ©bÉîxZv&êYy,eeMÏîp»ví¢¤gtZ¥4RéiÌæï%¦ãc©O8]3(Ô9R2?jlÅß79v$ó³)ºéç=SÚSÍík/$ºYÒ£RJ¥ËÊM0¼£¼ú9DýR\'§¤úAJ¥%*QV?ü]ÉáBBÅÑ<Ü', 'Bkash', 'shipto', 'Azampur', '5', 2125, ' ', NULL, '0039', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '0174236555', 'dhaka', 'dhaka', '3700', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-21 04:10:40', '2020-05-21 04:10:40', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(40, NULL, 'BZh91AY&SYýÓ±\0Æ_@\0ø+ü¿ÿÿúP¹½d#º´5PBP¥6Ð(õDñ@ÐÄh2¢Q4ÄÔÕ#4`\0ÓL@?Jdô@\0=A¦@\0\0\0@\0\0\0DAOÒlª~j\n\rò SxÔ?³Ú0¨lgOMH\\~¤CæM!(ú°Ú«ï.<X¢÷IMk:5üÕ\"sYï=\'\'º=BÚU/?Æ\"éÉddpâO##¯2åh>x ´ÌÎú@xjzç³Ìx|Bì±\Z)·ÑOEæÁ¤\r)X:âóX©©ZJSö,I#!ÔÆv½ïOô4Á6±0tµ¯0(6Ð\r:Ò)Z*Ô¬iw(µ.&1g&Fà°««Î_9qY¬ãR\n((Ü`ÁD4,£&1dGKé1	i.ÓÉ ­X*qv¥tºY/1tT³3â]Ä²^R12a­]4É³£\Zôõõ0-FE$A.¨	Âa$ª*$´aá!4d¤ÅºRbB\0Y$gkâËãßb;(»àªp £êv5=ªªJJÑ|ájãÎ|>d[&cXqdË1±|b°Ä¨É\Z1T©äe32bøM)jÔæ24ªåÐr¼q!°\0Þ6F$M2¯r#l\ZLXzõ?­þøVcê5iUÏA\0á©\ZKä3CÌÒÈSq¬ÚGvÓAB8à:âÔ×g¢¡Ï¨ÍV ý	%rG|æ#«2¦FeòpCdK\",d<`Ó`âR÷=Ìçc<õ ä^y@EÈ1\\LÐõ  <.¼$8³Í¾¶­¹ªõÚÍÄ2\\I¨é®ÝäPÁA¦`R%!ÁyfBYÜdXÜsP©é×\"¡ÑaÏ»ðTø^©n{I£äA3pa@öòËÐöDiñ±²Ä@{\\b÷<¼jKai#CÈÈÇ0%7Áâþëd&Q# HÉâu]Î®ì×@\'Ë±ßa+DT	5E2´DHçìwwx\Zjîr`¢Ë­¨Û£rx (KÌRAOøàºw\n#iÅüG`FQQIR: ×Òg,#SÈ^q°TÆ¢äDz¥!Ö^Ñl,tf yÜÏ-$=Qhã(Í8²·q¦&²âåß?§yùïô1 c44a,\"²µ5BÔ9\Zç¬\"%ÜT]Ôà8@2,.¬&`d¶ç`÷»\"!\\ìqÊW/dÐ°qPÛu %Ö(Lº¸Yf=Q%Aª£\r}iz°·!¹ëP­EE)-Qf¤ýG·´cXkV r«5ì2~óÓ_è óèò$ Ôe?ñw$S	Ý8K', 'Bkash', 'shipto', 'Azampur', '1', 200, ' ', NULL, '0032', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01742349541', 'dhaka', 'dhaka', '3700', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-21 04:22:08', '2020-05-21 04:22:08', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(41, 38, 'BZh91AY&SY\r\0ß@\0Pø;ôN¿ïÿú`]¾­\0Ue]Ðmd£i¡\Z\01Tõh @L\0&\0`\0\0\0\0TRJyA²ôÒhÙ&&¦ 9`\0&\0\0\0\0	4MPÑ1S@H4\r=L2$uO³¬û¨ì|Ùa*s8Æt©aÊ2K@Î-£\nh`Ö#¡Ë\\-rM³.ô¦ß@ïÑÂö]¬i½YTUÉ&Z_\Zr»Â@qH Ænb ©ä`ÓH=7o¯aÈ\ZÜ2Xá\nüURl$iwÇoO}±9\\©5CBöºmçeXùØ\ZI´M´Í3(X,B -iE|H`\ZMÕïz£AäjD¦	´\rXÆ gÔ1\\m \nv½íäLi^e¿I$´\r;U¯À¹*âceq5¡\"MZ&[È  àX±.I.HyB)Alºf\"ê0ZqÃ\0ç:bænheUÊ»Ö+böMDÌ¯¡_ ÂÒ­@È(³¢aUÝWU\'±\'ëT§DÅhµ±_¦1)jËÔ¨¦ÁöX`æjÁ4¦$bçQDbQeZE²æ&¯/¤ú$B¸Ìe ãh:«sÆs85Îª^£¬P«ÎuÒöIÊX*£¥±vaè¥Ò\"8åhY\Z°)åè¯T/{ìòkK]5ÐÕh³Æ¼±¹Äï$£ïHXWõÏ¼±ÍTÏ(\rÔ%ß-ÄeRÁ<$«|Ï³$µ6è¡ÕÏôa¼þÃ§öA1ò\'D\'HÜ)LOY0**%lDdx²É²£¥ÞwÔ®w®Py¤½ì#¹¸ÂæMÍ5Ô\Zã\"ú\\`ðDìFMG±\Zl}i¡ØÎ¼íÜAÔidf4\"%¥sS#9lÇ´fõÏ1Ï8fMF¨ÅCo¾3pÑJñ?Ã ¹r6¨¤\ZNÄ%ÂL/pËp{MzÄkfU8Ûp_·ÏÏú\Z\'­®ÞónÓ.ý*ù ±à0º÷\'ô:²AÇ¡®*£¥Ðñ¤1÷¿Ú.(ðV:ÏR$«=ÙÃm8ã(¤ÃÐ°$Ê¨æÌuö_z5Äì+§¼ðîÃâ)\"àK\\.+ \"F.eº~À¢L-UËJ&3ES¢Ìë,·( ¤½¢À¬è¸.Á/ôÝrðô\0¡Aa÷ #,f« ¢5.ÙVüà²ÐB[&Ûû^Ç-ªgW3Oj®£Ì²Ï/ZIò9NÚîXç]pMVäª±²Rì2@ö\r\Z6vG\\hG>uµßîKÌ\Z¥U,²YR¬OeaQJÒI±%\r&¢¡£SÐåÅ/P®½Eîp 2 Ð.2]½0l¿.$ *\"OQ®e\Z\Za&+KSxm¦@I©¬ò,h´-Í¨jèÕ¥ääÊK Ñgq^æ%¥*JesDr%cçÖsù,REcQCæÑÂô\ZA«y7i¼Ð¤6º×w)-´µ1eÉÿ¹\"(H\nJÂ', 'Bkash', 'shipto', 'Azampur', '5', 500, ' ', NULL, '0064', 'Pending', 'piash3700@gmail.com', 'piash', 'Bangladesh', '01736937161', 'dhaka', 'dhaka', '3700', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-05-21 08:51:23', '2020-05-21 08:51:23', 'piash', '50', '৳', 1, 0, 0, 0, 0, NULL, 0, 0);

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
(16, 41, 6, 'adad', '2020-05-21 08:51:23', '2020-05-21 08:51:23');

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
(4, 41, 2, 10, '2020-05-21 08:51:23', '2020-05-21 08:51:23');

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
(9, 41, 4, 'sa', '2020-05-21 08:51:23', '2020-05-21 08:51:23');

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
(62, 41, 'Pending', 'You have successfully placed your order.', '2020-05-21 08:51:23', '2020-05-21 08:51:23');

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
(1, 'About Us', 'about-us1', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, 0, 0),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1);

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
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'admin@geniusocean.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', '3584 Hickory Heights Drive ,Hanover MD 21076, USA', '00 000 000 000', '00 000 000 000', 'admin@geniusocean.com', 'https://geniusocean.com/', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '1568889138banner1.jpg', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 1, 1, '1568889138banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 1, '00sasa');

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
  `boost_expired` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `area_id`, `division_id`, `district_id`, `sub_district_id`, `brand_id`, `deal_code`, `boost`, `boost_expired`) VALUES
(93, NULL, 'normal', NULL, 0, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-94l93dsn', '15680269303GYKjODW.png', '1568026930poclhyxJ.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 41, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 07:07:43', '2020-04-24 20:44:59', 0, NULL, NULL, NULL, 0, 0, 0, 2, 6, 4, 0, '', 0, '2020-04-29 11:15:03'),
(95, 'pr495jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027732dTwHda8l.png', '1568027751AidGUyJv.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 48, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2019-09-09 07:36:06', '2020-04-11 09:11:10', 1, '09/08/2021', NULL, NULL, 0, 0, 0, 2, 8, 1, 0, '', 0, '2020-04-29 11:15:03'),
(96, 'pr601jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 96', 'top-rated-product-title-will-be-here-according-to-your-wish-96-rdk96x5b', '1568025872cCRVsp2k.png', '1568025872thPsuRSJ.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 15, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 08:00:05', '2020-05-07 22:43:10', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 0, 1, 1, 2, 0, '', 0, '2020-04-29 11:15:03'),
(97, 'pr602jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 97', 'physical-product-title-title-will-be-here-97-pr602jsv', '1568026462TxRJ07FG.png', '1568026462WBWcd7KZ.jpg', NULL, 'S,M,L', '2147483596,2147483597,2147483597', '20,30,40', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 77, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2020-05-07 01:49:14', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 0, 2, 2, 3, 0, '', 0, '2020-04-29 11:15:03'),
(99, 'pr604jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-hjm99shr', '15680264040zpMCpmS.png', '1568026404Hm4kTmnP.jpg', NULL, 'S', '2147483641', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 27, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2020-04-13 04:50:32', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, 0, 2, 4, 5, 0, '', 0, '2020-04-29 11:15:03'),
(100, 'pr605jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 100', 'physical-product-title-title-will-be-here-100-qqz100nzi', '1568026368qU5AILZo.png', '1568026368CzWwfWLG.jpg', NULL, 'S', '55555555555555554', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 11, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, '2019-09-09 11:59:33', '2020-04-28 23:12:09', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 0, 1, 5, 1, 0, '', 0, '2020-04-29 11:15:03'),
(101, 'pr606jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 101', 'physical-product-title-title-will-be-here-101-8e1101lbq', '1568026326RDSwScJe.png', '1568026326vMlslLz4.jpg', NULL, 'S', '2147483646', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 45, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2020-05-07 18:34:59', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 0, 2, 6, 2, 0, '', 0, '2020-04-29 11:15:03'),
(102, 'pr607jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-pr607jsv', '1568026301A6SNpEFR.png', '1568026301VLkmQEpb.jpg', NULL, 'S', '2147483644', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 42, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2020-04-24 22:55:10', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, 0, 1, 7, 3, 0, '', 0, '2020-04-29 11:15:03'),
(103, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-laj1033wf', '1568026899SLhVRzQv.png', '15680268999fypNo3k.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-03 01:16:24', 0, NULL, NULL, NULL, 0, 0, 0, 2, 8, 4, 0, '', 0, '2020-04-29 11:15:03'),
(104, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 104', 'digital-product-title-will-be-here-by-name-104-ffv1047iv', '1568026881R8KnUyJv.png', '1568026881yy7vilmh.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 6, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-09-10 08:21:46', 0, NULL, NULL, NULL, 0, 0, 0, 1, 1, 5, 0, '', 0, '2020-04-29 11:15:03'),
(105, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 105', 'digital-product-title-will-be-here-by-name-105-xpt105lfz', '1568026853LMtcb9he.png', '1568026853ZnMf5AkF.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-07 22:40:15', 0, NULL, NULL, NULL, 0, 0, 0, 2, 2, 1, 0, '', 0, '2020-04-29 11:15:03'),
(106, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 106', 'digital-product-title-will-be-here-by-name-106-iq4106dr3', '1568026820NnXjzL5e.png', '1568026820j7QX4FZs.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-07 22:40:14', 0, NULL, NULL, NULL, 0, 0, 0, 1, 3, 2, 0, '', 0, '2020-04-29 11:15:03'),
(107, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 107', 'digital-product-title-will-be-here-by-name-107-4ll107cru', '1568026791NGCCXoMs.png', '1568026791O2FR26Va.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-12 22:27:40', 0, NULL, NULL, NULL, 0, 0, 0, 2, 4, 3, 0, '', 0, '2020-04-29 11:15:03'),
(109, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 109', 'digital-product-title-will-be-here-by-name-109-ext109m9m', '15680267308Mckygzw.png', '1568026730uz1TS02K.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 2, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2020-04-13 07:15:19', 0, NULL, NULL, NULL, 0, 0, 0, 2, 6, 5, 0, '', 0, '2020-04-29 11:15:03');
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `area_id`, `division_id`, `district_id`, `sub_district_id`, `brand_id`, `deal_code`, `boost`, `boost_expired`) VALUES
(111, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 111', 'license-key-title-will-be-here-according-to-your-wish-111-wb3111ubd', '1568029267UZnlkD97.png', '1568029267AY9MRYAQ.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 1, 1, '2019-09-09 12:25:20', '2019-09-19 02:39:08', 0, NULL, NULL, NULL, 0, 0, 0, 2, 8, 2, 0, '', 0, '2020-04-29 11:15:03'),
(112, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-sct112k8z', '1568029203HHnZu8em.png', '1568029203eAzBjS8a.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'game', 'Keyword 2,Keyword1', '#e80707,#113fe0', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 1, 1, '2019-09-09 12:25:20', '2019-09-09 20:23:17', 0, NULL, NULL, NULL, 0, 0, 0, 1, 1, 3, 0, '', 0, '2020-04-29 11:15:03'),
(114, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-bbb114jm9', '1568029152hgFzyOZv.png', '1568029152PVeSE2Ct.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 0, 1, '2019-09-09 12:25:20', '2019-10-01 23:34:27', 0, NULL, NULL, NULL, 0, 0, 0, 1, 3, 5, 0, '', 0, '2020-04-29 11:15:03'),
(116, 'pr496jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 116', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027684whVhJDrR.png', '1568027717gm0tFzeb.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:15:17', 1, '09/08/2021', NULL, NULL, 0, 0, 0, 1, 5, 2, 0, '', 0, '2020-04-29 11:15:03'),
(117, 'pr497jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 117', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027658Up0FIXsW.png', '1568027670dTA7gQml.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:30', 1, '09/08/2021', NULL, NULL, 0, 0, 0, 2, 6, 3, 0, '', 0, '2020-04-29 11:15:03'),
(118, 'pr498jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 118', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027631cnmEylRa.png', '1568027643PgYviwVK.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:03', 1, '09/08/2021', NULL, NULL, 0, 0, 0, 1, 7, 4, 0, '', 0, '2020-04-29 11:15:03'),
(119, 'pr499jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 1', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027603i5UAZiKB.png', '1568027616O1coe3aV.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:13:36', 1, '09/08/2021', NULL, NULL, 0, 0, 0, 2, 8, 5, 0, '', 0, '2020-04-29 11:15:03'),
(120, 'pr500jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 120', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027558gLSECTIh.png', '1568027591b1oUIo7Q.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2019-09-09 12:36:06', '2019-09-09 10:53:33', 1, '09/08/2021', NULL, NULL, 0, 0, 0, 1, 1, 1, 0, '', 0, '2020-04-29 11:15:03'),
(121, 'pr501jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 121', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027534O1QEBPpR.png', '1568027543P8eoamtf.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:12:23', 1, '09/08/2021', NULL, NULL, 0, 0, 0, 2, 2, 2, 0, '', 0, '2020-04-29 11:15:03'),
(122, 'pr502jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 122', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027493eLqHNoZP.png', '1568027517LGq90luX.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:11:57', 1, '09/08/2021', NULL, NULL, 0, 0, 0, 1, 3, 3, 0, '', 0, '2020-04-29 11:15:03'),
(123, 'pr608jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-0af12392v', '1568025845ksCVo0hg.png', '1568025845bvB0Q0RE.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 7, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 13:00:05', '2019-10-12 04:26:54', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, 0, 2, 4, 4, 0, '', 0, '2020-04-29 11:15:03'),
(124, 'pr609jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 124', 'top-rated-product-title-will-be-here-according-to-your-wish-124-hua12449x', '1568025818Iu033mHq.png', '1568025818tm9YHIHp.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2019-10-02 03:39:33', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, 0, 1, 5, 5, 0, '', 0, '2020-04-29 11:15:03'),
(125, 'pr610jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 125', 'top-rated-product-title-will-be-here-according-to-your-wish-125-lbp125hto', '1568025774B3MU5tJK.png', '1568025774ZsBKNuio.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 1, '2019-09-09 13:00:05', '2019-10-01 21:57:30', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 0, 2, 6, 1, 0, '', 0, '2020-04-29 11:15:03');
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `area_id`, `division_id`, `district_id`, `sub_district_id`, `brand_id`, `deal_code`, `boost`, `boost_expired`) VALUES
(126, 'pr611jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 1', 'top-rated-product-title-will-be-here-according-to-your-wish-1-7uo96fft', '1568025683HenL6lSt.png', '1568025683ZYvDAf0q.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 10, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2019-09-09 13:00:05', '2019-10-01 21:57:22', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 0, 1, 7, 2, 0, '', 0, '2020-04-29 11:15:03'),
(128, 'pr613jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 102', 'top-rated-product-title-will-be-here-according-to-your-wish-102-rgr128igz', '1568025531RbQwgMZ5.png', '1568025531ckSl3TVR.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 2, 'fashion', 'Keyword1,Keyword 2', '#42c406,#f00505', 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 0, 1, '2019-09-09 13:00:05', '2019-10-01 22:13:52', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, 0, 1, 1, 4, 0, '', 0, '2020-04-29 11:15:03'),
(129, 'pr614jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 101', 'top-rated-product-title-will-be-here-according-to-your-wish-101-nls129ico', '1568025423UQNFrvNh.png', '15680254230iXcasMb.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 2, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2019-10-02 03:39:25', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, 0, 2, 2, 5, 0, '', 0, '2020-04-29 11:15:03'),
(130, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 130', 'license-key-title-will-be-here-according-to-your-wish-130-nwn1300xx', '1568029076fUcMe2QP.png', '1568029076jgoAP4SR.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 5, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, 1, 1, '2019-09-09 12:25:20', '2019-10-01 21:57:07', 0, NULL, NULL, NULL, 0, 0, 0, 1, 3, 1, 0, '', 0, '2020-04-29 11:15:03'),
(134, 'OO42939gas', 'normal', NULL, 13, 4, 2, 1, NULL, 'Elite 24\'\' ELITE HD LED TV DN600D', 'elite-24-elite-hd-led-tv-dn600d-oo42939gas', '1570072567FiBwycha.png', '1570072567Cqr5iSzD.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, '<span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;\"=\"\"><font size=\"3\">TVs always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 992, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><font size=\"3\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</font></span><br>', 1, 38, 'tv,television', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-25 00:33:22', '2020-04-29 00:21:59', 0, NULL, NULL, NULL, 1, 0, 0, 1, 7, 5, 0, '', 0, '2020-04-29 11:15:03'),
(135, '3uZ9903ofs', 'normal', NULL, 13, 4, 2, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs', '1570072554QTCZrnNj.png', '1570072555mZv9XiNP.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 80, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-29 23:08:12', '2019-10-12 05:43:18', 0, NULL, NULL, NULL, 1, 0, 0, 2, 8, 1, 0, '', 0, '2020-04-29 11:15:03'),
(144, 'vrX2915O5c', 'normal', NULL, 13, 4, 2, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-vrx2915o5c', '1570072918cZGfHP4L.jpg', '1570072918kGfglIIV.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 21, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-02 21:21:58', '2019-10-07 23:20:46', 0, NULL, NULL, NULL, 0, 135, 0, 1, 1, 5, 0, '', 0, '2020-04-29 11:15:03'),
(159, 'zhv5144fRY', 'normal', NULL, 13, 4, 2, 1, NULL, 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-zhv5144fry', '1570085245XVFR2oBZ.png', '1570085246ZA1btIzg.jpg', NULL, NULL, NULL, NULL, NULL, 300, 346, 'dfh', 34634, 'dfh', 1, 9, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-03 00:47:25', '2020-04-17 07:08:49', 0, NULL, NULL, NULL, 0, 0, 0, 2, 8, 5, 0, '', 0, '2020-04-29 11:15:03'),
(160, 'o1L5621DiS', 'normal', NULL, 13, 4, 2, 1, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-o1l5621dis', '1570085654jsXxCLyC.png', '1570085654jeAoOOo6.jpg', NULL, NULL, NULL, NULL, NULL, 346, 346, 'sgasdg', 34, 'dsgds', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-03 00:54:14', '2019-10-12 04:54:27', 0, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, 0, '', 0, '2020-04-29 11:15:03'),
(161, 'D2e6433Yi0', 'normal', NULL, 13, 4, 2, 1, NULL, 'Revel - Real Estate HTML Template', 'revel-real-estate-html-template-d2e6433yi0', '1570086479WEPC1gt0.png', '1570086479kBZE8u1v.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, 'hdfhdf', 0, 'dfjdfj', 1, 24, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-03 01:07:59', '2019-10-11 23:30:04', 0, NULL, NULL, NULL, 0, 0, 0, 2, 2, 2, 0, '', 0, '2020-04-29 11:15:03'),
(162, 'tOC5844N0t', 'normal', NULL, 13, 4, 2, 1, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-toc5844n0t', '1570255904FqR6FYd6.png', '1570255905GPr2HimK.jpg', NULL, 'S,Medium,Large', '100,100,100', '2,5,10', '#000000,#962f2f,#1c10a1,#1e9114,#701313', 400, 450, 'sdhds', 449, 'hdsh', 1, 126, 'dsf,hgf', 'Test,test1', '#000000,#d14141', 2, '24', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 00:11:44', '2020-04-15 02:37:11', 0, NULL, '15,20,30,40,50', '10,15,20,25,30', 0, 0, 0, 1, 3, 3, 0, '', 0, '2020-04-29 11:15:03'),
(163, '1ui8665inp', 'normal', NULL, 13, 17, NULL, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-1ui8665inp', '1570258694VlEv5IWz.png', '1570258694DNAUV7hA.jpg', NULL, NULL, NULL, NULL, NULL, 300, 464, 'fhjd', 734, 'dfj', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 00:58:14', '2019-10-05 00:58:29', 0, NULL, NULL, NULL, 0, 0, 0, 2, 4, 4, 0, '', 0, '2020-04-29 11:15:03'),
(164, 'RXp8737LeV', 'normal', NULL, 13, 5, 9, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737lev', '157025877313GpXaVy.png', '15702587732fKHlv77.jpg', NULL, NULL, NULL, NULL, NULL, 300, 548, 'gfkj', 4588, 'fgk', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 00:59:33', '2019-10-05 01:00:36', 0, NULL, NULL, NULL, 0, 0, 0, 1, 5, 5, 0, '', 0, '2020-04-29 11:15:03'),
(165, 'RXp8737Le', 'normal', NULL, 13, 5, 9, NULL, NULL, 'Zain - Digital Agency and Startup HTML Template', 'zain-digital-agency-and-startup-html-template-rxp8737le', '15702607258LEdVp5O.png', '1570260725Wze2eRN9.jpg', NULL, NULL, NULL, NULL, NULL, 300, 548, 'gfkj', 4588, 'fgk', 0, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-05 01:00:19', '2019-10-10 02:48:55', 0, NULL, NULL, NULL, 1, 0, 0, 2, 6, 1, 0, '', 0, '2020-04-29 11:15:03'),
(166, 'U1W3579L5k', 'normal', NULL, 0, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"No warranty\",\"Non-local warranty\"],\"prices\":[\"0\",\"30\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\",\"Infinix\"],\"prices\":[\"20\",\"40\"],\"details_status\":1},\"ram\":{\"values\":[\"3 GB\"],\"prices\":[\"0\"],\"details_status\":0},\"color_family\":{\"values\":[\"Black\",\"White\",\"Brown\"],\"prices\":[\"0\",\"20\",\"0\"],\"details_status\":1},\"display_size\":{\"values\":[\"40\",\"21\"],\"prices\":[\"12\",\"20\"],\"details_status\":1}}', 'Zain - Digital Agency and Startupuuuu', 'zain-digital-agency-and-startupuuuu-u1w3579l5k', '15708736755B0OtgVI.png', '1570873675mdibaSBp.jpg', NULL, NULL, NULL, NULL, NULL, 300, 436, 'shsdh', 346, 'sdhds', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 03:47:55', '2020-04-10 22:23:39', 0, NULL, NULL, NULL, 0, 0, 0, 1, 7, 2, 0, '', 0, '2020-04-29 11:15:03'),
(167, 'kE84874xem', 'normal', NULL, 13, 4, 2, 1, NULL, 'Courses', 'courses-ke84874xem', '1570874976y1X2tWVr.png', '15708749764ioXjDWh.jpg', NULL, NULL, NULL, NULL, NULL, 250, 355, 'asgas', 345, 'agsas', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:09:36', '2019-10-12 04:55:05', 0, NULL, NULL, NULL, 0, 0, 0, 2, 8, 3, 0, '', 0, '2020-04-29 11:15:03'),
(168, 'tbs53803yh', 'normal', NULL, 13, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"international manufacturer warranty\"],\"prices\":[\"78\",\"45\"],\"details_status\":1},\"brand\":{\"values\":[\"Symphony\",\"Apple\"],\"prices\":[\"0\",\"0\"],\"details_status\":1},\"ram\":{\"values\":[\"1 GB\",\"3 GB\"],\"prices\":[\"0\",\"0\"],\"details_status\":0},\"color_family\":{\"values\":[\"Sliver\",\"Brown\"],\"prices\":[\"67\",\"5\"],\"details_status\":1}}', 'Revel - Real Estate Huuu', 'revel-real-estate-huuu-tbs53803yh', '1570875445mpVQBH3x.png', '15708754456n2CU31X.jpg', NULL, NULL, NULL, NULL, NULL, 300, 345, 'dfshdfs', 6346, 'sdgs', 1, 20, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:17:25', '2019-10-13 05:32:30', 0, NULL, NULL, NULL, 0, 0, 0, 1, 1, 4, 0, '', 0, '2020-04-29 11:15:03'),
(169, 'TRg5938WNy', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny', '1570875978KD9cRleA.jpg', '15708759789N9Hm1QJ.jpg', NULL, NULL, NULL, NULL, 'Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:26:18', '2019-10-12 04:31:05', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, 0, 2, 2, 5, 0, '', 0, '2020-04-29 11:15:03'),
(170, '6Vb6172gWR', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr', '1570876195YsopRMZ0.jpg', '157087619598Nfs52R.jpg', NULL, NULL, NULL, NULL, 'Black,Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:29:55', '2019-10-12 04:29:55', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, 0, 1, 3, 1, 0, '', 0, '2020-04-29 11:15:03'),
(171, 'zia62030Vj', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-zia62030vj', '1570876207958wem8B.jpg', '1570876207Ri9VVzRq.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:30:07', '2019-10-12 04:30:07', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, 0, 2, 4, 2, 0, '', 0, '2020-04-29 11:15:03'),
(173, 'b2Q6258iDf', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-b2q6258idf', '1570876281siGCkmvP.jpg', '1570876281Wt1wdK8O.jpg', NULL, 'S', '2147483643', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:31:21', '2019-10-12 04:31:21', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131, 0, 2, 6, 4, 0, '', 0, '2020-04-29 11:15:03'),
(174, 'bXf62830R9', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-bxf62830r9', '1570876303dcztUot8.jpg', '15708763046Vwtn82r.jpg', NULL, 'S', '2147483643', '20', 'White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:31:43', '2019-10-12 04:31:44', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131, 0, 1, 7, 5, 0, '', 0, '2020-04-29 11:15:03'),
(175, '9gn6494iUN', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-9gn6494iun', '1570876503CUOkgSFD.jpg', '1570876503XgLFnuQi.jpg', NULL, 'S', '55555555555555555', '20', '#ffffff,#000000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:35:03', '2019-10-15 04:50:14', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 102, 0, 2, 8, 1, 0, '', 0, '2020-04-29 11:15:03'),
(176, 'no66517sJq', 'normal', NULL, 13, 4, 2, NULL, '{\"warranty_type\":{\"values\":[\"Local seller warranty\",\"No warranty\",\"international manufacturer warranty\",\"Non-local warranty\"],\"prices\":[\"10\",\"45\",\"0\",\"46\"],\"details_status\":1},\"brand\":{\"values\":[\"Symphony\",\"Oppo\",\"EStore\",\"Infinix\",\"Apple\"],\"prices\":[\"43\",\"10\",\"15\",\"3\",\"14\"],\"details_status\":1},\"ram\":{\"values\":[\"1 GB\",\"2 GB\",\"3 GB\"],\"prices\":[\"10\",\"20\",\"30\"],\"details_status\":1},\"color_family\":{\"values\":[\"Black\",\"White\",\"Sliver\",\"Red\",\"Dark Grey\",\"Dark Blue\",\"Brown\"],\"prices\":[\"10\",\"23\",\"30\",\"55\",\"65\",\"75\",\"85\"],\"details_status\":1}}', 'Zain - Digital Agency auu', 'zain-digital-agency-auu-no66517sjq', '1570876547aaQJLAun.png', '1570876547rJBVu8AQ.jpg', NULL, 'Small,Medium,Large,Extra Large', '95,100,100,100', '2,3,4,5', '#000000,#9f2cc7,#5722c7,#30ede2,#bfba39', 56, 4646, 'dsg', 341, 'sdg', 1, 244, NULL, NULL, NULL, 0, '5 Days', 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-12 04:35:47', '2020-04-21 03:56:28', 1, '02/20/2020', '10,20,30,40,50,60', '5,10,15,20,25,30', 0, 0, 0, 1, 1, 2, 0, '', 0, '2020-04-29 11:15:03');
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `area_id`, `division_id`, `district_id`, `sub_district_id`, `brand_id`, `deal_code`, `boost`, `boost_expired`) VALUES
(178, 'Tcv6794KXS', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-tcv6794kxs', '1570876820YXbcdnxW.jpg', '1570876820rpkj3Z6U.jpg', NULL, 'S', '2147483644', '20', 'White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:40:20', '2019-10-12 04:40:20', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, 0, 1, 3, 4, 0, '', 0, '2020-04-29 11:15:03'),
(179, 'mf56823djs', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-mf56823djs', '1570877127ByWwIJUA.jpg', '1570877128HKed4vMT.jpg', NULL, 'S', '2147483644', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:45:27', '2019-10-12 04:45:28', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, 0, 2, 4, 5, 0, '', 0, '2020-04-29 11:15:03'),
(180, 'myy7236gFD', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-myy7236gfd', '1570877254IpMreGOE.jpg', '1570877254wBRHJA4w.jpg', NULL, 'S', '2147483644', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:47:34', '2019-10-12 05:26:04', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, 0, 1, 5, 1, 0, '', 0, '2020-04-29 11:15:03'),
(181, 'TJV7256rgp', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-tjv7256rgp', '1570877275UqISZURU.jpg', '1570877275TFxddEsi.jpg', NULL, 'S', '2147483644', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:47:55', '2019-10-12 04:47:55', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, 0, 2, 6, 2, 0, '', 0, '2020-04-29 11:15:03'),
(182, 'b017277kfm', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-b017277kfm', '1570877286SxUGZME4.jpg', '1570877286o4pUSqMY.jpg', NULL, 'S', '2147483644', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag,js,css,php', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:48:06', '2020-05-01 19:14:24', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, 0, 1, 7, 3, 0, '', 0, '2020-04-29 11:15:03'),
(183, '123343561', 'affiliate', 'https://www.amazon.com/adidas-Girls-Sleeveless-Toddler-Little/dp/B07MTJL7ZT/ref=sr_1_1?keywords=dress&qid=1565068717&s=gateway&sr=8-1', 13, 4, 2, 1, NULL, 'Test CSV Product', 'test-csv-product-123343561', 'https://geniusocean.com/demo/kingcommerce/minimal/assets/images/1553323541minimal%20(16).jpg', '1573702721tylkFYoy.jpg', NULL, 'X,3XL', '22,23', '5,8', '#000000,#9c1515,#24f015,#050bc2,#d1900c', 20, 25, 'This is product Description', 10, 'Test policy', 1, 1, 'CLOTHS,FASHION,WOMEN FASHION,DRESSES,MENSWEAR', NULL, NULL, 0, NULL, 0, '', '', 'https://www.youtube.com/watch?v=7hx4gdlfamo', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 21:38:40', '2020-04-16 05:49:20', 0, NULL, NULL, NULL, 0, 0, 0, 2, 8, 4, 0, '', 0, '2020-04-29 11:15:03'),
(184, 'WjP47001pZ', 'affiliate', 'https://www.amazon.com/Elvis-Presley-Mugshot-Poster-Stickers/dp/B07PZY9MMR/ref=pd_srecs_sabr_st_6/137-1959597-8129840?_encoding=UTF8&pd_rd_i=B07PZY9MMR&pd_rd_r=d21789f6-e46d-4e3f-84f3-4a1159e47b55&pd_rd_w=Ftzet&pd_rd_wg=Bor07&pf_rd_p=a25d43de-f6f4-41bb-aace-e6f7c0927a67&pf_rd_r=HWDW21HZDDS08T06835S&refRID=HWDW21HZDDS08T06835S', 13, 4, 2, 1, NULL, 'User', 'user-wjp47001pz', '1573704715Sj0qqtZ6.png', '1573704716SchylgSm.jpg', NULL, NULL, NULL, NULL, NULL, 66, 667, '<br>', NULL, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 22:11:55', '2020-05-04 18:52:57', 0, NULL, NULL, NULL, 0, 0, 0, 1, 1, 5, 0, '', 0, '2020-04-29 11:15:03'),
(185, 'XBG4742zhX', 'affiliate', 'https://www.amazon.com/Elvis-Presley-Mugshot-Poster-Stickers/dp/B07PZY9MMR/ref=pd_srecs_sabr_st_6/137-1959597-8129840?_encoding=UTF8&pd_rd_i=B07PZY9MMR&pd_rd_r=d21789f6-e46d-4e3f-84f3-4a1159e47b55&pd_rd_w=Ftzet&pd_rd_wg=Bor07&pf_rd_p=a25d43de-f6f4-41bb-aace-e6f7c0927a67&pf_rd_r=HWDW21HZDDS08T06835S&refRID=HWDW21HZDDS08T06835S', 13, 4, 2, 1, NULL, 'Usertest', 'usertest-xbg4742zhx', '1573704758YZCDvymD.png', '1573704758412SJWpb.jpg', NULL, NULL, NULL, NULL, NULL, 66, 77, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 22:12:38', '2020-04-13 07:19:46', 0, NULL, NULL, NULL, 0, 0, 0, 2, 2, 1, 0, '', 0, '2020-04-29 11:15:03'),
(186, 'XBG4742zhXgfhfg', 'affiliate', 'https://www.amazon.com/Elvis-Presley-Mugshot-Poster-Stickers/dp/B07PZY9MMR/ref=pd_srecs_sabr_st_6/137-1959597-8129840?_encoding=UTF8&pd_rd_i=B07PZY9MMR&pd_rd_r=d21789f6-e46d-4e3f-84f3-4a1159e47b55&pd_rd_w=Ftzet&pd_rd_wg=Bor07&pf_rd_p=a25d43de-f6f4-41bb-aace-e6f7c0927a67&pf_rd_r=HWDW21HZDDS08T06835S&refRID=HWDW21HZDDS08T06835S', 13, 4, 2, 1, NULL, 'Usertest', 'usertest-xbg4742zhxgfhfg', '15737048788gkL2daH.png', '1573704878kp8AUxsp.jpg', NULL, NULL, NULL, NULL, NULL, 66, 77, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-13 22:14:38', '2020-05-03 13:24:42', 0, NULL, NULL, NULL, 0, 0, 0, 1, 3, 2, 0, '', 0, '2020-04-29 11:15:03'),
(187, 'h7F4514rJl', 'normal', NULL, 29, 13, NULL, NULL, NULL, 'test', 'test-h7f4514rjl', '1586444589UeFlRXZj.png', '15864445894no6B4ZL.jpg', NULL, NULL, NULL, NULL, NULL, 100, 22, 'test', 50, 'test', 1, 19, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-04-09 09:03:09', '2020-05-07 23:49:15', 0, NULL, NULL, NULL, 0, 0, 0, 2, 4, 3, 0, '', 0, '2020-04-29 11:15:03'),
(188, 'B2m4948eRk', 'normal', NULL, 29, 4, 2, NULL, '{\"warranty_type\":{\"values\":[\"No warranty\"],\"prices\":[\"0\"],\"details_status\":1},\"color_family\":{\"values\":[\"Black\"],\"prices\":[\"0\"],\"details_status\":1}}', 'teast', 'teast-b2m4948erk', '15865250428EXy6b7m.png', '1586525042W6WZxbbr.jpg', NULL, NULL, NULL, NULL, NULL, 100, 15, 'ds', 1, 'fd', 1, 83, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-04-10 07:24:02', '2020-05-22 02:05:14', 0, NULL, NULL, NULL, 0, 0, 1, 1, 5, 4, 0, '', 0, '2020-04-29 11:15:03'),
(189, 'WNX3732b78', 'normal', NULL, 29, 6, 14, NULL, NULL, 'jam', 'jam-wnx3732b78', '1586954294zgqB6XmV.png', '1586954295CU5XBOgk.jpg', NULL, NULL, NULL, NULL, NULL, 100, 3.1903580290677067, 'this is dammu', 15, '<span style=\"font-size: 16px;\">this is dammu</span><br>', 0, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=fjJoX9F_F5g', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-04-15 06:38:14', '2020-05-01 18:03:19', 0, NULL, NULL, NULL, 0, 0, 1, 2, 6, 5, 1, '', 0, '2020-04-29 11:15:03'),
(190, 'kmM7393K3V', 'normal', NULL, 29, 13, NULL, NULL, NULL, 'beast', 'beast-kmm7393k3v', '1586957459Pk2NBHam.png', '1586957460uaUp5QRm.jpg', NULL, NULL, NULL, NULL, NULL, 100, 4.1356492969396195, 'sa', 25, 'dd', 0, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-04-15 07:30:59', '2020-04-20 21:00:39', 1, '04/17/2020', NULL, NULL, 0, 0, 1, 1, 7, 1, 1, 'DC1902275', 0, '2020-04-29 11:15:03'),
(192, '20s90715zj', 'normal', NULL, 29, 18, NULL, NULL, NULL, 'rpt', 'rpt-20s90715zj', '1587439109v7w1UWaP.png', '1587439109VOa22yNb.jpg', NULL, NULL, NULL, NULL, NULL, 250, 350, 'dsd', 50, 'ds', 0, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-04-20 21:18:29', '2020-04-27 18:51:37', 0, NULL, NULL, NULL, 0, 0, 1, 1, 1, 3, 1, 'DC1928064', 0, '2020-04-29 11:15:03'),
(194, 'eia06921ux', 'normal', NULL, 29, 6, 14, NULL, NULL, 'Samsung s2', 'samsung-s2-eia06921ux', '1588100917ostXFxsP.png', '1588100917tyKq2tDG.jpg', NULL, NULL, NULL, NULL, NULL, 1400, 2100, 'hel', 24, 'sa', 1, 14, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-04-29 02:08:37', '2020-05-18 11:54:17', 0, NULL, NULL, NULL, 0, 0, 2, 1, 3, 5, 1, 'DC1941007', 1, '2020-05-02 00:46:33'),
(195, '0Vs777085j', 'normal', NULL, 29, 4, NULL, NULL, NULL, 'as', 'as-0vs777085j', '15882783151p6SN7FK.png', '1588278316kxo9lAPk.jpg', NULL, NULL, NULL, NULL, NULL, 25, 20, 'as', 20, 'as', 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-01 03:25:15', '2020-05-01 03:25:16', 0, NULL, NULL, NULL, 0, 0, 5, 2, 4, 1, 0, 'DC1953190', 0, '2020-04-30 20:25:15'),
(196, 'lB08752lSd', 'normal', NULL, 29, 4, NULL, NULL, NULL, 'as', 'as-lb08752lsd', '1588329112wd7ILlEH.png', '15883291139frqyByP.jpg', NULL, NULL, NULL, NULL, NULL, 25, 30, 's', 20, 's', 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-01 17:31:52', '2020-05-01 17:31:53', 0, NULL, NULL, NULL, 0, 0, 1, 1, 5, 2, 0, 'DC1968399', 0, '2020-05-01 10:31:52'),
(197, 'hm79664poj', 'normal', NULL, 29, 4, NULL, NULL, NULL, 'sa', 'sa-hm79664poj', '1588329694zh7VKWOA.png', '1588329694uTyCr9GC.jpg', NULL, NULL, NULL, NULL, NULL, 200, 250, '<br>', 2, '<br>', 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-01 17:41:34', '2020-05-01 17:41:34', 0, NULL, NULL, NULL, 0, 0, 1, 2, 6, 3, 0, 'DC1972831', 0, '2020-05-01 10:41:34'),
(198, 'eZP9881YlG', 'normal', NULL, 29, 4, NULL, NULL, NULL, 'sa', 'sa-ezp9881ylg', '1588329909SJzO7af9.png', '1588329909fV1h31je.jpg', NULL, NULL, NULL, NULL, NULL, 200, 250, '<br>', 2, '<br>', 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-01 17:45:09', '2020-05-01 18:00:46', 0, NULL, NULL, NULL, 0, 0, 1, 1, 7, 4, 0, 'DC1982351', 0, '2020-05-01 10:45:09'),
(199, 'G1g4723Naw', 'normal', NULL, 29, 4, 2, NULL, NULL, 'test', 'test-g1g4723naw', '15884149165R0wPRq5.png', '1588414917VyCgShF7.jpg', NULL, NULL, NULL, NULL, NULL, 250, 200, '<br>', NULL, '<br>', 2, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-02 17:21:56', '2020-05-02 17:21:57', 0, NULL, NULL, NULL, 0, 0, 1, 2, 8, 5, 0, 'DC1993872', 0, '2020-05-02 10:21:56'),
(200, 'bRU6319jO1', 'normal', NULL, 29, 5, 7, NULL, NULL, 'test', 'test-bru6319jo1', '1588416575jEFPEAcg.png', '158841657554OXJXKu.jpg', NULL, NULL, NULL, NULL, NULL, 30, 50, '<br>', NULL, '<br>', 2, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-02 17:49:35', '2020-05-02 17:49:35', 0, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, 0, 'DC2005434', 0, '2020-05-02 10:49:35'),
(201, 'F3O95661Hq', 'normal', NULL, 37, 4, NULL, NULL, NULL, 'dsd', 'dsd-f3o95661hq', '1588849783CTPauIoR.png', '1588849784s3fCRjOu.jpg', NULL, NULL, NULL, NULL, NULL, 200, 250, '<br>', NULL, '<br>', 1, 12, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-07 18:09:43', '2020-05-21 05:12:00', 0, NULL, NULL, NULL, 0, 0, 0, 2, 4, 1, 1, 'DC2014568', 0, '2020-05-07 11:09:43'),
(202, '8EW4918jsm', 'normal', NULL, 37, 4, NULL, NULL, NULL, 'ty', 'ty-8ew4918jsm', '1588874955VjYV18pJ.png', '1588874955wP9ysazc.jpg', NULL, NULL, NULL, NULL, NULL, 25, 50, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-08 01:09:15', '2020-05-21 07:48:51', 0, NULL, NULL, NULL, 0, 0, 0, 2, NULL, 1, 0, 'DC2022067', 0, '2020-05-07 18:09:15'),
(203, '0qS9818rDK', 'normal', NULL, 29, 5, 7, NULL, NULL, 'sa', 'sa-0qs9818rdk', '1588929853lx52rZer.png', '1588929854AQXlpiZW.jpg', NULL, NULL, NULL, NULL, NULL, 20, 25, '<br>', NULL, '<br>', 2, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-08 16:24:13', '2020-05-08 16:24:14', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 'DC2038186', 0, '2020-05-08 09:24:13'),
(205, 'f3J0273r2M', 'normal', NULL, 37, 4, NULL, NULL, NULL, 'test', 'test-f3j0273r2m', '1589390303vOlxRNSJ.png', '1589390304bBKRewZn.jpg', NULL, NULL, NULL, NULL, NULL, 200, 300, '<br>', NULL, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-05-13 11:18:23', '2020-05-15 10:52:10', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 'DC2058043', 0, '2020-05-13 17:18:23');

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
(755, 188, '2020-05-22');

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
(16, 'Manager', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

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
(5, 0, 'HELP CENTER', '24/7 Support System', '1561348147service4.png'),
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
(14, 6, 'DSLR', 'dslr', 1, 0),
(15, 6, 'Camera Phone', 'camera-phone', 1, 2),
(16, 6, 'Action Camera', 'animation-camera', 1, 1),
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
(29, 'piash', '15870303761567226936Baby.tux-800x800.png', '1200', 'Dhaka', 'Bangladesh', 'Dhaka', '01742349541', NULL, 'piash3700@gmail.com', '$2y$10$klbY/2rpx/nNMdbnwxaK6ulVOHFEKiGHB4CU/fjE1MGO/fSAyB3A2', 'PWAKxs5sDYjprpHiIyfeoVDzT3h4MdHmL2960rsqPJ8JbP48NLJfABLDI6iZ', '2020-04-09 08:05:23', '2020-05-19 13:03:04', 0, 0, 'ee1da91c1a625f09d87a87f3b0ed62f7', 'Yes', '9567af758a92a16104a4f341dc1b2a38', 100, 'abc', 'abc', 'abc', 'abc', NULL, NULL, 'dammy details', '15865770251584479344.jpg', 'sa', NULL, NULL, NULL, 2, 1, 0, 0, 0, 1, 0, 1190, '2020-06-18', 0, 9, 3, 2),
(38, 'piash', NULL, NULL, NULL, NULL, 'dhaka', '01736937160', NULL, 'piash@gmail.com', '$2y$10$qVNkmD28F8VWAWuEa0BHOOx9P53Tj7RCbo9e3A6dQmqKdoWIwFpxi', 'HrkB7SFH7R2eQvLlSDf1UxfplFy4k9eixfV4EaG5CSLuFF3XPnqA2wRCxl2X', '2020-05-11 22:31:45', '2020-05-21 08:51:23', 0, 0, 'ef5fce96a21cabb1b2e92a6cd8e8e151', 'No', '98bca6972aaa2ea6a5f45f50a3dfeb04', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(39, 'piash', NULL, NULL, NULL, NULL, 'dhaka', '01736937161', NULL, 'piash58@gmail.com', '$2y$10$5fSlobaL2R69KDGtV10T1.EmjeU9ctK0H8Gek1sSdo9D2qS9yp8/6', '0yu1DCTQAImXpGF9wYGnB6b8mIw9B0shlC6buzuXEydOz1pjxMZ8FQp0iWPk', '2020-05-21 10:48:36', '2020-05-21 10:48:36', 0, 0, '9db1dd46760c0087df95d3463647f50a', 'No', '5535569fb0e64f567b40bf387194903b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0);

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
(34, 29, '0064', 0, '2020-05-21 08:51:24', '2020-05-21 08:51:24');

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

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(81, 27, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '688094995', NULL, '2019-10-09 21:32:57', '2019-10-09 21:32:57', 1, NULL),
(84, 13, 5, 'Standard', '$', 'NGN', 60, 45, 500, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, '2019-10-10 02:35:29', '2019-10-10 02:35:29', 1, NULL),
(85, 29, 8, 'Basic', 'ট', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-04-10 21:48:33', '2020-04-10 21:48:33', 1, NULL),
(94, 37, 8, 'Basic', 'ট', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-05-08 00:01:52', '2020-05-08 00:01:52', 1, NULL),
(95, 37, 8, 'Basic', 'ট', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-05-08 00:02:03', '2020-05-08 00:02:03', 1, NULL),
(96, 29, 12, 'pos', 's', 'sa', 10, 15, 0, 're', 'Paypal', NULL, NULL, '2020-05-19 11:00:49', '2020-05-19 11:00:49', 0, NULL),
(97, 29, 8, 'Basic', 'ট', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-05-19 11:02:01', '2020-05-19 11:02:01', 1, NULL);

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
(1, 13, 1, 1, 130, 'fFgw1573717404', 'pending'),
(2, 13, 2, 1, 130, '1g811573717871', 'pending'),
(3, 29, 3, 1, 15.5, '6Lqq1586785088', 'on delivery'),
(4, 13, 4, 1, 130, 'EjEu1586877183', 'pending'),
(5, 29, 5, 2, 200, 'zqEk1587123151', 'completed'),
(6, 29, 6, 2, 200, 'uD3v1587128321', 'processing'),
(7, 13, 6, 1, 120, 'uD3v1587128321', 'pending'),
(8, 29, 7, 2, 200, 'Q94n1587128689', 'on delivery'),
(9, 13, 7, 1, 120, 'Q94n1587128689', 'on delivery'),
(10, 29, 8, 1, 100, '#0098', 'processing'),
(11, 37, 11, 3, 600, '0054', 'pending'),
(12, 37, 12, 3, 600, '0073', 'pending'),
(13, 37, 13, 3, 600, '0011', 'on delivery'),
(14, 37, 14, 3, 600, 'BhNS1589560669', 'pending'),
(15, 37, 15, 1, 200, '0059', 'pending'),
(16, 37, 16, 1, 200, '0080', 'pending'),
(17, 37, 17, 1, 200, '0014', 'pending'),
(18, 37, 18, 1, 200, '0070', 'pending'),
(19, 37, 19, 1, 25, '0057', 'pending'),
(20, 37, 20, 1, 200, '0085', 'pending'),
(21, 37, 21, 1, 200, '0021', 'pending'),
(22, 37, 22, 1, 200, '0095', 'pending'),
(23, 37, 23, 1, 200, '0015', 'pending'),
(24, 37, 24, 1, 200, '0068', 'pending'),
(25, 37, 25, 1, 200, '0014', 'pending'),
(26, 37, 26, 1, 200, '0072', 'pending'),
(27, 37, 27, 1, 200, '0080', 'pending'),
(28, 37, 28, 1, 200, '0099', 'pending'),
(29, 37, 29, 1, 200, '0027', 'pending'),
(30, 37, 37, 4, 100, '0038', 'pending'),
(31, 29, 38, 1, 1400, '0021', 'completed'),
(32, 37, 39, 5, 125, '0039', 'pending'),
(33, 37, 39, 10, 2000, '0039', 'pending'),
(34, 37, 40, 1, 200, '0032', 'pending'),
(35, 29, 41, 5, 500, '0064', 'pending');

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
(6, 29, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 0, '2020-05-16 20:37:26', '2020-05-16 20:37:52', 'rejected', 'vendor');

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
(2, 6, 6, 'fd', '2020-05-16 14:37:26', '2020-05-16 14:37:26');

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
-- Indexes for table `boost_categories`
--
ALTER TABLE `boost_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boost_payments`
--
ALTER TABLE `boost_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boost_payments_boost_id_foreign` (`boost_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boost_categories`
--
ALTER TABLE `boost_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boost_payments`
--
ALTER TABLE `boost_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `order_additionals`
--
ALTER TABLE `order_additionals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_extra_charges`
--
ALTER TABLE `order_extra_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_payment_verifications`
--
ALTER TABLE `order_payment_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=756;

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
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `withdraw_additionals`
--
ALTER TABLE `withdraw_additionals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdraw_extra_charges`
--
ALTER TABLE `withdraw_extra_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `boost_payments`
--
ALTER TABLE `boost_payments`
  ADD CONSTRAINT `boost_payments_boost_id_foreign` FOREIGN KEY (`boost_id`) REFERENCES `boosts` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `user_categories`
--
ALTER TABLE `user_categories`
  ADD CONSTRAINT `user_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
