-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2018 lúc 04:56 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanecogreen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_authors`
--

CREATE TABLE `nv4_authors` (
  `admin_id` mediumint(8) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', 'f966834af42e9228df68fe51eda816c8', 1538966899, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_authors_config`
--

CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_authors_module`
--

CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '99bedcc82c456e6aa0a6850da9674c90'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, 'e263bceccf79a3521f334a9e80c17712'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'b040baa1557a8bc0701f10905d26dd63'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '3db8c52d3edb60a0e4a1dffb408e9478'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, '0b5fd2fe6120b671fcc7e9a7ff5f1a9b'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, '2e3f06a5cb54587f05e98a4073067770'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '220b458fca31e0e43c55d97a0510ea47'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '64f7316aa205734092e283cb19a6d60d'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, 'fbfe7c90573e0ae082b767f2f70f24d3'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '9f86ad1928f6c0d4ae21a48797091cd7'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '89c6ea2ae5ab269e9a9c8377235cb297');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_banners_click`
--

CREATE TABLE `nv4_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_banners_plans`
--

CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 575, 72, 1, 1, 'images,flash', '', 0),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1, 1, 'images,flash', '', 0),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1, 1, 'images,flash', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_banners_rows`
--

CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 1, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1538639857, 1538639857, 0, 0, 1, 2),
(3, 'Quang cao giua trang', 1, 1, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', '', 1538639857, 1538639857, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_config`
--

CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', ''),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'googleMapsAPI', 'AIzaSyC8ODAzZ75hsAufVBSffnwvKfTOT6TnnNQ'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '2097152'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'two-step-verification'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '8'),
('sys', 'global', 'captcha_type', '1'),
('sys', 'global', 'version', '4.3.03'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'nv_debug', '0'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Dự Án Eco Green'),
('vi', 'global', 'site_logo', 'uploads/logo-xuan-mai.png'),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'Chia sẻ thành công, kết nối đam mê'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r'),
('vi', 'global', 'site_theme', 'default'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'news'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1538967494'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '1'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '1'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'webmaster@localhost'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'webmaster@localhost'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'localhost'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_m2Nmeu'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', '5DDMuB04qOMpzJJ7m0eghA,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'about', 'perpagecomm', '5'),
('vi', 'about', 'timeoutcomm', '360'),
('vi', 'about', 'allowattachcomm', '0'),
('vi', 'about', 'alloweditorcomm', '0'),
('vi', 'slider', 'next_execute', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_cookies`
--

CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_counter`
--

CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1538966887, 0),
('total', 'hits', 1538966887, 64, 64),
('year', '2018', 1538966887, 64, 64),
('year', '2019', 0, 0, 0),
('year', '2020', 0, 0, 0),
('year', '2021', 0, 0, 0),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 1538966887, 64, 64),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 0, 0, 0),
('day', '02', 0, 0, 0),
('day', '03', 0, 0, 0),
('day', '04', 1538664586, 19, 19),
('day', '05', 1538749856, 20, 20),
('day', '06', 1538820041, 21, 21),
('day', '07', 0, 0, 0),
('day', '08', 1538966887, 4, 4),
('day', '09', 0, 0, 0),
('day', '10', 0, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 0, 0, 0),
('day', '20', 0, 0, 0),
('day', '21', 0, 0, 0),
('day', '22', 0, 0, 0),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 0, 0, 0),
('day', '26', 0, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 0, 0, 0),
('day', '29', 0, 0, 0),
('day', '30', 0, 0, 0),
('day', '31', 0, 0, 0),
('dayofweek', 'Sunday', 0, 0, 0),
('dayofweek', 'Monday', 1538966887, 4, 4),
('dayofweek', 'Tuesday', 0, 0, 0),
('dayofweek', 'Wednesday', 0, 0, 0),
('dayofweek', 'Thursday', 1538664586, 19, 19),
('dayofweek', 'Friday', 1538749856, 20, 20),
('dayofweek', 'Saturday', 1538820041, 21, 21),
('hour', '00', 0, 0, 0),
('hour', '01', 0, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 0, 0, 0),
('hour', '08', 1538962722, 2, 2),
('hour', '09', 1538966887, 2, 2),
('hour', '10', 1538797652, 0, 0),
('hour', '11', 1538801271, 0, 0),
('hour', '12', 1538804340, 0, 0),
('hour', '13', 1538808167, 0, 0),
('hour', '14', 1538812531, 0, 0),
('hour', '15', 1538728875, 0, 0),
('hour', '16', 1538818191, 0, 0),
('hour', '17', 1538820041, 0, 0),
('hour', '18', 0, 0, 0),
('hour', '19', 0, 0, 0),
('hour', '20', 1538746994, 0, 0),
('hour', '21', 1538749856, 0, 0),
('hour', '22', 0, 0, 0),
('hour', '23', 0, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1538966887, 64, 64),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 1538966887, 64, 64),
('os', 'win8', 0, 0, 0),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1538966887, 64, 64),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_cronjobs`
--

CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1538639857, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1538967194, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1538639857, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1538960769, 1, 'Tự động lưu CSDL'),
(3, 1538639857, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1538966888, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1538639857, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1538966888, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1538639857, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1538960769, 1, 'Xóa các file error_log quá hạn'),
(6, 1538639857, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1538639857, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1538966888, 1, 'Xóa các referer quá hạn'),
(8, 1538639857, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1538966888, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1538639857, 1440, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1538960769, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_extension_files`
--

CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_googleplus`
--

CREATE TABLE `nv4_googleplus` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idprofile` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_ips`
--

CREATE TABLE `nv4_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_ips`
--

INSERT INTO `nv4_ips` (`id`, `type`, `ip`, `mask`, `area`, `begintime`, `endtime`, `notice`) VALUES
(1, 1, '::1', 0, 1, 1538639903, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_language`
--

CREATE TABLE `nv4_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_language_file`
--

CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_logs`
--

CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538639915),
(2, 'vi', 'themes', 'Thêm block', 'Name : global bootstrap', '', 1, 1538645137),
(3, 'vi', 'themes', 'Sửa block', 'Name : global bootstrap', '', 1, 1538645187),
(4, 'vi', 'upload', 'Upload file', 'uploads/logo-xuan-mai.png', '', 1, 1538646301),
(5, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1538647026),
(6, 'vi', 'about', 'Delete', 'ID: 8', '', 1, 1538647338),
(7, 'vi', 'about', 'Delete', 'ID: 1', '', 1, 1538647340),
(8, 'vi', 'about', 'Delete', 'ID: 2', '', 1, 1538647341),
(9, 'vi', 'about', 'Delete', 'ID: 3', '', 1, 1538647343),
(10, 'vi', 'about', 'Delete', 'ID: 4', '', 1, 1538647345),
(11, 'vi', 'about', 'Delete', 'ID: 5', '', 1, 1538647346),
(12, 'vi', 'about', 'Delete', 'ID: 6', '', 1, 1538647348),
(13, 'vi', 'about', 'Delete', 'ID: 7', '', 1, 1538647349),
(14, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538660004),
(15, 'vi', 'themes', 'Sửa block', 'Name : global bootstrap', '', 1, 1538660050),
(16, 'vi', 'news', 'Xóa bài viêt', 'NukeViet 4.3 có gì mới?, NukeViet 4.2 có gì mới?, NukeViet 4.0 có gì mới?, Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;, Tuyển dụng lập trình viên PHP phát triển NukeViet, Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT, NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016, Học việc tại công ty VINADES, Chương trình thực tập sinh tại công ty VINADES, Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet, Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet, Công ty VINADES tuyển dụng nhân viên kinh doanh, NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước, Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011, Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', '', 1, 1538660342),
(17, 'vi', 'themes', 'Thêm block', 'Name : global bootstrap', '', 1, 1538661063),
(18, 'vi', 'menu', 'delete menu id: 2', 'Chủ đề', '', 1, 1538663693),
(19, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1538665007),
(20, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538665397),
(21, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538665491),
(22, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538665529),
(23, 'vi', 'themes', 'Thêm block', 'Name : Chủ đề', '', 1, 1538666071),
(24, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538704449),
(25, 'vi', 'modules', 'Thêm module ảo chu_de', '', '', 1, 1538705058),
(26, 'vi', 'modules', 'Cài lại module \"about\"', '', '', 1, 1538705085),
(27, 'vi', 'themes', 'Thêm block', 'Name : global about', '', 1, 1538705285),
(28, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538705394),
(29, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538705505),
(30, 'vi', 'themes', 'Thêm block', 'Name : global page list', '', 1, 1538706579),
(31, 'vi', 'modules', 'Sửa module &ldquo;menu&rdquo;', '', '', 1, 1538712698),
(32, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538713048),
(33, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538713164),
(34, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1538718290),
(35, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538721723),
(36, 'vi', 'themes', 'Thêm block', 'Name : global about', '', 1, 1538726529),
(37, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538726732),
(38, 'vi', 'modules', 'Sửa module &ldquo;page&rdquo;', '', '', 1, 1538726809),
(39, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538726862),
(40, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538729307),
(41, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1538729362),
(42, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1538729808),
(43, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538729881),
(44, 'vi', 'themes', 'Thêm block', 'Name : global block new comment', '', 1, 1538730500),
(45, 'vi', 'themes', 'Thêm block', 'Name : global block groups', '', 1, 1538731465),
(46, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1538732019),
(47, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1538732023),
(48, 'vi', 'themes', 'Sửa block', 'Name : global block groups', '', 1, 1538733407),
(49, 'vi', 'themes', 'Sửa block', 'Name : global block new comment', '', 1, 1538733698),
(50, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538733724),
(51, 'vi', 'themes', 'Sửa block', 'Name : global block new comment', '', 1, 1538733748),
(52, 'vi', 'themes', 'Sửa block', 'Name : global block new comment', '', 1, 1538733824),
(53, 'vi', 'themes', 'Sửa block', 'Name : global block new comment', '', 1, 1538734312),
(54, 'vi', 'modules', 'Sửa module &ldquo;about&rdquo;', '', '', 1, 1538734521),
(55, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538747111),
(56, 'vi', 'themes', 'Sửa block', 'Name : global block new comment', '', 1, 1538747274),
(57, 'vi', 'themes', 'Sửa block', 'Name : global block new comment', '', 1, 1538747617),
(58, 'vi', 'themes', 'Sửa block', 'Name : global block new comment', '', 1, 1538747668),
(59, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538747750),
(60, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538747842),
(61, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538747875),
(62, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538747965),
(63, 'vi', 'themes', 'Sửa block', 'Name : global block new comment', '', 1, 1538748175),
(64, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1538751599),
(65, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538790036),
(66, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538790325),
(67, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538790379),
(68, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538790416),
(69, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1538790696),
(70, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538790892),
(71, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538790939),
(72, 'vi', 'themes', 'Sửa block', 'Name : global block new comment', '', 1, 1538791057),
(73, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1538792039),
(74, 'vi', 'modules', 'Thiết lập module mới slider', '', '', 1, 1538792143),
(75, 'vi', 'modules', 'Sửa module &ldquo;slider&rdquo;', '', '', 1, 1538792151),
(76, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1538792184),
(77, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1538792725),
(78, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1538792847),
(79, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1538794530),
(80, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538794614),
(81, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1538794844),
(82, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538795117),
(83, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538795234),
(84, 'vi', 'slider', 'Add Block', 'slider', '', 1, 1538795310),
(85, 'vi', 'upload', 'Upload file', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-05.png', '', 1, 1538795423),
(86, 'vi', 'upload', 'Upload file', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-04.png', '', 1, 1538795423),
(87, 'vi', 'upload', 'Upload file', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-02.png', '', 1, 1538795423),
(88, 'vi', 'upload', 'Upload file', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-03.png', '', 1, 1538795424),
(89, 'vi', 'upload', 'Upload file', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-01.png', '', 1, 1538795424),
(90, 'vi', 'slider', 'Add Content', 'slide', '', 1, 1538795439),
(91, 'vi', 'slider', 'Add Block', 'Vị trí', '', 1, 1538795620),
(92, 'vi', 'slider', 'Add Content', 'Chủ đề', '', 1, 1538795645),
(93, 'vi', 'slider', 'Del Content', 'ID:2', '', 1, 1538795662),
(94, 'vi', 'slider', 'Del Block', 'ID:2', '', 1, 1538795669),
(95, 'vi', 'slider', 'Edit Content', 'ID: 1', '', 1, 1538795694),
(96, 'vi', 'slider', 'Edit Content', 'ID: 1', '', 1, 1538795702),
(97, 'vi', 'upload', 'Di chuyển', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-02.png -> uploads/slider/image/du-an-eco-green-sai-gon-quan-7-02.png', '', 1, 1538795756),
(98, 'vi', 'upload', 'Di chuyển', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-03.png -> uploads/slider/image/du-an-eco-green-sai-gon-quan-7-03.png', '', 1, 1538795756),
(99, 'vi', 'upload', 'Di chuyển', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-01.png -> uploads/slider/image/du-an-eco-green-sai-gon-quan-7-01.png', '', 1, 1538795756),
(100, 'vi', 'upload', 'Di chuyển', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-05.png -> uploads/slider/image/du-an-eco-green-sai-gon-quan-7-05.png', '', 1, 1538795756),
(101, 'vi', 'upload', 'Di chuyển', 'uploads/slider/du-an-eco-green-sai-gon-quan-7-04.png -> uploads/slider/image/du-an-eco-green-sai-gon-quan-7-04.png', '', 1, 1538795756),
(102, 'vi', 'upload', 'Di chuyển', 'uploads/slider/image/du-an-eco-green-sai-gon-quan-7-04.png -> uploads/slider/du-an-eco-green-sai-gon-quan-7-04.png', '', 1, 1538795784),
(103, 'vi', 'upload', 'Di chuyển', 'uploads/slider/image/du-an-eco-green-sai-gon-quan-7-03.png -> uploads/slider/du-an-eco-green-sai-gon-quan-7-03.png', '', 1, 1538795784),
(104, 'vi', 'upload', 'Di chuyển', 'uploads/slider/image/du-an-eco-green-sai-gon-quan-7-01.png -> uploads/slider/du-an-eco-green-sai-gon-quan-7-01.png', '', 1, 1538795784),
(105, 'vi', 'upload', 'Di chuyển', 'uploads/slider/image/du-an-eco-green-sai-gon-quan-7-05.png -> uploads/slider/du-an-eco-green-sai-gon-quan-7-05.png', '', 1, 1538795784),
(106, 'vi', 'upload', 'Di chuyển', 'uploads/slider/image/du-an-eco-green-sai-gon-quan-7-02.png -> uploads/slider/du-an-eco-green-sai-gon-quan-7-02.png', '', 1, 1538795784),
(107, 'vi', 'themes', 'Thêm block', 'Name : global about', '', 1, 1538795889),
(108, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538796036),
(109, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538796131),
(110, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1538796221),
(111, 'vi', 'slider', 'Edit Content', 'ID: 1', '', 1, 1538796304),
(112, 'vi', 'slider', 'Edit Content', 'ID: 1', '', 1, 1538796330),
(113, 'vi', 'slider', 'Edit Content', 'ID: 1', '', 1, 1538796336),
(114, 'vi', 'slider', 'Edit Content', 'ID: 1', '', 1, 1538796394),
(115, 'vi', 'slider', 'Edit Content', 'ID: 1', '', 1, 1538796410),
(116, 'vi', 'slider', 'Edit Content', 'ID: 1', '', 1, 1538796422),
(117, 'vi', 'slider', 'Add Content', 'slide 2', '', 1, 1538796435),
(118, 'vi', 'slider', 'Add Content', 'slide 3', '', 1, 1538796467),
(119, 'vi', 'slider', 'Add Content', 'slide 4', '', 1, 1538796476),
(120, 'vi', 'slider', 'Add Content', 'slide 5', '', 1, 1538796489),
(121, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538796730),
(122, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538796812),
(123, 'vi', 'page', 'Add', ' ', '', 1, 1538798061),
(124, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538798350),
(125, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1538798620),
(126, 'vi', 'menu', 'Delete menu item', 'Item ID 24', '', 1, 1538799839),
(127, 'vi', 'page', 'Delete', 'ID: 1', '', 1, 1538800002),
(128, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538800382),
(129, 'vi', 'page', 'Add', ' ', '', 1, 1538800444),
(130, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538800486),
(131, 'vi', 'page', 'Delete', 'ID: 2', '', 1, 1538800496),
(132, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538800517),
(133, 'vi', 'upload', 'Upload file', 'uploads/page/vi-tri-du-an-eco-green-sai-gon-quan-7.png', '', 1, 1538800613),
(134, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1538800636),
(135, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538800659),
(136, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538800709),
(137, 'vi', 'page', 'Add', ' ', '', 1, 1538800880),
(138, 'vi', 'page', 'Edit', 'ID: 3', '', 1, 1538801033),
(139, 'vi', 'page', 'Edit', 'ID: 3', '', 1, 1538801057),
(140, 'vi', 'page', 'Edit', 'ID: 3', '', 1, 1538801076),
(141, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1538801123),
(142, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538801247),
(143, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538801390),
(144, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538801417),
(145, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538801453),
(146, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538801663),
(147, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538801797),
(148, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538801872),
(149, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1538801986),
(150, 'vi', 'themes', 'Sửa block', 'Name : VỊ TRÍ DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538802008),
(151, 'vi', 'themes', 'Sửa block', 'Name : VỊ TRÍ DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538802121),
(152, 'vi', 'themes', 'Sửa block', 'Name : VỊ TRÍ DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538802160),
(153, 'vi', 'themes', 'Sửa block', 'Name : VỊ TRÍ DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538802336),
(154, 'vi', 'upload', 'Upload file', 'uploads/page/phoi-canh-du-an-eco-green-sai-gon.jpg', '', 1, 1538802481),
(155, 'vi', 'themes', 'Thêm block', 'Name : MẶT BẰNG DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538802511),
(156, 'vi', 'themes', 'Sửa block', 'Name : MẶT BẰNG DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538802538),
(157, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1538804340),
(158, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538805856),
(159, 'vi', 'themes', 'Thêm block', 'Name : TIỆN ÍCH DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538806477),
(160, 'vi', 'upload', 'Upload file', 'uploads/page/tien-ich-du-an-eco-green-sai-gon.png', '', 1, 1538806870),
(161, 'vi', 'themes', 'Sửa block', 'Name : TIỆN ÍCH DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538806879),
(162, 'vi', 'upload', 'Upload file', 'uploads/page/line-dep-moi.png', '', 1, 1538807133),
(163, 'vi', 'themes', 'Sửa block', 'Name : VỊ TRÍ DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538807233),
(164, 'vi', 'themes', 'Sửa block', 'Name : MẶT BẰNG DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538807319),
(165, 'vi', 'themes', 'Sửa block', 'Name : TIỆN ÍCH DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538807363),
(166, 'vi', 'upload', 'Upload file', 'uploads/page/mat-bang-shophouse-tang-1-1024x758.jpg', '', 1, 1538807983),
(167, 'vi', 'upload', 'Upload file', 'uploads/page/mat-bang-blue-diamond-tang-3-3bis-1-1024x576.jpg', '', 1, 1538808002),
(168, 'vi', 'upload', 'Upload file', 'uploads/page/mat-bang-blue-diamond-tang-5-10-1024x592.jpg', '', 1, 1538808013),
(169, 'vi', 'upload', 'Upload file', 'uploads/page/mat-bang-blue-diamond-tang-11-17-1024x592.jpg', '', 1, 1538808021),
(170, 'vi', 'upload', 'Upload file', 'uploads/page/mat-bang-blue-diamond-tang-21-35-1024x592.jpg', '', 1, 1538808032),
(171, 'vi', 'upload', 'Upload file', 'uploads/page/mat-bang-blue-diamond-tang-18-20-1-1024x592.jpg', '', 1, 1538808042),
(172, 'vi', 'themes', 'Sửa block', 'Name : MẶT BẰNG DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538808162),
(173, 'vi', 'themes', 'Sửa block', 'Name : MẶT BẰNG DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538808317),
(174, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1538812531),
(175, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538818151),
(176, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1538820040),
(177, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538820682),
(178, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1538820861),
(179, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538961371),
(180, 'vi', 'themes', 'Sửa block', 'Name : TIỆN ÍCH DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538961809),
(181, 'vi', 'themes', 'Sửa block', 'Name : MẶT BẰNG DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538962133),
(182, 'vi', 'themes', 'Sửa block', 'Name : MẶT BẰNG DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538962182),
(183, 'vi', 'themes', 'Sửa block', 'Name : MẶT BẰNG DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538962519),
(184, 'vi', 'themes', 'Sửa block', 'Name : VỊ TRÍ DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538962718),
(185, 'vi', 'themes', 'Sửa block', 'Name : VỊ TRÍ DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538962783),
(186, 'vi', 'themes', 'Sửa block', 'Name : VỊ TRÍ DỰ ÁN ECO GREEN SÀI GÒN', '', 1, 1538962810),
(187, 'vi', 'upload', 'Upload file', 'uploads/news/2018_10/khu-nam-sai-gon-eco-green-sai-gon.jpg', '', 1, 1538964219),
(188, 'vi', 'news', 'Thêm bài viết', 'Thông tin tổng hợp về căn hộ Eco Green Sài Gòn', '', 1, 1538964305),
(189, 'vi', 'login', '[tuanmanhnguyen195@gmail.com] Đăng nhập', ' Client IP:::1', '', 0, 1538966899);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_notification`
--

CREATE TABLE `nv4_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `send_to` mediumint(8) UNSIGNED NOT NULL,
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_plugin`
--

CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_sessions`
--

CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_sessions`
--

INSERT INTO `nv4_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('b6cg0pdmqro4jjo9sm3hisdhpv', 1, 'admin', 1538967212);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_setup_extensions`
--

CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_setup_extensions`
--

INSERT INTO `nv4_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'chu-de', 0, 0, 'page', 'chu_de', '', 1538705058, '', ''),
(0, 'module', 'slider', 0, 1, 'slider', 'slider', '4.3.01 1524070799', 1538792080, 'Việt Tí (quocvietposcovn@gmail.com)', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.3.03 1533549600', 1538639857, 'VINADES <contact@vinades.vn>', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_setup_language`
--

CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_upload_dir`
--

CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1538646272, 0, 0, 0, 0),
(2, 'uploads/about', 1538802147, 0, 0, 0, 0),
(3, 'uploads/banners', 1538802148, 0, 0, 0, 0),
(4, 'uploads/banners/files', 1538802148, 0, 0, 0, 0),
(5, 'uploads/comment', 0, 0, 0, 0, 0),
(6, 'uploads/contact', 1538802151, 0, 0, 0, 0),
(7, 'uploads/freecontent', 0, 0, 0, 0, 0),
(8, 'uploads/menu', 1538802151, 0, 0, 0, 0),
(9, 'uploads/news', 1538802152, 0, 0, 0, 0),
(10, 'uploads/news/source', 1538802152, 0, 0, 0, 0),
(11, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(12, 'uploads/news/topics', 0, 0, 0, 0, 0),
(13, 'uploads/page', 1538800569, 0, 0, 0, 0),
(14, 'uploads/siteterms', 0, 0, 0, 0, 0),
(15, 'uploads/users', 0, 0, 0, 0, 0),
(16, 'uploads/users/groups', 0, 0, 0, 0, 0),
(17, 'uploads/slider', 1538795340, 0, 0, 0, 0),
(18, 'uploads/slider/image', 1538795766, 0, 0, 0, 0),
(19, 'uploads/news/2018_10', 1538964212, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_upload_file`
--

CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('logo-xuan-mai.png', 'png', 'image', 12971, 'assets/logo-xuan-mai.png', 80, 49, '283|172', 1, 1538646302, 1, 'logo-xuan-mai.png', 'logo xuan mai'),
('du-an-eco-...png', 'png', 'image', 932404, 'assets/slider/du-an-eco-green-sai-gon-quan-7-03.png', 80, 44, '870|478', 1, 1538795784, 17, 'du-an-eco-green-sai-gon-quan-7-03.png', ''),
('du-an-eco-...png', 'png', 'image', 596634, 'assets/slider/du-an-eco-green-sai-gon-quan-7-04.png', 80, 44, '870|478', 1, 1538795784, 17, 'du-an-eco-green-sai-gon-quan-7-04.png', ''),
('du-an-eco-...png', 'png', 'image', 956659, 'assets/slider/du-an-eco-green-sai-gon-quan-7-01.png', 80, 44, '870|478', 1, 1538795784, 17, 'du-an-eco-green-sai-gon-quan-7-01.png', ''),
('du-an-eco-...png', 'png', 'image', 1043900, 'assets/slider/du-an-eco-green-sai-gon-quan-7-05.png', 80, 44, '870|478', 1, 1538795784, 17, 'du-an-eco-green-sai-gon-quan-7-05.png', ''),
('du-an-eco-...png', 'png', 'image', 1062637, 'assets/slider/du-an-eco-green-sai-gon-quan-7-02.png', 80, 44, '870|478', 1, 1538795785, 17, 'du-an-eco-green-sai-gon-quan-7-02.png', ''),
('vi-tri-du-...png', 'png', 'image', 759272, 'assets/page/vi-tri-du-an-eco-green-sai-gon-quan-7.png', 80, 74, '1024|938', 1, 1538800613, 13, 'vi-tri-du-an-eco-green-sai-gon-quan-7.png', 'vi tri du an eco green sai gon quan 7'),
('logo-nukev...png', 'png', 'image', 13223, 'assets/about/logo-nukeviet3-flag-180x75.png', 80, 34, '180|75', 1, 1533545699, 2, 'logo-nukeviet3-flag-180x75.png', 'logo nukeviet3 flag 180x75'),
('nukevietcm...png', 'png', 'image', 11974, 'assets/about/nukevietcms-180x84.png', 80, 38, '180|84', 1, 1533545699, 2, 'nukevietcms-180x84.png', 'nukevietcms 180x84'),
('nukevietcms.png', 'png', 'image', 85684, 'assets/about/nukevietcms.png', 80, 38, '1500|700', 1, 1533545699, 2, 'nukevietcms.png', 'nukevietcms'),
('nukevietcm...png', 'png', 'image', 13125, 'assets/about/nukevietcms_laco_180x57.png', 80, 26, '180|57', 1, 1533545699, 2, 'nukevietcms_laco_180x57.png', 'nukevietcms laco 180x57'),
('nukevietcm...png', 'png', 'image', 13319, 'assets/about/nukevietcms_mu_noel_180x84.png', 80, 38, '180|84', 1, 1533545699, 2, 'nukevietcms_mu_noel_180x84.png', 'nukevietcms mu noel 180x84'),
('nukevietvn.png', 'png', 'image', 81035, 'assets/about/nukevietvn.png', 80, 38, '1500|700', 1, 1533545699, 2, 'nukevietvn.png', 'nukevietvn'),
('nukevietvn...png', 'png', 'image', 11586, 'assets/about/nukevietvn_180x84.png', 80, 38, '180|84', 1, 1533545699, 2, 'nukevietvn_180x84.png', 'nukevietvn 180x84'),
('w.png', 'png', 'image', 12156, 'assets/about/w.png', 80, 40, '288|143', 1, 1533545699, 2, 'w.png', 'w'),
('vinades.jpg', 'jpg', 'image', 104940, 'assets/banners/vinades.jpg', 43, 80, '212|400', 1, 1533545699, 3, 'vinades.jpg', 'vinades'),
('webnhanh.jpg', 'jpg', 'image', 74347, 'assets/banners/webnhanh.jpg', 80, 10, '572|72', 1, 1533545699, 3, 'webnhanh.jpg', 'webnhanh'),
('chuc-mung-...jpg', 'jpg', 'image', 130708, 'assets/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 80, 62, '461|360', 1, 1533545699, 9, 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'chuc mung nukeviet thong tu 20 bo tttt'),
('hoc-viec-t...jpg', 'jpg', 'image', 167193, 'assets/news/hoc-viec-tai-cong-ty-vinades.jpg', 80, 63, '460|360', 1, 1533545699, 9, 'hoc-viec-tai-cong-ty-vinades.jpg', 'hoc viec tai cong ty vinades'),
('hoptac 6.jpg', 'jpg', 'image', 12871, 'uploads/news/hoptac 6.jpg', 80, 66, '382|314', 1, 1533545699, 9, 'hoptac 6.jpg', 'hoptac 6'),
('hoptac.jpg', 'jpg', 'image', 12871, 'assets/news/hoptac.jpg', 80, 66, '382|314', 1, 1533545699, 9, 'hoptac.jpg', 'hoptac'),
('nangly.jpg', 'jpg', 'image', 34802, 'assets/news/nangly.jpg', 80, 53, '500|332', 1, 1533545699, 9, 'nangly.jpg', 'nangly'),
('nukeviet-cms.jpg', 'jpg', 'image', 83489, 'assets/news/nukeviet-cms.jpg', 80, 55, '500|345', 1, 1533545699, 9, 'nukeviet-cms.jpg', 'nukeviet cms'),
('nukeviet-n...jpg', 'jpg', 'image', 18611, 'assets/news/nukeviet-nhantaidatviet2011.jpg', 80, 54, '400|268', 1, 1533545699, 9, 'nukeviet-nhantaidatviet2011.jpg', 'nukeviet nhantaidatviet2011'),
('tap-huan-p...jpg', 'jpg', 'image', 132379, 'assets/news/tap-huan-pgd-ha-dong-2015.jpg', 80, 52, '460|295', 1, 1533545699, 9, 'tap-huan-pgd-ha-dong-2015.jpg', 'tap huan pgd ha dong 2015'),
('thuc-tap-sinh.jpg', 'jpg', 'image', 71135, 'assets/news/thuc-tap-sinh.jpg', 80, 63, '460|360', 1, 1533545699, 9, 'thuc-tap-sinh.jpg', 'thuc tap sinh'),
('tuyen-dung...png', 'png', 'image', 118910, 'assets/news/tuyen-dung-nvkd.png', 80, 56, '400|279', 1, 1533545699, 9, 'tuyen-dung-nvkd.png', 'tuyen dung nvkd'),
('tuyendung-...jpg', 'jpg', 'image', 83783, 'assets/news/tuyendung-kythuat.jpg', 80, 80, '300|300', 1, 1533545699, 9, 'tuyendung-kythuat.jpg', 'tuyendung kythuat'),
('phoi-canh-...jpg', 'jpg', 'image', 357251, 'assets/page/phoi-canh-du-an-eco-green-sai-gon.jpg', 80, 35, '1500|650', 1, 1538802488, 13, 'phoi-canh-du-an-eco-green-sai-gon.jpg', 'PHOI CANH DU AN ECO GREEN SAI GON'),
('tien-ich-d...png', 'png', 'image', 599269, 'assets/page/tien-ich-du-an-eco-green-sai-gon.png', 80, 70, '720|630', 1, 1538806872, 13, 'tien-ich-du-an-eco-green-sai-gon.png', 'TIEN ICH DU AN ECO GREEN SAI GON'),
('line-dep-moi.png', 'png', 'image', 2001, 'assets/page/line-dep-moi.png', 80, 6, '434|27', 1, 1538807134, 13, 'line-dep-moi.png', 'line dep moi'),
('mat-bang-s...jpg', 'jpg', 'image', 404524, 'assets/page/mat-bang-shophouse-tang-1-1024x758.jpg', 80, 46, '1024|592', 1, 1538807985, 13, 'mat-bang-shophouse-tang-1-1024x758.jpg', 'Mat bang shophouse Tang 1 1024x758'),
('mat-bang-b...jpg', 'jpg', 'image', 424383, 'assets/page/mat-bang-blue-diamond-tang-3-3bis-1-1024x576.jpg', 80, 46, '1024|592', 1, 1538808003, 13, 'mat-bang-blue-diamond-tang-3-3bis-1-1024x576.jpg', 'MAT BANG BLUE DIAMOND TANG 3 3Bis 1 1024x576'),
('mat-bang-b...jpg', 'jpg', 'image', 328119, 'assets/page/mat-bang-blue-diamond-tang-5-10-1024x592.jpg', 80, 46, '1024|592', 1, 1538808014, 13, 'mat-bang-blue-diamond-tang-5-10-1024x592.jpg', 'MAT BANG BLUE DIAMOND TANG 5 10 1024x592'),
('mat-bang-b...jpg', 'jpg', 'image', 199471, 'assets/page/mat-bang-blue-diamond-tang-11-17-1024x592.jpg', 80, 46, '1024|592', 1, 1538808022, 13, 'mat-bang-blue-diamond-tang-11-17-1024x592.jpg', 'MAT BANG BLUE DIAMOND TANG 11 17 1024x592'),
('mat-bang-b...jpg', 'jpg', 'image', 298025, 'assets/page/mat-bang-blue-diamond-tang-21-35-1024x592.jpg', 80, 46, '1024|592', 1, 1538808033, 13, 'mat-bang-blue-diamond-tang-21-35-1024x592.jpg', 'MAT BANG BLUE DIAMOND TANG 21 35 1024x592'),
('mat-bang-b...jpg', 'jpg', 'image', 194966, 'assets/page/mat-bang-blue-diamond-tang-18-20-1-1024x592.jpg', 80, 46, '1024|592', 1, 1538808042, 13, 'mat-bang-blue-diamond-tang-18-20-1-1024x592.jpg', 'MAT BANG BLUE DIAMOND TANG 18 20 1 1024x592'),
('khu-nam-sa...jpg', 'jpg', 'image', 358134, 'assets/news/2018_10/khu-nam-sai-gon-eco-green-sai-gon.jpg', 80, 43, '1400|750', 1, 1538964221, 19, 'khu-nam-sai-gon-eco-green-sai-gon.jpg', 'KHU NAM SAI GON ECO GREEN SAI GON');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users`
--

CREATE TABLE `nv4_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT '-1' COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `idsite`, `safemode`, `safekey`, `email_verification_time`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA512}njbmRbR0aSF9mxSRi66UJKPVgiQCG5rz0OC6eGbLa4IpICTHQUtCEAuadJZOXGDtNruKkOUwyp7O896kHq4ZDWFmYWE=', 'tuanmanhnguyen195@gmail.com', 'admin', '', '', '', 0, '', 1538639902, 'cauhoi', 'traloi', '', 0, 1, '1', 1, 0, 'EOOQ7QVHCSDCUZ23', '', 1538639902, '', '', '', 0, 0, '', -3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_backupcodes`
--

CREATE TABLE `nv4_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_config`
--

CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:6:{s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1538639857),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1538639857),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1538639857),
('avatar_width', '80', 1538639857),
('avatar_height', '80', 1538639857),
('active_group_newusers', '0', 1538639857),
('active_user_logs', '1', 1538639857),
('min_old_user', '16', 1538639857),
('register_active_time', '86400', 1538639857),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_field`
--

CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `system` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_field`
--

