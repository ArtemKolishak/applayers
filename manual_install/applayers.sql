-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2019 at 11:33 PM
-- Server version: 8.0.15
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
-- Database: `applayers`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 54, 'Artem', 'admin@demolink.org', '', '192.168.0.139', '2019-12-10 19:39:48', '2019-12-10 19:39:48', 'Hi!', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '', 0, 0),
(3, 54, 'Nick', 'admin@demolink.org', '', '192.168.0.139', '2019-12-11 14:14:32', '2019-12-11 14:14:32', 'asdfghjkl', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '', 0, 0),
(4, 54, 'Nick', 'admin@demolink.org', '', '192.168.0.139', '2019-12-11 14:15:28', '2019-12-11 14:15:28', 'qwertyuiop', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'your_website_url_here', 'yes'),
(2, 'home', 'your_website_url_here', 'yes'),
(3, 'blogname', 'App Layers', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@demolink.org', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'applayers', 'yes'),
(41, 'stylesheet', 'applayers', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:4;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '12', 'yes'),
(84, 'page_on_front', '24', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-3\";i:1;s:16:\"subscribe_form-2\";i:2;s:33:\"applayers_widget_recent_entries-2\";i:3;s:12:\"categories-4\";i:4;s:11:\"tag_cloud-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1576097548;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1576111948;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1576155148;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576155156;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576155157;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:\"title\";s:12:\"Explore Tags\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570625561;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1576096057;s:7:\"checked\";a:5:{s:9:\"applayers\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(139, 'current_theme', 'App Layers', 'yes'),
(140, 'theme_mods_applayers', 'a:12:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570625568;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:56;s:14:\"youtube_social\";s:24:\"https://www.youtube.com/\";s:15:\"facebook_social\";s:25:\"https://www.facebook.com/\";s:14:\"twitter_social\";s:20:\"https://twitter.com/\";s:15:\"linkedin_social\";s:25:\"https://www.linkedin.com/\";s:13:\"google_social\";s:23:\"https://www.google.com/\";s:16:\"instagram_social\";s:26:\"https://www.instagram.com/\";s:11:\"footer_copy\";s:205:\"2016 &copy; Copyright Applayers. All rights Reserved. Powered By Free <a href=\"http://www.pfind.com/goodies/applayers/\">AppLayers</a> Template from <a href=\"http://www.pfind.com/goodies/\">pFind Goodies</a>\";}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(146, 'WPLANG', '', 'yes'),
(147, 'new_admin_email', 'admin@demolink.org', 'yes'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(182, 'category_children', 'a:0:{}', 'yes'),
(229, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"admin@demolink.org\";s:7:\"version\";s:5:\"5.2.4\";s:9:\"timestamp\";i:1574871351;}', 'no'),
(248, 'recently_activated', 'a:1:{s:47:\"rvg-optimize-database/rvg-optimize-database.php\";i:1576096347;}', 'yes'),
(251, 'admin_email_lifespan', '1590505989', 'yes'),
(252, 'db_upgraded', '', 'yes'),
(254, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1576096056;s:15:\"version_checked\";s:3:\"5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(255, 'can_compress_scripts', '1', 'no'),
(329, 'widget_applayers_widget_recent_entries', 'a:2:{i:2;a:3:{s:5:\"title\";s:12:\"Recent Posts\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(364, 'widget_subscribe_form', 'a:2:{i:2;a:4:{s:5:\"title\";s:10:\"Newsletter\";s:4:\"text\";s:64:\"Subscribe to our email newsletter for useful tips and resources.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(430, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1576096060;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"rvg-optimize-database/rvg-optimize-database.php\";s:5:\"4.8.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"rvg-optimize-database/rvg-optimize-database.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/rvg-optimize-database\";s:4:\"slug\";s:21:\"rvg-optimize-database\";s:6:\"plugin\";s:47:\"rvg-optimize-database/rvg-optimize-database.php\";s:11:\"new_version\";s:5:\"4.8.8\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/rvg-optimize-database/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/rvg-optimize-database.4.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/rvg-optimize-database/assets/icon-256x256.jpg?rev=1079059\";s:2:\"1x\";s:74:\"https://ps.w.org/rvg-optimize-database/assets/icon-128x128.jpg?rev=1079059\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/rvg-optimize-database/assets/banner-1544x500.jpg?rev=1079581\";s:2:\"1x\";s:76:\"https://ps.w.org/rvg-optimize-database/assets/banner-772x250.jpg?rev=1079581\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(433, '_transient_timeout_plugin_slugs', '1576182748', 'no'),
(434, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:47:\"rvg-optimize-database/rvg-optimize-database.php\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(15, 10, '_edit_lock', '1570625736:1'),
(16, 12, '_edit_lock', '1570625744:1'),
(17, 14, '_edit_lock', '1570625757:1'),
(18, 16, '_edit_lock', '1570625779:1'),
(19, 18, '_edit_lock', '1570625792:1'),
(20, 20, '_edit_lock', '1570625803:1'),
(21, 22, '_edit_lock', '1570625812:1'),
(22, 24, '_edit_lock', '1570625820:1'),
(23, 26, '_menu_item_type', 'custom'),
(24, 26, '_menu_item_menu_item_parent', '0'),
(25, 26, '_menu_item_object_id', '26'),
(26, 26, '_menu_item_object', 'custom'),
(27, 26, '_menu_item_target', ''),
(28, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 26, '_menu_item_xfn', ''),
(30, 26, '_menu_item_url', 'your_website_url_here/'),
(31, 26, '_menu_item_orphaned', '1570625966'),
(32, 27, '_menu_item_type', 'post_type'),
(33, 27, '_menu_item_menu_item_parent', '0'),
(34, 27, '_menu_item_object_id', '12'),
(35, 27, '_menu_item_object', 'page'),
(36, 27, '_menu_item_target', ''),
(37, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 27, '_menu_item_xfn', ''),
(39, 27, '_menu_item_url', ''),
(40, 27, '_menu_item_orphaned', '1570625966'),
(41, 28, '_menu_item_type', 'post_type'),
(42, 28, '_menu_item_menu_item_parent', '0'),
(43, 28, '_menu_item_object_id', '10'),
(44, 28, '_menu_item_object', 'page'),
(45, 28, '_menu_item_target', ''),
(46, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 28, '_menu_item_xfn', ''),
(48, 28, '_menu_item_url', ''),
(49, 28, '_menu_item_orphaned', '1570625966'),
(50, 29, '_menu_item_type', 'post_type'),
(51, 29, '_menu_item_menu_item_parent', '0'),
(52, 29, '_menu_item_object_id', '22'),
(53, 29, '_menu_item_object', 'page'),
(54, 29, '_menu_item_target', ''),
(55, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 29, '_menu_item_xfn', ''),
(57, 29, '_menu_item_url', ''),
(58, 29, '_menu_item_orphaned', '1570625966'),
(59, 30, '_menu_item_type', 'post_type'),
(60, 30, '_menu_item_menu_item_parent', '0'),
(61, 30, '_menu_item_object_id', '24'),
(62, 30, '_menu_item_object', 'page'),
(63, 30, '_menu_item_target', ''),
(64, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 30, '_menu_item_xfn', ''),
(66, 30, '_menu_item_url', ''),
(67, 30, '_menu_item_orphaned', '1570625966'),
(68, 31, '_menu_item_type', 'post_type'),
(69, 31, '_menu_item_menu_item_parent', '0'),
(70, 31, '_menu_item_object_id', '18'),
(71, 31, '_menu_item_object', 'page'),
(72, 31, '_menu_item_target', ''),
(73, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 31, '_menu_item_xfn', ''),
(75, 31, '_menu_item_url', ''),
(76, 31, '_menu_item_orphaned', '1570625966'),
(77, 32, '_menu_item_type', 'post_type'),
(78, 32, '_menu_item_menu_item_parent', '0'),
(79, 32, '_menu_item_object_id', '16'),
(80, 32, '_menu_item_object', 'page'),
(81, 32, '_menu_item_target', ''),
(82, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 32, '_menu_item_xfn', ''),
(84, 32, '_menu_item_url', ''),
(85, 32, '_menu_item_orphaned', '1570625966'),
(86, 33, '_menu_item_type', 'post_type'),
(87, 33, '_menu_item_menu_item_parent', '0'),
(88, 33, '_menu_item_object_id', '20'),
(89, 33, '_menu_item_object', 'page'),
(90, 33, '_menu_item_target', ''),
(91, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 33, '_menu_item_xfn', ''),
(93, 33, '_menu_item_url', ''),
(94, 33, '_menu_item_orphaned', '1570625966'),
(95, 34, '_menu_item_type', 'post_type'),
(96, 34, '_menu_item_menu_item_parent', '0'),
(97, 34, '_menu_item_object_id', '14'),
(98, 34, '_menu_item_object', 'page'),
(99, 34, '_menu_item_target', ''),
(100, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 34, '_menu_item_xfn', ''),
(102, 34, '_menu_item_url', ''),
(103, 34, '_menu_item_orphaned', '1570625966'),
(104, 35, '_edit_lock', '1570625873:1'),
(105, 37, '_menu_item_type', 'custom'),
(106, 37, '_menu_item_menu_item_parent', '0'),
(107, 37, '_menu_item_object_id', '37'),
(108, 37, '_menu_item_object', 'custom'),
(109, 37, '_menu_item_target', ''),
(110, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 37, '_menu_item_xfn', ''),
(112, 37, '_menu_item_url', 'your_website_url_here/'),
(113, 37, '_menu_item_orphaned', '1570626023'),
(114, 38, '_menu_item_type', 'post_type'),
(115, 38, '_menu_item_menu_item_parent', '0'),
(116, 38, '_menu_item_object_id', '12'),
(117, 38, '_menu_item_object', 'page'),
(118, 38, '_menu_item_target', ''),
(119, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 38, '_menu_item_xfn', ''),
(121, 38, '_menu_item_url', ''),
(123, 39, '_menu_item_type', 'post_type'),
(124, 39, '_menu_item_menu_item_parent', '0'),
(125, 39, '_menu_item_object_id', '10'),
(126, 39, '_menu_item_object', 'page'),
(127, 39, '_menu_item_target', ''),
(128, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 39, '_menu_item_xfn', ''),
(130, 39, '_menu_item_url', ''),
(132, 40, '_menu_item_type', 'post_type'),
(133, 40, '_menu_item_menu_item_parent', '0'),
(134, 40, '_menu_item_object_id', '22'),
(135, 40, '_menu_item_object', 'page'),
(136, 40, '_menu_item_target', ''),
(137, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(138, 40, '_menu_item_xfn', ''),
(139, 40, '_menu_item_url', ''),
(141, 41, '_menu_item_type', 'post_type'),
(142, 41, '_menu_item_menu_item_parent', '0'),
(143, 41, '_menu_item_object_id', '24'),
(144, 41, '_menu_item_object', 'page'),
(145, 41, '_menu_item_target', ''),
(146, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(147, 41, '_menu_item_xfn', ''),
(148, 41, '_menu_item_url', ''),
(150, 42, '_menu_item_type', 'post_type'),
(151, 42, '_menu_item_menu_item_parent', '0'),
(152, 42, '_menu_item_object_id', '18'),
(153, 42, '_menu_item_object', 'page'),
(154, 42, '_menu_item_target', ''),
(155, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(156, 42, '_menu_item_xfn', ''),
(157, 42, '_menu_item_url', ''),
(159, 43, '_menu_item_type', 'post_type'),
(160, 43, '_menu_item_menu_item_parent', '0'),
(161, 43, '_menu_item_object_id', '16'),
(162, 43, '_menu_item_object', 'page'),
(163, 43, '_menu_item_target', ''),
(164, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(165, 43, '_menu_item_xfn', ''),
(166, 43, '_menu_item_url', ''),
(168, 44, '_menu_item_type', 'post_type'),
(169, 44, '_menu_item_menu_item_parent', '0'),
(170, 44, '_menu_item_object_id', '20'),
(171, 44, '_menu_item_object', 'page'),
(172, 44, '_menu_item_target', ''),
(173, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 44, '_menu_item_xfn', ''),
(175, 44, '_menu_item_url', ''),
(177, 45, '_menu_item_type', 'post_type'),
(178, 45, '_menu_item_menu_item_parent', '0'),
(179, 45, '_menu_item_object_id', '14'),
(180, 45, '_menu_item_object', 'page'),
(181, 45, '_menu_item_target', ''),
(182, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(183, 45, '_menu_item_xfn', ''),
(184, 45, '_menu_item_url', ''),
(186, 46, '_menu_item_type', 'post_type'),
(187, 46, '_menu_item_menu_item_parent', '0'),
(188, 46, '_menu_item_object_id', '35'),
(189, 46, '_menu_item_object', 'page'),
(190, 46, '_menu_item_target', ''),
(191, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 46, '_menu_item_xfn', ''),
(193, 46, '_menu_item_url', ''),
(198, 47, '_edit_lock', '1575235862:1'),
(201, 49, '_wp_attached_file', '2019/10/blog_post_img2.png'),
(202, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:458;s:4:\"file\";s:26:\"2019/10/blog_post_img2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"blog_post_img2-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"blog_post_img2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"blog_post_img2-730x446.png\";s:5:\"width\";i:730;s:6:\"height\";i:446;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"applayers-recent-post\";a:4:{s:4:\"file\";s:24:\"blog_post_img2-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"applayers_recent_post\";a:4:{s:4:\"file\";s:24:\"blog_post_img2-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 50, '_wp_attached_file', '2019/10/blog_post_img3.png'),
(204, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:458;s:4:\"file\";s:26:\"2019/10/blog_post_img3.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"blog_post_img3-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"blog_post_img3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"blog_post_img3-730x446.png\";s:5:\"width\";i:730;s:6:\"height\";i:446;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"applayers-recent-post\";a:4:{s:4:\"file\";s:24:\"blog_post_img3-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"applayers_recent_post\";a:4:{s:4:\"file\";s:24:\"blog_post_img3-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 47, '_thumbnail_id', '50'),
(207, 52, '_edit_lock', '1575234859:1'),
(209, 52, '_thumbnail_id', '49'),
(210, 54, '_edit_lock', '1575234997:1'),
(216, 56, '_wp_attached_file', '2019/10/logo.png'),
(217, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:134;s:6:\"height\";i:31;s:4:\"file\";s:16:\"2019/10/logo.png\";s:5:\"sizes\";a:2:{s:21:\"applayers-recent-post\";a:4:{s:4:\"file\";s:14:\"logo-80x31.png\";s:5:\"width\";i:80;s:6:\"height\";i:31;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"applayers_recent_post\";a:4:{s:4:\"file\";s:14:\"logo-80x31.png\";s:5:\"width\";i:80;s:6:\"height\";i:31;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 69, '_wp_attached_file', '2019/10/blog_post_img1.png'),
(249, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:458;s:4:\"file\";s:26:\"2019/10/blog_post_img1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"blog_post_img1-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"blog_post_img1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"blog_post_img1-730x446.png\";s:5:\"width\";i:730;s:6:\"height\";i:446;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"applayers-recent-post\";a:4:{s:4:\"file\";s:24:\"blog_post_img1-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"applayers_recent_post\";a:4:{s:4:\"file\";s:24:\"blog_post_img1-80x80.png\";s:5:\"width\";i:80;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(253, 54, '_thumbnail_id', '69');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(10, 1, '2019-10-09 12:57:58', '2019-10-09 12:57:58', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-10-09 12:57:58', '2019-10-09 12:57:58', '', 0, 'your_website_url_here/?page_id=10', 0, 'page', '', 0),
(12, 1, '2019-10-09 12:58:07', '2019-10-09 12:58:07', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-10-09 12:58:07', '2019-10-09 12:58:07', '', 0, 'your_website_url_here/?page_id=12', 0, 'page', '', 0),
(14, 1, '2019-10-09 12:58:15', '2019-10-09 12:58:15', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2019-10-09 12:58:15', '2019-10-09 12:58:15', '', 0, 'your_website_url_here/?page_id=14', 0, 'page', '', 0),
(16, 1, '2019-10-09 12:58:27', '2019-10-09 12:58:27', '', 'Priceing', '', 'publish', 'closed', 'closed', '', 'priceing', '', '', '2019-10-09 12:58:27', '2019-10-09 12:58:27', '', 0, 'your_website_url_here/?page_id=16', 0, 'page', '', 0),
(18, 1, '2019-10-09 12:58:49', '2019-10-09 12:58:49', '', 'How it work', '', 'publish', 'closed', 'closed', '', 'how-it-work', '', '', '2019-10-09 12:58:49', '2019-10-09 12:58:49', '', 0, 'your_website_url_here/?page_id=18', 0, 'page', '', 0),
(20, 1, '2019-10-09 12:59:01', '2019-10-09 12:59:01', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-10-09 12:59:01', '2019-10-09 12:59:01', '', 0, 'your_website_url_here/?page_id=20', 0, 'page', '', 0),
(22, 1, '2019-10-09 12:59:11', '2019-10-09 12:59:11', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2019-10-09 12:59:11', '2019-10-09 12:59:11', '', 0, 'your_website_url_here/?page_id=22', 0, 'page', '', 0),
(24, 1, '2019-10-09 12:59:21', '2019-10-09 12:59:21', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-09 12:59:21', '2019-10-09 12:59:21', '', 0, 'your_website_url_here/?page_id=24', 0, 'page', '', 0),
(26, 1, '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2019-10-09 12:59:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2019-10-09 12:59:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2019-10-09 12:59:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2019-10-09 12:59:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2019-10-09 12:59:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-10-09 12:59:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2019-10-09 12:59:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2019-10-09 12:59:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 12:59:26', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2019-10-09 13:00:15', '2019-10-09 13:00:15', '', 'Testimonial', '', 'publish', 'closed', 'closed', '', 'testimonial', '', '', '2019-10-09 13:00:15', '2019-10-09 13:00:15', '', 0, 'your_website_url_here/?page_id=35', 0, 'page', '', 0),
(37, 1, '2019-10-09 13:00:23', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-09 13:00:23', '0000-00-00 00:00:00', '', 0, 'your_website_url_here/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-10-09 13:01:20', '2019-10-09 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2019-10-09 13:03:10', '2019-10-09 13:03:10', '', 0, 'your_website_url_here/?p=38', 8, 'nav_menu_item', '', 0),
(39, 1, '2019-10-09 13:01:20', '2019-10-09 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2019-10-09 13:03:10', '2019-10-09 13:03:10', '', 0, 'your_website_url_here/?p=39', 9, 'nav_menu_item', '', 0),
(40, 1, '2019-10-09 13:01:20', '2019-10-09 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2019-10-09 13:03:10', '2019-10-09 13:03:10', '', 0, 'your_website_url_here/?p=40', 2, 'nav_menu_item', '', 0),
(41, 1, '2019-10-09 13:01:20', '2019-10-09 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2019-10-09 13:03:10', '2019-10-09 13:03:10', '', 0, 'your_website_url_here/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2019-10-09 13:01:20', '2019-10-09 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2019-10-09 13:03:10', '2019-10-09 13:03:10', '', 0, 'your_website_url_here/?p=42', 4, 'nav_menu_item', '', 0),
(43, 1, '2019-10-09 13:01:20', '2019-10-09 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2019-10-09 13:03:10', '2019-10-09 13:03:10', '', 0, 'your_website_url_here/?p=43', 5, 'nav_menu_item', '', 0),
(44, 1, '2019-10-09 13:01:20', '2019-10-09 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2019-10-09 13:03:10', '2019-10-09 13:03:10', '', 0, 'your_website_url_here/?p=44', 3, 'nav_menu_item', '', 0),
(45, 1, '2019-10-09 13:01:20', '2019-10-09 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2019-10-09 13:03:10', '2019-10-09 13:03:10', '', 0, 'your_website_url_here/?p=45', 6, 'nav_menu_item', '', 0),
(46, 1, '2019-10-09 13:01:20', '2019-10-09 13:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-10-09 13:03:10', '2019-10-09 13:03:10', '', 0, 'your_website_url_here/?p=46', 7, 'nav_menu_item', '', 0),
(47, 1, '2019-10-09 13:06:49', '2019-10-09 13:06:49', '<!-- wp:paragraph -->\n<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n<!-- /wp:paragraph -->', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks', '', 'publish', 'open', 'open', '', 'all-the-lorem-ipsum-generators-on-the-internet-tend-to-repeat-predefined-chunks', '', '', '2019-11-28 21:46:58', '2019-11-28 21:46:58', '', 0, 'your_website_url_here/?p=47', 0, 'post', '', 0),
(49, 1, '2019-10-09 13:06:38', '2019-10-09 13:06:38', '', 'blog_post_img2', '', 'inherit', 'open', 'closed', '', 'blog_post_img2', '', '', '2019-10-09 13:06:38', '2019-10-09 13:06:38', '', 47, 'your_website_url_here/wp-content/uploads/2019/10/blog_post_img2.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2019-10-09 13:06:39', '2019-10-09 13:06:39', '', 'blog_post_img3', '', 'inherit', 'open', 'closed', '', 'blog_post_img3', '', '', '2019-10-09 13:06:39', '2019-10-09 13:06:39', '', 47, 'your_website_url_here/wp-content/uploads/2019/10/blog_post_img3.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2019-10-09 13:07:15', '2019-10-09 13:07:15', '<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>\n<!-- /wp:paragraph -->', 'There are many variations of passages of Lorem Ipsum available.', '', 'publish', 'open', 'open', '', 'there-are-many-variations-of-passages-of-lorem-ipsum-available', '', '', '2019-11-28 21:46:23', '2019-11-28 21:46:23', '', 0, 'your_website_url_here/?p=52', 0, 'post', '', 0),
(54, 1, '2019-10-09 13:07:44', '2019-10-09 13:07:44', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>\n<!-- /wp:paragraph -->', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry', '', '', '2019-12-01 21:16:33', '2019-12-01 21:16:33', '', 0, 'your_website_url_here/?p=54', 0, 'post', '', 0),
(56, 1, '2019-10-09 13:57:40', '2019-10-09 13:57:40', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-10-09 13:57:40', '2019-10-09 13:57:40', '', 0, 'your_website_url_here/wp-content/uploads/2019/10/logo.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2019-12-01 21:16:22', '2019-12-01 21:16:22', '', 'blog_post_img1', '', 'inherit', 'open', 'closed', '', 'blog_post_img1', '', '', '2019-12-01 21:16:22', '2019-12-01 21:16:22', '', 54, 'your_website_url_here/wp-content/uploads/2019/10/blog_post_img1.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main-menu', 'main-menu', 0),
(11, 'Food &amp; Drink', 'food-drink', 0),
(12, 'Music', 'music', 0),
(13, 'Travel', 'travel', 0),
(14, 'Actions &amp; Offers', 'actions-offers', 0),
(15, 'Fresh Releases', 'fresh-releases', 0),
(16, 'Updates', 'updates', 0),
(17, 'Company News', 'company-news', 0),
(18, 'Food &amp; Drink', 'food-drink', 0),
(19, 'Music', 'music', 0),
(20, 'Travel', 'travel', 0),
(21, 'Actions &amp; Offers', 'actions-offers', 0),
(22, 'Fresh Releases', 'fresh-releases', 0),
(23, 'Updates', 'updates', 0),
(24, 'Company News', 'company-news', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(47, 15, 0),
(47, 16, 0),
(47, 17, 0),
(47, 20, 0),
(47, 21, 0),
(47, 23, 0),
(52, 12, 0),
(52, 13, 0),
(52, 15, 0),
(52, 17, 0),
(52, 19, 0),
(52, 22, 0),
(52, 24, 0),
(54, 11, 0),
(54, 14, 0),
(54, 15, 0),
(54, 17, 0),
(54, 18, 0),
(54, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 9),
(11, 11, 'category', '', 0, 1),
(12, 12, 'category', '', 0, 1),
(13, 13, 'category', '', 0, 1),
(14, 14, 'category', '', 0, 1),
(15, 15, 'category', '', 0, 3),
(16, 16, 'category', '', 0, 1),
(17, 17, 'category', '', 0, 3),
(18, 18, 'post_tag', '', 0, 1),
(19, 19, 'post_tag', '', 0, 1),
(20, 20, 'post_tag', '', 0, 1),
(21, 21, 'post_tag', '', 0, 1),
(22, 22, 'post_tag', '', 0, 1),
(23, 23, 'post_tag', '', 0, 1),
(24, 24, 'post_tag', '', 0, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
