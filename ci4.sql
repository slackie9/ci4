-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 09, 2021 at 07:46 PM
-- Server version: 5.7.33
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'e38e283727a4e0cdedea4ad003d536d9', '2021-09-09 04:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(7, '::1', 'isminaldiprogram@gmail.com', 15, '2021-09-09 04:17:26', 1),
(8, '::1', 'isminaldiprogram@gmail.com', 15, '2021-09-09 04:34:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kashimoto', 'Shonen Jump', 'naruto.jpg', '2021-09-01 06:13:15', '2021-09-05 22:19:07'),
(2, 'One Piece', 'one-piece', 'Eichiro Oda ', 'Gramedia ', 'onepiece.jpg', '2021-09-01 06:13:15', '2021-09-05 22:25:28'),
(8, 'asas', 'asas', 'asaas', 'aasa', '1.png', '2021-09-06 03:19:42', '2021-09-06 03:19:42'),
(9, 'sdsadsaddassaddasasdadsdasadsads', 'sdsadsaddassaddasasdadsdasadsads', 'asddsa', 'asddsadsa', '1630937653_73901d41e5452e90c4f3.png', '2021-09-06 03:21:28', '2021-09-06 09:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-09-06-160325', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1630944676, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1631162206, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Prabu Hutasoit', 'Ki. Qrisdoren No. 645, Kupang 73232, Jambi', '1997-10-12 23:35:47', '2021-09-06 12:04:10'),
(2, 'Hamima Handayani', 'Psr. Merdeka No. 855, Bogor 62170, Jabar', '1998-03-15 13:46:13', '2021-09-06 12:04:10'),
(3, 'Daliman Najmudin', 'Gg. Aceh No. 757, Sawahlunto 92505, Jambi', '1991-05-13 00:15:19', '2021-09-06 12:04:10'),
(4, 'Ibrani Elvin Uwais', 'Ki. Tangkuban Perahu No. 472, Pekanbaru 29776, Banten', '2000-04-11 12:42:12', '2021-09-06 12:04:10'),
(5, 'Ina Kusmawati', 'Psr. Ciwastra No. 815, Samarinda 89222, Maluku', '1996-04-24 20:12:51', '2021-09-06 12:04:10'),
(6, 'Raharja Lazuardi', 'Kpg. Bappenas No. 505, Tanjung Pinang 94603, Banten', '1971-12-02 02:33:21', '2021-09-06 12:04:10'),
(7, 'Tantri Zelaya Utami', 'Dk. Industri No. 699, Singkawang 96470, Kalteng', '1996-03-09 15:00:03', '2021-09-06 12:04:10'),
(8, 'Banawi Bagus Narpati', 'Jr. Flores No. 633, Tarakan 79634, Gorontalo', '1971-06-16 06:23:40', '2021-09-06 12:04:10'),
(9, 'Bagas Sirait', 'Jr. Sudirman No. 443, Samarinda 29968, Jambi', '1978-03-16 19:08:06', '2021-09-06 12:04:10'),
(10, 'Endah Fujiati', 'Gg. Supomo No. 942, Bekasi 65297, Kalteng', '1985-12-03 18:11:41', '2021-09-06 12:04:10'),
(11, 'Harjo Damanik S.Farm', 'Jr. Babadan No. 858, Dumai 30767, Sumut', '1975-02-06 14:11:03', '2021-09-06 12:04:10'),
(12, 'Nabila Amelia Haryanti', 'Jln. Bayam No. 258, Dumai 71214, Sumut', '2006-11-23 01:40:09', '2021-09-06 12:04:11'),
(13, 'Ida Hasanah', 'Jr. Dipenogoro No. 485, Bandar Lampung 55775, Gorontalo', '2006-05-29 15:51:14', '2021-09-06 12:04:11'),
(14, 'Zelaya Kamila Usamah', 'Jr. Veteran No. 689, Surabaya 43546, Babel', '1999-11-05 07:18:04', '2021-09-06 12:04:11'),
(15, 'Garan Ibrahim Saragih M.TI.', 'Kpg. Basoka Raya No. 687, Administrasi Jakarta Selatan 31307, Pabar', '1973-01-08 07:57:29', '2021-09-06 12:04:11'),
(16, 'Wulan Padmasari', 'Jln. Juanda No. 667, Pariaman 52056, Malut', '1979-01-15 17:52:20', '2021-09-06 12:04:11'),
(17, 'Mursita Waluyo S.E.', 'Jr. Katamso No. 993, Bitung 93741, Maluku', '2019-12-31 14:19:43', '2021-09-06 12:04:11'),
(18, 'Syahrini Elisa Widiastuti', 'Gg. Bak Air No. 141, Yogyakarta 26208, Malut', '1985-04-14 14:29:52', '2021-09-06 12:04:11'),
(19, 'Ida Andriani M.Farm', 'Gg. Orang No. 915, Binjai 83149, Sumbar', '1992-07-15 02:29:53', '2021-09-06 12:04:11'),
(20, 'Kamal Pranowo S.Pt', 'Ds. Tangkuban Perahu No. 272, Tasikmalaya 24738, Sulbar', '2020-02-17 21:29:16', '2021-09-06 12:04:11'),
(21, 'Winda Utami', 'Gg. Wahidin No. 467, Sungai Penuh 79949, Maluku', '2008-08-11 01:35:38', '2021-09-06 12:04:11'),
(22, 'Hesti Lestari', 'Dk. Sudirman No. 744, Surakarta 69805, Sulsel', '1990-09-05 00:30:06', '2021-09-06 12:04:11'),
(23, 'Prasetyo Hutasoit', 'Ds. Yos No. 179, Batu 45285, Sulsel', '1978-07-07 11:43:15', '2021-09-06 12:04:11'),
(24, 'Tami Suryatmi', 'Jln. Bhayangkara No. 114, Pekanbaru 86807, Sulut', '2021-06-15 20:41:18', '2021-09-06 12:04:11'),
(25, 'Zulfa Tantri Nasyiah', 'Ki. Babadan No. 781, Banda Aceh 20271, Kaltara', '2007-07-06 08:11:47', '2021-09-06 12:04:11'),
(26, 'Unjani Wirda Hasanah S.I.Kom', 'Dk. Yosodipuro No. 892, Bau-Bau 26361, Papua', '2010-08-12 03:31:08', '2021-09-06 12:04:11'),
(27, 'Rini Namaga', 'Jr. Yogyakarta No. 991, Gorontalo 88065, Bengkulu', '1990-01-15 07:56:43', '2021-09-06 12:04:11'),
(28, 'Najwa Melani S.Psi', 'Kpg. Ters. Pasir Koja No. 846, Medan 26749, Jatim', '2007-09-04 22:58:04', '2021-09-06 12:04:11'),
(29, 'Zelaya Nabila Wulandari S.Kom', 'Jr. Soekarno Hatta No. 832, Semarang 83945, DIY', '1975-03-16 05:21:02', '2021-09-06 12:04:11'),
(30, 'Caturangga Teddy Latupono M.Ak', 'Dk. Gegerkalong Hilir No. 399, Kediri 50787, Kaltara', '1970-10-18 07:01:02', '2021-09-06 12:04:11'),
(31, 'Ghaliyati Siska Padmasari', 'Jr. Gambang No. 188, Ambon 43029, Papua', '2009-02-18 08:30:56', '2021-09-06 12:04:11'),
(32, 'Kezia Ratih Nurdiyanti S.E.I', 'Dk. Sutoyo No. 201, Banjarmasin 18765, Kaltim', '1992-10-14 03:45:32', '2021-09-06 12:04:11'),
(33, 'Ifa Yuliarti', 'Psr. Bagonwoto  No. 112, Pontianak 32086, Gorontalo', '2006-08-03 13:24:18', '2021-09-06 12:04:11'),
(34, 'Amalia Natalia Widiastuti', 'Kpg. Elang No. 583, Tomohon 82307, Bali', '1976-08-21 11:43:12', '2021-09-06 12:04:11'),
(35, 'Diah Cornelia Nurdiyanti', 'Psr. Abdul Rahmat No. 422, Bogor 11232, Sumut', '1985-08-05 17:00:07', '2021-09-06 12:04:11'),
(36, 'Bakianto Ardianto', 'Psr. Sukajadi No. 798, Tanjungbalai 93692, Sulbar', '2018-01-05 12:57:56', '2021-09-06 12:04:11'),
(37, 'Wirda Nuraini', 'Gg. Aceh No. 36, Makassar 35356, Gorontalo', '1970-05-04 21:06:03', '2021-09-06 12:04:11'),
(38, 'Muni Waskita', 'Jln. Baranang No. 773, Subulussalam 51950, Sultra', '1973-12-17 09:06:56', '2021-09-06 12:04:11'),
(39, 'Kasim Manullang', 'Jr. Flora No. 232, Subulussalam 70348, Sulut', '1991-07-08 15:12:44', '2021-09-06 12:04:11'),
(40, 'Marsudi Tampubolon S.E.I', 'Dk. Camar No. 740, Pekanbaru 93567, Sultra', '1982-09-21 12:42:40', '2021-09-06 12:04:11'),
(41, 'Patricia Umi Mulyani', 'Psr. Bambu No. 9, Cilegon 79303, DIY', '1997-06-02 05:38:45', '2021-09-06 12:04:11'),
(42, 'Ratih Hasanah', 'Jr. Abdul Rahmat No. 827, Lubuklinggau 91676, Gorontalo', '2009-09-07 09:06:38', '2021-09-06 12:04:11'),
(43, 'Lasmanto Jailani', 'Kpg. Abdul No. 731, Semarang 13924, Bali', '1972-07-17 16:27:12', '2021-09-06 12:04:11'),
(44, 'Candra Hutasoit S.E.', 'Ki. Salak No. 612, Tidore Kepulauan 94452, Lampung', '2018-08-15 09:30:21', '2021-09-06 12:04:11'),
(45, 'Devi Puti Mayasari', 'Gg. Baranangsiang No. 978, Semarang 47010, Jatim', '1973-10-18 01:16:08', '2021-09-06 12:04:11'),
(46, 'Cakrabirawa Sinaga S.Farm', 'Ki. Baan No. 404, Bengkulu 18573, Riau', '1979-02-11 20:55:04', '2021-09-06 12:04:11'),
(47, 'Baktiadi Cahya Permadi', 'Gg. Veteran No. 538, Sabang 88646, Kaltara', '1982-02-14 22:37:54', '2021-09-06 12:04:11'),
(48, 'Raisa Riyanti', 'Ki. Sunaryo No. 423, Sabang 99285, Sumbar', '1974-11-09 21:55:43', '2021-09-06 12:04:11'),
(49, 'Intan Ulya Yulianti S.H.', 'Jln. Laswi No. 914, Tegal 64393, NTB', '2000-08-27 12:35:17', '2021-09-06 12:04:12'),
(50, 'Lanjar Nababan', 'Psr. Banceng Pondok No. 833, Singkawang 83080, Lampung', '1980-10-15 06:29:26', '2021-09-06 12:04:12'),
(51, 'Azalea Tina Wastuti', 'Kpg. Abdul Muis No. 892, Surabaya 91232, Sumsel', '2016-03-11 04:44:52', '2021-09-06 12:04:12'),
(52, 'Kenari Widodo', 'Dk. K.H. Maskur No. 186, Bau-Bau 88414, Sumut', '1992-03-06 11:27:08', '2021-09-06 12:04:12'),
(53, 'Dinda Kuswandari', 'Kpg. Kiaracondong No. 114, Administrasi Jakarta Pusat 42122, Lampung', '1980-03-11 06:37:57', '2021-09-06 12:04:12'),
(54, 'Embuh Gunarto', 'Ki. Baya Kali Bungur No. 434, Denpasar 81792, Jambi', '1994-09-01 17:22:29', '2021-09-06 12:04:12'),
(55, 'Viman Lazuardi', 'Jr. Bata Putih No. 313, Administrasi Jakarta Utara 10198, Pabar', '1988-10-08 03:55:17', '2021-09-06 12:04:12'),
(56, 'Cinthia Nurdiyanti', 'Jr. Yosodipuro No. 744, Makassar 67322, Gorontalo', '1987-12-05 22:25:51', '2021-09-06 12:04:12'),
(57, 'Martana Makuta Natsir S.IP', 'Ki. PHH. Mustofa No. 323, Surakarta 74780, Banten', '1985-01-02 12:59:02', '2021-09-06 12:04:12'),
(58, 'Olivia Pudjiastuti', 'Jr. Ters. Pasir Koja No. 689, Salatiga 44171, Bengkulu', '2018-08-19 03:29:06', '2021-09-06 12:04:12'),
(59, 'Irfan Oman Damanik M.Kom.', 'Psr. Kiaracondong No. 719, Tangerang 63002, Sulbar', '1973-11-06 03:38:49', '2021-09-06 12:04:12'),
(60, 'Sakura Wijayanti', 'Kpg. Antapani Lama No. 309, Blitar 53561, Kalteng', '2017-02-02 10:09:18', '2021-09-06 12:04:12'),
(61, 'Utama Cecep Wibowo', 'Jr. Umalas No. 234, Semarang 10779, NTB', '2017-10-12 19:14:31', '2021-09-06 12:04:12'),
(62, 'Carla Pratiwi', 'Dk. Dahlia No. 400, Kotamobagu 78009, Jambi', '2006-12-14 19:46:28', '2021-09-06 12:04:12'),
(63, 'Kala Pratama', 'Jr. Achmad No. 375, Jambi 51309, Papua', '1998-06-29 05:41:18', '2021-09-06 12:04:12'),
(64, 'Langgeng Wasita S.Pd', 'Psr. Raden No. 380, Yogyakarta 83742, Jambi', '1999-11-30 11:26:33', '2021-09-06 12:04:12'),
(65, 'Dadap Maheswara', 'Kpg. Bayan No. 561, Tegal 66014, Kaltim', '2013-04-21 14:41:33', '2021-09-06 12:04:12'),
(66, 'Gaiman Mustofa', 'Jln. Suniaraja No. 301, Semarang 29252, Riau', '2002-05-06 21:42:39', '2021-09-06 12:04:12'),
(67, 'Clara Nurul Utami M.M.', 'Jln. B.Agam 1 No. 169, Kendari 71347, Babel', '1992-12-04 18:47:32', '2021-09-06 12:04:12'),
(68, 'Hasna Prastuti', 'Ds. B.Agam Dlm No. 977, Payakumbuh 53938, Malut', '1974-12-25 18:48:05', '2021-09-06 12:04:12'),
(69, 'Hamima Yance Handayani M.Ak', 'Ki. Adisumarmo No. 830, Batu 56714, Kaltim', '2019-01-19 07:33:40', '2021-09-06 12:04:12'),
(70, 'Ina Haryanti', 'Gg. Zamrud No. 182, Jayapura 70338, Pabar', '1991-07-23 05:05:33', '2021-09-06 12:04:12'),
(71, 'Vivi Sudiati', 'Kpg. Bagas Pati No. 964, Administrasi Jakarta Barat 19906, Bali', '1996-07-12 17:34:46', '2021-09-06 12:04:12'),
(72, 'Cici Hasanah S.Pd', 'Jln. Baung No. 563, Serang 96663, Jambi', '2003-02-13 11:12:11', '2021-09-06 12:04:12'),
(73, 'Ida Jelita Haryanti S.T.', 'Psr. Rajawali Barat No. 843, Sibolga 95041, Riau', '1980-05-21 13:50:42', '2021-09-06 12:04:12'),
(74, 'Elma Melinda Yuliarti', 'Jln. Sutan Syahrir No. 37, Semarang 33537, Sumbar', '1984-09-08 19:14:29', '2021-09-06 12:04:12'),
(75, 'Farhunnisa Syahrini Nurdiyanti S.IP', 'Dk. Qrisdoren No. 804, Administrasi Jakarta Utara 74275, Gorontalo', '1970-02-22 17:15:22', '2021-09-06 12:04:12'),
(76, 'Dirja Latupono', 'Jln. Gajah Mada No. 123, Tanjung Pinang 32787, Jambi', '2017-05-18 23:11:01', '2021-09-06 12:04:12'),
(77, 'Gandewa Gandi Marpaung', 'Kpg. Raden Saleh No. 158, Kendari 77486, NTT', '1986-12-14 15:30:10', '2021-09-06 12:04:12'),
(78, 'Hairyanto Kuswoyo', 'Jln. Lumban Tobing No. 601, Bandar Lampung 10619, Aceh', '2005-07-30 13:15:20', '2021-09-06 12:04:12'),
(79, 'Ilyas Lazuardi S.Sos', 'Jln. Adisumarmo No. 223, Padang 39380, Bengkulu', '2013-03-05 06:53:19', '2021-09-06 12:04:12'),
(80, 'Praba Saptono M.Farm', 'Ki. S. Parman No. 519, Bandar Lampung 20972, Bengkulu', '1999-06-03 08:12:50', '2021-09-06 12:04:12'),
(81, 'Pranata Tampubolon', 'Ki. Baya Kali Bungur No. 607, Jambi 51292, DKI', '2017-02-26 23:31:21', '2021-09-06 12:04:12'),
(82, 'Paulin Mulyani', 'Jr. Banceng Pondok No. 544, Payakumbuh 77783, Pabar', '2012-01-25 00:13:53', '2021-09-06 12:04:12'),
(83, 'Luwar Budiyanto', 'Jln. Kali No. 718, Gorontalo 37058, Gorontalo', '1976-08-11 01:24:11', '2021-09-06 12:04:12'),
(84, 'Artanto Ade Simanjuntak S.E.', 'Ki. Umalas No. 352, Solok 11515, Sumbar', '2015-11-06 07:57:01', '2021-09-06 12:04:12'),
(85, 'Gina Melani', 'Psr. Kyai Gede No. 563, Balikpapan 78385, Sumbar', '1970-11-19 06:45:04', '2021-09-06 12:04:12'),
(86, 'Prasetyo Napitupulu', 'Ki. Acordion No. 108, Pontianak 87916, Jambi', '1983-03-07 16:54:29', '2021-09-06 12:04:12'),
(87, 'Anom Utama', 'Kpg. Bakhita No. 777, Blitar 38403, Kalsel', '1975-12-15 05:27:46', '2021-09-06 12:04:12'),
(88, 'Balijan Widodo', 'Kpg. Rajawali Timur No. 216, Sorong 86686, Lampung', '2016-02-04 14:05:05', '2021-09-06 12:04:12'),
(89, 'Vinsen Jumadi Mustofa', 'Kpg. Kartini No. 402, Tidore Kepulauan 38683, Riau', '2018-04-28 09:41:56', '2021-09-06 12:04:12'),
(90, 'Aurora Nasyiah S.Pd', 'Dk. Baabur Royan No. 450, Tanjung Pinang 81416, Jatim', '2011-08-28 18:43:45', '2021-09-06 12:04:12'),
(91, 'Mila Mandasari', 'Psr. Barat No. 11, Sukabumi 34614, Sulut', '2010-03-27 17:07:26', '2021-09-06 12:04:13'),
(92, 'Wira Saragih', 'Ki. Babah No. 309, Denpasar 22807, Babel', '1985-08-18 18:45:45', '2021-09-06 12:04:13'),
(93, 'Widya Salsabila Purwanti M.Kom.', 'Psr. Sukabumi No. 99, Madiun 14566, Jateng', '2014-12-24 09:08:43', '2021-09-06 12:04:13'),
(94, 'Gangsa Wahyu Dabukke', 'Jr. Lumban Tobing No. 593, Palembang 99131, Bengkulu', '2014-03-22 12:25:18', '2021-09-06 12:04:13'),
(95, 'Cakrabuana Pardi Saefullah S.E.I', 'Ki. Nanas No. 261, Palu 95742, Papua', '1989-02-16 10:53:06', '2021-09-06 12:04:13'),
(96, 'Prayitna Utama', 'Gg. Sadang Serang No. 21, Semarang 66836, Babel', '2008-01-18 11:45:42', '2021-09-06 12:04:13'),
(97, 'Emin Pangeran Firmansyah', 'Ki. Suprapto No. 137, Padangsidempuan 60583, Jateng', '1983-09-25 08:23:41', '2021-09-06 12:04:13'),
(98, 'Ifa Sabrina Mulyani', 'Ds. Setiabudhi No. 681, Blitar 31394, Pabar', '2001-07-08 15:44:46', '2021-09-06 12:04:13'),
(99, 'Zalindra Ghaliyati Hariyah M.Farm', 'Psr. Achmad No. 246, Probolinggo 26970, Kaltim', '2010-06-02 14:29:00', '2021-09-06 12:04:13'),
(100, 'Elvina Laksita', 'Ki. Baranang Siang No. 748, Bima 89622, Lampung', '2013-10-30 14:39:46', '2021-09-06 12:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 'isminaldiprogram@gmail.com', 'nobita', '$2y$10$2AHgOwxaXiO1DM1BOT1AguYUy33vpHPWwu6o.sxfp730tCM25I8na', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-09-09 04:15:36', '2021-09-09 04:17:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
