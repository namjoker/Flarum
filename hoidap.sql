-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2016 at 02:37 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hoidap`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_tokens`
--

CREATE TABLE IF NOT EXISTS `access_tokens` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_activity` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_tokens`
--

INSERT INTO `access_tokens` (`id`, `user_id`, `last_activity`, `lifetime`) VALUES
('dIUuBdJ6uMvMJqRGOf9gaTqgLTpahTKI1dbXss4F', 7, 1470753353, 1209600),
('nJ9LYrKkLJVBwEX1eKMjQS9PBBCda8t2KzghTqeu', 8, 1470745951, 1209600),
('QbHD5clbFQYy5M33q1dCQVqAiCCrpJbO7k2xt61s', 1, 1470746014, 1209600);

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE IF NOT EXISTS `api_keys` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE IF NOT EXISTS `auth_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `payload`, `created_at`) VALUES
('8ggXIvdo4VLzA7VThkAwamk6RuiQWSZZqmQUJSqq', '{"email":"thangdn.tlu@outlook.com"}', '2016-08-09 11:35:08'),
('ApKMw9I5W7raHdCxUgqlcKn3p3F8vBbNJwIriI5O', '{"email":null}', '2016-08-09 09:08:11'),
('BJyJgiT2z7nATmdTQoxOCe5PBUA7vtxfM9IynBS0', '{"email":null}', '2016-08-09 11:24:37'),
('cnHs3doTquC62E2tgbTIb8CiUYy22vG1fQGypqSq', '{"email":null}', '2016-08-09 11:21:46'),
('L0vo9LUHkK6UohbSXpApDhAaacePQDzhBCOvqwuG', '{"email":null}', '2016-08-09 09:08:35'),
('m7Xggff9kfx7BJZJ79DQFALFKOAsl8vhOzifkETf', '{"email":null}', '2016-08-09 11:25:35'),
('RL2ng4xZwFQOKyielh1UTIyBZNSqISp8LugesgLJ', '{"email":null}', '2016-08-09 09:17:32'),
('toKW4MGLnTkc241xT7zSyH7t7OmN76tlgvhA2Iui', '{"email":null}', '2016-08-09 09:12:03'),
('VHXjNTlXdji7si8RcldtEuctxEVihZNtS3wOQlzs', '{"email":null}', '2016-08-09 09:11:55'),
('XBr8drhIJQupSSZX7jyQVHZZ3g8QGhrIegFIfHYE', '{"email":null}', '2016-08-09 11:22:25'),
('yDwKjWG0iSJqmK0LXgDE6JrH3pNo4UWE9ZWZYnQw', '{"email":null}', '2016-08-09 11:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE IF NOT EXISTS `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments_count` int(10) unsigned NOT NULL DEFAULT '0',
  `participants_count` int(10) unsigned NOT NULL DEFAULT '0',
  `number_index` int(10) unsigned NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL,
  `start_user_id` int(10) unsigned DEFAULT NULL,
  `start_post_id` int(10) unsigned DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `last_user_id` int(10) unsigned DEFAULT NULL,
  `last_post_id` int(10) unsigned DEFAULT NULL,
  `last_post_number` int(10) unsigned DEFAULT NULL,
  `hide_time` datetime DEFAULT NULL,
  `hide_user_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `title`, `comments_count`, `participants_count`, `number_index`, `start_time`, `start_user_id`, `start_post_id`, `last_time`, `last_user_id`, `last_post_id`, `last_post_number`, `hide_time`, `hide_user_id`, `slug`, `is_approved`, `is_locked`, `is_sticky`) VALUES
