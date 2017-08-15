-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 15, 2017 at 09:12 PM
-- Server version: 5.7.18
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duty_mate`
--

-- --------------------------------------------------------

--
-- Table structure for table `avatars`
--

CREATE TABLE `avatars` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `profile_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avatars`
--

INSERT INTO `avatars` (`id`, `name`, `profile_id`, `created_at`, `updated_at`) VALUES
(1, 'daniel-22', 22, '2017-06-30 03:27:32', '2017-06-30 03:27:32'),
(2, 'daniel-22', 22, '2017-06-30 03:39:17', '2017-06-30 03:39:17'),
(3, 'daniel-22', 22, '2017-06-30 03:40:11', '2017-06-30 03:40:11'),
(4, 'daniel-22', 22, '2017-06-30 04:22:55', '2017-06-30 04:22:55'),
(5, 'daniel-22', 22, '2017-06-30 04:24:15', '2017-06-30 04:24:15'),
(6, 'daniel-22', 22, '2017-06-30 04:24:47', '2017-06-30 04:24:47'),
(7, 'daniel-22', 22, '2017-06-30 04:24:52', '2017-06-30 04:24:52'),
(8, 'daniel-22', 22, '2017-06-30 04:25:32', '2017-06-30 04:25:32'),
(9, 'file.jpeg', 22, '2017-06-30 04:36:03', '2017-06-30 04:36:03'),
(10, 'file.jpeg', 22, '2017-06-30 04:36:18', '2017-06-30 04:36:18'),
(11, 'file.jpeg', 22, '2017-06-30 04:36:59', '2017-06-30 04:36:59'),
(12, 'file.jpeg', 22, '2017-06-30 04:42:37', '2017-06-30 04:42:37'),
(13, 'file.jpeg', 22, '2017-06-30 04:42:59', '2017-06-30 04:42:59'),
(14, 'file.jpeg', 22, '2017-06-30 04:45:00', '2017-06-30 04:45:00'),
(15, 'file.jpeg', 22, '2017-06-30 04:45:21', '2017-06-30 04:45:21'),
(16, 'file.jpeg', 22, '2017-06-30 04:47:37', '2017-06-30 04:47:37'),
(17, 'file.jpeg', 22, '2017-06-30 04:52:29', '2017-06-30 04:52:29'),
(18, 'file.jpeg', 22, '2017-06-30 04:52:55', '2017-06-30 04:52:55'),
(19, 'file.jpeg', 22, '2017-06-30 04:58:56', '2017-06-30 04:58:56'),
(20, 'file.jpeg', 22, '2017-06-30 04:59:43', '2017-06-30 04:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `budget_types`
--

CREATE TABLE `budget_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_text` varchar(800) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `content` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `name`, `profile_id`, `created_at`, `updated_at`) VALUES
(6, 'heeeeee', 22, NULL, NULL),
(7, 'hooooo', 22, NULL, NULL),
(8, 'Computer Science', 22, NULL, NULL),
(9, 'Ibm', 22, NULL, NULL),
(10, 'Computer Science', 22, NULL, NULL),
(11, 'Ibm', 22, NULL, NULL),
(12, 'hello1', 22, NULL, NULL),
(13, 'hello2', 22, NULL, NULL),
(15, 'IBM', 25, NULL, NULL),
(16, 'san juan', 26, NULL, NULL),
(18, 'la vida', 26, NULL, NULL),
(19, 'UCV', 23, NULL, NULL),
(20, 'IBM', 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education_profile`
--

CREATE TABLE `education_profile` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `education_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estates`
--

CREATE TABLE `estates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estates`
--

