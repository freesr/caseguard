-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 01, 2024 at 03:42 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caseguard`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-05-28 02:29:00', '2024-05-28 02:29:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=360 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/caseguard', 'yes'),
(2, 'home', 'http://localhost/caseguard', 'yes'),
(3, 'blogname', 'caseguard', 'yes'),
(4, 'blogdescription', 'Caseguard Assesment', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vikasedukulla@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'caseguard', 'yes'),
(41, 'stylesheet', 'caseguard', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/New_York', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1732415339', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(296, 'category_children', 'a:0:{}', 'yes'),
(358, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1717209350;s:8:\"response\";a:1:{s:23:\"elementor/elementor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:6:\"3.21.8\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/elementor.3.21.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=2597493\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=2597493\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=3005087\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=3005087\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"5.3.2\";s:23:\"elementor/elementor.php\";s:6:\"3.21.4\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(309, 'theme_mods_caseguard-o', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1717147956;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(106, 'cron', 'a:9:{i:1717216140;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1717252140;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1717252149;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1717295340;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717295349;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717295350;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717468312;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1717554540;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1717209345;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(356, '_site_transient_timeout_theme_roots', '1717211149', 'no'),
(357, '_site_transient_theme_roots', 'a:1:{s:9:\"caseguard\";s:7:\"/themes\";}', 'no'),
(166, 'theme_mods_demo', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716867209;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(167, 'theme_mods_caseguard222', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1717063604;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(130, '_site_transient_timeout_browser_c92baae71318dc81de51a663df2f8b4f', '1717468150', 'no'),
(131, '_site_transient_browser_c92baae71318dc81de51a663df2f8b4f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"125.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(132, '_site_transient_timeout_php_check_d876ede602bb9ac9456a7d884ebdc1f3', '1717468150', 'no'),
(133, '_site_transient_php_check_d876ede602bb9ac9456a7d884ebdc1f3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(135, 'can_compress_scripts', '1', 'yes'),
(187, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(148, 'theme_mods_twentytwentyfour', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716863366;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(149, 'current_theme', 'Caswguard', 'yes'),
(150, 'theme_mods_caseguard', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1717146845;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(152, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(153, 'recently_activated', 'a:0:{}', 'yes'),
(159, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1717209349;s:7:\"checked\";a:1:{s:9:\"caseguard\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(161, 'theme_mods_oceanwp', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716865792;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:7:\"sidebar\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:14:\"search_sidebar\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:11:\"footer-four\";a:0:{}}}}', 'no'),
(188, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":0}', 'yes'),
(265, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(275, 'WPLANG', '', 'yes'),
(276, 'new_admin_email', 'vikasedukulla@gmail.com', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1717140895:1'),
(4, 8, '_edit_lock', '1717136329:1'),
(7, 8, '_wp_trash_meta_status', 'publish'),
(8, 8, '_wp_trash_meta_time', '1717136478'),
(9, 8, '_wp_desired_post_slug', 'sample'),
(10, 1, '_wp_trash_meta_status', 'publish'),
(11, 1, '_wp_trash_meta_time', '1717136481'),
(12, 1, '_wp_desired_post_slug', 'hello-world'),
(13, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(14, 11, '_edit_lock', '1717136516:1'),
(19, 11, '_wp_trash_meta_status', 'publish'),
(20, 11, '_wp_trash_meta_time', '1717136867'),
(21, 11, '_wp_desired_post_slug', 'black-1'),
(22, 14, '_edit_lock', '1717152918:1'),
(25, 16, '_wp_attached_file', '2024/05/facebook_logo.png'),
(26, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:25:\"2024/05/facebook_logo.png\";s:8:\"filesize\";i:493;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 17, '_wp_attached_file', '2024/05/IMG_1_Black.jpg'),
(28, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1919;s:6:\"height\";i:1281;s:4:\"file\";s:23:\"2024/05/IMG_1_Black.jpg\";s:8:\"filesize\";i:122919;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"IMG_1_Black-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4915;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"IMG_1_Black-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54783;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"IMG_1_Black-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2311;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"IMG_1_Black-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32905;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"IMG_1_Black-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:110171;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 18, '_wp_attached_file', '2024/05/IMG_2_Blue.jpg'),
(30, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2024/05/IMG_2_Blue.jpg\";s:8:\"filesize\";i:211849;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"IMG_2_Blue-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7580;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"IMG_2_Blue-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81862;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"IMG_2_Blue-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3496;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"IMG_2_Blue-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46990;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"IMG_2_Blue-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:177557;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 19, '_wp_attached_file', '2024/05/IMG_3_Black.jpg'),
(32, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1919;s:6:\"height\";i:1277;s:4:\"file\";s:23:\"2024/05/IMG_3_Black.jpg\";s:8:\"filesize\";i:345492;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"IMG_3_Black-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8723;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"IMG_3_Black-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:135574;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"IMG_3_Black-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3754;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"IMG_3_Black-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75017;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"IMG_3_Black-1536x1022.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1022;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:280808;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 20, '_wp_attached_file', '2024/05/IMG_4_Blue.jpg'),
(34, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2024/05/IMG_4_Blue.jpg\";s:8:\"filesize\";i:389464;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"IMG_4_Blue-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8149;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"IMG_4_Blue-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:120912;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"IMG_4_Blue-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3664;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"IMG_4_Blue-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64404;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"IMG_4_Blue-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:291328;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 21, '_wp_attached_file', '2024/05/IMG_5_Green.jpg'),
(36, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2024/05/IMG_5_Green.jpg\";s:8:\"filesize\";i:189646;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"IMG_5_Green-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6753;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"IMG_5_Green-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66819;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"IMG_5_Green-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3590;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"IMG_5_Green-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36182;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"IMG_5_Green-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:162142;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 22, '_wp_attached_file', '2024/05/IMG_6_Green.jpg'),
(38, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2024/05/IMG_6_Green.jpg\";s:8:\"filesize\";i:133593;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"IMG_6_Green-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4528;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"IMG_6_Green-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52746;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"IMG_6_Green-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2312;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"IMG_6_Green-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28722;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"IMG_6_Green-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:121161;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 23, '_wp_attached_file', '2024/05/left_arrow.png'),
(40, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:22:\"2024/05/left_arrow.png\";s:8:\"filesize\";i:366;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 24, '_wp_attached_file', '2024/05/linkdin_logo.png'),
(42, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:41;s:6:\"height\";i:41;s:4:\"file\";s:24:\"2024/05/linkdin_logo.png\";s:8:\"filesize\";i:555;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 25, '_wp_attached_file', '2024/05/right_arrow.png'),
(44, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:23:\"2024/05/right_arrow.png\";s:8:\"filesize\";i:528;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 26, '_wp_attached_file', '2024/05/twitter_logo.png'),
(46, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:46;s:6:\"height\";i:39;s:4:\"file\";s:24:\"2024/05/twitter_logo.png\";s:8:\"filesize\";i:732;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 27, '_wp_attached_file', '2024/05/youtube_logo.png'),
(48, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:24:\"2024/05/youtube_logo.png\";s:8:\"filesize\";i:407;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 17, '_wp_attachment_image_alt', 'Black 1'),
(57, 19, '_wp_attachment_image_alt', 'Black 2'),
(104, 14, '_wp_trash_meta_status', 'private'),
(56, 34, '_edit_lock', '1717190857:1'),
(68, 41, '_edit_lock', '1717190837:1'),
(69, 20, '_wp_attachment_image_alt', 'Blue 1'),
(73, 18, '_wp_attachment_image_alt', 'Blue 2'),
(72, 43, '_edit_lock', '1717190826:1'),
(76, 45, '_edit_lock', '1717190809:1'),
(77, 22, '_wp_attachment_image_alt', 'Green 1'),
(80, 47, '_edit_lock', '1717190799:1'),
(81, 21, '_wp_attachment_image_alt', 'Green 2'),
(102, 34, '_thumbnail_id', '19'),
(84, 49, '_edit_lock', '1717150702:1'),
(103, 14, '_edit_last', '1'),
(87, 14, '_thumbnail_id', '17'),
(90, 47, '_thumbnail_id', '21'),
(93, 45, '_thumbnail_id', '22'),
(96, 43, '_thumbnail_id', '18'),
(99, 41, '_thumbnail_id', '20'),
(105, 14, '_wp_trash_meta_time', '1717189008'),
(106, 14, '_wp_desired_post_slug', 'black-1'),
(119, 59, '_edit_lock', '1717209347:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-05-28 02:29:00', '2024-05-28 02:29:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2024-05-31 06:21:21', '2024-05-31 06:21:21', '', 0, 'http://localhost/caseguard/?p=1', 0, 'post', '', 1),
(2, 1, '2024-05-28 02:29:00', '2024-05-28 02:29:00', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/caseguard/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2024-05-28 02:29:00', '2024-05-28 02:29:00', '', 0, 'http://localhost/caseguard/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-05-28 02:29:00', '2024-05-28 02:29:00', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/caseguard.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-05-28 02:29:00', '2024-05-28 02:29:00', '', 0, 'http://localhost/caseguard/?page_id=3', 0, 'page', '', 0),
(4, 1, '2024-05-28 02:29:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-28 02:29:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/caseguard/?p=4', 0, 'post', '', 0),
(5, 1, '2024-05-30 10:07:43', '2024-05-30 10:07:43', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does everybody know that pig named Lorem Ipsum? An ‘extremely credible source’ has called my office and told me that Barack Obama’s placeholder text is a fraud.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text {\"mediaId\":17,\"mediaLink\":\"http://localhost/caseguard/img_1_black/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\"} -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'black-1', '', 'publish', 'closed', 'closed', '', 'black-1', '', '', '2024-05-31 06:52:56', '2024-05-31 06:52:56', '', 0, 'http://localhost/caseguard/?page_id=5', -3, 'page', '', 0),
(6, 1, '2024-05-30 10:07:43', '2024-05-30 10:07:43', '<!-- wp:paragraph -->\n<p>balck 1</p>\n<!-- /wp:paragraph -->', 'Black 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2024-05-30 10:07:43', '2024-05-30 10:07:43', '', 5, 'http://localhost/caseguard/?p=6', 0, 'revision', '', 0),
(7, 1, '2024-05-30 10:11:58', '2024-05-30 10:11:58', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does everybody know that pig named Lorem Ipsum? An ‘extremely credible source’ has called my office and told me that Barack Obama’s placeholder text is a fraud.</p>\n<!-- /wp:paragraph -->', 'Black 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2024-05-30 10:11:58', '2024-05-30 10:11:58', '', 5, 'http://localhost/caseguard/?p=7', 0, 'revision', '', 0),
(8, 1, '2024-05-31 06:19:38', '2024-05-31 06:19:38', '', 'sample', '', 'trash', 'open', 'open', '', 'sample__trashed', '', '', '2024-05-31 06:21:18', '2024-05-31 06:21:18', '', 0, 'http://localhost/caseguard/?p=8', 0, 'post', '', 0),
(9, 1, '2024-05-31 06:19:32', '2024-05-31 06:19:32', '', 'sample', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2024-05-31 06:19:32', '2024-05-31 06:19:32', '', 8, 'http://localhost/caseguard/?p=9', 0, 'revision', '', 0),
(10, 1, '2024-05-31 06:21:21', '2024-05-31 06:21:21', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-05-31 06:21:21', '2024-05-31 06:21:21', '', 1, 'http://localhost/caseguard/?p=10', 0, 'revision', '', 0),
(11, 1, '2024-05-31 06:21:55', '2024-05-31 06:21:55', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Lorum Ipusi=un</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorum Ipusi=un</p>\n<!-- /wp:paragraph -->', 'Black 1', '', 'trash', 'open', 'open', '', 'black-1__trashed', '', '', '2024-05-31 06:27:47', '2024-05-31 06:27:47', '', 0, 'http://localhost/caseguard/?p=11', 0, 'post', '', 0),
(12, 1, '2024-05-31 06:21:55', '2024-05-31 06:21:55', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Lorum Ipusi=un</p>\n<!-- /wp:paragraph -->', 'Black 1', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-05-31 06:21:55', '2024-05-31 06:21:55', '', 11, 'http://localhost/caseguard/?p=12', 0, 'revision', '', 0),
(13, 1, '2024-05-31 06:22:29', '2024-05-31 06:22:29', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Lorum Ipusi=un</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorum Ipusi=un</p>\n<!-- /wp:paragraph -->', 'Black 1', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-05-31 06:22:29', '2024-05-31 06:22:29', '', 11, 'http://localhost/caseguard/?p=13', 0, 'revision', '', 0),
(14, 1, '2024-05-31 06:28:15', '2024-05-31 06:28:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pharetra diam sit amet nisl suscipit adipiscing bibendum est. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas. Tortor at risus viverra adipiscing at in tellus. Eget egestas purus viverra accumsan in nisl. Ac tincidunt vitae semper quis lectus nulla at. Vehicula ipsum a arcu cursus vitae congue mauris. Velit dignissim sodales ut eu. Mauris pharetra et ultrices neque ornare aenean. At imperdiet dui accumsan sit amet nulla facilisi morbi. Pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem. Nullam non nisi est sit amet facilisis magna etiam tempor. Imperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor. Odio facilisis mauris sit amet massa vitae tortor condimentum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17\"/><figcaption class=\"wp-element-caption\">balck 1</figcaption></figure>\n<!-- /wp:image -->', 'black-1', '', 'trash', 'open', 'open', '', 'black-1__trashed-2', '', '', '2024-05-31 16:56:48', '2024-05-31 20:56:48', '', 0, 'http://localhost/caseguard/?p=14', 0, 'post', '', 0),
(15, 1, '2024-05-31 06:28:15', '2024-05-31 06:28:15', '<!-- wp:paragraph -->\n<p>Black </p>\n<!-- /wp:paragraph -->', 'black-1', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2024-05-31 06:28:15', '2024-05-31 06:28:15', '', 14, 'http://localhost/caseguard/?p=15', 0, 'revision', '', 0),
(16, 1, '2024-05-31 06:34:16', '2024-05-31 06:34:16', '', 'facebook_logo', '', 'inherit', 'open', 'closed', '', 'facebook_logo', '', '', '2024-05-31 06:34:16', '2024-05-31 06:34:16', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/facebook_logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2024-05-31 06:34:17', '2024-05-31 06:34:17', 'balck 1', 'IMG_1_Black', 'balck 1', 'inherit', 'open', 'closed', '', 'img_1_black', '', '', '2024-05-31 06:21:08', '2024-05-31 10:21:08', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2024-05-31 06:34:18', '2024-05-31 06:34:18', 'Blue 2', 'IMG_2_Blue', 'Blue 2', 'inherit', 'open', 'closed', '', 'img_2_blue', '', '', '2024-05-31 06:02:24', '2024-05-31 10:02:24', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/IMG_2_Blue.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2024-05-31 06:34:19', '2024-05-31 06:34:19', 'black 2', 'IMG_3_Black', 'black 2', 'inherit', 'open', 'closed', '', 'img_3_black', '', '', '2024-05-31 04:50:13', '2024-05-31 08:50:13', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/IMG_3_Black.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2024-05-31 06:34:19', '2024-05-31 06:34:19', 'Blue 1', 'IMG_4_Blue', 'Blue 1', 'inherit', 'open', 'closed', '', 'img_4_blue', '', '', '2024-05-31 06:01:22', '2024-05-31 10:01:22', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/IMG_4_Blue.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2024-05-31 06:34:20', '2024-05-31 06:34:20', 'Green 2', 'IMG_5_Green', 'Green 2', 'inherit', 'open', 'closed', '', 'img_5_green', '', '', '2024-05-31 06:05:07', '2024-05-31 10:05:07', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/IMG_5_Green.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2024-05-31 06:34:21', '2024-05-31 06:34:21', 'Green 1', 'IMG_6_Green', 'Green 1', 'inherit', 'open', 'closed', '', 'img_6_green', '', '', '2024-05-31 06:03:13', '2024-05-31 10:03:13', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/IMG_6_Green.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 'left_arrow', '', 'inherit', 'open', 'closed', '', 'left_arrow', '', '', '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/left_arrow.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 'linkdin_logo', '', 'inherit', 'open', 'closed', '', 'linkdin_logo', '', '', '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/linkdin_logo.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 'right_arrow', '', 'inherit', 'open', 'closed', '', 'right_arrow', '', '', '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/right_arrow.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 'twitter_logo', '', 'inherit', 'open', 'closed', '', 'twitter_logo', '', '', '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/twitter_logo.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 'youtube_logo', '', 'inherit', 'open', 'closed', '', 'youtube_logo', '', '', '2024-05-31 06:34:22', '2024-05-31 06:34:22', '', 0, 'http://localhost/caseguard/wp-content/uploads/2024/05/youtube_logo.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2024-05-31 06:36:59', '2024-05-31 06:36:59', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does everybody know that pig named Lorem Ipsum? An ‘extremely credible source’ has called my office and told me that Barack Obama’s placeholder text is a fraud.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text {\"mediaId\":17,\"mediaLink\":\"http://localhost/caseguard/img_1_black/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\"} -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'Black 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2024-05-31 06:36:59', '2024-05-31 06:36:59', '', 5, 'http://localhost/caseguard/?p=28', 0, 'revision', '', 0),
(29, 1, '2024-05-31 06:52:56', '2024-05-31 06:52:56', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does everybody know that pig named Lorem Ipsum? An ‘extremely credible source’ has called my office and told me that Barack Obama’s placeholder text is a fraud.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text {\"mediaId\":17,\"mediaLink\":\"http://localhost/caseguard/img_1_black/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\"} -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'black-1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2024-05-31 06:52:56', '2024-05-31 06:52:56', '', 5, 'http://localhost/caseguard/?p=29', 0, 'revision', '', 0),
(30, 1, '2024-05-31 03:35:48', '2024-05-31 07:35:48', '<!-- wp:paragraph -->\n<p>Black </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17\"/><figcaption class=\"wp-element-caption\">balck 1</figcaption></figure>\n<!-- /wp:image -->', 'black-1', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2024-05-31 03:35:48', '2024-05-31 07:35:48', '', 14, 'http://localhost/caseguard/?p=30', 0, 'revision', '', 0),
(51, 1, '2024-05-31 06:23:13', '2024-05-31 10:23:13', '<!-- wp:paragraph -->\n<p>Magna fringilla urna porttitor rhoncus. Faucibus purus in massa tempor nec. Morbi non arcu risus quis varius quam. Nulla facilisi cras fermentum odio eu feugiat pretium nibh. Nisl condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Mi proin sed libero enim sed faucibus turpis in. Massa eget egestas purus viverra accumsan in. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Id faucibus nisl tincidunt eget. Tortor consequat id porta nibh venenatis. Id faucibus nisl tincidunt eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":19,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_3_Black-1024x681.jpg\" alt=\"Black 2\" class=\"wp-image-19\"/><figcaption class=\"wp-element-caption\">black 2</figcaption></figure>\n<!-- /wp:image -->', 'black-2', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-31 06:23:13', '2024-05-31 10:23:13', '', 34, 'http://localhost/caseguard/?p=51', 0, 'revision', '', 0),
(32, 1, '2024-05-31 04:13:40', '2024-05-31 08:13:40', '<!-- wp:paragraph -->\n<p>Black </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17\"/><figcaption class=\"wp-element-caption\">balck 1</figcaption></figure>\n<!-- /wp:image -->', 'black-1', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2024-05-31 04:13:40', '2024-05-31 08:13:40', '', 14, 'http://localhost/caseguard/?p=32', 0, 'revision', '', 0),
(34, 1, '2024-05-31 04:51:00', '2024-05-31 08:51:00', '<!-- wp:paragraph -->\n<p>Magna fringilla urna porttitor rhoncus. Faucibus purus in massa tempor nec. Morbi non arcu risus quis varius quam. Nulla facilisi cras fermentum odio eu feugiat pretium nibh. Nisl condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Mi proin sed libero enim sed faucibus turpis in. Massa eget egestas purus viverra accumsan in. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Id faucibus nisl tincidunt eget. Tortor consequat id porta nibh venenatis. Id faucibus nisl tincidunt eget.</p>\n<!-- /wp:paragraph -->', 'Black 2', '', 'publish', 'open', 'open', '', 'balck-2', '', '', '2024-05-31 17:29:53', '2024-05-31 21:29:53', '', 0, 'http://localhost/caseguard/?p=34', 0, 'post', '', 0),
(35, 1, '2024-05-31 04:51:00', '2024-05-31 08:51:00', '<!-- wp:paragraph -->\n<p>Thi is balck file</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":19,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_3_Black-1024x681.jpg\" alt=\"Black 2\" class=\"wp-image-19\"/><figcaption class=\"wp-element-caption\">black 2</figcaption></figure>\n<!-- /wp:image -->', 'balck-2', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-31 04:51:00', '2024-05-31 08:51:00', '', 34, 'http://localhost/caseguard/?p=35', 0, 'revision', '', 0),
(36, 1, '2024-05-31 05:45:32', '2024-05-31 09:45:32', '<!-- wp:paragraph -->\n<p>Black </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17\"/><figcaption class=\"wp-element-caption\">balck 1</figcaption></figure>\n<!-- /wp:image -->', 'black-1', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2024-05-31 05:45:32', '2024-05-31 09:45:32', '', 14, 'http://localhost/caseguard/?p=36', 0, 'revision', '', 0),
(38, 1, '2024-05-31 05:57:15', '2024-05-31 09:57:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pharetra diam sit amet nisl suscipit adipiscing bibendum est. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas. Tortor at risus viverra adipiscing at in tellus. Eget egestas purus viverra accumsan in nisl. Ac tincidunt vitae semper quis lectus nulla at. Vehicula ipsum a arcu cursus vitae congue mauris. Velit dignissim sodales ut eu. Mauris pharetra et ultrices neque ornare aenean. At imperdiet dui accumsan sit amet nulla facilisi morbi. Pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem. Nullam non nisi est sit amet facilisis magna etiam tempor. Imperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor. Odio facilisis mauris sit amet massa vitae tortor condimentum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17\"/><figcaption class=\"wp-element-caption\">balck 1</figcaption></figure>\n<!-- /wp:image -->', 'black-1', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2024-05-31 05:57:15', '2024-05-31 09:57:15', '', 14, 'http://localhost/caseguard/?p=38', 0, 'revision', '', 0),
(58, 1, '2024-05-31 17:29:53', '2024-05-31 21:29:53', '<!-- wp:paragraph -->\n<p>Magna fringilla urna porttitor rhoncus. Faucibus purus in massa tempor nec. Morbi non arcu risus quis varius quam. Nulla facilisi cras fermentum odio eu feugiat pretium nibh. Nisl condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Mi proin sed libero enim sed faucibus turpis in. Massa eget egestas purus viverra accumsan in. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Id faucibus nisl tincidunt eget. Tortor consequat id porta nibh venenatis. Id faucibus nisl tincidunt eget.</p>\n<!-- /wp:paragraph -->', 'Black 2', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-31 17:29:53', '2024-05-31 21:29:53', '', 34, 'http://localhost/caseguard/?p=58', 0, 'revision', '', 0),
(40, 1, '2024-05-31 05:59:29', '2024-05-31 09:59:29', '<!-- wp:paragraph -->\n<p>Magna fringilla urna porttitor rhoncus. Faucibus purus in massa tempor nec. Morbi non arcu risus quis varius quam. Nulla facilisi cras fermentum odio eu feugiat pretium nibh. Nisl condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Mi proin sed libero enim sed faucibus turpis in. Massa eget egestas purus viverra accumsan in. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Id faucibus nisl tincidunt eget. Tortor consequat id porta nibh venenatis. Id faucibus nisl tincidunt eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":19,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_3_Black-1024x681.jpg\" alt=\"Black 2\" class=\"wp-image-19\"/><figcaption class=\"wp-element-caption\">black 2</figcaption></figure>\n<!-- /wp:image -->', 'balck-2', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-31 05:59:29', '2024-05-31 09:59:29', '', 34, 'http://localhost/caseguard/?p=40', 0, 'revision', '', 0),
(41, 1, '2024-05-31 06:01:47', '2024-05-31 10:01:47', '<!-- wp:paragraph -->\n<p>Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Libero volutpat sed cras ornare arcu. Egestas sed sed risus pretium quam vulputate dignissim suspendisse in. Quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna. Cursus metus aliquam eleifend mi in. Sit amet consectetur adipiscing elit ut aliquam. Nisl purus in mollis nunc sed id semper risus in. Adipiscing elit ut aliquam purus sit amet. Quis hendrerit dolor magna eget est lorem ipsum dolor. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim. Nec ultrices dui sapien eget mi proin sed libero enim. At imperdiet dui accumsan sit amet. Dolor sit amet consectetur adipiscing elit. In hac habitasse platea dictumst. Venenatis a condimentum vitae sapien pellentesque habitant. Egestas diam in arcu cursus euismod quis. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Habitasse platea dictumst quisque sagittis purus.</p>\n<!-- /wp:paragraph -->', 'Blue 1', '', 'publish', 'open', 'open', '', 'blue-1', '', '', '2024-05-31 17:29:41', '2024-05-31 21:29:41', '', 0, 'http://localhost/caseguard/?p=41', 0, 'post', '', 0),
(57, 1, '2024-05-31 17:29:41', '2024-05-31 21:29:41', '<!-- wp:paragraph -->\n<p>Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Libero volutpat sed cras ornare arcu. Egestas sed sed risus pretium quam vulputate dignissim suspendisse in. Quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna. Cursus metus aliquam eleifend mi in. Sit amet consectetur adipiscing elit ut aliquam. Nisl purus in mollis nunc sed id semper risus in. Adipiscing elit ut aliquam purus sit amet. Quis hendrerit dolor magna eget est lorem ipsum dolor. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim. Nec ultrices dui sapien eget mi proin sed libero enim. At imperdiet dui accumsan sit amet. Dolor sit amet consectetur adipiscing elit. In hac habitasse platea dictumst. Venenatis a condimentum vitae sapien pellentesque habitant. Egestas diam in arcu cursus euismod quis. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Habitasse platea dictumst quisque sagittis purus.</p>\n<!-- /wp:paragraph -->', 'Blue 1', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2024-05-31 17:29:41', '2024-05-31 21:29:41', '', 41, 'http://localhost/caseguard/?p=57', 0, 'revision', '', 0),
(42, 1, '2024-05-31 06:01:47', '2024-05-31 10:01:47', '<!-- wp:paragraph -->\n<p>Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Libero volutpat sed cras ornare arcu. Egestas sed sed risus pretium quam vulputate dignissim suspendisse in. Quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna. Cursus metus aliquam eleifend mi in. Sit amet consectetur adipiscing elit ut aliquam. Nisl purus in mollis nunc sed id semper risus in. Adipiscing elit ut aliquam purus sit amet. Quis hendrerit dolor magna eget est lorem ipsum dolor. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim. Nec ultrices dui sapien eget mi proin sed libero enim. At imperdiet dui accumsan sit amet. Dolor sit amet consectetur adipiscing elit. In hac habitasse platea dictumst. Venenatis a condimentum vitae sapien pellentesque habitant. Egestas diam in arcu cursus euismod quis. Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi. Habitasse platea dictumst quisque sagittis purus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":20,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_4_Blue-1024x683.jpg\" alt=\"Blue 1\" class=\"wp-image-20\"/><figcaption class=\"wp-element-caption\">Blue 1</figcaption></figure>\n<!-- /wp:image -->', 'Blue 1', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2024-05-31 06:01:47', '2024-05-31 10:01:47', '', 41, 'http://localhost/caseguard/?p=42', 0, 'revision', '', 0),
(43, 1, '2024-05-31 06:02:42', '2024-05-31 10:02:42', '<!-- wp:paragraph -->\n<p>Est velit egestas dui id ornare arcu. Viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Leo integer malesuada nunc vel risus. Facilisis mauris sit amet massa vitae. Praesent elementum facilisis leo vel fringilla est ullamcorper. Risus viverra adipiscing at in tellus integer feugiat. Auctor elit sed vulputate mi sit amet mauris commodo. Quisque non tellus orci ac auctor augue mauris augue. Pulvinar neque laoreet suspendisse interdum consectetur libero. Molestie a iaculis at erat pellentesque.</p>\n<!-- /wp:paragraph -->', 'Blue 2', '', 'publish', 'open', 'open', '', 'blue-2', '', '', '2024-05-31 17:29:30', '2024-05-31 21:29:30', '', 0, 'http://localhost/caseguard/?p=43', 0, 'post', '', 0),
(56, 1, '2024-05-31 17:29:30', '2024-05-31 21:29:30', '<!-- wp:paragraph -->\n<p>Est velit egestas dui id ornare arcu. Viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Leo integer malesuada nunc vel risus. Facilisis mauris sit amet massa vitae. Praesent elementum facilisis leo vel fringilla est ullamcorper. Risus viverra adipiscing at in tellus integer feugiat. Auctor elit sed vulputate mi sit amet mauris commodo. Quisque non tellus orci ac auctor augue mauris augue. Pulvinar neque laoreet suspendisse interdum consectetur libero. Molestie a iaculis at erat pellentesque.</p>\n<!-- /wp:paragraph -->', 'Blue 2', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2024-05-31 17:29:30', '2024-05-31 21:29:30', '', 43, 'http://localhost/caseguard/?p=56', 0, 'revision', '', 0),
(44, 1, '2024-05-31 06:02:42', '2024-05-31 10:02:42', '<!-- wp:paragraph -->\n<p>Est velit egestas dui id ornare arcu. Viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Leo integer malesuada nunc vel risus. Facilisis mauris sit amet massa vitae. Praesent elementum facilisis leo vel fringilla est ullamcorper. Risus viverra adipiscing at in tellus integer feugiat. Auctor elit sed vulputate mi sit amet mauris commodo. Quisque non tellus orci ac auctor augue mauris augue. Pulvinar neque laoreet suspendisse interdum consectetur libero. Molestie a iaculis at erat pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":18,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_2_Blue-1024x683.jpg\" alt=\"Blue 2\" class=\"wp-image-18\"/><figcaption class=\"wp-element-caption\">Blue 2</figcaption></figure>\n<!-- /wp:image -->', 'Blue 2', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2024-05-31 06:02:42', '2024-05-31 10:02:42', '', 43, 'http://localhost/caseguard/?p=44', 0, 'revision', '', 0),
(45, 1, '2024-05-31 06:04:30', '2024-05-31 10:04:30', '<!-- wp:paragraph -->\n<p>Lectus mauris ultrices eros in cursus. Ac placerat vestibulum lectus mauris ultrices. Maecenas ultricies mi eget mauris pharetra et. Enim nec dui nunc mattis. Ut pharetra sit amet aliquam id diam maecenas. Ornare aenean euismod elementum nisi. At augue eget arcu dictum. Vitae et leo duis ut diam quam nulla porttitor. Aliquet porttitor lacus luctus accumsan tortor. Egestas erat imperdiet sed euismod nisi. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis. Purus semper eget duis at tellus at urna condimentum mattis. Eu scelerisque felis imperdiet proin fermentum.</p>\n<!-- /wp:paragraph -->', 'Green 1', '', 'publish', 'open', 'open', '', 'green-1', '', '', '2024-05-31 17:29:12', '2024-05-31 21:29:12', '', 0, 'http://localhost/caseguard/?p=45', 0, 'post', '', 0),
(55, 1, '2024-05-31 17:29:12', '2024-05-31 21:29:12', '<!-- wp:paragraph -->\n<p>Lectus mauris ultrices eros in cursus. Ac placerat vestibulum lectus mauris ultrices. Maecenas ultricies mi eget mauris pharetra et. Enim nec dui nunc mattis. Ut pharetra sit amet aliquam id diam maecenas. Ornare aenean euismod elementum nisi. At augue eget arcu dictum. Vitae et leo duis ut diam quam nulla porttitor. Aliquet porttitor lacus luctus accumsan tortor. Egestas erat imperdiet sed euismod nisi. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis. Purus semper eget duis at tellus at urna condimentum mattis. Eu scelerisque felis imperdiet proin fermentum.</p>\n<!-- /wp:paragraph -->', 'Green 1', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2024-05-31 17:29:12', '2024-05-31 21:29:12', '', 45, 'http://localhost/caseguard/?p=55', 0, 'revision', '', 0),
(46, 1, '2024-05-31 06:04:30', '2024-05-31 10:04:30', '<!-- wp:paragraph -->\n<p>Lectus mauris ultrices eros in cursus. Ac placerat vestibulum lectus mauris ultrices. Maecenas ultricies mi eget mauris pharetra et. Enim nec dui nunc mattis. Ut pharetra sit amet aliquam id diam maecenas. Ornare aenean euismod elementum nisi. At augue eget arcu dictum. Vitae et leo duis ut diam quam nulla porttitor. Aliquet porttitor lacus luctus accumsan tortor. Egestas erat imperdiet sed euismod nisi. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis. Purus semper eget duis at tellus at urna condimentum mattis. Eu scelerisque felis imperdiet proin fermentum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_6_Green-1024x683.jpg\" alt=\"Green 1\" class=\"wp-image-22\"/><figcaption class=\"wp-element-caption\">Green 1</figcaption></figure>\n<!-- /wp:image -->', 'Green 1', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2024-05-31 06:04:30', '2024-05-31 10:04:30', '', 45, 'http://localhost/caseguard/?p=46', 0, 'revision', '', 0),
(47, 1, '2024-05-31 06:05:34', '2024-05-31 10:05:34', '<!-- wp:paragraph -->\n<p>Risus viverra adipiscing at in tellus. Faucibus turpis in eu mi bibendum. Ut etiam sit amet nisl purus in mollis. Libero nunc consequat interdum varius sit. Pretium aenean pharetra magna ac placerat vestibulum lectus. Tortor posuere ac ut consequat semper. Proin sagittis nisl rhoncus mattis rhoncus. Cras tincidunt lobortis feugiat vivamus at augue. Quam quisque id diam vel quam elementum. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet.</p>\n<!-- /wp:paragraph -->', 'Green 2', '', 'publish', 'open', 'open', '', 'green-2', '', '', '2024-05-31 17:29:02', '2024-05-31 21:29:02', '', 0, 'http://localhost/caseguard/?p=47', 0, 'post', '', 0),
(54, 1, '2024-05-31 17:29:02', '2024-05-31 21:29:02', '<!-- wp:paragraph -->\n<p>Risus viverra adipiscing at in tellus. Faucibus turpis in eu mi bibendum. Ut etiam sit amet nisl purus in mollis. Libero nunc consequat interdum varius sit. Pretium aenean pharetra magna ac placerat vestibulum lectus. Tortor posuere ac ut consequat semper. Proin sagittis nisl rhoncus mattis rhoncus. Cras tincidunt lobortis feugiat vivamus at augue. Quam quisque id diam vel quam elementum. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet.</p>\n<!-- /wp:paragraph -->', 'Green 2', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2024-05-31 17:29:02', '2024-05-31 21:29:02', '', 47, 'http://localhost/caseguard/?p=54', 0, 'revision', '', 0),
(48, 1, '2024-05-31 06:05:34', '2024-05-31 10:05:34', '<!-- wp:paragraph -->\n<p>Risus viverra adipiscing at in tellus. Faucibus turpis in eu mi bibendum. Ut etiam sit amet nisl purus in mollis. Libero nunc consequat interdum varius sit. Pretium aenean pharetra magna ac placerat vestibulum lectus. Tortor posuere ac ut consequat semper. Proin sagittis nisl rhoncus mattis rhoncus. Cras tincidunt lobortis feugiat vivamus at augue. Quam quisque id diam vel quam elementum. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_5_Green-1024x683.jpg\" alt=\"Green 2\" class=\"wp-image-21\"/><figcaption class=\"wp-element-caption\">Green 2</figcaption></figure>\n<!-- /wp:image -->', 'Green 2', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2024-05-31 06:05:34', '2024-05-31 10:05:34', '', 47, 'http://localhost/caseguard/?p=48', 0, 'revision', '', 0),
(49, 1, '2024-05-31 06:20:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-31 06:20:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/caseguard/?p=49', 0, 'post', '', 0),
(50, 1, '2024-05-31 06:21:17', '2024-05-31 10:21:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pharetra diam sit amet nisl suscipit adipiscing bibendum est. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas. Tortor at risus viverra adipiscing at in tellus. Eget egestas purus viverra accumsan in nisl. Ac tincidunt vitae semper quis lectus nulla at. Vehicula ipsum a arcu cursus vitae congue mauris. Velit dignissim sodales ut eu. Mauris pharetra et ultrices neque ornare aenean. At imperdiet dui accumsan sit amet nulla facilisi morbi. Pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem. Nullam non nisi est sit amet facilisis magna etiam tempor. Imperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor. Odio facilisis mauris sit amet massa vitae tortor condimentum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17\"/><figcaption class=\"wp-element-caption\">balck 1</figcaption></figure>\n<!-- /wp:image -->', 'black-1', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2024-05-31 06:21:17', '2024-05-31 10:21:17', '', 14, 'http://localhost/caseguard/?p=50', 0, 'revision', '', 0),
(52, 1, '2024-05-31 06:55:18', '2024-05-31 10:55:18', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pharetra diam sit amet nisl suscipit adipiscing bibendum est. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas. Tortor at risus viverra adipiscing at in tellus. Eget egestas purus viverra accumsan in nisl. Ac tincidunt vitae semper quis lectus nulla at. Vehicula ipsum a arcu cursus vitae congue mauris. Velit dignissim sodales ut eu. Mauris pharetra et ultrices neque ornare aenean. At imperdiet dui accumsan sit amet nulla facilisi morbi. Pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem. Nullam non nisi est sit amet facilisis magna etiam tempor. Imperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor. Odio facilisis mauris sit amet massa vitae tortor condimentum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_1_Black-1024x684.jpg\" alt=\"Black 1\" class=\"wp-image-17\"/><figcaption class=\"wp-element-caption\">balck 1</figcaption></figure>\n<!-- /wp:image -->', 'black-1', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2024-05-31 06:55:18', '2024-05-31 10:55:18', '', 14, 'http://localhost/caseguard/?p=52', 0, 'revision', '', 0),
(53, 1, '2024-05-31 17:28:33', '2024-05-31 21:28:33', '<!-- wp:paragraph -->\n<p>Magna fringilla urna porttitor rhoncus. Faucibus purus in massa tempor nec. Morbi non arcu risus quis varius quam. Nulla facilisi cras fermentum odio eu feugiat pretium nibh. Nisl condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Mi proin sed libero enim sed faucibus turpis in. Massa eget egestas purus viverra accumsan in. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Id faucibus nisl tincidunt eget. Tortor consequat id porta nibh venenatis. Id faucibus nisl tincidunt eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":19,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/caseguard/wp-content/uploads/2024/05/IMG_3_Black-1024x681.jpg\" alt=\"Black 2\" class=\"wp-image-19\"/><figcaption class=\"wp-element-caption\">black 2</figcaption></figure>\n<!-- /wp:image -->', 'Black 2', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-31 17:28:33', '2024-05-31 21:28:33', '', 34, 'http://localhost/caseguard/?p=53', 0, 'revision', '', 0),
(59, 1, '2024-05-31 17:31:06', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet purus gravida quis blandit turpis cursus. Id interdum velit laoreet id donec ultrices tincidunt. Sed tempus urna et pharetra pharetra massa massa ultricies mi. Netus et malesuada fames ac turpis egestas sed tempus urna. Volutpat maecenas volutpat blandit aliquam etiam erat. At consectetur lorem donec massa sapien. Leo urna molestie at elementum eu facilisis sed odio morbi. Velit laoreet id donec ultrices tincidunt arcu non sodales neque. Lacinia quis vel eros donec ac odio tempor orci dapibus. Massa sed elementum tempus egestas sed sed risus. Dictum sit amet justo donec enim diam vulputate ut. Aliquam eleifend mi in nulla. Adipiscing diam donec adipiscing tristique risus nec feugiat. Rhoncus est pellentesque elit ullamcorper dignissim.</p>\n<!-- /wp:paragraph -->', 'Black 1', '', 'draft', 'open', 'open', '', '', '', '', '2024-05-31 17:31:06', '2024-05-31 21:31:06', '', 0, 'http://localhost/caseguard/?p=59', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Black', 'black', 0),
(3, 'Blue', 'blue', 0),
(4, 'Green', 'green', 0),
(5, 'Black2', 'black2', 0),
(6, 'Black', 'black', 0),
(7, 'Back1', 'back1', 0),
(8, 'Blue', 'blue', 0),
(9, 'Blue1', 'blue1', 0),
(10, 'Blue2', 'blue2', 0),
(11, 'Green', 'green', 0),
(12, 'Gren1', 'gren1', 0),
(13, 'Green1', 'green1', 0),
(14, 'Green2', 'green2', 0),
(15, 'Black1', 'black1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 1, 0),
(11, 1, 0),
(34, 5, 0),
(14, 2, 0),
(34, 2, 0),
(34, 6, 0),
(14, 6, 0),
(14, 7, 0),
(41, 8, 0),
(41, 3, 0),
(41, 9, 0),
(43, 8, 0),
(43, 3, 0),
(43, 10, 0),
(45, 11, 0),
(45, 4, 0),
(45, 13, 0),
(47, 11, 0),
(47, 4, 0),
(47, 14, 0),
(59, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', 'black articles', 0, 1),
(3, 3, 'category', 'blue articles', 0, 2),
(4, 4, 'category', 'Green category', 0, 2),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 0),
(8, 8, 'post_tag', '', 0, 2),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 2),
(12, 12, 'post_tag', '', 0, 0),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'caseguard'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"5d3103dc6c070ef05127206b4deaa3b3b24d6a125f7542fe0b586f255c0244b3\";a:4:{s:10:\"expiration\";i:1717234802;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1717062002;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-31T21:30:40.082Z\";s:4:\"core\";a:1:{s:10:\"openPanels\";a:7:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:23:\"taxonomy-panel-category\";i:3;s:12:\"post-excerpt\";i:4;s:16:\"discussion-panel\";i:5;s:14:\"featured-image\";i:6;s:23:\"taxonomy-panel-post_tag\";}}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1717140953');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'caseguard', '$P$BSy50SCq9jmEjW0kw4LOcmzA6Lu42f/', 'caseguard', 'vikasedukulla@gmail.com', 'http://localhost/caseguard', '2024-05-28 02:29:00', '', 0, 'caseguard');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