INSERT INTO `nv4_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_groups`
--

CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 0, 0, 1538639857, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 0, 0, 1538639857, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 0, 0, 1538639857, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 0, 0, 1538639857, 0, 4, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 0, 0, 1538639857, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 0, 0, 1538639857, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 0, 0, 1538639857, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 0, 0, 1, 1538639857, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 0, 0, 1538639857, 0, 9, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 1, '', '', 0, 0, 0, 1538639857, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_groups_users`
--

CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`) VALUES
(1, 1, 1, 1, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_info`
--

CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_openid`
--

CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_question`
--

CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_users_reg`
--

CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_about`
--

CREATE TABLE `nv4_vi_about` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_about_config`
--

CREATE TABLE `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_about_config`
--

INSERT INTO `nv4_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blocks_groups`
--

CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(7, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984516;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(32, 'default', 'menu', 'global.bootstrap.php', 'global bootstrap', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(35, 'default', 'page', 'global.page_list.php', 'global page list', '', 'no_title', '[MIDDLE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:12:\"title_length\";i:0;s:6:\"numrow\";i:5;}'),
(36, 'default', 'news', 'module.block_content.php', 'global about', '', 'no_title', '[CONTENT_TOP]', 0, '1', 1, '6', 0, 1, ''),
(42, 'default', 'slider', 'global.slider.php', 'global slider', '', 'no_title', '[SLIDER]', 0, '1', 1, '6', 0, 1, 'a:3:{s:7:\"blockid\";i:0;s:7:\"numrows\";i:3;s:6:\"plugin\";s:4:\"nivo\";}'),
(46, 'default', 'page', 'global.html.php', 'VỊ TRÍ DỰ ÁN ECO GREEN SÀI GÒN', '', 'heading_home', '[CONTENT_MIDDLE]', 0, '1', 1, '6', 1, 4, 'a:1:{s:11:\"htmlcontent\";s:2582:\"<div class=\"w-image align_center\"><img alt=\"line dep moi\" class=\"attachment-large size-large\" height=\"27\" sizes=\"(max-width: 434px) 100vw, 434px\" src=\"/uploads/page/line-dep-moi.png\" width=\"434\" /></div><div class=\"g-cols wpb_row offset_small vc_inner \"><div class=\"one-half\"><div class=\"w-image align_center\"><img alt=\"vi tri du an eco green sai gon quan 7\" class=\"attachment-large size-large\" height=\"938\" sizes=\"(max-width: 1024px) 100vw, 1024px\" src=\"/uploads/page/vi-tri-du-an-eco-green-sai-gon-quan-7.png\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/VI-TRI-DU-AN-ECO-GREEN-SAI-GON-QUAN-7.png\" width=\"1024\" /></div></div></div><div class=\"one-half\"><div class=\"wpb_text_column \"><div class=\"wpb_wrapper\"><p style=\"text-align: justify;\">Dự án Eco Green Sài Gòn tọa lạc tại đường Nguyễn Văn Linh, Phường Tân Thuận Tây, Quận 7, TP HCM. Vị trí dự án Eco Green Sài Gòn được đánh giá rất cao vì tiềm năng phát triển. Dự án nằm giữ tâm điểm của 3 khu đô thị lớn nhất thành phố Hồ Chí Minh là: Trung tâm TP ( Quận 1), khu đô thị Nam Sài Gòn ( Phú Mỹ Hưng) và khu đô thị mới Thủ Thiêm.</p><p style=\"text-align: justify;\">Hiện tại, UBND TP đang di dời Cảng Khánh Hội Quận 4 để triển khai Khu chức năng Nhà Rồng Khánh Hội với diện tích 35 hecta. Dự án phát triển sản phẩm thương mại, dịch vụ và căn hộ. Đồng thời UBND TP cũng đầu tư hơn 11.000 tỷ đồng để mở rộng và nâng cấp đường Nguyễn Tất Thành. Điều này giúp cư dân Eco Green dễ dàng di chuyển về trung tâm thành phố.</p><p style=\"text-align: justify;\">Trong năm 2017, UBND TP kiến nghị chính phủ sớm triển khai xây dựng cầu Thủ Thiêm 4 bằng hình thức BT. Cầu Thủ Thiêm 4 có chiều dài 2,1 km với 6 làn xe kết nối từ Khu đô thị Thủ Thiêm qua đường Nguyễn Văn Linh và Huỳnh Tấn Phát Quận 7. Sau khi hoàn thành, cư dân Eco Green Sài Gòn dễ dàng di chuyển về khu đô thị mới Thủ Thiêm.</p><p style=\"text-align: justify;\">Đồng thời, dự án Eco Green Sài Gòn nằm kế cận khu đô thị Phú Mỹ Hưng. Cư dân chỉ mất 2,5 km tương đương với 5 phút để di chuyển về PMH. Tại đây, cư dân được thừa hưởng những tiện ích cao cấp như: Crescent Mall, Vivo City. Các trường đại học và bệnh viện quốc tế như: Rmit, FV, Tim Tâm Đức,..</p></div></div></div>\";}'),
(48, 'default', 'slider', 'global.slider.php', 'global slider', '', 'no_title', '[SLIDER]', 0, '1', 1, '6', 0, 2, 'a:3:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:3;s:6:\"plugin\";s:4:\"nivo\";}'),
(49, 'default', 'page', 'global.html.php', 'MẶT BẰNG DỰ ÁN ECO GREEN SÀI GÒN', '', 'heading_home', '[CONTENT_MIDDLE]', 0, '1', 1, '6', 0, 5, 'a:1:{s:11:\"htmlcontent\";s:5559:\"<div class=\"w-image align_center\"><img alt=\"line dep moi\" class=\"attachment-large size-large\" height=\"27\" sizes=\"(max-width: 434px) 100vw, 434px\" src=\"/uploads/page/line-dep-moi.png\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/line-dep-moi.png\" width=\"434\" /></div><div class=\"w-image align_center\"><img alt=\"PHOI CANH DU AN ECO GREEN SAI GON\" class=\"attachment-large size-large\" height=\"650\" sizes=\"(max-width: 434px) 100vw, 434px\" src=\"/uploads/page/phoi-canh-du-an-eco-green-sai-gon.jpg\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/PHOI-CANH-DU-AN-ECO-GREEN-SAI-GON.jpg\" width=\"1500\" /></div><div class=\"wpb_text_column \"><div class=\"wpb_wrapper\"><p>Dự án Eco Green Sài Gòn rộng 14 hecta với các sản phẩm là: Văn phòng, khách sạn, trung tâm thương mại và căn hộ cao cấp. Trong đó có gần 4000 căn hộ, diện tích từ 45 93m2 ( 1-3PN). Bao gồm tòa HR1,2,3 cao 35 tầng bao gồm 2 tầng hầm.</p><ul>	<li>1 Khu Khách sạn, Văn phòng, Thương mại (C-1)</li>	<li>1 Khu Thương Mại (C-2)</li>	<li>2 Khu Cao ốc đa chức năng (M-1, M-2)</li>	<li>3 Khu Căn hộ chung cư (HR-1, HR-2, HR-3)</li>	<li>2 Khu Chung cư thu nhập thấp (MR-1, MR-2)</li>	<li>Nhà trẻ (CP-1)</li></ul><p>&nbsp;</p></div></div><div class=\"w-separator type_invisible size_small thick_1 style_solid color_border cont_none\">&nbsp;</div><div class=\"wpb_text_column \"><div class=\"wpb_wrapper\"><span style=\"color: rgb(0, 0, 255);\"><strong>BLOCK BLUE DIAMOND ECO GREEN SÀI GÒN </strong></span><p>&nbsp;</p><ul>	<li>Quy mô: 2 Block, cao 35 tầng, bao gồm 2 tầng hầm.</li>	<li>Sản phẩm: Offictel và căn hộ</li>	<li>Số lượng: 726 căn với diện tích từ 45 90 m2 ( 1- 3PN).</li>	<li>Mặt Bằng Tầng: 10 căn/sàn. Bao gồm 5 thang máy, 2 thang thoát hiểm</li></ul></div></div><div class=\"w-gallery layout_masonry cols_3 with_indents link_media\"><div class=\"w-gallery-list\"><a class=\"w-gallery-item order_1\" href=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/Mat-bang-shophouse-Tang-1-1024x758.jpg\" title=\"Mat-bang-shophouse-Tang-1-1024x758\"><img alt=\"MAT BANG BLUE DIAMOND TANG 18 20 1 1024x592\" class=\"w-gallery-item-img\" height=\"592\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"/uploads/page/mat-bang-blue-diamond-tang-18-20-1-1024x592.jpg\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/Mat-bang-shophouse-Tang-1-1024x758.jpg\" width=\"1024\" /><span class=\"w-gallery-item-title\">Mat-bang-shophouse-Tang-1-1024x758</span> </a> <a class=\"w-gallery-item order_2\" href=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-3-3Bis-1-1024x576.jpg\" title=\"MAT-BANG-BLUE-DIAMOND-TANG-3-3Bis-1-1024x576\"><img alt=\"MAT BANG BLUE DIAMOND TANG 3 3Bis 1 1024x576\" class=\"w-gallery-item-img\" height=\"592\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"/uploads/page/mat-bang-blue-diamond-tang-3-3bis-1-1024x576.jpg\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-3-3Bis-1-1024x576.jpg\" width=\"1024\" /><span class=\"w-gallery-item-title\">MAT-BANG-BLUE-DIAMOND-TANG-3-3Bis-1-1024x576</span> </a> <a class=\"w-gallery-item order_3\" href=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-5-10-1024x592.jpg\" title=\"MAT-BANG-BLUE-DIAMOND-TANG-5-10-1024x592\"><img alt=\"\" class=\"w-gallery-item-img\" height=\"347\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-5-10-1024x592.jpg\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-5-10-1024x592.jpg\" width=\"600\" /><span class=\"w-gallery-item-title\">MAT-BANG-BLUE-DIAMOND-TANG-5-10-1024x592</span> </a> <a class=\"w-gallery-item order_4\" href=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-11-17-1024x592.jpg\" title=\"MAT-BANG-BLUE-DIAMOND-TANG-11-17-1024x592\"><img alt=\"\" class=\"w-gallery-item-img\" height=\"347\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-11-17-1024x592.jpg\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-11-17-1024x592.jpg\" width=\"600\" /><span class=\"w-gallery-item-title\">MAT-BANG-BLUE-DIAMOND-TANG-11-17-1024x592</span> </a> <a class=\"w-gallery-item order_5\" href=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-21-35-1024x592.jpg\" title=\"MAT-BANG-BLUE-DIAMOND-TANG-21-35-1024x592\"><img alt=\"\" class=\"w-gallery-item-img\" height=\"347\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-21-35-1024x592.jpg\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-21-35-1024x592.jpg\" width=\"600\" /><span class=\"w-gallery-item-title\">MAT-BANG-BLUE-DIAMOND-TANG-21-35-1024x592</span> </a> <a class=\"w-gallery-item order_6\" href=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-18-20-1-1024x592.jpg\" title=\"MAT-BANG-BLUE-DIAMOND-TANG-18-20-1-1024x592\"><img alt=\"\" class=\"w-gallery-item-img\" height=\"347\" sizes=\"(max-width: 600px) 100vw, 600px\" src=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-18-20-1-1024x592.jpg\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/MAT-BANG-BLUE-DIAMOND-TANG-18-20-1-1024x592.jpg\" width=\"600\" /><span class=\"w-gallery-item-title\">MAT-BANG-BLUE-DIAMOND-TANG-18-20-1-1024x592</span> </a></div></div>\";}'),
(50, 'default', 'page', 'global.html.php', 'TIỆN ÍCH DỰ ÁN ECO GREEN SÀI GÒN', '', 'heading_home2', '[CONTENT_MIDDLE]', 0, '1', 1, '6', 1, 6, 'a:1:{s:11:\"htmlcontent\";s:1602:\"<div class=\"w-image align_center\"><img alt=\"line dep moi\" class=\"attachment-large size-large\" height=\"27\" sizes=\"(max-width: 434px) 100vw, 434px\" src=\"/uploads/page/line-dep-moi.png\" srcset=\"https://ecogreenquan7.vn/wp-content/uploads/2018/05/line-dep-moi.png\" width=\"434\" /></div><div class=\"wpb_text_column \"><div class=\"wpb_wrapper\"><p>Dự án Eco Green Sài Gòn cung cấp cho cư dân đầy đủ nhũng tiện ích hiện đại như:</p><ul>	<li>Phòng sinh hoạt cộng đồng, phòng Gym</li>	<li>Nhà giữ trẻ.</li>	<li>Hồ bơi tràn</li>	<li>Trung tâm thương mại</li>	<li>Phố thương mại bán lẻ các spa, nhà hàng, café, bar…</li>	<li>Công viên 5 hecta tại trung tâm dự án.</li></ul><p>Dự án Eco Green Sài Gòn nằm cạnh công viên Hương Tràm rộng 20 hecta tại P.Bình Thuận, Quận 7. Sau khi hoàn thành, đây sẽ trở thành 1 trong những công viên lớn nhất khu Nam Sài Gòn</p><p>Với vị trí nằm gần khu đô thị Phú Mỹ Hưng và quận 1 nên từ dự án cư dân có thể kết nối nhanh đến các tiện ích cao cấp xung quanh như: khu vui chơi giải trí Cầu Ánh Sao, Đại Học RMIT, Đại học Tôn Đức Thắng, Bệnh viện tim Tâm Đức, Bệnh viện Việt Pháp, Siêu thị VivoCity, Siêu thị Crescent Mall…</p></div></div><div class=\"w-image align_center\"><img alt=\"TIEN ICH DU AN ECO GREEN SAI GON\" class=\"attachment-full size-full\" height=\"630\" sizes=\"(max-width: 720px) 100vw, 720px\" src=\"/uploads/page/tien-ich-du-an-eco-green-sai-gon.png\" width=\"720\" /></div>\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_blocks_weight`
--

CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(18, 1, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 41, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 50, 1),
(18, 51, 1),
(18, 61, 1),
(18, 64, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 52, 1),
(18, 63, 1),
(18, 55, 1),
(18, 56, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 37, 1),
(18, 58, 1),
(18, 59, 1),
(18, 60, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 29, 1),
(18, 62, 1),
(11, 1, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 50, 1),
(11, 51, 1),
(11, 61, 1),
(11, 64, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 52, 1),
(11, 63, 1),
(11, 55, 1),
(11, 56, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 58, 1),
(11, 59, 1),
(11, 60, 1),
(11, 19, 1),
(11, 20, 1),
(11, 21, 1),
(11, 22, 1),
(11, 23, 1),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(11, 27, 1),
(11, 28, 1),
(11, 29, 1),
(11, 62, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 28, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(5, 1, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 41, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 50, 1),
(5, 51, 1),
(5, 61, 1),
(5, 64, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 52, 1),
(5, 63, 1),
(5, 55, 1),
(5, 56, 1),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 37, 2),
(5, 58, 1),
(5, 59, 1),
(5, 60, 1),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 2),
(5, 29, 1),
(5, 62, 1),
(6, 1, 2),
(6, 38, 2),
(6, 39, 2),
(6, 40, 2),
(6, 41, 2),
(6, 47, 2),
(6, 48, 2),
(6, 49, 2),
(6, 50, 2),
(6, 51, 2),
(6, 61, 2),
(6, 64, 2),
(6, 4, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 52, 2),
(6, 63, 2),
(6, 55, 2),
(6, 56, 2),
(6, 31, 3),
(6, 32, 3),
(6, 33, 3),
(6, 34, 3),
(6, 35, 3),
(6, 36, 3),
(6, 37, 3),
(6, 58, 2),
(6, 59, 2),
(6, 60, 2),
(6, 19, 3),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 3),
(6, 29, 2),
(6, 62, 2),
(20, 1, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 41, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 50, 1),
(20, 51, 1),
(20, 61, 1),
(20, 64, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 52, 1),
(20, 63, 1),
(20, 55, 1),
(20, 56, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 37, 1),
(20, 58, 1),
(20, 59, 1),
(20, 60, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 29, 1),
(20, 62, 1),
(15, 1, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 41, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 51, 1),
(15, 61, 1),
(15, 64, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 52, 1),
(15, 63, 1),
(15, 55, 1),
(15, 56, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 58, 1),
(15, 59, 1),
(15, 60, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 29, 1),
(15, 62, 1),
(13, 1, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 41, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 51, 1),
(13, 61, 1),
(13, 64, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 52, 1),
(13, 63, 1),
(13, 55, 1),
(13, 56, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 58, 1),
(13, 59, 1),
(13, 60, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 62, 1),
(14, 1, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 41, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 50, 2),
(14, 51, 2),
(14, 61, 2),
(14, 64, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 52, 2),
(14, 63, 2),
(14, 55, 2),
(14, 56, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 37, 2),
(14, 58, 2),
(14, 59, 2),
(14, 60, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 29, 2),
(14, 62, 2),
(7, 1, 1),
(7, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 41, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 50, 1),
(7, 51, 1),
(7, 61, 1),
(7, 64, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 1),
(7, 10, 1),
(7, 11, 1),
(7, 12, 1),
(7, 52, 1),
(7, 63, 1),
(7, 55, 1),
(7, 56, 1),
(7, 31, 1),
(7, 32, 1),
(7, 33, 1),
(7, 34, 1),
(7, 35, 1),
(7, 36, 1),
(7, 37, 1),
(7, 58, 1),
(7, 59, 1),
(7, 60, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(7, 22, 1),
(7, 23, 1),
(7, 24, 1),
(7, 25, 1),
(7, 26, 1),
(7, 27, 1),
(7, 28, 1),
(7, 29, 1),
(7, 62, 1),
(8, 1, 2),
(8, 38, 2),
(8, 39, 2),
(8, 40, 2),
(8, 41, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 50, 2),
(8, 51, 2),
(8, 61, 2),
(8, 64, 2),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 52, 2),
(8, 63, 2),
(8, 55, 2),
(8, 56, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 37, 2),
(8, 58, 2),
(8, 59, 2),
(8, 60, 2),
(8, 19, 2),
(8, 20, 2),
(8, 21, 2),
(8, 22, 2),
(8, 23, 2),
(8, 24, 2),
(8, 25, 2),
(8, 26, 2),
(8, 27, 2),
(8, 28, 2),
(8, 29, 2),
(8, 62, 2),
(9, 1, 3),
(9, 38, 3),
(9, 39, 3),
(9, 40, 3),
(9, 41, 3),
(9, 47, 3),
(9, 48, 3),
(9, 49, 3),
(9, 50, 3),
(9, 51, 3),
(9, 61, 3),
(9, 64, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 52, 3),
(9, 63, 3),
(9, 55, 3),
(9, 56, 3),
(9, 31, 3),
(9, 32, 3),
(9, 33, 3),
(9, 34, 3),
(9, 35, 3),
(9, 36, 3),
(9, 37, 3),
(9, 58, 3),
(9, 59, 3),
(9, 60, 3),
(9, 19, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 29, 3),
(9, 62, 3),
(10, 1, 4),
(10, 38, 4),
(10, 39, 4),
(10, 40, 4),
(10, 41, 4),
(10, 47, 4),
(10, 48, 4),
(10, 49, 4),
(10, 50, 4),
(10, 51, 4),
(10, 61, 4),
(10, 64, 4),
(10, 4, 4),
(10, 5, 4),
(10, 6, 4),
(10, 7, 4),
(10, 8, 4),
(10, 9, 4),
(10, 10, 4),
(10, 11, 4),
(10, 12, 4),
(10, 52, 4),
(10, 63, 4),
(10, 55, 4),
(10, 56, 4),
(10, 31, 4),
(10, 32, 4),
(10, 33, 4),
(10, 34, 4),
(10, 35, 4),
(10, 36, 4),
(10, 37, 4),
(10, 58, 4),
(10, 59, 4),
(10, 60, 4),
(10, 19, 4),
(10, 20, 4),
(10, 21, 4),
(10, 22, 4),
(10, 23, 4),
(10, 24, 4),
(10, 25, 4),
(10, 26, 4),
(10, 27, 4),
(10, 28, 4),
(10, 29, 4),
(10, 62, 4),
(19, 1, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 41, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 50, 1),
(19, 51, 1),
(19, 61, 1),
(19, 64, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 52, 1),
(19, 63, 1),
(19, 55, 1),
(19, 56, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 37, 1),
(19, 58, 1),
(19, 59, 1),
(19, 60, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 29, 1),
(19, 62, 1),
(30, 1, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 41, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 50, 1),
(30, 51, 1),
(30, 61, 1),
(30, 64, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 52, 1),
(30, 63, 1),
(30, 55, 1),
(30, 56, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 37, 1),
(30, 58, 1),
(30, 59, 1),
(30, 60, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 29, 1),
(30, 62, 1),
(28, 1, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 41, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 50, 1),
(28, 51, 1),
(28, 61, 1),
(28, 64, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 52, 1),
(28, 63, 1),
(28, 55, 1),
(28, 56, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 37, 1),
(28, 58, 1),
(28, 59, 1),
(28, 60, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 29, 1),
(28, 62, 1),
(29, 1, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 41, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 50, 1),
(29, 51, 1),
(29, 61, 1),
(29, 64, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 52, 1),
(29, 63, 1),
(29, 55, 1),
(29, 56, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 37, 1),
(29, 58, 1),
(29, 59, 1),
(29, 60, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 29, 1),
(29, 62, 1),
(22, 1, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 41, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 50, 1),
(22, 51, 1),
(22, 61, 1),
(22, 64, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 52, 1),
(22, 63, 1),
(22, 55, 1),
(22, 56, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 37, 1),
(22, 58, 1),
(22, 59, 1),
(22, 60, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 29, 1),
(22, 62, 1),
(23, 1, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 41, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 50, 2),
(23, 51, 2),
(23, 61, 2),
(23, 64, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 52, 2),
(23, 63, 2),
(23, 55, 2),
(23, 56, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 37, 2),
(23, 58, 2),
(23, 59, 2),
(23, 60, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 29, 2),
(23, 62, 2),
(24, 1, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 41, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 50, 1),
(24, 51, 1),
(24, 61, 1),
(24, 64, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 52, 1),
(24, 63, 1),
(24, 55, 1),
(24, 56, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 37, 1),
(24, 58, 1),
(24, 59, 1),
(24, 60, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 29, 1),
(24, 62, 1),
(25, 1, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 41, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 50, 2),
(25, 51, 2),
(25, 61, 2),
(25, 64, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 52, 2),
(25, 63, 2),
(25, 55, 2),
(25, 56, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 37, 2),
(25, 58, 2),
(25, 59, 2),
(25, 60, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 29, 2),
(25, 62, 2),
(26, 1, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 41, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 50, 3),
(26, 51, 3),
(26, 61, 3),
(26, 64, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 52, 3),
(26, 63, 3),
(26, 55, 3),
(26, 56, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 37, 3),
(26, 58, 3),
(26, 59, 3),
(26, 60, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 29, 3),
(26, 62, 3),
(27, 1, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 41, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 50, 4),
(27, 51, 4),
(27, 61, 4),
(27, 64, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 52, 4),
(27, 63, 4),
(27, 55, 4),
(27, 56, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 37, 4),
(27, 58, 4),
(27, 59, 4),
(27, 60, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 29, 4),
(27, 62, 4),
(32, 1, 1),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 7, 1),
(32, 8, 1),
(32, 9, 1),
(32, 10, 1),
(32, 11, 1),
(32, 12, 1),
(32, 19, 1),
(32, 20, 1),
(32, 21, 1),
(32, 22, 1),
(32, 23, 1),
(32, 24, 1),
(32, 25, 1),
(32, 26, 1),
(32, 27, 1),
(32, 28, 1),
(32, 29, 1),
(32, 61, 1),
(32, 31, 1),
(32, 32, 1),
(32, 33, 1),
(32, 34, 1),
(32, 35, 1),
(32, 36, 1),
(32, 37, 1),
(32, 62, 1),
(32, 38, 1),
(32, 39, 1),
(32, 40, 1),
(32, 41, 1),
(32, 63, 1),
(32, 64, 1),
(32, 52, 1),
(32, 47, 1),
(32, 48, 1),
(32, 49, 1),
(32, 50, 1),
(32, 51, 1),
(32, 55, 1),
(32, 56, 1),
(32, 58, 1),
(32, 59, 1),
(32, 60, 1),
(36, 9, 1),
(36, 12, 1),
(36, 10, 1),
(36, 11, 1),
(36, 7, 1),
(36, 8, 1),
(36, 6, 1),
(35, 1, 1),
(35, 3, 1),
(35, 4, 1),
(35, 5, 1),
(35, 6, 1),
(35, 7, 1),
(35, 8, 1),
(35, 9, 1),
(35, 10, 1),
(35, 11, 1),
(35, 12, 1),
(35, 19, 1),
(35, 20, 1),
(35, 21, 1),
(35, 22, 1),
(35, 23, 1),
(35, 24, 1),
(35, 25, 1),
(35, 26, 1),
(35, 27, 1),
(35, 28, 1),
(35, 29, 1),
(35, 61, 1),
(35, 31, 1),
(35, 32, 1),
(35, 33, 1),
(35, 34, 1),
(35, 35, 1),
(35, 36, 1),
(35, 37, 1),
(35, 62, 1),
(35, 38, 1),
(35, 39, 1),
(35, 40, 1),
(35, 41, 1),
(35, 63, 1),
(35, 64, 1),
(35, 54, 1),
(35, 52, 1),
(35, 47, 1),
(35, 48, 1),
(35, 49, 1),
(35, 50, 1),
(35, 51, 1),
(35, 55, 1),
(35, 56, 1),
(35, 58, 1),
(35, 59, 1),
(35, 60, 1),
(36, 4, 1),
(36, 5, 1),
(42, 5, 1),
(42, 6, 1),
(42, 7, 1),
(42, 8, 1),
(42, 9, 1),
(42, 10, 1),
(42, 11, 1),
(42, 12, 1),
(46, 4, 1),
(46, 5, 3),
(46, 6, 3),
(46, 7, 3),
(46, 8, 3),
(46, 9, 3),
(46, 10, 3),
(46, 11, 3),
(46, 12, 3),
(48, 4, 1),
(48, 5, 2),
(48, 6, 2),
(48, 7, 2),
(48, 8, 2),
(48, 9, 2),
(48, 10, 2),
(48, 11, 2),
(48, 12, 2),
(46, 1, 1),
(46, 3, 1),
(46, 19, 1),
(46, 20, 1),
(46, 21, 1),
(46, 22, 1),
(46, 23, 1),
(46, 24, 1),
(46, 25, 1),
(46, 26, 1),
(46, 27, 1),
(46, 28, 1),
(46, 29, 1),
(46, 61, 1),
(46, 31, 1),
(46, 32, 1),
(46, 33, 1),
(46, 34, 1),
(46, 35, 1),
(46, 36, 1),
(46, 37, 1),
(46, 62, 1),
(46, 38, 1),
(46, 39, 1),
(46, 40, 1),
(46, 41, 1),
(46, 63, 1),
(46, 64, 1),
(46, 54, 1),
(46, 52, 1),
(46, 47, 1),
(46, 48, 1),
(46, 49, 1),
(46, 50, 1),
(46, 51, 1),
(46, 55, 1),
(46, 56, 1),
(46, 58, 1),
(46, 59, 1),
(46, 60, 1),
(49, 1, 2),
(49, 3, 2),
(49, 4, 2),
(49, 5, 4),
(49, 6, 4),
(49, 7, 4),
(49, 8, 4),
(49, 9, 4),
(49, 10, 4),
(49, 11, 4),
(49, 12, 4),
(49, 19, 2),
(49, 20, 2),
(49, 21, 2),
(49, 22, 2),
(49, 23, 2),
(49, 24, 2),
(49, 25, 2),
(49, 26, 2),
(49, 27, 2),
(49, 28, 2),
(49, 29, 2),
(49, 61, 2),
(49, 31, 2),
(49, 32, 2),
(49, 33, 2),
(49, 34, 2),
(49, 35, 2),
(49, 36, 2),
(49, 37, 2),
(49, 62, 2),
(49, 38, 2),
(49, 39, 2),
(49, 40, 2),
(49, 41, 2),
(49, 63, 2),
(49, 64, 2),
(49, 54, 2),
(49, 52, 2),
(49, 47, 2),
(49, 48, 2),
(49, 49, 2),
(49, 50, 2),
(49, 51, 2),
(49, 55, 2),
(49, 56, 2),
(49, 58, 2),
(49, 59, 2),
(49, 60, 2),
(50, 1, 3),
(50, 3, 3),
(50, 4, 3),
(50, 5, 5),
(50, 6, 5),
(50, 7, 5),
(50, 8, 5),
(50, 9, 5),
(50, 10, 5),
(50, 11, 5),
(50, 12, 5),
(50, 19, 3),
(50, 20, 3),
(50, 21, 3),
(50, 22, 3),
(50, 23, 3),
(50, 24, 3),
(50, 25, 3),
(50, 26, 3),
(50, 27, 3),
(50, 28, 3),
(50, 29, 3),
(50, 61, 3),
(50, 31, 3),
(50, 32, 3),
(50, 33, 3),
(50, 34, 3),
(50, 35, 3),
(50, 36, 3),
(50, 37, 3),
(50, 62, 3),
(50, 38, 3),
(50, 39, 3),
(50, 40, 3),
(50, 41, 3),
(50, 63, 3),
(50, 64, 3),
(50, 54, 3),
(50, 52, 3),
(50, 47, 3),
(50, 48, 3),
(50, 49, 3),
(50, 50, 3),
(50, 51, 3),
(50, 55, 3),
(50, 56, 3),
(50, 58, 3),
(50, 59, 3),
(50, 60, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_comment`
--

CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_contact_department`
--

CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_contact_department`
--

INSERT INTO `nv4_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '(08) 38.000.000[+84838000000]', '08 38.000.001', 'customer@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{\"viber\":\"myViber\",\"skype\":\"mySkype\",\"yahoo\":\"myYahoo\"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0;', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{\"viber\":\"myViber2\",\"skype\":\"mySkype2\",\"yahoo\":\"myYahoo2\"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_contact_reply`
--

CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_contact_send`
--

CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_contact_supporter`
--

CREATE TABLE `nv4_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_freecontent_blocks`
--

CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_freecontent_blocks`
--

INSERT INTO `nv4_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_freecontent_rows`
--

CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_freecontent_rows`
--

INSERT INTO `nv4_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1538639857, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1538639857, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1538639857, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1538639857, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1538639857, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_menu`
--

CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_menu_rows`
--

CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(2, 0, 1, 'TIN TỨC', '/index.php?language=vi&nv=news', '', '', '', 4, 4, 0, '16,17,19,20,22', '6', 'news', '', 1, '', 0, 1),
(3, 0, 1, 'VỊ TRÍ', '/index.php?language=vi&nv=page&op=vi-tri.html', '', '', '', 1, 1, 0, '', '6', 'page', 'vi-tri.html', 1, '', 0, 1),
(4, 4, 1, 'Mặt bằng', '/index.php?language=vi&nv=mat-bang', '', '', '', 2, 2, 0, '4', '6', '0', '', 1, '', 0, 1),
(23, 0, 1, 'TIỆN ÍCH', '/index.php?language=vi&nv=page', '', '', '', 3, 3, 0, '', '6', 'page', '', 1, '', 0, 1),
(7, 7, 1, 'Liên hệ', '/index.php?language=vi&nv=contact', '', '', '', 6, 10, 0, '7', '6', 'contact', '', 1, '', 0, 1),
(25, 0, 1, 'LIÊN HỆ', '/index.php?language=vi&nv=contact', '', '', '', 5, 10, 0, '', '6', 'contact', '', 1, '', 0, 1),
(26, 0, 1, 'MẶT BẰNG', '/index.php?language=vi&nv=mat-bang', '', '', '', 2, 2, 0, '', '6', 'page', '', 1, '', 0, 1),
(16, 2, 1, 'Đối tác', '/index.php?language=vi&nv=news&op=Doi-tac', '', '', '', 1, 5, 1, '', '6', 'news', 'Doi-tac', 1, '', 0, 1),
(17, 2, 1, 'Tuyển dụng', '/index.php?language=vi&nv=news&op=Tuyen-dung', '', '', '', 2, 6, 1, '', '6', 'news', 'Tuyen-dung', 1, '', 0, 1),
(19, 2, 1, 'Đăng bài viết', '/index.php?language=vi&nv=news&op=content', '', '', '', 3, 7, 1, '', '6', 'news', 'content', 1, '', 0, 1),
(20, 2, 1, 'Tìm kiếm', '/index.php?language=vi&nv=news&op=search', '', '', '', 4, 8, 1, '', '6', 'news', 'search', 1, '', 0, 1),
(22, 2, 1, 'Sản phẩm', '/index.php?language=vi&nv=news&op=San-pham', '', '', '', 5, 9, 1, '', '6', 'news', 'San-pham', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_modfuncs`
--

CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', '', 'about', 1, 0, 2, ''),
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(18, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(19, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(20, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(21, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(22, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(23, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(24, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(25, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(26, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(27, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 9, ''),
(28, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 10, ''),
(29, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 0, 11, ''),
(30, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(31, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''),
(32, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''),
(33, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''),
(34, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''),
(35, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''),
(36, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''),
(37, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''),
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(40, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(42, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(44, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(45, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''),
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''),
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(51, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 1, 0, 0, ''),
(55, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(56, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(57, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(58, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(59, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(60, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(61, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(62, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''),
(63, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(64, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_modthemes`
--

CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'main', 'default'),
(0, 'main', 'mobile_default'),
(1, 'main', 'default'),
(1, 'main', 'mobile_default'),
(3, 'main', 'default'),
(4, 'main', 'default'),
(4, 'main', 'mobile_default'),
(5, 'main', 'default'),
(5, 'main', 'mobile_default'),
(6, 'main', 'default'),
(6, 'main', 'mobile_default'),
(7, 'main', 'default'),
(7, 'main', 'mobile_default'),
(8, 'main', 'default'),
(8, 'main', 'mobile_default'),
(9, 'main', 'default'),
(9, 'main', 'mobile_default'),
(10, 'main', 'default'),
(11, 'main', 'default'),
(11, 'main', 'mobile_default'),
(12, 'main', 'default'),
(12, 'main', 'mobile_default'),
(19, 'main', 'default'),
(19, 'main', 'mobile_default'),
(20, 'main', 'default'),
(20, 'main', 'mobile_default'),
(21, 'main', 'default'),
(21, 'main', 'mobile_default'),
(22, 'main', 'default'),
(22, 'main', 'mobile_default'),
(23, 'main', 'default'),
(23, 'main', 'mobile_default'),
(24, 'main', 'default'),
(24, 'main', 'mobile_default'),
(25, 'main', 'default'),
(25, 'main', 'mobile_default'),
(26, 'main', 'default'),
(26, 'main', 'mobile_default'),
(27, 'main', 'default'),
(28, 'main', 'default'),
(28, 'main', 'mobile_default'),
(29, 'main', 'default'),
(29, 'main', 'mobile_default'),
(31, 'main', 'default'),
(31, 'main', 'mobile_default'),
(32, 'main', 'default'),
(32, 'main', 'mobile_default'),
(33, 'main', 'default'),
(33, 'main', 'mobile_default'),
(34, 'main', 'default'),
(34, 'main', 'mobile_default'),
(35, 'main', 'default'),
(35, 'main', 'mobile_default'),
(36, 'main', 'default'),
(36, 'main', 'mobile_default'),
(37, 'main', 'default'),
(37, 'main', 'mobile_default'),
(38, 'main', 'default'),
(38, 'main', 'mobile_default'),
(39, 'main', 'default'),
(39, 'main', 'mobile_default'),
(40, 'main', 'default'),
(40, 'main', 'mobile_default'),
(41, 'main', 'default'),
(41, 'main', 'mobile_default'),
(47, 'main', 'default'),
(47, 'main', 'mobile_default'),
(48, 'main', 'default'),
(48, 'main', 'mobile_default'),
(49, 'main', 'default'),
(49, 'main', 'mobile_default'),
(50, 'main', 'default'),
(50, 'main', 'mobile_default'),
(51, 'main', 'default'),
(52, 'main', 'default'),
(52, 'main', 'mobile_default'),
(54, 'main', 'default'),
(55, 'main', 'default'),
(55, 'main', 'mobile_default'),
(56, 'main', 'default'),
(56, 'main', 'mobile_default'),
(58, 'main', 'default'),
(58, 'main', 'mobile_default'),
(59, 'main', 'default'),
(59, 'main', 'mobile_default'),
(60, 'main', 'default'),
(60, 'main', 'mobile_default'),
(61, 'main', 'default'),
(61, 'main', 'mobile_default'),
(62, 'main', 'default'),
(62, 'main', 'mobile_default'),
(63, 'main', 'default'),
(63, 'main', 'mobile_default'),
(64, 'main', 'default'),
(64, 'main', 'mobile_default');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_modules`
--

CREATE TABLE `nv4_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `sitemap` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`, `gid`) VALUES
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1538639857, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 1, 0),
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1538639857, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 1, 0),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1538639857, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 1, 0),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1538639857, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 1, 0),
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1538639857, 1, 1, '', '', '', 'online, statistics', '6', 5, 1, '', 0, 1, 0),
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1538639857, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 1, 0),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1538639857, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 1, 0),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1538639857, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 1, 0),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1538639857, 0, 1, 'default', '', '', '', '6', 9, 1, '', 0, 0, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', 'RSS-feeds', 1538639857, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 1, 0),
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1538639857, 1, 1, 'default', '', '', '', '6', 11, 1, '', 1, 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1538639857, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 1, 0),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1538639857, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 1, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', '', 1538639857, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 1, 0),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1538639857, 1, 0, '', '', '', '', '6', 15, 1, '', 0, 1, 0),
('slider', 'slider', 'slider', 'slider', 'slider', 'Slider', '', '', 1538792143, 0, 1, '', '', '', '', '6', 16, 1, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_1`
--

CREATE TABLE `nv4_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_1`
--

INSERT INTO `nv4_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(21, 1, '1,8', 0, 1, '', 0, 1538964305, 1538964305, 1, 1, 1538964120, 0, 2, 'Thông tin tổng hợp về căn hộ Eco Green Sài Gòn', 'thong-tin-tong-hop-ve-can-ho-eco-green-sai-gon', 'Eco Green Sài Gòn – Hiện nay những khu vực nội thành của TP.HCM đang thực sự khan hiếm quỹ đất, chính vì thế những khu vực gần nội thành như khu Nam, đặc biệt là khu vực quận 7 đã trở thành mảnh đất vàng và được đầu tư hạ tầng giao thông đồng bộ. Tại quận 7 đã xuất hiện một dự án căn hộ vô cùng hấp dẫn và lý tưởng dành cho toàn bộ đối tượng khách hàng khác nhau, đó chính là dự án Eco Green Sài Gòn.<br />Quy mô thiết kế của căn hộ Eco Green Sài Gòn', '2018_10/khu-nam-sai-gon-eco-green-sai-gon.jpg', 'KHU NAM SAI GON ECO GREEN SAI GON', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_2`
--

CREATE TABLE `nv4_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_8`
--

CREATE TABLE `nv4_vi_news_8` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_8`
--

INSERT INTO `nv4_vi_news_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(21, 1, '1,8', 0, 1, '', 0, 1538964305, 1538964305, 1, 1, 1538964120, 0, 2, 'Thông tin tổng hợp về căn hộ Eco Green Sài Gòn', 'thong-tin-tong-hop-ve-can-ho-eco-green-sai-gon', 'Eco Green Sài Gòn – Hiện nay những khu vực nội thành của TP.HCM đang thực sự khan hiếm quỹ đất, chính vì thế những khu vực gần nội thành như khu Nam, đặc biệt là khu vực quận 7 đã trở thành mảnh đất vàng và được đầu tư hạ tầng giao thông đồng bộ. Tại quận 7 đã xuất hiện một dự án căn hộ vô cùng hấp dẫn và lý tưởng dành cho toàn bộ đối tượng khách hàng khác nhau, đó chính là dự án Eco Green Sài Gòn.<br />Quy mô thiết kế của căn hộ Eco Green Sài Gòn', '2018_10/khu-nam-sai-gon-eco-green-sai-gon.jpg', 'KHU NAM SAI GON ECO GREEN SAI GON', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_9`
--

CREATE TABLE `nv4_vi_news_9` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_10`
--

CREATE TABLE `nv4_vi_news_10` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_11`
--

CREATE TABLE `nv4_vi_news_11` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_12`
--

CREATE TABLE `nv4_vi_news_12` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_admins`
--

CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_block`
--

CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_block`
--

INSERT INTO `nv4_vi_news_block` (`bid`, `id`, `weight`) VALUES
(2, 21, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_block_cat`
--

CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_block_cat`
--

INSERT INTO `nv4_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_cat`
--

CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_cat`
--

INSERT INTO `nv4_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 4, 2, 0, '', '', '', 1274986690, 1274986690, '6', 1),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274986705, 1274986705, '6', 1),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987105, 1274987244, '6', 1),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987212, 1274987212, '6', 1),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987460, 1274987460, '6', 1),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987538, 1274987538, '6', 1),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987902, 1274987902, '6', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_config_post`
--

CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_config_post`
--

INSERT INTO `nv4_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_detail`
--

CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_detail`
--

INSERT INTO `nv4_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(21, '', '', '<p><a href=\"https://ecogreenquan7.vn/index.html\"><strong>Dự án Eco Green Sài Gòn</strong></a>&nbsp;được chủ đầu tư Xuân Mai Corp được quy hoạch với diện tích lên đến trên 14 ha, với 6 Block căn hộ, Block cao nhất có 35 tầng. Theo như chủ đầu tư bật mí thì dự án này thiết kế với 2 tầng hầm để xe cực rộng rãi, tầng 1 dành cho shophouse, tầng 2 là tring thâm thương mại, tiếp đó là các căn shophouse và các căn hộ để ở.</p>\r\n\r\n<p>Toàn dự án chỉ có 200 căn hộ Officetel, chúng được lối thiết kế phong cách hiện đại cùng diện tích khá đa dạng là 25m2; 30m2 và 35m2. Tại Eco Green có trên 4.000 căn hộ dược thiết kế từ 1 đến 3 phòng ngủ với diện tích bao gồm 47m2; 55m2; 66m2; 86m2; 93m2. Tùy theo nhu cầu cũng như khả năng tài chính của mình, bạn hãy tìm hiểu, tham khảo và lựa chọn căn hộ hợp lý nhất nhé.</p>\r\n\r\n<p>Các căn hộ của<a href=\"https://ecogreenquan7.vn/index.html\">&nbsp;<strong>Eco Green Sài Gòn</strong></a>&nbsp;được thiết kế theo phong cách truyền thống pha lẫn với hiện đại. Chính sự kết hợp này đã mang đến sự ấm cúng, hiện đại cho toàn bộ căn hộ. Hơn thế nữa các căn hộ đều được Xuân Mai thiết kế ban công rộng rãi, thoáng mát với tầm nhìn không bị che khuất. Điều này sẽ giúp cho chủ nhân của căn hộ được thưởng thức toàn cảnh thành phố đẹp đẽ, thơ mộng vào ban ngày và lung linh, huyền ảo vào ban đêm.</p>\r\n\r\n<p><strong>Hệ thống tiện ích đầy đủ tại căn hộ Eco Green Sài Gòn</strong></p>\r\n\r\n<p>Điểm nổi bật về&nbsp;<a href=\"https://ecogreenquan7.vn/index.html\"><strong>dự án Eco Green Sài Gòn</strong></a>&nbsp;mà chúng ta không thể không nhắc đến đó chính là hệ thống tiện ích vô cùng đầy đủ. Hệ thống tiện ích bao gồm:</p>\r\n\r\n<ul>\r\n	<li>2 tầng hầm giữ xe rộng lớn</li>\r\n	<li>2 tầng trung tâm thương mại với đầy đủ các loại sản phẩm từ những thương hiệu nổi tiếng trên thế giới. Ngoài ra còn có rạp chiếu phim Galaxy vô cùng hiện đại</li>\r\n	<li>5 tầng thương mại dịch vụ dành cho Homesest và Officetel</li>\r\n	<li>Các block căn hộ được thiết kế đậm phong cách của Singapore với hồ bơi rộng trên 580m2 cùng bể sục zacuji</li>\r\n	<li>Sân thể thao đa năng, khu công viên, phòng sinh hoạt cộng đồng, khu nướng BBQ</li>\r\n	<li>Thư viện, phòng đọc sách</li>\r\n	<li>Nhà hàng các nước, café ngoài trời</li>\r\n	<li>Khu ẩm thực, khu shop, khu thương mại</li>\r\n	<li>Phòng tập Gym, xông hơi Sauna, spa,….</li>\r\n</ul>\r\n\r\n<p>Với những thông tin về dự án&nbsp;<strong>căn hộ Eco Green&nbsp; Sài Gòn&nbsp;</strong>tại quận 7 TPHCM mà chúng tôi vừa mang đến, hy vọng bạn đã có sự lựa chọn cho mình khi muốn tìm một căn hộ tốt nhất để an cư</p>', '', '', '', 2, '', 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_logs`
--

CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_rows`
--

CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_rows`
--

INSERT INTO `nv4_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(21, 1, '1,8', 0, 1, '', 0, 1538964305, 1538964305, 1, 1, 1538964120, 0, 2, 'Thông tin tổng hợp về căn hộ Eco Green Sài Gòn', 'thong-tin-tong-hop-ve-can-ho-eco-green-sai-gon', 'Eco Green Sài Gòn – Hiện nay những khu vực nội thành của TP.HCM đang thực sự khan hiếm quỹ đất, chính vì thế những khu vực gần nội thành như khu Nam, đặc biệt là khu vực quận 7 đã trở thành mảnh đất vàng và được đầu tư hạ tầng giao thông đồng bộ. Tại quận 7 đã xuất hiện một dự án căn hộ vô cùng hấp dẫn và lý tưởng dành cho toàn bộ đối tượng khách hàng khác nhau, đó chính là dự án Eco Green Sài Gòn.<br />Quy mô thiết kế của căn hộ Eco Green Sài Gòn', '2018_10/khu-nam-sai-gon-eco-green-sai-gon.jpg', 'KHU NAM SAI GON ECO GREEN SAI GON', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_sources`
--

CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_sources`
--

INSERT INTO `nv4_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_tags`
--

CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_tags`
--

INSERT INTO `nv4_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 0, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 1, 'nukeviet', '', '', 'nukeviet'),
(10, 1, 'vinades', '', '', 'vinades'),
(11, 0, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 0, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 0, 'php', '', '', 'php'),
(14, 0, 'mysql', '', '', 'mysql'),
(15, 0, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 0, 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 0, 'nukeviet4', '', '', 'nukeviet4'),
(18, 0, 'mail', '', '', 'mail'),
(19, 0, 'fpt', '', '', 'fpt'),
(20, 0, 'smtp', '', '', 'smtp'),
(21, 0, 'bootstrap', '', '', 'bootstrap'),
(22, 0, 'block', '', '', 'block'),
(23, 0, 'modules', '', '', 'modules'),
(24, 0, 'banner', '', '', 'banner'),
(25, 0, 'liên-kết', '', '', 'liên kết'),
(26, 1, 'hosting', '', '', 'hosting'),
(27, 0, 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 0, 'hợp-tác', '', '', 'hợp tác'),
(29, 1, 'tốc-độ', '', '', 'tốc độ'),
(30, 1, 'website', '', '', 'website'),
(31, 1, 'bảo-mật', '', '', 'bảo mật'),
(32, 0, 'giáo-dục', '', '', 'giáo dục'),
(33, 0, 'edu-gate', '', '', 'edu gate'),
(34, 0, 'lập-trình', '', '', 'lập trình'),
(35, 0, 'logo', '', '', 'logo'),
(36, 0, 'code', '', '', 'code'),
(37, 0, 'thực-tập', '', '', 'thực tập'),
(38, 0, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 0, 'nhân-viên', '', '', 'nhân viên'),
(40, 0, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 0, 'module', '', '', 'module'),
(42, 0, 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_tags_id`
--

CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_tmp`
--

CREATE TABLE `nv4_vi_news_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_news_topics`
--

CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_news_topics`
--

INSERT INTO `nv4_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_page`
--

CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_page`
--

INSERT INTO `nv4_vi_page` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(3, 'Vị trí', 'vi-tri', 'vi-tri-du-an-eco-green-sai-gon-quan-7.png', '', 0, '', '<p>Dự án Eco Green Sài Gòn tọa lạc tại đường Nguyễn Văn Linh, Phường Tân Thuận Tây, Quận 7, TP HCM. Vị trí dự án Eco Green Sài Gòn được đánh giá rất cao vì tiềm năng phát triển. Dự án nằm giữ tâm điểm của 3 khu đô thị lớn nhất thành phố Hồ Chí Minh là: Trung tâm TP ( Quận 1), khu đô thị Nam Sài Gòn ( Phú Mỹ Hưng) và khu đô thị mới Thủ Thiêm.</p>\r\n\r\n<p>Hiện tại, UBND TP đang di dời Cảng Khánh Hội Quận 4 để triển khai Khu chức năng Nhà Rồng Khánh Hội với diện tích 35 hecta. Dự án phát triển sản phẩm thương mại, dịch vụ và căn hộ. Đồng thời UBND TP cũng đầu tư hơn 11.000 tỷ đồng để mở rộng và nâng cấp đường Nguyễn Tất Thành. Điều này giúp cư dân Eco Green dễ dàng di chuyển về trung tâm thành phố.</p>\r\n\r\n<p>Trong năm 2017, UBND TP kiến nghị chính phủ sớm triển khai xây dựng cầu Thủ Thiêm 4 bằng hình thức BT. Cầu Thủ Thiêm 4 có chiều dài 2,1 km với 6 làn xe kết nối từ Khu đô thị Thủ Thiêm qua đường Nguyễn Văn Linh và Huỳnh Tấn Phát Quận 7. Sau khi hoàn thành, cư dân Eco Green Sài Gòn dễ dàng di chuyển về khu đô thị mới Thủ Thiêm.</p>\r\n\r\n<p>Đồng thời, dự án Eco Green Sài Gòn nằm kế cận khu đô thị Phú Mỹ Hưng. Cư dân chỉ mất 2,5 km tương đương với 5 phút để di chuyển về PMH. Tại đây, cư dân được thừa hưởng những tiện ích cao cấp như: Crescent Mall, Vivo City. Các trường đại học và bệnh viện quốc tế như: Rmit, FV, Tim Tâm Đức,..</p>', '', 1, '4', '', 0, 1, 1, 1538800880, 1538801076, 1, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_page_config`
--

CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_referer_stats`
--

CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_searchkeys`
--

CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_siteterms`
--

CREATE TABLE `nv4_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_siteterms`
--

INSERT INTO `nv4_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>  <div style=\"text-align: justify;\">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 0, '4', '', 0, 1, 1, 1538639857, 1538639857, 1, 0, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style=\"text-align: justify;\">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p style=\"text-align: justify;\">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 0, 2, 1, 1538639857, 1538639857, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_siteterms_config`
--

CREATE TABLE `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_siteterms_config`
--

INSERT INTO `nv4_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_slider_blocks`
--

CREATE TABLE `nv4_vi_slider_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_slider_blocks`
--

INSERT INTO `nv4_vi_slider_blocks` (`bid`, `title`, `description`) VALUES
(1, 'slider', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_slider_rows`
--

CREATE TABLE `nv4_vi_slider_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_slider_rows`
--

INSERT INTO `nv4_vi_slider_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'slide 1', '', '', '', 'du-an-eco-green-sai-gon-quan-7-02.png', 1538796422, 0, 1),
(3, 1, 'slide 2', '', '', '', 'du-an-eco-green-sai-gon-quan-7-03.png', 1538796435, 0, 1),
(4, 1, 'slide 3', '', '', '', 'du-an-eco-green-sai-gon-quan-7-04.png', 1538796467, 0, 1),
(5, 1, 'slide 4', '', '', '', 'du-an-eco-green-sai-gon-quan-7-01.png', 1538796476, 0, 1),
(6, 1, 'slide 5', '', '', '', 'du-an-eco-green-sai-gon-quan-7-05.png', 1538796489, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_voting`
--

CREATE TABLE `nv4_vi_voting` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `active_captcha` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_voting`
--

INSERT INTO `nv4_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `active_captcha`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 0, 1, '6', 1275318563, 0, 1),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 0, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_vi_voting_rows`
--

CREATE TABLE `nv4_vi_voting_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `vid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_vi_voting_rows`
--

INSERT INTO `nv4_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nv4_authors`
--
ALTER TABLE `nv4_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Chỉ mục cho bảng `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Chỉ mục cho bảng `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Chỉ mục cho bảng `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Chỉ mục cho bảng `nv4_config`
--
ALTER TABLE `nv4_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Chỉ mục cho bảng `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `nv4_counter`
--
ALTER TABLE `nv4_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Chỉ mục cho bảng `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Chỉ mục cho bảng `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Chỉ mục cho bảng `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
  ADD PRIMARY KEY (`gid`),
  ADD UNIQUE KEY `idprofile` (`idprofile`);

--
-- Chỉ mục cho bảng `nv4_ips`
--
ALTER TABLE `nv4_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Chỉ mục cho bảng `nv4_language`
--
ALTER TABLE `nv4_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Chỉ mục cho bảng `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Chỉ mục cho bảng `nv4_logs`
--
ALTER TABLE `nv4_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_notification`
--
ALTER TABLE `nv4_notification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Chỉ mục cho bảng `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Chỉ mục cho bảng `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Chỉ mục cho bảng `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Chỉ mục cho bảng `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `nv4_users`
--
ALTER TABLE `nv4_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Chỉ mục cho bảng `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Chỉ mục cho bảng `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Chỉ mục cho bảng `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Chỉ mục cho bảng `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Chỉ mục cho bảng `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Chỉ mục cho bảng `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_about_config`
--
ALTER TABLE `nv4_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Chỉ mục cho bảng `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Chỉ mục cho bảng `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Chỉ mục cho bảng `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Chỉ mục cho bảng `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Chỉ mục cho bảng `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Chỉ mục cho bảng `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Chỉ mục cho bảng `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Chỉ mục cho bảng `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Chỉ mục cho bảng `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Chỉ mục cho bảng `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Chỉ mục cho bảng `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Chỉ mục cho bảng `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Chỉ mục cho bảng `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `nv4_vi_news_tmp`
--
ALTER TABLE `nv4_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Chỉ mục cho bảng `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Chỉ mục cho bảng `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Chỉ mục cho bảng `nv4_vi_siteterms_config`
--
ALTER TABLE `nv4_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Chỉ mục cho bảng `nv4_vi_slider_blocks`
--
ALTER TABLE `nv4_vi_slider_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Chỉ mục cho bảng `nv4_vi_slider_rows`
--
ALTER TABLE `nv4_vi_slider_rows`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Chỉ mục cho bảng `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_ips`
--
ALTER TABLE `nv4_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nv4_language`
--
ALTER TABLE `nv4_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_logs`
--
ALTER TABLE `nv4_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT cho bảng `nv4_notification`
--
ALTER TABLE `nv4_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `nv4_users`
--
ALTER TABLE `nv4_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_slider_blocks`
--
ALTER TABLE `nv4_vi_slider_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_slider_rows`
--
ALTER TABLE `nv4_vi_slider_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  MODIFY `vid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
