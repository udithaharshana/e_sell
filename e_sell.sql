-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2022 at 08:35 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_sell`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `icode` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active/0=Inactive',
  `create_user_id` int(11) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `icode`, `name`, `status`, `create_user_id`, `create_date_time`, `update_user_id`, `update_date_time`) VALUES
(1, 'ITM-001', 'iPhone 14', 1, 1, '2022-09-09 13:00:34', NULL, NULL),
(2, 'ITM-002', 'iPhone 14 Plus', 1, 1, '2022-09-09 13:00:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('03091049b7ed56c38125779da787561c4d3f195e37d0f7f8313daf5049bc03c92a4687825983f632', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-04 16:17:25', '2021-09-04 16:17:25', '2021-09-05 00:47:24'),
('047412883ef0f1695daff8bbf216fc04345559fda4cc057cf5874e76a3efa61f6555fed7a2357ec9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-03 08:30:18', '2021-10-03 08:30:18', '2021-10-03 17:00:18'),
('04eb2c5e8641995cdb646cd9de32ceea4085cfa4b30e509d223199f14144a138f4927419fdca9f98', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-12 13:14:33', '2021-10-12 13:14:33', '2021-10-12 21:44:33'),
('05d0ce061987dc447dcfd6f7be4ef7ea70a07f3bf1cfc113731e97147991653003ee0b1741905061', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2022-09-11 04:55:46', '2022-09-11 04:55:46', '2022-09-11 13:25:46'),
('080f9ebf7053f9af77808f8ff2c758da26cf3f06113c6e5527b57341a0feb6b234d66af8327b238b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-05 08:32:19', '2021-09-05 08:32:19', '2021-09-05 17:02:18'),
('08f83cc3bc3f5781d818b92057c8059eff1f847f8a6a2e925b654fdc1310135413fa5666fa614ae1', 21, 1, 'Laravel Password Grant Client', '[]', 0, '2021-08-23 03:03:57', '2021-08-23 03:03:57', '2021-08-22 23:03:56'),
('0a1d7d97896c55aea00696cbe35187a9aa3add45900abf8b476b8c2336114737e41d03b919e4ec87', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-04 08:59:54', '2021-09-04 08:59:54', '2021-09-04 17:29:53'),
('0ad8c5bd9567393b5b5bc318554f98c75a39cb241a0e012ab88557cf68edde28d4629a27235c9ca1', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-08 13:14:44', '2021-09-08 13:14:44', '2021-09-08 21:44:44'),
('0feaf293f5766896d12555544d28b7210bbc0bcfacd0d04182234198bbb792a7b29a27ee6b87dbcc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-09 17:48:54', '2021-09-09 17:48:54', '2021-09-10 02:18:53'),
('143b3b2f0d723b4573583f3f41db44267f001748ad7b180833ef58231f21a447d7eb5b1fafae03cb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-05 11:55:30', '2021-10-05 11:55:30', '2021-10-05 20:25:30'),
('1d2f07ebc3b770de72a99f03b09155d557f1d32da12d3dda7bf5eae835e4bcb4135308f53e3e41e3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-07 13:03:56', '2021-09-07 13:03:56', '2021-09-07 21:33:55'),
('1e3be4e5ea9b3572e4244ef9a12f1b08e5104db48e6722716eef09aaa122e42c9f2801279d2381f7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-16 10:48:20', '2021-10-16 10:48:20', '2021-10-16 19:18:20'),
('212e0b2bf96a156b0e00d38b35820c1ce2076eb342ab2da449256f9ce673c22a2a6110cde2473089', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-10 16:12:10', '2021-09-10 16:12:10', '2021-09-11 00:42:09'),
('22d63d1f717517e1b4c050919a7ebc9e4e793a2da768c5662c16935e231712ab3945688b12bb90bc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-06 13:11:17', '2021-09-06 13:11:17', '2021-09-06 21:41:14'),
('34634c21d82e21bc70fc39903b86d53a753fe845c8a36f3781abed05e1e9fb73528b9ab93ee8bea5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2022-09-11 06:09:04', '2022-09-11 06:09:04', '2022-09-11 14:39:04'),
('355c90d0ff35d3d474309bb875fd2fb9450bd7331b18aa3fcd1c5e16d3df0f99ae3956c426a87552', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-16 06:29:20', '2021-10-16 06:29:20', '2021-10-16 14:59:19'),
('371ad4cc3c53085ad61930749b94c10bc977359ebf2ae838c50c1caf6e6d41bc4f42e8ef30ee73ba', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-11 12:16:01', '2021-09-11 12:16:01', '2021-09-11 20:46:01'),
('4730e3dc1f55bedafbe1f7f03f1aaab6265e18162ba6ac1fd7c8ac1a1ce68271dbb5690299c64f22', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-12 08:21:59', '2021-10-12 08:21:59', '2021-10-12 16:51:58'),
('555dcfa8656e94a5620a1607b77fd054ef59a7fb22d87a7be0f8932f20d7ca263a38725ac4fceaf5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-02 06:17:29', '2021-10-02 06:17:29', '2021-10-02 14:47:28'),
('59a417a747720b284b1e2c801130ed3be6cb41437dd950c04116ecaa0be055cbbaeb7d8c40c9cd00', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-04 10:56:05', '2021-09-04 10:56:05', '2021-09-04 19:26:04'),
('59ded3db3a5ebb770996158684b94415df6d4dec3b7139d633880c0f5804d495ab6c935bfd2b0e37', 21, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-03 13:18:32', '2021-09-03 13:18:32', '2021-09-03 21:48:31'),
('6455a927c53620d9474e4a5f41bf336eddb473f0c65da3cac85fdf12506c6458e5a00788aaa91d9d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-16 04:47:19', '2021-10-16 04:47:19', '2021-10-16 13:17:18'),
('662fe1117cd20d2e147f4fd4f13710a2a9c32b1f7c9b300be9e83471dea50e8db69c3c9c5223382a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-05 04:15:45', '2021-09-05 04:15:45', '2021-09-05 12:45:44'),
('6db7b84cf0fcb512a425b3e55f7e5f2e6e8f2a218e80739bdac2f1ec5bffa804b8298b567d49904e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-11 02:34:35', '2021-09-11 02:34:35', '2021-09-11 11:04:35'),
('6ddfc213fa8922f17a6a4f51fa62109808bf1f4bf9e2487b4944f9665c1db656ac304265dfe752d5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2022-09-11 04:55:35', '2022-09-11 04:55:35', '2022-09-11 13:25:34'),
('6fdfb99aeab0212ffb6d49c24ad10b2feecea8c592ea90b37111e6b58604cd8292abd15c990044e2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-02 08:06:04', '2021-10-02 08:06:04', '2021-10-02 16:36:04'),
('75ed9f3656841ed32a9f5a1e3f4617796101dc2fcf32a5e118225b6b24a5371228b095e15a18e1ed', 21, 1, 'Laravel Password Grant Client', '[]', 0, '2021-08-29 16:08:22', '2021-08-29 16:08:22', '2021-08-30 00:38:21'),
('77b54b61df3c696543701ba012755294174e1f973b9a133c4ab97126b6b0d0ec505fe79f9b8da0c8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-03 05:06:19', '2021-10-03 05:06:19', '2021-10-03 13:36:19'),
('831be8aac28b9475eb954bcd7ba2c525649336307bfa9bd6e2cbccb2180aa6ecd412a2229750c088', 21, 1, 'Laravel Password Grant Client', '[]', 0, '2021-08-23 02:06:34', '2021-08-23 02:06:34', '2021-08-22 22:06:34'),
('898bd72787ccfb2c5c620ddc942e4448bc421dc14113bbb88676a82c5b3c209034bf54a97f0def2e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-17 06:11:00', '2021-10-17 06:11:00', '2021-10-17 14:41:00'),
('89e19b58189cd55cca8d570607f628f2f71046105287ad58daeff85ed2ac512142b5b3d2e48b030c', 21, 1, 'Laravel Password Grant Client', '[]', 0, '2021-08-27 13:56:32', '2021-08-27 13:56:32', '2021-08-27 22:26:30'),
('91235ff1772b55ebf3ddfd08b76a0de42eb78ab9004cdec587e680d1403ce522bc7d8ad491715809', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2022-08-19 05:32:20', '2022-08-19 05:32:20', '2022-08-19 14:02:20'),
('9dcbdf0445027719d98884e051b5345a9401370eca1439d5edb43adad56c4bf040b919b55f857750', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-16 12:53:19', '2021-10-16 12:53:19', '2021-10-16 21:23:19'),
('aeaeec02e52921647dfe2d65c0bcfa6fbca09a338abebffe93fbbde3c37edc40e120da31d7b33180', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-05 10:38:31', '2021-09-05 10:38:31', '2021-09-05 19:08:30'),
('b7622363829ab85bab883034342b920c4fd93df45abbf7d626fd030aae4f44014fc55c7ba975042f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2022-07-30 05:44:19', '2022-07-30 05:44:19', '2022-07-30 14:14:18'),
('c6ef56eaa8ab77411ff7a69351b41015fde6f12f1589c008d746b1206a8f7f3ebc46ff0512354ade', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-05 13:05:30', '2021-09-05 13:05:30', '2021-09-05 21:35:29'),
('c7ea3d4c7b8603e344fdd9076d2dbf97d3233fbbf6f1265050bff6d00516a2a01d0b4946a2e3ee7f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-05 16:19:36', '2021-09-05 16:19:36', '2021-09-06 00:49:35'),
('ca9e748a1123911dd8e1b75ac0102c11c0a3df7fc0507be9ba01a418fd0222e19dacde57abc7db60', 21, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-01 10:48:47', '2021-09-01 10:48:47', '2021-09-01 19:18:43'),
('ceda9c85e74ab38b3b4138438a8566b8de1743fde76342171ab0b18f10a3bdcfb45c75b147b10752', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-02 12:10:33', '2021-10-02 12:10:33', '2021-10-02 20:40:32'),
('cfdd5c2348a7345a0d37ce048207dcea238e3950ef9c4a53eb0be25af3552e46f467a12828e1edf1', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-02 03:16:16', '2021-10-02 03:16:16', '2021-10-02 11:46:15'),
('e9054f36e13db2141c866215852b76cb4520b7a5179d5d4c3a4598179db127e226a0149a07deef96', 21, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-02 12:36:41', '2021-09-02 12:36:41', '2021-09-02 21:06:40'),
('f2048e9f78d0d8e44a123f13999c1d0407ec700b4a7a5999dcaffdcd74d0f266f70396aab3e882ae', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-10-03 11:43:51', '2021-10-03 11:43:51', '2021-10-03 20:13:50'),
('f3d3eb8b03f40e32055fda79240a25d087bad5ab05582d7dae927852eb3137d29c0569168f5cc1c2', 21, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-04 07:18:18', '2021-09-04 07:18:18', '2021-09-04 15:48:18'),
('f49b366fe65f53f7aa233b9c16e9af51e23add26a99987226fc3213df4d51d45b63422dbd8ac2663', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-09-06 02:36:25', '2021-09-06 02:36:25', '2021-09-06 11:06:25'),
('fe2c9e8990bd1d4917a56bfb9632c87e905de3922bca6b580eb22fe572f00a1ec9b68b2108d465b6', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2022-09-11 04:56:06', '2022-09-11 04:56:06', '2022-09-11 13:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'caW0h1lL7zgRnGemvVs8nrBSqRoiTVJJ3l12tdUO', NULL, 'http://localhost', 1, 0, 0, '2020-11-09 05:38:50', '2020-11-09 05:38:50'),
(2, NULL, 'Laravel Password Grant Client', 'uTjz7i6vVZybtoJgqRRwnt8ptMVD2MEC5029oZfm', 'users', 'http://localhost', 0, 1, 0, '2020-11-09 05:38:50', '2020-11-09 05:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-09 05:38:50', '2020-11-09 05:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `other_phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `remark` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active/0=Inactive',
  `create_user_id` int(11) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `name`, `address`, `mobile_no`, `other_phone`, `email`, `remark`, `status`, `create_user_id`, `create_date_time`, `update_user_id`, `update_date_time`) VALUES