(1, 'Demo bài viết đầu tiên', 6, 3, 7, '2016-08-09 08:54:22', 1, 1, '2016-08-09 09:58:22', 5, 11, 7, NULL, NULL, 'demo-b-i-vi-t-u-ti-n', 1, 0, 1),
(2, 'fgjhnhjuhjhgj', 1, 1, 1, '2016-08-09 09:22:40', 1, 5, '2016-08-09 09:22:40', 1, 5, 1, NULL, NULL, 'fgjhnhjuhjhgj', 1, 0, 0),
(5, 'Haoi dsfdfd', 2, 2, 2, '2016-08-09 09:32:25', 1, 8, '2016-08-09 09:33:50', 4, 9, 2, NULL, NULL, 'haoi-dsfdfd', 1, 0, 0),
(6, 'kien', 7, 3, 8, '2016-08-09 10:04:56', 5, 12, '2016-08-09 12:20:55', 7, 24, 8, NULL, NULL, 'kien', 1, 0, 0),
(7, 'sdfgf', 1, 1, 1, '2016-08-09 10:14:04', 5, 17, '2016-08-09 10:14:04', 5, 17, 1, NULL, NULL, 'sdfgf', 1, 0, 0),
(8, 'rrr', 2, 1, 2, '2016-08-09 10:27:24', 5, 18, '2016-08-09 10:28:30', 5, 19, 2, NULL, NULL, 'rrr', 1, 0, 0),
(9, 'Demo tính năng Slug', 2, 1, 2, '2016-08-09 10:57:08', 1, 22, '2016-08-09 11:26:13', 1, 23, 2, NULL, NULL, 'demo-t-nh-n-ng-slug', 1, 0, 0),
(10, 'Test c++', 2, 2, 2, '2016-08-09 12:25:54', 7, 25, '2016-08-09 12:33:34', 1, 26, 2, NULL, NULL, 'test-c', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `discussions_tags`
--

CREATE TABLE IF NOT EXISTS `discussions_tags` (
  `discussion_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discussion_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions_tags`
--

INSERT INTO `discussions_tags` (`discussion_id`, `tag_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_tokens`
--

CREATE TABLE IF NOT EXISTS `email_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_tokens`
--

INSERT INTO `email_tokens` (`id`, `email`, `user_id`, `created_at`) VALUES
('6MKCwAYVgvmQZgu3Fy66HSY7GhUuxsxueyi64zDh', 'nam0943767467@gmail.com', 2, '2016-08-09 08:58:55'),
('bVdhLNzL6VcIPUAzUP7irnT1hQFNYXvtIMDQ75sx', 'kien.laohac@gmail.com', 3, '2016-08-09 11:51:14'),
('iCw91XtgFuRFl7zC9Meb0tIWlC518e6KYwByxVQo', 'kien.laohac@gmail.com', 3, '2016-08-09 09:00:44'),
('JQeHBsDMHV9d2iHvB2IlLKvydKvyMaPd0X2m2LYs', 'ducthang@gmail.com', 8, '2016-08-09 12:32:12'),
('KqRkHkyRY3orQ3fdYwGA6Hfi6h1PZEDKV5avkzrY', 'nam0943767467@gmail.com', 2, '2016-08-09 08:58:06'),
('sBfFSopOCs71RRV3jfe17UBrODSfW7bIymoXr9cF', 'kien.laohac@gmail.com', 3, '2016-08-09 09:00:23'),
('XR0Y1U0LjtoQCs91tJiDbx6SmgCRrZDEJBWaAG8C', 'namjoker@bmail.com', 6, '2016-08-09 12:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `flagrow_images`
--

CREATE TABLE IF NOT EXISTS `flagrow_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `flagrow_images`
--

INSERT INTO `flagrow_images` (`id`, `user_id`, `file_name`, `upload_method`, `created_at`, `file_url`, `file_size`) VALUES
(1, 5, '5-nGiWQSaJ21xd0CLN.jpeg', 'local', '2016-08-09 10:10:07', 'https://forum-ryuzaki95.c9users.io/assets/images/5-nGiWQSaJ21xd0CLN.jpeg', 284499),
(2, 5, '5-EQQeBdzQjox2Hi1q.jpeg', 'local', '2016-08-09 10:10:38', 'https://forum-ryuzaki95.c9users.io/assets/images/5-EQQeBdzQjox2Hi1q.jpeg', 284499),
(3, 1, '1-Kgsv167LIHuWcdjp.png', 'local', '2016-08-09 10:11:25', 'https://forum-ryuzaki95.c9users.io/assets/images/1-Kgsv167LIHuWcdjp.png', 288363),
(4, 1, '1-Rpjfl2jXoiUBOVms.jpeg', 'local', '2016-08-09 10:47:26', 'https://forum-ryuzaki95.c9users.io/assets/images/1-Rpjfl2jXoiUBOVms.jpeg', 32388),
(5, 1, '1-GyVHkBiYo2eFZzq6.png', 'local', '2016-08-09 11:28:15', 'https://forum-ryuzaki95.c9users.io/assets/images/1-GyVHkBiYo2eFZzq6.png', 288363),
(6, 7, '7-Lzxb8LSRj3M6tUMc.jpeg', 'local', '2016-08-09 12:20:51', 'https://forum-ryuzaki95.c9users.io/assets/images/7-Lzxb8LSRj3M6tUMc.jpeg', 1836685);

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE IF NOT EXISTS `flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_singular` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name_singular`, `name_plural`, `color`, `icon`) VALUES
(1, 'Admin', 'Admins', '#B72A2A', 'wrench'),
(2, 'Guest', 'Guests', NULL, NULL),
(3, 'Member', 'Members', NULL, NULL),
(4, 'Mod', 'Mods', '#80349E', 'bolt'),
(5, 'Sinh viên', 'Sinh viên', '#aaaa11', 'at');

-- --------------------------------------------------------

--
-- Table structure for table `mentions_posts`
--

CREATE TABLE IF NOT EXISTS `mentions_posts` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`mentions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mentions_posts`
--

INSERT INTO `mentions_posts` (`post_id`, `mentions_id`) VALUES
(3, 2),
(4, 3),
(9, 8),
(15, 14),
(20, 13);

-- --------------------------------------------------------

--
-- Table structure for table `mentions_users`
--

CREATE TABLE IF NOT EXISTS `mentions_users` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`mentions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `extension`) VALUES
('2015_02_24_000000_create_access_tokens_table', NULL),
('2015_02_24_000000_create_api_keys_table', NULL),
('2015_02_24_000000_create_config_table', NULL),
('2015_02_24_000000_create_discussions_table', NULL),
('2015_02_24_000000_create_email_tokens_table', NULL),
('2015_02_24_000000_create_groups_table', NULL),
('2015_02_24_000000_create_notifications_table', NULL),
('2015_02_24_000000_create_password_tokens_table', NULL),
('2015_02_24_000000_create_permissions_table', NULL),
('2015_02_24_000000_create_posts_table', NULL),
('2015_02_24_000000_create_users_discussions_table', NULL),
('2015_02_24_000000_create_users_groups_table', NULL),
('2015_02_24_000000_create_users_table', NULL),
('2015_09_15_000000_create_auth_tokens_table', NULL),
('2015_09_20_224327_add_hide_to_discussions', NULL),
('2015_09_22_030432_rename_notification_read_time', NULL),
('2015_10_07_130531_rename_config_to_settings', NULL),
('2015_10_24_194000_add_ip_address_to_posts', NULL),
('2015_12_05_042721_change_access_tokens_columns', NULL),
('2015_12_17_194247_change_settings_value_column_to_text', NULL),
('2016_02_04_095452_add_slug_to_discussions', NULL),
('2015_09_21_011527_add_is_approved_to_discussions', 'flarum-approval'),
('2015_09_21_011706_add_is_approved_to_posts', 'flarum-approval'),
('2015_09_02_000000_add_flags_read_time_to_users_table', 'flarum-flags'),
('2015_09_02_000000_create_flags_table', 'flarum-flags'),
('2015_05_11_000000_create_posts_likes_table', 'flarum-likes'),
('2015_09_04_000000_add_default_like_permissions', 'flarum-likes'),
('2015_02_24_000000_add_locked_to_discussions', 'flarum-lock'),
('2015_05_11_000000_create_mentions_posts_table', 'flarum-mentions'),
('2015_05_11_000000_create_mentions_users_table', 'flarum-mentions'),
('2015_02_24_000000_add_sticky_to_discussions', 'flarum-sticky'),
('2015_05_11_000000_add_subscription_to_users_discussions_table', 'flarum-subscriptions'),
('2015_05_11_000000_add_suspended_until_to_users_table', 'flarum-suspend'),
('2015_09_14_000000_rename_suspended_until_column', 'flarum-suspend'),
('2015_02_24_000000_create_discussions_tags_table', 'flarum-tags'),
('2015_02_24_000000_create_tags_table', 'flarum-tags'),
('2015_02_24_000000_create_users_tags_table', 'flarum-tags'),
('2015_02_24_000000_set_default_settings', 'flarum-tags'),
('2015_10_19_061223_make_slug_unique', 'flarum-tags'),
('2016_01_11_000000_create_flagrow_images_table', 'flagrow-image-upload'),
('2016_01_13_000000_alter_flagrow_images_table', 'flagrow-image-upload'),
('2016_04_11_182821__create_pages_table', 'sijad-pages');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int(10) unsigned DEFAULT NULL,
  `data` blob,
  `time` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `type`, `subject_type`, `subject_id`, `data`, `time`, `is_read`, `is_deleted`) VALUES
(1, 1, 4, 'postLiked', NULL, 1, NULL, '2016-08-09 09:13:27', 1, 0),
(2, 1, 4, 'newPost', NULL, 1, 0x7b22706f73744e756d626572223a327d, '2016-08-09 09:14:46', 1, 0),
(3, 4, 5, 'postMentioned', NULL, 2, 0x7b227265706c794e756d626572223a337d, '2016-08-09 09:18:54', 1, 0),
(4, 1, 4, 'newPost', NULL, 1, 0x7b22706f73744e756d626572223a347d, '2016-08-09 09:19:52', 1, 0),
(5, 5, 4, 'postMentioned', NULL, 3, 0x7b227265706c794e756d626572223a347d, '2016-08-09 09:19:52', 1, 0),
(6, 5, 4, 'postLiked', NULL, 3, NULL, '2016-08-09 09:21:05', 1, 0),
(7, 4, 1, 'postLiked', NULL, 2, NULL, '2016-08-09 09:26:28', 0, 1),
(8, 1, 4, 'newPost', NULL, 5, 0x7b22706f73744e756d626572223a327d, '2016-08-09 09:33:50', 1, 0),
(9, 1, 5, 'newPost', NULL, 1, 0x7b22706f73744e756d626572223a367d, '2016-08-09 09:57:00', 1, 0),
(10, 4, 5, 'newPost', NULL, 1, 0x7b22706f73744e756d626572223a367d, '2016-08-09 09:57:00', 0, 0),
(11, 5, 1, 'newPost', NULL, 6, 0x7b22706f73744e756d626572223a357d, '2016-08-09 10:11:41', 1, 1),
(12, 1, 5, 'postLiked', NULL, 16, NULL, '2016-08-09 10:15:11', 1, 0),
(13, 5, 1, 'postLiked', NULL, 13, NULL, '2016-08-09 10:46:47', 0, 0),
(14, 5, 1, 'postMentioned', NULL, 13, 0x7b227265706c794e756d626572223a367d, '2016-08-09 10:47:00', 0, 0),
(15, 1, 5, 'postLiked', NULL, 22, NULL, '2016-08-09 11:00:41', 1, 0),
(16, 5, 7, 'postLiked', NULL, 13, NULL, '2016-08-09 12:20:21', 0, 0),
(17, 1, 7, 'newPost', NULL, 6, 0x7b22706f73744e756d626572223a387d, '2016-08-09 12:20:59', 0, 0),
(18, 7, 1, 'newPost', NULL, 10, 0x7b22706f73744e756d626572223a327d, '2016-08-09 12:33:34', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `time`, `edit_time`, `content`, `is_hidden`) VALUES
(1, 'Giới thiệu hệ thống quản lý file', 'gioi-thieu-heth-ng-qu-n-l-file', '2016-08-09 10:19:36', NULL, '<r><H1><s># </s>Heading</H1>\n<H2><s>## </s>Heading 2</H2>\n<LIST><LI><s>+ </s>Menu</LI>\n<LI><s>+ </s>Menu2</LI></LIST></r>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_tokens`
--

CREATE TABLE IF NOT EXISTS `password_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `group_id` int(10) unsigned NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`group_id`, `permission`) VALUES
(2, 'viewDiscussions'),
(3, 'discussion.likePosts'),
(3, 'discussion.reply'),
(3, 'discussion.replyWithoutApproval'),
(3, 'flagrow.image.upload'),
(3, 'startDiscussion'),
(4, 'discussion.approvePosts'),
(4, 'discussion.editPosts'),
(4, 'discussion.flagPosts'),
(4, 'discussion.hide'),
(4, 'discussion.rename');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) unsigned NOT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `time` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` datetime DEFAULT NULL,
  `edit_user_id` int(10) unsigned DEFAULT NULL,
  `hide_time` datetime DEFAULT NULL,
  `hide_user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_discussion_id_number_unique` (`discussion_id`,`number`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `discussion_id`, `number`, `time`, `user_id`, `type`, `content`, `edit_time`, `edit_user_id`, `hide_time`, `hide_user_id`, `ip_address`, `is_approved`) VALUES
(1, 1, 1, '2016-08-09 08:54:22', 1, 'comment', '<t><p>Cái này ngu nhỉ?</p></t>', NULL, NULL, NULL, NULL, NULL, 1),
(2, 1, 2, '2016-08-09 09:14:46', 4, 'comment', '<r><p>Ngu cái cc ấy <EMOJI seq="1f4af">:100:</EMOJI>  <EMOJI seq="1f170">:a:</EMOJI>  <EMOJI seq="1f44d">:+1:</EMOJI></p> </r>', NULL, NULL, NULL, NULL, '10.240.0.213', 1),
(3, 1, 3, '2016-08-09 09:18:54', 5, 'comment', '<r><p><POSTMENTION discussionid="1" id="2" number="2" username="namjoker">@namjoker#2</POSTMENTION> ngu cai cc</p>\n</r>', NULL, NULL, NULL, NULL, '10.240.0.241', 1),
(4, 1, 4, '2016-08-09 09:19:52', 4, 'comment', '<r><p><POSTMENTION discussionid="1" id="3" number="3" username="KienBui">@KienBui#3</POSTMENTION> dmm</p></r>', NULL, NULL, NULL, NULL, '10.240.0.214', 1),
(5, 2, 1, '2016-08-09 09:22:40', 1, 'comment', '<t><p>ghjghjhgjhgjhgjgh</p></t>', NULL, NULL, NULL, NULL, NULL, 1),
(6, 1, 5, '2016-08-09 09:26:40', 1, 'discussionStickied', '{"sticky":true}', NULL, NULL, NULL, NULL, NULL, 1),
(8, 5, 1, '2016-08-09 09:32:25', 1, 'comment', '<r><H2><s>## </s>Day la header</H2>\n<LIST><LI><s>+ </s>Hello</LI></LIST></r>', '2016-08-09 09:32:48', 1, NULL, NULL, NULL, 1),
(9, 5, 2, '2016-08-09 09:33:50', 4, 'comment', '<r><p><POSTMENTION discussionid="5" id="8" number="1" username="admin">@admin#8</POSTMENTION> ??????</p></r>', NULL, NULL, NULL, NULL, '10.240.1.14', 1),
(10, 1, 6, '2016-08-09 09:56:59', 5, 'comment', '<r><p>eos quan tam <EMOJI seq="1f3b1">:8ball:</EMOJI></p> </r>', NULL, NULL, NULL, NULL, '10.240.0.110', 1),
(11, 1, 7, '2016-08-09 09:58:22', 5, 'comment', '<t><p>#ssss</p></t>', NULL, NULL, NULL, NULL, '10.240.1.17', 1),
(12, 6, 1, '2016-08-09 10:04:56', 5, 'comment', '<t><p>ddd</p></t>', NULL, NULL, NULL, NULL, NULL, 1),
(13, 6, 2, '2016-08-09 10:05:42', 5, 'comment', '<r><p><SPOILER><s>[SPOILER]</s> sdfghhgfs <e>[/SPOILER]</e></SPOILER>dddddd</p></r>', NULL, NULL, NULL, NULL, '10.240.0.119', 1),
(14, 6, 3, '2016-08-09 10:10:44', 5, 'comment', '<r>\n<p><IMG alt="image https://forum-ryuzaki95.c9users.io/assets/images/5-EQQeBdzQjox2Hi1q.jpeg" src="https://forum-ryuzaki95.c9users.io/assets/images/5-EQQeBdzQjox2Hi1q.jpeg"><s>![</s>image https://forum-ryuzaki95.c9users.io/assets/images/5-EQQeBdzQjox2Hi1q.jpeg<e>](https://forum-ryuzaki95.c9users.io/assets/images/5-EQQeBdzQjox2Hi1q.jpeg)</e></IMG></p>\n</r>', NULL, NULL, NULL, NULL, '10.240.0.75', 1),
(15, 6, 4, '2016-08-09 10:11:07', 5, 'comment', '<r><p><POSTMENTION discussionid="6" id="14" number="3" username="KienBui">@KienBui#14</POSTMENTION> astyt</p></r>', NULL, NULL, NULL, NULL, '10.240.1.20', 1),
(19, 8, 2, '2016-08-09 10:28:30', 5, 'comment', '<t><p>x</p></t>', NULL, NULL, NULL, NULL, '10.240.0.110', 1),
(20, 6, 6, '2016-08-09 10:46:57', 1, 'comment', '<r><p><POSTMENTION discussionid="6" id="13" number="2" username="KienBui">@KienBui#13</POSTMENTION> dmdmdmd</p></r>', NULL, NULL, NULL, NULL, '10.240.1.12', 1),
(21, 6, 7, '2016-08-09 10:47:53', 1, 'comment', '<r>\n<p><SPOILER><s>[SPOILER]</s><IMG alt="image https://forum-ryuzaki95.c9users.io/assets/images/1-Rpjfl2jXoiUBOVms.jpeg" src="https://forum-ryuzaki95.c9users.io/assets/images/1-Rpjfl2jXoiUBOVms.jpeg"><s>![</s>image https://forum-ryuzaki95.c9users.io/assets/images/1-Rpjfl2jXoiUBOVms.jpeg<e>](https://forum-ryuzaki95.c9users.io/assets/images/1-Rpjfl2jXoiUBOVms.jpeg)</e></IMG><br/>\n<e>[/SPOILER]</e></SPOILER></p></r>', NULL, NULL, NULL, NULL, '10.240.1.12', 1),
(17, 7, 1, '2016-08-09 10:14:04', 5, 'comment', '<t><p>asert</p></t>', NULL, NULL, NULL, NULL, NULL, 1),
(18, 8, 1, '2016-08-09 10:27:24', 5, 'comment', '<t><p>aa</p></t>', NULL, NULL, NULL, NULL, NULL, 1),
(22, 9, 1, '2016-08-09 10:57:08', 1, 'comment', '<t><p>Nam hOia</p></t>', NULL, NULL, NULL, NULL, NULL, 1),
(23, 9, 2, '2016-08-09 11:26:13', 1, 'comment', '<t><p>ngu nguoi</p></t>', NULL, NULL, NULL, NULL, '10.240.0.240', 1),
(24, 6, 8, '2016-08-09 12:20:55', 7, 'comment', '<r><p>bjkbkb<br/>\n<IMG alt="image https://forum-ryuzaki95.c9users.io/assets/images/7-Lzxb8LSRj3M6tUMc.jpeg" src="https://forum-ryuzaki95.c9users.io/assets/images/7-Lzxb8LSRj3M6tUMc.jpeg"><s>![</s>image https://forum-ryuzaki95.c9users.io/assets/images/7-Lzxb8LSRj3M6tUMc.jpeg<e>](https://forum-ryuzaki95.c9users.io/assets/images/7-Lzxb8LSRj3M6tUMc.jpeg)</e></IMG></p>\n</r>', NULL, NULL, NULL, NULL, '10.240.0.214', 1),
(25, 10, 1, '2016-08-09 12:25:54', 7, 'comment', '<r><CODE><s>``` c++</s><i>\n</i>int main(int argc, char *argv[])\n{\n  int size =  3072;\n  //  int size = 4096;\n    \n    if (argc &gt; 1) size = std::atoi(argv[1]);\n    mpz_class n = gen_random_prime(size / 8, 64);\n    std::cout &lt;&lt; ''\\n'' &lt;&lt; n &lt;&lt; ''\\n'';\n}<i>\n</i><e>```</e></CODE></r>', '2016-08-09 12:27:04', 7, NULL, NULL, NULL, 1),
(26, 10, 2, '2016-08-09 12:33:34', 1, 'comment', '<r><CODE lang="php"><s>``` php</s><i>\n</i>&lt;?php\n/*\n * This file is part of Flarum.\n *\n * (c) Toby Zerner &lt;toby.zerner@gmail.com&gt;\n *\n * For the full copyright and license information, please view the LICENSE\n * file that was distributed with this source code.\n */\n\nnamespace Flarum\\Core;\n\nuse DomainException;\nuse Flarum\\Core\\Access\\Gate;\nuse Flarum\\Core\\Support\\EventGeneratorTrait;\nuse Flarum\\Core\\Support\\ScopeVisibilityTrait;\nuse Flarum\\Database\\AbstractModel;\nuse Flarum\\Event\\ConfigureUserPreferences;\nuse Flarum\\Event\\PostWasDeleted;\nuse Flarum\\Event\\PrepareUserGroups;\nuse Flarum\\Event\\UserAvatarWasChanged;\nuse Flarum\\Event\\UserBioWasChanged;\nuse Flarum\\Event\\UserEmailChangeWasRequested;\nuse Flarum\\Event\\UserEmailWasChanged;\nuse Flarum\\Event\\UserPasswordWasChanged;\nuse Flarum\\Event\\UserWasActivated;\nuse Flarum\\Event\\UserWasDeleted;\nuse Flarum\\Event\\UserWasRegistered;\nuse Flarum\\Event\\UserWasRenamed;\nuse Flarum\\Foundation\\Application;\nuse Illuminate\\Contracts\\Hashing\\Hasher;\n\n/**\n * @property int $id\n * @property string $username\n * @property string $email\n * @property bool $is_activated\n * @property string $password\n * @property string $locale\n * @property string $bio\n * @property string|null $avatar_path\n * @property string $avatar_url\n * @property array $preferences\n * @property \\Carbon\\Carbon|null $join_time\n * @property \\Carbon\\Carbon|null $last_seen_time\n * @property \\Carbon\\Carbon|null $read_time\n * @property \\Carbon\\Carbon|null $notifications_read_time\n * @property int $discussions_count\n * @property int $comments_count\n */\nclass User extends AbstractModel\n{\n    use EventGeneratorTrait;\n    use ScopeVisibilityTrait;\n\n    /**\n     * {@inheritdoc}\n     */\n    protected $table = ''users'';\n\n    /**\n     * {@inheritdoc}\n     */\n    protected $dates = [\n        ''join_time'',\n        ''last_seen_time'',\n        ''read_time'',\n        ''notifications_read_time''\n    ];\n\n    /**\n     * An array of permissions that this user has.\n     *\n     * @var string[]|null\n     */\n    protected $permissions = null;\n\n    /**\n     * An array of registered user preferences. Each preference is defined with\n     * a key, and its value is an array containing the following keys:.\n     *\n     * - transformer: a callback that confines the value of the preference\n     * - default: a default value if the preference isn''t set\n     *\n     * @var array\n     */\n    protected static $preferences = [];\n\n    /**\n     * The hasher with which to hash passwords.\n     *\n     * @var Hasher\n     */\n    protected static $hasher;\n\n    /**\n     * The access gate.\n     *\n     * @var Gate\n     */\n    protected static $gate;\n\n    /**\n     * Boot the model.\n     *\n     * @return void\n     */\n    public static function boot()\n    {\n        parent::boot();\n\n        // Don''t allow the root admin to be deleted.\n        static::deleting(function (User $user) {\n            if ($user-&gt;id == 1) {\n                throw new DomainException(''Cannot delete the root admin'');\n            }\n        });\n\n        static::deleted(function (User $user) {\n            $user-&gt;raise(new UserWasDeleted($user));\n\n            // Delete all of the posts by the user. Before we delete them\n            // in a big batch query, we will loop through them and raise a\n            // PostWasDeleted event for each post.\n            $posts = $user-&gt;posts()-&gt;allTypes();\n\n            foreach ($posts-&gt;get() as $post) {\n                $user-&gt;raise(new PostWasDeleted($post));\n            }\n\n            $posts-&gt;delete();\n\n            $user-&gt;read()-&gt;detach();\n            $user-&gt;groups()-&gt;detach();\n            $user-&gt;accessTokens()-&gt;delete();\n            $user-&gt;notifications()-&gt;delete();\n        });\n\n        static::$dispatcher-&gt;fire(\n            new ConfigureUserPreferences\n        );\n    }\n\n    /**\n     * Register a new user.\n     *\n     * @param string $username\n     * @param string $email\n     * @param string $password\n     * @return static\n     */\n    public static function register($username, $email, $password)\n    {\n        $user = new static;\n\n        $user-&gt;username = $username;\n        $user-&gt;email = $email;\n        $user-&gt;password = $password;\n        $user-&gt;join_time = time();\n    	\n        $user-&gt;raise(new UserWasRegistered($user));\n\n        return $user;\n    }\n\n    /**\n     * @return Gate\n     */\n    public static function getGate()\n    {\n        return static::$gate;\n    }\n\n    /**\n     * @param Gate $gate\n     */\n    public static function setGate($gate)\n    {\n        static::$gate = $gate;\n    }\n\n    /**\n     * Rename the user.\n     *\n     * @param string $username\n     * @return $this\n     */\n    public function rename($username)\n    {\n        if ($username !== $this-&gt;username) {\n            $this-&gt;username = $username;\n\n            $this-&gt;raise(new UserWasRenamed($this));\n        }\n\n        return $this;\n    }\n\n    /**\n     * Change the user''s email.\n     *\n     * @param string $email\n     * @return $this\n     */\n    public function changeEmail($email)\n    {\n        if ($email !== $this-&gt;email) {\n            $this-&gt;email = $email;\n\n            $this-&gt;raise(new UserEmailWasChanged($this));\n        }\n\n        return $this;\n    }\n\n    /**\n     * Request that the user''s email be changed.\n     *\n     * @param string $email\n     * @return $this\n     */\n    public function requestEmailChange($email)\n    {\n        if ($email !== $this-&gt;email) {\n            $this-&gt;raise(new UserEmailChangeWasRequested($this, $email));\n        }\n\n        return $this;\n    }\n\n    /**\n     * Change the user''s password.\n     *\n     * @param string $password\n     * @return $this\n     */\n    public function changePassword($password)\n    {\n        $this-&gt;password = $password;\n\n        $this-&gt;raise(new UserPasswordWasChanged($this));\n\n        return $this;\n    }\n\n    /**\n     * Set the password attribute, storing it as a hash.\n     *\n     * @param string $value\n     */\n    public function setPasswordAttribute($value)\n    {\n        $this-&gt;attributes[''password''] = $value ? static::$hasher-&gt;make($value) : '''';\n    }\n\n    /**\n     * Change the user''s bio.\n     *\n     * @param string $bio\n     * @return $this\n     */\n    public function changeBio($bio)\n    {\n        $this-&gt;bio = $bio;\n\n        $this-&gt;raise(new UserBioWasChanged($this));\n\n        return $this;\n    }\n\n    /**\n     * Mark all discussions as read.\n     *\n     * @return $this\n     */\n    public function markAllAsRead()\n    {\n        $this-&gt;read_time = time();\n\n        return $this;\n    }\n\n    /**\n     * Mark all notifications as read.\n     *\n     * @return $this\n     */\n    public function markNotificationsAsRead()\n    {\n        $this-&gt;notifications_read_time = time();\n\n        return $this;\n    }\n\n    /**\n     * Change the path of the user avatar.\n     *\n     * @param string $path\n     * @return $this\n     */\n    public function changeAvatarPath($path)\n    {\n        $this-&gt;avatar_path = $path;\n\n        $this-&gt;raise(new UserAvatarWasChanged($this));\n\n        return $this;\n    }\n\n    /**\n     * Get the URL of the user''s avatar.\n     *\n     * @todo Allow different storage locations to be used\n     * @return string\n     */\n    public function getAvatarUrlAttribute()\n    {\n        $urlGenerator = app(''Flarum\\Forum\\UrlGenerator'');\n\n        return $this-&gt;avatar_path ? $urlGenerator-&gt;toPath(''assets/avatars/''.$this-&gt;avatar_path) : null;\n    }\n\n    /**\n     * Get the user''s locale, falling back to the forum''s default if they\n     * haven''t set one.\n     *\n     * @param string $value\n     * @return string\n     */\n    public function getLocaleAttribute($value)\n    {\n        return $value ?: Application::config(''locale'', ''en'');\n    }\n\n    /**\n     * Check if a given password matches the user''s password.\n     *\n     * @param string $password\n     * @return bool\n     */\n    public function checkPassword($password)\n    {\n        return static::$hasher-&gt;check($password, $this-&gt;password);\n    }\n\n    /**\n     * Activate the user''s account.\n     *\n     * @return $this\n     */\n    public function activate()\n    {\n        if ($this-&gt;is_activated !== true) {\n            $this-&gt;is_activated = true;\n\n            $this-&gt;raise(new UserWasActivated($this));\n        }\n\n        return $this;\n    }\n\n    /**\n     * Check whether the user has a certain permission based on their groups.\n     *\n     * @param string $permission\n     * @return bool\n     */\n    public function hasPermission($permission)\n    {\n        if ($this-&gt;isAdmin()) {\n            return true;\n        }\n\n        if (is_null($this-&gt;permissions)) {\n            $this-&gt;permissions = $this-&gt;getPermissions();\n        }\n\n        return in_array($permission, $this-&gt;permissions);\n    }\n\n    /**\n     * Check whether the user has a permission that is like the given string,\n     * based on their groups.\n     *\n     * @param string $match\n     * @return bool\n     */\n    public function hasPermissionLike($match)\n    {\n        if ($this-&gt;isAdmin()) {\n            return true;\n        }\n\n        if (is_null($this-&gt;permissions)) {\n            $this-&gt;permissions = $this-&gt;getPermissions();\n        }\n\n        foreach ($this-&gt;permissions as $permission) {\n            if (substr($permission, -strlen($match)) === $match) {\n                return true;\n            }\n        }\n\n        return false;\n    }\n\n    /**\n     * Get the notification types that should be alerted to this user, according\n     * to their preferences.\n     *\n     * @return array\n     */\n    public function getAlertableNotificationTypes()\n    {\n        $types = array_keys(Notification::getSubjectModels());\n\n        return array_filter($types, [$this, ''shouldAlert'']);\n    }\n\n    /**\n     * Get the number of unread notifications for the user.\n     *\n     * @return int\n     */\n    public function getUnreadNotificationsCount()\n    {\n        return $this-&gt;getUnreadNotifications()-&gt;count();\n    }\n\n    /**\n     * Get all notifications that have not been read yet.\n     *\n     * @return \\Illuminate\\Database\\Eloquent\\Collection\n     */\n    protected function getUnreadNotifications()\n    {\n        static $cached = null;\n\n        if (is_null($cached)) {\n            $cached = $this-&gt;notifications()\n                -&gt;whereIn(''type'', $this-&gt;getAlertableNotificationTypes())\n                -&gt;where(''is_read'', 0)\n                -&gt;where(''is_deleted'', 0)\n                -&gt;get();\n        }\n\n        return $cached;\n    }\n\n    /**\n     * Get the number of new, unseen notifications for the user.\n     *\n     * @return int\n     */\n    public function getNewNotificationsCount()\n    {\n        return $this-&gt;getUnreadNotifications()-&gt;filter(function ($notification) {\n            return $notification-&gt;time &gt; $this-&gt;notifications_read_time ?: 0;\n        })-&gt;count();\n    }\n\n    /**\n     * Get the values of all registered preferences for this user, by\n     * transforming their stored preferences and merging them with the defaults.\n     *\n     * @param string $value\n     * @return array\n     */\n    public function getPreferencesAttribute($value)\n    {\n        $defaults = array_build(static::$preferences, function ($key, $value) {\n            return [$key, $value[''default'']];\n        });\n\n        $user = array_only((array) json_decode($value, true), array_keys(static::$preferences));\n\n        return array_merge($defaults, $user);\n    }\n\n    /**\n     * Encode an array of preferences for storage in the database.\n     *\n     * @param mixed $value\n     */\n    public function setPreferencesAttribute($value)\n    {\n        $this-&gt;attributes[''preferences''] = json_encode($value);\n    }\n\n    /**\n     * Check whether or not the user should receive an alert for a notification\n     * type.\n     *\n     * @param string $type\n     * @return bool\n     */\n    public function shouldAlert($type)\n    {\n        return (bool) $this-&gt;getPreference(static::getNotificationPreferenceKey($type, ''alert''));\n    }\n\n    /**\n     * Check whether or not the user should receive an email for a notification\n     * type.\n     *\n     * @param string $type\n     * @return bool\n     */\n    public function shouldEmail($type)\n    {\n        return (bool) $this-&gt;getPreference(static::getNotificationPreferenceKey($type, ''email''));\n    }\n\n    /**\n     * Get the value of a preference for this user.\n     *\n     * @param string $key\n     * @param mixed $default\n     * @return mixed\n     */\n    public function getPreference($key, $default = null)\n    {\n        return array_get($this-&gt;preferences, $key, $default);\n    }\n\n    /**\n     * Set the value of a preference for this user.\n     *\n     * @param string $key\n     * @param mixed $value\n     * @return $this\n     */\n    public function setPreference($key, $value)\n    {\n        if (isset(static::$preferences[$key])) {\n            $preferences = $this-&gt;preferences;\n\n            if (! is_null($transformer = static::$preferences[$key][''transformer''])) {\n                $preferences[$key] = call_user_func($transformer, $value);\n            } else {\n                $preferences[$key] = $value;\n            }\n\n            $this-&gt;preferences = $preferences;\n        }\n\n        return $this;\n    }\n\n    /**\n     * Set the user as being last seen just now.\n     *\n     * @return $this\n     */\n    public function updateLastSeen()\n    {\n        $this-&gt;last_seen_time = time();\n\n        return $this;\n    }\n\n    /**\n     * Check whether or not the user is an administrator.\n     *\n     * @return bool\n     */\n    public function isAdmin()\n    {\n        return $this-&gt;groups-&gt;contains(Group::ADMINISTRATOR_ID);\n    }\n\n    /**\n     * Check whether or not the user is a guest.\n     *\n     * @return bool\n     */\n    public function isGuest()\n    {\n        return false;\n    }\n\n    /**\n     * Define the relationship with the user''s posts.\n     *\n     * @return \\Illuminate\\Database\\Eloquent\\Relations\\HasMany\n     */\n    public function posts()\n    {\n        return $this-&gt;hasMany(''Flarum\\Core\\Post'');\n    }\n\n    /**\n     * Define the relationship with the user''s read discussions.\n     *\n     * @return \\Illuminate\\Database\\Eloquent\\Relations\\BelongsTo\n     */\n    public function read()\n    {\n        return $this-&gt;belongsToMany(''Flarum\\Core\\Discussion'', ''users_discussions'');\n    }\n\n    /**\n     * Define the relationship with the user''s groups.\n     *\n     * @return \\Illuminate\\Database\\Eloquent\\Relations\\BelongsToMany\n     */\n    public function groups()\n    {\n        return $this-&gt;belongsToMany(''Flarum\\Core\\Group'', ''users_groups'');\n    }\n\n    /**\n     * Define the relationship with the user''s notifications.\n     *\n     * @return \\Illuminate\\Database\\Eloquent\\Relations\\HasMany\n     */\n    public function notifications()\n    {\n        return $this-&gt;hasMany(''Flarum\\Core\\Notification'');\n    }\n\n    /**\n     * Define the relationship with the permissions of all of the groups that\n     * the user is in.\n     *\n     * @return \\Illuminate\\Database\\Eloquent\\Builder\n     */\n    public function permissions()\n    {\n        $groupIds = [Group::GUEST_ID];\n\n        // If a user''s account hasn''t been activated, they are essentially no\n        // more than a guest. If they are activated, we can give them the\n        // standard ''member'' group, as well as any other groups they''ve been\n        // assigned to.\n        if ($this-&gt;is_activated) {\n            $groupIds = array_merge($groupIds, [Group::MEMBER_ID], $this-&gt;groups-&gt;lists(''id'')-&gt;all());\n        }\n\n        event(new PrepareUserGroups($this, $groupIds));\n\n        return Permission::whereIn(''group_id'', $groupIds);\n    }\n\n    /**\n     * Get a list of permissions that the user has.\n     *\n     * @return string[]\n     */\n    public function getPermissions()\n    {\n        return $this-&gt;permissions()-&gt;lists(''permission'')-&gt;all();\n    }\n\n    /**\n     * Define the relationship with the user''s access tokens.\n     *\n     * @return \\Illuminate\\Database\\Eloquent\\Relations\\HasMany\n     */\n    public function accessTokens()\n    {\n        return $this-&gt;hasMany(''Flarum\\Http\\AccessToken'');\n    }\n\n    /**\n     * @param string $ability\n     * @param array|mixed $arguments\n     * @return bool\n     */\n    public function can($ability, $arguments = [])\n    {\n        return static::$gate-&gt;forUser($this)-&gt;allows($ability, $arguments);\n    }\n\n    /**\n     * @param string $ability\n     * @param array|mixed $arguments\n     * @return bool\n     */\n    public function cannot($ability, $arguments = [])\n    {\n        return ! $this-&gt;can($ability, $arguments);\n    }\n\n    /**\n     * Set the hasher with which to hash passwords.\n     *\n     * @param Hasher $hasher\n     */\n    public static function setHasher(Hasher $hasher)\n    {\n        static::$hasher = $hasher;\n    }\n\n    /**\n     * Register a preference with a transformer and a default value.\n     *\n     * @param string $key\n     * @param callable $transformer\n     * @param mixed $default\n     */\n    public static function addPreference($key, callable $transformer = null, $default = null)\n    {\n        static::$preferences[$key] = compact(''transformer'', ''default'');\n    }\n\n    /**\n     * Get the key for a preference which flags whether or not the user will\n     * receive a notification for $type via $method.\n     *\n     * @param string $type\n     * @param string $method\n     * @return string\n     */\n    public static function getNotificationPreferenceKey($type, $method)\n    {\n        return ''notify_''.$type.''_''.$method;\n    }\n}<i>\n\n</i><e>```</e></CODE></r>', NULL, NULL, NULL, NULL, '10.240.0.5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_likes`
--

CREATE TABLE IF NOT EXISTS `posts_likes` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_likes`
--

INSERT INTO `posts_likes` (`post_id`, `user_id`) VALUES
(1, 1),
(1, 4),
(3, 4),
(13, 1),
(13, 5),
(13, 7),
(14, 5),
(18, 5),
(22, 1),
(22, 5),
(23, 1),
(24, 7);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`) VALUES
('allow_post_editing', 'reply'),
('allow_renaming', '10'),
('allow_sign_up', '1'),
('allow_tag_change', '-1'),
('custom_less', ''),
('default_locale', 'en'),
('default_route', '/all'),
('extensions_enabled', '["flarum-approval","flarum-bbcode","flarum-emoji","flarum-flags","flarum-likes","flarum-lock","flarum-markdown","flarum-mentions","flarum-sticky","flarum-subscriptions","flarum-suspend","flarum-tags","flarum-auth-facebook","flarum-english","sijad-spoiler-alert","flagrow-image-upload","sijad-pages","s9e-mediaembed","vingle-share-social","flagrow-guardian","vuthaihoc-vn-slug","hyn-default-group"]'),
('flarum-auth-facebook.app_id', '1850072361799811'),
('flarum-auth-facebook.app_secret', '9496206af6f4fab089a98f535ce7e99d'),
('flarum-flags.guidelines_url', ''),
('flarum-tags.max_primary_tags', '1'),
('flarum-tags.max_secondary_tags', '3'),
('flarum-tags.min_primary_tags', '1'),
('flarum-tags.min_secondary_tags', '0'),
('forum_description', ''),
('forum_title', 'Hội Gay Toán Tin'),
('hyn.default_group.group', '3'),
('mail_driver', 'mail'),
('mail_from', 'noreply@forum-ryuzaki95.c9users.io'),
('theme_colored_header', '0'),
('theme_dark_mode', '0'),
('theme_primary_color', '#4D698E'),
('theme_secondary_color', '#4D698E'),
('version', '0.1.0-beta.5'),
('vingle.share.social', 'Chia sẻ'),
('welcome_message', 'This is beta software and you should not use it in production.'),
('welcome_title', 'Welcome to Hội Gay Toán Tin');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `default_sort` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `discussions_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime DEFAULT NULL,
  `last_discussion_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `description`, `color`, `background_path`, `background_mode`, `position`, `parent_id`, `default_sort`, `is_restricted`, `is_hidden`, `discussions_count`, `last_time`, `last_discussion_id`) VALUES
(1, 'General', 'general', '', '#911', NULL, NULL, 0, NULL, NULL, 0, 0, 8, '2016-08-09 12:25:54', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` blob,
  `join_time` datetime DEFAULT NULL,
  `last_seen_time` datetime DEFAULT NULL,
  `read_time` datetime DEFAULT NULL,
  `notifications_read_time` datetime DEFAULT NULL,
  `discussions_count` int(10) unsigned NOT NULL DEFAULT '0',
  `comments_count` int(10) unsigned NOT NULL DEFAULT '0',
  `flags_read_time` datetime DEFAULT NULL,
  `suspend_until` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `is_activated`, `password`, `bio`, `avatar_path`, `preferences`, `join_time`, `last_seen_time`, `read_time`, `notifications_read_time`, `discussions_count`, `comments_count`, `flags_read_time`, `suspend_until`) VALUES
(1, 'admin', 'nameffect@gmail.com', 1, '$2y$10$ZCeCc874t3oyNof59n9SBeXIiQw3pT2gJnXU1igT9X1Cp/gLDxena', 'Dm, hom nay nong vl', NULL, 0x7b226e6f746966795f64697363757373696f6e52656e616d65645f616c657274223a747275652c226e6f746966795f706f73744c696b65645f616c657274223a747275652c226e6f746966795f64697363757373696f6e4c6f636b65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f656d61696c223a66616c73652c226e6f746966795f757365724d656e74696f6e65645f616c657274223a747275652c226e6f746966795f757365724d656e74696f6e65645f656d61696c223a66616c73652c226e6f746966795f6e6577506f73745f616c657274223a747275652c226e6f746966795f6e6577506f73745f656d61696c223a747275652c22666f6c6c6f7741667465725265706c79223a747275652c22646973636c6f73654f6e6c696e65223a747275652c22696e64657850726f66696c65223a747275652c226c6f63616c65223a6e756c6c7d, '2016-08-09 08:51:29', '2016-08-09 12:33:34', NULL, '2016-08-09 11:29:29', 4, 7, '2016-08-09 11:26:39', NULL),
(2, 'hoainam', 'nam0943767467@gmail.com', 0, '$2y$10$w5oGraMfTXMOZc0fZcCRvOP22HXSLC83t4DbhDty8s7QdmPChuaZu', NULL, NULL, NULL, '2016-08-09 08:58:06', '2016-08-09 08:59:45', NULL, NULL, 0, 0, NULL, NULL),
(3, 'madawg', 'kien.laohac@gmail.com', 0, '$2y$10$mCf1c3F9L6DdCpgE2VBnhOVY3leNFDH/UgGtOB4/febbQFQyxsC72', 'test', 'a2yjwm74djofpanm.jpg', 0x7b226e6f746966795f64697363757373696f6e52656e616d65645f616c657274223a747275652c226e6f746966795f706f73744c696b65645f616c657274223a747275652c226e6f746966795f64697363757373696f6e4c6f636b65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f656d61696c223a66616c73652c226e6f746966795f757365724d656e74696f6e65645f616c657274223a747275652c226e6f746966795f757365724d656e74696f6e65645f656d61696c223a66616c73652c226e6f746966795f6e6577506f73745f616c657274223a747275652c226e6f746966795f6e6577506f73745f656d61696c223a66616c73652c22666f6c6c6f7741667465725265706c79223a747275652c22646973636c6f73654f6e6c696e65223a747275652c22696e64657850726f66696c65223a747275652c226c6f63616c65223a6e756c6c7d, '2016-08-09 09:00:23', '2016-08-09 11:51:46', '2016-08-09 09:02:57', NULL, 0, 0, NULL, NULL),
(4, 'namjoker', 'ta_la_cuop_day@yahoo.com', 1, '$2y$10$TiHjXNLrz1jEePXEA.zdVOm3d5IamL7ycQVN8xS.UtkijEtQGncAC', NULL, 'sz5krdbylpdh1kdh.jpg', NULL, '2016-08-09 09:10:44', '2016-08-09 11:59:35', NULL, '2016-08-09 09:19:34', 0, 3, NULL, NULL),
(5, 'KienBui', 'kien.laohac@yahoo.com.vn', 1, '$2y$10$CIgB/Cy8U/kZN7lK9CfVfOoh80rfsbPRLtNVCHWxGoctvUHy2L4vW', NULL, '8s5aifmv0fxavcux.jpg', 0x7b226e6f746966795f64697363757373696f6e52656e616d65645f616c657274223a747275652c226e6f746966795f706f73744c696b65645f616c657274223a747275652c226e6f746966795f64697363757373696f6e4c6f636b65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f656d61696c223a66616c73652c226e6f746966795f757365724d656e74696f6e65645f616c657274223a747275652c226e6f746966795f757365724d656e74696f6e65645f656d61696c223a66616c73652c226e6f746966795f6e6577506f73745f616c657274223a747275652c226e6f746966795f6e6577506f73745f656d61696c223a747275652c22666f6c6c6f7741667465725265706c79223a747275652c22646973636c6f73654f6e6c696e65223a747275652c22696e64657850726f66696c65223a747275652c226c6f63616c65223a6e756c6c7d, '2016-08-09 09:18:29', '2016-08-09 11:50:07', '2016-08-09 11:01:07', '2016-08-09 11:50:03', 3, 10, '2016-08-09 11:00:58', NULL),
(6, 'ryuzaki95', 'namjoker@bmail.com', 0, '$2y$10$ZQdza3cQ/.bCYunwwBfdX.ABnOMldXtz/eRBtroJL.viQf5eAarcO', NULL, NULL, NULL, '2016-08-09 12:00:08', '2016-08-09 12:31:00', NULL, NULL, 0, 0, NULL, NULL),
(7, 'ThangNguyen', 'thangdn.tlu@outlook.com', 1, '$2y$10$3vJpZ4cEoKlAtx0j8tjbNOIj5hG.85kDfdR71KxKC2i.ZTe5nclfW', NULL, 'e1o9wvqz5npnpfzl.jpg', 0x7b226e6f746966795f64697363757373696f6e52656e616d65645f616c657274223a747275652c226e6f746966795f706f73744c696b65645f616c657274223a747275652c226e6f746966795f64697363757373696f6e4c6f636b65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f656d61696c223a747275652c226e6f746966795f757365724d656e74696f6e65645f616c657274223a747275652c226e6f746966795f757365724d656e74696f6e65645f656d61696c223a747275652c226e6f746966795f6e6577506f73745f616c657274223a747275652c226e6f746966795f6e6577506f73745f656d61696c223a747275652c22666f6c6c6f7741667465725265706c79223a747275652c22646973636c6f73654f6e6c696e65223a747275652c22696e64657850726f66696c65223a747275652c226c6f63616c65223a6e756c6c7d, '2016-08-09 12:19:53', '2016-08-09 14:35:53', NULL, '2016-08-09 14:34:18', 1, 2, NULL, NULL),
(8, 'vanquang', 'ducthang@gmail.com', 0, '$2y$10$.ZLPtbd5uL1Gx5qyGMbvduiB8kkLk27edVWPExfUzzY2czaKdF6qq', NULL, NULL, NULL, '2016-08-09 12:32:12', '2016-08-09 12:32:31', NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_discussions`
--

CREATE TABLE IF NOT EXISTS `users_discussions` (
  `user_id` int(10) unsigned NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `read_number` int(10) unsigned DEFAULT NULL,
  `subscription` enum('follow','ignore') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`,`discussion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_discussions`
--

INSERT INTO `users_discussions` (`user_id`, `discussion_id`, `read_time`, `read_number`, `subscription`) VALUES
(1, 1, '2016-08-09 10:06:00', 7, 'follow'),
(1, 2, '2016-08-09 09:22:40', 1, 'follow'),
(1, 5, '2016-08-09 09:37:07', 2, 'follow'),
(1, 6, '2016-08-09 10:47:53', 7, 'follow'),
(1, 7, '2016-08-09 10:20:24', 1, NULL),
(1, 8, '2016-08-09 10:30:02', 2, NULL),
(1, 9, '2016-08-09 11:26:13', 2, 'follow'),
(1, 10, '2016-08-09 12:33:34', 2, 'follow'),
(2, 1, '2016-08-09 08:58:13', 1, NULL),
(3, 1, '2016-08-09 09:01:32', 1, NULL),
(4, 1, '2016-08-09 09:19:52', 4, 'follow'),
(4, 2, '2016-08-09 09:33:31', 1, NULL),
(4, 5, '2016-08-09 09:33:50', 2, NULL),
(5, 1, '2016-08-09 09:58:22', 7, 'follow'),
(5, 2, '2016-08-09 09:25:37', 1, NULL),
(5, 6, '2016-08-09 10:14:59', 5, 'follow'),
(5, 7, '2016-08-09 10:14:04', 1, 'follow'),
(5, 8, '2016-08-09 10:28:31', 2, 'follow'),
(5, 9, '2016-08-09 11:00:36', 1, NULL),
(7, 1, '2016-08-09 12:22:41', 7, NULL),
(7, 2, '2016-08-09 12:21:39', 1, NULL),
(7, 6, '2016-08-09 12:20:59', 8, NULL),
(7, 10, '2016-08-09 14:34:25', 2, 'follow'),
(8, 1, '2016-08-09 12:32:25', 7, NULL),
(8, 10, '2016-08-09 12:32:31', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(1, 1),
(3, 5),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_tags`
--

CREATE TABLE IF NOT EXISTS `users_tags` (
  `user_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
