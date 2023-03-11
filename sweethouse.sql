-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 12:34 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweethouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add wishlist', 10, 'add_wishlist'),
(38, 'Can change wishlist', 10, 'change_wishlist'),
(39, 'Can delete wishlist', 10, 'delete_wishlist'),
(40, 'Can view wishlist', 10, 'view_wishlist'),
(41, 'Can add order item', 11, 'add_orderitem'),
(42, 'Can change order item', 11, 'change_orderitem'),
(43, 'Can delete order item', 11, 'delete_orderitem'),
(44, 'Can view order item', 11, 'view_orderitem'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile'),
(53, 'Can add inquiry', 14, 'add_inquiry'),
(54, 'Can change inquiry', 14, 'change_inquiry'),
(55, 'Can delete inquiry', 14, 'delete_inquiry'),
(56, 'Can view inquiry', 14, 'view_inquiry'),
(57, 'Can add PayPal IPN', 15, 'add_paypalipn'),
(58, 'Can change PayPal IPN', 15, 'change_paypalipn'),
(59, 'Can delete PayPal IPN', 15, 'delete_paypalipn'),
(60, 'Can view PayPal IPN', 15, 'view_paypalipn');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$VQYi1uqsb73CY63VVTNuyf$HGomlTkCg2oGm8f5IfBFAfmcicKcRFTs0yy/mSiZbbM=', '2022-12-18 06:05:16.543349', 1, 'happy', 'Sweet', 'House', 'happysweets112@gmail.com', 1, 1, '2022-11-26 05:00:18.967799'),
(2, 'pbkdf2_sha256$390000$08Xr9XM1TTq0rqIPt7hJBy$Avo4BD5+9wxB6BIeECE/yzkJJs4V26sTNL5zcFZKtMI=', '2022-12-06 15:34:19.870772', 0, 'rutvik', 'rutvik', 'patel', 'rutvik@gmail.com', 0, 1, '2022-11-26 18:43:23.789319'),
(3, 'pbkdf2_sha256$390000$zyYIQTiswuxhb0owqoOSfx$9tOpBt885Axeq6zoi/L9s3u8TzwBplVG4EhGiARqBJM=', '2022-12-10 10:38:34.560196', 0, 'kamani', '', '', 'kamani@gmail.com', 0, 1, '2022-12-06 11:49:46.813629'),
(4, 'pbkdf2_sha256$390000$S3BOJI3SsPJ8OONUeYZZS4$CkkVKkt67IeA63V8hMOcR/9/Mcqo+FNNeWXpkDmymgY=', '2022-12-18 10:47:56.249391', 0, 'Rutvik12', 'Kamani', 'Rutvik', 'rutvikkamani28@gmail.com', 0, 1, '2022-12-06 16:35:04.780693'),
(5, 'pbkdf2_sha256$390000$1tun6rm35t8w8KS0t49Xkq$xbl9DdBQXVkhC+jLIPEo+EswpgkELn6zpAJL1LwG5+0=', '2022-12-17 18:05:05.133889', 0, 'rkpatel', 'Rutvik', 'Kamani', 'rutvikkamani28@gmail.com', 0, 1, '2022-12-10 13:31:27.755086'),
(6, 'pbkdf2_sha256$390000$wkow7ocZFlec3uWhAMpsFX$fPwn4HelGezhmFAynBdSjso8f6fbMNeKDxu5v/sLR94=', '2022-12-11 10:02:07.160328', 0, 'dell', 'dell', 'dell', 'dell@gmail.com', 0, 1, '2022-12-11 06:20:12.249143');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-26 05:18:31.084864', '1', 'Sweets', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-11-26 05:30:54.902126', '1', 'Gulab Jamun', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-11-26 11:07:43.888199', '1', 'Sweets', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(4, '2022-11-26 11:09:09.283969', '2', 'Bakery', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-11-26 11:14:40.384900', '2', 'Toast', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-11-26 16:01:10.789895', '2', 'Toast', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(7, '2022-11-26 17:34:02.784864', '1', 'Gulab Jamun', 2, '[{\"changed\": {\"fields\": [\"Small description\"]}}]', 8, 1),
(8, '2022-11-27 17:08:01.786090', '3', 'Namkeens', 1, '[{\"added\": {}}]', 7, 1),
(9, '2022-11-27 17:08:28.364948', '2', 'Bakery', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(10, '2022-11-27 17:16:57.884721', '2', 'Toast', 2, '[{\"changed\": {\"fields\": [\"Small description\", \"Quantity\", \"Description\"]}}]', 8, 1),
(11, '2022-11-27 17:22:02.900581', '3', 'Cham Cham', 1, '[{\"added\": {}}]', 8, 1),
(12, '2022-11-27 17:26:56.233137', '4', 'AlooSev', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-11-27 17:27:48.267945', '4', 'AlooSev', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Trending\"]}}]', 8, 1),
(14, '2022-11-27 17:28:14.223580', '4', 'AlooSev', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(15, '2022-11-27 17:28:53.028966', '4', 'AlooSev', 2, '[{\"changed\": {\"fields\": [\"Original price\", \"Selling price\"]}}]', 8, 1),
(16, '2022-11-27 17:29:02.144002', '4', 'AlooSev', 2, '[{\"changed\": {\"fields\": [\"Original price\"]}}]', 8, 1),
(17, '2022-11-27 18:15:23.381241', '5', 'Puff', 1, '[{\"added\": {}}]', 8, 1),
(18, '2022-12-01 14:11:00.354815', '3', 'Cham Cham', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(19, '2022-12-01 14:15:04.427771', '6', 'Farali Chavdo', 1, '[{\"added\": {}}]', 8, 1),
(20, '2022-12-11 07:47:15.151468', '3', 'rkpatel', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 13, 1),
(21, '2022-12-11 19:31:38.018525', '7', 'Thabli Peda', 1, '[{\"added\": {}}]', 8, 1),
(22, '2022-12-11 19:34:28.279372', '8', 'Kaju Katri', 1, '[{\"added\": {}}]', 8, 1),
(23, '2022-12-11 19:35:14.781629', '7', 'Thabli Peda', 2, '[{\"changed\": {\"fields\": [\"Original price\", \"Selling price\"]}}]', 8, 1),
(24, '2022-12-11 19:36:11.671050', '7', 'Thabli Peda', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 8, 1),
(25, '2022-12-11 19:36:23.060952', '8', 'Kaju Katri', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 8, 1),
(26, '2022-12-11 19:40:42.664643', '9', 'Naankhatai', 1, '[{\"added\": {}}]', 8, 1),
(27, '2022-12-11 19:44:18.192467', '10', 'Bread', 1, '[{\"added\": {}}]', 8, 1),
(28, '2022-12-11 19:49:08.531005', '11', 'Masala Masti', 1, '[{\"added\": {}}]', 8, 1),
(29, '2022-12-11 19:52:07.972114', '12', 'Sev Murmura', 1, '[{\"added\": {}}]', 8, 1),
(30, '2022-12-14 16:06:17.445296', '12', 'Sev Murmura', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(31, '2022-12-14 16:18:46.212048', '12', 'Sev Murmura', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(32, '2022-12-17 17:29:07.609292', '30', '30 - sh4014254', 2, '[{\"changed\": {\"fields\": [\"Payment id\", \"Status\"]}}]', 12, 1),
(33, '2022-12-17 17:53:59.172192', '31', '31 - sh1447912', 3, '', 12, 1),
(34, '2022-12-17 17:53:59.241244', '30', '30 - sh4014254', 3, '', 12, 1),
(35, '2022-12-17 17:53:59.256880', '29', '29 - sh3467372', 3, '', 12, 1),
(36, '2022-12-17 17:53:59.256880', '28', '28 - sh5130771', 3, '', 12, 1),
(37, '2022-12-17 17:53:59.272506', '27', '27 - sh3512047', 3, '', 12, 1),
(38, '2022-12-17 17:53:59.303754', '26', '26 - sh1831893', 3, '', 12, 1),
(39, '2022-12-17 17:53:59.319383', '25', '25 - sh4458804', 3, '', 12, 1),
(40, '2022-12-17 17:53:59.335006', '23', '23 - sh3678410', 3, '', 12, 1),
(41, '2022-12-17 17:53:59.357219', '22', '22 - sh8206984', 3, '', 12, 1),
(42, '2022-12-17 17:53:59.357219', '21', '21 - sh1606640', 3, '', 12, 1),
(43, '2022-12-17 17:53:59.372843', '20', '20 - sh3655378', 3, '', 12, 1),
(44, '2022-12-17 17:53:59.388436', '19', '19 - sh6333053', 3, '', 12, 1),
(45, '2022-12-17 17:53:59.388436', '18', '18 - sh6698356', 3, '', 12, 1),
(46, '2022-12-17 17:53:59.404059', '17', '17 - sh7635407', 3, '', 12, 1),
(47, '2022-12-17 17:53:59.419691', '16', '16 - sh6899279', 3, '', 12, 1),
(48, '2022-12-17 17:53:59.435306', '15', '15 - rutvik7213317', 3, '', 12, 1),
(49, '2022-12-17 17:53:59.441828', '14', '14 - rutvik4365833', 3, '', 12, 1),
(50, '2022-12-17 17:53:59.457515', '13', '13 - rutvik9234088', 3, '', 12, 1),
(51, '2022-12-17 17:53:59.457515', '12', '12 - rutvik9970070', 3, '', 12, 1),
(52, '2022-12-17 17:53:59.473112', '11', '11 - rutvik8260361', 3, '', 12, 1),
(53, '2022-12-17 17:53:59.488727', '10', '10 - 6924618', 3, '', 12, 1),
(54, '2022-12-17 17:53:59.504352', '9', '9 - 6009594', 3, '', 12, 1),
(55, '2022-12-17 17:53:59.519976', '8', '8 - rutvik9466835', 3, '', 12, 1),
(56, '2022-12-17 17:53:59.519976', '7', '7 - rutvik6434571', 3, '', 12, 1),
(57, '2022-12-17 17:53:59.542122', '6', '6 - rutvik6701627', 3, '', 12, 1),
(58, '2022-12-17 17:53:59.542122', '5', '5 - rutvik9071586', 3, '', 12, 1),
(59, '2022-12-17 17:53:59.557767', '4', '4 - rutvik3187907', 3, '', 12, 1),
(60, '2022-12-17 17:53:59.589006', '3', '3 - rutvik9734051', 3, '', 12, 1),
(61, '2022-12-17 17:53:59.604633', '2', '2 - rutvik9426614', 3, '', 12, 1),
(62, '2022-12-17 17:53:59.620253', '1', '1 - rutvik7135869', 3, '', 12, 1),
(63, '2022-12-17 18:04:41.174080', '32', '32 - sh6771879', 2, '[{\"changed\": {\"fields\": [\"Payment id\", \"Status\"]}}]', 12, 1),
(64, '2022-12-18 05:07:08.783924', '36', '36 - sh9978039', 2, '[{\"changed\": {\"fields\": [\"Payment id\", \"Status\"]}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(15, 'ipn', 'paypalipn'),
(6, 'sessions', 'session'),
(9, 'sweetapp', 'cart'),
(7, 'sweetapp', 'category'),
(14, 'sweetapp', 'inquiry'),
(12, 'sweetapp', 'order'),
(11, 'sweetapp', 'orderitem'),
(8, 'sweetapp', 'product'),
(13, 'sweetapp', 'profile'),
(10, 'sweetapp', 'wishlist');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-26 04:55:44.272043'),
(2, 'auth', '0001_initial', '2022-11-26 04:55:46.122090'),
(3, 'admin', '0001_initial', '2022-11-26 04:55:46.406584'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-26 04:55:46.432353'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-26 04:55:46.444345'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-26 04:55:46.575364'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-26 04:55:46.678662'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-26 04:55:46.723705'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-26 04:55:46.743675'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-26 04:55:47.239007'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-26 04:55:47.249600'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-26 04:55:47.267589'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-26 04:55:47.333549'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-26 04:55:47.358534'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-26 04:55:47.389517'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-26 04:55:47.404510'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-26 04:55:47.435491'),
(18, 'sessions', '0001_initial', '2022-11-26 04:55:47.506451'),
(19, 'sweetapp', '0001_initial', '2022-11-26 04:55:47.676329'),
(20, 'sweetapp', '0002_alter_product_quantity', '2022-11-26 05:26:22.520197'),
(21, 'sweetapp', '0003_alter_product_quantity', '2022-11-26 16:00:01.609449'),
(22, 'sweetapp', '0004_alter_product_quantity', '2022-11-26 16:00:40.764977'),
(23, 'sweetapp', '0005_cart', '2022-11-27 03:25:52.570249'),
(24, 'sweetapp', '0006_wishlist', '2022-11-27 05:58:34.239606'),
(25, 'sweetapp', '0007_order_orderitem', '2022-11-27 11:56:24.655867'),
(26, 'sweetapp', '0008_alter_order_status_profile', '2022-11-27 12:27:25.529627'),
(27, 'sweetapp', '0009_inquiry', '2022-12-05 14:58:52.800524'),
(28, 'sweetapp', '0010_remove_order_fname_remove_order_lname_profile_fname_and_more', '2022-12-11 08:06:59.132100'),
(29, 'sweetapp', '0011_remove_profile_fname_remove_profile_lname_and_more', '2022-12-11 08:14:45.543936'),
(30, 'sweetapp', '0012_remove_order_message', '2022-12-11 08:17:17.808379'),
(31, 'ipn', '0001_initial', '2022-12-11 15:49:02.941370'),
(32, 'ipn', '0002_paypalipn_mp_id', '2022-12-11 15:49:02.986363'),
(33, 'ipn', '0003_auto_20141117_1647', '2022-12-11 15:49:03.394010'),
(34, 'ipn', '0004_auto_20150612_1826', '2022-12-11 15:49:06.753929'),
(35, 'ipn', '0005_auto_20151217_0948', '2022-12-11 15:49:06.864345'),
(36, 'ipn', '0006_auto_20160108_1112', '2022-12-11 15:49:07.222360'),
(37, 'ipn', '0007_auto_20160219_1135', '2022-12-11 15:49:07.348080'),
(38, 'ipn', '0008_auto_20181128_1032', '2022-12-11 15:49:07.433076'),
(39, 'ipn', '0009_alter_paypalipn_id', '2022-12-11 15:49:07.600860'),
(40, 'sweetapp', '0013_cart_status_orderitem_cart_ids_orderitem_invoice_id_and_more', '2022-12-11 17:55:17.306327'),
(41, 'sweetapp', '0014_remove_orderitem_cart_ids_and_more', '2022-12-11 19:12:49.472952'),
(42, 'sweetapp', '0015_rename_fname_order_first_name_and_more', '2022-12-13 18:03:40.993715'),
(43, 'sweetapp', '0016_rename_first_name_order_fname_and_more', '2022-12-13 18:42:07.209941'),
(44, 'sweetapp', '0017_alter_order_status', '2022-12-17 17:22:00.307373');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1gmvp7912juouvn3vh83jsiv2zlr8moa', '.eJxVjEEOgjAQRe_StWnaOkzBpXvO0Ew7M4IaSCisjHdXEha6_e-9_zKJtnVIW5UljWwuJpjT75apPGTaAd9pus22zNO6jNnuij1otf3M8rwe7t_BQHX41sKMQTsFyYAArkOFrI4kYsCWzxTEuciekKXzrW9KUUElH6Fp1ZN5fwD6jzhr:1ozglI:vh6lK8vEa3ZhWzPro4O23EJUMvNLUHAPcxJuWIq3Xtw', '2022-12-12 16:13:40.034635'),
('ccqu2lpvg4369tm5ad8dx5s916zx71ez', '.eJxVjEEOwiAQRe_C2pAOHSi4dO8ZCNNhpGpoUtqV8e7apAvd_vfef6mYtrXEreUlTqzOyqrT70ZpfOS6A76nepv1ONd1mUjvij5o09eZ8_NyuH8HJbXyrQnJGGcDORoMJ8jcI3jTG0QbxIFndtl2NIgEEW-RIbAXFHDUIYF6fwDYLjey:1p57VR:LHwqAIXfOMGR5f5SYJijkLBd8-5H6B6Vhun1HBrBI4I', '2022-12-27 15:47:45.084629'),
('ig6a2z42jbmmljqyvp5ogh7q8lteo3ky', '.eJxVjEEOgjAQRe_StWnaOkzBpXvO0Ew7M4IaSCisjHdXEha6_e-9_zKJtnVIW5UljWwuJpjT75apPGTaAd9pus22zNO6jNnuij1otf3M8rwe7t_BQHX41sKMQTsFyYAArkOFrI4kYsCWzxTEuciekKXzrW9KUUElH6Fp1ZN5fwD6jzhr:1p2ZyZ:vedIsG7qpkTEKUF1mUfB-GL5WNXTJsX23T1BfuG7mbQ', '2022-12-20 15:35:19.978945'),
('t961oqo4bcxv052xj5zp0rwmllhqe7am', '.eJxVjEEOgjAQRe_StWnaOkzBpXvO0Ew7M4IaSCisjHdXEha6_e-9_zKJtnVIW5UljWwuJpjT75apPGTaAd9pus22zNO6jNnuij1otf3M8rwe7t_BQHX41sKMQTsFyYAArkOFrI4kYsCWzxTEuciekKXzrW9KUUElH6Fp1ZN5fwD6jzhr:1ozdtH:cXrI-t2xrvHptZg4CDFlhJaVi3PoaXOUFN2FKJMccyQ', '2022-12-12 13:09:43.248533'),
('tzdq5ilx6y3iogt9xidp2bwm3jogd4n2', 'eyJjYXJ0Ijp7fX0:1p2W1C:hVTsAtPIDHzdKA89GEfzIzJXDkyQEoV4zPxYIKQZ0GA', '2022-12-20 11:21:46.229102'),
('v5u2au1gzsj5nfesfjeulpbnsucl5i5k', '.eJxVjEEOgjAQRe_StWnaOkzBpXvO0Ew7M4IaSCisjHdXEha6_e-9_zKJtnVIW5UljWwuJpjT75apPGTaAd9pus22zNO6jNnuij1otf3M8rwe7t_BQHX41sKMQTsFyYAArkOFrI4kYsCWzxTEuciekKXzrW9KUUElH6Fp1ZN5fwD6jzhr:1ozgEg:wbE6cpjNtHNOIBarLi5w04hyZs9dngMZUghUyQWwBxY', '2022-12-12 15:39:58.068379'),
('vs9t0wkw16bec0ckg3jerj9bivy2g66d', '.eJxVjEEOgjAQRe_StWnaOkzBpXvO0Ew7M4IaSCisjHdXEha6_e-9_zKJtnVIW5UljWwuJpjT75apPGTaAd9pus22zNO6jNnuij1otf3M8rwe7t_BQHX41sKMQTsFyYAArkOFrI4kYsCWzxTEuciekKXzrW9KUUElH6Fp1ZN5fwD6jzhr:1p15qz:EwK6w_-ArjRqetj8Xbtl_Fo85sAn-SScpFKDHoNwopQ', '2022-12-16 13:13:21.369510'),
('xgibr7ti4zpe7ejuezvqxm3zwvce3edz', '.eJxVjEsOwjAMBe-SNYoaF7sJS_Y9Q-XELimgROpnhbg7VOoCtm9m3ssMvK152Badh0nMxaA5_W6R00PLDuTO5VZtqmWdp2h3xR50sX0VfV4P9-8g85K_dQfBSSCGiDyCU07gERRbhQ6FGnTqW8KzC0KtGyUmFj8yKfimISXz_gDWjzel:1p6b08:A2G_j00fSEK9IyIY-REJL8-z_-ac-BZK1RrYZB8UFH0', '2022-12-31 17:29:32.567010'),
('za3mxeush5ixdbr3fjq0p4spna9qeasw', '.eJxVjEEOwiAQRe_C2hCgQwGX7j0DGYbBVg0kpV0Z765NutDtf-_9l4i4rVPcOi9xzuIsQJx-t4T04LqDfMd6a5JaXZc5yV2RB-3y2jI_L4f7dzBhn771MDigksjroBKADUw4OuRsiskMypAvPPBYmJ0j4y2moBUE0mxhhCzeH_xGOHA:1p6rD2:cAzdSXcqTEVHQgo2tMGadlE4TLxzv3tjXg8OqsPAnas', '2023-01-01 10:47:56.282048');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` bigint(20) NOT NULL,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sweetapp_cart`
--

CREATE TABLE `sweetapp_cart` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sweetapp_cart`
--

INSERT INTO `sweetapp_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`, `status`) VALUES
(18, 1, '2022-11-28 13:07:57.511102', 4, 2, 0),
(21, 3, '2022-12-10 13:26:24.984356', 5, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sweetapp_category`
--

CREATE TABLE `sweetapp_category` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sweetapp_category`
--

INSERT INTO `sweetapp_category` (`id`, `slug`, `name`, `image`, `description`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(1, 'sweets', 'Sweets', 'uploads/20221126104830img4.jpg', 'All Kinds of Sweets Items Available , All Kinds of Sweets Items Available , All Kinds of Sweets Items Available', 0, 0, 'Sweets', 'sweets , all sweets', 'sweets , all sweets , sweets , all sweets , sweets , all sweets', '2022-11-26 05:18:30.965010'),
(2, 'bakery', 'Bakery', 'uploads/20221126163909gallery2.jpg', 'All Kinds of Bakery Items Available', 0, 0, 'Bakery', 'bakery , all bakery', 'bakery , all bakery bakery , all bakery bakery , all bakery', '2022-11-26 11:09:09.246156'),
(3, 'namkeens', 'Namkeens', 'uploads/20221127223801simplysalted.jpg', 'All Kinds of Namkeens Item for Available...', 0, 0, 'Namkeens', 'namkeens , all namkeens', 'all item for available for my store', '2022-11-27 17:08:01.786090');

-- --------------------------------------------------------

--
-- Table structure for table `sweetapp_inquiry`
--

CREATE TABLE `sweetapp_inquiry` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sweetapp_inquiry`
--

INSERT INTO `sweetapp_inquiry` (`id`, `firstname`, `lastname`, `email`, `contact`, `message`) VALUES
(16, 'Rutvik', 'Kamani', 'rutvikkamani28@gmail.com', '1234567890', 'Hello Rutvik'),
(17, 'Abc', 'Rutvik', 'rutvikkamani28@gmail.com', '9016999067', 'Me Problem is not Place Order'),
(18, 'kamani', 'rutvik', 'kamanirutvik22@gmail.com', '1234567890', 'Hello My Inquiry form');

-- --------------------------------------------------------

--
-- Table structure for table `sweetapp_order`
--

CREATE TABLE `sweetapp_order` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `total_price` double NOT NULL,
  `payment_mode` varchar(150) NOT NULL,
  `payment_id` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tracking_no` varchar(150) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sweetapp_order`
--

INSERT INTO `sweetapp_order` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `tracking_no`, `created_at`, `updated_at`, `user_id`) VALUES
(32, 'Rutvik', 'Kamani', 'rutvikkamani28@gmail.com', '9016999067', 'Bhavnagar Highway,\r\nNear Tramba Village,\r\nRajkot.', 'Rajkot', 'Gujarat', 'Indian', '362254', 200, 'COD', '123', 1, 'sh6771879', '2022-12-17 17:55:28.694845', '2022-12-17 18:04:41.158458', 5),
(33, 'Rutvik', 'Kamani', 'rutvikkamani28@gmail.com', '9016999067', 'Bhavnagar Highway,\r\nNear Tramba Village,\r\nRajkot.', 'Rajkot', 'Gujarat', 'Indian', '362254', 180, 'COD', '', 0, 'sh1654488', '2022-12-17 18:10:45.054362', '2022-12-17 18:10:45.054362', 5),
(34, 'Rutvik', 'Kamani', 'rutvikkamani28@gmail.com', '9016999067', 'Bhavnagar Highway,\r\nNear Tramba Village,\r\nRajkot.', 'Rajkot', 'Gujarat', 'Indian', '362254', 180, 'COD', '', 0, 'sh9644797', '2022-12-17 18:10:53.084408', '2022-12-17 18:10:53.084408', 5),
(35, 'Rutvik', 'Kamani', 'rutvikkamani28@gmail.com', '9016999067', 'Bhavnagar Highway,\r\nNear Tramba Village,\r\nRajkot.', 'Rajkot', 'Gujarat', 'Indian', '362254', 180, 'COD', '', 0, 'sh5576010', '2022-12-17 18:11:03.644467', '2022-12-17 18:11:03.644467', 5),
(36, 'Kamani', 'Rutvik', 'rutvikkamani28@gmail.com', '9016999067', 'Near ST Bus Stand,\r\nRajkot', 'Rajkot', 'Gujarat', 'India', '220125', 720, 'COD', '123', 1, 'sh9978039', '2022-12-18 05:04:54.186097', '2022-12-18 05:07:08.779924', 4),
(37, 'Kamani', 'Rutvik', 'rutvikkamani28@gmail.com', '9016999067', 'Near ST Bus Stand,\nRajkot', 'Rajkot', 'Gujarat', 'India', '220125', 200, 'Paid by Paypal', '', 0, 'sh4817240', '2022-12-18 11:00:52.243083', '2022-12-18 11:00:52.243083', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sweetapp_orderitem`
--

CREATE TABLE `sweetapp_orderitem` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sweetapp_orderitem`
--

INSERT INTO `sweetapp_orderitem` (`id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(33, 100, 2, 32, 6),
(34, 180, 1, 33, 8),
(35, 180, 1, 34, 8),
(36, 180, 1, 35, 8),
(37, 360, 2, 36, 3),
(38, 100, 2, 37, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sweetapp_product`
--

CREATE TABLE `sweetapp_product` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `small_description` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sweetapp_product`
--

INSERT INTO `sweetapp_product` (`id`, `slug`, `name`, `product_image`, `small_description`, `quantity`, `description`, `original_price`, `selling_price`, `status`, `trending`, `tag`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `category_id`) VALUES
(1, 'gulabjamun-sweets', 'Gulab Jamun', 'uploads/20221126110054gulabjamun1.jpg', '1 Box for size is 500gm', 0, 'Gulab Jamun is a famous dessert dish of Ujjain , Gulab Jamun is a famous dessert dish of Ujjain , Gulab Jamun is a famous dessert dish of Ujjain', 150, 120, 0, 1, 'New', 'Gulab Jamun', 'gulabjamun, all sweets', 'gulabjamun, all sweets , gulabjamun, all sweets , gulabjamun, all sweets', '2022-11-26 05:30:54.872132', 1),
(2, 'toast', 'Toast', 'uploads/20221126164440toast.jpg', '1 Box for size is 500gm', 44, 'Toast is a famous Break-Fast for Gujarat', 100, 80, 0, 1, 'Freesh', 'Toast', 'toast , all bakery items', 'toast , all bakery items toast , all bakery items toast , all bakery items', '2022-11-26 11:14:40.363915', 2),
(3, 'chamcham', 'Cham Cham', 'uploads/20221127225202cham.jpg', '1 Box for size is 500gm', 183, 'Cham Cham is a famous for Kutch', 400, 360, 0, 1, 'Freesh', 'Chamcham', 'chamcham,cham,all sweets', 'This is Chamcham', '2022-11-27 17:22:02.900581', 1),
(4, 'aloosev', 'AlooSev', 'uploads/20221127225656aloosev.webp', '1 Box for size is 500gm', 46, 'Aloosev is famous item for Gujarat', 35, 40, 0, 1, 'Freesh', 'Aloosev', 'allosev,all namkeens', 'This item is famous company for Balaji', '2022-11-27 17:26:56.217498', 3),
(5, 'puff', 'Puff', 'uploads/20221127234523puff.jpg', '1 Peice for 1 Quantity', 4, 'This Famous item in College life for Gujarat', 8, 10, 0, 1, 'Freesh', 'puff', 'puff,all bakery', 'This is Puff Item', '2022-11-27 18:15:23.365604', 2),
(6, 'Farali Chavdo', 'Farali Chavdo', 'uploads/20221201194504faralichevdo.webp', 'Packing size is 400gm', 12, 'This Product is Balaji company.', 80, 100, 0, 1, 'Trending', 'chevdo', 'chevdo,farali chevdo', 'This is Farali Item.', '2022-12-01 14:15:04.427771', 3),
(7, 'Thabli Peda', 'Thabli Peda', 'uploads/20221212010137thablipeda.jpg', 'Packing size is 400gm', 18, 'This Product is Famous for saurashtra', 150, 130, 0, 1, 'Freesh', 'peda', 'peda,thablipeda,sweets', 'This is Sweet Items', '2022-12-11 19:31:37.990906', 1),
(8, 'Kaju Katri', 'Kaju Katri', 'uploads/20221212010428kajukatri.jpg', 'Packing size is 400gm', 17, 'This Product is Famous for Kutch', 200, 180, 0, 1, 'Freesh', 'kajukatri', 'kajukatri,sweets', 'This is Sweet Products', '2022-12-11 19:34:28.267854', 1),
(9, 'Naankhatai', 'Naankhatai', 'uploads/20221212011042naankhatai.jpg', 'Packing size is 400gm', 18, 'This Product is famous for Gujarat', 80, 60, 0, 0, 'Freesh', 'Naankhatai', 'bakery,naankhatai', 'This is Bakery Product', '2022-12-11 19:40:42.644886', 2),
(10, 'Bread', 'Bread', 'uploads/20221212011418breadloafs.webp', 'Packing size is 400gm', 16, 'This Product is best used for Morning Break-fast', 80, 60, 0, 0, 'Freesh', 'Bread', 'bakery,bread', 'This is Bakery Product', '2022-12-11 19:44:18.172130', 2),
(11, 'Masala Masti', 'Masala Masti', 'uploads/20221212011908masalamasti.jpg', 'Packing size is 400gm', 17, 'This Product is Balaji company.', 50, 45, 0, 1, 'Trending', 'Masala Masti', 'masalamasti,namkeens', 'This is Potato Waffer Item.', '2022-12-11 19:49:08.521172', 3),
(12, 'Sev Murmura', 'Sev Murmura', 'uploads/20221212012207sevmurmura.jpg', 'Packing size is 400gm', 47, 'This Product is Balaji company.', 60, 55, 0, 1, 'Freesh', 'Sev Murmura', 'sevmurmura,namkeens', 'This is sevmurmura Item.', '2022-12-11 19:52:07.947134', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sweetapp_profile`
--

CREATE TABLE `sweetapp_profile` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sweetapp_profile`
--

INSERT INTO `sweetapp_profile` (`id`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `created_at`, `user_id`) VALUES
(1, '1234567890', 'rajkot city', 'Rajkot', 'Gujarat', 'Indian', '452130', '2022-11-27 12:47:26.115286', 2),
(2, '9016999067', 'Near ST Bus Stand,\r\nRajkot', 'Rajkot', 'Gujarat', 'India', '220125', '2022-12-08 17:26:31.065328', 4),
(3, '9016999067', 'Bhavnagar Highway,\r\nNear Tramba Village,\r\nRajkot.', 'Rajkot', 'Gujarat', 'Indian', '362254', '2022-12-10 13:33:48.851235', 5),
(4, '1234567890', 'Abc Complex,\r\nXyz Road,\r\nDcf.', 'dcf', 'avc', 'abf', '1245', '2022-12-11 08:13:06.388378', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sweetapp_wishlist`
--

CREATE TABLE `sweetapp_wishlist` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sweetapp_wishlist`
--

INSERT INTO `sweetapp_wishlist` (`id`, `created_at`, `product_id`, `user_id`) VALUES
(8, '2022-12-11 08:10:55.433966', 4, 6),
(9, '2022-12-12 15:54:11.472072', 10, 5),
(11, '2022-12-14 16:04:23.425482', 3, 5),
(12, '2022-12-18 05:04:19.453282', 9, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`);

--
-- Indexes for table `sweetapp_cart`
--
ALTER TABLE `sweetapp_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sweetapp_cart_product_id_a81fda26_fk_sweetapp_product_id` (`product_id`),
  ADD KEY `sweetapp_cart_user_id_892dc4c6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `sweetapp_category`
--
ALTER TABLE `sweetapp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sweetapp_inquiry`
--
ALTER TABLE `sweetapp_inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sweetapp_order`
--
ALTER TABLE `sweetapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sweetapp_order_user_id_02858d88_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `sweetapp_orderitem`
--
ALTER TABLE `sweetapp_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sweetapp_orderitem_order_id_2097a589_fk_sweetapp_order_id` (`order_id`),
  ADD KEY `sweetapp_orderitem_product_id_a1df4a91_fk_sweetapp_product_id` (`product_id`);

--
-- Indexes for table `sweetapp_product`
--
ALTER TABLE `sweetapp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sweetapp_product_category_id_284c6c21_fk_sweetapp_category_id` (`category_id`);

--
-- Indexes for table `sweetapp_profile`
--
ALTER TABLE `sweetapp_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `sweetapp_wishlist`
--
ALTER TABLE `sweetapp_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sweetapp_wishlist_product_id_a655e1b9_fk_sweetapp_product_id` (`product_id`),
  ADD KEY `sweetapp_wishlist_user_id_bb71637b_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sweetapp_cart`
--
ALTER TABLE `sweetapp_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `sweetapp_category`
--
ALTER TABLE `sweetapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sweetapp_inquiry`
--
ALTER TABLE `sweetapp_inquiry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sweetapp_order`
--
ALTER TABLE `sweetapp_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sweetapp_orderitem`
--
ALTER TABLE `sweetapp_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sweetapp_product`
--
ALTER TABLE `sweetapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sweetapp_profile`
--
ALTER TABLE `sweetapp_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sweetapp_wishlist`
--
ALTER TABLE `sweetapp_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `sweetapp_cart`
--
ALTER TABLE `sweetapp_cart`
  ADD CONSTRAINT `sweetapp_cart_product_id_a81fda26_fk_sweetapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `sweetapp_product` (`id`),
  ADD CONSTRAINT `sweetapp_cart_user_id_892dc4c6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `sweetapp_order`
--
ALTER TABLE `sweetapp_order`
  ADD CONSTRAINT `sweetapp_order_user_id_02858d88_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `sweetapp_orderitem`
--
ALTER TABLE `sweetapp_orderitem`
  ADD CONSTRAINT `sweetapp_orderitem_order_id_2097a589_fk_sweetapp_order_id` FOREIGN KEY (`order_id`) REFERENCES `sweetapp_order` (`id`),
  ADD CONSTRAINT `sweetapp_orderitem_product_id_a1df4a91_fk_sweetapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `sweetapp_product` (`id`);

--
-- Constraints for table `sweetapp_product`
--
ALTER TABLE `sweetapp_product`
  ADD CONSTRAINT `sweetapp_product_category_id_284c6c21_fk_sweetapp_category_id` FOREIGN KEY (`category_id`) REFERENCES `sweetapp_category` (`id`);

--
-- Constraints for table `sweetapp_profile`
--
ALTER TABLE `sweetapp_profile`
  ADD CONSTRAINT `sweetapp_profile_user_id_e5677b04_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `sweetapp_wishlist`
--
ALTER TABLE `sweetapp_wishlist`
  ADD CONSTRAINT `sweetapp_wishlist_product_id_a655e1b9_fk_sweetapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `sweetapp_product` (`id`),
  ADD CONSTRAINT `sweetapp_wishlist_user_id_bb71637b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