(1, 'U Tech', 'U Tech,\r\nA-A-10-16,\r\nRanpokunagama,\r\nNittabuwa', '0719651975', '0779081975', 'udithaharshana6@gmail.com', 'Best Price,\r\nBest buy,\r\nExcellent Trust, more than 10 years.', 1, 1, '0000-00-00 00:00:00', NULL, NULL),
(2, 'H Tech', 'H Tech,\r\nA-A-10-16,\r\nRanpokunagama,\r\nNittabuwa', '0719651975', '0779081975', 'udithaharshana6@gmail.com', 'Best Price,\r\nBest buy,\r\nExcellent Trust, more than 10 years.', 1, 1, '2022-09-09 16:39:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seller_item`
--

CREATE TABLE `seller_item` (
  `seller_item_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_item`
--

INSERT INTO `seller_item` (`seller_item_id`, `seller_id`, `item_id`, `price`, `remark`) VALUES
(1, 1, 1, 450000, 'A new, larger 6.7-inch size joins the popular 6.1-inch design, featuring a new dual-camera system, Crash Detection, a smartphone industry-first safety service with Emergency SOS via satellite, and the best battery life on iPhone '),
(2, 1, 2, 425000, 'A new, larger 6.7-inch size joins the popular 6.1-inch design, featuring a new dual-camera system, Crash Detection, a smartphone industry-first safety service with Emergency SOS via satellite, and the best battery life on iPhone '),
(3, 2, 1, 449999, 'A new, larger 6.7-inch size joins the popular 6.1-inch design, featuring a new dual-camera system, Crash Detection, a smartphone industry-first safety service with Emergency SOS via satellite, and the best battery life on iPhone '),
(4, 2, 2, 424999, 'A new, larger 6.7-inch size joins the popular 6.1-inch design, featuring a new dual-camera system, Crash Detection, a smartphone industry-first safety service with Emergency SOS via satellite, and the best battery life on iPhone ');

-- --------------------------------------------------------

--
-- Table structure for table `seller_item_image`
--

CREATE TABLE `seller_item_image` (
  `img_id` int(11) NOT NULL,
  `seller_item_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_item_image`
--

INSERT INTO `seller_item_image` (`img_id`, `seller_item_id`, `image`) VALUES
(1, 1, 'iphine14.jpg'),
(2, 1, 'iphine14_1.jpg'),
(3, 2, 'iphine14_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stk_id` int(11) NOT NULL,
  `seller_item_id` int(11) NOT NULL,
  `transaction_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=GRN/2=StockAdjesment',
  `transaction_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL COMMENT 'quantity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stk_id`, `seller_item_id`, `transaction_type`, `transaction_id`, `qty`) VALUES
(1, 1, 1, 1, 10),
(2, 2, 1, 1, 5),
(3, 3, 1, 2, 8),
(4, 4, 1, 2, 4),
(5, 2, 1, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `stock_leg`
--

CREATE TABLE `stock_leg` (
  `row_id` int(11) NOT NULL,
  `stk_id` int(11) NOT NULL,
  `transaction_type` tinyint(4) NOT NULL COMMENT ' 	Transaction Type (1=GRN/2=GIN/3=Adjustment) 	',
  `transaction_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `debit_qty` int(11) NOT NULL DEFAULT 0,
  `credit_qty` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_leg`
--

INSERT INTO `stock_leg` (`row_id`, `stk_id`, `transaction_type`, `transaction_id`, `transaction_date`, `debit_qty`, `credit_qty`) VALUES
(1, 1, 1, 1, '2022-09-09', 10, 0),
(2, 2, 1, 1, '2022-09-09', 5, 0),
(3, 3, 1, 2, '2022-09-09', 8, 0),
(4, 4, 1, 2, '2022-09-09', 4, 0),
(5, 1, 2, 3, '2022-09-09', 0, 1),
(6, 5, 1, 6, '2022-09-09', 3, 0),
(7, 4, 2, 6, '2022-09-09', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'user ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umo` int(11) NOT NULL DEFAULT 2 COMMENT 'User Mode(1=Admin/2=user)',
  `working_as_salesrep` int(11) NOT NULL DEFAULT 0 COMMENT '1=yes/0=No',
  `mlm` int(11) NOT NULL DEFAULT 0 COMMENT ' 	Multi Location Login Mode (0=Band/1=Access) 	',
  `dbi` int(11) NOT NULL DEFAULT 0 COMMENT 'Default Branch ID',
  `sts` int(11) NOT NULL DEFAULT 1 COMMENT 'Status(1=Active/0=Inactive)',
  `ano` int(11) DEFAULT NULL COMMENT 'Alert Number ',
  `cui` int(11) DEFAULT NULL COMMENT 'Created User ID ',
  `created_at` timestamp NULL DEFAULT NULL,
  `lui` int(11) DEFAULT NULL COMMENT 'Last Updated By ',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `password`, `umo`, `working_as_salesrep`, `mlm`, `dbi`, `sts`, `ano`, `cui`, `created_at`, `lui`, `updated_at`) VALUES
(1, '123456', 'System Administrator', 'Test123@', '$2y$10$q5eaVvD/jokqz/LeANCEAOeoiEECw4ow5uLfdrYx2HFRcUEyXubiW', 1, 0, 1, 1, 1, 719651975, 21, '2020-11-09 04:25:50', 1, '2022-07-30 05:44:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `seller_item`
--
ALTER TABLE `seller_item`
  ADD PRIMARY KEY (`seller_item_id`);

--
-- Indexes for table `seller_item_image`
--
ALTER TABLE `seller_item_image`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stk_id`);

--
-- Indexes for table `stock_leg`
--
ALTER TABLE `stock_leg`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller_item`
--
ALTER TABLE `seller_item`
  MODIFY `seller_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seller_item_image`
--
ALTER TABLE `seller_item_image`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_leg`
--
ALTER TABLE `stock_leg`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