INSERT INTO `estates` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'NSW', '2017-05-30 05:00:00', NULL),
(2, 'VIC', NULL, NULL),
(3, 'QLD', NULL, NULL),
(4, 'WA', NULL, NULL),
(5, 'SA', NULL, NULL),
(6, 'ACT', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_profile`
--

CREATE TABLE `language_profile` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_11_222707_create_tasks_table', 1),
(4, '2017_01_11_222718_create_posts_table', 1),
(5, '2017_01_11_222806_create_task_types_table', 1),
(6, '2017_01_11_222818_create_task_statuses_table', 1),
(7, '2017_01_12_172013_create_user_types_table', 2),
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(11, '2016_06_01_000004_create_oauth_clients_table', 3),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(13, '2017_01_13_214231_create_budget_types_table', 3),
(14, '2017_01_14_041848_create_profiles_table', 4),
(15, '2017_01_14_041958_create_comments_table', 4),
(16, '2017_01_14_042011_create_offers_table', 4),
(17, '2017_01_14_171937_create_questions_table', 4),
(18, '2017_01_16_004231_create_portfolios_table', 4),
(19, '2017_01_16_004624_create_education_table', 4),
(20, '2017_01_16_004647_create_specialities_table', 4),
(21, '2017_01_16_004656_create_languages_table', 4),
(22, '2017_01_16_004705_create_works_table', 4),
(23, '2017_01_16_004716_create_transportations_table', 4),
(24, '2017_01_17_180138_create_skills_table', 5),
(25, '2017_04_24_190805_create_tests_table', 6),
(26, '2017_04_24_201300_create_categories_table', 7),
(27, '2017_05_30_072732_create_payment_infos_table', 7),
(28, '2017_05_30_074411_create_estates_table', 8),
(29, '2017_06_28_151913_create_profile_specielities_table', 9),
(30, '2017_06_29_210038_create_avatars_table', 10),
(31, '2017_07_21_142854_create_reviews_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Y8afXtVEQMDN9bEb50QRClMraImfs3Bcz39rNtOV', 'http://localhost', 1, 0, 0, '2017-01-14 05:03:54', '2017-01-14 05:03:54'),
(2, NULL, 'Laravel Password Grant Client', 'GY9ZJGrzmbhtaQMqjGuj9y53NLgGgr1cUSSxhfQU', 'http://localhost', 0, 1, 0, '2017-01-14 05:03:54', '2017-01-14 05:03:54'),
(3, NULL, 'Laravel Personal Access Client', 'Yrkf7pmqUYbZRxouWNi8rRP7fa7C76i8MvnLoSNz', 'http://localhost', 1, 0, 0, '2017-01-20 02:07:40', '2017-01-20 02:07:40'),
(4, NULL, 'Laravel Password Grant Client', 'dw0tATFo3oZLub9Wl0jmrkuCNVrphZyz9OwNxKqR', 'http://localhost', 0, 1, 0, '2017-01-20 02:07:40', '2017-01-20 02:07:40'),
(5, 17, 'kkk', 'w7ny0OswAhEry1PGCSqYcNftvPUSkfzHxwY9u9zr', 'http://localhost/auth/callback', 0, 0, 0, '2017-01-20 02:13:11', '2017-01-20 02:13:11'),
(6, NULL, 'juan', 'JhNP6IAwYlueNEQZ82yYhPlwFKvvWKxk4n2zD5KL', 'http://localhost', 0, 1, 0, '2017-01-20 02:32:56', '2017-01-20 02:32:56'),
(7, 1, 'juan', 'PPwoedtxyInR9a66xMWu17W4keRlk5mECXpI9HHJ', 'http://localhost/auth/callback', 0, 0, 0, '2017-01-20 02:39:22', '2017-01-20 02:39:22'),
(8, 1, 'juan', 'TR5npXicZGrHQChB2vTVRACPfALIrLnmyDC3504h', 'http://localhost/auth/callback', 0, 0, 0, '2017-01-20 02:52:59', '2017-01-20 02:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-01-14 05:03:54', '2017-01-14 05:03:54'),
(2, 3, '2017-01-20 02:07:40', '2017-01-20 02:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `price` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offer_status_id` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_infos`
--

CREATE TABLE `payment_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `bsb` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `street_address` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `mobile_number` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_infos`
--

INSERT INTO `payment_infos` (`id`, `user_id`, `account_name`, `account_number`, `bsb`, `street_address`, `city`, `state_id`, `mobile_number`, `postcode`, `created_at`, `updated_at`) VALUES
(1, 36, 'juan', '222222', 'kffkf', 'sssss', 'caracas', 3, '0996264752', '2101', '2017-06-23 22:42:31', '2017-06-23 22:42:31'),
(2, 66, '878787', '98989', '878', 'jjjjj', 'jjjj', 3, '878787', '1000', '2017-07-07 10:54:15', '2017-07-07 10:54:15'),
(3, 68, '7878787', '87878787', '77', 'jnjnjnjnjn', 'njnjnjn', 3, '0996264752', '56565', '2017-07-17 22:41:22', '2017-07-17 22:41:22'),
(4, 69, 'juan', '7877878', '787', '78787', 'hjhjh', 2, '0996264752', '999', '2017-07-24 18:38:24', '2017-07-24 18:38:24'),
(5, 70, '6646464', '46464646464', '46', '34', 'chhh', 2, '0996264752', '0101', '2017-07-24 22:18:00', '2017-07-24 22:18:00'),
(6, 67, '334342', '324324324', '23', 'pacifico guaman', 'cuenca', 2, '234324', '2121', '2017-08-15 01:14:59', '2017-08-15 01:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `portfolio_title` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(300) COLLATE utf8_unicode_ci DEFAULT '',
  `aboutme` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `latitude` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagline` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `birthday` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000-00-00',
  `description` varchar(600) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `abn` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `want_to` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `img` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fb_image` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_picture` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(900) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_skill`
--

CREATE TABLE `profile_skill` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile_speciality`
--

CREATE TABLE `profile_speciality` (
  `id` int(11) NOT NULL,
  `speciality_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile_specielities`
--

CREATE TABLE `profile_specielities` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(11) NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile_specielities`
--

INSERT INTO `profile_specielities` (`id`, `profile_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 22, 'loco', NULL, NULL),
(2, 22, 'loco', NULL, NULL),
(3, 22, 'loca loca', NULL, NULL),
(4, 22, 'pervert', NULL, NULL),
(5, 26, 'Sports', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_transportation`
--

CREATE TABLE `profile_transportation` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `transportation` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_content` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `feedback` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `task_id`, `feedback`, `stars`, `created_at`, `updated_at`) VALUES
(8, 68, 7, 'jjjjjjj', 5, '2017-07-21 23:26:39', '2017-07-21 23:26:39'),
(9, 68, 10, 'great', 5, '2017-07-21 23:38:54', '2017-07-21 23:38:54'),
(10, 68, 11, 'didnt like it', 2, '2017-07-22 02:59:20', '2017-07-22 02:59:20'),
(11, 70, 14, 'not that good', 3, '2017-08-13 06:19:43', '2017-08-13 06:19:43'),
(12, 70, 3, 'great experience . Thanks', 5, '2017-08-14 22:03:04', '2017-08-14 22:03:04'),
(13, 70, 4, 'jjjj', 5, '2017-08-14 22:18:07', '2017-08-14 22:18:07'),
(14, 70, 5, 'great for you', 5, '2017-08-14 22:50:17', '2017-08-14 22:50:17'),
(15, 70, 5, 'edede', 5, '2017-08-14 22:50:58', '2017-08-14 22:50:58'),
(16, 70, 6, 'yesh', 5, '2017-08-14 23:06:31', '2017-08-14 23:06:31'),
(17, 70, 6, 'ggggg', 3, '2017-08-15 00:10:33', '2017-08-15 00:10:33'),
(18, 70, 7, 'hello', 5, '2017-08-15 00:51:03', '2017-08-15 00:51:03'),
(19, 70, 7, 'didnt like it you are not responsible', 1, '2017-08-15 01:07:55', '2017-08-15 01:07:55'),
(20, 67, 8, 'didnt like it', 1, '2017-08-15 01:15:51', '2017-08-15 01:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

CREATE TABLE `specialities` (
  `id` int(10) UNSIGNED NOT NULL,
  `speciality_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specialities`
--

INSERT INTO `specialities` (`id`, `speciality_name`, `icon`, `created_at`, `updated_at`) VALUES
(13, 'Handyman', 'handy-icon', NULL, NULL),
(14, 'Cleaning', 'cleaning-icon', NULL, NULL),
(15, 'Gardening', 'gardening-icon', NULL, NULL),
(16, 'Furniture Assembly', 'furniture-icon', NULL, NULL),
(17, 'Couriers & Removals', 'auto-icon', NULL, NULL),
(18, 'Technology Repair', 'electronics-icon', NULL, NULL),
(19, 'Photography & Design', 'photo-icon', NULL, NULL),
(20, 'Beauty Services', 'beauty-icon', NULL, NULL),
(21, 'Fitness & WellBeing', 'sports-icon', NULL, NULL),
(22, 'Online Duties', 'online-icon', NULL, NULL),
(23, 'Other Duties', 'other-icon', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci DEFAULT 'Without Title',
  `description` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `task_type_id` int(11) DEFAULT '0',
  `task_statuse_id` int(11) DEFAULT '0',
  `task_latitude` double DEFAULT '0',
  `task_longitude` double DEFAULT '0',
  `due_date` varchar(300) COLLATE utf8_unicode_ci DEFAULT '0000-00-00',
  `location` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_needed` int(11) DEFAULT '0',
  `budget_type_id` int(11) DEFAULT '0',
  `amount_offered` double DEFAULT '0',
  `speciality_id` int(11) NOT NULL,
  `user_accepted_id` int(11) DEFAULT NULL,
  `message_accepted` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_statuses`
--

CREATE TABLE `task_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_statuses`
--

INSERT INTO `task_statuses` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'Posted', NULL, NULL),
(2, 'Accepted', NULL, NULL),
(3, 'Finished', NULL, NULL),
(4, 'Rejected', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_types`
--

CREATE TABLE `task_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transportations`
--

CREATE TABLE `transportations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transportations`
--

INSERT INTO `transportations` (`id`, `name`, `profile_id`, `created_at`, `updated_at`) VALUES
(1, 'burro', 22, NULL, NULL),
(2, 'mula', 22, NULL, NULL),
(3, 'By feet', 26, NULL, NULL),
(4, 'Plane', 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fb_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `name`, `profile_id`, `created_at`, `updated_at`) VALUES
(1, 'Saren', 22, NULL, NULL),
(2, 'Cinta Negra', 22, NULL, NULL),
(3, 'Teacher', 26, NULL, NULL),
(4, 'Panaderia', 23, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budget_types`
--
ALTER TABLE `budget_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_profile`
--
ALTER TABLE `education_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estates`
--
ALTER TABLE `estates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_profile`
--
ALTER TABLE `language_profile`
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
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_infos`
--
ALTER TABLE `payment_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_skill`
--
ALTER TABLE `profile_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_speciality`
--
ALTER TABLE `profile_speciality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_specielities`
--
ALTER TABLE `profile_specielities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_transportation`
--
ALTER TABLE `profile_transportation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_statuses`
--
ALTER TABLE `task_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_types`
--
ALTER TABLE `task_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transportations`
--
ALTER TABLE `transportations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `budget_types`
--
ALTER TABLE `budget_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `education_profile`
--
ALTER TABLE `education_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estates`
--
ALTER TABLE `estates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `language_profile`
--
ALTER TABLE `language_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `payment_infos`
--
ALTER TABLE `payment_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `profile_skill`
--
ALTER TABLE `profile_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile_speciality`
--
ALTER TABLE `profile_speciality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile_specielities`
--
ALTER TABLE `profile_specielities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profile_transportation`
--
ALTER TABLE `profile_transportation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `task_statuses`
--
ALTER TABLE `task_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `task_types`
--
ALTER TABLE `task_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transportations`
--
ALTER TABLE `transportations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
