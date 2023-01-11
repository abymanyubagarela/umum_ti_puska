-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 07:16 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umum_ti`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_nip_bpk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_nip_bkn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_handphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_ttd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_name`, `account_nip_bpk`, `account_nip_bkn`, `account_email`, `account_handphone`, `account_unit`, `account_role`, `account_ttd`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2400114512', '1998012520220310021', 'abimanyu.putra@bpk.go.id', NULL, 'umum', 'Super Admin', NULL, '$2y$10$8Vw61HqK91hlGBSEnh7dsOEEO5Evul8rDS/WoUxqhzm7DvlObQwmS', '2022-11-02 01:57:01', '2022-11-02 01:57:01'),
(2, 'Miftahul Rasyid Abdul Khair', '24001122451', '199802012018121002', 'syahri.ramadhani@bpk.go.id', NULL, 'umum', 'Petugas BMN', NULL, '$2y$10$igEjNBf35CCn0UFRQsS7ROYhtQx/QJ9zJsEaH470fQRFlUeUDjM0y', '2022-11-02 01:57:01', '2022-11-02 01:57:01'),
(3, 'Dwi Ferdiansyah', '2400114521', '198103152008081001', 'syahri.ramadhani@bpk.go.id', NULL, 'Subbagian Umum dan Teknologi Informasi', 'Pejabat Struktural', NULL, '$2y$10$RkmTh6iTsWDWkz9iut6hLORU8duKjbQvD7UKzuqXZZ/Zzn5xTccXi', '2022-11-02 01:57:01', '2022-11-02 01:57:01'),
(4, 'Puspa Wastuti', '866979', '19263301', 'pangestu79@yahoo.co.id', '0874 6848 8426', 'SDM', 'user', NULL, '$2y$10$ikiuBrtQOJCBZaaRbcEk3OoJSqyX/kGpOLbwkCAK7wwDysBUN2jAC', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(5, 'Ayu Anggraini S.Psi', '419921', '38891214', 'eka.salahudin@wastuti.net', '0378 0494 3569', 'Umum', 'user', NULL, '$2y$10$8eNOxjwY5QZaGh9CDH5QWunR1CzuMH.LKwKZDtSMGgbMb2BLc8oNe', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(6, 'Hani Usamah S.IP', '306378', '14637306', 'padmasari.najib@yahoo.co.id', '(+62) 971 6094 089', 'Umum', 'user', NULL, '$2y$10$YvlJMLxeRvA7JVbMNlK0r.Zd9AomLrP06b3JcAjm7To38HFLaarrS', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(7, 'Cager Suryono S.IP', '210990', '99762104', 'anggabaya18@napitupulu.biz.id', '023 5072 142', 'Subauditor', 'user', NULL, '$2y$10$QCVxzuVRyVqQApn.hjFpD.deOxGWkSZEsVQJ9CE5dNGubj/4crekS', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(8, 'Prakosa Himawan Prasetya', '595972', '60326911', 'ulya18@nababan.com', '0621 9110 821', 'Subauditor', 'user', NULL, '$2y$10$KzRZlY9uNlJYxVKwyTx4jO4W3c6cQTckiAD0OaGixcukh3VKt.c/K', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(9, 'Jelita Lailasari', '609530', '90995697', 'hardi45@yahoo.com', '(+62) 881 1858 2111', 'SDM', 'user', NULL, '$2y$10$C6Mr2UD/WuzpYMwsYAKaSuiMWHNY9xKh8Q2i1g9XaVI3qU3JkRNzq', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(10, 'Jaeman Napitupulu', '927657', '41676257', 'uwinarsih@yahoo.co.id', '(+62) 659 5636 846', 'Subauditor', 'user', NULL, '$2y$10$yqFQsFDzqlEaD63yL40xY.l28pphM0YZ7xhmFYPfym4s5AzNbz4WS', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(11, 'Carub Garan Pangestu', '319256', '32235070', 'qoktaviani@wibowo.mil.id', '0337 0758 465', 'SDM', 'user', NULL, '$2y$10$NqZi6i9PsOp5GZ7OiFyJj.DevbHbZ5xlukkil9rt9F2vJa8Roifqu', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(12, 'Unjani Yani Laksita S.Ked', '880080', '20560984', 'mulyanto31@jailani.asia', '0882 7904 405', 'Subauditor', 'user', NULL, '$2y$10$aa/Fr4KSe9LD3emfhGUK.ew0RIrAT/BmoWkqONVE2T9lYhQoWDOoy', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(13, 'Cawisono Manullang', '439160', '80532422', 'asmuni67@gmail.com', '(+62) 538 0969 498', 'SDM', 'user', NULL, '$2y$10$.qmwv1ghslfxaxnM8x1wl.Kgmvub38mnxaUEXGOJWAUktd80rW6w6', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(14, 'Hamima Zulaika', '904403', '27445173', 'waskita.mahfud@purnawati.tv', '(+62) 660 4275 7487', 'Subauditor', 'user', NULL, '$2y$10$.EVhO0H/xGj3Lc4NfX4zfeTm0GkILedle5L9U9GccBg.mSgybE2We', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(15, 'Rafi Nainggolan M.M.', '668789', '15403019', 'jsirait@wasita.in', '0907 2663 904', 'Umum', 'user', NULL, '$2y$10$kc5Yj/zvZV7GKX7ug6EyV.QgTrLkan.XjcaIDo6wGXWVychY96CIi', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(16, 'Sari Lailasari', '909548', '58642880', 'rahmat.irawan@yahoo.co.id', '0657 7651 770', 'Subauditor', 'user', NULL, '$2y$10$BOcsUuk6208/Z2BRn5MZ1.3J3DdtF0cJt8jxTk0lvky/ZKckSRQHK', '2022-11-02 01:57:19', '2022-11-02 01:57:19'),
(17, 'Sabrina Purnawati', '201275', '81137949', 'mprastuti@gmail.co.id', '(+62) 226 5795 1233', 'Umum', 'user', NULL, '$2y$10$rvJ6B9zrGWM2F/jgFzIKEeQTgYtLDs1S9e.bHAaR2HorDQYIaBK..', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(18, 'Sidiq Mansur', '499148', '30333764', 'tmegantara@kusmawati.id', '(+62) 21 1614 6769', 'Subauditor', 'user', NULL, '$2y$10$9pqacZ5pPrxcJ6cfi3mivuy0jAGAlleA05y.KfXy7elg2ULsQ.FIC', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(19, 'Faizah Mayasari', '635656', '51453720', 'uyainah.bahuwarna@hasanah.id', '0547 9316 5572', 'Umum', 'user', NULL, '$2y$10$65IQOxHx9r8lkxMYIYwV9ubKO7T.iT5BHQp2GCbJY2uVCDGnNvFZi', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(20, 'Harsaya Kuswoyo S.E.I', '415044', '32677861', 'padmasari.elvina@gmail.co.id', '(+62) 492 7650 6131', 'SDM', 'user', NULL, '$2y$10$Ssa/EHAoauYL6MDwQDXice11ODeMlgvdYGhhIBS8y5MmBzQ5ERnJe', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(21, 'Putri Ciaobella Uyainah S.IP', '535124', '93825314', 'priyanti@yahoo.co.id', '(+62) 510 4257 7876', 'Umum', 'user', NULL, '$2y$10$2W5gjNGVnMXXzneuQyhFueOn6nl7O0b0UYiBpM1oI/0LXBBWdATfa', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(22, 'Zelaya Wahyuni M.Pd', '881367', '39665581', 'npudjiastuti@yuliarti.my.id', '0374 5921 6297', 'Subauditor', 'user', NULL, '$2y$10$KGI4AJZMC4.nUzcH1p53du3lh9zPWyL5cPlH/Gdcamyn3zQw52xL6', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(23, 'Sari Haryanti', '373472', '44520083', 'lailasari.nardi@gmail.com', '0372 2160 113', 'Umum', 'user', NULL, '$2y$10$jJIYE52TWNt1d5hCM3P8eOG22kh0cjVIOchRoi/UDv2j5sySeeJtK', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(24, 'Bakiadi Dongoran', '242311', '51873048', 'yuyainah@maryati.tv', '(+62) 246 8137 694', 'Subauditor', 'user', NULL, '$2y$10$AorWdRhKJW.iJ2stTH0j.eSRFNXdJhdiyaXGdMZn5Jf/VqiVJLni6', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(25, 'Hasim Enteng Permadi S.Pd', '114576', '66692356', 'kenes98@ardianto.mil.id', '0759 7162 761', 'Umum', 'user', NULL, '$2y$10$/ToEJV/3wAMksqOa7JOi2eqNWYV7FL/Ii0mR5v31lSc2SddRrr9m6', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(26, 'Ade Hasim Tampubolon', '503747', '67652032', 'hbudiman@susanti.asia', '0547 6738 764', 'SDM', 'user', NULL, '$2y$10$BbGpVjEkYQ9SBDbSw7FNiu/18blqPyBxjO.xz9IwwoXzdW/50WJtG', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(27, 'Balangga Jayadi Waluyo', '348175', '61116874', 'maya.usada@yahoo.com', '(+62) 708 2227 6628', 'Umum', 'user', NULL, '$2y$10$xMZ/7LUDxmBeLHfwMotJzuqHGkR5EEl3B5S4HAi.RJa3dl6zIJdwG', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(28, 'Tira Kuswandari', '331773', '47015121', 'putri40@gmail.com', '(+62) 28 1047 993', 'Subauditor', 'user', NULL, '$2y$10$UITQYKckXZ.6bYErr34aEOjSqq2F0fNVk0ffzOucJyctYwLdtu7RG', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(29, 'Martana Hidayanto', '524498', '35319946', 'tarihoran.silvia@gmail.com', '0422 8147 2685', 'Subauditor', 'user', NULL, '$2y$10$bZnIL5MPfJ/rDcQvq2ouvuXukwBZAD5Gmdl2HvUorXGeZVaYo48oa', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(30, 'Maya Lidya Widiastuti', '298482', '66052535', 'prastuti.faizah@yahoo.co.id', '(+62) 942 4434 6175', 'Umum', 'user', NULL, '$2y$10$hZSpynFxttGvfD.OCP1SCO70eB3Dc2y/tEEZK0vVWQMAWXHl6weCm', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(31, 'Dacin Prakasa S.Pt', '489292', '51163313', 'tbudiyanto@mayasari.name', '0719 3343 5658', 'Umum', 'user', NULL, '$2y$10$raOSyy4iKIrd8fRBhkMnEeALPqoJOCP08PQMZ2KtelhInbKOIPKlm', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(32, 'Balapati Saptono', '626250', '94206132', 'waluyo.irfan@utami.in', '0595 1329 438', 'Umum', 'user', NULL, '$2y$10$uuIjyrMi14MOKhlAYIaIFu0gIsTnWE5G5qxUm9a71PPeqQ8b9YDku', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(33, 'Rosman Halim S.Gz', '945402', '59661072', 'lantar.hastuti@wibisono.info', '021 4159 4553', 'SDM', 'user', NULL, '$2y$10$KUlme7Vg7s4L2FTNjZRu5OkjJzTeccLyVkrY/Ba2TveFMg8RGMAA.', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(34, 'Zelda Yuniar', '621599', '28651758', 'kawaca52@mustofa.desa.id', '(+62) 430 8209 1033', 'Subauditor', 'user', NULL, '$2y$10$gU9aTruT6gs4QqAQfJdnROox8SZk9Q/hZJDscHYY.3IGmRV8cRela', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(35, 'Tantri Vera Mandasari S.Sos', '695042', '38834789', 'jono.marpaung@yahoo.co.id', '(+62) 899 5485 960', 'Umum', 'user', NULL, '$2y$10$Y1JA7Vuojt3wkwGuFbH9auEyb8uu6gDIY06QOnTWUdQfc77X2CJNO', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(36, 'Ciaobella Handayani', '290117', '75456958', 'opudjiastuti@gmail.com', '0585 7154 8036', 'SDM', 'user', NULL, '$2y$10$BLW8vZpjVGsNdMIWqlkJzOvablQmAqIl4TInLlevYsmmNGkjjI9ku', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(37, 'Cici Zulfa Farida S.I.Kom', '980734', '31268680', 'kamidin.waluyo@gmail.com', '(+62) 772 8976 1335', 'SDM', 'user', NULL, '$2y$10$UwuHa9ZYBtA9koVIVaceQO0qebEjTqrbx6lmK2L1OwvO1SKC3KsQ.', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(38, 'Kanda Setiawan', '350762', '95361470', 'nova47@situmorang.name', '(+62) 490 3606 799', 'SDM', 'user', NULL, '$2y$10$so/gQ2.e3qbCIOokbijNxuYHY3tfFjYK1R7O798wvgM0JBgfMoSXq', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(39, 'Kamidin Mujur Hidayat S.Pd', '176162', '50994635', 'halima.farida@lestari.ac.id', '0628 7258 704', 'Umum', 'user', NULL, '$2y$10$3brZLbi52fSnOAsBWrCgnO793t5sIY01SLNxyAZ72T.9J5U0Sx2Xq', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(40, 'Wardaya Utama', '621256', '76410067', 'maryati.kania@wijaya.desa.id', '(+62) 735 3385 860', 'SDM', 'user', NULL, '$2y$10$lzFD6XpuXk9o5om6usUTeOBLZKdGvzjMwMO25M4v1EA5sucIk7dHO', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(41, 'Uli Rahayu', '750001', '87811993', 'puti71@yahoo.co.id', '(+62) 783 6504 8781', 'SDM', 'user', NULL, '$2y$10$HjedSQ0qywmdsqYy/T/GWuAvh4rDaOyF.lt3iU.kPCnVl4mwNzPlq', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(42, 'Gamblang Natsir', '654095', '12447122', 'puput.nashiruddin@yahoo.co.id', '(+62) 523 0952 5952', 'Subauditor', 'user', NULL, '$2y$10$z4J5I.yknk76ZFgtxuov7uBhghIYN5ub9x/nyhRPrMnJCU9WG5PA2', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(43, 'Rachel Yuliarti S.E.I', '812582', '10992628', 'garda54@palastri.info', '(+62) 549 3498 319', 'SDM', 'user', NULL, '$2y$10$i39OMAl2zfpA3nLChkiKeefxGLWYzabqfu55zwducbPYuLWIF5BbW', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(44, 'Ciaobella Iriana Nurdiyanti M.Pd', '496216', '43113447', 'mnasyidah@napitupulu.name', '024 2488 802', 'Umum', 'user', NULL, '$2y$10$BLHvsXJ2gWs8khLGSDGDb.0PZNT5znOtGBU8A..XE8VtATz079EgC', '2022-11-02 01:57:20', '2022-11-02 01:57:20'),
(45, 'Lalita Anggraini', '570544', '75237975', 'anovitasari@gmail.co.id', '(+62) 347 2462 778', 'Subauditor', 'user', NULL, '$2y$10$6acnWbcTiBQNX.i6eIp.4eLTw3SGddL53RlDZOnXthAC3mV5x1gyG', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(46, 'Kayla Pertiwi', '720344', '65410028', 'jagaraga81@padmasari.mil.id', '0964 1858 2522', 'Umum', 'user', NULL, '$2y$10$u2dSxHtB7CwBTbqXCbX9iOdkD4mreV6w1eWKZRh8PFTTfHb9l17vi', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(47, 'Estiawan Garan Hardiansyah', '917449', '72318915', 'zamira.mahendra@napitupulu.tv', '0937 3479 3014', 'Umum', 'user', NULL, '$2y$10$xdSfJoFz/3zYuzqtmzyIsORY2RGPJ3kK3lRqf3eN5EV95zvTbM4Ea', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(48, 'Ophelia Handayani M.Kom.', '568582', '94724349', 'gpadmasari@gmail.com', '(+62) 334 2906 5909', 'Umum', 'user', NULL, '$2y$10$hml5l5UAvxxTVmwP0WejjekADbD5I17W6lk07W3lxddx2tBgI83eG', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(49, 'Endah Ani Aryani M.Ak', '531583', '79021023', 'cindy43@yahoo.co.id', '(+62) 735 4870 365', 'SDM', 'user', NULL, '$2y$10$Q240ene1VevjhEanThh65ezOTSksTdZFVx76MbA3MNQQ0A6ARGeSC', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(50, 'Padma Utami', '175821', '89058264', 'prakosa.widodo@gmail.com', '(+62) 445 1585 2820', 'Subauditor', 'user', NULL, '$2y$10$k0ByBwgsUC2AwvH99DIoIOWZssQoiHj0TRbqzIw60uMKqjy8pbztq', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(51, 'Genta Wijayanti', '140924', '92584568', 'maryadi.zalindra@mardhiyah.ac.id', '022 2825 231', 'SDM', 'user', NULL, '$2y$10$dU.NcOen8pKNfj8fx2cG.OYH11jIVNDMCIYBZ9DKdpFwnuoRPGRSi', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(52, 'Jaswadi Yoga Adriansyah', '836903', '95009999', 'fprasetya@gmail.co.id', '025 1266 2495', 'SDM', 'user', NULL, '$2y$10$JCiWNyuwcsY2rMSQU2XXXOOXdyloSD5HmtEbyCGgqYdn8v9w35RmO', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(53, 'Eli Gina Aryani', '197539', '10535319', 'ellis68@hutagalung.or.id', '0980 4420 461', 'SDM', 'user', NULL, '$2y$10$mCphxz/VCJ8J4AAfa/DEveTULOsHtEdffFS0JpAuPAaApLp.x/0K.', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(54, 'Surya Prasetya Mandala', '966152', '53942741', 'rina.prastuti@iswahyudi.sch.id', '(+62) 257 4299 7552', 'Subauditor', 'user', NULL, '$2y$10$O0YQgt96ue1StbvClrZ/KuXI610Ohuv4fLEMu31HO9gVQNPoxX54O', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(55, 'Ade Winarsih', '323211', '94131380', 'uyainah.dimas@yahoo.com', '0266 5962 971', 'Umum', 'user', NULL, '$2y$10$8Z.Bm9RjKa4tMadnjKOlpe7XseHYIFcwd8fxZuVFw7lvIg6I3v3na', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(56, 'Julia Agustina', '596593', '62060589', 'zulaikha.sinaga@gmail.co.id', '(+62) 476 4212 709', 'Subauditor', 'user', NULL, '$2y$10$Qj/QXWl0/ko47IFfAjj2fe5dgKwdkSLZuaJNQZ60b3iI2mfXUjrZ.', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(57, 'Jaka Prabowo', '576807', '95837557', 'gasti55@saputra.or.id', '(+62) 578 3219 8339', 'SDM', 'user', NULL, '$2y$10$0JxwbeUY4tc7heLoA9YsYu1fu6lURmI76JLG8hOzrsHfdRCWhVUba', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(58, 'Indah Nasyidah', '887283', '96445640', 'hartana26@budiyanto.net', '(+62) 718 7856 2742', 'Umum', 'user', NULL, '$2y$10$//SBmh24wy4rAg3NhbAfHuLMbk7R70kkIcDPWoDSBLdpFR4keHhl.', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(59, 'Hardi Suwarno', '198883', '44897164', 'usyi.pertiwi@sihotang.co.id', '(+62) 247 6217 3594', 'Subauditor', 'user', NULL, '$2y$10$yLdi7ddIosuxcmsP6nQtUe.yHOHAHyRWzcdpUlxECFahPs/MhDgk2', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(60, 'Bella Prastuti', '789659', '22127308', 'ulatupono@permadi.my.id', '(+62) 469 9485 7664', 'Umum', 'user', NULL, '$2y$10$cQV7MWk9zPSi/GLJnxKk0e1GgCndqIw1zHsohT1WQzdcI8yezRt2O', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(61, 'Ibrahim Gatra Anggriawan', '611015', '24441684', 'cinthia.saefullah@astuti.in', '027 5544 033', 'Subauditor', 'user', NULL, '$2y$10$N0ucr07vzbx.ulEXg7IEp.dn/nFA.cbuLPEkgh9nuEmrHp875qljG', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(62, 'Mursita Tasnim Dongoran S.Psi', '467339', '68733404', 'putra.karsana@rahayu.co.id', '0245 4979 0619', 'SDM', 'user', NULL, '$2y$10$OgW.SHiqd8TGdPYm9Zrw6uhExSpTyWjTOvaHKywf2Qy624yT7h2gW', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(63, 'Sadina Wijayanti', '102612', '63288428', 'kania19@yahoo.com', '(+62) 605 2062 286', 'SDM', 'user', NULL, '$2y$10$QnLi0Sf1fn2b20r5lQQBluLiS3/HLVCDUmofLkdMpP4tfx2tbT4WK', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(64, 'Baktiono Naradi Suwarno S.Farm', '558738', '24311616', 'euyainah@gmail.com', '(+62) 837 400 673', 'Subauditor', 'user', NULL, '$2y$10$a6NeZsvzIrycYG61L3PXweA5kh2yh6ZvJcWIxB3Ngyz4HGqSqOQTu', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(65, 'Talia Puspasari', '281468', '25070162', 'hamima.lailasari@gmail.co.id', '(+62) 574 8363 106', 'SDM', 'user', NULL, '$2y$10$ntNsz.fR1e2gQAECqz6YwOwgorcshLK80tRVprFJqDIClX3AYx6li', '2022-11-02 01:57:21', '2022-11-02 01:57:21'),
(66, 'Yani Yuliarti', '888508', '25579916', 'zjanuar@pratiwi.web.id', '(+62) 529 4788 663', 'Umum', 'user', NULL, '$2y$10$xArgUhNJDmwr2SUEMLam0.N8CTyYicHIJCBHH6MDl0zQlrISFwsMS', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(67, 'Aswani Januar', '778759', '58088833', 'aurora.astuti@yahoo.co.id', '(+62) 29 1831 113', 'Umum', 'user', NULL, '$2y$10$HjmsAeZhxuL8BbUWIgNaH.YBE4wdHx/esloVaTKHhl8PUwEeP3ECS', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(68, 'Aisyah Mulyani M.Pd', '798779', '42462957', 'jailani.tasdik@yahoo.co.id', '(+62) 22 5443 531', 'Subauditor', 'user', NULL, '$2y$10$6f3sUONagX.D.Zu2CIfE6erI4Jompr2EONxQIWV5BAIO2WhKrwPA2', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(69, 'Paiman Winarno', '629074', '28708191', 'raihan07@gmail.co.id', '(+62) 339 6383 3102', 'SDM', 'user', NULL, '$2y$10$2H8M6IirvNODoJaqUUSXUOUKQ2/uR3IL29LfpWKYBbu4EYHsCPSpu', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(70, 'Usman Jail Kurniawan M.TI.', '538794', '76250238', 'qori51@prakasa.com', '0891 3920 3803', 'Subauditor', 'user', NULL, '$2y$10$WxAql1vVPofKaryq34tDOuUwxZTVYuHKdL4pBkCO72bOArOLelY.W', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(71, 'Dwi Hidayat M.TI.', '504048', '42851479', 'aditya.adriansyah@oktaviani.name', '(+62) 655 8716 651', 'Umum', 'user', NULL, '$2y$10$hWrOfVPBC4INxeOOlvVcfejUm8eSMvwUSq5Oncj4LaC3O6UOcsahm', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(72, 'Himawan Panca Mandala', '905892', '56970971', 'warta.rajata@uwais.net', '0838 066 248', 'SDM', 'user', NULL, '$2y$10$EbmV.EigixVyqN7Dv8AMvuaO4kZsEXr.x.gsGjEK8uvyk7xLD7JcO', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(73, 'Eli Purnawati S.I.Kom', '574463', '22180506', 'oramadan@yahoo.co.id', '0724 8652 2235', 'SDM', 'user', NULL, '$2y$10$/lDMLKtweoDBqX0zBz6SreUfOVq8PIkoY4ZWQNpgcSCATrRVYfKju', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(74, 'Lukita Sitompul M.TI.', '678984', '61143756', 'bahuraksa20@mandala.my.id', '(+62) 968 7015 912', 'SDM', 'user', NULL, '$2y$10$rEGSUK.3J2IzvKOGhdDmgOkOtExOVW2YCbGR6b/Ar4SU2VaYCIP7W', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(75, 'Cakrawala Rahman Hardiansyah M.Kom.', '275640', '56912830', 'winarsih.mitra@prabowo.co', '(+62) 489 2580 040', 'Umum', 'user', NULL, '$2y$10$aJDEt0qAWwtaLhbumoLQU.aflo4UhVQx1g4wfoUXkKxCDaY7BGiLS', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(76, 'Nadia Riyanti S.Farm', '209432', '54935123', 'lukman.nugroho@gmail.co.id', '0763 7258 9456', 'SDM', 'user', NULL, '$2y$10$iiVd7lfvbY1AhRvHDKAFxOKdtq8Dh/jmNvGe6DyKatt3ojjTiC1I6', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(77, 'Ridwan Prayogo Megantara', '423911', '26813139', 'xprakasa@gmail.co.id', '0423 7458 4423', 'SDM', 'user', NULL, '$2y$10$pwuJUw3wI5XWsnZwihxFeOYSg0hAyh6rXicH8vvWc8Nq53iglAjUq', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(78, 'Paramita Laksita', '140995', '10136650', 'wfujiati@purnawati.or.id', '0992 2324 7824', 'Subauditor', 'user', NULL, '$2y$10$SW25DhSHJEjagEZtTH91..3adOtsMQwiHHJD8LghGVHZFBR3g6tvy', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(79, 'Danang Rajata', '827987', '58657110', 'wardaya30@gmail.com', '(+62) 957 2841 0694', 'Umum', 'user', NULL, '$2y$10$iCFE.BneU5hObwmkiWReNu77LcdcY0FP4ry.NoLcwOWJoMFhxZ3m2', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(80, 'Uchita Hartati', '784162', '55944055', 'budiyanto.kamila@yuliarti.my.id', '0342 7973 6383', 'Umum', 'user', NULL, '$2y$10$wyVZeLtHa2pxd/YFyr98kOMi4fpwfTImHeRQaDvt/uxfrZ6o0lcJ2', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(81, 'Dian Paulin Hassanah S.E.I', '186974', '17408119', 'zizi26@yahoo.co.id', '024 6930 909', 'Subauditor', 'user', NULL, '$2y$10$g3HF0gY2RKRyyWrfSQY2RO.pf59TaBb2AOlH8TJ3JNtq20QO7SZYS', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(82, 'Ganjaran Jatmiko Gunarto S.Farm', '363973', '39809646', 'zaryani@yahoo.com', '0861 7588 3160', 'Umum', 'user', NULL, '$2y$10$5fvHg7JMA/U1v17lv5nOteid7Tg/PpWj4Q2WZpyE3rcOwGPhl6OqC', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(83, 'Maya Elma Yuliarti S.Pt', '276527', '97947811', 'anom13@padmasari.desa.id', '(+62) 320 3558 081', 'Subauditor', 'user', NULL, '$2y$10$hZQ2G7IWnplM2x8Db5fKtu31jxt96XR.77ApT5ikIV9I7ubzzw7Z.', '2022-11-02 01:57:22', '2022-11-02 01:57:22'),
(84, 'Mahfud Samosir', '833247', '46093727', 'agustina.banawi@situmorang.org', '0534 2316 280', 'SDM', 'user', NULL, '$2y$10$5bOHg7qlRZjQvvHjcNAIY.6BZIrD3/Gy2P4nZSTSoevgoNtxI6VEu', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(85, 'Silvia Lailasari', '317017', '52881094', 'laksita.rahmi@maulana.biz.id', '020 1131 319', 'SDM', 'user', NULL, '$2y$10$bp9GWdFnxtGQTtxgmSmJY.6zb8L/eSGy6DUSH7romnOB2IxapPLEO', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(86, 'Zelaya Uyainah', '873630', '60737686', 'eja.hariyah@irawan.asia', '0841 865 555', 'SDM', 'user', NULL, '$2y$10$3Upr5LTK3HZ3NkleZrkLzeKn7MjrWPHV3voZDiWskTbmnSZ3dFHh6', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(87, 'Rahman Budiyanto', '954390', '64118550', 'juli.wijayanti@yahoo.com', '0843 7222 780', 'SDM', 'user', NULL, '$2y$10$y8.KImvhWTNcTKcMF7jpouMluCxrxHb/XFIIc1v6tz8zRx87SID6G', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(88, 'Gilang Warta Maryadi S.Farm', '886742', '60341273', 'hutapea.padma@kusmawati.biz', '0704 1086 5636', 'Umum', 'user', NULL, '$2y$10$bD0UIXSmVYHK0HMGeCYkHO/LxrPQPWRq8PKj7sSW6aXDmvZbMDm2G', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(89, 'Virman Uwais', '477699', '87954455', 'qkuswoyo@yahoo.co.id', '027 3511 764', 'Umum', 'user', NULL, '$2y$10$mdmn4C.E.M41rW6FmFC0HuQhS/5J905fM/mau6JHXN/sHqY8r.J/2', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(90, 'Titi Sudiati M.Pd', '734090', '82644811', 'wani.pertiwi@gmail.co.id', '0986 4275 103', 'Umum', 'user', NULL, '$2y$10$FgfxYZmOLAK7XYXHmvbgsObWQ95UpGZeMuIKHkdl7047NWRINZHEq', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(91, 'Najib Ardianto', '757659', '22140066', 'gamani82@yahoo.co.id', '0241 6533 6248', 'SDM', 'user', NULL, '$2y$10$MrdCgAPwGjICAz.NyagoIe/Xdlj0XvwprDmmuZ/60qfx4X7uS77F.', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(92, 'Jabal Firgantoro', '539670', '94311532', 'radika11@sirait.id', '0433 4381 378', 'SDM', 'user', NULL, '$2y$10$39S6c2nnMVx.T/a3mPtZQuyO/9Gg66DRHH5L1rGMr0AIxTH8v3f6.', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(93, 'Sabrina Widiastuti', '330160', '20881191', 'purwanti.queen@puspita.net', '(+62) 864 8524 519', 'Subauditor', 'user', NULL, '$2y$10$Wejct7v1zJTgtacPxyp17.M3o2hc5TYR4zYQsMdX6kZv6lNrpBBNC', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(94, 'Hani Rahmawati S.IP', '848798', '96877320', 'skuswandari@purwanti.asia', '0811 477 193', 'Subauditor', 'user', NULL, '$2y$10$2EJgokE//NGaGg5AYhV8hOcvdxkTL1nSs2Oo4seATR0imNlPFlqvO', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(95, 'Citra Wastuti', '765681', '74977687', 'sudiati.clara@anggraini.co.id', '(+62) 752 1432 4088', 'SDM', 'user', NULL, '$2y$10$986bIEfluebbASwK2ukp6eRkpe5prnivVJa1QJG6VI3yLzVyCr/ga', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(96, 'Gandewa Rajata', '269874', '57562941', 'cahyanto.yulianti@napitupulu.name', '0526 3989 6473', 'SDM', 'user', NULL, '$2y$10$I1hiYHTHC6COpiRbGuoAJuPK/VOr8uYnK38vCMvCqGlJNF8GX/3Bq', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(97, 'Amalia Hastuti', '393573', '24372187', 'yandriani@yahoo.co.id', '(+62) 336 0518 1225', 'Subauditor', 'user', NULL, '$2y$10$DlGL5OeOt0GkDZ9r5wpbY.pplFACTEi/rn10rEzN4OtQ9jXn6DEhm', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(98, 'Umi Uyainah', '255444', '33158265', 'lhidayat@adriansyah.co', '0590 3267 357', 'Subauditor', 'user', NULL, '$2y$10$FNK6fT0LGqgsYfqdyjopLOyXa0PLsyQrRjFkDHU2WwlCHYpRCMOMe', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(99, 'Jamal Jailani S.H.', '159058', '67035189', 'hana.kusmawati@gmail.com', '0690 6766 4343', 'Subauditor', 'user', NULL, '$2y$10$oz2WtEBjOhe5/RgfLCjT0Oa2g3JK7q6cLbrx/jxE4ckYhiHO/KS42', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(100, 'Bagiya Sidiq Pradipta M.Farm', '372620', '40576881', 'rsaefullah@yahoo.com', '0532 9978 9368', 'Subauditor', 'user', NULL, '$2y$10$o0U6M7E6xqvN2TRwmFJaPuRliVltqvHmlkdOOCMCrsTnrOcd4Xx9W', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(101, 'Jail Pranowo', '768492', '57175063', 'lkuswandari@gmail.co.id', '(+62) 244 1068 309', 'Subauditor', 'user', NULL, '$2y$10$gE0wHwVvXA9mumWvkWjq7uoPms1u7OlBU2VNGxMxgYjqvHFmOX1Hi', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(102, 'Lalita Halimah', '503850', '67857724', 'zsaragih@utami.or.id', '(+62) 602 0322 4874', 'Umum', 'user', NULL, '$2y$10$d7vf4kvr4qmoeltb2KfWMen8FfyS7.E40w/Bi4.AvJJJP9Ix7QyAS', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(103, 'Asman Candra Budiyanto M.Pd', '692270', '50252527', 'nurul16@yahoo.co.id', '(+62) 29 9951 8191', 'Subauditor', 'user', NULL, '$2y$10$fpTvfAADAH//x.3fn9e/pOtvvHekFApLYxmCy40hIMmQhV1Z/Vq32', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(104, 'Simon Rafi Maryadi', '218335', '48578939', 'narji.halim@yahoo.co.id', '0983 4892 4025', 'SDM', 'user', NULL, '$2y$10$wTfKk9Aa5FyEsC2rrioodeMWAlr/YXjsiEMQCdeezQu6AwUNsoT.K', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(105, 'Karimah Bella Agustina S.Pd', '193512', '12440862', 'andriani.dalima@nurdiyanti.info', '(+62) 869 7483 790', 'SDM', 'user', NULL, '$2y$10$CbIfoEub8e1Cf1EmNZjUAe0X7KlmnQw4IKQHF0v4udJz974I9TTqi', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(106, 'Michelle Farida', '228787', '37559042', 'saiful18@prasasta.asia', '0906 2643 8738', 'Umum', 'user', NULL, '$2y$10$cuOXME.E4ITaHWC1IxwViucpmGZ8MWC9aU0R8anP3cBqL/a5TrALa', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(107, 'Zulfa Melani S.Ked', '199406', '63225043', 'ridwan.wijayanti@gmail.com', '0805 987 509', 'Umum', 'user', NULL, '$2y$10$MtnU1hCyi3gnr2Yd.kyMFueBxbi4ddjDXjP4ac2WWVHbU8wSQ60o.', '2022-11-02 01:57:23', '2022-11-02 01:57:23'),
(108, 'Gamani Hakim', '579742', '41381751', 'maryati.jane@handayani.com', '0436 0944 6860', 'Umum', 'user', NULL, '$2y$10$e3C.WJBRjt8gXqkRPGTePu4aVMBhIjYeFBiDR6FkV56ZMxb4JONVq', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(109, 'Farhunnisa Suartini S.Pd', '258730', '94608628', 'zaenab69@kurniawan.or.id', '(+62) 677 3181 8580', 'SDM', 'user', NULL, '$2y$10$IGzQ/Oqq/yl4sPn.SMrWxuIC6hUoMXs6Zs1DE4SULtWP7/2rSWlXS', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(110, 'Cinthia Nasyiah S.E.I', '788833', '97313644', 'siska51@gmail.co.id', '(+62) 785 8821 7006', 'SDM', 'user', NULL, '$2y$10$pm4xtb596cmQyKqAbBH94OU5lgUajB7rsLfVkX2ejzRSCE.Zle3RG', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(111, 'Prayoga Purwanto Maryadi', '749653', '62945906', 'salimah42@pranowo.name', '027 4613 236', 'SDM', 'user', NULL, '$2y$10$Gk/90R7t1iHv6dbsHZs/nOU4KutA5nNW5f5qpNLz0bwiriObRKjK2', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(112, 'Elvina Ulya Winarsih S.E.', '457591', '31996660', 'puspasari.lala@yahoo.co.id', '0609 2418 572', 'Umum', 'user', NULL, '$2y$10$Bn/0d4ntCi9q.KK2xEYOr.YfCHedPHDmXaYBXCveGde8GNjGRUXrS', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(113, 'Tasdik Sitompul S.Psi', '723652', '80569119', 'gina76@marpaung.mil.id', '(+62) 20 2577 917', 'SDM', 'user', NULL, '$2y$10$Fx4VReayF6KIMBGEk960z.0c5sGKCZS7NlenCDeKG4BZeY1M4dTQS', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(114, 'Muni Cahyadi Wasita', '688695', '41283698', 'kezia.wibisono@saragih.biz', '0668 8656 337', 'SDM', 'user', NULL, '$2y$10$j1lB0LcxwAEfNanTo7kMbOuiZIofr3uzwRT/zBhCEthl7WbRukwqa', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(115, 'Karsa Maulana M.Farm', '589188', '87759617', 'rangga.najmudin@purwanti.sch.id', '0612 0429 122', 'SDM', 'user', NULL, '$2y$10$QHD9W.ikmsXVA1pERavRkemrDYvmqqb3xL9kMcrUgp8LHurY5SVn.', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(116, 'Mala Kuswandari', '970875', '98703937', 'rudi09@nurdiyanti.com', '(+62) 337 1647 0363', 'Umum', 'user', NULL, '$2y$10$mg4o4PWaVHymtVhCEg5HsOcACGpgKpuiYrkUMiANe.kcJ5NmzcJ8.', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(117, 'Almira Pratiwi', '375102', '76922371', 'jarwa75@yahoo.com', '0688 5442 040', 'SDM', 'user', NULL, '$2y$10$.buGgCfHcuRGeNZPHj5lfOvLh8Rgw3YNIMBYj0pg2NwV.64e1pmqm', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(118, 'Bahuwirya Yusuf Wibowo', '261424', '90869918', 'mahendra.heru@pradana.net', '(+62) 354 6308 9672', 'Subauditor', 'user', NULL, '$2y$10$oj.4VACcbMZVxWPBYGUXve3iuhXxFR2ZMdoVfDs0Y11iEcJUaIBc.', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(119, 'Septi Jamalia Usamah M.Pd', '279817', '73058399', 'siti.kuswoyo@usada.co', '0674 6918 7639', 'Umum', 'user', NULL, '$2y$10$0Owcx1nmz8XrRkJCvAYtF.zsIXpkfhRZlEhcFnQpiUw6KgrVPTFOm', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(120, 'Raisa Rahayu S.Pd', '690129', '35111293', 'maryati.harsana@yahoo.com', '(+62) 817 2680 6824', 'SDM', 'user', NULL, '$2y$10$zcum2C9g3.tPV7s1J4zNmugedQJu1JgkyNmkBH2bhM3GpnKJ9EpM.', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(121, 'Ciaobella Prastuti', '425418', '54837622', 'unjani.mandasari@yahoo.co.id', '0366 7473 2299', 'Umum', 'user', NULL, '$2y$10$r/7Lqw0cEATmQBrSQZn33O4y7WtcvE6.a.EQfA1pKMfsP2JqwH.qi', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(122, 'Olivia Suryatmi', '795701', '22340507', 'irma82@gmail.com', '0530 4646 828', 'SDM', 'user', NULL, '$2y$10$/K9Ykg07CE/vHTyszzAfLebRgVRH4Nbk1n2mQiTHYZD5opZV2xePm', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(123, 'Gatra Firmansyah S.Ked', '957475', '93321519', 'wibowo.wakiman@gmail.com', '(+62) 931 7364 8423', 'SDM', 'user', NULL, '$2y$10$LgWSYJfyMJqqIqZGjanb4eeLsDo1fwYQBRAnPQMt.sAzxy0gKDV4e', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(124, 'Gasti Novitasari', '917448', '44036134', 'kayla.natsir@hasanah.id', '(+62) 518 1700 9154', 'Umum', 'user', NULL, '$2y$10$8zO69DlUTJMkEvOCGQyDnedTwL4Yyeos4jv8qxo1LduKcBALDtCSa', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(125, 'Ira Laksita', '509894', '28558197', 'reza15@gmail.com', '(+62) 600 6347 305', 'Subauditor', 'user', NULL, '$2y$10$SFhOas2UWr6XoRhsvXpQgucBoqYq6.82ohvHQe5cOaTvTP42nbF/K', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(126, 'Vinsen Sidiq Utama S.IP', '319559', '74433801', 'kurnia.safitri@yahoo.com', '(+62) 710 5428 7039', 'Subauditor', 'user', NULL, '$2y$10$VL8R8vQbHBi..JZh6G1mXefz4abJfPD94CoGdUHmTAk4HILyIE2ja', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(127, 'Rosman Lazuardi', '325304', '90890714', 'pjanuar@astuti.biz', '0234 0913 134', 'SDM', 'user', NULL, '$2y$10$M4Fo5St3DNMcZ2ER7I2gfOvTZxGVqEkatkFR53lRK124LwLnowZkO', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(128, 'Eli Ana Winarsih M.Kom.', '791096', '89065335', 'xwidiastuti@yahoo.co.id', '(+62) 905 4710 4444', 'Subauditor', 'user', NULL, '$2y$10$1yN26t8xYLXIZcXql6Kjmu0mZka5Ykt5WeGccRwpb3C6e5OVlYOtK', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(129, 'Gamani Purwa Wijaya S.Sos', '101448', '30566114', 'kuswandari.iriana@yahoo.com', '0332 0327 334', 'Subauditor', 'user', NULL, '$2y$10$uL4/KaTvYXnDPOPrHjRtp.RVxiSC71jIwbx9UNatMnNwfDzeNbSvW', '2022-11-02 01:57:24', '2022-11-02 01:57:24'),
(130, 'Utama Wacana', '336450', '48763413', 'vhidayanto@yahoo.com', '(+62) 461 1159 445', 'Subauditor', 'user', NULL, '$2y$10$uYBgNfsOSkTXV2BIEcDXJOTwvAhldrpYUAQ/hJabU5nH152p2doi.', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(131, 'Anita Halima Yuniar S.E.I', '530264', '16746241', 'glailasari@saragih.tv', '0554 0346 510', 'Subauditor', 'user', NULL, '$2y$10$Lf.AZDASc5SFffAh9kBX..6tzYr963CjTVeiib3RF9KDfDIyszvxa', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(132, 'Dartono Maryadi S.IP', '932737', '87135088', 'twidiastuti@yahoo.com', '(+62) 300 0466 095', 'Umum', 'user', NULL, '$2y$10$wXcl80/PjaHU3lnSM82PUOinnrYCfpMWj6FI.DaAWaincky8KzltO', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(133, 'Vivi Gina Rahmawati', '453468', '29171642', 'mardhiyah.yosef@utami.name', '0844 391 274', 'SDM', 'user', NULL, '$2y$10$Ehswl.ZPduWpa.tjJjJQweIAYnQF5N6/rFVgDzR1zD7MsWVgaz3Jy', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(134, 'Hilda Aryani', '697261', '67065809', 'candrakanta51@hariyah.info', '0576 6239 3721', 'Umum', 'user', NULL, '$2y$10$l1BNh5PoCFacBnqaIh.LIeVXPH0uS0fHe6PRjHFBVEKt8wqn4MGEy', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(135, 'Jono Nashiruddin', '782608', '29894373', 'janet.nasyiah@kusmawati.my.id', '0861 6587 0580', 'SDM', 'user', NULL, '$2y$10$SSNwbrKM2wPc/H1eYC2r4.7jd1ORQMwJyNwgRldbzI50cnptxXCP.', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(136, 'Jamil Hutagalung', '442752', '71800967', 'titin.safitri@maryadi.desa.id', '(+62) 985 0494 7198', 'Umum', 'user', NULL, '$2y$10$5yymyv1sS4uh2FiAX3AoS.y0c2JjPxEHVpQgKaYnr9GJrXvfb.Rz6', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(137, 'Mahesa Gaiman Sitompul S.Pd', '539986', '54418289', 'ani.halim@gmail.co.id', '(+62) 22 3226 1958', 'Subauditor', 'user', NULL, '$2y$10$smyPq6N8YVsXfEfHouS5RuanK0Jh5tcRtcMo0qqT2wa5R9jEAzQgu', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(138, 'Fitria Hani Permata S.Gz', '406198', '29379270', 'gharyanti@permadi.ac.id', '(+62) 23 1877 1222', 'Subauditor', 'user', NULL, '$2y$10$Yi1E9VqAk/OTERrYS8Oc2.pB8BY3f1wI579rYqu/zP3vQeSg6x/v6', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(139, 'Balapati Winarno S.Kom', '925463', '62267078', 'hutapea.farah@laksita.org', '(+62) 627 4632 5274', 'Umum', 'user', NULL, '$2y$10$BWYOU2Z27Vg2oKmWYMyY8OgjeZp60TJ2wWFZdA.3TacLXb6wbe1gu', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(140, 'Yono Mursita Permadi S.Farm', '886923', '68642124', 'usada.umay@gmail.co.id', '0542 3814 786', 'Umum', 'user', NULL, '$2y$10$U/0G9eJAjbtY609NusMRfeoZQlpEFbJKMjYtJLqHD0zB7qoFodtDm', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(141, 'Budi Widodo', '376899', '28611243', 'jkusmawati@agustina.web.id', '0779 4049 6751', 'Umum', 'user', NULL, '$2y$10$2iqj15W97TgoTe0LMQ7nkuc33ZgG70ZNYQB30uwrahgIFGo42759G', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(142, 'Cakrawangsa Waskita', '937554', '78906450', 'artawan06@napitupulu.biz.id', '026 3559 732', 'Subauditor', 'user', NULL, '$2y$10$L7PMceulZi5jBNzHwf8pMuPJyun8cELG/T0ZfQn8M8Bu9br.iPd6e', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(143, 'Karta Suwarno M.Ak', '118927', '69346379', 'wasita.kezia@yahoo.com', '0919 0573 3934', 'SDM', 'user', NULL, '$2y$10$9iCxvG.0ltdJs.0U3NLFT.OmwL78TgJZ.VQ2bB5S4OAxa5/P29cc.', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(144, 'Aisyah Elisa Zulaika S.IP', '525139', '67801756', 'novitasari.ida@gmail.com', '0777 0844 0629', 'Subauditor', 'user', NULL, '$2y$10$LvZFF6WHYu.5eexYo7hVUuDKsCIztciQS8IwrBLpv2PiPePbK7rne', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(145, 'Kasim Jefri Prasetyo', '918284', '52021476', 'patricia.budiyanto@simanjuntak.desa.id', '0534 9069 6347', 'SDM', 'user', NULL, '$2y$10$k/SYPc9jem218geavzSk4e/q8FelhZSdphYqy/nUBfu4ZOPvV2I2a', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(146, 'Raharja Eluh Pranowo S.Gz', '741440', '18051103', 'damu07@suartini.asia', '0545 4627 7328', 'Umum', 'user', NULL, '$2y$10$.NHIxvEdaNFTU36ny0.Hk.bkNygtjCv1.8f4wXz4p4LLBngDLODyi', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(147, 'Sabar Bakti Ardianto', '815969', '44240659', 'nthamrin@wasita.in', '(+62) 841 9776 5551', 'SDM', 'user', NULL, '$2y$10$LbJ1L2rCOOXRppsmq70d/upprM1RQprcAYFNEB0qoFVotPsmEkeUW', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(148, 'Salman Jaeman Maheswara S.I.Kom', '771823', '44535453', 'ipuspasari@prastuti.desa.id', '(+62) 975 6903 519', 'Subauditor', 'user', NULL, '$2y$10$99TTDJ.QJMHiKwS6Suf0HeqIn4.ZwEQ0bPdZBXGBwj1Ci5xDIHwc6', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(149, 'Saiful Budiman M.Ak', '241977', '34592258', 'permata.julia@laksita.go.id', '0673 3130 208', 'Umum', 'user', NULL, '$2y$10$SoxNZKZ85JEbBNV8KmbRT.1tPfYSKxgdT6QlXQ4m.PAXWLJRoPPq.', '2022-11-02 01:57:25', '2022-11-02 01:57:25'),
(150, 'Sabri Maman Wibowo M.M.', '607361', '23943372', 'tsafitri@widiastuti.com', '0968 4612 6211', 'SDM', 'user', NULL, '$2y$10$dlFDbhMoayzqXhUoQfqEc.9JZfFAnJfHOn9gYzkzRjKYACuB2MOUG', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(151, 'Yuni Permata S.Ked', '866963', '35780552', 'ewinarsih@pratiwi.org', '0392 4932 800', 'Umum', 'user', NULL, '$2y$10$GNScLoJC9bVwMiEbSUu7SuYbusDjuiPHK7l0syAhjrJyJszLaKbWu', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(152, 'Salwa Purwanti', '783816', '32196147', 'ulva91@widodo.my.id', '0556 4533 956', 'Umum', 'user', NULL, '$2y$10$LDFfkk.h1wDEIpxz8MH2c.Y5aDV1rT2PDWQ8tt9DvqGsCjhRSspuW', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(153, 'Erik Tamba', '978133', '82464444', 'syahrini65@hakim.info', '(+62) 610 3809 574', 'SDM', 'user', NULL, '$2y$10$xl.qnqwx2lUWTPf0.qVbLuQiQ5fX5ADONNOzU5jREHFnEWNqxMGCG', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(154, 'Laras Mulyani S.E.I', '794352', '56363910', 'rafi.lailasari@yahoo.co.id', '(+62) 794 4256 0829', 'Umum', 'user', NULL, '$2y$10$NAvZw2aSETFaEMYKKHY9ZeVmwx0GM9ISobKPuPKRGekYn2nFAz2oO', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(155, 'Suci Uyainah', '728209', '58972277', 'tami83@yahoo.com', '0359 0674 621', 'SDM', 'user', NULL, '$2y$10$X7ye07oW7FEyC0G2Mj0ATekpcMJpnLk7oW/g/wLJCRai/Vvo7SSyu', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(156, 'Oman Mahendra', '131077', '43089110', 'kenari.anggraini@gmail.com', '0341 5946 536', 'Subauditor', 'user', NULL, '$2y$10$beGWUQy/E0inOCHMwgOmmOBLNVolLO6VF2Z.dW.5u6qFIpvpiEu7.', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(157, 'Lili Restu Hastuti', '332695', '57534504', 'tirta.hutagalung@yahoo.co.id', '(+62) 327 4321 869', 'SDM', 'user', NULL, '$2y$10$h15V421HHS5yjd.fwCTlY.QFQ3h1TERG3ECyUbff10ji.S2WwtQ9K', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(158, 'Cakrawala Warji Januar S.Psi', '396920', '92279237', 'cemeti.firmansyah@yahoo.com', '(+62) 26 6655 4168', 'SDM', 'user', NULL, '$2y$10$roS4w3eKC2lN5bqsCsJaduSfxSoD29eGsdy2IlJokUlZRUDsk2Iva', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(159, 'Saadat Adhiarja Siregar', '537609', '22816012', 'zpalastri@wastuti.biz.id', '(+62) 869 2641 877', 'Umum', 'user', NULL, '$2y$10$dbhUPzvkFz2JOKO7TxhzV.Q.C1O8mrbxqwAfalLhqMMvixJz1I/vu', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(160, 'Pranata Hartaka Mahendra S.Gz', '364353', '51475971', 'usada.siska@dongoran.asia', '(+62) 23 5006 055', 'SDM', 'user', NULL, '$2y$10$rVKySaPJW5bvO6nEUtR9oeKGsWzeLjduYqUPOLmooaje5sb5CvaMa', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(161, 'Nyoman Permadi', '897642', '14490072', 'kuswoyo.kayla@yuniar.id', '0721 4492 002', 'Subauditor', 'user', NULL, '$2y$10$HaJ40eb/hmXixduVcvPDAeMT3gVhTeA7Uu8lX6xcuqmRBHHYdVyxm', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(162, 'Rachel Usada', '246454', '23673220', 'puspita.shania@yahoo.co.id', '(+62) 511 6314 8042', 'SDM', 'user', NULL, '$2y$10$9VefJ35kYdWCuAux7Z2OZ.YPQienp8rcSlkhUvu/0GKKU9aiv7Hvm', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(163, 'Unjani Iriana Novitasari S.Psi', '258215', '47903209', 'vera.maryadi@yahoo.com', '0509 3226 739', 'Subauditor', 'user', NULL, '$2y$10$wez67j3E4fWFuLVUJLLAR.9dMrV1K/skFQ7YOYvKEyY.AxCW3jKJm', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(164, 'Lili Halimah', '332996', '28386064', 'tantri.rahayu@yahoo.com', '(+62) 544 9559 978', 'Umum', 'user', NULL, '$2y$10$DIkHTQgBJaXPGFWJoQSYy.M44KbL45xHSBPtzHN6ZE8lIMstNgtYm', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(165, 'Atma Iswahyudi', '260604', '35589649', 'vuwais@gmail.co.id', '(+62) 602 8748 639', 'Subauditor', 'user', NULL, '$2y$10$f4M6QpbaDLAvv3cxdJofY.2oqIenN/320v6xEeB84D6jx71xDL20u', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(166, 'Makara Galih Permadi M.TI.', '966079', '94806954', 'pardianto@gmail.com', '(+62) 245 1967 495', 'Subauditor', 'user', NULL, '$2y$10$2cCcPuHrgd1vzg6SFPS65On0SLOxuU4v/CYmQigGQvf6wes0R4eSS', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(167, 'Alambana Mansur', '660617', '48451022', 'jessica.santoso@kuswandari.net', '0412 0947 2376', 'Subauditor', 'user', NULL, '$2y$10$4qDMEvw7wO9ABTan2mBmNONFuIItaKShfvKa0oSkqOY4uZUrOxgzS', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(168, 'Sari Novitasari', '119361', '28124797', 'bmanullang@gmail.co.id', '(+62) 844 5756 550', 'SDM', 'user', NULL, '$2y$10$rs7.WZcq08DLp75agcPb4e.ftM/SFa9S9tH16rpgf/.a4bv/y6Sv6', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(169, 'Tugiman Kala Wibowo', '242791', '25513140', 'dalima85@saptono.co.id', '0833 0434 887', 'Umum', 'user', NULL, '$2y$10$4V1jz8SLMgzkp4EPR76oTee6OYddqje0r6pCbUVd6lHhS0CKp53QC', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(170, 'Lega Wibowo', '498716', '76723033', 'nasim89@gmail.co.id', '0733 0682 1336', 'Umum', 'user', NULL, '$2y$10$4SuDMgDTd4hqUNY.GTk9xOD5NS8wt3p22E5nG5ixZJdkK10LBvNPO', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(171, 'Karja Suryono', '359979', '18539115', 'rahayu.zulfa@budiman.desa.id', '0840 887 932', 'Subauditor', 'user', NULL, '$2y$10$IcqcgOKxXGQJ1I4ag7/.lupNT0R49sdZBnvdPFi8rERK/N36ZqGGa', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(172, 'Lurhur Jailani S.Pd', '115124', '79629197', 'xanana56@yahoo.com', '0205 1041 163', 'SDM', 'user', NULL, '$2y$10$x62c8EHPgAzCOlK2uERUeOuiFe7Wnva5hkZoOzAxSa1PHHRzsKPIm', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(173, 'Purwa Gunarto S.Kom', '258897', '75391692', 'lintang93@yahoo.co.id', '(+62) 663 7973 614', 'SDM', 'user', NULL, '$2y$10$IajpEOWgK9Qn4f/HriM3Qu6FOmuDl6.WMQRN7n17r0JzCCub/d7xG', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(174, 'Zalindra Puspita', '980015', '55272090', 'oliva.yuniar@gmail.co.id', '0882 999 649', 'SDM', 'user', NULL, '$2y$10$e3IpKebGcRZNvj9u4/IxuOsNiXnzylvjzu.NNSAGo7E/8BK1Xm8VO', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(175, 'Cayadi Samosir', '702004', '79139186', 'danang36@prakasa.org', '0868 357 882', 'Subauditor', 'user', NULL, '$2y$10$0AO81CmgfmJ555iTvhkKu..kAoYmGDJC9qsarnphWOwqmwBXK9HGe', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(176, 'Enteng Pradana', '176230', '43323393', 'prasetyo.wirda@winarsih.mil.id', '(+62) 976 9058 8693', 'Subauditor', 'user', NULL, '$2y$10$WSEZF4c/QOKK6Vi3vsOfTe0oj7TQJ/wtOPHVrvYEu6j/45qNsfOuW', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(177, 'Alika Sadina Wulandari', '810744', '29827288', 'ilsa.anggraini@gmail.com', '0439 5620 756', 'Umum', 'user', NULL, '$2y$10$MjW.OqMjmmDk/eYvXcS4ku5vsvlBsKtF.IXeY2Hja9WwzqzZCbwGu', '2022-11-02 01:57:26', '2022-11-02 01:57:26'),
(178, 'Tomi Asmianto Wasita', '577117', '57786418', 'nasyiah.eko@yahoo.co.id', '0692 5232 5438', 'Umum', 'user', NULL, '$2y$10$chsLIV.otIzCbEtwhMYTlO54F/LTnATDmpVdsb3g7UamsFl1VZ5Au', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(179, 'Vero Ajimat Gunarto', '740411', '24996132', 'mansur.aurora@yahoo.com', '(+62) 777 2458 7864', 'SDM', 'user', NULL, '$2y$10$9jZxl3gmj.rJkR6o5ZU6ZuG5voP8SCPlMM4vniDoLT0reXTToa562', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(180, 'Abyasa Suryono', '239482', '94095750', 'palastri.banawa@ardianto.tv', '0436 2841 463', 'SDM', 'user', NULL, '$2y$10$bsRt7D33gqH5jDxQqGKjje3hBQwPczvce9iND459D8cXCKRf65WcO', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(181, 'Oliva Palastri', '826678', '42620471', 'zizi.kusumo@prasetya.org', '0971 6935 200', 'Umum', 'user', NULL, '$2y$10$adcOAGkqkXQyuulpiWlhuO7hrLV5xplR9rn3Xrh0soubET6LMY8jK', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(182, 'Galar Opung Tampubolon M.Kom.', '588581', '88205217', 'astuti.endah@susanti.co.id', '(+62) 244 7366 710', 'Subauditor', 'user', NULL, '$2y$10$lAId77W.BDUeHTkav7bDJuryTOFRahli8xIvWbSJ0N6oPL3I2AIBG', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(183, 'Langgeng Yoga Napitupulu S.Sos', '142214', '76380617', 'diana.zulaika@haryanti.sch.id', '0970 8319 3319', 'Umum', 'user', NULL, '$2y$10$J7prXCW/AZH.xBL2igIc2O.lqWC5tp2UTPM3Rqb4VWVYyLn9VVQnG', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(184, 'Titi Maryati S.Psi', '728146', '87335905', 'artanto56@gmail.co.id', '0527 5244 6680', 'SDM', 'user', NULL, '$2y$10$2RNpQJYAA05T67od5mhpA.EZH8WLPRNwl8ogB20x8dmnXQ/b.Zcfe', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(185, 'Chandra Lazuardi', '802446', '42241302', 'daliono.lailasari@yahoo.co.id', '(+62) 603 1442 6718', 'SDM', 'user', NULL, '$2y$10$.1kbWiUfR4fhXO.sMtrADOfGauLhIX6BIk1HsRr/01m0FdIYC7cDK', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(186, 'Yunita Agnes Rahimah', '758226', '42558636', 'andriani.irnanto@gmail.co.id', '0760 8666 449', 'Subauditor', 'user', NULL, '$2y$10$a7YSdFVJknbelo8FDqQFAOb3LrVIz3SdbsNWIz1yt5c42DqKrNPKu', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(187, 'Kartika Usada', '685136', '59720263', 'tami67@kusmawati.sch.id', '(+62) 453 1883 567', 'Umum', 'user', NULL, '$2y$10$FnojkKqgmN.TCi.yzi./5eUZXY35nORuq4U7mqZZXLnRXnMAegEia', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(188, 'Raden Suwarno S.Pt', '483564', '45706384', 'dian.suryono@gmail.com', '0755 5724 101', 'Subauditor', 'user', NULL, '$2y$10$OwjItNBLLzbQme/GpzIlnOq92pA8jtDCfvJZ/iy3sbe9Y8TAgtRFa', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(189, 'Almira Mulyani', '638717', '41509225', 'karja99@gmail.co.id', '0403 5060 882', 'Subauditor', 'user', NULL, '$2y$10$j1mlpO.WrhaqJyvuiWXRxeNp6xqEE8Vpk8BaPWxxY5k.TjwqtDCMi', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(190, 'Unjani Wijayanti', '102115', '98517985', 'radit49@susanti.org', '0880 1807 906', 'Umum', 'user', NULL, '$2y$10$4ajrB739ze6kf7cutZ8sTuAohll42QflFOlCsnCZLdmK7yagJtoc2', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(191, 'Ghaliyati Wulandari', '990536', '99702413', 'widya.hutasoit@suryono.com', '0419 6546 8529', 'SDM', 'user', NULL, '$2y$10$n0qGH2JWo4WVYzZD2ZJwNema6m5y7UB1S/KUyBo1IZtjqFSn9dtEW', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(192, 'Ganda Leo Sinaga', '660348', '55355497', 'jati55@gmail.co.id', '024 9762 1503', 'SDM', 'user', NULL, '$2y$10$x7nQKucO/lGsO2gcZQ0IBe6v2..iNC7JBMcR9LOLLKG0G8S5OGtXC', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(193, 'Yance Rahayu', '897936', '97074632', 'rusman59@yahoo.co.id', '0556 9022 138', 'SDM', 'user', NULL, '$2y$10$w8/H0dh8thgeJUlhXrv3ZOJtVGHUu23jpx8IwDluT970nubpmbLni', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(194, 'Ika Uyainah', '970891', '82603251', 'umi.agustina@mandala.go.id', '(+62) 622 8893 2740', 'Subauditor', 'user', NULL, '$2y$10$VVt.KZKwDqCZHzwiYEc38O5XEHCPyPlyNASDUuXD4eUOb1RvEuuwi', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(195, 'Restu Usamah', '556385', '11613871', 'wnugroho@hutapea.mil.id', '0880 1300 3520', 'Umum', 'user', NULL, '$2y$10$oc.I.emvPR7Z2lYQBwNdPuX7ZN97KHqW52yQcVaevWFc4jIM29F5i', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(196, 'Gilda Lalita Nasyidah S.Pd', '837956', '85947642', 'wmanullang@sitorus.sch.id', '0706 5689 355', 'Umum', 'user', NULL, '$2y$10$4rFw7XjfpdSM1/SdT/eFiuEZxtTmpyglxaNOiahEW3MEhKC8C7NiG', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(197, 'Dipa Hakim S.IP', '744674', '26811992', 'rpuspita@yahoo.co.id', '(+62) 803 5611 494', 'Subauditor', 'user', NULL, '$2y$10$mpFtqBPo8DFly4c0JUiLZu1DdD.3vrlwFkx7ZHRi3Ibkfh.83MKAC', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(198, 'Hasan Manullang S.Farm', '508341', '24556152', 'opuspita@yahoo.co.id', '(+62) 832 1884 095', 'SDM', 'user', NULL, '$2y$10$E7Ppt50PnfFhVbbwae24kuWhaYHrvZL1851NvnC5XcrrIMLDvvPhG', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(199, 'Slamet Karsa Tampubolon M.Kom.', '396590', '83035749', 'unggul.anggraini@firmansyah.com', '(+62) 630 9452 918', 'SDM', 'user', NULL, '$2y$10$VQRDgSfiM3CJUbQ98dVexuN9gbg637j93faXhLcGhPykZftzObj3G', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(200, 'Reksa Siregar', '407578', '95568717', 'natalia.pertiwi@yahoo.com', '0601 3670 123', 'Subauditor', 'user', NULL, '$2y$10$ZT3y4pGLwgdUuVOme4Vwt.djsnB/Qne5nXBwET6Qia2Zxl6tjRUlq', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(201, 'Jamalia Ratih Melani', '127205', '81922278', 'gasti.sitompul@yahoo.com', '0841 551 161', 'SDM', 'user', NULL, '$2y$10$UW5cyjaT0r647e.rJBNMEemi7YXdLIoBbh47CMqwVj/76WlKcs.ve', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(202, 'Halim Galiono Wibisono S.E.', '274789', '68585505', 'almira73@yahoo.co.id', '(+62) 245 3507 645', 'SDM', 'user', NULL, '$2y$10$J2hXgkiQ93wEVRXW9/njxOJ14aEBGwF2NlI8oB/H9OAO.fPPLEUR6', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(203, 'Ina Sudiati', '324681', '92665155', 'erik90@hardiansyah.in', '0852 144 395', 'Subauditor', 'user', NULL, '$2y$10$LdLUeWfsLb6cSMSsRxAVZeC0UPu7qBTb4osKH820.c4bW3wt.rnSW', '2022-11-02 01:57:27', '2022-11-02 01:57:27'),
(206, 'Yolanda Richards', 'Ea vitae ea expedita', 'Accusantium qui arch', 'sadeqemy@mailinator.com', '123212131232', 'Kepala Perwakilan', 'Super Admin', NULL, NULL, '2023-01-09 08:01:02', '2023-01-09 08:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `additional_positions`
--

CREATE TABLE `additional_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `additional_positions_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_classcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_acq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_nup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_updatedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_isavailable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_number`, `book_title`, `book_firstname`, `book_lastname`, `book_author`, `book_publisher`, `book_city`, `book_year`, `book_isbn`, `book_class`, `book_subject`, `book_classcode`, `book_acq`, `book_location`, `book_nup`, `book_brand`, `book_image`, `book_createdby`, `book_updatedby`, `book_isavailable`, `created_at`, `updated_at`) VALUES
(1236, 'KUPKBPK-KB-0001', 'Hukum Keuangan Negara', 'Nizam', 'Burhanuddin', 'Burhanuddin, Burhanuddin', 'Total Media', 'Yogyakarta', '2015', '9786021960120', '336', 'Keuangan Negara', '336 BUR h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1237, 'KUPKBPK-KB-0002', 'BPK dalam Sistem Ketatanegaraan', 'Baharuddin ', 'Aritonang', 'Aritonang, Aritonang', 'Kepustakaan Populer Gramedia', 'Jakarta', '2019', '9786024243593', '336', 'Keuangan Negara', '336 ARI b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1238, 'KUPKBPK-KB-0004', 'Badan Pemeriksa Keuangan dalam Penyelenggaraan Negara yang Bersih dan Baik', 'Baharuddin ', 'Aritonang', 'Aritonang, Aritonang', 'Pustaka Pergaulan', 'Jakarta', '2017', '9789791551878', '336', 'Keuangan Negara', '336 ARI b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1239, 'KUPKBPK-KB-0005', 'Kumpulan Peraturan Badan Pemeriksa Keuangan Republik Indonesia', 'BPK RI', NULL, 'BPK RI', 'BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK k', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1240, 'KUPKBPK-KB-0006', 'Pengelolaan Keuangan Pemerintah Desa', 'BPK RI', NULL, 'BPK RI', 'BPK', 'Jakarta', '2015', NULL, '336', 'keuangan daerah', '336 BPK p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1241, 'KUPKBPK-KB-0007', 'Sistem Pengawasan Keuangan Negara di Indonesia', 'BPK RI', NULL, 'BPK RI', 'Pusaka Negara', 'Jakarta', '2015', NULL, '336', 'Keuangan Negara', '336 AKB s', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1242, 'KUPKBPK-KB-0008', 'Standar Akuntansi Keuangan', 'IAI', NULL, 'IAI', 'IAI', 'Jakarta', '2016', '9789799020604', '657', 'Akuntansi', '657 IAI s', 'Hibah', 'Koleksi Khusus Reading Corner', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1243, 'KUPKBPK-KB-0009', 'Ikhtisar Hasil Pemeriksaan II Tahun 2017', 'BPK RI', NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2017', NULL, '336', 'Keuangan Negara', '336 BPK i', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1244, 'KUPKBPK-KB-0010', 'Sejarah Korupsi di Indonesia', 'Subur', 'Sukrisno', 'Sukrisno, Subur', 'IPB Press', 'Bogor', '2017', '9786024400873', '364', 'Korupsi', '364 SUK s', 'Hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1245, 'KUPKBPK-KB-0011', 'Manajemen Perpustakaan Profesional ', 'Hartono', NULL, 'Hartono', 'Sagung Seto', 'Jakarta', '2016', '9786022710769', '658', 'Manajemen', '658 HAR m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1246, 'KUPKBPK-KB-0012', 'Corruption The Devil', 'Haryono', 'Umar', 'Umar, Haryono', 'Universitas Trisakti', 'Jakarta', '2016', '9786029463651', '364', 'Korupsi', '364 UMA c', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1247, 'KUPKBPK-KB-0013', 'Public Relations, Issue Crisis Management', 'Rachmat', 'Kriyantono', 'Kriyantono, Rachmat', 'Prenadamedia Group', 'Jakarta', '2015', '9786021186633', '659.2', 'Public Relations', '659.2 KRI p', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1248, 'KUPKBPK-KB-0014', 'Quantum Speed Reading:', 'Irwan', 'Widiatmoko', 'Widiatmoko, Irwan', NULL, NULL, NULL, NULL, '001.42', 'Penelitian', '001.42 WID q', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1249, 'KUPKBPK-KB-0015', 'Ikhtisar Hasil Pemeriksaan I Tahun 2018', 'BPK RI', NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2018', NULL, '336', 'Keuangan Negara', '336 BPK i', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1250, 'KUPKBPK-KB-0016', 'Jurnal Tata Kelola Akuntabilitas Keuangan Negara', 'BPK RI', NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2018', NULL, '336', 'Keuangan Negara', '336 BPK j', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1251, 'KUPKBPK-KB-0017', 'Undang-undang Republik Indonesia No. 15 Tahun 2006 tentang Badan Pemeriksa Keuangan', 'Tim Penerbit Pustaka Pergaulan', NULL, 'BPK RI', 'Pustaka Pergaulan', 'Jakarta', '2006', NULL, '336', 'Keuangan Negara', '336 TIM u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1252, 'KUPKBPK-KB-0018', 'Undang-undang Keuangan Negara (Dalam Satu Paket)', 'Baharuddin', 'Aritonang', 'Aritonang, Baharuddin', 'Pustaka Pergaulan', 'Jakarta', '2007', '9789799801142', '336', 'Keuangan Negara', '336 ARI u', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1253, 'KUPKBPK-KB-0019', 'Bunga Rampai Studi Kasus Akuntansi Pemerintahan', 'KSAP', NULL, 'KSAP', 'KSAP', 'Jakarta', '2013', NULL, '657', 'Akuntansi Pemerintah', '657 KSA b', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1254, 'KUPKBPK-KB-0020', 'Dimensi Strategis Pengelolaan Keuangan Daerah', 'Sri Haryoso', 'Suliyanto', 'Suliyanto, Sri Haryoso', 'Meta Adicitra Kreasi', 'Samarinda', '2014', NULL, '336', 'keuangan daerah', '336 DR. d', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1255, 'KUPKBPK-KB-0021', 'Petunjuk Teknis Penetapan Kriteria Pemeriksaan Kinerja', 'Direktorat Litbang ', 'BPK', 'BPK, Direktorat Litbang ', 'BPK RI', 'Jakarta', '2011', NULL, '336', 'Keuangan Negara', '336 BPK p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1256, 'KUPKBPK-KB-0022', 'Petunjuk teknis pemeriksaan investigatif atas indikasi tindak pidana korupsi yang mengakibatkan kerugian negara atau daerah ', 'BPK RI', NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2008', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1257, 'KUPKBPK-KB-0023', 'Daya Ingat Super', '  ', 'Widiatmoko', 'Widiatmoko,   ', NULL, NULL, NULL, NULL, '658.3', 'Manajemen SDM', '658.3 WID d', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1258, 'KUPKBPK-KB-0024', 'Crisis Management and Public Relations', ' Ludwig', 'Suparmo', 'Suparmo,  Ludwig', 'Indeks', 'Jakarta', '2011', NULL, '659.2', 'Public Relations', '659.2 SUP c', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1259, 'KUPKBPK-KB-0025', 'Pengetahuan Dasar Perpustakaan Digital', 'Hartono', NULL, 'Hartono', 'Sagung Seto', 'Jakarta', '2017', '9786022711018', '658', 'Manajemen', '658 HAR p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1260, 'KUPKBPK-KB-0026', 'Aspek Hukum Pengadaan Barang dan Jasa', 'Purwosusilo', NULL, 'Purwosusilo', 'Kencana', 'Jakarta', '2017', '9786021186022', '658.7', 'Pengadaan Barang/Jasa', '658.7 PUR a', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1261, 'KUPKBPK-KB-0027', 'Curbing Corruption in Indonesia 2004-2006', 'Soren', 'Davidsen', 'Davidsen, Soren', 'USINDO', 'Yogyakarta', '2006', '9798026993', '364', 'Korupsi', '364 DAV c', 'Hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1262, 'KUPKBPK-KB-0028', 'Rocks Minerals', 'Ronald Louis', 'Bonewitz', 'Bonewitz, Ronald Louis', 'A Penguin Company', 'London', '2008', NULL, '363', 'Lingkungan', '363 DK r', NULL, 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1263, 'KUPKBPK-KB-0029', 'Sejarah Korupsi di Indonesia', 'Subur', 'Sukrisno', 'Sukrisno, Subur', 'IPB Press', 'Bogor', '2017', '9786024400873', '364', 'Korupsi', '364 SUK s', 'Hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1264, 'KUPKBPK-KB-0030', 'Badan Pemeriksa Keuangan dalam Penyelenggaraan Negara yang Bersih dan Baik', 'Baharuddin', 'Aritonang', 'Aritonang, Baharuddin', 'Pustaka Pergaulan', 'Jakarta', '2017', NULL, '336', 'Keuangan Negara', '336 ARI b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1265, 'KUPKBPK-KB-0031', 'Badan Pemeriksa Keuangan dalam Penyelenggaraan Negara yang Bersih dan Baik', 'Baharuddin', 'Aritonang', 'Aritonang, Baharuddin', 'Pustaka Pergaulan', 'Jakarta', '2017', '9789791551878', '336', 'Keuangan Negara', '336 ARI b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1266, 'KUPKBPK-KB-0032', 'Sistem Pengawasan Keuangan Negara di Indonesia', 'Bahrullah', 'Akbar', 'Akbar, Bahrullah', 'Pusaka Negara', 'Jakarta', '2015', NULL, '336', 'Keuangan Negara', '336 AKB s', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1267, 'KUPKBPK-KB-0033', 'Sistem Pengawasan Keuangan Negara di Indonesia', NULL, NULL, ', ', 'Pusaka Negara', 'Jakarta', '2015', NULL, '336', 'Keuangan Negara', '336 AKB s', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1268, 'KUPKBPK-KB-0034', 'Sistem Pengawasan Keuangan Negara di Indonesia', NULL, NULL, ' ', 'Pusaka Negara', 'Jakarta', '2015', NULL, '336', 'Keuangan Negara', '336 AKB s', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1269, 'KUPKBPK-KB-0035', 'Pengelolaan Keuangan Pemerintah Desa', 'BPK RI', NULL, 'BPK RI', 'BPK', 'Jakarta', '2015', NULL, '336', 'Keuangan Daerah', '336 BPK p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1270, 'KUPKBPK-KB-0036', 'Pengelolaan Keuangan Pemerintah Desa', 'BPK RI', NULL, 'BPK RI', 'BPK', 'Jakarta', '2015', NULL, '336', 'Keuangan Daerah', '336 BPK p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1271, 'KUPKBPK-KB-0037', 'Pengelolaan Keuangan Pemerintah Desa', 'BPK RI', NULL, 'BPK RI', 'BPK', 'Jakarta', '2015', NULL, '336', 'Keuangan Daerah', '336 BPK p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1272, 'KUPKBPK-KB-0038', 'Pengelolaan Keuangan Pemerintah Desa', 'BPK RI', NULL, 'BPK RI', 'BPK', 'Jakarta', '2015', NULL, '336', 'Keuangan Daerah', '336 BPK p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1273, 'KUPKBPK-KB-0039', 'Kumpulan Peraturan Badan Pemeriksa Keuangan Republik Indonesia', NULL, NULL, NULL, 'BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK k', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1274, 'KUPKBPK-KB-0040', 'Kumpulan Peraturan Badan Pemeriksa Keuangan Republik Indonesia', NULL, NULL, NULL, 'BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK k', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1275, 'KUPKBPK-KB-0041', 'Kumpulan Peraturan Badan Pemeriksa Keuangan Republik Indonesia', NULL, NULL, NULL, 'BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK k', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1276, 'KUPKBPK-KB-0042', 'Kumpulan Peraturan Badan Pemeriksa Keuangan Republik Indonesia', NULL, NULL, NULL, 'BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK k', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1277, 'KUPKBPK-KB-0043', 'Kumpulan Peraturan Badan Pemeriksa Keuangan Republik Indonesia', NULL, NULL, NULL, 'BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK k', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1278, 'KUPKBPK-KB-0044', 'Kumpulan Peraturan Badan Pemeriksa Keuangan Republik Indonesia', NULL, NULL, NULL, 'BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK k', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1279, 'KUPKBPK-KB-0045', 'Akuntansi Sektor Publik Konsep Teori', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'Bumi Metro Raya', 'Jakarta', '2013', '9786021793732', '657', 'Akuntansi', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1280, 'KUPKBPK-KB-0046', 'Akuntansi Sektor Publik Konsep Teori', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'Bumi Metro Raya', 'Jakarta', '2013', '9786021793732', '657', 'Akuntansi', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1281, 'KUPKBPK-KB-0047', 'Akuntansi Sektor Publik Konsep Teori', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'Bumi Metro Raya', 'Jakarta', '2013', '9786021793732', '657', 'Akuntansi', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1282, 'KUPKBPK-KB-0048', 'Akuntansi Sektor Publik Konsep Teori', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'Bumi Metro Raya', 'Jakarta', '2013', '9786021793732', '657', 'Akuntansi', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1283, 'KUPKBPK-KB-0049', 'Akuntansi Sektor Publik Konsep Teori', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'Bumi Metro Raya', 'Jakarta', '2013', '9786021793732', '657', 'Akuntansi', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1284, 'KUPKBPK-KB-0050', 'Akuntansi Sektor Publik Konsep Teori', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'Bumi Metro Raya', 'Jakarta', '2013', '9786021793732', '657', 'Akuntansi', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1285, 'KUPKBPK-KB-0051', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1286, 'KUPKBPK-KB-0052', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1287, 'KUPKBPK-KB-0053', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1288, 'KUPKBPK-KB-0054', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1289, 'KUPKBPK-KB-0055', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1290, 'KUPKBPK-KB-0056', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1291, 'KUPKBPK-KB-0057', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1292, 'KUPKBPK-KB-0058', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1293, 'KUPKBPK-KB-0059', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1294, 'KUPKBPK-KB-0060', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1295, 'KUPKBPK-KB-0061', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1296, 'KUPKBPK-KB-0062', 'Akuntansi Pemerintahan ', 'Bahrullah ', 'Akbar', 'Akbar, Bahrullah ', 'CV Bumi Metro Raya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 AKB a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1297, 'KUPKBPK-KB-0063', 'BPK Digugat Kemelut Divestasi Newmont', 'BPK RI', NULL, 'BPK RI', 'Kantor Pusat BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:21', '2023-01-04 09:22:21'),
(1298, 'KUPKBPK-KB-0064', 'BPK Digugat Kemelut Divestasi Newmont', 'BPK RI', NULL, 'BPK RI', 'Kantor Pusat BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1299, 'KUPKBPK-KB-0065', 'BPK Digugat Kemelut Divestasi Newmont', 'BPK RI', NULL, 'BPK RI', 'Kantor Pusat BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1300, 'KUPKBPK-KB-0066', 'BPK Digugat Kemelut Divestasi Newmont', 'BPK RI', NULL, 'BPK RI', 'Kantor Pusat BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1301, 'KUPKBPK-KB-0067', 'BPK Digugat Kemelut Divestasi Newmont', 'BPK RI', NULL, 'BPK RI', 'Kantor Pusat BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1302, 'KUPKBPK-KB-0068', 'BPK Digugat Kemelut Divestasi Newmont', 'BPK RI', NULL, 'BPK RI', 'Kantor Pusat BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1303, 'KUPKBPK-KB-0069', 'BPK Digugat Kemelut Divestasi Newmont', 'BPK RI', NULL, 'BPK RI', 'Kantor Pusat BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1304, 'KUPKBPK-KB-0070', 'BPK Digugat Kemelut Divestasi Newmont', 'BPK RI', NULL, 'BPK RI', 'Kantor Pusat BPK', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1305, 'KUPKBPK-KB-0071', 'BPK DIGUGAT : PRO KONTRA AUDIT BUMN', 'BPK RI', NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2016', NULL, '657', 'Keuangan Negara', '657 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1306, 'KUPKBPK-KB-0072', 'BPK DIGUGAT : PRO KONTRA AUDIT BUMN', NULL, NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2016', NULL, '657', 'Keuangan Negara', '657 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1307, 'KUPKBPK-KB-0073', 'BPK DIGUGAT : PRO KONTRA AUDIT BUMN', NULL, NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1308, 'KUPKBPK-KB-0074', 'BPK DIGUGAT : PRO KONTRA AUDIT BUMN', NULL, NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2016', NULL, '657', 'Keuangan Negara', '657 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1309, 'KUPKBPK-KB-0075', 'BPK DIGUGAT : PRO KONTRA AUDIT BUMN', NULL, NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2016', NULL, '657', 'Keuangan Negara', '657 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1310, 'KUPKBPK-KB-0076', 'BPK DIGUGAT : PRO KONTRA AUDIT BUMN', NULL, NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2016', NULL, '657', 'Keuangan Negara', '657 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1311, 'KUPKBPK-KB-0077', 'BPK DIGUGAT : PRO KONTRA AUDIT BUMN', NULL, NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2016', NULL, '657', 'Keuangan Negara', '657 BPK b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1312, 'KUPKBPK-KB-0078', 'Twilight', 'Stephenie', 'Meyer', 'Meyer, Stephenie', 'Gramedia', ' Jakarta', '2009', NULL, '823', 'Fiksi', '823 MEY t', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1313, 'KUPKBPK-KB-0079', 'New Moon', 'Stephenie', 'Meyer', 'Meyer, Stephenie', 'Gramedia Pustaka Utama', 'Jakarta', '2009', NULL, '823', 'Fiksi', '823 MEY n', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1314, 'KUPKBPK-KB-0080', 'Eclipse : Gerhana', 'Stephenie', 'Meyer', 'Meyer, Stephenie', 'Gramedia Pustaka Utama', ' Jakarta', '2009', NULL, '823', 'Fiksi', '823 MEY e', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1315, 'KUPKBPK-KB-0081', 'Breaking Dawn : Awal Yang Baru', 'Stephenie', 'Meyer', 'Meyer, Stephenie', 'Gramedia', ' Jakarta', '2009', NULL, '823', 'Fiksi', '823 MEY b', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1316, 'KUPKBPK-KB-0083', 'Jejak-jejak Makna', 'Gede', 'Prama', 'Prama, Gede', 'Gramedia Pustaka Utama', 'Jakarta', '2004', NULL, '813', 'Fiksi', '813 PRA j', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1317, 'KUPKBPK-KB-0084', 'Jangan Pernah Menyerah', 'Aldilla', 'Dharma', 'Dharma, Aldilla', 'Qultum Media', 'Jakarta', '2017', '9789790173736', '297', 'Islam', '297 DHA j', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1318, 'KUPKBPK-KB-0085', 'Terima Kasih Ayah', 'Irfan', NULL, 'Irfan', 'Wahyu Qolbu', 'Jakarta', '2014', NULL, '813', 'Fiksi', '813 IRF t', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1319, 'KUPKBPK-KB-0086', 'Terima kasih ibu', 'Seno Teguh', 'Pribadi', 'Pribadi, Seno Teguh', 'Wahyu Media', ' Jakarta', '2013', NULL, '813', 'Fiksi', '813 PRI t', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1320, 'KUPKBPK-KB-0087', 'I Have a Dream', 'Arif Rahman', 'Lubis', 'Lubis, Arif Rahman', 'Qultum Media', 'Jakarta', '2017', NULL, '813', 'Fiksi', '813 LUB i', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1321, 'KUPKBPK-KB-0088', 'Totto-chan', 'Tetsuko', 'Kuroyanagi', 'Kuroyanagi, Tetsuko', 'Gramedia', ' Jakarta', '2013', NULL, '823', 'Fiksi', '823 KUR t', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1322, 'KUPKBPK-KB-0089', 'Rencana Paling Sempurna', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2003', NULL, '823', 'Fiksi', '823 SHE r', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1323, 'KUPKBPK-KB-0090', 'Kenangan Kematian', 'Agatha', 'Christie', 'Christie, Agatha', 'Gramedia Pustaka Utama', 'Jakarta', '2002', NULL, '823', 'Fiksi', '823 CHR k', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1324, 'KUPKBPK-KB-0091', 'Wajah Sang Pembunuh', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2009', NULL, '823', 'Fiksi', '823 SHE w', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1325, 'KUPKBPK-KB-0092', 'Padang Bayang Kelabu', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2009', NULL, '823', 'Fiksi', '823 SHE p', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1326, 'KUPKBPK-KB-0093', 'Tiada yang Abadi', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2007', NULL, '823', 'Fiksi', '823 SHE t', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1327, 'KUPKBPK-KB-0094', 'Ceritakan Mimpi-Mimpimu', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2005', NULL, '823', 'Fiksi', '823 SHE c', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1328, 'KUPKBPK-KB-0095', 'Pagi, Siang, dan Malam', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2004', NULL, '823', 'Fiksi', '823 SHE p', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1329, 'KUPKBPK-KB-0096', 'Pagi, Siang, dan Malam', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2004', NULL, '823', 'Fiksi', '823 SHE p', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1330, 'KUPKBPK-KB-0097', 'Langit Runtuh', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2001', NULL, '823', 'Fiksi', '823 SHE l', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1331, 'KUPKBPK-KB-0098', 'Malaikat Keadilan', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '1994', NULL, '823', 'Fiksi', '823 SHE m', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1332, 'KUPKBPK-KB-0099', 'Sosok Asing Dalam Cermin', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2007', NULL, '823', 'Fiksi', '823 SHE s', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1333, 'KUPKBPK-KB-0100', 'Rage of Angels', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Warner Books', 'New York', '1983', NULL, '823', 'Fiksi', '823 SHE r', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1334, 'KUPKBPK-KB-0101', 'Ratu Berlian', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '1983', NULL, '823', 'Fiksi', '823 SHE r', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1335, 'KUPKBPK-KB-0102', 'The Naked Face', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Warner Books', 'New York', '1984', NULL, '823', 'Fiksi', '823 SHE t', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1336, 'KUPKBPK-KB-0103', 'Apakah Kau Takut Gelap?', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2005', NULL, '823', 'Fiksi', '823 SHE a', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1337, 'KUPKBPK-KB-0104', 'Kincir Angin Para Dewa', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2005', NULL, '823', 'Fiksi', '823 SHE k', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1338, 'KUPKBPK-KB-0105', 'Butir-Butir Waktu', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2005', NULL, '823', 'Fiksi', '823 SHE b', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1339, 'KUPKBPK-KB-0106', 'Lewat Tengah Malam', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2005', NULL, '823', 'Fiksi', '823 SHE l', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1340, 'KUPKBPK-KB-0107', 'Sisi Lain Diriku', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2007', NULL, '823', 'Fiksi', '823 SHE s', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1341, 'KUPKBPK-KB-0108', 'Kilau Bintang Menerangi Bumi', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2007', NULL, '823', 'Fiksi', '823 SHE k', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1342, 'KUPKBPK-KB-0109', 'Konspirasi Hari Kiamat', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2002', NULL, '823', 'Fiksi', '823 SHE k', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1343, 'KUPKBPK-KB-0110', 'Bila Esok Tiba', 'Sidney', 'Sheldon', 'Sheldon, Sidney', 'Gramedia Pustaka Utama', 'Jakarta', '2001', NULL, '823', 'Fiksi', '823 SHE b', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1344, 'KUPKBPK-KB-0111', 'Outliers rahasia dibalik sukses', 'Malcolm ', 'Gladwell', 'Gladwell, Malcolm ', 'Gramedia', ' Jakarta', '2009', NULL, '332', 'Investasi', '332 GLA o', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1345, 'KUPKBPK-KB-0112', 'Memoar Sultan Abdul Hamid II', 'Muhammad', 'Harb', 'Harb, Muhammad', 'Pustaka Al-Kautsar', 'Jakarta', '2013', NULL, '920', 'Biografi', '920 HAR m', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1346, 'KUPKBPK-KB-0113', 'Build the best of your life', 'Hermanto', 'Kosasih', 'Kosasih, Hermanto', 'PT.Elex media komputindo', 'Jakarta', '2011', '9789792244762', '658.3', 'Manajemen SDM', '658.3 KOS b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1347, 'KUPKBPK-KB-0114', 'Zoom In, Zoom Out Your Views', 'Kun Wahyu', 'Wardana', 'Wardana, Kun Wahyu', 'Gramedia Pustaka Utama', 'Jakarta', '2017', NULL, '658.3', 'Manajemen SDM', '658.3 WAR z', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1348, 'KUPKBPK-KB-0116', 'Sussman', 'Paul', NULL, 'Paul', 'Pustaka Alvabet', 'Tangerang', '2008', NULL, '813', 'Fiksi', '813 SUS t', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1349, 'KUPKBPK-KB-0117', 'Tipping point bagaimana hal-hal kecil dapat menghasilkan perubahan besar', 'Malcolm', 'Gladwell', 'Gladwell, Malcolm', 'Gramedia', ' Jakarta', '2010', '9786020380599', '658.3', 'Manajemen SDM', '658.3 GLA t', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1350, 'KUPKBPK-KB-0118', 'The Balance Ways', 'MK. Sutrisna', 'Suryadilaga', 'Suryadilaga, MK. Sutrisna', 'Gramedia Pustaka Utama', 'Jakarta', '2008', '9789792240412', '658.3', 'Manajemen SDM', '658.3 SUR t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1351, 'KUPKBPK-KB-0119', 'China Megatrends 8 Pilar yang Membuat Dahsyat China', 'John', NULL, 'John', 'Gramedia Pustaka Utama', 'Jakarta', '2010', NULL, '320', 'kebijakan publik', '320 NAI c', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1352, 'KUPKBPK-KB-0120', 'My Name Is Red :  Namaku Merah Kirmizi', 'Orhan', 'Pamuk', 'Pamuk, Orhan', 'Serambi Ilmu Semesta', 'Jakarta', '2001', '9791112401', '813', 'Fiksi', '813 PAM m', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1353, 'KUPKBPK-KB-0121', 'Change Leadership Non-Finito', 'Rhenald', 'Kasali ', 'Kasali , Rhenald', 'Mizan Media Utama', 'Jakarta', '2015', '9789794339169', '658.3', 'Manajemen SDM', '658.3 KAS c', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1354, 'KUPKBPK-KB-0122', 'The Secret of Hapiness', 'Richard', 'Schoch', 'Schoch, Richard', 'Mizan Publika', 'Jakarta', '2008', '9789791141840', '200', 'Manajemen SDM', '200 SCH t', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1355, 'KUPKBPK-KB-0123', 'Strawberry Generation', 'Rhenald', 'Kasali ', 'Kasali , Rhenald', 'Mizan anggota IKAPI', 'Jakarta', '2017', NULL, '658.3', 'Manajemen SDM', '658.3 KAS s', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1356, 'KUPKBPK-KB-0124', 'Self Driving', 'Rhenald', 'Kasali ', 'Kasali , Rhenald', 'Mizan', 'Bandung', '2014', '9789794338513', '658.3', 'Manajemen SDM', '658.3 KAS s', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1357, 'KUPKBPK-KB-0125', 'Put Your Dream to The Test', 'John C', 'Maxwell', 'Maxwell, John C', 'Menuju Insan Cemerlang', 'Surabaya', '2016', '9786020956107', '658.3', 'Manajemen SDM', '658.3 MAX p', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1358, 'KUPKBPK-KB-0126', 'Tafsir Al-Mishbah', 'M Quraish', 'Shihab', 'Shihab, M Quraish', 'Lentera Hati', ' Jakarta', '2009', '9789799048141', '297', 'Islam', '297 SHI t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1359, 'KUPKBPK-KB-0127', 'Anak bajang menggiring angin (Novel)', 'Shindunatha', NULL, 'Shindunatha', 'Gramedia', ' Jakarta', '2010', NULL, '813', 'Fiksi', '813 SHI a', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1360, 'KUPKBPK-KB-0128', 'How Starbucks Saved My Life', 'Michael Gates', 'Gill', 'Gill, Michael Gates', 'Penerbit Literati', 'Tangerang', '2012', NULL, '813', 'Fiksi', '813 GIL h', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1361, 'KUPKBPK-KB-0129', 'Nanny 911', 'Deborah', 'Carroll', 'Carroll, Deborah', 'Mizan Publika', 'Jakarta', '2008', NULL, '649', 'pendidikan', '649 CAR n', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1362, 'KUPKBPK-KB-0130', 'Tafsir Al-Mishbah', 'M Quraish', 'Shihab', 'Shihab, M Quraish', 'Lentera Hati', ' Jakarta', '2009', '9789799048271', '297', 'Islam', '297 SHI t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1363, 'KUPKBPK-KB-0131', 'Disruption', 'Renald', 'Kasali', 'Kasali, Renald', 'Gramedia Pustaka Utama', 'Jakarta', '2017', NULL, '658', 'Manajemen', '658 KAS d', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1364, 'KUPKBPK-KB-0132', 'The Lady Di Conspiracy', 'Indra', 'Adil', 'Adil, Indra', 'Pustaka Al-Kautsar', 'Jakarta', '2007', NULL, '920', 'Biografi', '920 ADI t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1365, 'KUPKBPK-KB-0133', 'Tomorrow is Today', 'Rhenald', 'Kasali ', 'Kasali , Rhenald', 'Mizan Media Utama', 'Jakarta', '2017', '9786024410360', '658.3', 'Manajemen SDM', '658.3 KAS t', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1366, 'KUPKBPK-KB-0134', 'PERFORMANCE COACHING', 'Carol', 'Wilson', 'Wilson, Carol', 'PPM', 'Jakarta', '2011', '9789794423462', '658.3', 'Manajemen SDM', '658.3 WIL p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1367, 'KUPKBPK-KB-0135', 'The Davinci Code', 'Dan', 'Brown', 'Brown, Dan', 'Bentang Pustaka', 'Yogyakarta', '2016', NULL, '813', 'Fiksi', '813 DAN t', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1368, 'KUPKBPK-KB-0136', 'Inferno', 'Dan', 'Brown', 'Brown, Dan', 'Bentang', ' Yogyakarta', '2013', NULL, '823', 'Fiksi', '823 BRO i', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1369, 'KUPKBPK-KB-0137', 'Menerjang Harapan', 'Barack', 'Obama', 'Obama, Barack', 'Ufuk Press', 'Jakarta', '2007', NULL, '920', 'Biografi', '920 OBA m', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1370, 'KUPKBPK-KB-0138', 'Let\"s Change', 'Rhenald', 'Kasali ', 'Kasali , Rhenald', 'Kompas', 'Jakarta', '2015', '9789797097943', '658.3', 'Manajemen SDM', '658.3 KAS l', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1371, 'KUPKBPK-KB-0139', 'Hukum Keuangan Negara', 'Nizam', 'Burhanuddin', 'Burhanuddin, Nizam', 'Total Media', 'Yogyakarta', '2015', '9786021960120', '336', 'Keuangan Negara', '336 BUR h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1372, 'KUPKBPK-KB-0140', 'Cara Mudah Membuat Katalog Perpustakaan : Teori dan Praktik', 'Dachliyani, Liya', 'Dachliyani', 'Dachliyani, Dachliyani, Liya', 'Bee Media Pustaka', 'Jakarta', '2017', NULL, '658', 'Manajemen', '658 DAC c', NULL, 'Rak kaca', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1373, 'KUPKBPK-KB-0141', 'Excellent Leadership', 'Dr.H Cris', 'Kuntadi', 'Kuntadi, Dr.H Cris', 'BukuRepublika', 'Jakarta', '2017', '9786027595460', '658.3', 'Manajemen SDM', '658.3 KUN e', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1374, 'KUPKBPK-KB-0142', 'Korupsi : membuka Pandora Box perilaku korupsi dari dimensi etika, budaya dan keperilakuan', 'Ardeno', 'Kurniawan', 'Kurniawan, Ardeno', 'Andi', 'Yogyakarta', '2018', '9789792965834', '364', 'Korupsi', '364 KUR k', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1375, 'KUPKBPK-KB-0143', 'Memetakan Perkembangan Ilmu Perpustakaan dan Informasi di Indonesia', 'Sulistyo', 'Basuki', 'Basuki, Sulistyo', 'Ikatan Sarjana Ilmu Perpustakaan dan Informasi Indonesia', 'Jakarta', '2018', '9786029585865', '001.42', 'Penelitian', '001.42 BAS m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1376, 'KUPKBPK-KB-0144', 'Menggunakan Microsoft Access sebagai Software Audit', 'Eko', 'Yulianto', 'Yulianto, Eko', 'Diandra Kreatif', 'Yogyakarta', '2018', NULL, '004', 'Komputer - Data', '004 YUL m', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1377, 'KUPKBPK-KB-0145', 'Menggunakan Microsoft Excel Sebagai Software Audit', 'Eko', 'Yulianto', 'Yulianto, Eko', 'Diandra Kreatif', 'Yogyakarta', '2018', NULL, '004', 'Komputer - Data', '004 YUL m', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1378, 'KUPKBPK-KB-0146', 'Pustaka dan Kebangsaan', 'Putu Laxman', 'Pendit', 'Pendit, Putu Laxman', 'Ikatan Sarjana Ilmu Perpustakaan dan Informasi Indonesia', 'Jakarta', '2018', '9786029585858', '658', 'Manajemen', '658 PEN p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1379, 'KUPKBPK-KB-0147', 'Standar Akuntansi Keuangan : Per 1 Januari 2019 2020  ', 'IAI', NULL, 'IAI', 'IAI', 'Jakarta', '2018', '9789799020703', '657', 'Akuntansi', '657 IAI s', 'Hibah', 'Koleksi Khusus Reading corner', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1380, 'KUPKBPK-KB-0148', 'Bumi ', 'Tere ', 'Liye', 'Liye, Tere ', 'Gramedia Pustaka Utama', 'Jakarta', '2014', '9786020332956', '813', 'Fiksi', '813 LIY b', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1381, 'KUPKBPK-KB-0149', 'Auditing Dasar-dasar Pemeriksaan Akuntansi', 'Hery', NULL, 'Hery', 'Grasindo', 'Jakarta', '2019', '9786020517025', '657', 'Auditing', '657 HER a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1382, 'KUPKBPK-KB-0150', 'Analisis ekonomi regional dan penerapannya di Indonesia', 'Sjafrizal', NULL, 'Sjafrizal', 'RajaGrafindo Persada', 'Depok', '2018', '9786024254704', '330', 'Ekonomi', '330 SJA a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1383, 'KUPKBPK-KB-0151', 'Cashflow Quadrant', 'Robert T', 'Kiyosaki', 'Kiyosaki, Robert T', 'Gramedia Pustaka Utama', 'Jakarta', '2017', '9786020346113', '650', 'Bisnis', '650 ROB c', 'beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1384, 'KUPKBPK-KB-0152', 'Analisis Laporan Keuangan', 'Kasmir', NULL, 'Kasmir', 'Rajawali Pers', 'Jakarta', '2012', '9786024259457', '657', 'Laporan Keuangan', '657 KAS a', 'beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1385, 'KUPKBPK-KB-0153', 'Revolusi Industri 4.0: Mengubah Tantangan Menjadi Peluang di Era Disrupsi 4.0', 'Astrid', 'Savitri', 'Savitri, Astrid', 'Penerbit Genesis', 'Yogyakarta', '2019', NULL, '330', 'Ekonomi', '330 AST r', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1386, 'KUPKBPK-KB-0154', 'Manajemen Kinerja', 'Wibowo', NULL, 'Wibowo', 'Raja Grafindo Persada', 'Bandung ', '2017', '9789797699185', '658.1', 'Organisasi', '658.1 WIB m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1387, 'KUPKBPK-KB-0155', 'Pengelolaan Keuangan Daerah', 'Abdul', 'Halim', 'Halim, Abdul', ' UPP STIM YKPN', 'Yogyakarta ', '2019', '9786021286814', '336', 'keuangan daerah', '336 ABD p', 'hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1388, 'KUPKBPK-KB-0156', 'Makro ekonomi : teori pengantar', 'Sadono ', 'Sukirno', 'Sukirno, Sadono ', 'Rajawali Pers', ' Jakarta', '2011', NULL, '339', 'ekonomi makro', '339 SUK m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1389, 'KUPKBPK-KB-0157', 'Manajemen Perpajakan  Strategi Perencanaan Pajak dan Bisnis', 'Chairil Anwar', 'Pohan', 'Pohan, Chairil Anwar', 'Gramedia Pustaka Utama', 'Jakarta', '2017', '9786020311012', '336', 'pajak', '336 POH m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1390, 'KUPKBPK-KB-0158', 'Matematika Ekonomi', 'Sofjan', 'Assauri', 'Assauri, Sofjan', 'Raja Grafindo Persada', 'Jakarta', '2017', '9789794210703', '330', 'Ekonomi', '330 ASS m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1391, 'KUPKBPK-KB-0159', 'Pedoman Lengkap Pajak Internasional', 'Chairil Anwar', 'Pohan', 'Pohan, Chairil Anwar', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020632643', '336', 'pajak', '336 POH p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1392, 'KUPKBPK-KB-0160', 'Memahami Audit Internal Bank', 'Ikatan Bankir Indonesia', NULL, 'Ikatan Bankir Indonesia', 'Gramedia Pustaka Utama', 'Jakarta', '2014', NULL, '657', 'Auditing', '657 IKA m', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1393, 'KUPKBPK-KB-0161', 'Metodologi penelitian bisnis', 'Sugiarto', NULL, 'Sugiarto', 'Andi', 'Yogyakarta', '2017', '9789792961140', '001.42', 'Penelitian', '001.42 SUG m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1394, 'KUPKBPK-KB-0162', 'Penelitian Hukum Normatif', 'Soerjono', 'Soekanto', 'Soekanto, Soerjono', 'RajaGrafindo Persada', 'Jakarta', '2012', '9789794212592', '001.42', 'Penelitian', '001.42 SOE p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1395, 'KUPKBPK-KB-0163', 'Etika politik : prinsip moral dasar kenegaraan modern', 'Franz Magnis', 'Suseno', 'Suseno, Franz Magnis', 'Gramedia', 'Jakarta', '2016', '97860203347707', '340', 'Ilmu Hukum', '340 MAG e', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1396, 'KUPKBPK-KB-0164', 'Bukan Buku Diet', 'Alvin', 'Hartanto', 'Hartanto, Alvin', 'Gramedia Widiasarana Indonesia', 'Jakarta', '2018', '9786024528829', '658.3', 'Manajemen SDM', '658.3 ALV b', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1397, 'KUPKBPK-KB-0165', 'Hukum Bisnis', 'Zaeni', 'Asyhadie', 'Asyhadie, Zaeni', 'Rajagrafindo Persada', 'Depok', '2012', '9786024256814', '346', 'Hukum Privat', '346 ASY h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1398, 'KUPKBPK-KB-0166', 'Hukum Kontrak Dan Perancangan kontrak', 'Ahmadi', 'Miru', 'Miru, Ahmadi', 'Raja Grafindo Persada', ' Jakarta', '2007', NULL, '343', 'Hukum Publik', '343 DR. h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1399, 'KUPKBPK-KB-0167', 'Misteri Lembah Ketakutan', 'Arthur Conan', 'Doyle', 'Doyle, Arthur Conan', 'indoliterasi', 'Yogyakarta', '2020', NULL, '823', 'Fiksi', '823 SIR m', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1400, 'KUPKBPK-KB-0168', 'Petualangan Sherlock Holmes : Misteri Anjing Setan', 'Arthur Conan', 'Doyle', 'Doyle, Arthur Conan', 'Indoliterasi', 'Yogyakarta', '2020', NULL, '823', 'Fiksi', '823 SIR p', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1401, 'KUPKBPK-KB-0169', 'Koleksi Kasus Sherlock Holmes', 'Arthur Conan', 'Doyle', 'Doyle, Arthur Conan', 'Indoliterasi', 'Yogyakarta', '2020', NULL, '823', 'Fiksi', '823 SIR k', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1402, 'KUPKBPK-KB-0170', 'Koleksi Memoar Sherlock Holmes', 'Arthur Conan', 'Doyle', 'Doyle, Arthur Conan', 'Indoliterasi', 'Yogyakarta', '2020', NULL, '823', 'Fiksi', '823 SIR k', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1403, 'KUPKBPK-KB-0171', 'Petualangan Sherlock Holmes', 'Arthur Conan', 'Doyle', 'Doyle, Arthur Conan', 'Indoliterasi', 'Yogyakarta', '2020', NULL, '813', 'Fiksi', '813 DOY p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1404, 'KUPKBPK-KB-0172', 'Kembalinya Sherlock Holmes', 'Arthur Conan', 'Doyle', 'Doyle, Arthur Conan', 'Indoliterasi', 'Yogyakarta', '2020', NULL, '823', 'Fiksi', '823 SIR k', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1405, 'KUPKBPK-KB-0173', 'Public Policy', 'Riant', 'Nugroho', 'Nugroho, Riant', 'Gramedia', 'Jakarta', '2018', '9786020400075', '320', 'kebijakan publik', '320 NUG p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1406, 'KUPKBPK-KB-0174', 'Politik Hukum di Indonesia', 'Moh ', 'Mahfud MD', 'Mahfud MD, Moh ', 'Raja Grafinso Persada', 'Depok', '2019', NULL, '340', 'Ilmu Hukum', '340 MAH p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1407, 'KUPKBPK-KB-0175', 'Detektif Conan', 'Aoyama', 'Gosho', 'Gosho, Aoyama', 'Elex Media Komputindo', 'Jakarta', '2018', NULL, '823', 'Fiksi', '823 AOY d', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1408, 'KUPKBPK-KB-0176', 'Detektif Conan', 'Aoyama', 'Gosho', 'Gosho, Aoyama', 'Elex Media Komputindo', 'Jakarta', '2018', NULL, '813', 'Fiksi', '813 AOY d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1409, 'KUPKBPK-KB-0177', 'Detektif Conan', 'Aoyama', 'Gosho', 'Gosho, Aoyama', 'Elex Media Komputindo', 'Jakarta', '2018', NULL, '813', 'Fiksi', '813 AOY d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1410, 'KUPKBPK-KB-0178', 'Kuliner Khas Tionghoa di Indonesia', 'Nicholas', 'Molodysky', 'Molodysky, Nicholas', 'Visi Media', 'Jakarta', '2019', NULL, '641', 'Masakan', '641 NIC k', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1411, 'KUPKBPK-KB-0179', 'Phases of the Heart', 'Riliv', NULL, ', Riliv', 'Elex Media Komputindo', 'Jakarta', '2020', NULL, '813', 'Fiksi', '813 RIL p', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22');
INSERT INTO `books` (`id`, `book_number`, `book_title`, `book_firstname`, `book_lastname`, `book_author`, `book_publisher`, `book_city`, `book_year`, `book_isbn`, `book_class`, `book_subject`, `book_classcode`, `book_acq`, `book_location`, `book_nup`, `book_brand`, `book_image`, `book_createdby`, `book_updatedby`, `book_isavailable`, `created_at`, `updated_at`) VALUES
(1412, 'KUPKBPK-KB-0180', 'Pangeran Kelas', 'Hendra', 'Putra', 'Putra, Hendra', 'Bintang Media', NULL, '2017', NULL, '813', 'Fiksi', '813 HEN p', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1413, 'KUPKBPK-KB-0181', 'Barrons TOEFL IBT 15th ed', 'Pamela J', 'Sharpe', 'Sharpe, Pamela J', 'Barron', NULL, '2016', '9781438076256', '420', 'Bahasa Inggris', '420 PAM b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1414, 'KUPKBPK-KB-0182', 'Barrons TOEFL Strategies and Tips 2nd ed', 'Pamela J', 'Sharpe', 'Sharpe, Pamela J', 'Barron', NULL, NULL, NULL, '420', 'Bahasa Inggris', '420 PAM b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1415, 'KUPKBPK-KB-0183', 'Nanti Kita Cerita Tentang Hari Ini (Pesan Tambahan Siang)', 'Marchella ', 'FP', 'FP, Marchella ', 'Kepustakaan Populer Gramedia', 'Jakarta', '2019', NULL, '813', 'Fiksi', '813 MAR n', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1416, 'KUPKBPK-KB-0184', 'Dilarang Jatuh Cinta ?', 'Josua Iwan', 'Wahyudi', 'Wahyudi, Josua Iwan', 'Get Your Wisdom Publishing', 'Jakarta ', '2012', '9791898685', '230', 'Kristen', '230 JOS d', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1417, 'KUPKBPK-KB-0185', 'Memahami Untuk Membasmi', 'KPK', NULL, ', KPK', 'KPK', 'Jakarta', '2006', '979-15134-0-6', '364', 'Korupsi', '364 KOM m', 'Hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1418, 'KUPKBPK-KB-0186', 'Kain Nusantara', 'Bank', 'Indonesia', 'Indonesia, Bank', 'Bank Indonesia', 'Jakarta', '2019', '9789798086632', '300', 'sosial', '300 BAN k', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1419, 'KUPKBPK-KB-0187', 'Jack Reacher Never Go Back', 'Lee', 'Child', 'Child, Lee', 'Transworld Publisher', ' Great Britain', '2016', '9780857503497', '823', 'Fiksi', '823 LEE j', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1420, 'KUPKBPK-KB-0188', 'Mencintai Sepak Bola Indonesia Meski Kusut', 'Miftahul', 'S.F', 'S.F, Miftahul', 'Fandom', 'Yogyakarta ', '2020', '9786023090839', '813', 'Fiksi', '813 MIF m', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1421, 'KUPKBPK-KB-0189', 'Mereka Ada', 'MWV Mystic', NULL, ', MWV Mystic', 'Loveable', 'Jakarta', '2019', '9786025406928', '813', 'Fiksi', '813 MYS m', 'beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1422, 'KUPKBPK-KB-0190', 'Sepak Bola', 'Fandom', 'Indonesia', 'Indonesia, Fandom', 'Fandom', 'Yogyakarta ', '2020', '9786023091584', '813', 'Fiksi', '813 FAN s', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1423, 'KUPKBPK-KB-0191', 'Menikah = Bunuh Diri', 'Josua Iwan', 'Wahyudi', 'Wahyudi, Josua Iwan', 'Get Your Wisdom Publishing', 'Jakarta ', '2013', '9791898607', '230', 'Kristen', '230 JOS m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1424, 'KUPKBPK-KB-0192', 'More of You', 'Acha', 'Sinaga', 'Sinaga, Acha', 'Elex Media Komputindo', 'Jakarta ', '2019', '9786230009082', '813', 'Fiksi', '813 ACH m', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1425, 'KUPKBPK-KB-0193', 'e Factor', 'Josua Iwan', 'Wahyudi', 'Wahyudi, Josua Iwan', 'Get Your Wisdom Publishing', 'Jakarta ', '2015', '9786021848920', '658.3', 'Manajemen SDM', '658.3 JOS e', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1426, 'KUPKBPK-KB-0194', 'Beyond Mars and Venus', 'John', 'Gray', 'Gray, John', 'Gramedia Pustaka Utama', 'Jakarta ', '2018', '978-602-03-8033-9', '658.3', 'Manajemen SDM', '658.3 GRA b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1427, 'KUPKBPK-KB-0195', 'Patriot - dalam Prahara Vol 1', 'Fajar', 'Sungging', 'Sungging, Fajar', 'Gramedia', 'Jakarta ', '2019', NULL, '813', 'Fiksi', '813 FAJ p', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1428, 'KUPKBPK-KB-0196', 'Patriot - dalam Prahara Vol 2', 'Fajar', 'Sungging', 'Sungging, Fajar', 'Gramedia', 'Jakarta ', '2019', NULL, '813', 'Fiksi', '813 FAJ p', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1429, 'KUPKBPK-KB-0197', 'UNBRANDING', 'Scott', 'Stratten', 'Stratten, Scott', 'Elex Media Komputindo', 'Jakarta', '2020', NULL, '658', 'Manajemen', '658 SCO u', '0', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1430, 'KUPKBPK-KB-0198', 'Manajemen Logistik', 'Ricky Virona', 'Martono', 'Martono, Ricky Virona', 'Gramedia', 'Jakarta', '2018', '9786020384583', '658', 'Manajemen', '658 RIC m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1431, 'KUPKBPK-KB-0199', 'Manajemen Kearsipan', 'Sambas Ali', 'Muhidin', 'Muhidin, Sambas Ali', 'Pustaka Setia', 'Bandung', '2016', '9789790765894', '658', 'Manajemen', '658 SAM m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1432, 'KUPKBPK-KB-0200', 'The 360 Leader', 'John C', 'Maxmell', 'Maxmell, John C', 'Bhuana Ilmu Populer', 'Jakarta', '2013', '9786023749959', '658.1', 'Organisasi', '658.1 MAX t', 'beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1433, 'KUPKBPK-KB-0201', 'Zeropreneur', 'Hendiko ', 'Firman', 'Firman, Hendiko ', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230003035', '650', 'Bisnis', '650 HEN z', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1434, 'KUPKBPK-KB-0202', 'Mindful Trader', 'William', 'Hartanto', 'Hartanto, William', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230009501', '650', 'Bisnis', '650 WIL m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1435, 'KUPKBPK-KB-0203', 'Terobosan Baru Atas Perlambatan Ekonomi', 'Sri Mulyani', 'Indrawati', 'Indrawati, Sri Mulyani', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230018657', '330', 'Ekonomi', '330 SRI t', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1436, 'KUPKBPK-KB-0204', 'Bisnis Ekspor itu Mudah', 'Nursyamsu', 'Mahyuddin', 'Mahyuddin, Nursyamsu', 'Agro Media Pustaka', 'Jakarta', '2020', '9789790066441', '650', 'Bisnis', '650 NUR b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1437, 'KUPKBPK-KB-0205', 'Teori Hukum Integratif', 'Lili', 'Rasjidi', 'Rasjidi, Lili', 'Genta Publishing', 'Yogyakarta', '2018', '9786029888285', '340', 'Ilmu Hukum', '340 PRO t', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1438, 'KUPKBPK-KB-0206', 'Perkembangan dan konsolidasi lembaga negara pasca reformasi', 'Jimly', 'Asshiddiqie', 'Asshiddiqie, Jimly', 'Konstitusi press', 'Jakarta', '2006', '9789790072770', '340', 'Ilmu Hukum', '340 JIM p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1439, 'KUPKBPK-KB-0207', 'Dasar-Dasar Filsafat dan Teori Hukum', 'Lili', 'Rasidi', 'Rasidi, Lili', 'Citra Aditya Bakti', 'Bandung', '2007', '9794145300', '340', 'Ilmu Hukum', '340 H.  d', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1440, 'KUPKBPK-KB-0208', 'Sengketa Kewenangan Konstitusional Lembaga Negara', 'Jimly', 'Asshiddiqie', 'Asshiddiqie, Jimly', 'Konstitusi press', 'Jakarta', '2006', '9799980321', '342', 'Hukum Tata Negara', '342 JIM s', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1441, 'KUPKBPK-KB-0209', 'Hukum Penalaran dan Penalaran Hukum', 'Shidarta', NULL, 'Shidarta', 'Genta Publishing', 'Yogyakarta', '2013', '9786021500002', '340', 'Ilmu Hukum', '340 SHI h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1442, 'KUPKBPK-KB-0210', 'GRIT - Kekuatan Passion + Kegigihan', 'Angela', 'Duckworth', 'Duckworth, Angela', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020620930', '658.3', 'Manajemen SDM', '658.3 DUC g', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1443, 'KUPKBPK-KB-0211', 'Manajemen Perpustakaan Penerapan TQM Dan CRM', 'Elva', 'Rahmah', 'Rahmah, Elva', 'Rajawali Pers', 'Depok', '2019', '9786024256432', '658', 'Manajemen', '658 ELV m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1444, 'KUPKBPK-KB-0212', 'Kota Untuk Semua', 'Parmonangan', 'Manurung', 'Manurung, Parmonangan', 'Penerbit Andi', 'Yogyakarta', '2018', '9789792961706', '342', 'Hukum Tata Negara', '342 PAR k', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1445, 'KUPKBPK-KB-0213', 'Manajemen Koperasi', 'Toman Sony', 'Tambunan', 'Tambunan, Toman Sony', 'Yrama Widya', 'Bandung', '2019', '9786023749911', '658', 'Manajemen', '658 TOM m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1446, 'KUPKBPK-KB-0214', 'Pintar Merencanakan Pensiun', 'Asti', 'Musman', 'Musman, Asti', 'Unicorn Publishing', 'Yogyakarta', '2020', '9786232241385', '658.3', 'Manajemen SDM', '658.3 AST p', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1447, 'KUPKBPK-KB-0215', 'Self Disruption', 'Rhenald', 'Kasali', 'Kasali, Rhenald', 'Mizan', 'Jakarta Selatan', '2018', NULL, '658.3', 'Manajemen SDM', '658.3 RHE s', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1448, 'KUPKBPK-KB-0216', 'Manajemen Perpustakaan Elektronik (E-Library)', 'Hartono', NULL, 'Hartono', 'Gava Media', 'Yogyakarta', '2019', '9786025568510', '658', 'Manajemen', '658 DRS m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1449, 'KUPKBPK-KB-0217', 'Beternak Kambing', 'Nobetus', 'Kaleka', 'Kaleka, Nobetus', 'Arcita', 'Surakarta', '2013', NULL, '650', 'Bisnis', '650 NOR b', '0', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1450, 'KUPKBPK-KB-0218', 'Mukjizat Suhu Tubuh', 'Masashi', 'Saito', 'Saito, Masashi', 'Gramedia Pustaka Utama', 'Jakarta', '2019', NULL, '613', 'Kesehatan Umum', '613 MAS m', NULL, 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1451, 'KUPKBPK-KB-0219', 'Masa Simpan dan Batas Kedaluwarsa Produk Pangan', 'Purwiyanto', 'Hariyadi', 'Hariyadi, Purwiyanto', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020388229', '613', 'Kesehatan Umum', '613 PUR m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1452, 'KUPKBPK-KB-0220', 'Beauty Clopedia 110 Rahasia Cantik Alami', 'GO', 'DOK', 'DOK, GO', 'Grasindo', 'Jakarta', '2019', NULL, '613', 'Kesehatan Umum', '613 GO  b', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1453, 'KUPKBPK-KB-0221', 'Manajemen dan Peran Puskesmas Sebagai Gatekeeper', 'Henni', 'Febriawati', 'Febriawati, Henni', 'Gosyen Publishing', 'Yogyakarta', '2019', '9786025411250', '658', 'Manajemen', '658 HEN m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:22', '2023-01-04 09:22:22'),
(1454, 'KUPKBPK-KB-0222', 'Dijamin Kaya dengan Bisnis Kaki Lima', 'John', 'Afifi', 'Afifi, John', 'Laksana', 'Yogyakarta', '2019', '9786024075712', '650', 'Bisnis', '650 JOH d', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1455, 'KUPKBPK-KB-0223', 'Kafepedia', 'Damaya', 'Ardian', 'Ardian, Damaya', 'Laksana', 'Yogyakarta', '2019', '9786024075842', '650', 'Bisnis', '650 DAM k', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1456, 'KUPKBPK-KB-0224', 'Bioflok Lele', 'Taufik Budi', 'Pramono', 'Pramono, Taufik Budi', 'Penebar Swadaya', 'Jakarta', '2019', NULL, '650', 'Bisnis', '650 TAU b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1457, 'KUPKBPK-KB-0225', 'Jus Sehat', 'Vera', 'Wulandari', 'Wulandari, Vera', 'Kawan Pustaka', 'Jakarta', '2014', NULL, '641', 'Masakan', '641 VER j', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1458, 'KUPKBPK-KB-0226', 'Resep Panjang Umur Sehat dan Sembuh', 'Tan Shot', 'Yen', 'Yen, Tan Shot', 'Gramedia Pustaka Utama', 'Jakarta', '2018', NULL, '641', 'Masakan', '641 TAN r', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1459, 'KUPKBPK-KB-0227', 'Rahasia Sukses Membangun Kekayaan Melalui Bisnis Properti \"\"Kost\"\"', 'Iwan', 'Kenrianto', 'Kenrianto, Iwan', 'Gramedia Pustaka Utama', 'Jakarta', '2020', NULL, '650', 'Bisnis', '650 IWA r', 'Beli', ' Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1460, 'KUPKBPK-KB-0228', 'Panduan Beternak Sapi Potong', 'A.S', 'Sudarmono', 'Sudarmono, A.S', 'Penebar Swadaya', 'Jakarta', '2017', NULL, '650', 'Bisnis', '650 A.  p', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1461, 'KUPKBPK-KB-0229', 'Berternak Ayam Kampung Super, Jawa Super Tanpa Bau', 'Nobertus', 'Kaleka', 'Kaleka, Nobertus', 'ARCITRA', 'Yogyakarta', '2015', NULL, '650', 'Bisnis', '650 NOR b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1462, 'KUPKBPK-KB-0230', '20 Tanaman Buah dalam Pot', 'Trias Kurnia', 'Dewi', 'Dewi, Trias Kurnia', 'Penebar Swadaya', 'Jakarta', '2019', NULL, '650', 'Bisnis', '650 TRI 2', 'beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1463, 'KUPKBPK-KB-0231', 'Hidroponik : Budi Daya Tanaman Tanpa Tanah', 'Reno', 'Suryani', 'Suryani, Reno', 'Arcitra', 'Yogyakarta', '2015', NULL, '650', 'Bisnis', '650 SUR h', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1464, 'KUPKBPK-KB-0232', 'Kolagen dan Gelatin', 'Sugihartono', NULL, 'Sugihartono', 'Lily Publisher', 'Yogyakarta', '2019', NULL, '650', 'Bisnis', '650 SUG k', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1465, 'KUPKBPK-KB-0233', 'Untung Selangit dari Agribisnis Minyak Asiri', 'Prasetya ', 'Ramadhan', 'Ramadhan, Prasetya ', 'Lily Publisher', 'Yogyakarta', '2019', NULL, '650', 'Bisnis', '650 PRA u', 'beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1466, 'KUPKBPK-KB-0234', 'Teknologi Enzim', 'R', 'Susanti', 'Susanti, R', 'Penerbit Andi', 'Yogyakarta', '2017', NULL, '613', 'Kesehatan Umum', '613 R.  t', NULL, 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1467, 'KUPKBPK-KB-0235', 'Seri Kesehatan Lingkungan Inspeksi Sanitasi Tempat-Tempat Umum', 'Imam', 'Santoso', 'Santoso, Imam', 'Gosyen Publishing', 'Yogyakarta', '2019', NULL, '613', 'Kesehatan Umum', '613 IMA s', 'beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1468, 'KUPKBPK-KB-0236', 'Menu Korea Anti Gagal', 'Paik Jong', 'Won', 'Won, Paik Jong', 'Gramedia Pustaka Utama', NULL, '2020', '9786230300523', '641', 'Masakan', '641 PAI m', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1469, 'KUPKBPK-KB-0237', 'Menu Pencegah dan Atasi Stroke', 'Tuti', 'Soenardi', 'Soenardi, Tuti', 'Gramedia Pustaka Utama', 'Jakarta', '2019', NULL, '641', 'Masakan', '641 TUT m', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1470, 'KUPKBPK-KB-0238', 'Home Cooking Ala Xander\"s Kitchen', 'Junita', NULL, 'Junita', 'PT.Gramedia Pustaka Utama', 'Jakarta', '2018', NULL, '641', 'Masakan', '641 JUN h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1471, 'KUPKBPK-KB-0239', 'Dapur Bekal', 'Clarissa', 'Noviany', 'Noviany, Clarissa', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020621821', '641', 'Masakan', '641 CLA d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1472, 'KUPKBPK-KB-0240', 'Cooking with Love ala Dapur Momychaa', 'Icha', 'Irawan', 'Irawan, Icha', 'Gramedia Pustaka Utama', 'Jakarta', '2020', NULL, '641', 'Masakan', '641 ICH c', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1473, 'KUPKBPK-KB-0241', 'DEBM Diet Enak, Bahagia Menyenangkan', 'Robert Hendrik', 'Liembono', 'Liembono, Robert Hendrik', 'Gramedia Pustaka Utama', 'Jakarta', '2019', NULL, '641', 'Masakan', '641 ROB d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1474, 'KUPKBPK-KB-0242', 'Politik Hukum Kekuasaan Kehakiman Indonesia', 'King Faisal', 'Sulaiman', 'Sulaiman, King Faisal', 'UII Press', 'Yogyakarta', '2017', '9786239006525', '340', 'Ilmu Hukum', '340 KIN p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1475, 'KUPKBPK-KB-0243', 'Meluruskan Arah Reformasi Birokrasi Di Indonesia', 'Abdul Hakim', 'Basyar', 'Basyar, Abdul Hakim', 'Fitra Publishing', 'Jakarta', '2018', '9786029635065', '342', 'Hukum Tata Negara', '342 ABD m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1476, 'KUPKBPK-KB-0244', 'Hukum Perjanjian dan Pertanahan', ' Irawan', 'Soerodjo', 'Soerodjo,  Irawan', 'Laksbang Pressindo', 'Yogyakarta', '2017', '9786027378759', '346', 'Hukum Privat', '346 IRA h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1477, 'KUPKBPK-KB-0245', 'Hukum Merger', 'Budi', 'Untung', 'Untung, Budi', 'Penerbit Andi', 'Yogyakarta', '2019', '9786230103384', '346', 'Hukum Privat', '346 BUD h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1478, 'KUPKBPK-KB-0246', 'Hukum Merger', 'Budi', 'Untung', 'Untung, Budi', 'Penerbit Andi', 'Yogyakarta', '2019', '9786230103384', '346', 'Hukum Privat', '346 BUD h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1479, 'KUPKBPK-KB-0247', 'Hukum Perbankan Syariah', 'Neneng', 'Nurhasanah', 'Nurhasanah, Neneng', 'Sinar Grafika', 'Jakarta', '2017', '9789790077607', '332', 'Bank', '332 NEN h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1480, 'KUPKBPK-KB-0248', 'Diplomasi Mengusut Kejahatan Lintas Negara', 'Yasonna H', 'Laoly', 'Laoly, Yasonna H', 'Pustaka Alvabet', 'Jakarta', '2019', '9786026577443', '342', 'Hukum Tata Negara', '342 YAS d', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1481, 'KUPKBPK-KB-0249', 'Diplomasi Mengusut Kejahatan Lintas Negara', 'Yasonna H', 'Laoly', 'Laoly, Yasonna H', 'Pustaka Alvabet', 'Jakarta', '2019', '9786026577443', '342', 'Hukum Tata Negara', '342 YAS d', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1482, 'KUPKBPK-KB-0250', 'perubahan Status Hak Guna Bangunan menjadi milik di indonesia', 'Rudi', 'Indrajaya', 'Indrajaya, Rudi', 'Penerbit Nuansa Aulia', 'Bandung', '2019', '9789790713314', '342', 'Hukum Tata Negara', '342 RUD p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1483, 'KUPKBPK-KB-0251', 'Semangat Dayak ', 'Aloysius', 'Aloy', 'Aloy, Aloysius', 'Kompas Media Nusantara', 'Jakarta', '2019', '9786232410077', '342', 'Hukum Tata Negara', '342 ALO s', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1484, 'KUPKBPK-KB-0252', 'Hukum Tanah Nasional', 'Bakhrul', 'Amal', 'Amal, Bakhrul', 'Thafa Media', 'Jakarta', '2017', '9786021351963', '342', 'Hukum Tata Negara', '342 BAK h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1485, 'KUPKBPK-KB-0253', '118 Resep Salad, Pasta, Cream Soup Steak, Skotel', 'Tim', 'Sedap', 'Sedap, Tim', 'Samindra Utama', 'Jakarta ', '2017', '979236526', '641', 'Masakan', '641 DAN 1', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1486, 'KUPKBPK-KB-0254', '105 Resep Aneka Snack', 'Tim Sedap', NULL, 'Tim Sedap', 'Samindra Utama', 'Jakarta ', '2017', '979236533', '641', 'Masakan', '641 RIY 1', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1487, 'KUPKBPK-KB-0255', 'Simple Moist Cake', 'Tintin', 'Rayner', 'Rayner, Tintin', 'Kawan Pustaka', 'Jakarta', '2017', NULL, '641', 'Masakan', '641 TIN s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1488, 'KUPKBPK-KB-0256', 'Menu Terfavorit Hit', 'Sheila', 'Gondowijoyo', 'Gondowijoyo, Sheila', 'Penerbit Andi', 'Yogyakarta', '2018', NULL, '641', 'Masakan', '641 SHE m', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1489, 'KUPKBPK-KB-0257', 'Resep Simple Frida', 'Firda Join', 'Coffee', 'Coffee, Firda Join', 'Kawan Pustaka', 'Jakarta', '2018', NULL, '641', 'Masakan', '641 FRI r', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1490, 'KUPKBPK-KB-0258', 'Top Resep Masakan Padang Asli Enak', 'Genta', 'Wijaya', 'Wijaya, Genta', 'Bhafana Publishing', 'Yogyakarta', '2019', NULL, '641', 'Masakan', '641 KOK t', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1491, 'KUPKBPK-KB-0259', 'Go Kitchen', 'Restu Dewi', 'Utami', 'Utami, Restu Dewi', 'Kawan Pustaka', 'Jakarta', '2020', NULL, '641', 'Masakan', '641 RES g', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1492, 'KUPKBPK-KB-0260', 'Go Kitchen 2', 'Restu Dewi', 'Utami', 'Utami, Restu Dewi', 'Kawan Pustaka', 'Jakarta', '2019', NULL, '641', 'Masakan', '641 RES g', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1493, 'KUPKBPK-KB-0261', 'Food Combining ', 'Andang W', 'Gunawan', 'Gunawan, Andang W', 'Gramedia Pustaka Utama', 'Jakarta', '2020', NULL, '641', 'Masakan', '641 AND f', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1494, 'KUPKBPK-KB-0262', 'Ilmu Kesehatan Masyarakat', 'Alexander Lucas', 'Slamet Riyadi', 'Slamet Riyadi, Alexander Lucas', 'Andi Offset (Penerbit Andi)', 'Yogyakarta', '2016', NULL, '613', 'Kesehatan Umum', '613 ALE i', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1495, 'KUPKBPK-KB-0263', 'Analisis Struktur', 'Agus', 'Setiawan', 'Setiawan, Agus', 'Penerbit Erlangga', 'Jakarta', '2015', NULL, '620', 'Ilmu Teknik', '620 AGU a', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1496, 'KUPKBPK-KB-0264', 'Rekayasa Hidrologi', 'Lily Montarcih', 'Limantara', 'Limantara, Lily Montarcih', 'Penerbit Andi', 'Yogyakarta', '2018', NULL, '620', 'Ilmu Teknik', '620 LIL r', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1497, 'KUPKBPK-KB-0265', 'Desain Rekayasa Gempa Berbasis Kinerja', 'Usman', 'Wijaya', 'Wijaya, Usman', 'Andi Offset (Penerbit Andi)', 'Yogyakarta', '2018', NULL, '620', 'Ilmu Teknik', '620 TAV d', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1498, 'KUPKBPK-KB-0266', 'menulis Berita di media massa Produksi Feature', 'Isnawijayani', NULL, 'Isnawijayani', 'Penerbit Andi', 'Yogyakarta', '2019', NULL, '659.2', 'Public Relations', '659.2 ISN m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1499, 'KUPKBPK-KB-0267', 'Analisa Struktur', 'E', 'Sutarman', 'Sutarman, E', 'Andi Offset (Penerbit Andi)', 'Yogyakarta', '2013', NULL, '620', 'Ilmu Teknik', '620 ENC a', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1500, 'KUPKBPK-KB-0268', 'Analisa Struktur', 'E', 'Sutarman', 'Sutarman, E', 'Andi Offset (Penerbit Andi)', 'Yogyakarta', '2013', NULL, '620', 'Ilmu Teknik', '620 ENC a', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1501, 'KUPKBPK-KB-0269', 'Nikel Indonesia', 'Irwandy', 'Arif', 'Arif, Irwandy', 'Gramedia Pustaka Utama', 'Jakarta', '2018', NULL, '620', 'Ilmu Teknik', '620  n', NULL, 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1502, 'KUPKBPK-KB-0270', 'Menulis Karya Tulis Ilmiah dengan Komputer', 'Wing Wahyu', 'Winarno', 'Winarno, Wing Wahyu', 'UPP STIM YKPN', 'Yogyakarta', '2019', NULL, '001.42', 'Penelitian', '001.42 WIN m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1503, 'KUPKBPK-KB-0271', 'Dasar-dasar Beton Bertulang', 'Tony Hartono', 'Bagio', 'Bagio, Tony Hartono', 'Penerbit Andi', 'Yogyakarta', '2019', NULL, '620', 'Ilmu Teknik', '620 TON d', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1504, 'KUPKBPK-KB-0272', 'Kekuatan Material', 'Muhib', 'Zainuri', 'Zainuri, Muhib', 'Penerbit Andi', 'Yogyakarta', '2019', NULL, '620', 'Ilmu Teknik', '620 MUH k', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1505, 'KUPKBPK-KB-0273', 'Manajemen Kontrak Konstruksi', 'Seng', 'Hansen', 'Hansen, Seng', 'Gramedia Pustaka Utama', 'Jakarta', '2017', NULL, '620', 'Ilmu Teknik', '620 SEN m', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1506, 'KUPKBPK-KB-0274', 'Pengelolaan  Lingkungan Hidup', 'Manik', NULL, 'Manik', 'Prenadamedia Group', 'Depok', '2018', NULL, '363', 'Lingkungan', '363 MAN p', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1507, 'KUPKBPK-KB-0275', 'revolusi Harapan', 'Erich', 'Fromm', 'Fromm, Erich', 'IRCiSoD', 'Yogyakarta', '2019', NULL, '920', 'Biografi', '920 ERI r', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1508, 'KUPKBPK-KB-0276', 'Dinamika Politik Hukum Di Indonesia', 'Abdul', 'Manan', 'Manan, Abdul', 'Kencana', 'Jakarta', '2018', NULL, '340', 'Ilmu Hukum', '340 ABD d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1509, 'KUPKBPK-KB-0277', 'Hukum Perikatan', 'Wawan Muhwan', 'Hariri', 'Hariri, Wawan Muhwan', 'Pustaka Setia', 'Bandung', '2011', '9789790761773', '346', 'Hukum Privat', '346 WAW h', 'beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1510, 'KUPKBPK-KB-0278', 'Hukum Administrasi Negara', 'W Riawan', 'Tjandra', 'Tjandra, W Riawan', 'Sinar Grafika', 'Jakarta', '2018', '9789790077737', '342', 'Hukum Tata Negara', '342 RIA h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1511, 'KUPKBPK-KB-0279', 'Etika Profesi Hukum', 'Farid', 'Wajdi', 'Wajdi, Farid', 'Sinar Grafika', 'Jakarta', '2019', '9789790078550', '340', 'Ilmu Hukum', '340 FAR e', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1512, 'KUPKBPK-KB-0280', 'Hukum Kontrak: Teori Teknik Penyusunan Kontrak', 'Salim H.S', NULL, ', Salim H.S', 'Sinar Grafika', 'Jakarta', '2017', '9793421479', '346', 'Hukum Privat', '346 SAL h', 'beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1513, 'KUPKBPK-KB-0281', 'Filsafat Hukum', 'Zainuddin ', 'Ali', 'Ali, Zainuddin ', 'Sinar Grafika', 'Jakarta', '2019', '9789793421506', '340', 'Ilmu Hukum', '340 ZAI f', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1514, 'KUPKBPK-KB-0282', 'Sistem Perencanaan dan Penganggaran Pemerintah Daerah', 'Suryo Sakti', 'Hadiwijoyo', 'Hadiwijoyo, Suryo Sakti', 'Rajawali Pers', 'Depok', '2019', '9786024258238', '336', 'keuangan daerah', '336 SUR s', 'beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1515, 'KUPKBPK-KB-0283', 'Ekonomi Pembangunan Daerah', 'elfindri', NULL, 'elfindri', 'Raja Grafindo Persada', 'Depok', '2019', '9786232310698', '330', 'Ekonomi', '330 ELF e', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1516, 'KUPKBPK-KB-0284', 'Perubahan dan Pengembangan Organisasi', 'Kaswan', NULL, 'Kaswan', 'Yrama Widya', 'Bandung', '2019', '9786023749959', '658.1', 'Organisasi', '658.1 KAS p', 'beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1517, 'KUPKBPK-KB-0285', 'Kedaulatan Indonesia Di Wilayah Perbatasan: Perspektif Multidimensi', 'Mita', 'Noveria', 'Noveria, Mita', 'Yayasan Pustaka Obor Indonesia', 'Jakarta', '2017', '9786024334239', '342', 'Hukum Tata Negara', '342 MIT k', 'beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1518, 'KUPKBPK-KB-0286', 'Perubahan dan Pengembangan Organisasi', 'Kaswan', NULL, 'Kaswan', 'Yrama Widya', 'Bandung', '2019', '9786023749959', '658.1', 'Organisasi', '658.1 KAS p', 'beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1519, 'KUPKBPK-KB-0287', 'Peningkatan Kapabilitas Pengelolaan Badan Layanan Umum & Badan Layanan Umum Daerah : Konsep dan Roadmap', 'IAI', NULL, 'IAI', 'Ikatan Akuntansi Indonesia', 'Jakarta', '2017', '9789799020659', '336', 'keuangan daerah', '336 IKA p', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1520, 'KUPKBPK-KB-0288', 'Mollo, Pembangunan dan Perubahan Iklim', 'Siti', 'Maemunah', 'Maemunah, Siti', 'Penerbit Buku Kompas', 'Jakarta', '2015', NULL, '363', 'Lingkungan', '363 SIT m', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1521, 'KUPKBPK-KB-0289', 'Ekonomika Desa : Teori, Strategi, Realisasi Pembangunan Desa', 'Mudrajad', 'Kuncoro', 'Kuncoro, Mudrajad', 'UPP STIM YKPN', 'Yogyakarta', '2019', '9786021286852', '320', 'kebijakan publik', '320 MUD e', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1522, 'KUPKBPK-KB-0290', 'Susunan Dalam Satu Naskah Undang - Undang Perpajakan', 'IAI', NULL, 'IAI', 'Ikatan Akuntan Indonesia', 'Jakarta', '2020', '9789799020550', '336', 'pajak', '336 IKA s', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1523, 'KUPKBPK-KB-0291', 'Administrasi Dan Akuntabilitas Publik', 'Rakhmat', NULL, 'Rakhmat', 'Penerbit Andi', 'Yogyakarta', '2018', '9789792961966', '320', 'kebijakan publik', '320 RAK a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1524, 'KUPKBPK-KB-0292', 'Teori Perundang undangan: Prinsip-prinsip Legislasi, Hukum Perdata dan Hukum Pidana', 'Jeremy', 'Bentham', 'Bentham, Jeremy', 'Nuansa Cendekia', 'Bandung', '2019', '9786023500871', '340', 'Ilmu Hukum', '340 JER t', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1525, 'KUPKBPK-KB-0293', 'Sistem Peradilan di Indonesia Dalam Teori dan Praktik', 'Adi', 'Sulistiyono', 'Sulistiyono, Adi', 'Prenadamedia Group', 'Depok', '2018', '9786024222116', '340', 'Ilmu Hukum', '340 ADI s', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1526, 'KUPKBPK-KB-0294', 'Legal Risk Management BUMN', 'Wawan', 'Zulmawan', 'Zulmawan, Wawan', 'Prenadamedia Group', 'Jakarta', '2019', '9786232180994', '658', 'Hukum Tata Negara', '658 WAW l', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1527, 'KUPKBPK-KB-0295', 'Proyek Infrastruktur Sengketa Konstruksi', 'Sulistijo Sidarto', 'Mulyo', 'Mulyo, Sulistijo Sidarto', 'Prenadamedia Group', 'Depok', '2018', NULL, '620', 'Ilmu Teknik', '620 SUL p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1528, 'KUPKBPK-KB-0296', 'Manajemen Kepelabuhanan Edisi Kedua', 'Lasse', 'Lasse', 'Lasse, Lasse', 'Raja Grafindo Persada', 'Jakarta', '2016', '9789797699215', '658', 'Manajemen', '658 LAS m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1529, 'KUPKBPK-KB-0297', 'Geometri Ruang', 'Sukestiyarno', NULL, 'Sukestiyarno', 'Penerbit Andi', 'Yogyakarta', '2019', NULL, '516', 'Geometri', '516 SUK g', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1530, 'KUPKBPK-KB-0298', 'Otonomi Manajemen Keuangan Daerah', 'Mardiasmo', NULL, 'Mardiasmo', ' Penerbit Andi', 'Yogyakarta', '2018', '978979970562', '336', 'keuangan daerah', '336 MAR o', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1531, 'KUPKBPK-KB-0299', 'Klasifikasi Tanah Di Indonesia', 'Djunaedi A', 'Rachim', 'Rachim, Djunaedi A', 'Pustaka Reka Cipta', 'Bandung', '2018', '9786021311271', '342', 'Hukum Tata Negara', '342 DJU k', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1532, 'KUPKBPK-KB-0300', 'Mengenal Teori-Teori Politik: dari Sistem Politik Sampai Korupsi', 'Toni Andrianus', 'Pito', 'Pito, Toni Andrianus', 'Nuansa Cendekia', 'Bandung', '2019', '9786023500888', '364', 'Korupsi', '364 TON m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1533, 'KUPKBPK-KB-0301', 'Manfaat Mediasi sebagai Alternatif Penyelesaian Sengketa', 'Susanti Adi', 'Nugroho', 'Nugroho, Susanti Adi', 'Prenadamedia Group', 'Jakarta', '2019', '9786232180147', '342', 'Hukum Tata Negara', '342 SUS m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1534, 'KUPKBPK-KB-0302', 'Seri Analisi Kebijakan Fisikal, Kebijakan Perpajakan: Optimalisasi Insetif & Kesinambungan Fiskal', 'B. Raksaka', 'Mahi', 'Mahi, B. Raksaka', 'Gramedia Pustaka Utama', 'Jakarta', '2018', '9786020630311', '320', 'kebijakan publik', '320 RAK s', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1535, 'KUPKBPK-KB-0303', 'Pendekatan Baru Perencanaan Pembangunan Daerah', 'Widodo Sigit', 'Pudjianto', 'Pudjianto, Widodo Sigit', 'Kompas Media Nusantara', 'Jakarta', '2019', '9786024127442', '320', 'Kebijakan Publik', '320 WID p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1536, 'KUPKBPK-KB-0304', 'Pengujian Konstitusionalitas Perda', 'Saldi', 'Isra', 'Isra, Saldi', 'Kepustakaan Populer gramedia', 'Jakarta', '2020', '9786024814823', '342', 'Hukum Tata Negara', '342 ISM p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1537, 'KUPKBPK-KB-0305', 'Menguak Teori Hukum (Legal Theory) dan Teori Peradilan (Judicialprudence) termasuk Interpretasi Undang- Undang (Legisprudence)', 'Achmad', 'Ali', 'Ali, Achmad', 'Kencana', 'Jakarta', '2009', '9789791486705', '340', 'Ilmu Hukum', '340 ACH m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1538, 'KUPKBPK-KB-0306', 'Struktur Beton Bertulang Tahan Gempa', 'Anugrah', 'Pamungkas', 'Pamungkas, Anugrah', 'Andi Offset (Penerbit Andi)', 'Yogyakarta', '2018', NULL, '620', 'Ilmu Teknik', '620 ANU s', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1539, 'KUPKBPK-KB-0307', 'Bioteknologi Dalam Bahan Bakar Nonfosil', 'Suharto', NULL, 'Suharto', 'Andi Offset (Penerbit Andi)', 'Yogyakarta', '2017', NULL, '363', 'Lingkungan', '363 SUH b', NULL, 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1540, 'KUPKBPK-KB-0308', 'Perancangan Geometrik Jalan: Standar dan dasar-Dasar Perancangan', 'Suwardo', NULL, 'Suwardo', 'Gadjah Mada University Press', 'Yogyakarta', '2019', NULL, '620', 'Ilmu Teknik', '620 SUW p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1541, 'KUPKBPK-KB-0309', 'Pertanahan, Agraria, dan Tata Ruang', 'Waskito', NULL, 'Waskito', 'Prenadamedia Group', 'Jakarta', '2017', '9786024221546', '342', 'Hukum Tata Negara', '342 WAS p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1542, 'KUPKBPK-KB-0310', 'Sains Perubahan Iklim', 'Putri', 'Setiani', 'Setiani, Putri', 'Bumi Aksara', 'Jakarta', '2020', NULL, '363', 'Lingkungan', '363 PUT s', NULL, 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1543, 'KUPKBPK-KB-0311', 'Karakterisasi Material', 'Ridwan Abdullah', 'Sani', 'Sani, Ridwan Abdullah', 'Bumi Aksara', 'Jakarta', '2019', NULL, '620', 'Ilmu Teknik', '620 RID k', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1544, 'KUPKBPK-KB-0312', 'Analisis dan Perancangan Fondasi I Edisi Ketiga', 'Hary Christady', 'Hadrdiyanto', 'Hadrdiyanto, Hary Christady', 'Gadjah Mada University Press', 'Yogyakarta', '2017', NULL, '620', 'Ilmu Teknik', '620 HAR a', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1545, 'KUPKBPK-KB-0313', 'Mengapa Negara Gagal', 'Daron', 'Acemoglu', 'Acemoglu, Daron', ' Elek Media Komputindo', 'Jakarta', '2020', '9786020402024', '340', 'Ilmu Hukum', '340 DAR m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1546, 'KUPKBPK-KB-0314', 'Korupsi: Melacak Arti, Menyimak Implikasi', 'B Herry', 'Priyono', 'Priyono, B Herry', 'Gramedia Pustaka Utama', 'Jakarta', '2018', '9786020619057', '364', 'Korupsi', '364 B.  k', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1547, 'KUPKBPK-KB-0315', 'Inovasi Birokrasi: Membuat Kerja Birokrat Lebih Bermakna', 'Gogor Oko', 'Nurharyoko', 'Nurharyoko, Gogor Oko', 'Kepustakaan Populer Gramedia', 'Jakarta', '2020', '9786024813635', '342', 'Hukum Tata Negara', '342 GOG i', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1548, 'KUPKBPK-KB-0316', 'Manajemen Pajak: Strategi Pintar Merencanakan dan Mengelola Pajak dan Bisnis', 'Indra Mahardika', 'Putra', 'Putra, Indra Mahardika', 'penerbit Quadrant', 'Yogyakarta', '2019', '9786237324546', '336', 'pajak', '336 IND m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1549, 'KUPKBPK-KB-0317', 'Ekonomi Beras Kontemporer: Data Baru, Tantangan Baru', 'Bustanul', 'Arifin', 'Arifin, Bustanul', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9786020636863', '330', 'Ekonomi', '330 BUS e', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1550, 'KUPKBPK-KB-0318', 'Ekonomi Energi Teori dan Aplikasi', 'Purnomo', 'Yusgiantoro', 'Yusgiantoro, Purnomo', 'yayasan Purnomo Yusgiantoro', 'Jakarta', '2018', '978602522409', '330', 'Ekonomi', '330 PUR e', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1551, 'KUPKBPK-KB-0319', 'Manajemen risiko : pengelolaan keuangan daerah sebagai upaya peningkatan transparansi dan akuntabilitas publik', 'Dadang', 'Suwanda', 'Suwanda, Dadang', ' Remaja Rosdakarya', 'Bandung', ' 2019', NULL, '336', 'keuangan daerah', '336 DAD m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1552, 'KUPKBPK-KB-0320', 'Asah Pikiran Jadilah Brilian dan Jadi Diri Sendiri', 'Margriet', 'Sitskoorn', 'Sitskoorn, Margriet', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230015755', '658.3', 'Manajemen SDM', '658.3 MAR a', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1553, 'KUPKBPK-KB-0321', 'Perubahan Kecil yang Memberikan Hasil Luar Biasa: Atomic Habits', 'James', 'Clear', 'Clear, James', 'Gramedia Pustaka Utama', 'Jakarta', '2020', NULL, '658.3', 'Manajemen SDM', '658.3 JAM p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1554, 'KUPKBPK-KB-0322', 'Ekonomi Teknik', 'Muhammad Faisal', 'Ibrahim', 'Ibrahim, Muhammad Faisal', 'Penerbit Andi', 'Yogyakarta', '2020', '9786230104183', '330', 'Ekonomi', '330 MUH e', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1555, 'KUPKBPK-KB-0323', 'Pajak 4.0: Tantangan dan Dinamika Perpajakan di Tengah Revolusi Industri Digital dari Kacamata Akademisi dan Praktisi', 'Gunadi', NULL, 'Gunadi', 'Kontan Publishing', 'Jakarta', '2019', '9786027420090', '336', 'pajak', '336 GUN p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1556, 'KUPKBPK-KB-0324', 'Pemahaman Administrasi, Organisasi, dan Manajemen', 'Arif Yusuf', 'Hamali', 'Hamali, Arif Yusuf', 'CAPS (Center For Academic Publishing Service)', 'Yogyakarta', '2019', '9786029324891', '658.1', 'Organisasi', '658.1 ARI p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1557, 'KUPKBPK-KB-0325', 'Ekonomi Lingkungan: Suatu Tinjauan Teoritik dan Praktek', 'Effendie', NULL, 'Effendie', 'UPP STIM YKPN', 'Yogyakarta', '2019', '9786021286951', '330', 'Ekonomi', '330 EFF e', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1558, 'KUPKBPK-KB-0326', 'industri 4.0: Ketika Dunia Dalam Satu Genggaman', 'Mix Marketing', 'Communication', 'Communication, Mix Marketing', 'Asoka Aksara', 'Jakarta', '2019', NULL, '330', 'Ekonomi', '330 MIX i', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1559, 'KUPKBPK-KB-0327', 'Revolusi Industri Keempat', 'Klaus', 'Schwab', 'Schwab, Klaus', 'Gramedia Pustaka Utama', 'Jakarta', '2020', NULL, '330', 'Ekonomi', '330 KLA r', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1560, 'KUPKBPK-KB-0328', 'Human Idea: Mengelola Karyawan Generasi Now', 'Premudianto', NULL, 'Premudianto', 'Penerbit Andi', 'Yogyakarta', '2019', '9786230103346', '658.3', 'Manajemen SDM', '658.3 PRA h', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1561, 'KUPKBPK-KB-0329', 'Investasi dan Pasar Modal di Indonesia', 'Gusti Ayu Ketut', 'Rencana Sari Dewi', 'Rencana Sari Dewi, Gusti Ayu Ketut', 'Raja Grafindo Persada', 'Depok', '2018', '9786024253585', '332', 'Investasi', '332 GUS i', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1562, 'KUPKBPK-KB-0330', 'Cerdas Investasi Properti', ' Budi', 'Untung', 'Untung,  Budi', 'Penerbit ANDI', 'Yogyakarta', '2017', '9789792963458', '332', 'Investasi', '332 BUD c', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1563, 'KUPKBPK-KB-0331', 'Manajemen bencana : pengantar isu-isu strategis', 'Wignyo', 'Adiyoso', 'Adiyoso, Wignyo', 'Bumi Aksara', 'Jakarta', ' 2018', '9786024445072', '658', 'Manajemen', '658 WIG m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1564, 'KUPKBPK-KB-0332', 'Nabung Saham Sekarang', 'Ellen', 'May', 'May, Ellen', 'Gramedia Pustaka Utama', 'Jakarta', '2017', NULL, '332', 'Investasi', '332 ELL n', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1565, 'KUPKBPK-KB-0333', 'SAK: Standar Akuntansi Keuangan Syariah', 'IAI', NULL, 'IAI', 'Ikatan Akuntan Indonesia', 'Jakarta', '2020', '9789799020581', '657', 'Akuntansi', '657 IKA s', 'Hibah', 'Koleksi Khusus Reading Corner', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1566, 'KUPKBPK-KB-0334', 'SAK: Standar Akuntansi Keuangan Entitas Mikro, Kecil, Dan Menengah', 'IAI', NULL, 'IAI', 'Ikatan Akuntan Indonesia', 'Jakarta', '2018', '9789799020598', '657', 'Akuntansi', '657 IKA s', 'Hibah', 'Koleksi Khusus Reading Corner', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1567, 'KUPKBPK-KB-0335', 'SAK: Standar Akuntansi Keuangan Entitas Tanpa Akuntabilitas Publik', 'IAI', NULL, 'IAI', 'Ikatan Akuntan Indonesia', 'Jakarta', '2019', '9789799020611', '657', 'Akuntansi', '657 IKA s', 'Hibah', 'Koleksi Khusus Reading Corner', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1568, 'KUPKBPK-KB-0336', 'Investasi Secara Benar: Mengungkap Rahasia Forex', 'Frento T', 'Suharto', 'Suharto, Frento T', 'Elex Media Komputindo', 'Jakarta', '2019', NULL, '332', 'Investasi', '332 FRE i', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1569, 'KUPKBPK-KB-0337', 'Filosofi Teras : Filsafat Yunani-Romawi Kuno Untuk Mental Tangguh Masa Kini', 'Henry', 'Manampiring', 'Manampiring, Henry', 'Kompas Media Nusantara', 'Jakarta', '2019', '9786024125189', '320', 'kebijakan publik', '320 HEN f', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1570, 'KUPKBPK-KB-0338', 'Sukses Wawancara: Bagaimana Agar Wawancara Anda Tidak Gagal', 'Prima Purnama', 'Sari', 'Sari, Prima Purnama', 'Quandrant', 'Yogyakarta', '2018', NULL, '658.3', 'Manajemen SDM', '658.3 PRI s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1571, 'KUPKBPK-KB-0339', 'Bicara Itu Ada Seninya', 'Oh Su', 'Hyang', 'Hyang, Oh Su', 'Buana Ilmu Populer', 'Jakarta', '2019', NULL, '659.2', 'Public Relations', '659.2 OH  b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1572, 'KUPKBPK-KB-0340', 'Bicara Itu Ada Seninya', 'Oh Su', 'Hyang', 'Hyang, Oh Su', ' Bhuana Ilmu Populer', 'Jakarta', '2020', NULL, '659.2', 'Public Relations', '659.2 OH  b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1573, 'KUPKBPK-KB-0341', 'Perubahan Model Kepemimpinan Ideal', ' Larry ', 'Stout', 'Stout,  Larry ', 'Lautan Pustaka', 'Yogyakarta', '2019', NULL, '658.1', 'Organisasi', '658.1 LAR p', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1574, 'KUPKBPK-KB-0342', 'Rumus Bahagia: Model Kebahagiaan Yang Hakiki', 'Mo', 'Gawdat', 'Gawdat, Mo', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9786020624303', '658.3', 'Manajemen SDM', '658.3 MO  r', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1575, 'KUPKBPK-KB-0343', 'The Power Of Habit: Dahsyatnya Kebiasaan', 'Charles', 'Duhigg', 'Duhigg, Charles', 'Kepustakaan Populer gramedia', 'Jakarta', '2019', NULL, '658.3', 'Manajemen SDM', '658.3 CHA t', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1576, 'KUPKBPK-KB-0344', 'Cara Bekerja Sama dan Memimpin Orang yang tidak sama dengan Anda', 'Kelly ', 'McDonald', 'McDonald, Kelly ', 'Elex Media Komputindo', 'Jakarta', '2019', NULL, '658.1', 'Organisasi', '658.1 KEL c', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1577, 'KUPKBPK-KB-0345', 'Cara Bekerja Sama dan Memimpin Orang yang tidak sama dengan Anda', 'Kelly ', 'McDonald', 'McDonald, Kelly ', 'Elex Media Komputindo', 'Jakarta', '2019', NULL, '658.1', 'Organisasi', '658.1 KEL c', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1578, 'KUPKBPK-KB-0346', 'Buku Antimalas dan Suka Menunda + Panduan Mengatasinya', 'Choi', 'Myung gi', 'Myung gi, Choi', 'bhuana Ilmu Populer', 'Jakarta', '2020', NULL, '658.3', 'Manajemen SDM', '658.3 CHO b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1579, 'KUPKBPK-KB-0347', 'Mendaki Tangga Yang Salah', 'Eric', 'Barker', 'Barker, Eric', 'Gramedia Pustaka Utama', 'Jakarta', '2019', NULL, '658.3', 'Manajemen SDM', '658.3 ERI m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1580, 'KUPKBPK-KB-0348', 'The Joy Of Leadership: Psikologi Positif untuk menjadi Pemimpin yang Lebih Berarti', 'Tal', 'Ben-Shahar', 'Ben-Shahar, Tal', 'Elex Media Komputindo', 'Jakarta', '2019', NULL, '658.1', 'Organisasi', '658.1 TAL t', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1581, 'KUPKBPK-KB-0349', 'Mindset: Mengubah Pola Berpikir Untuk Perubahan Besar dalam hidup Anda', 'Carol S', 'Dweck', 'Dweck, Carol S', 'Bentara Aksara Cahaya', 'Tangerang Selatan', '2019', NULL, '658.3', 'Manajemen SDM', '658.3 CAR m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23');
INSERT INTO `books` (`id`, `book_number`, `book_title`, `book_firstname`, `book_lastname`, `book_author`, `book_publisher`, `book_city`, `book_year`, `book_isbn`, `book_class`, `book_subject`, `book_classcode`, `book_acq`, `book_location`, `book_nup`, `book_brand`, `book_image`, `book_createdby`, `book_updatedby`, `book_isavailable`, `created_at`, `updated_at`) VALUES
(1582, 'KUPKBPK-KB-0350', 'Disruption : tak ada yang tak bisa diubah sebelum dihadapi motivasi saja tidak cukup', 'Rhenald', 'Kasali', 'Kasali, Rhenald', 'Gramedia Pustaka Utama', 'Jakarta', '2019', NULL, '658.3', 'Manajemen SDM', '658.3 RHE d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1583, 'KUPKBPK-KB-0351', 'Panduan Penggunaan dan Pengelolaan Dana Desa', 'Yasonna H', 'Laoly', 'Laoly, Yasonna H', 'Grasindo', 'Jakarta', '2019', '9786020522081', '320', 'kebijakan publik', '320 ICU p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1584, 'KUPKBPK-KB-0352', 'Optimalisasi Potensi Desa di Indonesia', 'Icuk rangga ', 'Bawono', 'Bawono, Icuk rangga ', 'Grasindo', 'Jakarta', '2019', '9786020522098', '320', 'Kebijakan publik', '320 ICU o', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1585, 'KUPKBPK-KB-0353', 'Birokrasi Digital', 'Yasonna H', 'Laoly', 'Laoly, Yasonna H', 'Pustaka Alvabet', 'Tanggerang Selatan', '2019', '9786029193893', '342', 'Hukum Tata Negara', '342 YAS b', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1586, 'KUPKBPK-KB-0354', 'Sistem Peradilan Pidana Terpadu dan Sistem Penegakan Hukum di Indonesia', 'Edi', 'Setiadi', 'Setiadi, Edi', 'Prenadamedia', 'Jakarta', '2017', '9786024221331', '342', 'Hukum Tata Negara', '342 EDI s', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1587, 'KUPKBPK-KB-0355', 'Hukum Administrasi Negara', 'Ridwan', 'HR', 'HR, Ridwan', 'RajaGrafindo Persada', 'Jakarta', '2013', '9789797690288', '342', 'Hukum Tata Negara', '342 RID h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1588, 'KUPKBPK-KB-0356', 'Holding Company BUMN', 'Toto', 'Pranoto', 'Pranoto, Toto', 'LM FE UI', 'Jakarta', '2019', NULL, '336', 'Keuangan Negara', '336 TOT h', '0', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1589, 'KUPKBPK-KB-0357', 'Seri Buku Tempo : Soedirman - Seorang Panglima, Seorang Martir', 'Tempo', NULL, 'Tempo', 'Kepustakaan Populer Gramedia (KPG)', 'Jakarta', '2017', NULL, '920', 'Biografi', '920 TEM s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1590, 'KUPKBPK-KB-0358', 'Hatta Jejak Yang Melampaui Zaman', 'Tempo', NULL, 'Tempo', 'Kepustakaan Populer Gramedia (KPG)', 'Jakarta', '2015', NULL, '920', 'Biografi', '920 TEM h', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1591, 'KUPKBPK-KB-0359', 'Seri Buku Tempo: Sukarno - Paradoks Revolusi Indonesia', 'Tempo', NULL, 'Tempo', 'Kepustakaan Populer Gramedia (KPG)', 'Jakarta', '2018', NULL, '920', 'Biografi', '920 TEM s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1592, 'KUPKBPK-KB-0360', 'The Lost Symbol', 'Dan', 'Brown', 'Brown, Dan', 'Bentang', 'Yogyakarta', '2010', NULL, '823', 'Fiksi', '823 BRO t', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1593, 'KUPKBPK-KB-0361', 'Untuk Republik', 'Faisal', 'Basri', 'Basri, Faisal', 'Indonesia Reasearch and Strategic Analysis', 'Jakarta', '2019', NULL, '920', 'Biografi', '920 FAI u', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1594, 'KUPKBPK-KB-0362', 'Nusantara: Sejarah Indonesia', 'Bernard H.M.', 'Vlekke', 'Vlekke, Bernard H.M.', 'Kepustakaan Populer Gramedia', 'JAKARTA', '2008', NULL, '300', 'Sosial', '300 VLE n', 'Beli', 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1595, 'KUPKBPK-KB-0363', 'Who Rules The World', 'Noam', 'Chomsky', 'Chomsky, Noam', 'Penerbit Bentang', 'Yogyakarta', '2018', '9786022912873', '300', 'Sosial', '300 NOA w', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1596, 'KUPKBPK-KB-0364', 'How to Have A Beautiful Mind', 'Edward', 'De Bono', 'De Bono, Edward', 'Elex Media Komputindo', 'Jakarta', '2020', NULL, '658.3', 'Manajemen SDM', '658.3 EDW h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1597, 'KUPKBPK-KB-0365', 'Good is Not Enough', 'Frans', 'Lepong', 'Lepong, Frans', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230013546', '658.3', 'Manajemen SDM', '658.3 FRA g', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1598, 'KUPKBPK-KB-0366', 'Orang-Orang Biasa', 'Andrea', 'Hirata', 'Hirata, Andrea', 'Bentang Pustaka', 'Yogyakarta', '2019', NULL, '813', 'Fiksi', '813 AND o', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1599, 'KUPKBPK-KB-0367', 'Critical Eleven', 'Ika', 'Natassa', 'Natassa, Ika', 'Gramedia Pustaka Utama', 'Jakarta', '2015', NULL, '813', 'Fiksi', '813 IKA c', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1600, 'KUPKBPK-KB-0368', 'Marianne', 'Risa', 'Saraswati', 'Saraswati, Risa', 'Bukune', 'Jakarta', '2019', '9786022203193', '813', 'Fiksi', '813 RIS m', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1601, 'KUPKBPK-KB-0369', 'Seni Hidup Minimalis', 'Francine', 'Jay', 'Jay, Francine', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020398440', '658.3', 'Manajemen SDM', '658.3 JAY s', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1602, 'KUPKBPK-KB-0370', 'When Everything Feels Like Romcoms', 'Candra', 'Aditya', 'Aditya, Candra', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9786024813789', '813', 'Fiksi', '813 CAN w', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1603, 'KUPKBPK-KB-0371', 'BPK dalam Sistem Ketatanegaraan', 'Baharuddin', 'Aritonang', 'Aritonang, Baharuddin', 'Kepustakaan Populer Gramedia', 'Jakarta', '2019', '9786024243593', '336', 'Keuangan Negara', '336 ARI b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1604, 'KUPKBPK-KB-0372', 'The Alpha Girl\"s Guide', 'Henry', 'Manampiring', 'Manampiring, Henry', 'Gagas Media', 'Jakarta', '2015', NULL, '658.3', 'Manajemen SDM', '658.3 HEN t', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1605, 'KUPKBPK-KB-0373', 'Seri Kenapa Ya Jilid 1', 'Isabelle', 'Fougere', 'Fougere, Isabelle', 'Bhuana Ilmu Populer', 'Jakarta', '2013', '9786022491446', '500', 'Anak-anak', '500 ISA s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1606, 'KUPKBPK-KB-0374', 'Seri Kenapa Ya Jilid 2', 'Valentin', 'Verthe', 'Verthe, Valentin', 'Bhuana Ilmu Populer', 'Jakarta', '2018', '9786022494591', '500', 'Anak-anak', '500 VAL s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1607, 'KUPKBPK-KB-0375', 'Seri Kenapa Ya Jilid 3', 'Isabelle', 'Fougere', 'Fougere, Isabelle', 'Bhuana Ilmu Populer', 'Jakarta', '2014', '9786022496397', '500', 'Anak-anak', '500 LAR s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1608, 'KUPKBPK-KB-0376', 'Seri Kenapa Ya Jilid 4', 'Emilie', 'Gillet', 'Gillet, Emilie', 'Bhuana Ilmu Populer', 'Jakarta', '2016', '9786023941179', '500', 'Anak-anak', '500 EMI s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1609, 'KUPKBPK-KB-0377', 'Seri Kenapa Ya Jilid 5', 'Emilie', 'Gillet', 'Gillet, Emilie', 'Bhuana Ilmu Populer', 'Jakarta', '2016', '9786023941605', '500', 'Anak-anak', '500 ELI s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1610, 'KUPKBPK-KB-0378', 'Ensiklopedia Anak Hebat : Tumbuhan', 'Jung', 'Myung-suk', 'Myung-suk, Jung', 'Bhuana Ilmu Populer', 'Jakarta', '2014', '9786022495710', '582', 'Anak-anak', '582 JAN e', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1611, 'KUPKBPK-KB-0379', 'Ensiklopedia Anak Hebat : Olahraga', 'Park', 'Young-ran', 'Young-ran, Park', 'Bhuana Ilmu Populer', 'Jakarta', '2012', '9789790749689', '796', 'Anak-anak', '796 PAR e', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1612, 'KUPKBPK-KB-0380', 'Mengapa? 1.111 Pertanyaan dan Jawaban', 'Crispin', 'Boyer', 'Boyer, Crispin', 'Kepustakaan Populer Gramedia', 'Jakarta', '2016', '9786024240653', '500', 'Anak-anak', '500 CRI m', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1613, 'KUPKBPK-KB-0381', 'National Geographic Kids Predatorpedia', 'Christina', 'Wilsdon', 'Wilsdon, Christina', 'Kepustakaan Populer Gramedia', 'Jakarta', '2019', '9786024812140', '500', 'Anak-anak', '500 CHR n', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1614, 'KUPKBPK-KB-0382', 'National Geographic Kids Antariksapedia', 'David A', 'Aguilar', 'Aguilar, David A', 'Kepustakaan Populer Gramedia', 'Jakarta', '2016', '9786024241094', '500', 'Anak-anak', '500 DAV n', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1615, 'KUPKBPK-KB-0383', 'National Geographic Kids Atlas Antariksa', 'Carolyn', 'Decristofano', 'Decristofano, Carolyn', 'Kepustakaan Populer Gramedia', 'Jakarta', '2018', '9786024810108', '500', 'Anak-anak', '500 CAR n', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1616, 'KUPKBPK-KB-0384', 'National Geographic Kids Lautpedia', 'Christina', 'Wilsdon', 'Wilsdon, Christina', 'Kepustakaan Populer Gramedia', 'Jakarta', '2017', '9786024244279', '500', 'Anak-anak', '500 CHR n', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1617, 'KUPKBPK-KB-0385', 'Selamat Tinggal', 'Tere', 'Liye', 'Liye, Tere', NULL, NULL, NULL, NULL, '813', 'Fiksi', '813 TER s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:23', '2023-01-04 09:22:23'),
(1618, 'KUPKBPK-KB-0386', 'Hans', 'Risa', 'Saraswati', 'Saraswati, Risa', 'Bukune', 'Jakarta', '2017', '9786022202165', '813', 'Fiksi', '813 RIS h', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1619, 'KUPKBPK-KB-0387', 'William', 'Risa', 'Saraswati', 'Saraswati, Risa', 'Bukune', 'Jakarta', '2017', '9786022202264', '813', 'Fiksi', '813 RIS w', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1620, 'KUPKBPK-KB-0388', 'Samantha', 'Risa', 'Saraswati', 'Saraswati, Risa', 'Bukune', 'Jakarta', '2018', '9786022202585', '813', 'Fiksi', '813 RIS s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1621, 'KUPKBPK-KB-0389', 'Imperfect', 'Meira', 'Anastasia', 'Anastasia, Meira', 'Gramedia Pustaka Utama', 'Jakarta', '2018', '9786020382180', '813', 'Fiksi', '813 MEI i', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1622, 'KUPKBPK-KB-0390', 'DIVORTIARE', 'Ika', 'Natassa', 'Natassa, Ika', 'Gramedia Pustaka Utama', 'Jakarta', '2008', '9789792288087', '813', 'Fiksi', '813 IKA d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1623, 'KUPKBPK-KB-0391', 'Luka Kata: Sekumpulan Puisi Candra Malik', 'Candra', 'Malik', 'Malik, Candra', 'Penerbit Grasindo', 'Jakarta', '2019', '9786020520797', '297', 'Islam', '297 CAN l', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1624, 'KUPKBPK-KB-0392', 'Unlimited You', 'Wirda ', 'Mansur', 'Mansur, Wirda ', 'KATA DEPAN', 'Depok', '2020', '9786237567196', '297', 'Islam', '297 WIR u', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1625, 'KUPKBPK-KB-0393', 'Sayap sayap Patah', 'Kahlil', 'Gibran', 'Gibran, Kahlil', 'Moka Media', 'Jakarta', '2018', '9786026154361', '813', 'Fiksi', '813 KAH s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1626, 'KUPKBPK-KB-0394', 'Merdeka Sejak Hati', 'A.', 'Fuadi', 'Fuadi, A.', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020622965', '813', 'Fiksi', '813 A.  m', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1627, 'KUPKBPK-KB-0395', 'Never Be Alone', 'Chelsea', 'Karina', 'Karina, Chelsea', 'SUNSET ROAD', 'Depok', '2020', '9786239115180', '813', 'Fiksi', '813 CHE n', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1628, 'KUPKBPK-KB-0396', 'Best Husband', 'Sa', 'Mazidd', 'Mazidd, Sa', 'Nauli Media', 'Yogyakarta', '2018', '9786025713026', '813', 'Fiksi', '813 SA_ b', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1629, 'KUPKBPK-KB-0397', 'Tenung', 'Dimas Tri', 'Aditiyo', 'Aditiyo, Dimas Tri', 'Bukune Kreatif Cipta', 'Jakarta', '2019', '9786022203025', '813', 'Fiksi', '813 DIM t', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1630, 'KUPKBPK-KB-0398', 'One Piece: The Legend of Thousand Year Dragon', 'Eiichiro ', 'Oda', 'Oda, Eiichiro ', 'Elex Media Komputindo', 'Jakarta', '2018', '9786020487403', '823', 'komik', '823 EII o', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1631, 'KUPKBPK-KB-0399', 'One Piece: Chopper`s Kingdom on The Island of Strange Animals', 'Eiichiro ', 'Oda', 'Oda, Eiichiro ', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020489001', '823', 'komik', '823 EII o', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1632, 'KUPKBPK-KB-0400', 'One Piece Blue', 'Eiichiro ', 'Oda', 'Oda, Eiichiro ', 'Elex Media Komputindo', 'Jakarta', '2017', '9786020274461', '823', 'komik', '823 EII o', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1633, 'KUPKBPK-KB-0401', 'One Piece Red', 'Eiichiro ', 'Oda', 'Oda, Eiichiro ', 'Elex Media Komputindo', 'Jakarta', '2016', '9786020289663', '823', 'komik', '823 EII o', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1634, 'KUPKBPK-KB-0402', 'One Piece Green', 'Eiichiro ', 'Oda', 'Oda, Eiichiro ', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020491080', '823', 'komik', '823 EII o', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1635, 'KUPKBPK-KB-0403', 'One Piece Yellow', 'Eiichiro ', 'Oda', 'Oda, Eiichiro ', 'Elex Media Komputindo', 'Jakarta', '2018', '9786020452081', '823', 'komik', '823 EII o', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1636, 'KUPKBPK-KB-0404', 'One Piece Blue Deep', 'Eiichiro ', 'Oda', 'Oda, Eiichiro ', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020499697', '823', 'komik', '823 EII o', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1637, 'KUPKBPK-KB-0405', 'One Piece Party 1', 'Eiichiro ', 'Oda', 'Oda, Eiichiro ', 'Elex Media Komputindo', 'Jakarta', '2018', '9786020478562', '823', 'komik', '823 EII o', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1638, 'KUPKBPK-KB-0406', 'Dragon Ball Super Vol. 1', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020490489', '823', 'komik', '813 AKI d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1639, 'KUPKBPK-KB-0407', 'Dragon Ball Super Vol. 2', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020496627', '823', 'komik', '813 AKI d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1640, 'KUPKBPK-KB-0408', 'Dragon Ball Super Vol. 3', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020498591', '823', 'komik', '813 AKI d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1641, 'KUPKBPK-KB-0409', 'Dragon Ball Super Vol. 4', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230000690', '823', 'komik', '823 AKI d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1642, 'KUPKBPK-KB-0410', 'Dragon Ball Super Vol. 5', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230002816', '823', 'komik', '823 AKI d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1643, 'KUPKBPK-KB-0411', 'Dragon Ball Super Vol. 6', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230005404', '823', 'komik', '823 AKI d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1644, 'KUPKBPK-KB-0412', 'Dragon Ball Super Vol. 7', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230008085', '823', 'komik', '823 AKI d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1645, 'KUPKBPK-KB-0413', 'Dragon Ball Super Vol. 8', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230011450', '823', 'komik', '823 AKI d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1646, 'KUPKBPK-KB-0414', 'Dragon Ball Super Vol. 9', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230014260', '823', 'komik', '823 AKI d', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1647, 'KUPKBPK-KB-0415', 'Super Dragon Ball Heroes Buku 1 : Dark Demon Realm Mission', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2017', '9786230002762', '823', 'komik', '813 YOS s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1648, 'KUPKBPK-KB-0416', 'Super Dragon Ball Heroes Buku 2: Dark Demon Realm Mission', 'Yoshitaka', 'Nagayama', 'Nagayama, Yoshitaka', 'Elex Media Komputindo', 'Jakarta', '2017', '9786230010408', '823', 'komik', '813 YOS s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1649, 'KUPKBPK-KB-0417', 'Origin', 'Dan', 'Brown', 'Brown, Dan', 'Bentang', 'Yogyakarta', '2017', NULL, '813', 'Fiksi', '813 DAN o', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1650, 'KUPKBPK-KB-0418', 'Sherlock Holmes -  Empat Pemburu Harta', 'Arthur Conan', 'Doyle', 'Doyle, Arthur Conan', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9789792290134', '813', 'Fiksi', '813 SIR s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1651, 'KUPKBPK-KB-0419', 'Sherlock Holmes -  Salam Terakhir', 'Arthur Conan', 'Doyle', 'Doyle, Arthur Conan', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9876020636412', '813', 'Fiksi', '813 SIR s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1652, 'KUPKBPK-KB-0420', 'Sherlock Holmes - Penelusuran Benang Merah', 'Arthur Conan', 'Doyle', 'Doyle, Arthur Conan', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9876020631653', '813', 'Fiksi', '813 SIR s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1653, 'KUPKBPK-KB-0421', 'Percy Jackson & The Olympians : The Last olympian', 'Rick', 'Riordan', 'Riordan, Rick', 'Mizan Publika', 'Jakarta', '2010', '9786023851942', '813', 'Fiksi', '813 RIC p', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1654, 'KUPKBPK-KB-0422', 'The Heroes of Olympus : The Lost Hero', 'Rick', 'Riordan', 'Riordan, Rick', 'Mizan Publika', 'Jakarta', '2019', '9786023857319', '813', 'Fiksi', '813 RIC t', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1655, 'KUPKBPK-KB-0423', 'Hewan-hewan Fantastis dan Dimana Mereka Bisa Ditemukan', 'J.K', 'Rowling', 'Rowling, J.K', 'Gramedia Pustaka Utama', 'Jakarta', '2017', '9786020378992', '813', 'Fiksi', '813 JK  h', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1656, 'KUPKBPK-KB-0424', 'Quidditch Through The Ages: Quidditch dari Masa ke Masa', 'J.K', 'Rowling', 'Rowling, J.K', 'Gramedia Pustaka Utama', 'Jakarta', '2018', '9786020318288', '813', 'Fiksi', '813 JK  q', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1657, 'KUPKBPK-KB-0425', 'Matahari', 'Tere', 'Liye', 'Liye, Tere', 'Gramedia Pustaka Utama', 'Jakarta', '2016', '9786020332116', '813', 'Fiksi', '813 TER m', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1658, 'KUPKBPK-KB-0426', 'Bulan', 'Tere', 'Liye', 'Liye, Tere', 'Gramedia Pustaka Utama', 'Jakarta', '2015', '9786020332949', '813', 'Fiksi', '813 TER b', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1659, 'KUPKBPK-KB-0427', 'Ceros dan Batozar', 'Tere', 'Liye', 'Liye, Tere', 'Gramedia Pustaka Utama', 'Jakarta', '2018', '9786020385914', '813', 'Fiksi', '813 TER c', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1660, 'KUPKBPK-KB-0428', 'Bintang', 'Tere', 'Liye', 'Liye, Tere', 'Gramedia Pustaka Utama', 'Jakarta', '2017', '9786020351179', '813', 'Fiksi', '813 TER b', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1661, 'KUPKBPK-KB-0429', 'Sun', 'Tere', 'Liye', 'Liye, Tere', 'Gramedia Pustaka Utama', 'Jakarta', '2016', '9786020639369', '813', 'Fiksi', '813 TER s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1662, 'KUPKBPK-KB-0430', 'Komet', 'Tere', 'Liye', 'Liye, Tere', 'Gramedia Pustaka Utama', 'Jakarta', '2018', '9786020385938', '813', 'Fiksi', '813 TER k', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1663, 'KUPKBPK-KB-0431', 'Komet Minor', 'Tere', 'Liye', 'Liye, Tere', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020623399', '813', 'Fiksi', '813 TER k', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1664, 'KUPKBPK-KB-0432', 'Panduan Tanggap Darurat Bencana: Banjir', 'Ahmad', 'Fauzi', 'Fauzi, Ahmad', 'Penerbit Erlangga', 'Jakarta', '2019', '9786026847799', '300', 'Sosial', '300 AHM p', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1665, 'KUPKBPK-KB-0433', 'Ilmu Komunikasi : Sebuah Pengantar Praktis', 'Ngalimun', NULL, 'Ngalimun', 'Pustaka Baru Press', 'Yogyakarta', '2016', '9786020874937', '659.2', 'Public Relations', '659.2 NGA i', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1666, 'KUPKBPK-KB-0434', 'Menguasai Statistik dengan SPSS 25', 'Singgih', 'Santoso', 'Santoso, Singgih', 'Elex Media Komputindo', 'Jakarta', '2018', '9786020458106', '001.42', 'Penelitian', '001.42 SIN m', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1667, 'KUPKBPK-KB-0435', 'Statistika untuk Penelitian Pendidikan dan Ilmu-Ilmu Sosial', 'Fajri', 'Ismail', 'Ismail, Fajri', 'Prenada Media Group', 'Jakarta', '2018', '9786024222093', '001.42', 'Penelitian', '001.42 DR. s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1668, 'KUPKBPK-KB-0436', 'Statistik Untuk Riset Skripsi', 'Jonathan', 'Sarwono', 'Sarwono, Jonathan', 'Andi Publisher', 'Yogyakarta', '2018', '9789792965933', '001.42', 'Penelitian', '001.42 JON s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1669, 'KUPKBPK-KB-0437', 'Sosiologi : Suatu Pengantar', 'Soerjono', 'Soekanto', 'Soekanto, Soerjono', 'Rajawali Pers', 'Jakarta', '2017', '9789797695774', '300', 'Sosial', '300 SOE s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1670, 'KUPKBPK-KB-0438', 'Sosiologi : Suatu Pengantar', 'Soerjono', 'Soekanto', 'Soekanto, Soerjono', 'Rajawali Pers', 'Jakarta', '2017', '9789797695774', '300', 'Sosial', '300 SOE s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1671, 'KUPKBPK-KB-0439', 'RUDY : Kisah Masa Muda Sang Visioner', 'Gina S', 'Noer', 'Noer, Gina S', 'Penerbit Bentang dan THC Mandiri (Bentang Pustaka)', 'Yogyakarta', '2019', '9786022911111', '920', 'Biografi', '920 GIN r', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1672, 'KUPKBPK-KB-0440', 'Karya Lengkap Bung Hatta : Sumber Daya Ekonomi dan Kebutuhan Pokok Masyrakat', 'Mohammad', 'Hatta', 'Hatta, Mohammad', 'LP3ES', 'Depok', '2017', '9786027984325', '320', 'kebijakan publik', '320 PRO k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1673, 'KUPKBPK-KB-0441', 'Untuk Negeriku : Sebuah Otobiografi', 'Mohammad', 'Hatta', 'Hatta, Mohammad', 'Kompas', 'Jakarta', '2011', '9786024124229', '920', 'Biografi', '920 MOH u', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1674, 'KUPKBPK-KB-0442', 'The Will to Power', 'Friedrich', 'Willhem', 'Willhem, Friedrich', 'Narasi', 'Yogyakarta', '2019', '9786025792359', '658.3', 'Manajemen SDM', '658.3 FRI t', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1675, 'KUPKBPK-KB-0443', 'Alex Ferguson : Autobiografi saya', 'Alex', 'Ferguson', 'Ferguson, Alex', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020636887', '920', 'Biografi', '920 ALE a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1676, 'KUPKBPK-KB-0444', 'Seri Buku Tempo: Tan Malaka - Bapak Republik yang dilupakan', 'Tempo', NULL, 'Tempo', 'Kepustakaan Populer Gramedia (KPG)', 'Jakarta', '2010', '9786024241148', '920', 'Biografi', '920 TEM s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1677, 'KUPKBPK-KB-0445', 'Seri Buku Tempo : Soeharto - Setelah Sang Jenderal Besar Pergi', 'Tempo', NULL, 'Tempo', 'Kepustakaan Populer Gramedia (KPG)', 'Jakarta', '2018', '9786024249946', '920', 'Biografi', '920 TEM s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1678, 'KUPKBPK-KB-0446', 'Dunia Batin Buya Hamka', 'Muhammad', 'Ghanoe', 'Ghanoe, Muhammad', 'Araska', 'Yogyakarta', '2020', '9786237537526', '920', 'Biografi', '920 MUH d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1679, 'KUPKBPK-KB-0447', 'Memahami  HAMKA The Untold Stories', 'Haidar', 'Musyafa', 'Musyafa, Haidar', 'Penerbit Imania (Pustaka IIMaN Group)', 'Tangerang', '2019', '9786027926506', '920', 'Biografi', '920 HAI m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1680, 'KUPKBPK-KB-0448', 'Jalan Cinta Buya', 'Haidar', 'Musyafa', 'Musyafa, Haidar', 'Penerbit Imania', 'Tangerang', '2017', '9786027926325', '920', 'Biografi', '920 HAI j', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1681, 'KUPKBPK-KB-0449', 'Lanskap Hutan Kota', 'Zoer\'aini Djamal', 'Irwan', 'Irwan, Zoer\'aini Djamal', NULL, NULL, NULL, NULL, '363', 'Lingkungan', '363 ZOE l', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1682, 'KUPKBPK-KB-0450', 'Infrastruktur Air Tanah Yang Berkelanjutan', 'M Basuki', 'Hadimuljono', 'Hadimuljono, M Basuki', 'Andi Offset', 'Yogyakarta', '2019', '9786230102394', '620', 'Ilmu Teknik', '620 M B i', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1683, 'KUPKBPK-KB-0451', 'Koruptor Go To Hell', 'Bibit Samad', 'Rianto', 'Rianto, Bibit Samad', 'Penerbit Andi', 'Yogyakarta', '2020', '9786230104558', '364', 'Korupsi', '364 RIA k', 'Hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1684, 'KUPKBPK-KB-0452', 'Optimalisasi Potensi Desa di Indonesia', 'Icuk rangga ', 'Bawono', 'Bawono, Icuk rangga ', 'Grasindo', 'Jakarta', '2019', '9786020522098', '320', 'Kebijakan publik', '320 ICU o', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1685, 'KUPKBPK-KB-0453', 'Teori Hukum', 'Hariadi', 'Kartodiharjo', 'Kartodiharjo, Hariadi', 'CV. Maha Karya Pustaka', 'Yogyakarta', '2019', NULL, '340', 'Ilmu Hukum', '340 SUD t', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1686, 'KUPKBPK-KB-0454', 'Analisis Kebijakan Pengelolaan Sumberdaya Alam', 'Mohtar', 'Mas\'oed', 'Mas\'oed, Mohtar', 'Sajogo Institute', 'Bogor', '2017', '9786029252552', '320', 'kebijakan publik', '320 HAR a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1687, 'KUPKBPK-KB-0455', 'Perbandingan sistem politik', 'Mohtar', 'Mas\'oed', 'Mas\'oed, Mohtar', 'Gadjah mada University Press', 'Yogyakarta', '2008', '9789794200070', '340', 'Ilmu Hukum', '340 MOH p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1688, 'KUPKBPK-KB-0456', 'Negeri Tanpa Mimpi', 'Kristiya', 'Kartika', 'Kartika, Kristiya', 'Universitas Pelita Bangsa dan Institut Teknologi &Bisnis Nasional Indonesia', 'Depok', '2019', NULL, '658', 'Manajemen', '658 KRI n', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1689, 'KUPKBPK-KB-0457', 'LPDP: Lembaran Pelajar Dana Pribadi', 'Kresshna ', 'Manganju', 'Manganju, Kresshna ', 'Elex Media Komputindo', 'Jakarta', '2019', '978-602-04-8701-4', '658.3', 'Manajemen SDM', '658.3 KRE l', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1690, 'KUPKBPK-KB-0458', 'Pengelolaan Sumberdaya dan Lingkungan', 'Bruce', 'Mitchell', 'Mitchell, Bruce', 'Gadjah mada University Press', 'Yogyakarta', '2010', NULL, '363', 'Lingkungan', '363 BRU p', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1691, 'KUPKBPK-KB-0459', '101 Amazing Copywriting Ideas', 'Widya', 'Ariyadi', 'Ariyadi, Widya', 'Quadrant', 'Yogyakarta', '2017', NULL, '650', 'Bisnis', '650 WID 1', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1692, 'KUPKBPK-KB-0460', 'Pendidikan yang Berkebudayaan', NULL, NULL, ', ', 'Gramedia Pustaka Utama', 'Jakarta', '2020', NULL, '649', 'pendidikan', '649 YUD p', 'beli', 'novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1693, 'KUPKBPK-KB-0461', 'Perancangan Perkerasan Jalan dan Penyelidikan Tanah', NULL, NULL, ', ', 'Gadjah Mada University Press', 'Yogyakarta', '2017', NULL, '620', 'Ilmu Teknik', '620 HAR p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1694, 'KUPKBPK-KB-0462', 'Pemeliharaan Jalan Raya', NULL, NULL, ', ', 'UGM Press ', 'Yogyakarta', '2015 ', NULL, '620', 'Ilmu Teknik', '620 HAR p', 'beli', 'teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1695, 'KUPKBPK-KB-0463', 'Ayat-ayat dan hadis ekonomi syariah', 'Mardani', NULL, ', Mardani', 'Rajawali Pers', ' Jakarta', '2011', '9789797693404', '330', 'Ekonomi', '330 MAR a', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1696, 'KUPKBPK-KB-0464', 'Studi Kelayakan Bisnis Syariah', NULL, NULL, ', ', 'Rajawali Pers', 'Depok', '2017', '9786024251192', '650', 'Bisnis', '650 HAM s', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1697, 'KUPKBPK-KB-0465', 'Keuangan Publik dan Sosial Islam', NULL, NULL, ', ', 'Rajawali Pers', 'Depok', '2019', '9786232311770', '320', 'kebijakan publik', '320 SOL k', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1698, 'KUPKBPK-KB-0466', 'Koperasi Syariah di Indonesia Perspektif Maqashid Syariah', NULL, NULL, ', ', 'Rajawali Pers', 'Depok', '2020', '9786232313446', '320', 'kebijakan publik', '320 DJO k', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1699, 'KUPKBPK-KB-0467', 'Nasihat Pernikahan', NULL, NULL, ', ', 'Turos Pustaka', 'Jakarta', '2020', '9786237327431', '297', 'Islam', '297 IMA n', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1700, 'KUPKBPK-KB-0468', 'Bank dan Investasi Syariah', NULL, NULL, ', ', 'Gava Media', 'Yogyakarta', '2019', '9786025568619', '332', 'Bank', '332 IKI b', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1701, 'KUPKBPK-KB-0469', 'MS Excel 2019 dan 365 untuk Dashboard', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex Media Komputindo', 'Jakarta', '2019', NULL, '004', 'Komputer - Data', '004 JUB m', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1702, 'KUPKBPK-KB-0470', 'PINTAR PIDATO DAN MC', 'Larasati', 'Ningsih', 'Ningsih, Larasati', 'Komunika', 'Yogyakarta ', '2020', NULL, '659.2', 'Public Relations', '659.2 LAR p', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1703, 'KUPKBPK-KB-0471', 'Membuat Sendiri Aplikasi Augmented Reality', 'Ani', 'Ismayani', 'Ismayani, Ani', 'Elex Media Komputindo', 'Jakarta', '2020', NULL, '005', 'Komputer- Pemrograman', '005 ANI m', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1704, 'KUPKBPK-KB-0472', 'KIAT PRAKTIS KUASAI PUBLIC SPEAKING', 'Yuksan', 'Wahyudi', 'Wahyudi, Yuksan', 'Checklist', 'Yogyakarta ', '2019', '9786237046257', '659.2', 'Public Relations', '659.2 YUK k', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1705, 'KUPKBPK-KB-0473', 'The Power of Corel Draw', 'Arista prasetyo', 'Adi', 'Adi, Arista prasetyo', 'Elex Media Komputindo', 'Jakarta', '2019', NULL, '006', 'Komputer- Design Grafis', '006 ARI t', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1706, 'KUPKBPK-KB-0474', 'Adobe after effects komplet', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex Media Komputindo', 'Jakarta ', '2018', NULL, '006', 'Komputer- Design Grafis', '006 JUB a', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1707, 'KUPKBPK-KB-0475', 'Data Mining Untuk Klasifikasi dan Klasterisasi Data ', 'Suyanto', NULL, ', Suyanto', 'Informatika Bandung', 'Bandung ', '2017', NULL, '004', 'Komputer - Data', '004 SUY d', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1708, 'KUPKBPK-KB-0476', 'Komunikasi Persuasif', 'Ezi', 'Hendri', 'Hendri, Ezi', 'Remaja Rosda Karya', 'Bandung', '2019', '9786024463731', '659.2', 'Public Relations', '659.2 EZI k', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1709, 'KUPKBPK-KB-0477', 'Komunikasi yang Mengubah Dunia', 'Idi Subandi', 'Ibrahim', 'Ibrahim, Idi Subandi', ' Simbiosa Rekatama Media', 'Bandung', '2017', '9786027973503', '659.2', 'Public Relations', '659.2 IDI k', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1710, 'KUPKBPK-KB-0478', 'Sistem Informasi Manajemen Kontemporer di Era Digital', NULL, NULL, ', ', 'Gava Media', 'Yogyakarta', '2019', '9786025568602', '658', 'Manajemen', '658 EDD s', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1711, 'KUPKBPK-KB-0479', 'Cepat Mahir Menjadi Youtuber Dan Content Creator', 'Arif Budi', 'Pramana', 'Pramana, Arif Budi', 'Penerbit Andi', 'Yogyakarta', '2019', NULL, '006', 'Komputer- Design Grafis', '006  AR c', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1712, 'KUPKBPK-KB-0480', 'Social Media dan Social Network ', 'I Putu Agus', 'Eka Pratama', 'Eka Pratama, I Putu Agus', 'Informatika', 'Bandung', '2020', '9786237131250', '659.2', 'Public Relations', '659.2 I P s', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1713, 'KUPKBPK-KB-0481', 'STATISTIK UNTUK BISNIS EKONOMI', 'V. Wiratna', 'Suwarjeni', 'Suwarjeni, V. Wiratna', 'PUSTAKA BARU PRESS', 'Yogyakarta', '2015', NULL, '001.42', 'Penelitian', '001.42  V. s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1714, 'KUPKBPK-KB-0482', 'STATISTIK UNTUK BISNIS EKONOMI', 'V. Wiratna', 'Suwarjeni', 'Suwarjeni, V. Wiratna', 'PUSTAKA BARU PRESS', 'Yogyakarta', '2015', NULL, '001.42', 'Penelitian', '001.42  V. s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1715, 'KUPKBPK-KB-0483', 'SPSS 24 untuk Penelitian dan Skripsi', 'Johar', 'Arifin', 'Arifin, Johar', 'Elex Media Komputindo', 'Jakarta', '2017', NULL, '001.42', 'Penelitian', '001.42 JOH s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1716, 'KUPKBPK-KB-0484', 'Analisis Dampak Kebijakan Menggunakan Model Computable General Equilibrium (CGE)', NULL, NULL, ', ', 'Gramedia Pustaka Utama', 'Jakarta', '2019', NULL, '320', 'kebijakan publik', '320 HID a', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1717, 'KUPKBPK-KB-0485', 'Adobe Premiere Pro dan CC untuk Pemula', 'Jubilee ', 'Enterprise', 'Enterprise, Jubilee ', 'Elex Media Komputindo', 'Jakarta', '2019', NULL, '006', 'Komputer- Design Grafis', '006 JUB a', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1718, 'KUPKBPK-KB-0486', '36 Jam Belajar Komputer Microsoft Powerpoint 2019', 'Budi', 'Permana', 'Permana, Budi', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230009662', '004', 'Komputer - Data', '004 BUD 3', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1719, 'KUPKBPK-KB-0487', 'Step by Step Google AdSense', 'Dedik', 'Kurniawan', 'Kurniawan, Dedik', 'Elex Media Komputindo', 'Jakarta', '2020', NULL, '005', 'Komputer- Pemrograman', '005 DED s', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1720, 'KUPKBPK-KB-0488', 'Mudah Memahami Menganalisis Indikator Ekonomi', NULL, NULL, ', ', 'UPP STIM YKPN', 'Yogyakarta', '2015', NULL, '330', 'Ekonomi', '330 MUD m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1721, 'KUPKBPK-KB-0489', 'Tipping point bagaimana hal-hal kecil dapat menghasilkan perubahan besar', 'Malcolm', 'Gladwell', 'Gladwell, Malcolm', 'Gramedia', ' Jakarta', '2010', '9786020380599', '658.3', 'Manajemen SDM', '658.3 GLA t', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1722, 'KUPKBPK-KB-0490', 'The Great Shifting', 'Rhenald ', 'Kasali', 'Kasali, Rhenald ', 'Gramedia Pustaka Utama', 'Jakarta', '2018', NULL, '658.3', 'Manajemen SDM', '658.3 KHA t', '0', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1723, 'KUPKBPK-KB-0491', 'Artificial Intelligence', 'Suyanto', NULL, ', Suyanto', 'Informatika', 'Bandung', '2014', NULL, '005', 'Komputer- Pemrograman', '005 SUY a', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1724, 'KUPKBPK-KB-0492', 'First, Break All The Rules', 'Marcus', 'Buckingham', 'Buckingham, Marcus', 'Kelompok Pustaka Alvabet', 'Tangerang', '2017', '9786027150393', '658.3', 'Manajemen SDM', '658.3 MAR f', '0', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1725, 'KUPKBPK-KB-0493', 'Diary Garpu Tala', 'Nasrullah', NULL, ', Nasrullah', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230014246', '658.3', 'Manajemen SDM', '658.3 NAS d', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1726, 'KUPKBPK-KB-0494', 'Si Cacing dan Kotoran Kesayangannya 3', NULL, NULL, ', ', 'Awareness Publication ', 'Jakarta', '2012', NULL, '658.3', 'Manajemen SDM', '658.3 BRA s', '0', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1727, 'KUPKBPK-KB-0495', 'Tipping point bagaimana hal-hal kecil dapat menghasilkan perubahan besar', NULL, NULL, ', ', 'Gramedia', ' Jakarta', '2010', '9786020380599', '658.3', 'Manajemen SDM', '658.3 GLA t', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1728, 'KUPKBPK-KB-0496', 'Seikatsu Kaizen', 'Susy', 'Ong', 'Ong, Susy', 'Elex Media Komputindo', 'Jakarta', '2019', NULL, '658', 'Manajemen', '658 SUS s', 'beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1729, 'KUPKBPK-KB-0497', '72 Trik Membaca Karakter', 'Alfi', 'Arifin', 'Arifin, Alfi', 'Penerbit Psikologi Corner', 'Yogyakarta', '2018', NULL, '658.3', 'Manajemen SDM', '658.3 ALF 7', 'beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1730, 'KUPKBPK-KB-0498', 'Tips Trik Melatih Pikiran Daya Ingat', 'Mulasih', 'Tary', 'Tary, Mulasih', 'CHECKLIST', 'Yogyakarta', '2019', '9786237046783', '658.3', 'Manajemen SDM', '658.3 MUL t', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1731, 'KUPKBPK-KB-0499', 'The Speed Of Trust', 'Stephen M R', 'Covey', 'Covey, Stephen M R', 'Dunamis Intra Sarana', 'Jakarta', '2013', NULL, '658.3', 'Manajemen SDM', '658.3 STE t', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1732, 'KUPKBPK-KB-0500', 'Ilustrasi Struktur Bangunan Ed 2 : Pola, Sistem Dan Desain', 'Francis D K', 'Ching', 'Ching, Francis D K', 'Erlangga', 'Jakarta', '2019', '9786024349455', '620', 'Ilmu Teknik', '620 FRA i', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1733, 'KUPKBPK-KB-0501', 'Strength of Materials', 'R K', 'Bansal', 'Bansal, R K', 'Penerbit Andi', 'Yogyakarta', '2018', '9789792970616', '620', 'Ilmu Teknik', '620 RK  s', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1734, 'KUPKBPK-KB-0502', 'Membuat aplikasi IoT: Internet Of Things', 'Hardana', NULL, 'Hardana', 'Lokomedia', 'Yogyakarta', '2019', '9786026231246', '005', 'Komputer- Pemrograman', '005 HAR m', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1735, 'KUPKBPK-KB-0503', 'Rancang Bangun Aplikasi Android Dan Web +Dvd', 'Nazruddin', 'Safaat H', 'Safaat H, Nazruddin', 'Informatika', 'Bandung', '2019', '9786237131175', '005', 'Komputer- Pemrograman', '005 NAZ r', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1736, 'KUPKBPK-KB-0504', 'Rancang Bangun Aplikasi Android Dan Web +Dvd', 'Nazruddin', 'Safaat H', 'Safaat H, Nazruddin', 'Informatika', 'Bandung', '2019', '9786237131175', '005', 'Komputer- Pemrograman', '005 NAZ r', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1737, 'KUPKBPK-KB-0505', 'Create Your Own Android Application', 'Nadia', 'Firly', 'Firly, Nadia', 'Elex Media Komputindo', 'Jakarta', '2018', '9786020460246', '005', 'Komputer- Pemrograman', '005 NAD c', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1738, 'KUPKBPK-KB-0506', 'Menguasai Blending Modes Photoshop', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex Media Komputindo', 'Jakarta', '2017', '9786020448442', '006', 'Komputer- Design Grafis', '006 JUB m', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1739, 'KUPKBPK-KB-0507', 'Kupas Tuntas Fungsi Lookup dan Reference', 'Yudhy', 'Wicaksono', 'Wicaksono, Yudhy', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230008238', '004', 'Komputer - Data', '004 YUD k', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1740, 'KUPKBPK-KB-0508', 'Kupas Tuntas Kriteria dalam Formula Excel', 'Yudhy', 'Wicaksono', 'Wicaksono, Yudhy', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230015717', '004', 'Komputer - Data', '004 YUD k', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1741, 'KUPKBPK-KB-0509', 'The Magic of 3DS MAX Modeling', 'Hendi', 'Hendratman', 'Hendratman, Hendi', 'Penerbit Informatika', 'Bandung', '2019', '9786237131205', '005', 'Komputer- Pemrograman', '005 HEN t', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1742, 'KUPKBPK-KB-0510', '200+ Tip dan Trik Praktis Excel 2016', 'Yudhy', 'Wicaksono', 'Wicaksono, Yudhy', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020490854', '004', 'Komputer - Data', '004 YUD 2', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1743, 'KUPKBPK-KB-0511', 'Mengenal Teori-Teori Politik: dari Sistem Politik Sampai Korupsi', 'Toni Andrianus', 'Pito', 'Pito, Toni Andrianus', ' ', 'Bandung', '2019', '\'9786023500888', '364', 'Korupsi', '364 TON m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1744, 'KUPKBPK-KB-0512', 'Political Social Responsibility', 'Dedi Kurnia', 'Syahputra', 'Syahputra, Dedi Kurnia', 'Prenada Media Group', 'Jakarta', '2019', '9786232181748', '340', 'Ilmu Hukum', '340 DR. p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1745, 'KUPKBPK-KB-0513', 'Undang-Undang Dasar Negara Republik Indonesia Tahun 1945, UU Nomor 17 Tahun 2003 Tentang Keuangan Negara', 'JDI HUKUM', NULL, ', JDI HUKUM', 'JDI Hukum DITAMA BINBANGKUM BPK RI', 'Jakarta', '2013', '-', '336', 'Keuangan Negara', '336 JDI u', 'Hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1746, 'KUPKBPK-KB-0514', 'Melawan Money Laundering', 'Juni Sjafrien', 'Jahja', 'Jahja, Juni Sjafrien', 'Visimedia', 'Jakarta', '2017', '9790651406', '364', 'Korupsi', '364 DR. m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1747, 'KUPKBPK-KB-0515', 'Tata Cara Penanganan Perkara Pidana Korporasi', 'TIM Pokja', NULL, ', TIM Pokja', 'MA dan KPK', 'Jakarta', '2017', '9786029488166', '364', 'Korupsi', '364 TIM t', 'Hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1748, 'KUPKBPK-KB-0516', 'Hukum Pasar Modal', 'Sentosa', 'Sembiring', 'Sembiring, Sentosa', 'Nuansa Aulia', 'Bandung', '2019', '9789790713307', '346', 'Hukum Privat', '346 DR  h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1749, 'KUPKBPK-KB-0517', 'Panduan Mengurus Sertfikat & Penyelesaian Sengketa Tanah', 'Mudakir Iskandar', 'Syah', 'Syah, Mudakir Iskandar', 'Bhuana Ilmu Populer', 'Jakarta', '2019', '9786232165588', '342', 'Hukum Tata Negara', '342 MUD p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1750, 'KUPKBPK-KB-0518', 'Himpunan UU tentang Pengelolaan dan Perlindungan Lingkungan Hidup', NULL, NULL, ', ', 'Laksana', 'Jakarta', '2019', '9786024076368', '340', 'Ilmu Hukum', '340 TIM h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1751, 'KUPKBPK-KB-0519', 'Etika Profesi Hukum', 'Farid', 'Wajdi', 'Wajdi, Farid', 'Sinar Grafika', 'Jakarta', '2019', '9789790078550', '340', 'Ilmu Hukum', '340 FAR e', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1752, 'KUPKBPK-KB-0520', 'Peradilan Etik dan Etika Konstitusi', 'Jimly', 'Assiddiqie', 'Assiddiqie, Jimly', 'Sinar Grafika', 'Jakarta', '2017', '9789790076297', '340', 'Ilmu Hukum', '340 PRO p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1753, 'KUPKBPK-KB-0521', 'Sosiolog Hukum', 'Zainuddin', 'Ali', 'Ali, Zainuddin', 'Sinar Grafika', 'Jakarta', '2019', '9789798061295', '340', 'Ilmu Hukum', '340 PRO s', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24');
INSERT INTO `books` (`id`, `book_number`, `book_title`, `book_firstname`, `book_lastname`, `book_author`, `book_publisher`, `book_city`, `book_year`, `book_isbn`, `book_class`, `book_subject`, `book_classcode`, `book_acq`, `book_location`, `book_nup`, `book_brand`, `book_image`, `book_createdby`, `book_updatedby`, `book_isavailable`, `created_at`, `updated_at`) VALUES
(1754, 'KUPKBPK-KB-0522', 'Teknik Pembuatan Akta PPAT', 'Halim HS', NULL, 'Halim HS', 'Rajagrafindo Persada', 'Jakarta', '2016', '9789797699031', '342', 'Hukum Tata Negara', '342 PRO t', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1755, 'KUPKBPK-KB-0523', 'Pengantar Hukum Indonesia (PHI)', 'Ishaq', NULL, 'Ishaq', 'Rajagrafindo Persada', 'Depok', '2018', '9789797697426', '340', 'Ilmu Hukum', '340 DR. p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1756, 'KUPKBPK-KB-0524', 'Dasar-dasar Pengetahuan Ilmu Hukum', 'Hasim ', 'Purba', 'Purba, Hasim ', 'Sinar Grafika', 'Jakarta', '2019', '9789790078918', '340', 'Ilmu Hukum', '340 PRO d', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1757, 'KUPKBPK-KB-0525', 'Mengenal Hukum Suatu Pengantar', 'Sudikno', 'Mertokusumo', 'Mertokusumo, Sudikno', 'Maha Karya Pustaka', 'Yogyakarta', '2019', '9786239006518', '340', 'Ilmu Hukum', '340 PRO m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1758, 'KUPKBPK-KB-0526', 'Si Cacing dan Kotoran Kesayangannya', 'Ajahn', 'Brahm', 'Brahm, Ajahn', 'Awareness Publication', 'Jakarta', '2019', '9786028194310', '658.3', 'Manajemen SDM', '658.3 AJA s', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1759, 'KUPKBPK-KB-0527', 'Si Cacing dan Kotoran Kesayangannya 2', 'Ajahn', 'Brahm', 'Brahm, Ajahn', 'Awareness Publication', 'Jakarta', '2019', '9786028194549', '658.3', 'Manajemen SDM', '658.3 AJA s', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1760, 'KUPKBPK-KB-0528', 'Psychology of Investing', 'Hajime', 'Aso', 'Aso, Hajime', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230010255', '332', 'Investasi', '332 HAJ p', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1761, 'KUPKBPK-KB-0529', 'CITIZENS 4.0 Menjejakkan Prinsip-Prinsip Pemasaran Humanis di Era Digital', 'Hermawan', 'Kartajaya', 'Kartajaya, Hermawan', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020379548', '658.3', 'Manajemen SDM', '658.3 HER c', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1762, 'KUPKBPK-KB-0530', 'Blockchain Dari Bitcoin untuk Dunia', 'Dimaz Ankaa', 'Wijaya', 'Wijaya, Dimaz Ankaa', 'Jasakom', 'Jakarta', '2017', '9786020823263', '332', 'Investasi', '332 DIM b', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1763, 'KUPKBPK-KB-0531', 'Life Will never be The Same, Tidak ada kehidupan Tanpa Perubahan', 'Davit', 'Setiawan', 'Setiawan, Davit', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020204178', '658.3', 'Manajemen SDM', '658.3 DAV l', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1764, 'KUPKBPK-KB-0532', 'Be The First, Be the best, Be Different', 'Mila Septian', 'Haryati', 'Haryati, Mila Septian', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230016714', '658.3', 'Manajemen SDM', '658.3 MIL b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1765, 'KUPKBPK-KB-0533', 'Rahasia Sukses Menjual ala Napoleon Hill', 'Napoleon', 'Hill', 'Hill, Napoleon', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020633305', '658', 'Manajemen', '658 NAP r', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1766, 'KUPKBPK-KB-0534', 'Other Stream of Income, Menciptakan arus penghasilan dari bisnis dan kekayaan intelektual', 'Ryan', 'Filbert', 'Filbert, Ryan', 'Elex Media Komputindo', 'Jakarta', '2018', '9786020458939', '650', 'Bisnis', '650 RYA o', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1767, 'KUPKBPK-KB-0535', '10 Jurus Terlarang! Kok Masih Mau Bisnis Cara Biasa?', 'Ippho', 'Santosa', 'Santosa, Ippho', 'Elex Media Komputindo', 'Jakarta', '2020', '9789792706857', '650', 'Bisnis', '650 IPP 1', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1768, 'KUPKBPK-KB-0536', 'The 12 Week Year : Seni Bekerja Cerdas : Menyelesaikan Target 12 Bulan Dalam 12 Minggu', 'Brian P', 'Moran', 'Moran, Brian P', 'Bhuana Ilmu Populer', 'Jakarta', '2013', '9786024835736', '658.3', 'Manajemen SDM', '658.3  BR t', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1769, 'KUPKBPK-KB-0537', 'Komunikasi Itu Ada Seninya', NULL, NULL, ', ', 'Bhuana Ilmu Populer', 'Jakarta', '2020', '9786232167995', '659.2', 'Public Relations', '659.2 OH  k', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1770, 'KUPKBPK-KB-0538', 'Herding Tigers', 'Tood', 'Henry', 'Henry, Tood', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020498256', '658.3', 'Manajemen SDM', '658.3 TOD h', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1771, 'KUPKBPK-KB-0539', 'Leader As Meaning Maker', 'Josef', 'Bataona', 'Bataona, Josef', 'Kompas Media Nusantara', 'Jakarta', '2020', '9786232415058', '658.3', 'Manajemen SDM', '658.3 JOS l', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1772, 'KUPKBPK-KB-0540', 'Tuhan Maha Asyik', 'Sujiwo ', 'Tejo', 'Tejo, Sujiwo ', 'Penerbit Imania', 'Tanggerang', '2019', '9786027926295', '813', 'Fiksi', '813 SUJ t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1773, 'KUPKBPK-KB-0541', 'Kriptografi, Teknik Keamanan Data Dan Informasi', 'Janner', 'Simarmata', 'Simarmata, Janner', 'Andi Offset', 'Yogyakarta', '2020', '9786230102882', '005', 'Komputer- Pemrograman', '005 JAN k', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1774, 'KUPKBPK-KB-0542', 'Presentasi yang Mencekam (edisi Revisi)', 'Sutanto L', 'Tjokro', 'Tjokro, Sutanto L', 'Elex Media Komputindo', 'Jakarta', '2018', '9786020486802', '004', 'Komputer - Data', '004 SUT p', 'Beli', 'Teknik', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1775, 'KUPKBPK-KB-0543', 'Tol Laut : Konektivitas Visi Poros Maritim Indonesia', 'Dirjen Perhubungan Laut', NULL, ', Dirjen Perhubungan Laut', NULL, NULL, NULL, NULL, '658', 'Manajemen', '658  t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1776, 'KUPKBPK-KB-0544', 'Muslim 4.0', 'Yanuardi', 'Syukur', 'Syukur, Yanuardi', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230015915', '297', 'Islam', '297 YAN m', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1777, 'KUPKBPK-KB-0545', 'Fiqih Wanita', NULL, NULL, ', ', 'Dharma Art', 'Jakarta', '2020', '-', '297', 'Islam', '297 DR. f', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1778, 'KUPKBPK-KB-0546', 'Panduan Haji & Umrah untuk Wanita', 'Waway', 'Qodratulloh', 'Qodratulloh, Waway', 'Penerbit Mulia', 'Tanggerang Selatan', '2019', '9786025359248', '297', 'Islam', '297 WAW p', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1779, 'KUPKBPK-KB-0547', 'Muslim Entrepreneur', 'Ahmad Rifa\'i', 'Rif\'an', 'Rif\'an, Ahmad Rifa\'i', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230012051', '297', 'Islam', '297 AHM m', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1780, 'KUPKBPK-KB-0548', 'The Power Of Azan', 'Teguh', 'Sunaryo', 'Sunaryo, Teguh', 'Renebook', 'Jakarta', '2019', '9786021201787', '297', 'Islam', '297 UST t', 'Beli', 'agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1781, 'KUPKBPK-KB-0549', 'Sepenggal Cerita Sejuta Makna', 'Abdul Wahid', 'Al-faizin', 'Al-faizin, Abdul Wahid', 'Gema Insani', 'Jakarta', '2019', '9786022506805', '658.3', 'Manajemen SDM', '658.3 ABD s', 'Beli', 'agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1782, 'KUPKBPK-KB-0550', 'Panduan Shalat an-Nisaa', NULL, NULL, ', ', 'Penerbit Republika', 'Jakarta', '2019', '9786237458241', '297', 'Islam', '297 DR. p', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1783, 'KUPKBPK-KB-0551', 'How To Win Friends Influence People', 'Dale', 'Carnegie', 'Carnegie, Dale', 'Gramedia Pustaka Utama', 'Jakarta', '2020', NULL, '658.3', 'Manajemen SDM', '658.3 DAL h', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1784, 'KUPKBPK-KB-0552', 'Generasi Emas: 100 Cara Menjadi Generasi Unggul, Berprestasi, dan Berkontribusi', 'Ahmad Rifa\'i', 'Rifan', 'Rifan, Ahmad Rifa\'i', 'Elex Media Komputindo', 'Jakarta', '2019', NULL, '658.3', 'Manajemen SDM', '658.3 AHM g', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1785, 'KUPKBPK-KB-0553', 'Mindset: Mengubah Pola Berpikir Untuk Perubahan Besar dalam hidup Anda', 'Carol S', 'Dweck', 'Dweck, Carol S', 'Bentara Aksara Cahaya', 'Tangerang Selatan', '2019', NULL, '658.3', 'Manajemen SDM', '658.3 CAR m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1786, 'KUPKBPK-KB-0554', 'Disruption : tak ada yang tak bisa diubah sebelum dihadapi motivasi saja tidak cukup', 'Rhenald', 'Kasali', 'Kasali, Rhenald', 'Gramedia Pustaka Utama', 'Jakarta', '2019', NULL, '658.3', 'Manajemen SDM', '658.3 RHE d', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1787, 'KUPKBPK-KB-0555', 'Blue Ocean Shift', 'W. Chan', 'Kim', 'Kim, W. Chan', 'Gramedia Pustaka Utama', 'Jakarta', '2017', NULL, '658.3', 'Manajemen SDM', '658.3 KIM b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1788, 'KUPKBPK-KB-0556', 'Seni Mendidik Anak Agar Mandiri', 'Wu', 'Ganlin', 'Ganlin, Wu', 'bhuana Ilmu Populer', 'Jakarta', '2020', '9786230401695', '649', 'pendidikan', '649 WU  s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1789, 'KUPKBPK-KB-0557', 'Impromptu Parents', 'Rizuki', 'Nanda', 'Nanda, Rizuki', 'Haru Semesta Persada', 'Banten', '2020', NULL, '649', 'pendidikan', '649 RIZ i', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1790, 'KUPKBPK-KB-0558', '78 Resep Mpasi', 'Meta', 'Hanindita', 'Hanindita, Meta', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9786020643267', '641', 'Masakan', '641 MET 7', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1791, 'KUPKBPK-KB-0559', 'Seni Mendidik Anak Di Era 4.0', 'Asti', 'Musman', 'Musman, Asti', 'Psikologi Corner', 'Yogyakarta', '2020', '9786237324928', '649', 'pendidikan', '649 AST s', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1792, 'KUPKBPK-KB-0560', 'Pelangi Di Cakrawala Profesi Akuntan : Sebuah Memoar', 'F', NULL, ', F', ' Ikatan Akuntan Indonesia', 'Jakarta', '2015', NULL, '920', 'Biografi', '920 HAN p', NULL, 'Rak Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1793, 'KUPKBPK-KB-0561', 'HRM (Human Resource Management) Implementation', 'Ahmad', 'Sukresno', 'Sukresno, Ahmad', 'Quandrant', 'Yogyakarta', '2019', '9786237324478', '658.3', 'Manajemen SDM', '658.3 AHM h', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1794, 'KUPKBPK-KB-0562', 'Investment For Millenials: Menjadi Millenial Kaya Raya Dengan Berinvestasi', 'Astrid ', 'Savitri', 'Savitri, Astrid ', 'Penerbit Genesis', 'Yogyakarta', '2020', '9786237567189', '332', 'Investasi', '332 AST i', '0', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1795, 'KUPKBPK-KB-0563', 'Manajemen Keuangan Daerah', 'Mahmudi', NULL, ', Mahmudi', 'Erlangga', 'Jakarta', '2010', '9789790751781', '336', 'keuangan daerah', '336 MAH m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1796, 'KUPKBPK-KB-0564', 'Kepemimpinan Manajerial: Kajian Peranan Penting Kepemimpinan Dalam Kerangka Manajemen', 'Danang', 'Sunyoto', 'Sunyoto, Danang', 'CAPS (Center For Academic Publishing Service)', 'Yogyakarta', '2019', '9786029324914', '658.3', 'Manajemen SDM', '658.3 DAN k', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1797, 'KUPKBPK-KB-0565', 'Akuntansi UMKM (Usaha Mikro Kecil Menengah)', 'Wiratna', 'Sujarweni', 'Sujarweni, Wiratna', 'Pustaka Baru', 'Yogyakarta', '2019', '9786023763122', '657', 'Akuntansi', '657 WIR a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1798, 'KUPKBPK-KB-0566', 'Akuntansi Sektor Publik Teori Konsep Aplikasi', 'Wiratna', 'Sujarweni', 'Sujarweni, Wiratna', 'Pustaka Baru Press', 'Yogyakarta', '2015', '9786021674826', '657', 'Akuntansi', '657 WIR a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1799, 'KUPKBPK-KB-0567', 'Strategi Pintar Menyusun SOP', 'Endah Nur', 'Fatimah', 'Fatimah, Endah Nur', 'Pustaka Baru Press', 'Yogyakarta', '2015', '9786021674512', '658.1', 'Organisasi', '658.1 END s', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1800, 'KUPKBPK-KB-0568', 'Analisis Laporan Keuangan', 'Toto', 'Prihadi', 'Prihadi, Toto', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020395265', '657', 'Laporan Keuangan', '657 TOT a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1801, 'KUPKBPK-KB-0569', 'Manajemen Sumber Daya Manusia: Pendekatan Teoretik dan Praktik Untuk Organisasi Publik', 'Ambar Teguh', 'Sulistiyani', 'Sulistiyani, Ambar Teguh', 'Gava Media', 'Yogyakarta', '2018', NULL, '658.3', 'Manajemen SDM', '658.3 AMB m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1802, 'KUPKBPK-KB-0570', 'Manajemen Konflik dan Stres Dalam Organisasi', 'Dr', 'Wahyudi', 'Wahyudi, Dr', 'Alfabeta', 'Bandung', '2017', '9786022893059', '658.3', 'Manajemen SDM', '658.3 WAH m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1803, 'KUPKBPK-KB-0571', 'Manajemen Risiko: Panduan Untuk Risk Leaders dan Risk Practitioners', 'Leo J', 'Susilo', 'Susilo, Leo J', 'Grasindo', 'Jakarta', '2019', '9786020512341', '658', 'Manajemen', '658 WAH m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1804, 'KUPKBPK-KB-0572', 'Bank Lembaga Keuangan Syariah Lainnya', 'Muhamad', NULL, ', Muhamad', 'Raja Grafindo Persada', 'Depok', '2020', '9786232310292', '332', 'Bank', '332 MUH b', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1805, 'KUPKBPK-KB-0573', 'Soal-Jawab Perilaku Organisasi Edisi Lengkap, Mudah , Dan Praktis ', 'Hery', NULL, ', Hery', 'Gava Media', 'Yogyakarta', '2019', '9786025568596', '658.1', 'Organisasi', '658.1 HER s', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1806, 'KUPKBPK-KB-0574', 'Manajemen Strategik: Intisari Konsep Teori', 'Isniati', NULL, ', Isniati', 'Penerbit Andi', 'Yogyakarta', '2019', '9789792999938', '658', 'Manajemen', '658 ISN m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1807, 'KUPKBPK-KB-0575', 'A to Z Human Capital Manajemen Sumber Daya Manusia : Konsep, Teori, Dan Pengembangan Dalam Konteks Organisasi Publik Dan Bisnis', 'Jimmy l', 'Gaol', 'Gaol, Jimmy l', 'Grasindo', 'Jakarta', '2019', '9786022514251', '658.3', 'Manajemen SDM', '658.3 CHR a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1808, 'KUPKBPK-KB-0576', 'Akuntansi BUMDes (Badan Usaha Milik Desa)', 'Wiratna', 'Sujarwemi', 'Sujarwemi, Wiratna', 'Pustaka Baru Press', 'Yogyakarta', '2019', '9786023762521', '657', 'Akuntansi', '657 WIR a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1809, 'KUPKBPK-KB-0577', 'Pengantar Akuntansi', 'Wiratna', 'Sujarwemi', 'Sujarwemi, Wiratna', 'Pustaka Baru Press', 'Yogyakarta', '2016', '97860237600015', '657', 'Akuntansi', '657 WIR p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1810, 'KUPKBPK-KB-0578', 'Pendidikan Pertumbuhan Ekonomi: Kajian Konseptual dan Empirik', 'Boediono', NULL, ', Boediono', 'Kamboja Kelompok Enam', 'Yogyakarta', '2019', '9786025192425', '330', 'Ekonomi', '330 BOE p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1811, 'KUPKBPK-KB-0579', 'A to Z Human Capital Manajemen Sumber Daya Manusia : Konsep, Teori, Dan Pengembangan Dalam Konteks Organisasi Publik Dan Bisnis', 'Jimmy l', 'Gaol', 'Gaol, Jimmy l', 'Grasindo', 'Jakarta', '2019', '9786022514251', '658.3', 'Manajemen SDM', '658.3 CHR a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1812, 'KUPKBPK-KB-0580', 'Financial Management Canvas', 'Kho', 'Sin Hien', 'Sin Hien, Kho', 'Elex Media Komputindo', 'Jakarta', '2020', '9786020433967', '658', 'Manajemen', '658 KHO f', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1813, 'KUPKBPK-KB-0581', 'Seri Panduan Investasi: Reksa Dana Untuk Pemula', 'Rudiyanto', NULL, ', Rudiyanto', 'Elex Media Komputindo', 'Jakarta', '2018', '9786020284576', '332', 'Investasi', '332 RUD s', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1814, 'KUPKBPK-KB-0582', 'Akuntansi Keuangan Berdasarkan SAK Berbasis IFRS Buku 2', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2019', '9789799020734', '657', 'Akuntansi', '657 IKA a', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1815, 'KUPKBPK-KB-0583', 'Manajemen Kinerja', 'Hery', NULL, ', Hery', 'Grasindo', 'Jakarta', '2019', '9786020521725', '658', 'Manajemen', '658 HER m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1816, 'KUPKBPK-KB-0584', 'Modul Pelatihan Pajak Terapan Brevet AB Terpadu', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2020', NULL, '336', 'pajak', '336 IKA m', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1817, 'KUPKBPK-KB-0585', 'Modul Chartered Accountant Akuntansi Manajemen Lanjutan', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2015', NULL, '657', 'Akuntansi', '657 IKA m', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1818, 'KUPKBPK-KB-0586', 'Modul Chartered Accountant Audit & Asurans', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2020', '9789799020475', '657', 'Auditing', '657 IKA m', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1819, 'KUPKBPK-KB-0587', 'Modul Chartered Accountant Manajemen Keuangan Lanjutan', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2015', NULL, '657', 'Akuntansi', '657 IKA m', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1820, 'KUPKBPK-KB-0588', 'Modul Chartered Accountant: Manajemen Perpajakan', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2015', NULL, '336', 'pajak', '336 IKA m', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1821, 'KUPKBPK-KB-0589', 'Modul Chartered Accountant : Manajemen Stratejik Dan Kepemimpinan', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2015', NULL, '657', 'Akuntansi', '657 IKA m', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1822, 'KUPKBPK-KB-0590', 'Modul Chartered Accountant : Sistem Informasi Dan Pengendalian Internal', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2015', '9789799020512', '657', 'Akuntansi', '657 IKA m', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1823, 'KUPKBPK-KB-0591', 'Increase Your Financial IQ: Kelola Uang Anda Dengan Lebih Cerdas', 'Robert T', 'Kiyosaki', 'Kiyosaki, Robert T', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9786020333519', '657', 'Akuntansi', '657 ROB i', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1824, 'KUPKBPK-KB-0592', 'Investor Blueprint: Peta Sukses Investasi Ala Investor Dunia', 'Ryan', 'Filbert', 'Filbert, Ryan', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230006906', '332', 'Investasi', '332 RYA i', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1825, 'KUPKBPK-KB-0593', 'Kode Etik Akuntan Indonesia : Efektif 1 Juli 2020', NULL, NULL, ', ', 'Ikatan Akuntansi Indonesia', 'Jakarta', '2020', NULL, '657', 'Akuntansi', '657 IKA k', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1826, 'KUPKBPK-KB-0594', 'Standar Profesi Jasa Akuntan', 'Ikatan Akuntan indonesia', NULL, ', Ikatan Akuntan indonesia', 'Ikatan Akuntansi Indonesia', 'Jakarta', '2020', '9789799020666', '657', 'Akuntansi', '657 IKA s', 'Hibah', 'Koleksi Khusus Reading Corner', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1827, 'KUPKBPK-KB-0595', 'Akuntansi keuangan berdasarkan SAK berbasis IFRS Edisi Ketiga Buku 1', NULL, NULL, ', ', 'Ikatan Akuntansi Indonesia', 'Jakarta', '2020', '9789799020574', '657', 'Akuntansi', '657 IKA a', NULL, 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1828, 'KUPKBPK-KB-0596', 'Manajemen Keuangan', 'Musthafa', NULL, ', Musthafa', 'Penerbit Andi', 'Yogyakarta', '2017', '9789792962710', '658', 'Manajemen', '658 MUS m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1829, 'KUPKBPK-KB-0597', 'Akuntansi Sektor Publik Edisi Revisi', 'Mahmudi', NULL, ', Mahmudi', 'UII Press', 'Yogyakarta', '2018', '9789793333984', '657', 'Akuntansi', '657 MAH a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1830, 'KUPKBPK-KB-0598', 'Akuntansi Manajemen', 'Krismiaji', NULL, ', Krismiaji', 'UPP STIM YKPN', 'Yogyakarta', '2019', '9786021286753', '657', 'Akuntansi', '657 KRI a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1831, 'KUPKBPK-KB-0599', 'Manajemen Kinerja Sektor Publik', 'Mahmudi', NULL, ', Mahmudi', 'UPP STIM YKPN', 'Yogyakarta', '2019', '9786021286791', '658', 'Manajemen', '658 MAH m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1832, 'KUPKBPK-KB-0600', 'Pengantar Manajemen Edisi Pertama', 'Ernie', 'Tisnawati', 'Tisnawati, Ernie', 'Prenadamedia Group', 'Depok', '2018', '9793465751', '658', 'Manajemen', '658 ERN p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1833, 'KUPKBPK-KB-0601', 'Akuntansi Sektor Publik', NULL, NULL, ', ', 'Andi Offset (Penerbit Andi)', 'Yogyakarta', '2009', '9789792907797', '657', 'Akuntansi', '657 MAR a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1834, 'KUPKBPK-KB-0602', 'Akuntansi : Aktiva = Utang + Modal', 'Hery', NULL, ', Hery', 'Grasindo', 'Jakarta', '2019', '9786020521909', '657', 'Akuntansi', '657 HER a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1835, 'KUPKBPK-KB-0603', 'Mudah Memahami dan Mengimplementasikan Ekonomi Makro : Disertai Teori, Soal Diskusi, dan Studi Kasus', 'Handy', 'Aribowo', 'Aribowo, Handy', 'Andi Offset (Penerbit Andi)', 'Yogyakarta', '2019', '9786230100772', '339', 'ekonomi makro', '339 HAN m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1836, 'KUPKBPK-KB-0604', 'Akuntansi dasar 1 dan 2', NULL, NULL, ', ', 'Grasindo', 'Jakarta', '2016', '9786023755882', '657', 'Akuntansi', '657 HER a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1837, 'KUPKBPK-KB-0605', 'Pendekatan ekonomi dalam penegakan hukum terhadap kejahatan korporasi', 'Asep N', 'Mulyana', 'Mulyana, Asep N', 'Grasindo', 'Jakarta', '2018', '9786020511801', '340', 'Ilmu Hukum', '340 MUL p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1838, 'KUPKBPK-KB-0606', 'Pijar Sang Pembelajar : Percik Pemikiran Mardiasmo', 'Hananto', 'Widhiatmoko', 'Widhiatmoko, Hananto', 'Penerbit Andi', 'Yogyakarta', '2019', NULL, '300', 'Sosial', '300 HAN p', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1839, 'KUPKBPK-KB-0607', 'Pengantar Mikroekonomi', 'Indra', 'Mahardika', 'Mahardika, Indra', 'Quadrant', 'Yogyakarta', '2018', '9786026673480', '330', 'Ekonomi', '330 IND p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1840, 'KUPKBPK-KB-0608', 'Perpajakan Edisi Terbaru 2018', 'Mardiasmo', NULL, ', Mardiasmo', 'Andi Offset (Penerbit Andi)', 'Yogyakarta', '2018', '9789792967944', '336', 'pajak', '336 MAR p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1841, 'KUPKBPK-KB-0609', 'Pengantar Ekonomi Makro', 'Nano', 'Prawoto', 'Prawoto, Nano', 'Raja Grafindo Persada', 'Depok', '2019', '9786232311183', '339', 'ekonomi makro', '339 NAN p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1842, 'KUPKBPK-KB-0610', 'Manajemen Operasi Produksi: Pencapaian Sasaran Organisasi Berkesinambungan Edisi 3', 'Sofjan', 'Assauri', 'Assauri, Sofjan', 'RajaGrafindo Persada', 'Jakarta', '2016', '9786024250034', '658.1', 'Organisasi', '658.1 SOF m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1843, 'KUPKBPK-KB-0611', 'Mudah Memahami Menganalisis Indikator Ekonomi', 'Mudrajad', 'Kuncoro', 'Kuncoro, Mudrajad', 'UPP STIM YKPN', 'Yogyakarta', '2015', '9789793532653', '330', 'Ekonomi', '330 MUD m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1844, 'KUPKBPK-KB-0612', '14 Jam Belajar Public Relation', 'Sri', 'Lestari', 'Lestari, Sri', 'Penerbit Quadrant', 'Yogyakarta', '2021', '9786232447257', '659.2', 'Public Relations', '659.2 SRI 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:24', '2023-01-04 09:22:24'),
(1845, 'KUPKBPK-KB-0613', 'Akuntansi Biaya: Teori & Penerapannya', 'V Wiratna', 'Sujarweni', 'Sujarweni, V Wiratna', 'Pustaka Baru Press', 'Yogyakarta', '2021', '9786021674291', '657', 'Akuntansi', '657 V.  a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1846, 'KUPKBPK-KB-0614', 'Alasan Untuk Tetap Hidup', 'Matt', 'Haig', 'Haig, Matt', 'Gramedia Pustaka Utama', 'Jakarta', '2018', '9786020648538', '658.3', 'Manajemen SDM', '658.3 MAT a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1847, 'KUPKBPK-KB-0615', 'Analisis Kritis Atas Laporan Keuangan', 'Sofyan Syafri', 'Harahap', 'Harahap, Sofyan Syafri', 'Raja Grafindo', 'Jakarta', '2016', '978-979-769-523-1', '657', 'Laporan Keuangan', '657 SOF a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1848, 'KUPKBPK-KB-0616', 'Analisis Detail Dan Mendalam Atas Data Kuantitatif Laporan Keuangan', 'Hery', NULL, 'Hery', 'Gava Media', 'Yogyakarta', '2021', '9786237498902', '657', 'Laporan Keuangan', '657 DR. a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1849, 'KUPKBPK-KB-0617', 'Analisis Laporan Keuangan', NULL, NULL, ', ', 'GPU', 'Jakarta', '2020', '9786020395265', '657', 'Laporan Keuangan', '657 TOT a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1850, 'KUPKBPK-KB-0618', 'Belajar Tuntas Audit Berbantuan Komputer', 'Yulius Eka', 'Agung Saputra', 'Agung Saputra, Yulius Eka', 'Gava Media', 'Yogyakarta', '2013', '9786027869165', '657', 'Auditing', '657 YUL b', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1851, 'KUPKBPK-KB-0619', 'Cara Mudah Pahami Pengadaan Tanah Untuk Pembangunan', 'Jarot widya', 'Muliawan', 'Muliawan, Jarot widya', 'Buku Litera', NULL, NULL, '9786026751232', '658.7', 'Pengadaan Barang/Jasa', '658.7 JAR c', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1852, 'KUPKBPK-KB-0620', 'Catatan Di Sumatra (Balai Pustaka)', 'Muhamad', 'Radjab', 'Radjab, Muhamad', 'KPG', 'Jakarta', '2020', '9786022601074', '300', 'Sosial', '300 MUH c', 'Beli', 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1853, 'KUPKBPK-KB-0621', 'Demokrasi dan Kepemimpinan: Kebangkitan Gerakan Taman Siswa', 'Muhamad', 'Radjab', 'Radjab, Muhamad', 'KPG', NULL, NULL, NULL, '300', 'Sosial', '300 KEN d', 'Beli', 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1854, 'KUPKBPK-KB-0622', 'Ekonomi Pembangunan & Perencanaan', 'M.L', 'Jhingan', 'Jhingan, M.L', 'Raja Grafindo', 'Depok', '2018', '9789794211540', '330', 'Ekonomi', '330 M.L e', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1855, 'KUPKBPK-KB-0623', 'Hidup Bersama Allah dan Jadi Produktif', 'Keluarga besar Samuel Tipa tadan', NULL, ', Keluarga besar Samuel Tipa tadan', 'Bhuana Ilmu Populer', 'Jakarta', '2020', '9786232167179', '230', 'Kristen', '230 SAM h', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1856, 'KUPKBPK-KB-0624', 'How to Win Friends and Influence People in the Digital Age', 'Dale', 'Carnegie', 'Carnegie, Dale', 'Gramedia Pustaka Utama', 'Jakarta', '2012', '9786020316451', '658.3', 'Manajemen SDM', '658.3 DAL h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1857, 'KUPKBPK-KB-0625', 'How to Win Friends and Influence People in the Digital Age, ', 'Dale', 'Carnegie', 'Carnegie, Dale', 'Gramedia Pustaka Utama', 'Jakarta', '2012', '9786020316451', '658.3', 'Manajemen SDM', '658.3 DAL h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1858, 'KUPKBPK-KB-0626', 'Hukum Keuangan Negara Edisi Ketiga', 'Muhammad Djafar', 'Saidi', 'Saidi, Muhammad Djafar', 'Raja Grafindo', NULL, NULL, '9786024251567', '336', 'Keuangan Negara', '336 MUH h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1859, 'KUPKBPK-KB-0627', 'Hukum Perjanjian Kerjasama Operasi', 'Irawan', 'Soerodjo', 'Soerodjo, Irawan', 'LaksBang Jutitia', NULL, NULL, '9786236664094', '343', 'Hukum Publik', '343 IRA h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1860, 'KUPKBPK-KB-0628', 'Hukum Pertanahan Hak Pengelolaan Atas Tanah (HPL)', 'Irawan', 'Soerojo', 'Soerojo, Irawan', 'LaksBang Mediatama', NULL, NULL, '9786021865477', '342', 'Hukum Tata Negara', '342 IRA h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1861, 'KUPKBPK-KB-0629', 'I Want To Die But I Want To Eat Tteokpokki', 'Baek Se', 'Hee', 'Hee, Baek Se', 'Haru Media Sejahtera', 'Jakarta', '2021', '9786237351030', '823', 'Fiksi', '823 BAE i', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1862, 'KUPKBPK-KB-0630', 'Istilah-Istilah Akuntansi Dan Auditing', 'Hery', NULL, ', Hery', 'Grasindo', 'Jakarta', '2019', '9786020521893', '657', 'Auditing', '657 DR. i', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1863, 'KUPKBPK-KB-0631', 'Jangan Membuat Masalah Kecil Jadi Masalah Besar,', 'Richard', 'Carlson', 'Carlson, Richard', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020630267', '658.3', 'Manajemen SDM', '658.3 RIC j', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1864, 'KUPKBPK-KB-0632', 'Janji', 'Tere', 'Liye', 'Liye, Tere', 'Sabak Grip Nusantara', 'Depok', '2021', '9786239726201', '813', 'Fiksi', '813 TER j', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1865, 'KUPKBPK-KB-0633', 'Jika Kita Tak Pernah Baik-Baik Saja', 'Alfi', 'Syahrin', 'Syahrin, Alfi', 'Gagas Media', 'Jakarta', '2020', '9789797809676', '813', 'Fiksi', '813 ALV j', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1866, 'KUPKBPK-KB-0634', 'Journalism Today', 'Andi', 'Fachruddin', 'Fachruddin, Andi', 'Prenada Media', NULL, NULL, '9786024229191', '659.2', 'Public Relations', '659.2 AND j', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1867, 'KUPKBPK-KB-0635', 'Kaltara Rumah Kita', 'Yansen', NULL, ', Yansen', 'BIP', NULL, NULL, NULL, '300', 'Sosial', '300 YAN k', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1868, 'KUPKBPK-KB-0636', 'Kebijakan Akuntansi Pemerintah Daerah (Konsep dan Implementasi)', 'Indra F', 'Bagjana', 'Bagjana, Indra F', 'Penerbit Yrama Widya', 'Bandung', '2021', '9786232055261', '657', 'Akuntansi Pemerintah', '657 IND k', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1869, 'KUPKBPK-KB-0637', 'Konsep dan Penerapan Ekonometrika Menggunakan E-Views', 'Setyo Tri', 'Wahyudi', 'Wahyudi, Setyo Tri', 'Raja Grafindo Persada', 'Depok', '2020', '9786232313545', '330', 'Ekonomi', '330 SET k', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1870, 'KUPKBPK-KB-0638', 'Legal Issue Pada Peradilan Tata Usaha Negara Pasca Reformasi', 'Sudarsono', NULL, ', Sudarsono', 'Prenada Media', NULL, NULL, '9786232181175', '342', 'Hukum Tata Negara', '342 SUD l', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1871, 'KUPKBPK-KB-0639', 'Loving The Wounded Soul', 'Regis', 'Machdi', 'Machdi, Regis', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020633701', '658.3', 'Manajemen SDM', '658.3 REG l', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1872, 'KUPKBPK-KB-0640', 'Makro Ekonomi ED 3: Teori Pengantar', 'Sadono', 'Sukirno', 'Sukirno, Sadono', 'Rajawali Pers', NULL, NULL, NULL, '339', 'ekonomi makro', '339 SAD m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1873, 'KUPKBPK-KB-0641', 'Manajemen Keuangan Teori Aplikasi dan Hasil Penelitian', 'V Wiratna', 'Sujarweni', 'Sujarweni, V Wiratna', 'Pustaka Baru Press', 'Yogyakarta', NULL, '9786026237552', '001.42', 'Penelitian', '001.42 V.  m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1874, 'KUPKBPK-KB-0642', 'Manajemen Konflik', 'Andri', 'Kristanto', 'Kristanto, Andri', 'Gava Media', NULL, NULL, '9786237498636', '658.1', 'Organisasi', '658.1 AND m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1875, 'KUPKBPK-KB-0643', 'Manajemen Pelayanan Publik', 'Hayat', NULL, 'Hayat', 'Raja Grafindo Persada', 'Depok', '2019', '9786024250805', '320', 'kebijakan publik', '320 HAY m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1876, 'KUPKBPK-KB-0644', 'Manajemen Pemerintahan Desa & Tata Kelola Badan Usaha Milik Desa', 'Yayat', 'Rukayat', 'Rukayat, Yayat', 'Bee Media Pustaka', 'Jakarta', '2021', '9786237827979', '320', 'kebijakan publik', '320 DRS m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1877, 'KUPKBPK-KB-0645', 'Manajemen Strategi Sektor Publik', NULL, NULL, ', ', 'Refika Aditama', 'Bandung', '2021', '9786237060932', '320', 'kebijakan publik', '320 PRO m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1878, 'KUPKBPK-KB-0646', 'Mantappu Jiwa *Buku Latihan Soal', 'Jerome', 'Polin', 'Polin, Jerome', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020632414', '658.3', 'Manajemen SDM', '658.3 JER m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1879, 'KUPKBPK-KB-0647', 'Menulis Berita di Media Massa & Produksi Feature', 'Isnawijayani', NULL, 'Isnawijayani', 'Penerbit Andi', NULL, NULL, '9789792968859', '659.2', 'Public Relations', '659.2 ISN m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1880, 'KUPKBPK-KB-0648', 'Metodologi Penelitian Kuantitatif', 'Burhan', 'Bungin', 'Bungin, Burhan', 'Prenada Media', NULL, NULL, NULL, '001.42', 'Penelitian', '001.42 BUR m', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1881, 'KUPKBPK-KB-0649', 'New Students Pocket Grammar', 'Teguh', 'Handoko', 'Handoko, Teguh', 'Real Books', 'Klaten', '2021', '9786027701434', '420', 'Bahasa Inggris', '420 TEG n', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1882, 'KUPKBPK-KB-0650', 'New Students Pocket Grammar', 'Teguh', 'Handoko', 'Handoko, Teguh', 'Real Books', 'Klaten', '2021', '9786027701434', '420', 'Bahasa Inggris', '420 TEG n', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1883, 'KUPKBPK-KB-0651', 'New Students Pocket Grammar', 'Teguh', 'Handoko', 'Handoko, Teguh', 'Real Books', 'Klaten', '2021', '9786027701434', '420', 'Bahasa Inggris', '420 TEG n', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1884, 'KUPKBPK-KB-0652', 'New Students Pocket Grammar', 'Teguh', 'Handoko', 'Handoko, Teguh', 'Real Books', 'Klaten', '2021', '9786027701434', '420', 'Bahasa Inggris', '420 TEG n', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1885, 'KUPKBPK-KB-0653', 'New Students Pocket Grammar', 'Teguh', 'Handoko', 'Handoko, Teguh', 'Real Books', 'Klaten', '2021', '9786027701434', '420', 'Bahasa Inggris', '420 TEG n', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1886, 'KUPKBPK-KB-0654', 'Panduan Lengkap Pengembangan Softskill', 'Feri', 'Sulianta', 'Sulianta, Feri', 'Penerbit Andi', NULL, NULL, '9789792971118', '658.3', 'Manajemen SDM', '658.3 FER p', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1887, 'KUPKBPK-KB-0655', 'Penelitian Ilmu Sosial : Meneladani Pendekatan Sistemis', 'Jan J.J.M', 'Wuisman', 'Wuisman, Jan J.J.M', 'Yayasan Pustaka Obor Indonesia', 'Jakarta', '2021', '9786233210775', '001.42', 'Penelitian', '001.42 DR. p', NULL, 'Ilmu sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1888, 'KUPKBPK-KB-0656', 'Penerapan Teori Hukum Pada Penelitian Tesis & Disertai Edisi', 'Salim HS', NULL, ', Salim HS', 'Raja Grafindo', NULL, NULL, '9789797699482', '001.42', 'Penelitian', '001.42 H.  p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1889, 'KUPKBPK-KB-0657', 'Pengantar Akuntansi', 'V Wiratna', 'Sujarweni', 'Sujarweni, V Wiratna', 'Pustaka Baru Press', NULL, NULL, '9786023760015', '657', 'Akuntansi', '657 V.  p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1890, 'KUPKBPK-KB-0658', 'Pengantar Akuntansi 2', 'V Wiratna', 'Sujarweni', 'Sujarweni, V Wiratna', 'Pustaka Baru Press', 'Yogyakarta', '2019', '9786023762965', '657', 'Akuntansi', '657 V.  p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1891, 'KUPKBPK-KB-0659', 'Perang Eropa Jilid 1', 'P.K Ojong', NULL, ', P.K Ojong', 'GPU', NULL, NULL, NULL, '300', 'Sosial', '300 P.K p', 'Beli', 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1892, 'KUPKBPK-KB-0660', 'Perang Eropa Jilid 2', 'P.K Ojong', NULL, ', P.K Ojong', 'GPU', NULL, NULL, NULL, '300', 'Sosial', '300 P.K p', 'Beli', 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1893, 'KUPKBPK-KB-0661', 'Perang Eropa Jilid 3', 'P.K Ojong', NULL, ', P.K Ojong', 'GPU', NULL, NULL, NULL, '300', 'Sosial', '300 P.K p', 'Beli', 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1894, 'KUPKBPK-KB-0662', 'Perang Padri di Sumatra Barat (1803-1838)', 'Muhamad', 'Radjab', 'Radjab, Muhamad', 'KPG', NULL, NULL, NULL, '300', 'Sosial', '300 MUH p', 'Beli', 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1895, 'KUPKBPK-KB-0663', 'Perencanaan Pembangunan Daerah Teori dan Aplikasi', 'Mudrajad', 'kuncoro', 'kuncoro, Mudrajad', 'Gramedia Pustaka Utama', 'Jakarta', '2018', '9786020398426', '320', 'kebijakan publik', '320 PRO p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1896, 'KUPKBPK-KB-0664', 'Plea Bargaining & Deferred Prosecution Agreement', 'Febby Mutiara', 'Nelson', 'Nelson, Febby Mutiara', 'Sinar Grafika', NULL, NULL, '9789790078987', '343', 'Hukum Publik', '343 FEB p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1897, 'KUPKBPK-KB-0665', 'Pokok-pokok dan Sistem Pemerintahan Desa', 'Muhamad Mu\'iz', 'Raharjo', 'Raharjo, Muhamad Mu\'iz', 'Raja Grafindo Persada', 'Depok', '2021', '9786232315570', '320', 'kebijakan publik', '320 MUH p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1898, 'KUPKBPK-KB-0666', 'Pria Begini, Wanita Begtu , Bagaimana sih Biar Nyambung?', 'Lota', 'Tatsunari', 'Tatsunari, Lota', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9786230304675', '813', 'Fiksi', '813 IOT p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1899, 'KUPKBPK-KB-0667', 'Pulang Pergi ', 'Tere', 'Liye', 'Liye, Tere', 'Sabak Grip Nusantara', 'Depok', '2021', '9786239554521', '813', 'Fiksi', '813 TER p', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1900, 'KUPKBPK-KB-0668', 'Sebuah Seni untuk Bersikap Bodo Amat', 'Mark', 'Manson', 'Manson, Mark', 'Gramedia Widiasarana Indonesia', 'Jakarta', '2018', '9786024526986', '658.3', 'Softskill', '658.3 MAR s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1901, 'KUPKBPK-KB-0669', 'Sebuah Seni untuk Bersikap Bodo Amat, ', 'Mark', 'Manson', 'Manson, Mark', 'Gramedia Widiasarana Indonesia', 'Jakarta', '2018', '9786024526986', '658.3', 'Fiksi', '658.3 MAR s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1902, 'KUPKBPK-KB-0670', 'Segala-galanya Ambyar, Sebuah buku tentang harapan', 'Mark', 'Manson', 'Manson, Mark', 'Gramedia Widiasarana Indonesia', 'Jakarta', '2020', '9786020522838', '823', 'Fiksi', '823 MAR s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1903, 'KUPKBPK-KB-0671', 'Semasa Kecil di Kampung', 'Muhamad ', 'Radjab', 'Radjab, Muhamad ', 'KPG', NULL, NULL, NULL, '300', 'Sosial', '300 MUH s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1904, 'KUPKBPK-KB-0672', 'Seni Berbicara kepada Siapa Saja, Kapan Saja, dan di Mana Saja (ed. Revisi)', 'Larry', 'King', 'King, Larry', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020628028', '659.2', 'Public Relations', '659.2 LAR s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1905, 'KUPKBPK-KB-0673', 'Sistem Akuntansi', 'V Wiratna', 'Sujarweni', 'Sujarweni, V Wiratna', 'Pustaka Baru Press', 'Yogyakarta', '2020', '9786021674758', '657', 'Akuntansi', '657 V.  s', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1906, 'KUPKBPK-KB-0674', 'Sistem Informasi Akuntansi', 'Lilis', 'Puspitawati', 'Puspitawati, Lilis', 'Rekayasa Sains', 'Bandung', '2021', '9786236007020', '657', 'Akuntansi', '657 LIL s', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1907, 'KUPKBPK-KB-0675', 'Taipan - Lahirnya Para Konglomerat Indonesia', 'William', 'Yang', 'Yang, William', 'Elex Media Komputindo', NULL, NULL, NULL, '300', 'Sosial', '300 WIL t', 'Beli', 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1908, 'KUPKBPK-KB-0676', 'Tak Apa-Apa Tak Sempurna', 'Brene ', 'Brown', 'Brown, Brene ', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9786020640921', '658.3', 'Manajemen SDM', '658.3 BRE t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1909, 'KUPKBPK-KB-0677', 'Teori dan Praktik Proses Pemeriksaan Terdakwa Tindakpidana Korupsi', 'Agus', 'Kasiyanto', 'Kasiyanto, Agus', 'Prenada Media', 'Jakarta', NULL, '9786232185630', '364', 'Korupsi', '364 AGU t', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1910, 'KUPKBPK-KB-0678', 'Teori Hierarki Norma Hukum', 'Jimly', 'Assiddiqie', 'Assiddiqie, Jimly', 'Konstitusi Press', 'Jakarta', '2020', '9786027995277', '340', 'Ilmu Hukum', '340 PRO t', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1911, 'KUPKBPK-KB-0679', 'The Life Changing Magic Of Tidying Up', 'Marie', 'Kondo', 'Kondo, Marie', 'Bentang Pustaka', 'Yogyakarta', '2019', '9786022912446', '658.3', 'Manajemen SDM', '658.3 MAR t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1912, 'KUPKBPK-KB-0680', 'Psychology of Money', 'Morgan', 'Housel', 'Housel, Morgan', 'Bentara Aksara Cahaya', 'Tanggerang Selatan', '2020', '9786026486578', '650', 'Bisnis', '650 MOR p', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1913, 'KUPKBPK-KB-0681', 'Think and Grow Rich', 'Napoleon ', 'Hill', 'Hill, Napoleon ', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020630663', '650', 'Bisnis', '650 NAP t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1914, 'KUPKBPK-KB-0682', 'Writing: Skills and Stratigies For Academic', 'Otong', 'Setiawan Dj', 'Setiawan Dj, Otong', 'Yrama Widya', NULL, NULL, NULL, '420', 'Bahasa Inggris', '420 OTO w', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1915, 'KUPKBPK-KB-0683', 'You Do You: Discovering Life through Experiments & Self-Awareness, ', 'Fellexandro', 'Ruby', 'Ruby, Fellexandro', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9786020649344', '658.1', 'Organisasi', '658.1 FEL y', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1916, 'KUPKBPK-KB-0684', 'STATISTIKA untuk Ekonomi, Bisnis, dan Sosial', 'Syahirman', 'Yusi', 'Yusi, Syahirman', 'Penerbit ANDI', 'Yogyakarta', '2020', '9786230103766', '001.42', 'Penelitian', '001.42 DR. s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1917, 'KUPKBPK-KB-0685', 'Dasar-Dasar Perekonomian Indonesia', 'Irham', 'Fahmi', 'Fahmi, Irham', 'Raja Grafindo Persada', 'Depok', '2019', '9786024258726', '330', 'Ekonomi', '330 IRH d', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1918, 'KUPKBPK-KB-0686', 'MORE IMPORTANT THAN MONEY Tim Pengusaha', 'Robert', 'Kiyosaki', 'Kiyosaki, Robert', 'Gramedia  Pustaka Utama', 'Jakarta', '2019', '9786020623887', '332', 'Investasi', '332 ROB m', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1919, 'KUPKBPK-KB-0687', 'Teori dan Praktik Penelitian Kuantitatif, Kualitatif, PTK, R & D', 'Endang Widi', 'Winarni', 'Winarni, Endang Widi', 'Bumi Aksara', 'Jakarta', '2018', '9786024444587', '001.42', 'Penelitian', '001.42 PRO t', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1920, 'KUPKBPK-KB-0688', 'Statistik Konsep Dasar, Aplikasi dan Pengembangannya', 'Agus', 'Irianto', 'Irianto, Agus', 'Prenada Media Group', 'Jakarta', '2016', '9786027985766', '001.42', 'Penelitian', '001.42 PRO s', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25');
INSERT INTO `books` (`id`, `book_number`, `book_title`, `book_firstname`, `book_lastname`, `book_author`, `book_publisher`, `book_city`, `book_year`, `book_isbn`, `book_class`, `book_subject`, `book_classcode`, `book_acq`, `book_location`, `book_nup`, `book_brand`, `book_image`, `book_createdby`, `book_updatedby`, `book_isavailable`, `created_at`, `updated_at`) VALUES
(1921, 'KUPKBPK-KB-0689', 'Metodologi Penelitian Kualitatif \"Berbagi Pengalaman Dari Lapangan\"', 'Siti', 'Kholifah', 'Kholifah, Siti', 'Raja Grafindo Persada', 'Depok', '2018', '9786024255602', '001.42', 'Penelitian', '001.42 SIT m', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1922, 'KUPKBPK-KB-0690', 'Intisari Konsep Dasar Akuntansi', 'Hery', NULL, 'Hery', 'Grasindo', 'Jakarta', '2019', '9786020520308', '657', 'Akuntansi', '657 HER i', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1923, 'KUPKBPK-KB-0691', 'Metodologi Penelitian Bisnis, Lengkap dengan Teknik Pengolahan Data SPSS', 'Syaiful', 'Bahri', 'Bahri, Syaiful', 'Penerbit ANDI', 'Yogyakarta', '2018', '9789792972191', '001.42', 'Penelitian', '001.42 SYA m', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1924, 'KUPKBPK-KB-0692', 'Dasar-Dasar Akuntansi', 'Harnanto', NULL, ', Harnanto', 'Penerbit ANDI', 'Yogyakarta', '2019', '9789792966275', '657', 'Akuntansi', '657 DRS d', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1925, 'KUPKBPK-KB-0693', 'Akuntansi Keuangan Menengah, Sesuai PSAK dan IFRS', 'Hery', NULL, ', Hery', 'Grasindo', 'Jakarta', '2020', '9786020523231', '657', 'Akuntansi', '657 HER a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1926, 'KUPKBPK-KB-0694', 'Ragam Analisis dalam Metode Penelitian untuk Penulisan Skripsi, Tesis, & Disertasi', 'Umi', 'Narimawati', 'Narimawati, Umi', 'Penerbit andi', 'Yogyakarta', '2020', '9786230103186', '001.42', 'Penelitian', '001.42 PRO r', NULL, 'Ilmu Sosial', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1927, 'KUPKBPK-KB-0695', 'Ekonomi Pembangunan', 'Lincolin', 'Arsyad', 'Arsyad, Lincolin', 'UPP STIM YKPN', 'Yogyakarta', '2016', '9789793532417', '330', 'Ekonomi', '330 PRO e', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1928, 'KUPKBPK-KB-0696', 'RICH DAD POOR DAD', 'Robert T', 'Kiyosaki', 'Kiyosaki, Robert T', 'Gramedia Pustaka Utama', 'Jakarta', '2016', '9786020333175', '332', 'Investasi', '332 ROB r', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1929, 'KUPKBPK-KB-0697', 'Mudah Memahami dan  Mengimplementasikan Ekonomi Makro- Disertai Teori, Soal Diskusi, dan Studi Kasus EDISI REVISI', 'Handy ', 'Aribowo', 'Aribowo, Handy ', 'Penerbit Andi', 'Yogyakarta', '2019', '9786230100772', '339', 'ekonomi makro', '339 HAN m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1930, 'KUPKBPK-KB-0698', 'AGATHA CHRISTIE  \"The World\'s Favourite\"', NULL, NULL, ', ', 'Gramedia Pustaka Utama', 'Jakarta', '2016', '9786020326214', '813', 'Fiksi', '813 AGA a', 'Beli', 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1931, 'KUPKBPK-KB-0699', 'Auditing & Jasa Assurance Pendekatan Terintegrasi -1', 'Alvin A', 'Arens', 'Arens, Alvin A', 'Penerbit Erlangga', 'Jakarta', '2015', '9786022985402', '657', 'Auditing', '657 ALV a', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1932, 'KUPKBPK-KB-0700', 'Auditing & Jasa Assurance Pendekatan Terintegrasi -2', 'Alvin A', 'Arens', 'Arens, Alvin A', 'Penerbit Erlangga', 'Jakarta', '2015', '9786022986003', '657', 'Auditing', '657 ALV a', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1933, 'KUPKBPK-KB-0701', 'COLLAPSE', 'Jared', 'Diamond', 'Diamond, Jared', 'Kepustakaan Populer Gramedia', 'Jakarta', '2014', '9786024247263', '300', 'Sosial', '300 JAR c', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1934, 'KUPKBPK-KB-0702', 'Dasar Logika Pemrograman', 'Abdul', 'Kadir', 'Kadir, Abdul', 'Elex Media Komputindo', 'Jakarta', '2021', '9786230027291', '005', 'Komputer- Pemrograman', '005 ABD d', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1935, 'KUPKBPK-KB-0703', 'Logika Pemrograman Menggunakan Java', 'Abdul', 'Kadir', 'Kadir, Abdul', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230019500', '005', 'Komputer- Pemrograman', '005 ABD l', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1936, 'KUPKBPK-KB-0704', 'Manajemen Keuangan Publik', 'Indra', 'Bastian', 'Bastian, Indra', 'Penerbit ANDI', 'Yogyakarta', '2020', '9786230104626', '657', 'Akuntansi', '657 PRO m', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1937, 'KUPKBPK-KB-0705', 'MEDITATIONS', 'Marcus', 'Aurelius', 'Aurelius, Marcus', 'Mizan Publika', 'Jakarta', '2021', '9786232422155', '658.3', 'Manajemen SDM', '658.3 MAR m', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1938, 'KUPKBPK-KB-0706', 'f', 'Theodorus M', 'Tunakota', 'Tunakota, Theodorus M', 'Penerbit Salemba Empat', 'Jakarta', '2018', '9789790618022', '336', 'Keuangan Negara', '336 THE m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1939, 'KUPKBPK-KB-0707', 'More Important than Money', 'Robert', 'Kiyosaki', 'Kiyosaki, Robert', 'Gramedia  Pustaka Utama', 'Jakarta', '2019', '9786020623887', '657', 'Akuntansi', '657 ROB m', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1940, 'KUPKBPK-KB-0708', 'Pengantar Ekonomi Mikro dan Makro', 'Paulus', 'Kurniawan', 'Kurniawan, Paulus', 'Penerbit ANDI', 'Yogyakarta', '2018', '9789792970258', '339', 'ekonomi makro', '339 PAU p', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1941, 'KUPKBPK-KB-0709', 'Practicing the Power of Now', 'Eckhart', 'Tolle', 'Tolle, Eckhart', 'Bhuana Ilmu Populer Kelompok Gramedia', 'Jakarta', '2021', '9786230405761', '658.3', 'Manajemen SDM', '658.3 ECK p', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1942, 'KUPKBPK-KB-0710', 'COLLAPSE', 'Jared', 'Diamond', 'Diamond, Jared', 'Kepustakaan Populer Gramedia', 'Jakarta', '2014', '9786024247263', '300', 'Sosial', '300 JAR c', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1943, 'KUPKBPK-KB-0711', 'Rich Dad Poor Dad', 'Robert T', 'Kiyosaki', 'Kiyosaki, Robert T', 'Gramedia Pustaka Utama', 'Jakarta', '2016', '9786020333175', '650', 'Investasi', '650 ROB r', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1944, 'KUPKBPK-KB-0712', 'Rich Dad\"s The Business School edisi ke 3', 'Robert T', 'Kiyosaki', 'Kiyosaki, Robert T', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9786020355399', '650', 'Bisnis', '650 ROB r', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1945, 'KUPKBPK-KB-0713', 'Secret: Rahasia', 'Rhonda ', 'Byrne', 'Byrne, Rhonda ', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9789792231557', '658.3', 'Manajemen SDM', '658.3 RHO s', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1946, 'KUPKBPK-KB-0714', 'Teori Akuntansi Keuangan', 'Rahmawati', NULL, ', Rahmawati', 'UPP STIM YKPN', 'Yogyakarta', '2021', '9786237845195', '657', 'Akuntansi', '657 PRO t', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1947, 'KUPKBPK-KB-0715', 'The 5 AM Club: Miliki Pagi, Tingkatkan Hidup Anda', 'Robin', 'Sharma', 'Sharma, Robin', 'Bhuana Ilmu Populer Kelompok Gramedia', 'Jakarta', '2019', '9786232161368', '658.3', 'Manajemen SDM', '658.3 ROB t', 'Beli', ' Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1948, 'KUPKBPK-KB-0716', 'The Black Swan', NULL, NULL, ', ', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9786020644004', '658.3', 'Manajemen SDM', '658.3 NAS t', 'Beli', ' Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1949, 'KUPKBPK-KB-0717', 'The Power of Now', 'Eckhart', 'Tolle', 'Tolle, Eckhart', 'Bhuana Ilmu Populer Kelompok Gramedia', 'Jakarta', '2021', '9786230405198', '658.3', 'Manajemen SDM', '658.3 ECK t', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1950, 'KUPKBPK-KB-0718', 'Who Moved My Cheese', 'Spencer ', 'Johnson', 'Johnson, Spencer ', 'Elex Media Komputindo', 'Jakarta', '2020', '9786020488608', '658.3', 'Manajemen SDM', '658.3 SPE w', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1951, 'KUPKBPK-KB-0719', 'Akuntansi itu Mudah : Panduan Praktis Belajar Akuntansi bagi Pemula Buku 1 Pendekatan Teori dan Praktik', 'Pajoan Mas\'ud', 'Sutanto', 'Sutanto, Pajoan Mas\'ud', 'Mitra Wacana Media', 'Jakarta', '2020', '9786023184705', '657', 'Akuntansi', '657 PAO a', 'Beli', 'Buku Baru ', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1952, 'KUPKBPK-KB-0720', 'Akuntansi Pemerintah Daerah Berbasis Pada Akrual Entitas Akuntansi', 'Nunuy Nur', 'Afifah', 'Afifah, Nunuy Nur', 'KENCANA', 'Jakarta', '2020', '9786232183124', '657', 'Akuntansi Pemerintah', '657 PRO a', 'Beli', 'Buku Baru ', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1953, 'KUPKBPK-KB-0721', 'Audit Lingkungan (Edisi Revisi)', 'Tuhana Taufik', 'Andrianto', 'Andrianto, Tuhana Taufik', 'Global Pustaka Utama', 'Yogyakarta', '2020', '9789793146881', '657', 'Auditing', '657 TUH a', 'Beli', 'Buku Baru ', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1954, 'KUPKBPK-KB-0722', 'Audit Sektor Publik, Suatu Pengantar', 'Ihyaul', 'Ulum', 'Ulum, Ihyaul', 'Bumi Aksara', 'Jakarta', '2012', '9789790105621', '657', 'Auditing', '657 IHY a', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1955, 'KUPKBPK-KB-0723', 'Ego is The enemy', 'Ryan', 'Holiday', 'Holiday, Ryan', 'Elex Media Komputindo', 'Jakarta', '2021', '9786020496481', '658.3', 'Manajemen SDM', '658.3 RYA e', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1956, 'KUPKBPK-KB-0724', 'Ekonomi Publik : Konsep dan Implementasi Kebijakan', 'Bambang', 'Suprayitno', 'Suprayitno, Bambang', 'UPP STIM YKPN', 'Yogyakarta', '2017', '9786021286463', '320', 'kebijakan publik', '320 BAM e', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1957, 'KUPKBPK-KB-0725', 'Hukum Pembuktian Tindak Pidana Korupsi Edisi Revisi', 'Adami', 'Chazawi', 'Chazawi, Adami', 'Media Nusa Creative', 'Malang', '2018', '9786020839400', '364', 'Korupsi', '364 ADA h', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1958, 'KUPKBPK-KB-0726', 'Korupsi Desa', 'Pandu Pramoe', 'Kartika', 'Kartika, Pandu Pramoe', 'Ruas Media (Genta Group)', 'Yogyakarta', '2020', '9786237735113', '364', 'Korupsi', '364 PAN k', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1959, 'KUPKBPK-KB-0727', 'MEDITATIONS', 'Marcus', 'Aurelius', 'Aurelius, Marcus', 'Mizan Publika', 'Jakarta', '2021', '9786232422155', '658.3', 'Manajemen SDM', '658.3 MAR m', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1960, 'KUPKBPK-KB-0728', 'More Important than Money', 'Robert', 'Kiyosaki', 'Kiyosaki, Robert', 'Gramedia  Pustaka Utama', 'Jakarta', '2019', '9786020623887', '332', 'Investasi', '332 ROB m', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1961, 'KUPKBPK-KB-0729', 'Mudah Memahami dan  Mengimplementasikan Ekonomi Makro- Disertai Teori, Soal Diskusi, dan Studi Kasus EDISI REVISI', 'Handy', 'Aribowo', 'Aribowo, Handy', 'Penerbit Andi', 'Yogyakarta', '2019', '9786230100772', '339', 'ekonomi makro', '339 HAN m', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1962, 'KUPKBPK-KB-0730', 'Penerapan Hukum dan Strategi Pemberantasan Korupsi - Studi Kasus BLBI', 'Moh Askin', NULL, ', Moh Askin', 'KENCANA', 'Jakarta', '2020', '9786232184336', '364', 'Korupsi', '364 PRO p', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1963, 'KUPKBPK-KB-0731', 'Perekonomian Indonesia', 'Faisal', 'Basri', 'Basri, Faisal', 'Penerbit Erlangga', 'Jakarta', '2002', '9796884755', '320', 'kebijakan publik', '320 FAI p', 'Beli', 'Buku Baru ', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1964, 'KUPKBPK-KB-0732', 'Rich Dad Poor Dad', 'Robert T', 'Kiyosaki', 'Kiyosaki, Robert T', 'Gramedia Pustaka Utama', 'Jakarta', '2016', '9786020333175', '650', 'Investasi', '650 ROB r', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1965, 'KUPKBPK-KB-0733', 'Rich Dad\'s The Business School Edisi Ketiga', 'Robert T', 'Kiyosaki', 'Kiyosaki, Robert T', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9786020355399', '658.3', 'Manajemen SDM', '658.3 ROB r', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1966, 'KUPKBPK-KB-0734', 'Secret: Rahasia', 'Rhonda', 'Byrne', 'Byrne, Rhonda', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9789792231557', '658.3', 'Manajemen SDM', '658.3 RHO s', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1967, 'KUPKBPK-KB-0735', 'Suatu Analisis tentang Tindak Pidana Korupsi di Indonesia', 'Maidin', 'Gustom', 'Gustom, Maidin', 'Refika Aditama', 'Bandung', '2018', '9786026322807', '364', 'Korupsi', '364 PRO s', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1968, 'KUPKBPK-KB-0736', 'Teori Ekonomi Moneter dan Temuan Empiris', 'Imamudin ', 'Yuliadi', 'Yuliadi, Imamudin ', 'Gosyen Publishing', 'Yogyakarta', '2019', '9786025411656', '330', 'Ekonomi', '330 DR, t', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1969, 'KUPKBPK-KB-0737', 'Terdidik (Educated)', 'Tara', 'Westover', 'Westover, Tara', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9786020650357', '658.3', 'Manajemen SDM', '658.3 TAR t', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1970, 'KUPKBPK-KB-0738', 'The Black Swan', NULL, NULL, ', ', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9786020644004', '658.3', 'Manajemen SDM', '658.3 NAS t', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1971, 'KUPKBPK-KB-0739', 'The Power of Now', NULL, NULL, ', ', 'Bhuana Ilmu Populer Kelompok Gramedia', 'Jakarta', '2021', '9786230405198', '658.3', 'Manajemen SDM', '658.3 ECK t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1972, 'KUPKBPK-KB-0740', 'Who Moved My Cheese', NULL, NULL, ', ', 'Elex Media Komputindo', 'Jakarta', '2020', '9786020488608', '658.3', 'Manajemen SDM', '658.3 SPE w', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1973, 'KUPKBPK-KB-0741', 'Terdidik (Educated)', 'Tara', 'Westover', 'Westover, Tara', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9786020650357', '658.3', 'Manajemen SDM', '658.3 TAR t', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1974, 'KUPKBPK-KB-0742', 'Negeri Para Bedebah', 'Tere ', 'Liye', 'Liye, Tere ', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9789792285529', '813', 'Fiksi', '813 TER n', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1975, 'KUPKBPK-KB-0743', 'Pulang', 'Tere ', 'Liye', 'Liye, Tere ', 'Sabak Grip Nusantara', 'Depok', '2021', '9786239554507', '813', 'Fiksi', '813 TER p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1976, 'KUPKBPK-KB-0744', 'Pergi', 'Tere ', 'Liye', 'Liye, Tere ', 'Sabak Grip Nusantara', 'Depok', '2021', '9786239554514', '813', 'Fiksi', '813 TER p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1977, 'KUPKBPK-KB-0745', 'Pulang Pergi ', 'Tere ', 'Liye', 'Liye, Tere ', 'Sabak Grip Nusantara', 'Depok', '2021', '9786239554521', '813', 'Fiksi', '813 TER p', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1978, 'KUPKBPK-KB-0746', 'How To Respect my self', 'Yoon Hong', 'Gyun', 'Gyun, Yoon Hong', 'Transmedia Pustaka', 'Jakarta', '2021', '9786237100331', '658.3', 'Manajemen SDM', '658.3 YOO h', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1979, 'KUPKBPK-KB-0747', 'Negeri di Ujung Tanduk', 'Tere ', 'Liye', 'Liye, Tere ', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9789792294293', '813', 'Fiksi', '813 TER n', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1980, 'KUPKBPK-KB-0748', 'Find Your Why', 'Simon', 'Sinek', 'Sinek, Simon', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9786020631370', '658.3', 'Manajemen SDM', '658.3 SIM f', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1981, 'KUPKBPK-KB-0749', 'Bagaimana Demokrasi Mati', 'Steven', 'Levitsky', 'Levitsky, Steven', 'Gramedia Pustaka Utama', 'Jakarta', '2021', '9786020385044', '320', 'kebijakan publik', '320 STE b', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1982, 'KUPKBPK-KB-0750', 'Membangun Indonesia bersih melalui Zero Fraud Pada Operasional Perbankan', 'Soetopo', NULL, 'Soetopo', 'Bangun Perisai Integritas', 'Bekasi', '2020', '9786239331702', '332', 'Bank', '332 SOE m', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1983, 'KUPKBPK-KB-0751', 'Pengelolaan Keuangan BLU/ BLUD Berbasis Teknologi Informasi', 'Yannuar E', 'Restianto', 'Restianto, Yannuar E', 'Unit Penerbit dan Percetakan  Sekolah Tinggi Ilmu Manajemen YKPN', 'Yogyakarta', '2020', '9786237845096', '336', 'keuangan daerah', '336 DR. p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1984, 'KUPKBPK-KB-0752', 'Ketika Kata-kata berjatuhan dari langit Jakarta', 'Sigit', 'Rais', 'Rais, Sigit', 'Ellunar Publisher', 'Bandung', '2017', '9786026567796', '813', 'Fiksi', '813 SIG k', NULL, 'Novel', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1985, 'KUPKBPK-KB-0753', 'Auditing Proyek-proyek konstruksi', 'Hendra', 'Susanto', 'Susanto, Hendra', 'Penerbit ANDI', 'Yogyakarta', '2013', '9789792940183', '657', 'Auditing', '657 HEN a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1986, 'KUPKBPK-KB-0754', 'Standar Akuntansi Keuangan Entitas Tanpa Akuntabilitas Publik', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia (IAI)', 'Jakarta', '2020', '9789799020611', '657', 'Akuntansi', '657 DEW s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1987, 'KUPKBPK-KB-0755', 'Standar Akuntansi Keuangan Syariah', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia (IAI)', 'Jakarta', '2020', '9789799020581', '657', 'Akuntansi', '657 DEW s', 'Hibah', 'Koleksi Khusus Reading Corner', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1988, 'KUPKBPK-KB-0756', 'Standar Akuntansi Keuangan Entitas Mikro, Kecil, dan Menengah', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia (IAI)', 'Jakarta', '2020', '9789799020598', '657', 'Akuntansi', '657 DEW s', 'Hibah', 'Koleksi Khusus Reading Corner', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1989, 'KUPKBPK-KB-0757', 'Pemimpin yang \"Tuhan\"', 'Emha Ainun', 'Nadjib', 'Nadjib, Emha Ainun', 'Bentang Pustaka', 'Yogyakarta', '2018', '9786022915126', '658.3', 'Manajemen SDM', '658.3 EMH p', 'Hibah', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1990, 'KUPKBPK-KB-0758', 'Sidang Virtual : Idealisme, Peluang, Tantangan, dan Implementasinya', 'Masyhudi', NULL, ', Masyhudi', 'Kompas Media Nusantara', 'Jakarta', '2021', '9786232416352', '342', 'Hukum Tata Negara', '342 DR. s', 'Hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1991, 'KUPKBPK-KB-0759', 'Psikologi Politik ', 'Whinda', 'Yustisia', 'Yustisia, Whinda', 'Penerbit Buku Kompas', 'Jakarta', '2021', '9786232416390', '658.3', 'Manajemen SDM', '658.3 WHI p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1992, 'KUPKBPK-KB-0760', 'Perkembangan dan Teori Pengisian Jabatan Pimpinan Badan Pemeriksa Keuangan (BPK) dari Masa ke Masa', 'Dumaria', 'Simanjuntak', 'Simanjuntak, Dumaria', 'LeutikaPrio', 'Yogyakarta', '2020', '9786023718481', '336', 'Keuangan Negara', '336 DUM p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1993, 'KUPKBPK-KB-0761', 'Reformasi Akuntansi Pemerintah Daerah Menuju Full Accrual', 'Bahrullah', 'Akbar', 'Akbar, Bahrullah', 'CV Bumi Metro Jaya', 'Jakarta', '2014', '9786021793749', '657', 'Akuntansi Pemerintah', '657 BAH r', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1994, 'KUPKBPK-KB-0762', 'Petunjuk Teknis Pemeriksaan LKPP/LKKL/LKBUN BADAN PEMERIKSA KEUANGAN REPUBLIK INDONESIA', 'BPK RI', NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2020', '-', '336', 'Keuangan Negara', '336 BAD p', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1995, 'KUPKBPK-KB-0763', 'Undang-Undang Dasar Negara Republik Indonesia Tahun 1945,  UU Nomor 17 Tahun 2003 Tentang Keuangan Negara', NULL, NULL, ', ', 'JDI Hukum DITAMA BINBANGKUM BPK RI', 'Jakarta', '2013', '-', '336', 'Keuangan Negara', '336 JDI u', 'Hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1996, 'KUPKBPK-KB-0764', 'Sistem Pengawasan Keuangan Negara Di Indonesia', 'Bahrullah', 'Akbar', 'Akbar, Bahrullah', 'CV Bumi Metro Jaya', 'Jakarta', '2013', '9786021793701', '336', 'Keuangan Negara', '336 BAH s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1997, 'KUPKBPK-KB-0765', 'Akuntansi Sektor Publik Konsep & Teori', NULL, NULL, ', ', 'CV Bumi Metro Jaya', 'Jakarta', '2013', '9786021793732', '657', 'Akuntansi', '657 BAH a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1998, 'KUPKBPK-KB-0766', 'Akuntansi Pemerintahan', NULL, NULL, ', ', 'CV Bumi Metro Jaya', 'Jakarta', '2013', '9786021793725', '657', 'Akuntansi Pemerintah', '657 BAH a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(1999, 'KUPKBPK-KB-0767', 'Akuntansi Organisasi Nirlaba', 'Bahrullah', 'Akbar', 'Akbar, Bahrullah', 'CV Bumi Metro Jaya', 'Jakarta', '2013', '9786021793756', '657', 'Akuntansi', '657 BAH a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2000, 'KUPKBPK-KB-0768', 'Organisasi Sektor Publik Dan Audit Kinerja', 'Bahrullah', 'Akbar', 'Akbar, Bahrullah', 'Institut Pemeriksa Keuangan Negara', 'Jakarta', '2020', '9786239524807', '657', 'Auditing', '657 BAH o', 'Hibah', 'Rak Kaca', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2001, 'KUPKBPK-KB-0769', 'Kompilasi Jurnal Tata Kelola dan Akuntabilitas Keuangan Negara', NULL, NULL, ', ', 'Direktorat Penelitian dan Pengembangan BPK RI', 'Jakarta', '2015', '9772460393008', '336', 'Keuangan Negara', '336 BAD k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2002, 'KUPKBPK-KB-0770', 'Amanah Sampai Akhir', 'Harry azhar', 'Azis', 'Azis, Harry azhar', 'Sang Gerilya Indonesia', 'Jakarta', '2016', '9786027444911', '920', 'Biografi', '920 HAR a', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2003, 'KUPKBPK-KB-0771', 'BUMN dan Kesejahteraan Rakyat', 'Bahrullah', 'Akbar', 'Akbar, Bahrullah', 'Pusat Kajian Keuangan Negara (Pusaka Negara)', 'Jakarta', '2015', '-', '320', 'kebijakan publik', '320 BAH b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2004, 'KUPKBPK-KB-0772', 'Long Form Audit Report Keuangan Negara', 'Bahrullah', 'Akbar', 'Akbar, Bahrullah', 'Institut Pemeriksa Keuangan Negara', 'Jakarta', '2021', '9786239524821', '336', 'Keuangan Negara', '336 BAH l', 'Hibah', 'Rak Kaca', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2005, 'KUPKBPK-KB-0773', 'Bunga Rampai : Kebijakan Publik dan Pemeriksaan Kinerja', 'Achmad', 'Dzajuli', 'Dzajuli, Achmad', 'Institut Pemeriksa Keuangan Negara', 'Jakarta', '2021', '9786239524814', '336', 'Keuangan Negara', '336 BAH b', 'Hibah', 'Rak Kaca', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2006, 'KUPKBPK-KB-0774', 'Standar Akuntansi Keuangan Bagian A Efektif per 1Januari 2018', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2018', '9789799020680', '657', 'Akuntansi', '657 IKA s', 'Hibah', 'Koleksi Khusus (Reading Corner)', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2007, 'KUPKBPK-KB-0775', 'BPK dalam Sistem Ketatanegaraan', 'Baharuddin ', 'Aritonang', 'Aritonang, Baharuddin ', 'Kepustakaan Populer Gramedia', 'Jakarta', '2019', '9786024243593', '336', 'Keuangan Negara', '336 ARI b', 'Hibah', 'Koleksi Khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2008, 'KUPKBPK-KB-0776', 'Obat Malas Dosis Tinggi For Millenials Edition', 'Khalifa Bisma', 'Sanjaya', 'Sanjaya, Khalifa Bisma', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230005619', '658.3', 'Manajemen SDM', '658.3 KHA o', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2009, 'KUPKBPK-KB-0777', 'Smarter Faster Better', 'Charles', 'Duhigg', 'Duhigg, Charles', 'Kepustakaan Populer Gramedia', 'Jakarta', '2016', '9786024240912', '658.3', 'Manajemen SDM', '658.3 CHA s', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2010, 'KUPKBPK-KB-0778', 'Ayahku Bukan Pembohong', 'Tere', 'Liye', 'Liye, Tere', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9786020331584', '813', 'Fiksi', '813 TER a', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2011, 'KUPKBPK-KB-0779', 'Jangan Bekerja untuk orang menyebalkan', 'Paul', 'Woods', 'Woods, Paul', 'Penerbit Bhuana ', 'Jakarta', '2020', '9786232168053', '658.3', 'Manajemen SDM', '658.3 PAU j', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2012, 'KUPKBPK-KB-0780', 'GRIT - Kekuatan Passion + Kegigihan', 'Angela ', 'Duckworth', 'Duckworth, Angela ', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020620930', '658.3', 'Manajemen SDM', '658.3 DUC g', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2013, 'KUPKBPK-KB-0781', 'A Philosophy Of Walking, Filosofi Jalan Kaki', 'Frederic ', 'gros', 'gros, Frederic ', 'Penerbit Renebook', 'Jakarta', '2020', '9786021201862', '658.3', 'Manajemen SDM', '658.3 FRE a', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2014, 'KUPKBPK-KB-0782', 'Thinking, Fast, and Slow', 'Daniel', 'Kahneman', 'Kahneman, Daniel', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020637181', '658.3', 'Manajemen SDM', '658.3 DAN t', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2015, 'KUPKBPK-KB-0783', 'Seni Berperang Sun Tzu', 'James ', 'Trapp', 'Trapp, James ', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020400624', '658.3', 'Manajemen SDM', '658.3 JAM s', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2016, 'KUPKBPK-KB-0784', 'Lifestorming', 'Alan', 'Weiss', 'Weiss, Alan', 'Elex Media Komputindo', 'Jakarta', '2020', '9786230014291', '658.3', 'Manajemen SDM', '658.3 ALA l', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2017, 'KUPKBPK-KB-0785', 'How To Stop Feeling Like Shit', 'Andrea', 'Owen', 'Owen, Andrea', 'Shira Media', 'Yogyakarta', '2019', '9786025868795', '658.3', 'Manajemen SDM', '658.3 AND h', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2018, 'KUPKBPK-KB-0786', 'Sebuah Seni untuk Bersikap Bodo Amat', NULL, NULL, ', ', 'Gramedia Widiasarana Indonesia', 'Jakarta', '2018', '9786024526986', '658.3', 'Manajemen SDM', '658.3 MAR s', 'Beli', 'Softskill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2019, 'KUPKBPK-KB-0787', 'Bonus Demografi 2030, Menjawab Tantangan Serta Peluang Edukasi 4.0 dan Revolusi Bisnis 4.0', 'Astrid', 'Savitri', 'Savitri, Astrid', 'Penerbit Genesis', 'Semarang', '2019', '9786025713996', '650', 'Bisnis', '650 AST b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2020, 'KUPKBPK-KB-0788', 'Berani Tidak Disukai', 'Ichiro', 'Kishimi', 'Kishimi, Ichiro', 'Gramedia Pustaka Utama', 'Jakarta', '2019', '9786020633213', '658.3', 'Manajemen SDM', '658.3 ICH b', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2021, 'KUPKBPK-KB-0789', 'Public Relations in the era of Artificial Intelligence, Bagaimana Big Data dan AI Merevolusi Dunia PR', 'Nurlaela', 'Arief', 'Arief, Nurlaela', 'Simbiosa Rekatama Media', 'Bandung', '2019', '9786027973787', '659.2', 'Public Relations', '659.2 NUR p', 'Beli', 'Soft Skill', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2022, 'KUPKBPK-KB-0790', 'Bedebah di Ujung Tanduk', 'Tere', 'Liye', 'Liye, Tere', 'Sabak Grip Nusantara', 'Depok', '2020', '9786239726218', '813', 'Fiksi', '813 TER b', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2023, 'KUPKBPK-KB-0791', 'Janji', 'Tere', 'Liye', 'Liye, Tere', 'Sabak Grip Nusantara', 'Depok', '2021', '9786239726201', '813', 'Fiksi', '813 TER j', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2024, 'KUPKBPK-KB-0792', 'Norwegian Wood', 'Haruki', 'Murakami', 'Murakami, Haruki', 'Kepustakaan Populer Gramedia', 'Jakarta', '2018', '9786024248352', '658.3', 'Manajemen SDM', '658.3 HAR n', 'Beli', 'Buku Baru', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2025, 'KUPKBPK-KB-0793', 'Menghitung Kerugian Keuangan Negara Dalam Tindak Pidana Korupsi Edisi 2', 'Theodorus M', 'Tunakota', 'Tunakota, Theodorus M', 'Penerbit Salemba Empat', 'Jakarta', '2018', '9789790618022', '336', 'Keuangan Negara', '336 THE m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2026, 'KUPKBPK-KB-0794', 'Sejarah Islam yang terlupakan', 'D', 'Agustina', 'Agustina, D', 'Camel Books', 'Depok', '2019', '9786025508998', '297', 'Islam', '297 D.  s', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2027, 'KUPKBPK-KB-0795', 'The Miracle Of Dzikir', 'K H Muhammad', 'Arifin Ilham', 'Arifin Ilham, K H Muhammad', 'Penerbit Zikrul Hakim', 'Jakarta', '2019', '9786023422739', '658.3', 'Manajemen SDM', '658.3 KH  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2028, 'KUPKBPK-KB-0796', 'Rahasia Magnet Rezeki, Menarik Rezeki Dahsyat dengan cara Allah', 'Nasrullah', NULL, ', Nasrullah', 'Elex Media Komputindo', 'Jakarta', '2019', '9786020456805', '658.3', 'Manajemen SDM', '658.3 NAS r', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2029, 'KUPKBPK-KB-0797', '400 Kebiasaan Keliru dalam hidup Muslim', 'Abdillah Firmanzah', 'Hasan', 'Hasan, Abdillah Firmanzah', 'Elex Media Komputindo', 'Jakarta', '2018', '9786020461557', '658.3', 'Manajemen SDM', '658.3 ABD 4', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2030, 'KUPKBPK-KB-0798', 'Didefinisikan', 'Stephen', 'Kendrick', 'Kendrick, Stephen', 'Light Publishing', 'Jakarta', '2019', '9786024191757', '230', 'Kristen', '230 STE d', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2031, 'KUPKBPK-KB-0799', 'Pengantar Hukum Indonesia (PHI)', 'Rahman', 'syamsuddin', 'syamsuddin, Rahman', 'Prenamedia Group', 'Jakarta', '2019', '9786232182608', '340', 'Ilmu Hukum', '340 DR. p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2032, 'KUPKBPK-KB-0800', 'Terorisme Fundamentalis Kristen, Yahudi, Islam', 'A.M Hendropriyono', NULL, ', A.M Hendropriyono', 'Kompas', 'Jakarta', '2020', '9786232411951', '340', 'Ilmu Hukum', '340 A.M t', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2033, 'KUPKBPK-KB-0801', 'Perpres Nomor 16 Tahun 2018 tentang Pengadaan Barang/Jasa Pemerintah', 'Tim Aksara Justitia', NULL, ', Tim Aksara Justitia', 'Vmedia', 'Jakarta', '2019', '9789790653009', '658.7', 'Pengadaan Barang/Jasa', '658.7 TIM p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2034, 'KUPKBPK-KB-0802', 'Konsep Pemidanaan Berbasis Nilai Kerugian Ekonomi', 'T.J Gunawan', NULL, ', T.J Gunawan', 'Kencana', 'Jakarta', '2018', '9786024226299', '364', 'korupsi', '364 T.J k', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2035, 'KUPKBPK-KB-0803', 'Peraturan-peraturan Pemerintah tentang Pengadaan Barang dan Jasa', 'Tim Redaksi', NULL, ', Tim Redaksi', 'Laksana', 'Yogyakarta', '2018', '9786024074326', '658.7', 'Pengadaan Barang/Jasa', '658.7 TIM p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2036, 'KUPKBPK-KB-0804', 'Sistem Perencanaan dan Penganggaran Pemerintah Daerah', 'Suryo Sakti', 'Hadiwijoyo', 'Hadiwijoyo, Suryo Sakti', 'Rajawali Pers', 'Depok', '2019', '9786024258238', '336', 'keuangan daerah', '336 SUR s', 'beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2037, 'KUPKBPK-KB-0805', 'Population Policy', 'Sonny Harry B', 'Harmadi', 'Harmadi, Sonny Harry B', 'Kompas', 'Jakarta', '2020', '9786230010415', '320', 'kebijakan publik', '320 SON p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2038, 'KUPKBPK-KB-0806', 'Perencanaan Pembangunan Daerah Dalam Era Otonomi', 'Sjafrizal', NULL, 'Sjafrizal', 'Rajagrafindo Persada', 'Jakarta', '2016', '9789797697037', '342', 'Hukum Tata Negara', '342 SJA p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2039, 'KUPKBPK-KB-0807', 'Tata Kelola Ekonomi Keuangan Daerah', 'Windhu', 'Putra', 'Putra, Windhu', 'Rajagrafindo Persada', 'Jakarta', '2018', '9786024252564', '336', 'keuangan daerah', '336 WIN t', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2040, 'KUPKBPK-KB-0808', 'Pengelolaan Keuangan Daerah', 'Abdul', 'Halim', 'Halim, Abdul', 'UPP STIM YKPN', 'Yogyakarta', '2019', '9786021286814', '336', 'keuangan daerah', '336 ABD p', 'hibah', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2041, 'KUPKBPK-KB-0809', 'Perencanaan Pembangunan Daerah Suatu Pengantar', 'Suryo Sakti', 'Hadiwijoyo', 'Hadiwijoyo, Suryo Sakti', 'Rajagrafindo Persada', 'Depok', '2019', '9786232310278', '342', 'Hukum Tata Negara', '342 SUR p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2042, 'KUPKBPK-KB-0810', 'Perencanaan Pembangunan Daerah Suatu Pengantar', 'Suryo Sakti', 'Hadiwijoyo', 'Hadiwijoyo, Suryo Sakti', 'Rajagrafindo Persada', 'Depok', '2019', '9786232310278', '342', 'Hukum Tata Negara', '342 SUR p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2043, 'KUPKBPK-KB-0811', 'Hukum Tata Negara Indonesia', 'Fajlurrahman', 'Jurdi', 'Jurdi, Fajlurrahman', 'Prenamedia Group', 'Jakarta', '2019', '9786232180505', '342', 'Hukum Tata Negara', '342 FAJ h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2044, 'KUPKBPK-KB-0812', 'Mengamankan Laut Tata Ruang Dan Keamanan Maritim', 'Nikolaus', 'Loy', 'Loy, Nikolaus', 'Elex Media Komputindo', 'Jakarta', '2019', '9786230001024', '342', 'Hukum Tata Negara', '342 NIK m', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2045, 'KUPKBPK-KB-0813', 'Otonomi Daerah dan Daerah Otonom', 'HAW Widjaja', NULL, ', HAW Widjaja', 'Rajawali Pers', 'Jakarta', '2019', '9789794218747', '342', 'Hukum Tata Negara', '342 PRO o', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2046, 'KUPKBPK-KB-0814', 'Hukum Administrasi Negara', 'Ridwan HR', NULL, ', Ridwan HR', 'RajaGrafindo Persada', 'Jakarta', '2018', '9789797690288', '342', 'Hukum Tata Negara', '342 RID h', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2047, 'KUPKBPK-KB-0815', 'Pembangunan Sosial di Wilayah Perbatasan Kapuas Hulu, Kalbar', 'Henny', 'Warsilah', 'Warsilah, Henny', 'Yayasan Pustaka Obor', 'Jakarta', '2017', '9786024335144', '342', 'Hukum Tata Negara', '342 HEN p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2048, 'KUPKBPK-KB-0816', 'Analisis Laporan Keuangan Pemerintah Daerah', 'Mahmudi', NULL, 'Mahmudi', 'STIM YPKN', 'Yogyakarta', '2019', '9786021286760', '657', 'Laporan Keuangan', '657 MAH a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2049, 'KUPKBPK-KB-0817', 'Pengantar Ilmu Hukum Tata Negara', 'Jimly', 'Asshuddiqie', 'Asshuddiqie, Jimly', 'Rajagrafindo Persada', 'Depok', '2019', '978979769210', '342', 'Hukum Tata Negara', '342 PRO p', 'Beli', 'Hukum', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2050, 'KUPKBPK-KB-0818', 'Ekonomi dan Bisnis Islam Seri Konsep dan Aplikasi Ekonomi dan Bisnis Islam', 'Fordebi & Adesy', NULL, ', Fordebi & Adesy', 'Rajagrafindo Persada', 'Depok', '2017', '9789797699918', '650', 'Bisnis', '650 DEW e', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2051, 'KUPKBPK-KB-0819', 'Tata Kelola Ekonomi Keuangan Daerah', NULL, NULL, ', ', 'Rajagrafindo Persada', 'Depok', '2018', '9786024252564', '336', 'keuangan daerah', '336 WIN t', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2052, 'KUPKBPK-KB-0820', 'Makroekonomi', NULL, NULL, ', ', 'Rajagrafindo Persada', 'Jakarta', '2016', '9794214132', '339', 'ekonomi makro', '339 SAD m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2053, 'KUPKBPK-KB-0821', 'Makroekonomi', NULL, NULL, ', ', 'Rajagrafindo Persada', 'Jakarta', '2016', '9794214132', '339', 'ekonomi makro', '339 SAD m', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2054, 'KUPKBPK-KB-0822', 'Kabupaten Malinau dalam Angka', 'Badan Pusat Statistik Kabupaten Malinau', NULL, 'Badan Pusat Statistik Kabupaten Malinau', 'BPS Kabupaten Malinau', 'Malinau', '2014', '1907-2155', '330', 'Ekonomi', '330 BPS k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2055, 'KUPKBPK-KB-0823', 'Audit Kinerja', NULL, NULL, ', ', 'ANDI dan BPFE', 'Yogyakarta', '2020', '9786230103858', '657', 'Auditing', '657 IWA a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2056, 'KUPKBPK-KB-0824', 'Audit Internal Berbasis Risiko', 'Theodorus M', 'Tuanakotta', 'Tuanakotta, Theodorus M', 'Salemba Empat', 'Jakarta', '2019', '9789780618954', '657', 'Auditing', '657 THE a', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2057, 'KUPKBPK-KB-0825', 'Pajak dan Pendanaan Peradaban Indonesia', 'Gatot', 'Subroto', 'Subroto, Gatot', 'Gramedia', 'Jakarta', '2020', '9786230011153', '336', 'pajak', '336 GAT p', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2058, 'KUPKBPK-KB-0826', 'Bank 4.0 Perbankan di Mana Saja dan Kapan Saja, Tidak Perlu di Bank', 'Brett', 'King', 'King, Brett', 'Mahaka Publishing', 'Jakarta', '2020', '9786029474336', '332', 'Bank', '332 BRE b', 'Beli', 'Ekonomi', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2059, 'KUPKBPK-KB-0827', 'Profil BPK Perwakilan Provinsi Sulawesi Tenggara', NULL, NULL, 'BPK Pwk Sultra', NULL, NULL, '2019', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2060, 'KUPKBPK-KB-0828', 'Profil BPK Perwakilan Provinsi Lampung', NULL, NULL, 'BPK Pwk Lampung', NULL, NULL, '2019', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2061, 'KUPKBPK-KB-0829', 'Peraturan BPK No. 2 Tahun 2020 tentang Organisasi dan Tata Kerja Pelaksana BPK', 'BPK RI', NULL, 'BPK RI', NULL, NULL, '2020', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2062, 'KUPKBPK-KB-0830', 'Pedoman Manajemen Pemeriksaan Investigatif, Penghitungan Kerugian Negara/Daerah, Dan Pemberian Keterangan Ahli', 'BPK RI', NULL, 'BPK RI', NULL, NULL, '2020', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2063, 'KUPKBPK-KB-0831', 'Petunjuk Teknis Pemerolehan Keyakinan Mutu Pemeriksaan Kinerja', 'BPK RI', NULL, 'BPK RI', NULL, NULL, '2016', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2064, 'KUPKBPK-KB-0832', 'Petunjuk Teknis Pemerolehan Keyakinan Mutu Pemeriksaan Keuangan', 'BPK RI', NULL, 'BPK RI', NULL, NULL, '2016', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2065, 'KUPKBPK-KB-0833', 'Petunjuk Teknis Pemeriksaan Laporan Keuangan Pemerintah Daerah', NULL, NULL, 'BPK RI', NULL, NULL, '2021', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2066, 'KUPKBPK-KB-0834', 'Petunjuk Teknis Pemeriksaan Laporan Keuangan Pemerintah Daerah', NULL, NULL, 'BPK RI', NULL, NULL, '2021', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2067, 'KUPKBPK-KB-0835', 'Organisasi Sektor Publik dan Audit Kinerja', 'Bahrullah', 'Akbar', 'Bahrullah Akbar; Agus Joko Pramono', 'IPKN', 'Jakarta', '2020', '9786239524807', '657', 'Auditing', '657 BAH o', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2068, 'KUPKBPK-KB-0836', 'Himpunan Peraturan UU No.9 Tahun 2018; PP No.28 Tahun 2018; PP Nomor 56 Tahun 2018', 'Tim Redaksi laksana', NULL, 'Ditama Binbangkum BPK RI', NULL, NULL, '2019', NULL, '343', 'Hukum Publik', '343 DIT h', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2069, 'KUPKBPK-KB-0837', 'Peraturan BPK No.1 Tahun 2019 tentang Organisasi dan Tata Kerja Pelaksana BPK', 'BPK RI', NULL, 'BPK RI', NULL, NULL, '2019', NULL, '336', 'Keuangan Negara', '336 BPK p', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2070, 'KUPKBPK-KB-0838', 'Bunga Rampai : Kebijakan Publik dan Pemeriksaan Kinerja', 'Achmad', 'Djazuli', 'Djazuli, Achmad', 'Institut Pemeriksa Keuangan Negara', '336', '2021', '9786239524814', '336', 'Keuangan Negara', '336 BAH b', 'Hibah', 'Koleksi khusus', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2071, 'KUPKBPK-KB-0839', 'Krayan : Surga yang tersembunyi', 'Humas dan Protokol', 'Pemerintah Kab Nunukan', 'Pemerintah Kab Nunukan, Humas dan Protokol', 'Pemerintah Kabupaten Nunukan', 'Nunukan', NULL, '9786021118030', '300', 'Sosial', '300 PEM k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2072, 'KUPKBPK-KB-0840', 'Kalkulus dan Geomeri Analitis Jilid 1', 'Edwin', 'J. Purcell', 'J. Purcell, Edwin', 'Edwin J Purcell, Dale Varberg', 'Jakarta', '1994', '24-21-054-4', '001.42', 'Penelitian', '001.42 PEN k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2073, 'KUPKBPK-KB-0841', 'Seri Literasi Remaja : Mengenal Belanda Lebih Dekat', 'Nico', 'Andrianto', 'Andrianto, Nico', 'Erlangga', 'Jakarta', '2020', '978-623-7478-02-7', '910', 'Geografi dan Perjalanan', '910 NIC s', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2074, 'KUPKBPK-KB-0842', 'Master Bahasa Inggris Terlengkap Untuk Pemula', 'Maria Suci', 'Wuryanti', 'Wuryanti, Maria Suci', 'Outre Publications', 'Yogyakarta', '2019', '9786239069506', '420', 'Bahasa Inggris', '420 MAR m', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2075, 'KUPKBPK-KB-0843', 'Essential word for the IELTS 2nd edition', 'Lin', 'Lougheed', 'Lougheed, Lin', 'Barrons', 'New York', '2017', '978-1-4380-7398', '420', 'Bahasa Inggris', '420 LOU e', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2076, 'KUPKBPK-KB-0844', 'Top One Psikotes Terlengkap', 'Tim Bintang Psikologi', NULL, 'Tim Bintang Psikologi', 'Bintang Wahyu ', 'Jakarta', '2019', '9786026320551\n', '658.3', 'Manajemen SDM', '658.3 TIM t', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2077, 'KUPKBPK-KB-0845', 'Barron\'s IELTS - Fifth Edition', 'Lin', 'Lougheed', 'Lougheed, Lin', 'Barrons', 'New York', '2019', '9781506256375', '420', 'Bahasa Inggris', '420 LOU b', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2078, 'KUPKBPK-KB-0846', 'Barron\'s Writing for The TOEFL IBT', 'Pamela J', 'Sharpe', 'Sharpe, Pamela J', 'Barrons', 'New York', '2014', '978-0-7641-9557-0', '420', 'Bahasa Inggris', '420 LOU b', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2079, 'KUPKBPK-KB-0847', 'Barron\'s IELTS - Practice Exams', 'Lin', 'Lougheed', 'Lougheed, Lin', 'Barrons', 'New York', '2016', '978-1-4380-7331-6', '420', 'Bahasa Inggris', '420 LOU b', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2080, 'KUPKBPK-KB-0848', 'Perfect English Grammar', 'Surayin', NULL, ', Surayin', 'Yrama Media', 'Bandung ', '2018', '9786023749881', '420', 'Bahasa Inggris', '420 SUR p', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2081, 'KUPKBPK-KB-0849', 'Best Score 600+ TPA OTO Bappenas', 'Tim Master Eduka', NULL, 'Tim Master Eduka', 'Genta Smart Publisher', 'Yogyakarta', '2017', '978-602-6359-37-7\n', '155.2�', 'Psikotes', '155.2� TIM b', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2082, 'KUPKBPK-KB-0850', 'NEW UPDATE DRILLING TPA + TBS OTO BAPPENAS TARGET SKOR 677 ', 'Aristo', 'Chandra', 'Chandra, Aristo', 'Forum Edukasi\n', 'Yogyakarta', '2019', '978-602-5454-59-2', '155.2�', 'Psikotes', '155.2� ARI n', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2083, 'KUPKBPK-KB-0851', 'Best Book Psikotes Terlengkap', 'Tim Psikologi Salemba', NULL, 'Tim Psikologi Salemba', 'Bintang Wahyu', 'Jakarta', '2019', '9786026320537', '155.2�', 'Psikotes', '155.2� TIM b', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2084, 'KUPKBPK-KB-0852', 'Oxford learner\"s pocket dictionary', 'Oxford University Press', NULL, 'Oxford University Press', 'Oxford University Press', 'New York', '2008', '9780194398725', '420', 'Bahasa Inggris', '420 OXF o', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25');
INSERT INTO `books` (`id`, `book_number`, `book_title`, `book_firstname`, `book_lastname`, `book_author`, `book_publisher`, `book_city`, `book_year`, `book_isbn`, `book_class`, `book_subject`, `book_classcode`, `book_acq`, `book_location`, `book_nup`, `book_brand`, `book_image`, `book_createdby`, `book_updatedby`, `book_isavailable`, `created_at`, `updated_at`) VALUES
(2085, 'KUPKBPK-KB-0853', 'Oxford learner\"s pocket dictionary', 'Oxford University Press', NULL, 'Oxford University Press', 'Oxford University Press', 'New York', '2008', '9780194398725', '420', 'Bahasa Inggris', '420 OXF o', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2086, 'KUPKBPK-KB-0854', 'Rasulullah Is My Doctor', 'Jerry D', 'Gray', 'Gray, Jerry D', 'Penerbit Sinergi', 'Depok', '2019', '9786027006850', '297', 'Islam', '297 JER r', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2087, 'KUPKBPK-KB-0855', 'Praying the Bible', 'Donald S', 'Whitney', 'Whitney, Donald S', 'Literatur Perkantas Jawa Timur', 'Surabaya', '2015', '9786021302675', '230', 'Kristen', '230 DON p', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2088, 'KUPKBPK-KB-0856', 'Keajaiban Rezeki, Rezeki Bertambah, Nasib Berubah, dalam 99 Hari dengan Otak Kanan', NULL, NULL, ', ', 'Elex Media Komputindo', 'Jakarta', '2019', '9789792769234', '297', 'Islam', '297 IPP k', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2089, 'KUPKBPK-KB-0857', 'Kisah Para Nabi', 'Ibnu', 'Katsir', 'Katsir, Ibnu', 'Penerbit Qisthi Press', 'Jakarta', '2015', '9789791303842', '297', 'Islam', '297 IBN k', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2090, 'KUPKBPK-KB-0858', 'Andai Saja', 'Mark', 'Batterson', 'Batterson, Mark', 'LIGHT PUBLISHING', 'Jakarta', '2016', '9786024191443', '658.3', 'Manajemen SDM', '658.3 MAR a', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2091, 'KUPKBPK-KB-0859', '365 Cerita Alkitab untuk anak-anak', 'Joy Melissa', 'Jensen', 'Jensen, Joy Melissa', 'Gramedia Pustaka Utama', 'Jakarta', '2013', '9786020300511', '230', 'Kristen', '230 JOY 3', 'Beli', 'Agama & Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2092, 'KUPKBPK-KB-0860', 'Kalkulus dan Geomeri Analitis Jilid 2', 'Edwin', 'J. Purcell', 'J. Purcell, Edwin', 'Edwin J Purcell, Dale Varberg', 'Jakarta', '1994', '24-21-043-7', '001.42', 'Penelitian', '001.42 PEN k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2093, 'KUPKBPK-KB-0861', 'Kamus Ilmu Perpustakaan dan Sains Informasi', 'Sulistyo', 'Basuki', 'Basuki, Sulistyo', 'CV Sagung Seto, Anggota IKAPI', 'Jakarta', '2018', '9786022710813', '001.42', 'Penelitian', '001.42 SUL k', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2094, 'KUPKBPK-KB-0862', 'Tafsir Ibnu Katsir Jilid 1', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062077', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2095, 'KUPKBPK-KB-0863', 'Tafsir Ibnu Katsir Jilid 2', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062084', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2096, 'KUPKBPK-KB-0864', 'Tafsir Ibnu Katsir Jilid 3', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062091', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2097, 'KUPKBPK-KB-0865', 'Tafsir Ibnu Katsir Jilid 4', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062107', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2098, 'KUPKBPK-KB-0866', 'Standar Akuntansi Keuangan Bagian B Efektif per 1Januari 2018', NULL, NULL, ', ', 'Ikatan Akuntan Indonesia', 'Jakarta', '2018', '9789799020697', '657', 'Akuntansi', '657 IKA s', 'Hibah', 'Koleksi Khusus (Reading Corner)', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2099, 'KUPKBPK-KB-0867', 'Tafsir Ibnu Katsir Jilid 5', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062114', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2100, 'KUPKBPK-KB-0868', 'Tafsir Ibnu Katsir Jilid 6', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062121', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2101, 'KUPKBPK-KB-0869', 'Tafsir Ibnu Katsir Jilid 7', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062138', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2102, 'KUPKBPK-KB-0870', 'Tafsir Ibnu Katsir Jilid 8', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062145', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2103, 'KUPKBPK-KB-0871', 'Tafsir Ibnu Katsir Jilid 9', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062152', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2104, 'KUPKBPK-KB-0872', 'Tafsir Ibnu Katsir Jilid 10', 'Abdullah bin Muhammad', 'Alu Syaikh', 'Alu Syaikh, Abdullah bin Muhammad', 'Pustaka Imam Asy-Syafi\'i', 'Jakarta', '2008', '9786028062169', '297', 'Islam', '297 DR  t', 'Beli', 'Agama dan Bahasa', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2105, 'KUPKBPK-KB-0873', 'Bank Soal Delphi', 'Hengky Alenxander', 'Mangkulo', 'Mangkulo, Hengky Alenxander', 'Elex Media Komputindo', 'Jakarta', '2005', '979-20-7434-1', '005', 'Komputer- Pemrograman', '005 HEN b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2106, 'KUPKBPK-KB-0874', 'Microsoft Excel Akuntansi', 'Deni', 'Purnama', 'Purnama, Deni', 'D@TAKOM Lintas Buana', 'Jakarta', '2008', '978-979-3214-82-5', '004', 'Komputer - Data', '004 DEN m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2107, 'KUPKBPK-KB-0875', 'Trik Mengolah Data Dengan Record Macro Excel 2007', 'Andy', 'Shera', 'Shera, Andy', 'Elex Media Komputindo', 'Jakarta', '2008', '978-979-27-3942-8', '004', 'Komputer - Data', '004 AND t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2108, 'KUPKBPK-KB-0876', 'Tip & Trik Oracle', 'Indra', 'Armansyah', 'Armansyah, Indra', 'Elex Media Komputindo', 'Jakarta', '2005', '979-20-7450-3', '005', 'Komputer- Pemrograman', '005 IND t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2109, 'KUPKBPK-KB-0877', 'Panduan Lengkap Foxpro', 'Ian', 'Chandra', 'Chandra, Ian', 'Elex Media Komputindo', 'Jakarta', '1990', '12190072', '005', 'Komputer- Pemrograman', '005 IAN p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2110, 'KUPKBPK-KB-0878', '212 Tips Mastering Professional Web Design', 'Zeembry', NULL, 'Zeembry', 'Elex Media Komputindo', 'Jakarta', '2013', '978-602-02-2288-2', '006', 'Komputer- Design Grafis', '006 ZEE 2', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2111, 'KUPKBPK-KB-0879', 'Belajar Mudah Internet', 'Duwi', 'Priyatno', 'Priyatno, Duwi', 'Medi@kom', 'Yogyakarta', '2009', '978-979-877-036-4', '004', 'Komputer - Data', '004 DUW b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2112, 'KUPKBPK-KB-0880', 'Membangun Aplikasi Web pada Sistem Database Terdistribusi', 'Didik Dwi', 'Prasetyo', 'Prasetyo, Didik Dwi', 'Elex Media Komputindo', 'Jakarta', '2004', '979-20-5416-2', '005', 'Komputer- Pemrograman', '005 DID m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2113, 'KUPKBPK-KB-0881', 'Pemrograman Database dengan Visual Basic', 'M Agus', 'J Alam', 'J Alam, M Agus', 'Elex Media Komputindo', 'Jakarta', '2006', '979-20-8184-4', '005', 'Komputer- Pemrograman', '005 M.  p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2114, 'KUPKBPK-KB-0882', 'Microsoft Windows 2000 Server', 'Hendra', 'Wijaya', 'Wijaya, Hendra', 'Elex Media Komputindo', 'Jakarta', '2002', '979-20-3016-6', '005', 'Komputer- Pemrograman', '005 IR  m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2115, 'KUPKBPK-KB-0883', 'Data Sheet Book 1 Data IC Linier, TTL dan Cmos', 'Wasito', NULL, 'Wasito', 'Elex Media Komputindo', 'Jakarta', '1985', '979-537-034-0', '004', 'Komputer - Data', '004 WAS d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2116, 'KUPKBPK-KB-0884', 'Cara Mudah dan Pasti Mendapatkan Sertifikat Microsoft', 'Ibnu', 'Gunawan', 'Gunawan, Ibnu', 'Graha Ilmu', 'Jakarta', '2006', '978-979-756-121-5', '004', 'Komputer - Data', '004 IBN c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2117, 'KUPKBPK-KB-0885', 'PHP & MySQL dengan Dreamweaver', 'Firdaus', NULL, 'Firdaus', 'Maxikom', 'Palembang', '2007', '979-3767-84-7', '005', 'Komputer- Pemrograman', '005 FIR p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2118, 'KUPKBPK-KB-0886', 'Microsoft Office 2000', 'Kurweni', 'Ukar', 'Ukar, Kurweni', 'Elex Media Komputindo', 'Jakarta', '1999', '979-20-1112-9', '004', 'Komputer - Data', '004 KUR m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2119, 'KUPKBPK-KB-0887', 'Membuat Aplikasi Database dengan Delphi 8.0', 'Hengky Alexander', 'Mangkulo', 'Mangkulo, Hengky Alexander', 'Elex Media Komputindo', 'Jakarta', '2004', '979-20-6655-1', '005', 'Komputer- Pemrograman', '005 HEN m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2120, 'KUPKBPK-KB-0888', 'Database Client/Server Menggunakan Delphi', 'Inge', 'Martina', 'Martina, Inge', 'Elex Media Komputindo', 'Jakarta', '2002', '979-20-3326-6', '005', 'Komputer- Pemrograman', '005 IR. d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2121, 'KUPKBPK-KB-0889', 'Program Macro Ms Excel 97 dengan Visual Baxic 5', 'LPKBM MADCOMS Madiun', NULL, 'LPKBM MADCOMS Madiun', 'ANDI Yogyakarta', 'Yogyakarta', '1999', '979-533-548-0', '005', 'Komputer- Pemrograman', '005 TIM p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2122, 'KUPKBPK-KB-0890', 'Membuat Aplikasi Penggajian Karyawan dengan Microsoft Visual Foxpro 8.0', 'Yosafat', 'Chayo', 'Chayo, Yosafat', 'ANDI Yogyakarta', 'Yogyakarta', '2004', '979-731-202-X', '005', 'Komputer- Pemrograman', '005 YOS m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2123, 'KUPKBPK-KB-0891', 'Visual Basic 2005 untuk Orang Awam', 'Muhammad', 'Sadeli', 'Sadeli, Muhammad', 'Maxikom', 'Palembang', '2008', '978-979-1398-43-5', '005', 'Komputer- Pemrograman', '005 MUH v', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2124, 'KUPKBPK-KB-0892', 'Mudah Menguasai Visual Basic 6', 'Djoko', 'Pramono', 'Pramono, Djoko', 'Elex Media Komputindo', 'Jakarta', '1999', '979-20-1027-0', '005', 'Komputer- Pemrograman', '005 DJO m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2125, 'KUPKBPK-KB-0893', 'Delphi Developer dean SQL Server 2000', 'Teddy', 'Marcus', 'Marcus, Teddy', 'Informatika', 'Bandung', '2004', '979-3338-27-X', '005', 'Komputer- Pemrograman', '005 TED d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2126, 'KUPKBPK-KB-0894', 'Teknik Mengamankan Data & Sistem Komputer', 'Dedik', 'Kurniawan', 'Kurniawan, Dedik', 'Elex Media Komputindo', 'Jakarta', '2010', '978-979-27-6835-0', '004', 'Komputer - Data', '004 DED t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2127, 'KUPKBPK-KB-0895', 'Eksploitasi Registry dan File Reg', 'Tri', 'Amperiyanto', 'Amperiyanto, Tri', 'Elex Media Komputindo', 'Jakarta', '2010', '978-979-27-7676-1', '004', 'Komputer - Data', '004 TRI e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:25', '2023-01-04 09:22:25'),
(2128, 'KUPKBPK-KB-0896', 'Pemrograman Kamera PC Menggunakan Delphi', 'Fadlisyah', NULL, 'Fadlisyah', 'Graha Ilmu', 'Yogyakarta', '2010', '978-979-756-688-3', '004', 'Komputer - Data', '004 FAD p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2129, 'KUPKBPK-KB-0897', 'Teori dan Praktek Interfacing Port Paralel dan Port Serial Komputer dengan Visual Basic 6.0', 'Retna', 'Prasetia', 'Prasetia, Retna', 'ANDI', 'Yogyakarta', '2004', '979-731-384-0', '004', 'Komputer - Data', '004 RET t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2130, 'KUPKBPK-KB-0898', 'Singkat Tepat Jelas Microsoft Access 2002', 'Kurweni', 'Ukar', 'Ukar, Kurweni', 'Elex Media Komputindo', 'Jakarta', '2003', '979-20-4462-0', '004', 'Komputer - Data', '004 KUR s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2131, 'KUPKBPK-KB-0899', '7 Jam Belajar Interaktif Access 2007 untuk orang Awam', 'Mulyadi', 'Hadi', 'Hadi, Mulyadi', 'Penerbit Maxikom', 'Palembang', '2007', '978-979-1398-17-6', '004', 'Komputer - Data', '004 MAX 7', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2132, 'KUPKBPK-KB-0900', 'Membuat Sendiri Aplikasi Database dengan Access 2003', 'Abdul', 'Razaq', 'Razaq, Abdul', 'Penerbit INDAH Surabaya', 'Surabaya', '2006', 'n/a', '004', 'Komputer - Data', '004 ABD m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2133, 'KUPKBPK-KB-0901', 'Mengolah Data spasial dengan Map Info Profesional', 'I Wayan', 'Nuarsa', 'Nuarsa, I Wayan', 'ANDI', 'Yogyakarta', '2004', '979-731-156-2', '005', 'Komputer- Pemrograman', '005 I W m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2134, 'KUPKBPK-KB-0902', '36 Jam Belajar Komputer Microsoft Access 2000', 'Budi', 'Permana', 'Permana, Budi', 'Elex Media Komputindo', 'Jakarta', '2000', '979-20-1346-6', '004', 'Komputer - Data', '004 BUD 3', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2135, 'KUPKBPK-KB-0903', 'Kupas Tuntas Database Server 2008', 'Cybertron', 'Solution', 'Solution, Cybertron', 'ANDI', 'Yogyakarta', '2010', '978-979-29-1496-2', '004', 'Komputer - Data', '004 CYB k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2136, 'KUPKBPK-KB-0904', 'Joomla 1.5 Dunianya Maya, Untungnya Nyata', 'S\'to', NULL, 'S\'to', 'Jasakom', 'Jakarta', '2008', '978-979-1090-18-6', '004', 'Komputer - Data', '004 S\'T j', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2137, 'KUPKBPK-KB-0905', 'Membongkar Misteri Microsoft Windows 7', 'Madcoms', NULL, 'Madcoms', 'ANDI', 'Yogyakarta', '2010', '9789792916157', '004', 'Komputer - Data', '004 MAD m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2138, 'KUPKBPK-KB-0906', 'Upgrade XP Modifikasi Themes Sesukamu', 'J.com', NULL, 'J.com', 'Penerbit Multicomm', 'Yogyakarta', '2010', '9786029596106', '004', 'Komputer - Data', '004 J C u', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2139, 'KUPKBPK-KB-0907', 'Seri Aplikasi Pemrograman Database menggunakan Delphi', 'Inge', 'Martina', 'Martina, Inge', 'Elex Media Komputindo', 'Jakarta', '2001', '9792024220', '004', 'Komputer - Data', '004 ING s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2140, 'KUPKBPK-KB-0908', 'Microsoft Visual FoxPro 8.0', 'Ahmad Subuhan', 'Lubis', 'Lubis, Ahmad Subuhan', 'Dataprin Grafitama', 'Jakarta', '2003', '9793214155', '004', 'Komputer - Data', '004 AHM m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2141, 'KUPKBPK-KB-0909', 'Konsep Dasar Pengolahan dan pemrograman database dengan SQL Server, MS Access dan Ms. Visual Basic', 'Ema', 'Utami', 'Utami, Ema', 'ANDI ', 'Yogyakarta', '2005', '9797630064', '004', 'Komputer - Data', '004 EMA k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2142, 'KUPKBPK-KB-0910', 'SQL Server 2008 Express', 'Wahana', 'Komputer', 'Komputer, Wahana', 'ANDI ', 'Yogyakarta', '2008', '9789792915327', '004', 'Komputer - Data', '004 WAH s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2143, 'KUPKBPK-KB-0911', 'PHP 5 dan My SQL 4 Proyek Shopping Cart 2', 'Windra', 'Swastika', 'Swastika, Windra', 'Dian Rakyat', 'Jakarta', '2006', '979-523-746-2', '004', 'Komputer - Data', '004 WIN p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2144, 'KUPKBPK-KB-0912', 'Panduan Praktis Menguasai Database Server My SQL', 'Agus', 'Saputra', 'Saputra, Agus', 'Elex Media Komputindo', 'Jakarta', '2011', '978-602-00-0953-7', '004', 'Komputer - Data', '004 AGU p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2145, 'KUPKBPK-KB-0913', 'General Ledger dengan Btrieve', 'Hasan', 'Ciawi', 'Ciawi, Hasan', 'ANDI ', 'Yogyakarta', '1992', '979-533-078-0', '004', 'Komputer - Data', '004 HAS g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2146, 'KUPKBPK-KB-0914', 'Panduan Pemrograman dan Referensi Kamus Visual Basic 6.0', 'Madcoms', NULL, 'Madcoms', 'ANDI ', 'Yogyakarta', '2006', '979-763-336-5', '004', 'Komputer - Data', '004 MAD p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2147, 'KUPKBPK-KB-0915', 'Microsoft Windows 2000 Server', 'Sudantha', 'Wirijia', 'Wirijia, Sudantha', 'Elex Media Komputindo', 'Jakarta', '2002', '979-20-3778-0', '004', 'Komputer - Data', '004 SUD m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2148, 'KUPKBPK-KB-0916', 'Macro Pada Excel 2003 untuk orang Awam', 'Firdaus', NULL, 'Firdaus', 'Maxikom', 'Palembang', '2005', '979-3767-37-5', '004', 'Komputer - Data', '004 FIR m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2149, 'KUPKBPK-KB-0917', 'Seri Panduan Lengkap Microsoft Excel 2000', 'Madcoms', NULL, 'Madcoms', 'ANDI ', 'Yogyakarta', '2002', '979-533-787-4', '004', 'Komputer - Data', '004 MAD s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2150, 'KUPKBPK-KB-0918', 'Dasar-dasar Akuntansi menggunakan Microsoft Office Excel 2003/2007', 'Johar', 'Arifin', 'Arifin, Johar', 'Elex Media Komputindo', 'Jakarta', '2009', '978-979-27-5810-8', '004', 'Komputer - Data', '004 JOH d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2151, 'KUPKBPK-KB-0919', 'Pengantar Sistem Basis Data Case Study all in One', 'Indrajani', NULL, 'Indrajani', 'Elex Media Komputindo', 'Jakarta', '2014', '978-602-02-4903-2', '004', 'Komputer - Data', '004 IND p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2152, 'KUPKBPK-KB-0920', 'Kisah-kisah Mencintai Kehidupan', 'Koes', 'Hendri', 'Hendri, Koes', 'Elex Media Komputindo', 'Jakarta', '2010', '9789792780161', '813', 'Fiksi', '813 KOE k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2153, 'KUPKBPK-KB-0921', 'Pemasaran: Konsep dan Aplikasi', 'Rita', 'Nurmalina', 'Nurmalina, Rita', 'IPB Press', 'Bogor', '2015', '9789794938485', '650', 'Bisnis', '650 RIT p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2154, 'KUPKBPK-KB-0922', 'Panduan Praktis Belajar Elektronika', 'Efvy Zamidra', 'Zam', 'Zam, Efvy Zamidra', 'Penerbit Indah', 'Surabaya', '2005', NULL, '620', 'Ilmu Teknik', '620 EFV p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2155, 'KUPKBPK-KB-0923', '302 Rangkaian Elektronika', 'Elektuur', NULL, 'Elektuur', 'Elex Media Komputindo', 'Jakarta', '1994', NULL, '620', 'Ilmu Teknik', '620 ELE 3', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2156, 'KUPKBPK-KB-0924', 'Tetap Untung Ketika Saham Turun', 'Hary', 'Suwanda', 'Suwanda, Hary', 'Gramedia Pustaka Utama', 'Jakarta', '2011', '9789792269819', '332', 'Investasi', '332 HAR t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2157, 'KUPKBPK-KB-0925', 'Dosa-dosa Wanita yang dibenci Allah', 'Ahmad', 'Khotib', 'Khotib, Ahmad', 'Diva Press', 'Yogyakarta', '2011', '9786029784633', '297', 'Islam', '297 AHM d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2158, 'KUPKBPK-KB-0926', 'Dasar-dasar Demografi', 'Lembaga', 'Demografi FEUI', 'Demografi FEUI, Lembaga', 'Lembaga Penerbit FEUI', 'Depok', '2007', '9799242584', '330', 'Ekonomi', '330 LEM d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2159, 'KUPKBPK-KB-0927', 'Program Kasir Retail Siap Pakai', 'Data', 'Kreasi', 'Kreasi, Data', 'Mediakom', 'Yogyakarta', '2010', '9789798771354', '650', 'Bisnis', '650 DAT p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2160, 'KUPKBPK-KB-0928', 'Hukum dan Internet di Indonesia', 'Budi Agus', 'Riswandi', 'Riswandi, Budi Agus', 'UII Press', 'Yogyakarta', '2003', '9793333138', '340', 'Ilmu Hukum', '340 BUD h', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2161, 'KUPKBPK-KB-0929', 'Peluang Investasi JABON', 'Warisno', NULL, 'Warisno', 'Gramedia Pustaka Utama', 'Jakarta', '2011', '9789792272338', '332', 'Investasi', '332 WAR p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2162, 'KUPKBPK-KB-0930', 'Laporan Tahunan Biro Keuangan BPK Tahun 2019', 'Biro', 'Keuangan', 'Keuangan, Biro', 'BPK RI', 'Jakarta', '2020', NULL, '657', 'Laporan Keuangan', '657 BIR l', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2163, 'KUPKBPK-KB-0931', 'Kumpulan Produk Hukum BPK Bidang Kepegawaian', 'BPK RI', NULL, ', BPK RI', 'Ditama Binbangkum BPK', 'Jakarta', '2014', NULL, '658.3', 'Manajemen SDM', '658.3 JDI k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2164, 'KUPKBPK-KB-0932', 'Jadilah Istri Penyejuk Hati Suami', 'Najah', 'Binti Ahmad Zhihar', 'Binti Ahmad Zhihar, Najah', 'Zamzam', 'Jakarta', '2010', '9786028975001', '297', 'Islam', '297 NAJ j', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2165, 'KUPKBPK-KB-0933', 'Dahsyatnya Sabar, Syukur, dan Ikhlas Muhammad SAW', 'Amirulloh', 'Syarbini', 'Syarbini, Amirulloh', 'Kawahmedia', 'Jakarta', '2011', '9786028389273', '297', 'Islam', '297 AMI d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2166, 'KUPKBPK-KB-0934', 'Cara Gratis Nonton TV', 'J.com', NULL, 'J.com', 'Multikom Media Utama', 'Yogyakarta', '2008', '9789791828406', '620', 'Ilmu Teknik', '620 J.  c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2167, 'KUPKBPK-KB-0935', 'Jangan Mau Terus Gelisah', 'Agus', 'Wahyudi', 'Wahyudi, Agus', 'Sabil', 'Yogyakarta', '2012', '9786029789829', '297', 'Islam', '297 AGU j', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2168, 'KUPKBPK-KB-0936', 'Etika Komunikasi Kantor', 'Ig', 'Wursanto', 'Wursanto, Ig', 'Kanisius', 'Yogyakarta', '2003', '9794133272', '658.1', 'Organisasi', '658.1 IG. e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2169, 'KUPKBPK-KB-0937', 'Pernikahan Anda: Sebuah Mahakarya', 'Al', 'Janssen', 'Janssen, Al', 'Gramedia Pustaka Utama', 'Jakarta', '2010', '9789792260953', '230', 'Kristen', '230 AL  p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2170, 'KUPKBPK-KB-0938', 'BPK Digugat: Pro Kontra Audit BUMN', NULL, NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2171, 'KUPKBPK-KB-0939', 'BPK Digugat: Kemelut Divestasi Newmont', 'BPK RI', NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2172, 'KUPKBPK-KB-0940', 'Jurus Sakti Membuat Website Penghasil Uang', 'Su', 'Rahman', 'Rahman, Su', 'Elex Media Komputindo', 'Jakarta', '2013', '978-602-02-2716-0', '005', 'Komputer- Pemrograman', '005 SU  j', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2173, 'KUPKBPK-KB-0941', 'Pemrograman Computer Vision pada Video Menggunakan Delphi + Vision Lab VCL 4.0.1', 'Fadlisyah', NULL, 'Fadlisyah', 'Graha Ilmu', 'Yogyakarta', '2011', '978-979-756-737-8', '005', 'Komputer- Pemrograman', '005 FAD p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2174, 'KUPKBPK-KB-0942', 'Web Statis dan Dinamis dengan Dreamweaver 8', 'Suryanto', 'Thabrani', 'Thabrani, Suryanto', 'Elex Media Komputindo', 'Jakarta', '2006', '979-20-8499-1', '005', 'Komputer- Pemrograman', '005 SUR w', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2175, 'KUPKBPK-KB-0943', 'Menggunakan Internet', 'Jack', 'Febrian', 'Febrian, Jack', 'Informatika Bandung', 'Bandung', '2008', '978-979-1153-35-5', '005', 'Komputer- Pemrograman', '005 JAC m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2176, 'KUPKBPK-KB-0944', 'Web Programming is Easy', 'Rohi', 'AbdullaH', 'AbdullaH, Rohi', 'Elex Media Komputindo', 'Jakarta', '2015', '9786020264691', '005', 'Komputer- Pemrograman', '005 ROH w', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2177, 'KUPKBPK-KB-0945', 'Router Teknologi, Konsep, Konfigurasi dan Troubleshooting', 'Gin-Gin', 'Yugianto', 'Yugianto, Gin-Gin', 'Informatika Bandung', 'Bandung', '2012', '978-602-8758-43-7', '005', 'Komputer- Pemrograman', '005 GIN r', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2178, 'KUPKBPK-KB-0946', 'Tuntunan Praktis Membuat Aplikasi Cash Register dengan Ms Visual FoxPro 8.0', 'Dadang', 'Sudrajat', 'Sudrajat, Dadang', 'Yrama Widya', 'Bandung', '2005', '979-543-286-9', '005', 'Komputer- Pemrograman', '005 DAD t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2179, 'KUPKBPK-KB-0947', 'Boom Visual Basic.Net 2010 Meledak', 'Yuswanto', NULL, 'Yuswanto', 'Cerdas Pustaka Publisher', 'Jakarta', '2010', '978-602-8432-37-5', '005', 'Komputer- Pemrograman', '005 YUS b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2180, 'KUPKBPK-KB-0948', 'Mudah Membangun Web Profil Multibahasa', 'Yuhefizar', NULL, 'Yuhefizar', 'Elex Media Komputindo', 'Jakarta', '2013', '978-602-02-0466-6', '005', 'Komputer- Pemrograman', '005 YUH m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2181, 'KUPKBPK-KB-0949', 'Seri Pelajaran Komputer Mengoperasikan Software Web Design Macromedia Dreamweaver MX 2004', 'Tim Digital Studio', NULL, 'Tim Digital Studio', 'Elex Media Komputindo', 'Jakarta', '2005', '979-20-8256-5', '005', 'Komputer- Pemrograman', '005 TIM s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2182, 'KUPKBPK-KB-0950', 'Pengolahan Citra Digital menggunakan Delphi', 'Balza', 'Achmad', 'Achmad, Balza', 'ANDI', 'Yogyakarta', '2013', '978-979-29-3476-2', '005', 'Komputer- Pemrograman', '005 BAL p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2183, 'KUPKBPK-KB-0951', 'Trik Mengamankan Password', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex Media Komputindo', 'Jakarta', '2010', '978-979-27-7118-3', '005', 'Komputer- Pemrograman', '005 JUB t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2184, 'KUPKBPK-KB-0952', 'Belajar Sendiri Internet', 'Mac', 'Bride', 'Bride, Mac', 'Kesaint Blanc', 'Jakarta', '2001', '979-593-120-2', '005', 'Komputer- Pemrograman', '005 MAC b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2185, 'KUPKBPK-KB-0953', 'Bank Soal Visual FoxPro', 'Muhammad', 'Syaukani', 'Syaukani, Muhammad', 'Elex Media Komputindo', 'Jakarta', '2006', '979-20-9036-3', '005', 'Komputer- Pemrograman', '005 MUH b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2186, 'KUPKBPK-KB-0954', 'Menggunakan Internet', 'Jack', 'Febrian', 'Febrian, Jack', 'CV Informatika', 'Bandung', '2001', '979-96446-0-7', '005', 'Komputer- Pemrograman', '005 JAC m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2187, 'KUPKBPK-KB-0955', 'Pemrograman Web Secara Visual dengan DELPHI 7 dan RAUDUS', 'Handayani', 'Saptaji', 'Saptaji, Handayani', 'Widya Media', 'Jakarta', '2012', '978-602-7591-02-8', '005', 'Komputer- Pemrograman', '005 HAN p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2188, 'KUPKBPK-KB-0956', 'Pemrograman Microsoft Visual Foxpro 8.0 untuk Pemula ', 'Navida', 'Compusains', 'Compusains, Navida', 'PD Anindya', 'Jakarta', '2004', '979-3789-16-6', '005', 'Komputer- Pemrograman', '005 E-M p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2189, 'KUPKBPK-KB-0957', 'Pemrograman Web Database dengan PHP & MySQL Tingkat Mahir', 'Heni A', 'Puspitosari', 'Puspitosari, Heni A', 'Skripta Media Creative', 'Yogyakarta', '2011', '978-602-9025-11-8', '005', 'Komputer- Pemrograman', '005 HEN p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2190, 'KUPKBPK-KB-0958', 'Membuat Aplikasi GPS dan Suara Antrian dengan PHP', 'Ronald', 'Rusli', 'Rusli, Ronald', 'Lokomedia', 'Yogyakarta', '2013', '978-979-1758-89-5', '005', 'Komputer- Pemrograman', '005 RON m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2191, 'KUPKBPK-KB-0959', 'Membuat Sendiri Game Flash Mx 2004', 'Chandra', NULL, 'Chandra', 'Maxikom', 'Palembang', '2005', '979-3767-31-6', '005', 'Komputer- Pemrograman', '005 CHA m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2192, 'KUPKBPK-KB-0960', 'Belajar Pemrograman Populer 3 in 1: Java, VB, dan PHP', 'Edy', 'Winarno', 'Winarno, Edy', 'Elex Media Komputindo', 'Jakarta', '2013', '978-602-02-1448-1', '005', 'Komputer- Pemrograman', '005 EDI b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2193, 'KUPKBPK-KB-0961', 'Aplikasi Berbasis Web dengan PHP & MySQL', 'Faisal', NULL, 'Faisal', 'Ram Media', 'Yogyakarta', '2011', '978-602-968-351-6', '005', 'Komputer- Pemrograman', '005 FAI a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2194, 'KUPKBPK-KB-0962', 'Kiat Praktis Menguasai ActionScri2.0 Flash MX 2004', 'Yahya', 'Kurniawan', 'Kurniawan, Yahya', 'Elex Media Komputindo', 'Jakarta', '2005', '979-20-7646-8', '005', 'Komputer- Pemrograman', '005 YAH k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2195, 'KUPKBPK-KB-0963', 'Membangun Perpustakaan Digital', 'Abdul Rahman', 'Saleh', 'Saleh, Abdul Rahman', 'Sagung Seto', 'Jakarta', '2010', '978-602-8674-16-4', '004', 'Komputer - Data', '004 ABD m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2196, 'KUPKBPK-KB-0964', 'Membangun Aplikasi dengan VB.Net', 'Ahmad Subuhan', 'Lubis', 'Lubis, Ahmad Subuhan', 'D@TAKOM Lintas Buana', 'Jakarta', '2005', '979-3214-51-1', '005', 'Komputer- Pemrograman', '005 AHM m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2197, 'KUPKBPK-KB-0965', 'Membangun Aplikasi Super Cantik dan Full Animasi dengan Delphi', 'Uus', 'Musalini', 'Musalini, Uus', 'Elex Media Komputindo', 'Jakarta', '2004', '979-20-5418-9', '005', 'Komputer- Pemrograman', '005 UUS m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2198, 'KUPKBPK-KB-0966', 'Belajar Sendiri Web Cam', 'Mico', 'Pardosi', 'Pardosi, Mico', 'Dua Selaras', 'Surabaya', '2005', NULL, '004', 'Komputer - Data', '004 MIC b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2199, 'KUPKBPK-KB-0967', 'Cara Mudah dan Cepat Membuat Program Aplikasi Database dengan Delphi', 'Wawan', 'Kusdiawan', 'Kusdiawan, Wawan', 'Gaya Media', 'Yogyakarta', '2010', '978-602-8545-00-6', '005', 'Komputer- Pemrograman', '005 WAW c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2200, 'KUPKBPK-KB-0968', 'Cara Instan Bikin Website Bernilai Jutaan', 'Su', 'Rahman', 'Rahman, Su', 'Elex Media Komputindo', 'Jakarta', '2012', '978-602-00-2847-7', '005', 'Komputer- Pemrograman', '005 SU  c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2201, 'KUPKBPK-KB-0969', 'Pemrogrmana Database Menggunakan Delphi (Delphi Win 32 dan MySQL 5.0 dengan optimalisasi komponen ZeosDBO)', 'Kani', NULL, 'Kani', 'Graha Ilmu', 'Yogyakarta', '2010', '978-979-756-680-7', '005', 'Komputer- Pemrograman', '005 KAN p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2202, 'KUPKBPK-KB-0970', 'Membangun Jaringan Komputer', 'Iwan', 'Sofana', 'Sofana, Iwan', 'Informatika', 'Bandung', '2013', '978-602-8758-95-6', '004', 'Komputer - Data', '004 IWA m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2203, 'KUPKBPK-KB-0971', 'Microsoft Visual Basic 6.0 Untuk Windows 98, 2000, NT, XP', 'Mico', 'Pardosi', 'Pardosi, Mico', 'Dua Selaras', 'Surabaya', '2005', NULL, '005', 'Komputer- Pemrograman', '005 MIC m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2204, 'KUPKBPK-KB-0972', 'Socket Programing', 'Fajar', 'Masya', 'Masya, Fajar', 'Graha Ilmu', 'Yogyakarta', '2011', '978-979-756-742-2', '005', 'Komputer- Pemrograman', '005 FAJ s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2205, 'KUPKBPK-KB-0973', 'Windows XP:XXX', 'Eri', 'Bowo', 'Bowo, Eri', 'Team Jasakom', NULL, '2007', '979-98545-8-X', '005', 'Komputer- Pemrograman', '005 ERI w', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2206, 'KUPKBPK-KB-0974', 'Panduan Aplikatif dan Solusi (PAS) Aplikasi Cerdas Menggunakan Delphi', 'Wahana ', 'Komputer', 'Komputer, Wahana ', 'Penerbit Andi', 'Yogyakarta', '2009', '978-979-29-0824-4', '005', 'Komputer- Pemrograman', '005 WAH p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2207, 'KUPKBPK-KB-0975', 'Computer Worm 1 - Secret of Underground Coding', 'Achmad', 'Darmal', 'Darmal, Achmad', 'Jasakom', 'Jakarta', '2006', '979-1090-01-7', '005', 'Komputer- Pemrograman', '005 ACH c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2208, 'KUPKBPK-KB-0976', 'Membuat Form Cantik untuk Aplikasi Delphi', 'Jaja Jamaludin', 'Malik', 'Malik, Jaja Jamaludin', 'Penerbit Andi', 'Yogyakarta', '2006', '979-763-338-1', '005', 'Komputer- Pemrograman', '005 JAJ m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2209, 'KUPKBPK-KB-0977', 'Membangun Jaringan Sendiri LAN Local Area Network', 'Tutang', NULL, 'Tutang', 'D@TAPRIN Grafitama', 'Jakarta', '2002', '979-3214-03-1', '005', 'Komputer- Pemrograman', '005 TUT m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2210, 'KUPKBPK-KB-0978', 'Buku Pintar: Penanganan Jaringan Komputer', 'Wahana', 'Komputer', 'Komputer, Wahana', 'WAHANA KOMPUTER', 'Semarang', '2001', '979-533-716-5', '005', 'Komputer- Pemrograman', '005 WAH b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2211, 'KUPKBPK-KB-0979', 'Kiat Jitu Kerja Praktek Membangun Software dan Web', 'Wiwit', 'Siswoutomo', 'Siswoutomo, Wiwit', 'Elex Media Komputindo', 'Jakarta', '2006', '979-20-8660-9', '005', 'Komputer- Pemrograman', '005 WIW k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2212, 'KUPKBPK-KB-0980', 'Teori dan Aplikasi program komputer Bahasa Turbo Pascal (Jilid 1)', 'Jogiyanto', NULL, 'Jogiyanto', 'Penerbit Andi', 'Yogyakarta', '1989', '979-533-945-1', '005', 'Komputer- Pemrograman', '005 JOG t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2213, 'KUPKBPK-KB-0981', 'Desain Grafis dan Web dengan Macromedia Fireworks MX', 'Arry Maulana', 'Syarif', 'Syarif, Arry Maulana', 'Elex Media Komputindo', 'Jakarta', '2003', '979-20-4331-4', '006', 'Komputer- Design Grafis', '006 ARR d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2214, 'KUPKBPK-KB-0982', 'Step By step Membangun Aplikasi SMS dengan PHP dan MySQL', 'Agus', 'Saputra', 'Saputra, Agus', 'Elex Media Komputindo', 'Jakarta', '2011', '978-979-27-6842-8', '005', 'Komputer- Pemrograman', '005 AGU s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2215, 'KUPKBPK-KB-0983', 'PHP 5 & MySQL 4, Proyek Shopping Cart 1', 'Windra', 'Swastika', 'Swastika, Windra', 'Dian Rakyat', 'Jakarta', '2005', '979-523-744-6', '005', 'Komputer- Pemrograman', '005 WIN p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2216, 'KUPKBPK-KB-0984', 'BELAJAR SENDIRI DESAIN WEB GRAPHIC DENGAN FIREWORKS MX', 'Gregorius', 'Agung', 'Agung, Gregorius', 'Elex Media Komputindo', 'Jakarta', '2003', '979-20-4597-X', '006', 'Komputer- Design Grafis', '006 GRE b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2217, 'KUPKBPK-KB-0985', 'Cara Praktis jadi TEKNISI HANDPHONE Software maupun Hardware', 'Armin', 'Irawan', 'Irawan, Armin', 'Fadillah print', 'Surabaya', '2004', '979-3565-05-5', '005', 'Komputer- Pemrograman', '005 ARM c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2218, 'KUPKBPK-KB-0986', 'Jago PHP & MySQL', 'Alan Nur', 'Aditya', 'Aditya, Alan Nur', 'Dunia Komputer', 'Bekasi', '2011', '978-602-99250-3-6', '005', 'Komputer- Pemrograman', '005 ALA j', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2219, 'KUPKBPK-KB-0987', 'Pengelolaan Jaringan dengan Windows NT Server 4.0', 'Wahana', 'Komputer', 'Komputer, Wahana', 'WAHANA KOMPUTER', 'Semarang', '1997', '979-533-729-7', '005', 'Komputer- Pemrograman', '005 WAH p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2220, 'KUPKBPK-KB-0988', 'WEB DESIGNER Cara Cepat Membuat Desain Template Website Tanpa Coding', 'Su', 'Rahman', 'Rahman, Su', 'Mediakita', 'Jakarta', '2013', '979-794-402-6', '005', 'Komputer- Pemrograman', '005 SU  w', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2221, 'KUPKBPK-KB-0989', 'Smart PHP OOP Engine for PHP Template', 'Agus', 'Saputra', 'Saputra, Agus', 'Elex Media Komputindo', 'Jakarta', '2013', '9786020207308', '005', 'Komputer- Pemrograman', '005 AGU s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2222, 'KUPKBPK-KB-0990', '6 Aplikasi Ampluh Flash 8', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex Media Komputindo', 'Jakarta', '2006', '979-20-9794-5', '005', 'Komputer- Pemrograman', '005 JUB 6', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2223, 'KUPKBPK-KB-0991', 'Pemrograman BORLAND C++ BUILDER', 'Budi', 'Raharjo', 'Raharjo, Budi', 'Informatika Bandung', 'Bandung', '2003', '979-3338-10-5', '005', 'Komputer- Pemrograman', '005 IMA p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2224, 'KUPKBPK-KB-0992', 'Dasar-dasar Teknik Komputer', 'Rudy', 'Hartanto', 'Hartanto, Rudy', 'GAVA MEDIA', 'Yogyakarta', '2003', '979-3469-01-3', '005', 'Komputer- Pemrograman', '005 IR. d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2225, 'KUPKBPK-KB-0993', 'Buku Latihan : Pemrograman Database dengan Visual Basic 6.0', 'Ario Surya', 'Kusumo', 'Kusumo, Ario Surya', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2002', '979-20-3562-1', '005', 'Komputer- Pemrograman', '005 DRS b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2226, 'KUPKBPK-KB-0994', 'Practical TCP/IP: Mendesain, Menggunakan, dan Troubleshooting Jaringan TCP/IP di Linux dan Windows (Jilid 1)', 'Niall', 'Mansfield', 'Mansfield, Niall', 'Penerbit Andi', 'Yogyakarta', '2004', '979-731-177-5', '005', 'Komputer- Pemrograman', '005 NIA p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2227, 'KUPKBPK-KB-0995', 'VB Sebagai Pusat kendali Peralatan Elektronik', 'Suhata', ' ', ' , Suhata', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2005', '979-20-6950-X', '005', 'Komputer- Pemrograman', '005 SUH v', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2228, 'KUPKBPK-KB-0996', 'Membangun Aplikasi Web-based GIS dengan Mapserver', 'Eddy', 'Prahasta', 'Prahasta, Eddy', 'Informatika Bandung', 'Bandung', '2007', '979-3338-92-X', '005', 'Komputer- Pemrograman', '005 EDD m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2229, 'KUPKBPK-KB-0997', '36 Jam belajar Komputer: Pemrograman JAVA 2 SE SDK 1.4', 'Yuniar ', 'Supardi', ' ', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2005', '979-20-6682-9', '005', 'Komputer- Pemrograman', '005 IR. 3', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2230, 'KUPKBPK-KB-0998', 'Program Aplikasi Client Server, Pengolahan Data Akademik dan Sistem Penjualan Terpadu dengan Visual Basic 6.0 dan Borland Delphi 7.0', 'Ketut', 'Darmayuda', 'Darmayuda, Ketut', 'Informatika Bandung', 'Bandung', '2007', '978-979-1153-20-1', '005', 'Komputer- Pemrograman', '005 KET p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2231, 'KUPKBPK-KB-0999', 'Integrasi Flash dengan ASP', 'Ariesto Hadi', 'Sutopo', 'Sutopo, Ariesto Hadi', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2003', '979-20-5040-x', '005', 'Komputer- Pemrograman', '005 ARI i', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2232, 'KUPKBPK-KB-1000', 'Bahasa Turbo Pascal, Teori dan Aplikasi Program Komputer (Jilid 2)', 'Jogiyanto', 'Hartono', 'Hartono, Jogiyanto', 'Penerbit Andi Yogyakarta', 'Yogyakarta', '1989', '979-533-632-0', '005', 'Komputer- Pemrograman', '005 JOG b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2233, 'KUPKBPK-KB-1001', 'Pemrograman Web Secara Visual dengan DELPHI 7 dan RAUDUS', 'Handayani', 'Saptaji', 'Saptaji, Handayani', 'Penerbit Widya Media', NULL, '2012', '978-602-7591-02-8', '005', 'Komputer- Pemrograman', '005 HAN p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2234, 'KUPKBPK-KB-1002', 'e-Education Konsep, Teknologi dan Aplikasi Internet Pendidikan', 'Budi Sutedjo', 'Dharma Oetomo', 'Dharma Oetomo, Budi Sutedjo', 'Penerbit Andi Yogyakarta', 'Yogyakarta', '2002', '979-553-879-X', '005', 'Komputer- Pemrograman', '005 BUD e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2235, 'KUPKBPK-KB-1003', 'Windows 2000 Server', 'David', 'Sugianto', 'Sugianto, David', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2002', '979-20-3922-8', '005', 'Komputer- Pemrograman', '005 DAV w', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2236, 'KUPKBPK-KB-1004', 'Buku Pintar internet, Teknologi Warung Internet', 'Ono W', 'Purbo', 'Purbo, Ono W', 'Elex Media Komputindo, Jakarta', 'Jakarta', '1999', '979-20-1299-0', '005', 'Komputer- Pemrograman', '005 ONN b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2237, 'KUPKBPK-KB-1005', 'Cara membuat Blog dengan Blogspot', 'Abdul', 'Razaq', 'Razaq, Abdul', 'Penerbit Indah Surabaya', 'Surabaya', '2008', NULL, '005', 'Komputer- Pemrograman', '005 ABD c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2238, 'KUPKBPK-KB-1006', 'Borland Delphi 5.0', 'M. Agus J', 'Alam', 'Alam, M. Agus J', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2000', '979-20-1466-7', '005', 'Komputer- Pemrograman', '005 M.  b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2239, 'KUPKBPK-KB-1007', 'Pemrograman Borland Delphi 7 (Jilid 2)', 'Madcoms', NULL, ', Madcoms', 'Penerbit Andi Yogyakarta', 'Yogyakarta', '2003', '979-533-954-0', '005', 'Komputer- Pemrograman', '005 MAD p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2240, 'KUPKBPK-KB-1008', 'Tip dan Trik Pemrograman Java 2', 'Didik Dwi ', 'Prasetyo', 'Prasetyo, Didik Dwi ', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2004', '979-20-5677-7', '005', 'Komputer- Pemrograman', '005 DID t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2241, 'KUPKBPK-KB-1009', 'Aplikasi SMS Untuk Berbagai Keperluan: Membuat Aplikasi SMS menggunakan Delphi dan OxygenSMS', 'Teddy Marcus ', 'Zakaria', 'Zakaria, Teddy Marcus ', 'Penerbit Informatika', 'Bandung', '2006', NULL, '005', 'Komputer- Pemrograman', '005 MAR a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2242, 'KUPKBPK-KB-1010', 'Hacking Password: Mengungkap Teknik hacking Paling Ampuh dalam membuat akun Facebook, Email,YM, Paypal, dan Sebagainya', 'Hasnul', 'Arifin', 'Arifin, Hasnul', 'Mediakom', 'Yogyakarta', '2011', '979-877-161-3', '005', 'Komputer- Pemrograman', '005 HAS h', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2243, 'KUPKBPK-KB-1011', 'Edisi Khusus Panduan Penggunaan Delphi', 'Jon', 'Matcho', 'Matcho, Jon', 'Penerbit Andi and Simon& Schuter (Asia) Pte.Ltd', 'Yogyakarta', '1997', '979-533-450-6', '005', 'Komputer- Pemrograman', '005 JOH e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2244, 'KUPKBPK-KB-1012', 'Memanfaatkan Serial RS-232-C', 'Ganiadi', 'Gunawan', 'Gunawan, Ganiadi', 'Elex Media Komputindo ', 'Jakarta', '1991', NULL, '005', 'Komputer- Pemrograman', '005 GAN m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2245, 'KUPKBPK-KB-1013', 'Menguasai MYOB Accounting Plus 11', 'Albertus', 'Ong', 'Ong, Albertus', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2003', '979-20-4585-6', '657', 'Akuntansi', '657 ALB m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2246, 'KUPKBPK-KB-1014', 'Membuat Aplikasi Mini/Supermarket dengan Java', 'Miftakhul', 'Huda', 'Huda, Miftakhul', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2011', '978-602-00-0753-3', '005', 'Komputer- Pemrograman', '005 MIF m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26');
INSERT INTO `books` (`id`, `book_number`, `book_title`, `book_firstname`, `book_lastname`, `book_author`, `book_publisher`, `book_city`, `book_year`, `book_isbn`, `book_class`, `book_subject`, `book_classcode`, `book_acq`, `book_location`, `book_nup`, `book_brand`, `book_image`, `book_createdby`, `book_updatedby`, `book_isavailable`, `created_at`, `updated_at`) VALUES
(2247, 'KUPKBPK-KB-1015', 'Belajar pemrograman dengan Bahasa C++ dan Java dari Nol Menjadi Andal', 'M', 'Shalahuddin', 'Shalahuddin, M', 'Informatika Bandung', 'Bandung', '2009', '979-1153-07-8', '005', 'Komputer- Pemrograman', '005 M.  b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2248, 'KUPKBPK-KB-1016', 'Panduan Cepat Menggunakan Dreamweaver MX 2004 Untuk Pemula', 'Janner', 'Simarmata', 'Simarmata, Janner', 'Penerbit Andi', 'Yogyakarta', '2006', '979-763-158-3', '005', 'Komputer- Pemrograman', '005 JAN p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2249, 'KUPKBPK-KB-1017', 'The Shortcut Of Delphi For Accounting', 'Gunaidi Abdia', 'Away', 'Away, Gunaidi Abdia', 'Informatika Bandung', 'Yogyakarta', '2008', '978-979-1153-48-5', '005', 'Komputer- Pemrograman', '005 GUN t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2250, 'KUPKBPK-KB-1018', '7 Jam Belajar : Ulead Video Studio 7 Untuk Orang Awam', 'Handi', 'Chandra', 'Chandra, Handi', 'CV. Maxicom', 'Palembang', '2004', NULL, '005', 'Komputer- Pemrograman', '005 HAN 7', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2251, 'KUPKBPK-KB-1019', 'Pemrograman Delphi dengan ADOExpress', 'Teddy', 'Marcus', 'Marcus, Teddy', 'Informatika Bandung', 'Bandung', '2005', '979-96446-7-4', '005', 'Komputer- Pemrograman', '005 TED p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2252, 'KUPKBPK-KB-1020', 'Tuntunan Pemrograman Java untuk Handphone', 'Budi', 'Raharjo', 'Raharjo, Budi', 'Informatika Bandung', 'Bandung', '2007', '979-1153-01-9', '005', 'Komputer- Pemrograman', '005 BUD t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2253, 'KUPKBPK-KB-1021', 'Teknik Digital Video Editing Dengan Adobe Premiere 6.5', 'Bayu', 'Adjie', 'Adjie, Bayu', 'Elex Media Komputerindo Kelompok Gramedia Jakarta', 'Jakarta', '2003', '979-20-5059-0', '006', 'Komputer- Design Grafis', '006 IR. t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2254, 'KUPKBPK-KB-1022', 'Tips n trick Graphics Design', 'Hendi', 'Hendratman', 'Hendratman, Hendi', 'Informatika Bandung ', 'Bandung', '2008', '978-979-1153-31-7', '006', 'Komputer- Design Grafis', '006 HEN t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2255, 'KUPKBPK-KB-1023', ' Membuat Cd interaktif & CD autorun dengan AutoPlay', 'Sutarman', NULL, ', Sutarman', 'Penerbit Gava Media', 'Yogyakarta', '2005', '979-3469-79-X', '006', 'Komputer- Design Grafis', '006 SUT  m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2256, 'KUPKBPK-KB-1024', 'Grafika Komputer, Teori dan Implementasi', 'Achmad', 'Basuki', 'Basuki, Achmad', 'CV. Andi Offset (Penerbit Andi)', NULL, '2006', '979-763-068-4', '006', 'Komputer- Design Grafis', '006 ACH g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2257, 'KUPKBPK-KB-1025', 'Menjadi terkenal Dengan Youtube', 'D Hendrik', 'Mulyana', 'Mulyana, D Hendrik', 'elex Media Komputerindo Jakarta', 'Jakarta', '2011', '978-602-00-0609-3', '006', 'Komputer- Design Grafis', '006 D.  m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2258, 'KUPKBPK-KB-1026', '10 Desain Pop Art Edisi Musik', 'Jayan', NULL, ', Jayan', 'Penerbit Maxicom', 'Palembang', '2009', '979-3767-1398-83-1', '006', 'Komputer- Design Grafis', '006 JAY 1', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2259, 'KUPKBPK-KB-1027', 'Desain Web Cantik dengan Flash 8', 'Ferry', 'Herlambang', 'Herlambang, Ferry', 'Elex Media Komputerindo Jakarta', 'Jakarta', '2007', '978-979-27-0000-8', '006', 'Komputer- Design Grafis', '006 FER d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2260, 'KUPKBPK-KB-1028', 'Kreasi Objek 3D Profesional dengan 3D Studio Max 7', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex media Komputerindo, Jakarta', 'Jakarta', '2006', '979-20-9029-0', '006', 'Komputer- Design Grafis', '006 JUB k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2261, 'KUPKBPK-KB-1029', 'Membuat Sendiri Animasi Profesional dengan 3D Studio MAX 3.1', 'Handi', 'Chandra', 'Chandra, Handi', 'Elex Media komputindo', 'Jakarta', '2000', '979-20-1863-8', '006', 'Komputer- Design Grafis', '006 HAN m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2262, 'KUPKBPK-KB-1030', 'Kreasi Logo 3D dengan 3D Studio Max 7', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex Media Komputerindo, Jakarta', 'Jakarta', '2006', '979-20-8522-X', '006', 'Komputer- Design Grafis', '006 JUB k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2263, 'KUPKBPK-KB-1031', 'Cara mudah menguasai Video editing dengan Pinnacle Studio 8', 'Pandapotan', 'Sianipar', 'Sianipar, Pandapotan', 'Elex Media Komputerindo, Jakarta', 'Jakarta', '2005', '979-20-1913-8', '006', 'Komputer- Design Grafis', '006 IR. c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2264, 'KUPKBPK-KB-1032', 'Flash 8 Untuk Advertising', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex Media Komputerindo, Jakarta', 'Jakarta', '2007', '978-979-27-0850-9', '006', 'Komputer- Design Grafis', '006 JUB f', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2265, 'KUPKBPK-KB-1033', 'Kreasi Animasi WEB dengan Adobe Flash', 'Madcoms', NULL, ', Madcoms', 'CV. Andi Offset (Penerbit Andi)', 'Yogyakarta', '2013', '978-979-29-4119-7', '006', 'Komputer- Design Grafis', '006 MAD k', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2266, 'KUPKBPK-KB-1034', 'Teknik Mengubah Foto Menjadi Kartun', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex Media Komputerindo, Jakarta', 'Jakarta', '2006', '979-20-9141-6', '006', 'Komputer- Design Grafis', '006 JUB t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2267, 'KUPKBPK-KB-1035', 'Seri Pembelajaran  Komputer: Macromedia Flash MX', 'Arief', 'Ramadhan', 'Ramadhan, Arief', 'Elex Media Komputerindo, Jakarta', 'Jakarta', '2004', '979-20--6162-2', '006', 'Komputer- Design Grafis', '006 ARI s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2268, 'KUPKBPK-KB-1036', 'Teknik Jitu Menguasai Flash MX', 'Lukmanul ', 'Hakim', 'Hakim, Lukmanul ', 'Elex Media Komputerindo, Jakarta', 'Jakarta', '2003', '979-20-4061-7', '006', 'Komputer- Design Grafis', '006 LUK t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2269, 'KUPKBPK-KB-1037', 'Belajar Grafis Dengan Adobe Illustrator CS2', 'Island ', 'Script', 'Script, Island ', 'Adhi Widya KOMUNIKA', 'Bekasi', '2007', '978-979-25-4383-4', '006', 'Komputer- Design Grafis', '006 ISL b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2270, 'KUPKBPK-KB-1038', '12 Jurus Pamungkas Animasi Kartun Dengan Flash 8', 'Zeembry', NULL, ', Zeembry', 'elex media Komputindo, Jakarta', 'Jakarta', '2006', '979-20-8740-0', '006', 'Komputer- Design Grafis', '006 ZEE 1', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2271, 'KUPKBPK-KB-1039', 'The Magic of Adobe Premiere Pro', 'Hendi', 'Hendratman', 'Hendratman, Hendi', 'Informatika Bandung ', 'Bandung', '2007', '979-1153-06-X', '006', 'Komputer- Design Grafis', '006 HEN t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2272, 'KUPKBPK-KB-1040', 'The Magic of Macromedia Director', 'Hendi', 'Hendratman', 'Hendratman, Hendi', 'Informatika Bandung ', 'Bandung', '2005', '979-3338-58-X', '006', 'Komputer- Design Grafis', '006 HEN t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2273, 'KUPKBPK-KB-1041', 'Formula Photoshop CS untuk Mendesain Website', 'Windra', 'Swastika', 'Swastika, Windra', 'Dian Rakyat', 'Jakarta', '2006', '979-523-771-3', '006', 'Komputer- Design Grafis', '006 SWA f', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2274, 'KUPKBPK-KB-1042', 'The Magic Of Corel Draw', 'Hendi', 'Hendratman', 'Hendratman, Hendi', 'Informatika Bandung ', 'Bandung', '2010', '978-979-1153-85-0', '006', 'Komputer- Design Grafis', '006 HEN t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2275, 'KUPKBPK-KB-1043', 'Making Educational Animation using Flash', 'Priyanto', 'Hidayatullah', 'Hidayatullah, Priyanto', 'Informatika Bandung ', 'Bandung', '2008', '978-979-1153-44-7', '006', 'Komputer- Design Grafis', '006 PRI m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2276, 'KUPKBPK-KB-1044', 'The Magic Of 3D Studio Max', 'Hendi', 'Hendratman', 'Hendratman, Hendi', 'Informatika Bandung ', 'Bandung', '2008', '978-979-1153-62-1', '006', 'Komputer- Design Grafis', '006 HEN t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2277, 'KUPKBPK-KB-1045', '7 Jam Belajar c', 'Handi', 'Chandra', 'Chandra, Handi', 'Penerbit Maxicom', 'Palembang', '2004', NULL, '006', 'Komputer- Design Grafis', '006 HAN 7', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2278, 'KUPKBPK-KB-1046', '30 Contoh Aplikasi dalam visual basic', 'Andri ', 'Kristianto', 'Kristianto, Andri ', 'Penerbit Gava Media', 'Yogyakarta', '2005', '979-3469-62-5', '006', 'Komputer- Design Grafis', '006 AND 3', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2279, 'KUPKBPK-KB-1047', 'Mendesain Web dan animasi dengan Photoshop CS & Image Ready', 'Ferry', 'Herlambang', 'Herlambang, Ferry', 'Elex Media Komputindo', 'Jakarta', '2004', '979-20-6304-8', '006', 'Komputer- Design Grafis', '006 FER m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2280, 'KUPKBPK-KB-1048', 'Student Guide Series: Pengenalan AutoCAD 3D', 'Ari Aria', 'Soma', 'Soma, Ari Aria', 'elex media Komputindo, Jakarta', 'Jakarta', '2006', '979-20-9278-1', '006', 'Komputer- Design Grafis', '006 HAR s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2281, 'KUPKBPK-KB-1049', '20 Proyek Animasi dengan 3 Software Adobe', 'Aris Bayu', 'Prananta', 'Prananta, Aris Bayu', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2009', '978-979-27-5014-0', '006', 'Komputer- Design Grafis', '006 ARI 2', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2282, 'KUPKBPK-KB-1050', 'Tip dan Trik Macromedia Flash 5.0 dengan ActionScript', 'Didik', 'Wijaya', 'Wijaya, Didik', 'elex media Komputindo, Jakarta', 'Jakarta', '2002', '979-20-3069-7', '006', 'Komputer- Design Grafis', '006 DID t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2283, 'KUPKBPK-KB-1051', 'Tutotial Autocad 2D dan 3D', 'M', 'Sholeh', 'Sholeh, M', 'Informatika Bandung ', 'Bandung', '2005', '979-3338-60-1', '006', 'Komputer- Design Grafis', '006 M.  t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2284, 'KUPKBPK-KB-1052', 'Student Guide Series: Pengenalan AutoCAD 2D', 'Haria Aria', 'Soma', 'Soma, Haria Aria', 'elex media Komputindo, Jakarta', 'Jakarta', '2006', '979-20-8801-6', '006', 'Komputer- Design Grafis', '006 HAR s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2285, 'KUPKBPK-KB-1053', 'Merancang Rumah Cantik dengan ArchieCAD 9', 'Handi', 'Chandra', 'Chandra, Handi', 'Penerbit Maxicom', 'Palembang', '2005', '979-3767-30-8', '006', 'Komputer- Design Grafis', '006 HAN m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2286, 'KUPKBPK-KB-1054', '20 Kreasi Serangga Kartun Dengan CorelDraw 12', 'Bayu', 'Stevano', 'Stevano, Bayu', 'elex media Komputindo, Jakarta', 'Jakarta', '2005', '979-2097087-7', '006', 'Komputer- Design Grafis', '006 BAY 2', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2287, 'KUPKBPK-KB-1055', '12 Proyek Unik Visual Basic 6.0', 'Firdaus', NULL, ', Firdaus', 'Penerbit Maxicom', 'Palembang', '2005', '979-3767-29-4', '006', 'Komputer- Design Grafis', '006 FIR 1', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2288, 'KUPKBPK-KB-1056', 'Menggunakan Kontrol Panel Hosting itu Gampang', 'MataMaya Studio', NULL, ', MataMaya Studio', 'Elex Media Komputindo, Jakarta', 'Jakarta', '2010', '978-979-27-6953-1', '005', 'Komputer- Pemrograman', '005 MAT m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2289, 'KUPKBPK-KB-1057', 'TIP & TRIK ANIMASI MACROMEDIA FLASH Menyingkap Rahasia Teknik Animasi', 'A.Zainul', 'Fanani', 'Fanani, A.Zainul', 'GRAHA ILMU', 'Yogyakarta', '2006', '978-070-756-134-5', '006', 'Komputer- Design Grafis', '006 A.  t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2290, 'KUPKBPK-KB-1058', '60 Efek Animasi Spektakuler Flash 8', 'Zeembry', NULL, ', Zeembry', 'Elex Media komputindo', 'Jakarta', '2006', '979-20-9748-1', '006', 'Komputer- Design Grafis', '006 ZEE 6', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2291, 'KUPKBPK-KB-1059', 'Buku Latihan Membuat Objek dengan Photoshop 7', 'Slamet', 'Riyanto', 'Riyanto, Slamet', 'Elex Media komputindo', 'Jakarta', '2004', '979-20-5504-5', '006', 'Komputer- Design Grafis', '006 SLA b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2292, 'KUPKBPK-KB-1060', 'Singkat Tepat Jelas Presentasi Multimedia Interaktif dengan Macromedia Director 8.5', 'Bayu', 'Adjie', 'Adjie, Bayu', 'Elex Media komputindo', 'Jakarta', '2003', '979-20-4287-3', '006', 'Komputer- Design Grafis', '006 IR. s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2293, 'KUPKBPK-KB-1061', '7 Jam Belajar After Effects 6.5 untuk Orang Awam', 'Handi', 'Chandra', 'Chandra, Handi', 'Maxikom', 'Palembang', '2005', '979-3767-16-2', '006', 'Komputer- Design Grafis', '006 HAN 7', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2294, 'KUPKBPK-KB-1062', 'Pemrograman Android untuk Pemula', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Elex Media komputindo', 'Jakarta', '2013', '978-602-02-0982-1', '005', 'Komputer- Pemrograman', '005 JUB p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2295, 'KUPKBPK-KB-1063', 'Belajar Sendiri Membuat Aplikasi Point Of Sales dengan Microsoft Visual Studio.NET 2005', 'Yosafat ', 'Chayo', 'Chayo, Yosafat ', 'Elex Media komputindo', 'Jakarta', '2005', '979-20-7559-3', '005', 'Komputer- Pemrograman', '005 YOS b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2296, 'KUPKBPK-KB-1064', 'Tutorial Profesional dengan Photoshop CS', 'Jubilee', 'Enterprise', 'Enterprise, Jubilee', 'Maxikom', 'Palembang', '2005', '979-3767-24-3', '006', 'Komputer- Design Grafis', '006 CHA t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2297, 'KUPKBPK-KB-1065', 'Mastering ActionScriMacromedia Flash MX 2004 \"Mudahnya Membuat Animasi dan Interaksi\"', 'Arry Maulana', 'Syarif', 'Syarif, Arry Maulana', 'Elex Media komputindo', 'Jakarta', '2005', '979-20-7505-4', '006', 'Komputer- Design Grafis', '006 ARR m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2298, 'KUPKBPK-KB-1066', 'Mahir Dalam 7 Hari: Adobe After Effect 6.5', 'Madcoms', NULL, ', Madcoms', 'Penerbit Andi', 'Yogyakarta', '2006', '979-763-398-5', '006', 'Komputer- Design Grafis', '006 MAD m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2299, 'KUPKBPK-KB-1067', 'Memasuki Dunia e-Learning', 'Bernard Renaldy', 'Suteja', 'Suteja, Bernard Renaldy', 'Informatika Bandung', 'Bandung', '2008', '978-979-1153-2', '005', 'Komputer- Pemrograman', '005 BER m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2300, 'KUPKBPK-KB-1068', '3D Studio Max 7 untuk Pemula', NULL, NULL, ', ', 'Elex Media komputindo', 'Jakarta', '2006', '979-20-9348-6', '006', 'Komputer- Design Grafis', '006 JUB 3', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2301, 'KUPKBPK-KB-1069', 'Buku Latihan Membuat Berbagai Efek dengan Flash MX', 'Jhonsen', NULL, ', Jhonsen', 'Elex Media komputindo', 'Jakarta', '2003', '979-20-4838-3', '006', 'Komputer- Design Grafis', '006 JHO b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2302, 'KUPKBPK-KB-1070', '50 Kreasi Modeling & Animasi 3D Spektakuler dengan 3DS Max 8', 'Aditya', NULL, ', Aditya', 'Elex Media komputindo', 'Jakarta', '2007', '978-979-27-0406-8', '006', 'Komputer- Design Grafis', '006 ADI 5', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2303, 'KUPKBPK-KB-1071', '3DS Max Express - Mengukap Rahasia Dapur Film Animasi Dunia Melalui Konsep, Teknik, Praktek Morphing Karakter', 'Aulia ', 'Soma', 'Soma, Aulia ', 'Penerbit Andi', 'Yogyakarta', '2009', '978-979-29-0714-8', '006', 'Komputer- Design Grafis', '006 AUL 3', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2304, 'KUPKBPK-KB-1072', 'Animasi Kartun Lucu & Interaktif Flash', 'Jayan', NULL, ', Jayan', 'Maxikom', 'Palembang', '2006', '979-3767-72-3', '006', 'Komputer- Design Grafis', '006 JAY a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2305, 'KUPKBPK-KB-1073', 'Editing Video Praktis dengan Ulead VideoStudio 7.0', 'Elga', 'Yulwardian', 'Yulwardian, Elga', 'Elex Media komputindo', 'Jakarta', '2004', '979-20-6034-0', '006', 'Komputer- Design Grafis', '006 ELG e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2306, 'KUPKBPK-KB-1074', 'Memakai CorelDRAW 12', 'Ian', 'Chandra K', 'Chandra K, Ian', 'Elex Media komputindo', 'Jakarta', '2004', '979-20-5787-0', '006', 'Komputer- Design Grafis', '006 IAN m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2307, 'KUPKBPK-KB-1075', 'Langkah Mudah Membuat Game 3D', 'Ivan C', 'Sibero', 'Sibero, Ivan C', 'MediaKom', 'Yogyakarta', '2009', '978-979-877-040-1', '006', 'Komputer- Design Grafis', '006  IV l', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2308, 'KUPKBPK-KB-1076', '50 Efek Profesional Fireworks MX 2004', 'Lukmanul', 'Hakim', 'Hakim, Lukmanul', 'Maxikom', 'Palembang', '2004', '979-3767-09-X', '006', 'Komputer- Design Grafis', '006 LUK 5', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2309, 'KUPKBPK-KB-1077', 'SISTEM INFORMASI GEOGRAFIS Menggunakan Aplikasi ArcView dan ERMapper 6.4', 'Muhammad Jafar', 'Elly', 'Elly, Muhammad Jafar', 'GRAHA ILMU', 'Yogyakarta', '2009', '978-979-756-497-1', '005', 'Komputer- Pemrograman', '005 MUH s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2310, 'KUPKBPK-KB-1078', 'Membuat Aplikasi Sendiri dengan Memanfaatkan Barcode', 'Teguh', 'Wahyono', 'Wahyono, Teguh', 'Elex Media komputindo', 'Jakarta', '2010', '978-979-27-7117-6', '005', 'Komputer- Pemrograman', '005 TEG m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2311, 'KUPKBPK-KB-1079', '7 Jam Belajar Interaktif Dreamweaver 8 untuk Orang Awam', 'Mulya', 'Hadi', 'Hadi, Mulya', 'Maxikom', 'Palembang', '2006', '979-3767-53-7', '005', 'Komputer- Pemrograman', '005 HAD 7', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2312, 'KUPKBPK-KB-1080', 'Membangun Situs Menggunakan phpWebsite', 'Dwi', 'Wahyudi', 'Wahyudi, Dwi', 'Elex Media komputindo', 'Jakarta', '2003', '979-20-4041-2', '005', 'Komputer- Pemrograman', '005 DWI m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2313, 'KUPKBPK-KB-1081', 'Membangun Situs Menggunakan phpWebsite', 'Handono', 'Indra', 'Indra, Handono', 'Elex Media komputindo', 'Jakarta', '1998', '979-20-0688-5', '006', 'Komputer- Design Grafis', '006 HAN m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2314, 'KUPKBPK-KB-1082', 'Membuat Program Profesional Secara cepat dengan VB', 'Agustinus', 'Nalwan', 'Nalwan, Agustinus', 'Elex Media komputindo', 'Jakarta', '2004', '979-20-5231-3', '005', 'Komputer- Pemrograman', '005 AGU m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2315, 'KUPKBPK-KB-1083', 'Panduan Aplikatif Pemrograman Visual FoxPro 7.0', 'Wahana Komputer', NULL, ', Wahana Komputer', 'Penerbit Andi', 'Yogyakarta', '2003', '979-533-959-1', '005', 'Komputer- Pemrograman', '005 WAH p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2316, 'KUPKBPK-KB-1084', 'LOGIKA INFORMATIKA (Dasar-dasar Logika Untuk Pemrograman komputer & Perancangan Komputer)', 'Suprapto', NULL, ', Suprapto', 'GAVA MEDIA', 'Yogyakarta', '2002', '979-97088-3-4', '005', 'Komputer- Pemrograman', '005 SUP l', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2317, 'KUPKBPK-KB-1085', 'Panduan Praktis Implementasi dan Konfigurasi Jaringan MS Windows 2008 Server', 'Wahana Komputer', NULL, ', Wahana Komputer', 'Penerbit Andi', 'Yogyakarta', '2010', '978-979-29-1318-7', '005', 'Komputer- Pemrograman', '005 WAH p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2318, 'KUPKBPK-KB-1086', 'Panduan Aplikasi Pemrograman Database dengan Visual Basic 6.0 dan Crystal Report', 'Madcoms', NULL, ', Madcoms', 'Penerbit Andi', 'Yogyakarta', '2005', '979-763-023-4', '005', 'Komputer- Pemrograman', '005 MAD p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2319, 'KUPKBPK-KB-1087', 'IP Camera dan Aplikasinya', 'Mahmud', 'Aryanto', 'Aryanto, Mahmud', 'Elex Media komputindo', 'Jakarta', '2010', '978-979-27-8351-3', '005', 'Komputer- Pemrograman', '005 MAH i', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2320, 'KUPKBPK-KB-1088', 'Jaringan Komputer untuk Orang Awam', 'Wahidin', NULL, ', Wahidin', 'Maxikom', 'Palembang', '2007', '979-3767-95-2', '005', 'Komputer- Pemrograman', '005 WAH j', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2321, 'KUPKBPK-KB-1089', 'Pemrograman Visual dBase 7.X Jilid 1', 'Abdul', 'Kadir', 'Kadir, Abdul', 'Penerbit Andi', 'Yogyakarta', '2000', '979-533-643-6', '005', 'Komputer- Pemrograman', '005 ABD p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:26', '2023-01-04 09:22:26'),
(2322, 'KUPKBPK-KB-1090', 'Pemrograman Database dengan Delphi Menggunakan Access dan ADO', 'Abdul', 'Kadir', 'Kadir, Abdul', 'Penerbit Andi', 'Yogyakarta', '2005', '978-979-29-0657-8', '005', 'Komputer- Pemrograman', '005 ABD p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2323, 'KUPKBPK-KB-1091', 'Panduan Praktis Delphi 2009', 'Wahana Komputer', NULL, ', Wahana Komputer', 'Penerbit Andi', 'Yogyakarta', '2009', '978-979-29-0923-4', '005', 'Komputer- Pemrograman', '005 WAH p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2324, 'KUPKBPK-KB-1092', 'PEMROGRAMAN BASIC', 'Soesianto', NULL, ', Soesianto', 'Penerbit Andi', 'Yogyakarta', '1985', '979-533-109-4', '005', 'Komputer- Pemrograman', '005 IR. p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2325, 'KUPKBPK-KB-1093', 'Computer Worm 2 - Secret of Underground Coding', 'Ahmad', 'Dharmal', 'Dharmal, Ahmad', 'Jasakom', 'Jakarta', '2006', '979-1090-02-5', '005', 'Komputer- Pemrograman', '005 ACH c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2326, 'KUPKBPK-KB-1094', 'Sistem Informasi Geografis: Belajar dan Memahami MapInfo', 'Eddy', 'Prahasta', 'Prahasta, Eddy', 'Informatika Bandung', 'Bandung', '2006', '979-3338-31-8', '005', 'Komputer- Pemrograman', '005 EDD s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2327, 'KUPKBPK-KB-1095', 'Seri Aplikasi Macromedia Flash MX 2004 Membuat Animasi Movie Klip dengan Actions Script', 'Madcoms', NULL, ', Madcoms', 'Penerbit Andi', 'Yogyakarta', '2004', '979-731-258-5', '006', 'Komputer- Design Grafis', '006 MAD s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2328, 'KUPKBPK-KB-1096', 'PEMROGRAMAN BEORIENTASI OBJEK', 'Adi', 'Nugroho', 'Nugroho, Adi', 'Informatika Bandung', 'Bandung', '2004', '979-3338-23-5', '005', 'Komputer- Pemrograman', '005 ADI p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2329, 'KUPKBPK-KB-1097', 'Accountability In a Time of Crisis', NULL, NULL, ', ', 'Intosai Development Initiative (IDI)', 'Oslo', '2021', 'n/a', '657', 'Auditing', '657 IDI a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2330, 'KUPKBPK-KB-1098', 'Audit of Landing and Borrowing', NULL, NULL, ', ', 'Intosai Development Initiative (IDI)', 'Oslo', '2018', 'n/a', '657', 'Auditing', '657 INT a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2331, 'KUPKBPK-KB-1099', 'Extractive Industries Audit', NULL, NULL, ', ', 'Intosai Development Initiative (IDI)', 'Oslo', '2013', 'n/a', '657', 'Auditing', '657 IDI e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2332, 'KUPKBPK-KB-1100', 'Audit of Public Debt Management', NULL, NULL, ', ', 'Intosai Development Initiative (IDI)', 'Oslo', '2018', 'n/a', '657', 'Auditing', '657 INT a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2333, 'KUPKBPK-KB-1101', 'Quality Assurance of IDI supported Cooperative Audits', NULL, NULL, ', ', 'Intosai Development Initiative (IDI)', 'Oslo', '2021', 'n/a', '657', 'Auditing', '657 INT q', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2334, 'KUPKBPK-KB-1102', 'GUIDANCE ON SUPREME AUDIT INSTITUTIONS� ENGAGEMENT WITH STAKEHOLDERS', NULL, NULL, ', ', 'Intosai Development Initiative (IDI)', 'Oslo', '2021', 'n/a', '657', 'Auditing', '657 INT g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2335, 'KUPKBPK-KB-1103', 'IDI�s SDGs Audit Model', NULL, NULL, ', ', 'Intosai Development Initiative (IDI)', 'Oslo', '2020', 'n/a', '657', 'Auditing', '657 INT i', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2336, 'KUPKBPK-KB-1104', 'COBIT 4.0', NULL, NULL, ', ', 'IT Governance Institute', 'Rolling Meadows', '2005', '1-933284-37-4', '005', 'Komputer- Pemrograman', '005 IT  c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2337, 'KUPKBPK-KB-1105', 'COBIT 3.0', NULL, NULL, ', ', 'IT Governance Institute', 'Rolling Meadows', '2000', '1-893209-12-1', '005', 'Komputer- Pemrograman', '005 IT  c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2338, 'KUPKBPK-KB-1106', 'IT Assurance Guide', NULL, NULL, ', ', 'IT Governance Institute', 'Rolling Meadows', '2017', '1-933284-74-9', '657', 'Auditing', '657 IT  i', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2339, 'KUPKBPK-KB-1107', 'Self-assessment Guide: Using COBIT� 5', NULL, NULL, ', ', 'ICASA', 'Rolling Meadows', '2013', '978-1-60420-266-3', '005', 'Komputer- Pemrograman', '005 ICA s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2340, 'KUPKBPK-KB-1108', 'COBIT 2019 Governance and Management Objectives', NULL, NULL, ', ', 'ICASA', 'Rolling Meadows', '2019', '978-1-60420-764-4', '005', 'Komputer- Pemrograman', '005 ICA c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2341, 'KUPKBPK-KB-1108', 'Implementation Guides\nInternational Professional\nPractices Framework\nfor The IIA�s Code of Ethics\nand the International Standards for the\nProfessional Practice of Internal Auditing', NULL, NULL, ', ', 'IIA', 'Florida', '2019', 'n/a', '657', 'Auditing', '657 IIA i', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2342, 'KUPKBPK-KB-1109', 'The IIA Style Guide', NULL, NULL, ', ', 'IIA', 'Florida', '2016', 'n/a', '657', 'Auditing', '657 IIA t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2343, 'KUPKBPK-KB-1120', 'Assessing the Risk Management Process', NULL, NULL, ', ', 'IIA', 'Florida', '2019', 'n/a', '657', 'Auditing', '657 IIA a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2344, 'KUPKBPK-KB-1121', 'Guide To Internal Audit', NULL, NULL, ', ', 'IIA', 'Florida', '2019', 'n/a', '657', 'Auditing', '657 IIA g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2345, 'KUPKBPK-KB-1121', 'Auditing Risk Culture: A practical guide', NULL, NULL, ', ', 'IIA Australia', 'Sidney', '2021', 'n/a', '657', 'Auditing', '657 IIA a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2346, 'KUPKBPK-KB-1122', 'Good Practices Internal Audit Manual Templates', NULL, NULL, ', ', 'IIA-Belgium', 'Machelen', '2012', 'n/a', '657', 'Auditing', '657 IIA g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2347, 'KUPKBPK-KB-1122', 'Internal Oversight Division', NULL, NULL, ', ', 'WIPO', 'Jenewa', '2021', 'n/a', '657', 'Auditing', '657 WIP i', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2348, 'KUPKBPK-KB-1123', 'The IIA�s Artificial Intelligence Auditing Framework', NULL, NULL, ', ', 'IIA', 'Florida', '2018', 'n/a', '657', 'Auditing', '657 IIA t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2349, 'KUPKBPK-KB-1124', 'Guide to Enterprise Risk Management', NULL, NULL, ', ', 'Protiviti', 'San Jose', '2010', 'n/a', '657', 'Auditing', '657 PRO g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2350, 'KUPKBPK-KB-1125', 'Internal Audit Manual and Charter 2020-2021', NULL, NULL, ', ', 'IPC', 'New South Wales', '2021', 'n/a', '657', 'Auditing', '657 IPC i', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2351, 'KUPKBPK-KB-1126', 'GUIDELINE FOR AUDIT OF IT ENVIRONMENT', NULL, NULL, ', ', 'EUROPEAN COURT OF AUDITORS', 'Luxemburg', '2011', 'n/a', '657', 'Auditing', '657 EUR g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2352, 'KUPKBPK-KB-1127', 'Operational guide for facility-based audit and review of paediatric mortality', NULL, NULL, ', ', 'WHO', 'Jenewa', '2018', '978-92-4-151518-4', '657', 'Auditing', '657 WHO o', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2353, 'KUPKBPK-KB-1128', 'Healthcare Audit', NULL, NULL, ', ', 'Health and Safety Executive', 'Meryeside', '2019', 'n/a', '657', 'Auditing', '657 HEA h', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2354, 'KUPKBPK-KB-1129', 'A Practical Guide To Clinical Audit', NULL, NULL, ', ', 'Health and Safety Executive', 'Meryeside', '2017', 'n/a', '657', 'Auditing', '657 HEA a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2355, 'KUPKBPK-KB-1130', 'Clinical Audit - A Manual for Lay Members\nof the Clinical Audit Team', NULL, NULL, ', ', 'HQIP', 'London', '2018', 'n/a', '657', 'Auditing', '657 MAR c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2356, 'KUPKBPK-KB-1131', 'Primary Health Care Audit Protocol', NULL, NULL, ', ', 'NZ Ministry of Health', 'Wellington', '2004', '0-478-28218-4', '657', 'Auditing', '657 NZ  p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2357, 'KUPKBPK-KB-1132', 'Principles for Best Practice in\nClinical Audit\n', NULL, NULL, ', ', 'Radcliffe Medical Press Ltd', 'Oxon', '2002', '1 85775 976 1', '657', 'Auditing', '657 RAD p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2358, 'KUPKBPK-KB-1133', 'Clinical audit: A simple\nguide for NHS Boards\n& partners', NULL, NULL, ', ', 'HQIP', 'London', '2010', '978-1-907561-01-6', '657', 'Auditing', '657 JOH c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2359, 'KUPKBPK-KB-1134', 'Technical Guide on Internal Audit of Educational Institutions', NULL, NULL, ', ', 'The Institute of Chartered Accountants of India', 'New Delhi', '2010', '978-81-8441-346-5', '657', 'Auditing', '657 THE t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2360, 'KUPKBPK-KB-1135', 'Auditing Guidelines for Education Institutions', NULL, NULL, ', ', 'INSTITUTE OF CERTIFIED PUBLIC ACCOUNTANTS OF UGANDA (ICPAU)', 'Kampala', '2014', 'n/a', '657', 'Auditing', '657 INS a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2361, 'KUPKBPK-KB-1136', 'Audits of colleges and universities', NULL, NULL, ', ', 'AICPA', 'New York', '1973', 'n/a', '657', 'Auditing', '657 DAN a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2362, 'KUPKBPK-KB-1137', 'Charter School Audit Guide', NULL, NULL, ', ', 'New York State Education Department', 'New York', '2018', 'n/a', '657', 'Auditing', '657 NEW c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2363, 'KUPKBPK-KB-1138', 'LABORATORY SAFETY AUDIT GUIDE', NULL, NULL, 'UNMC', 'UNMC', 'Nebraska', '2019', 'n/a', '657', 'Auditing', '657 UNM l', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2364, 'KUPKBPK-KB-1139', 'Quality Management Audits in Nuclear Medicine Practices', NULL, NULL, 'IAEA', 'IAEA', 'Vienna', '2015', 'n/a', '657', 'Auditing', '657 IAE q', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2365, 'KUPKBPK-KB-1140', 'Management of Operational Safety in Nuclear Power Plants', NULL, NULL, 'INTERNATIONAL ATOMIC ENERGY AGENCY', 'INTERNATIONAL ATOMIC ENERGY AGENCY', 'Vienna', '1999', '92�0�102899�7', '657', 'Auditing', '657 INT m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2366, 'KUPKBPK-KB-1141', 'Guidance on Conducting Peer Audits or Self-Audits Class II nuclear facilities and prescribed equipment', NULL, NULL, 'Canadian Nuclear Safety Commission (CNSC)', 'Canadian Nuclear Safety Commission (CNSC)', 'Otawa', '2021', 'n/a', '657', 'Auditing', '657 CAN g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2367, 'KUPKBPK-KB-1142', 'SAFETY AUDIT/ INSPECTION MANUAL', NULL, NULL, 'American Chemical Society Committee on Chemical Safety', 'American Chemical Society Committee on Chemical Safety', 'Washington', '2020', 'n/a', '657', 'Auditing', '657 AME s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2368, 'KUPKBPK-KB-1143', 'AASHTO - Internal Audit Guide', NULL, NULL, ', ', 'AASHTO', 'Washington', '2019', 'n/a', '657', 'Auditing', '657 AAS a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2369, 'KUPKBPK-KB-1144', 'UNIFORM AUDIT & ACCOUNTING GUIDE', NULL, NULL, ', ', 'AASHTO', 'Washington', '2012', 'n/a', '657', 'Auditing', '657 AAS u', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2370, 'KUPKBPK-KB-1145', 'FHWA Road Safety Audit Guidelines', NULL, NULL, ', ', 'Federal High Way Administration', 'New Jersey', '2006', 'n/a', '657', 'Auditing', '657 FED f', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2371, 'KUPKBPK-KB-1146', 'Guidelines for Road Safety Audit Practices', NULL, NULL, ', ', 'NSWGOV', 'New South Wales', '2011', '978-1-921899-62-1', '657', 'Auditing', '657 ROA g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2372, 'KUPKBPK-KB-1147', 'FACILITY AUDIT and SCORING GUIDELINES MANUAL', NULL, NULL, ', ', 'Manitoba Facility Audit', 'Manitoba', '2022', 'n/a', '657', 'Auditing', '657 MAN f', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2373, 'KUPKBPK-KB-1148', 'Port Safety Audit', NULL, NULL, ', ', 'UNDP', 'Quezon City', '2001', '971-812-006-8', '657', 'Auditing', '657 UND p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2374, 'KUPKBPK-KB-1149', 'Safety Management System Handbook for ISM Audits', NULL, NULL, ', ', 'Nippon Kaiji Kyokai', 'Tokyo', '2022', 'n/a', '657', 'Auditing', '657 NIP s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2375, 'KUPKBPK-KB-1150', 'PORT SAFETY AND HEALTH AUDIT MANUAL', NULL, NULL, ', ', 'ILO', 'Jenewa', '2005', 'n/a', '657', 'Auditing', '657 CAP p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2376, 'KUPKBPK-KB-1151', 'Fishing Audit Technique Guide', NULL, NULL, ', ', 'IRS', 'Washington', '2011', 'n/a', '657', 'Auditing', '657 IRS f', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2377, 'KUPKBPK-KB-1152', 'Auditing the sustainable management of fisheries', NULL, NULL, ', ', 'INTOSAI ', 'Vienna', '2010', 'n/a', '657', 'Auditing', '657 INT a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2378, 'KUPKBPK-KB-1153', 'Audit Guidance for Friend of the Sea Standards', NULL, NULL, ', ', 'FOS', 'Milan', '2020', 'n/a', '657', 'Auditing', '657 FOS a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2379, 'KUPKBPK-KB-1154', 'Environmental Audit and Regularity Auditing', NULL, NULL, ', ', 'INTOSAI ', 'Vienna', '2004', 'n/a', '657', 'Auditing', '657 INT e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2380, 'KUPKBPK-KB-1155', 'Environmental Audit Guidance Manual', NULL, NULL, ', ', 'Department of Environment Malaysia', 'Kuala Lumpur', '2011', 'n/a', '657', 'Auditing', '657 JAB e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2381, 'KUPKBPK-KB-1156', 'ENVIRONMENTAL AUDIT PROCESS & METHODOLOGY', NULL, NULL, ', ', 'SIZA', 'Johannesburg', '2021', 'n/a', '657', 'Auditing', '657 SIZ e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2382, 'KUPKBPK-KB-1157', 'Environmental Audit Program Design Guidelines For Federal Agencies', NULL, NULL, ', ', 'US Environmental Protection Agency', 'Washington', '2021', 'n/a', '657', 'Auditing', '657 US  e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2383, 'KUPKBPK-KB-1158', 'Access All Areas A Guide to Destination Access Audits', NULL, NULL, ', ', 'Accentuate', 'Johannesburg', '2012', 'n/a', '657', 'Auditing', '657 ACC a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2384, 'KUPKBPK-KB-1159', 'Technical Guide on Audit in Hotel Industry', NULL, NULL, ', ', 'The Institute of Chartered Accountants of India', 'New Delhi', '2011', 'n/a', '657', 'Auditing', '657 THE t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2385, 'KUPKBPK-KB-1160', 'ASEAN COMMUNITY BASED TOURISM STANDARD', NULL, NULL, ', ', 'ASEAN', 'Jakarta', '2016', '978-602-0980-77-5', '657', 'Auditing', '657 ASE a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2386, 'KUPKBPK-KB-1161', 'Technical Guide on Audit in Hotel Industry', NULL, NULL, ', ', 'The Institute of Chartered Accountants of India', 'New Delhi', '2016', 'n/a', '657', 'Auditing', '657 THE t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2387, 'KUPKBPK-KB-1162', 'Water Audit Manual', NULL, NULL, ', ', 'United Nations Human Settlements Programme', 'Nairobi', '2012', 'n/a', '657', 'Auditing', '657 UNI w', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2388, 'KUPKBPK-KB-1163', 'A practical guide to Auditing Water Safety Plans', NULL, NULL, ', ', 'WHO', 'Jenewa', '2015', 'n/a', '657', 'Auditing', '657 WHO a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2389, 'KUPKBPK-KB-1164', 'Environmental Auditing Guide', NULL, NULL, ', ', 'Office of the Auditor General of Nepal', 'Kathmandu', '2016', 'n/a', '657', 'Auditing', '657 OFF e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2390, 'KUPKBPK-KB-1165', 'ENVIRONMENTAL AUDITING GUIDE', NULL, NULL, ', ', 'MEGA', 'Dubai', '2015', 'n/a', '657', 'Auditing', '657 MEG e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2391, 'KUPKBPK-KB-1166', 'Quality Assurance Handbook for Air Pollution Measurement Systems Volume 2', NULL, NULL, ', ', 'US Environmental Protection Agency', 'Washington', NULL, 'n/a', '657', 'Auditing', '657 US  q', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2392, 'KUPKBPK-KB-1167', 'Quality Assurance Handbook for Air Pollution Measurement Systems Volume 1', NULL, NULL, ', ', 'US Environmental Protection Agency', 'Washington', '2017', 'n/a', '657', 'Auditing', '657 US  q', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2393, 'KUPKBPK-KB-1168', 'National Regulatory Food Safety Auditor Guideline', NULL, NULL, ', ', 'ISFR', 'Sidney', '2009', 'n/a', '657', 'Auditing', '657 DR  n', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2394, 'KUPKBPK-KB-1169', 'Guidelines on Retail Food Safety Audit ', NULL, NULL, ', ', 'Directorate Marketing DEPARTMENT OF AGRICULTURE, FORESTRY AND FISHERIES', 'Pretoria', '2012', 'n/a', '657', 'Auditing', '657 DIR g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2395, 'KUPKBPK-KB-1170', 'National Standard Medication Chart (NSMC) Audit Guide', NULL, NULL, ', ', 'Australian Commission on Safety and Quality in Health Care', 'Sidney', '2018', 'n/a', '657', 'Auditing', '657 AUS n', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2396, 'KUPKBPK-KB-1171', 'Medication Reconciliation Audit Tool Guidelines', NULL, NULL, ', ', 'GoWA - Departement of Health', 'Perth', '2020', 'n/a', '657', 'Auditing', '657 GOW m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2397, 'KUPKBPK-KB-1172', 'Guide to the Health Information and Quality Authority�s Medication Safety Monitoring Programme in Public Acute Hospitals', NULL, NULL, ', ', 'HIQA', 'Cork', '2016', 'n/a', '657', 'Auditing', '657 HIQ g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2398, 'KUPKBPK-KB-1173', 'Medicine Safety', NULL, NULL, ', ', 'Ministry of Health Sinngapore', 'Singapore', '2016', 'n/a', '657', 'Auditing', '657 MIN m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2399, 'KUPKBPK-KB-1174', 'Energy Audit Handbook', NULL, NULL, ', ', 'SEAI', 'Dublin', '2017', 'n/a', '657', 'Auditing', '657 SEA e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2400, 'KUPKBPK-KB-1175', 'ENERGY AUDIT GUIDE', NULL, NULL, ', ', 'CENTRE FOR RENEWABLE ENERGY SOURCES', 'Athens', '2004', 'n/a', '657', 'Auditing', '657 CEN e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2401, 'KUPKBPK-KB-1176', 'Guidelines on Social Audit', NULL, NULL, ', ', 'Ministry of Housing India', 'New Delhi', '2022', 'n/a', '657', 'Auditing', '657 MIN g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2402, 'KUPKBPK-KB-1177', 'Good Practices in Supporting Supreme Audit Institutions', NULL, NULL, ', ', 'OECD', 'Paris', '2011', 'n/a', '657', 'Auditing', '657 OEC g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2403, 'KUPKBPK-KB-1178', 'Urban Audit', NULL, NULL, ', ', 'European Commision', 'Brussels', '2004', '92-894-7079-8', '657', 'Auditing', '657 EUR u', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2404, 'KUPKBPK-KB-1179', 'Guidelines for Annual Audit of Global Fund Grants', NULL, NULL, ', ', 'The Global Fund', 'Jenewa', '2019', 'n/a', '657', 'Auditing', '657 THE g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2405, 'KUPKBPK-KB-1180', 'Nonresident Audit Guidelines', NULL, NULL, ', ', 'Income Franchise Field Audit Bureau', 'New York', '2014', 'n/a', '657', 'Auditing', '657 INC n', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2406, 'KUPKBPK-KB-1181', 'PERFORMANCE ACCOUNTABILITY AND COMBATING CORRUPTION', NULL, NULL, ', ', 'The World Bank', 'Washington', '2007', '0-8213-6941-5', '657', 'Auditing', '657 ANW p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2407, 'KUPKBPK-KB-1182', 'Auditing Mining: Guidance for Supreme Audit Institutions', NULL, NULL, ', ', 'INTOSAI', 'Vienna', '2010', '978-9949-9055-8-4', '657', 'Auditing', '657 INT a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2408, 'KUPKBPK-KB-1183', 'Practice Guide to Auditing Mining Revenues and Financial Assurances for Site Remediation', NULL, NULL, ', ', 'Canadian Audit and Accountability Foundation', 'Otawa', '2017', 'n/a', '657', 'Auditing', '657 CAN p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2409, 'KUPKBPK-KB-1184', 'ENVIRONMENTAL AUDITING ON MINING AND MINERALS', NULL, NULL, ', ', 'INTOSAI', 'Vienna', '2010', 'n/a', '657', 'Auditing', '657 INT e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2410, 'KUPKBPK-KB-1185', 'GUIDANCE NOTE ON INTERNAL AUDIT OF Mining and Metallurgical Industry', NULL, NULL, ', ', 'Institute of Cost Accountants of India', 'New Delhi', '2014', 'n/a', '657', 'Auditing', '657 INS g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2411, 'KUPKBPK-KB-1186', 'Auditing Forests: Guidance for Supreme Audit Institutions', NULL, NULL, ', ', 'INTOSAI', 'Vienna', '2010', '978-9949-9055-4-6', '657', 'Auditing', '657 INT a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2412, 'KUPKBPK-KB-1187', 'What to Expect During A Board Compliance Audit', NULL, NULL, ', ', 'Forest Practice Board', 'Victoria', '2014', 'n/a', '657', 'Auditing', '657 FOR w', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2413, 'KUPKBPK-KB-1188', 'Hardwood Timber Industry Audit Technique Guide', NULL, NULL, ', ', 'IRS', 'Washington', '2012', 'n/a', '657', 'Auditing', '657 IRS h', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2414, 'KUPKBPK-KB-1189', 'ISMS Auditing Guideline', NULL, NULL, ', ', 'ISO27k T', 'Jenewa', '2017', 'n/a', '657', 'Auditing', '657 ISO i', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2415, 'KUPKBPK-KB-1190', 'Digital Financial Services security audit guideline', NULL, NULL, ', ', 'FIGI', 'Chippewa Falls', '2021', 'n/a', '657', 'Auditing', '657 FIG d', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27');
INSERT INTO `books` (`id`, `book_number`, `book_title`, `book_firstname`, `book_lastname`, `book_author`, `book_publisher`, `book_city`, `book_year`, `book_isbn`, `book_class`, `book_subject`, `book_classcode`, `book_acq`, `book_location`, `book_nup`, `book_brand`, `book_image`, `book_createdby`, `book_updatedby`, `book_isavailable`, `created_at`, `updated_at`) VALUES
(2416, 'KUPKBPK-KB-1191', 'A PRACTICAL GUIDE TO SOCIAL AUDIT AS A PARTICIPATORY TOOL TO STRENGTHEN DEMOCRATIC GOVERNANCE, TRANSPARENCY, AND ACCOUNTABILITY', NULL, NULL, ', ', 'UNDP', 'New York', '2011', 'n/a', '657', 'Auditing', '657 GER a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2417, 'KUPKBPK-KB-1192', 'Claims Compliance Audit Guide', NULL, NULL, ', ', 'Colorado Departement of Labor and Employment', 'Colorado', '2017', 'n/a', '657', 'Auditing', '657 COL c', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2418, 'KUPKBPK-KB-1193', 'Green Infrastructure Audit', NULL, NULL, ', ', 'Victoria', 'London', '2011', 'n/a', '657', 'Auditing', '657 VIC g', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2419, 'KUPKBPK-KB-1194', '4 Aplikasi Penjualan dengan Visual FoxPro 9.0', 'Mulya', 'Hadi', 'Hadi, Mulya', 'Maxikom', 'Palembang', '2007', '979-3767-85-5', '005', 'Komputer- Pemrograman', '005 MUL 4', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2420, 'KUPKBPK-KB-1195', 'Z80 ASSEMBLY LANGUAGE PROGRAMING', 'Lance A', 'Leventhal', 'Leventhal, Lance A', 'McGraw-Hill', 'Singapore', '1979', '0-07-099128-6', '005', 'Komputer- Pemrograman', '005 LAN z', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2421, 'KUPKBPK-KB-1196', 'Pemrograman C dan Implementasinya', 'I Made', 'Joni', 'Joni, I Made', 'Informatika Bandung', 'Bandung', '2006', '979-3338-85-7', '005', 'Komputer- Pemrograman', '005 I M p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2422, 'KUPKBPK-KB-1197', 'Trik Pemrograman Jaringan dengan Visual Basic 6', 'VygoryViva', 'CR', 'CR, VygoryViva', 'GAVA MEDIA', 'Yogyakarta', '2008', '978-979-1078-35-1', '005', 'Komputer- Pemrograman', '005 VYG t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2423, 'KUPKBPK-KB-1198', 'Panduan Aplikasi Komputer Akuntansi Dengan Myob Accounting V.10.5', 'Bambang', 'Purnomosidhi', 'Purnomosidhi, Bambang', 'Badan Penerbit Fakultas Ekonomi Universitas Brawijaya', 'Malang', '2006', '979-25-7500-6', '657', 'Akuntansi', '657 DR. p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2424, 'KUPKBPK-KB-1199', 'Mengupas Tuntas MYOB Accounting Multicurrency', 'Johar', 'Arifin', 'Arifin, Johar', 'Elex Media Komputindo', 'Jakarta', '2001', '979-20-2517-0', '657', 'Akuntansi', '657 JOH m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2425, 'KUPKBPK-KB-1200', 'Elektronika Dasar dan Peripheral Komputer', 'Sugiri', NULL, 'Sugiri', 'Penerbit Andi', 'Yogyakarta', '2004', '979-731-473-1', '005', 'Komputer- Pemrograman', '005 SUG e', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2426, 'KUPKBPK-KB-1201', 'Belajar Sendiri Cisco DSL Router, ASA Firewall dan VPN', 'Hendra', 'Wijaya', 'Wijaya, Hendra', 'Elex Media Komputindo', 'Jakarta', '2011', '978-602-00-1075-5', '005', 'Komputer- Pemrograman', '005 IR. b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2427, 'KUPKBPK-KB-1202', 'Refrensi Coding pemrograman Web HTML, ASP, PHP tingkat Dasar', 'Budhi', 'Kristianto', 'Kristianto, Budhi', 'PD. Anindya', 'Yogyakarta', '2005', '979-3789-28-X', '005', 'Komputer- Pemrograman', '005 BUD r', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2428, 'KUPKBPK-KB-1203', 'Macromedia Dreamweaver MX', 'Vita', 'Prihatoni P', 'Prihatoni P, Vita', 'Dian Rakyat', 'Jakarta', '2005', '979-523-709-8', '005', 'Komputer- Pemrograman', '005 VIT m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2429, 'KUPKBPK-KB-1204', 'Membuat Robot Cerdas, Panduan Utama Untuk mengikuri Kontes Robot', 'Widodo', 'Budiharto', 'Budiharto, Widodo', 'Elex Media Komputindo', 'Jakarta', '2006', '979-20-9178-5', '005', 'Komputer- Pemrograman', '005 WID m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2430, 'KUPKBPK-KB-1205', 'Belajar dengan mudah dan cepat pemrograman Bahasa C dengan SDCC (Small Device C Compiler) Pada Mikrokontroler AT89X051 /AT89C51/52', 'Totok', 'Budioko', 'Budioko, Totok', 'Penerbit Gava media', 'Yogyakarta', '2005', '979-3469-59-5', '005', 'Komputer- Pemrograman', '005 TOT b', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2431, 'KUPKBPK-KB-1206', 'Membuat Lima Program Dahsyat di Visual Basic 6.0', 'Wardana', NULL, 'Wardana', 'Elex Media Komputindo', 'Jakarta', '2005', '979-20-7-7484-8', '005', 'Komputer- Pemrograman', '005 WAR m', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2432, 'KUPKBPK-KB-1207', 'Aneka Tool Penyelamat Data Komputer', 'Wahana', 'Komputer', 'Komputer, Wahana', 'Penerbit Andi', 'Yogyakarta', '2011', '978-979-29-2521-0', '005', 'Komputer- Pemrograman', '005 WAH a', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2433, 'KUPKBPK-KB-1208', 'Suka Duka 28 Tahun Mengabdi Bersama Jenderal Besar AH Nasution', 'Bakri', NULL, ', Bakri', 'Republika', 'Jakarta', '2010', '978-979-1102-94-0', '920', 'Biografi', '920 BAK s', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2434, 'KUPKBPK-KB-1209', 'Pers Indonesia di Mata Saya', 'Erick', 'Thohir', 'Thohir, Erick', 'Republika', 'Jakarta', '2011', '978-602-8997-17-1', '659.2', 'Public Relations', '659.2 ERI p', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2435, 'KUPKBPK-KB-1210', 'Transportasi Multimoda, Sebuah Pemodelan Kebutuhan Transportasi Multimoda', 'M. Djaya', 'Bakri', 'Bakri, M. Djaya', 'Intimedia', 'Malang', '2016', '978-602-1507-51-3', '620', 'Ilmu Teknik', '620 M.  t', 'Hibah', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2436, 'KUPKBPK-KB-PK I', 'IHPS II Tahun 2017 ', NULL, NULL, 'BPK ', 'BPK RI', 'Jakarta', '2016', NULL, '336', 'Keuangan Negara', '336 BPK i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2437, 'KUPKBPK-KB-PK P', 'Petunjuk TeknisPenetapan Kriteria Pemeriksaan Kinerja', NULL, NULL, 'BPK, Direktorat Litbang', 'BPK RI', 'Jakarta', '2011', NULL, '336', 'Keuangan Negara', '336 BPK p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2438, 'KUPKBPK-KB-1211', 'Markas Cahaya ', 'Salman', 'Al-Jugjawi', 'Al-Jugjawi,Salman', 'Penerbit Bunyan', 'Yogyakarta', '2016', '9786020000000', '297', 'Islam', '297 AL m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2439, 'KUPKBPK-KB-1212', 'Ayat Ayat Cinta', 'Habiburrahman', 'El- Shirazy', 'El- Shirazy,Habiburrahman', 'Republika', 'Jakarta', '2007', '9793604026', '297', 'Islam', '297 EL a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2440, 'KUPKBPK-KB-1213', 'The road to Character : Karakter yang menentukan kesuksesan ', 'David', 'Brooks', 'Brooks,David', 'Gramedia Pustaka Utama', 'Jakarta', '2020', '9786020000000', '658.3', 'Manajemen SDM', '658.3 BRO t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2441, 'KUPKBPK-KB-1214', '99 Cahaya dilangit Eropa (edisi komik)', 'Hanum Salsabiela', 'Rais', 'Rais,Hanum Salsabiela', 'Maleo creative', 'Jakarta', '2014', '-', '297', 'Islam', '297 RAI 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2442, 'KUPKBPK-KB-1215', '99 Cahaya dilangit Eropa Part 2 (edisi komik)', 'Hanum Salsabiela', 'Rais', 'Rais,Hanum Salsabiela', 'Maleo creative', 'Jakarta', '2014', '-', '297', 'Islam', '297 RAI 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:27', '2023-01-04 09:22:27'),
(2443, 'KUPKBPK-KB-1216', 'Kebijakan Bank Sentral Teori dan Praktik', 'Perry', 'Warjiyo', 'Warjiyo,Perry', 'Rajawali press', 'Depok', '2019', '9786020000000', '332', 'Bank', '332 WAR k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-04 09:22:28', '2023-01-09 04:51:53'),
(2444, 'KUPKBPK-KB-1217', 'Himpunan Peraturan tentang Bantuan Keuangan kepada Partai Politik', NULL, NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2015', NULL, '336', 'keuangan daerah', '336 BPK h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2445, 'KUPKBPK-KB-1218', 'Biografi Gus Dur', 'Grek', 'Barton', 'Barton,Grek', 'Lkis Yogyakarta', 'Yogyakarta', '2020', '9786240000000', '920', 'Biografi', '920 BAR b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-01-04 09:22:28', '2023-01-09 04:51:53'),
(2446, 'KUPKBPK-KB-1219', 'Hujan', 'Tere', 'Liye', 'Liye,Tere', 'Gramedia Pustaka Utama', 'Jakarta', '2016', '9786020000000', '813', 'Fiksi', '813 LIY h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2447, 'KUPKBPK-KB-1220', 'The Life Changing Magic Of Tidying Up', 'Marie', 'Kondo', 'Kondo, Marie', 'Bentang Pustaka', 'Yogyakarta', '2019', '9786022912446', '658.3', 'Manajemen SDM', '658.3 KON t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2448, 'KUPKBPK-KB-1221', 'Audit Guidelines', NULL, 'IT Governance Institute', 'IT Governance Institute', 'Cobit Steering Committe and the IT Governance Institute', 'USA', '2000', '1 893209 18 0', '657', 'Auditing', '657 IT  a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-09 07:48:15'),
(2449, 'KUPKBPK-KB-1222', 'Governance and Management Objectives', NULL, 'ISACA', 'ISACA', 'ISACA', 'Schaumburg', '2018', '9781600000000', '658', 'Manajemen', '658 ISA g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2450, 'KUPKBPK-KB-1223', 'Practice Guidelines & Tools', NULL, NULL, ',', 'Ministry of Health Singapore', 'Singapore', '2006', NULL, NULL, 'Auditing', ' , p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2451, 'KUPKBPK-KB-1224', 'Zero corruption 100% development', NULL, NULL, ',', 'SAI Fighting Corruption Programme', NULL, NULL, NULL, '364', 'Korupsi', '364 , z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2452, 'KUPKBPK-KB-1225', 'Environmental Auditing Guide', NULL, NULL, ',', 'Middle East Gases Association (Mega)', NULL, NULL, NULL, '657', 'Auditing', '657 , e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2453, 'KUPKBPK-KB-1226', 'Medication Reconciliation Audit Tool Guidelines', NULL, NULL, ',', 'Department of Health', NULL, '2020', NULL, '657', 'Auditing', '657 , m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2454, 'KUPKBPK-KB-1227', 'Auditing Mining: Guidance for Supreme Audit Instituitions', NULL, NULL, ',', 'INTOSAI Working Group an Enviromental Auditing', NULL, '2010', NULL, '657', 'Auditing', '657 , a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2455, 'KUPKBPK-KB-1228', 'Hukum Perbatasan Indonesia', 'Yahya Ahmad', 'Zein', 'Zein,Yahya Ahmad', 'Thafa Media', 'Yogyakarta', '2022', '9786025589652', '364', 'Hukum', '364 ZEI h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2456, 'KUPKBPK-KB-1229', 'Yuk Belajar Nabung Saham', 'Ryan', 'Filbert', 'Filbert,Ryan', 'Elex Media Komputindo', 'Jakarta', '2017', '9786020445779', '332', 'Inventasi', '332 FIL y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2457, 'KUPKBPK-KB-1230', 'Ikhtisar Hasil Pemeriksaan I Tahun 2022', 'BPK RI', NULL, 'BPK RI', 'BPK RI', 'Jakarta', '2022', '9786020445779', '336', 'Keuangan Negara', '336 BPK i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2458, 'KUPKBPK-KB-1231', 'Standar Akuntansi Keuangan Bagian A Efektif per 1 Januari 2022', NULL, 'IAI', 'IAI', 'Ikatan Akuntan Indonesia', 'Jakarta', '2022', '9789800000000', '657', 'Akuntansi', '657 IAI s', 'Hibah', 'Koleksi Khusus (Reading Corner)', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2459, 'KUPKBPK-KB-1232', 'Standar Akuntansi Keuangan Bagian B Efektif per 1 Januari 2022', NULL, 'IAI', 'IAI', 'Ikatan Akuntan Indonesia', 'Jakarta', '2022', '9789800000000', '657', 'Akuntansi', '657 IAI s', 'Hibah', 'Koleksi Khusus (Reading Corner)', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2460, 'KUPKBPK-KB-1233', 'Standar Akuntansi Keuangan Efektif per 1 Januari 2023 dan setelahnya', NULL, 'IAI', 'IAI', 'Ikatan Akuntan Indonesia', 'Jakarta', '2022', '9789800000000', '657', 'Akuntansi', '657 IAI s', 'Hibah', 'Koleksi Khusus (Reading Corner)', NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2461, 'KUPKBPK-KB-1234', 'Antologi Puisi Penyair Nusantara Jakarta dan Betawi', 'Tuti Tarwiyah', 'Adi', 'Adi,Tuti Tarwiyah', 'Perkumpulan Rumah Seni Astur', 'Jakarta', '2017', '9786020000000', '300', 'Sosial', '300 ADI a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2462, 'KUPKBPK-KB-1235', 'Kumonikasi Ilmiah', 'Wahid', 'Nashihuddin', 'Nashihuddin,Wahid', 'SISIPII PRESS', 'Jakarta', '2020', '9786240000000', '659.2', 'Public Relations', '659.2 NAS k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2463, 'KUPKBPK-KB-1236', 'Pengelolaan Dana Desa', 'Muhammad Mu\'iz', 'Raharjo', 'Raharjo,Muhammad Mu\'iz', 'Bumi Aksara', 'Jakarta', '2020', '9786020000000', '320', 'Kebijakan Publik', '320 RAH p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2464, 'KUPKBPK-KB-1237', 'Politik dan Akuntansi Keperilakuan', 'Ardeno', 'Kurniawan', 'Kurniawan,Ardeno', 'Penerbit Andi', 'Yogyakarta', '2021', '9786230000000', '332', 'Inventasi', '332 KUR p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2465, 'KUPKBPK-KB-1238', '1001 Nasihat simbah', 'Wahyu', 'Priyono', 'Priyono,Wahyu', 'Magneta Cita Utama', 'Bogor', '2021', '9786030000000', '300', 'Sosial', '300 PRI 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2466, 'KUPKBPK-KB-1239', '1001 Nasihat simbah', 'Wahyu', 'Priyono', 'Priyono,Wahyu', 'Magneta Cita Utama', 'Bogor', '2021', '9786030000000', '300', 'Sosial', '300 PRI 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2467, 'KUPKBPK-KB-1240', 'Meniti Maturitas Mengawal Akuntabilitas', 'Hery', 'Subowo', 'Subowo,Hery', 'Sabisabu', 'Yogyakarta', '2021', '978623000000', '657', 'Auditing', '657 SUB m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2468, 'KUPKBPK-KB-1241', 'Kolaborasi Riset Pustakawan', 'Wahid', 'Nashihuddin', 'Nashihuddin,Wahid', 'Isipii', 'Jakarta', '2021', '9786240000000', '658', 'Manajemen', '658 NAS k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2469, 'KUPKBPK-KB-1242', 'Audit Itu Gampang', 'Karyadi', NULL, 'Karyadi', 'Bhuana Ilmu Komputer', 'Jakarta', '2021', '9786230000000', '657', 'Auditing', '657 KAR a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28'),
(2470, 'KUPKBPK-KB-1243', 'Kemas Ulang Informasi', 'Wahid', 'Nashihuddin', 'Nashihuddin,Wahid', 'isipii', 'Jakarta', '2021', '9786240000000', '658', 'Manajemen', '658 NAS k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-01-04 09:22:28', '2023-01-04 09:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `books_transaction`
--

CREATE TABLE `books_transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_harus_kembali` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books_transaction`
--

INSERT INTO `books_transaction` (`id`, `id_pegawai`, `id_buku`, `tanggal_peminjaman`, `tanggal_harus_kembali`, `tanggal_pengembalian`, `denda`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 113, 2443, '1970-10-26', NULL, NULL, NULL, 1, 1, '2023-01-09 04:51:53', '2023-01-09 04:51:53'),
(2, 113, 2445, '1970-10-26', NULL, NULL, NULL, 2, 1, '2023-01-09 04:51:53', '2023-01-09 07:11:12'),
(3, 113, 2448, '1970-10-26', NULL, '2023-01-09', NULL, 4, 1, '2023-01-09 04:51:53', '2023-01-09 07:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory_nup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventory_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventory_createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventory_updatedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventory_isborrowed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `inventory_name`, `inventory_description`, `inventory_condition`, `inventory_nup`, `inventory_brand`, `inventory_image`, `inventory_createdby`, `inventory_updatedby`, `inventory_isborrowed`, `created_at`, `updated_at`) VALUES
(1, 'asperiores', 'vitae', 'baik', '74900768', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:27', '2022-11-02 02:30:25'),
(2, 'suscipit', 'cumque', 'baik', '65788201', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(3, 'voluptatum', 'ex', 'baik', '52293076', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(4, 'deleniti', 'totam', 'rusak', '72313111', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(5, 'sunt', 'praesentium', 'rusak', '53805302', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(6, 'aut', 'consequatur', 'baik', '86322502', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(7, 'nemo', 'perspiciatis', 'baik', '88098834', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(8, 'non', 'quisquam', 'baik', '52063055', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 02:30:25'),
(9, 'occaecati', 'ab', 'rusak', '85402437', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(10, 'quo', 'voluptas', 'baik', '54283876', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(11, 'sunt', 'adipisci', 'rusak', '79241725', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(12, 'magni', 'et', 'baik', '92122022', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 02:30:25'),
(13, 'aut', 'unde', 'baik', '98209862', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(14, 'placeat', 'aut', 'baik', '88672088', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 02:30:25'),
(15, 'deleniti', 'est', 'rusak', '37791062', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(16, 'veniam', 'iusto', 'rusak', '33661115', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 01:57:28'),
(17, 'aliquam', 'quia', 'baik', '87016245', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:28', '2022-11-02 02:30:25'),
(18, 'est', 'amet', 'rusak', '55553221', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(19, 'quasi', 'ipsam', 'rusak', '20908048', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(20, 'qui', 'amet', 'baik', '94079476', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 02:30:25'),
(21, 'asperiores', 'et', 'rusak', '97651320', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(22, 'nam', 'suscipit', 'rusak', '83501959', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(23, 'ducimus', 'veritatis', 'baik', '21193045', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(24, 'ea', 'consequatur', 'baik', '72666457', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 02:30:25'),
(25, 'nisi', 'qui', 'rusak', '80354315', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(26, 'sapiente', 'accusantium', 'rusak', '56295080', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(27, 'cupiditate', 'voluptas', 'baik', '25748608', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(28, 'rerum', 'sed', 'baik', '71314323', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 02:30:25'),
(29, 'ut', 'et', 'rusak', '82985154', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(30, 'voluptatem', 'a', 'baik', '93108152', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 02:30:25'),
(31, 'voluptatem', 'doloribus', 'baik', '36998396', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:29', '2022-11-02 01:57:29'),
(32, 'magni', 'quas', 'rusak', '44021469', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(33, 'et', 'quas', 'rusak', '98721987', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(34, 'voluptas', 'velit', 'rusak', '21690061', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(35, 'quia', 'tenetur', 'baik', '32832706', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(36, 'facere', 'et', 'rusak', '19273917', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(37, 'ipsam', 'nihil', 'rusak', '13525183', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(38, 'voluptatem', 'nostrum', 'baik', '45599351', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(39, 'non', 'ullam', 'rusak', '35376939', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(40, 'dolorem', 'quaerat', 'rusak', '26531349', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(41, 'est', 'odio', 'baik', '35019004', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(42, 'iure', 'veniam', 'rusak', '95870909', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(43, 'in', 'tenetur', 'rusak', '13393934', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(44, 'est', 'nisi', 'baik', '81825738', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(45, 'voluptatem', 'ipsum', 'baik', '39615609', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:30', '2022-11-02 02:30:25'),
(46, 'ut', 'exercitationem', 'baik', '47243930', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(47, 'explicabo', 'ut', 'rusak', '66018279', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(48, 'recusandae', 'quis', 'rusak', '19041429', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(49, 'sed', 'sit', 'baik', '89206421', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:30', '2022-11-02 01:57:30'),
(50, 'molestiae', 'consequatur', 'baik', '41487252', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(51, 'sint', 'vitae', 'rusak', '18226545', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(52, 'et', 'blanditiis', 'baik', '11595985', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(53, 'blanditiis', 'ipsam', 'baik', '41751144', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(54, 'et', 'voluptatem', 'rusak', '82602090', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(55, 'sed', 'ut', 'rusak', '69821857', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(56, 'velit', 'tenetur', 'rusak', '95364894', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(57, 'tempora', 'ut', 'baik', '24992235', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(58, 'asperiores', 'pariatur', 'baik', '26970985', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(59, 'repellat', 'amet', 'rusak', '78882203', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(60, 'assumenda', 'a', 'rusak', '15693984', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(61, 'consequatur', 'autem', 'rusak', '42899688', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:31', '2022-11-02 01:57:31'),
(62, 'sint', 'aperiam', 'baik', '41397738', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(63, 'illo', 'dolore', 'baik', '42106910', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(64, 'est', 'ut', 'rusak', '53863437', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(65, 'aut', 'eveniet', 'rusak', '37541840', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(66, 'ab', 'aut', 'rusak', '33346537', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(67, 'aut', 'ad', 'baik', '32604887', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(68, 'aut', 'qui', 'baik', '98210501', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(69, 'quos', 'ullam', 'baik', '12998213', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(70, 'maiores', 'totam', 'baik', '60930825', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(71, 'tempora', 'consequatur', 'rusak', '96247496', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(72, 'omnis', 'numquam', 'rusak', '26158623', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(73, 'et', 'illum', 'rusak', '68640209', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(74, 'pariatur', 'voluptatem', 'rusak', '77030311', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(75, 'quae', 'sed', 'rusak', '28576379', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(76, 'dolorem', 'sequi', 'rusak', '72774324', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(77, 'doloribus', 'excepturi', 'rusak', '98943714', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(78, 'ipsam', 'esse', 'baik', '66393073', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(79, 'voluptatem', 'explicabo', 'baik', '63091603', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(80, 'quisquam', 'nihil', 'rusak', '34820737', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(81, 'saepe', 'aperiam', 'rusak', '38342378', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:32', '2022-11-02 01:57:32'),
(82, 'quidem', 'quae', 'rusak', '73477791', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(83, 'voluptatem', 'dolorum', 'baik', '21564391', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(84, 'fugit', 'enim', 'baik', '38662618', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(85, 'sed', 'distinctio', 'baik', '83662788', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(86, 'fugit', 'eius', 'rusak', '86556571', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(87, 'quia', 'voluptas', 'baik', '83174681', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(88, 'nihil', 'sint', 'rusak', '20077986', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(89, 'sed', 'voluptatem', 'baik', '44318303', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(90, 'temporibus', 'ipsa', 'rusak', '87297221', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(91, 'qui', 'est', 'rusak', '80651569', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(92, 'ut', 'vel', 'baik', '45664585', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(93, 'sed', 'omnis', 'rusak', '18727625', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(94, 'sint', 'sed', 'baik', '59062383', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(95, 'et', 'nihil', 'baik', '25263070', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(96, 'accusamus', 'aut', 'rusak', '62995006', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(97, 'quia', 'quisquam', 'rusak', '66778723', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(98, 'quasi', 'rerum', 'baik', '52488451', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(99, 'id', 'et', 'rusak', '17900372', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(100, 'eligendi', 'enim', 'rusak', '33005247', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(101, 'a', 'quasi', 'baik', '83800093', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(102, 'modi', 'autem', 'baik', '71385835', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(103, 'laudantium', 'eveniet', 'rusak', '31328692', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:33', '2022-11-02 01:57:33'),
(104, 'dolor', 'distinctio', 'rusak', '96105410', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(105, 'alias', 'aut', 'rusak', '42233682', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(106, 'in', 'sequi', 'baik', '33944387', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(107, 'est', 'saepe', 'baik', '88051515', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(108, 'ab', 'quaerat', 'baik', '79313654', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(109, 'odit', 'id', 'rusak', '66670168', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(110, 'illum', 'eum', 'rusak', '54892166', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(111, 'deleniti', 'soluta', 'baik', '84362626', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(112, 'et', 'voluptatem', 'rusak', '46275237', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(113, 'quia', 'et', 'rusak', '14585305', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(114, 'dolorum', 'quia', 'baik', '94035257', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(115, 'sint', 'exercitationem', 'baik', '70080706', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(116, 'sit', 'qui', 'baik', '77596410', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(117, 'quasi', 'sit', 'baik', '89157992', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(118, 'praesentium', 'ea', 'rusak', '21804975', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:34', '2022-11-02 01:57:34'),
(119, 'deleniti', 'repellat', 'rusak', '42366668', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(120, 'consequuntur', 'optio', 'baik', '29263224', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(121, 'dicta', 'neque', 'baik', '32621757', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(122, 'veniam', 'accusantium', 'rusak', '85794355', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(123, 'et', 'facere', 'baik', '50682100', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(124, 'quaerat', 'ipsum', 'baik', '24679029', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(125, 'reprehenderit', 'provident', 'baik', '43436349', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(126, 'id', 'libero', 'rusak', '24482479', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(127, 'aut', 'illum', 'baik', '35349602', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(128, 'qui', 'adipisci', 'baik', '81833968', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(129, 'quae', 'at', 'baik', '84932280', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(130, 'officiis', 'quidem', 'baik', '86085293', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(131, 'non', 'laborum', 'rusak', '20113472', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(132, 'qui', 'ullam', 'rusak', '96904789', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(133, 'modi', 'officia', 'baik', '26414022', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(134, 'omnis', 'autem', 'rusak', '48504019', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(135, 'optio', 'provident', 'baik', '57275770', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(136, 'dolor', 'sapiente', 'baik', '40055467', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(137, 'eos', 'nam', 'rusak', '72449087', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(138, 'aperiam', 'minus', 'baik', '20006467', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(139, 'quibusdam', 'dolorem', 'baik', '63192676', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(140, 'eos', 'non', 'baik', '22425332', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:35', '2022-11-02 01:57:35'),
(141, 'tempore', 'deleniti', 'rusak', '54000638', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(142, 'sit', 'vel', 'rusak', '81787963', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(143, 'id', 'minima', 'baik', '50912491', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(144, 'sint', 'aperiam', 'baik', '15349718', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(145, 'veniam', 'corporis', 'baik', '15775712', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(146, 'nemo', 'ratione', 'rusak', '40831702', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(147, 'et', 'eos', 'rusak', '89199064', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(148, 'incidunt', 'asperiores', 'rusak', '53801445', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(149, 'nihil', 'eos', 'baik', '43191540', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(150, 'veritatis', 'praesentium', 'rusak', '14116114', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(151, 'sunt', 'qui', 'baik', '97037932', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(152, 'voluptatibus', 'laborum', 'rusak', '71901127', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(153, 'libero', 'dolores', 'baik', '51501489', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(154, 'aut', 'asperiores', 'rusak', '44990728', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(155, 'veniam', 'praesentium', 'baik', '85387075', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(156, 'alias', 'earum', 'baik', '79815359', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(157, 'officia', 'est', 'baik', '19360182', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(158, 'similique', 'qui', 'rusak', '17235394', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(159, 'ea', 'beatae', 'baik', '59792460', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(160, 'voluptate', 'reiciendis', 'rusak', '11556022', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(161, 'non', 'blanditiis', 'rusak', '15322140', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:36', '2022-11-02 01:57:36'),
(162, 'eos', 'quis', 'rusak', '11858891', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(163, 'in', 'iusto', 'baik', '61650277', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(164, 'facere', 'at', 'baik', '44911860', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(165, 'mollitia', 'laborum', 'rusak', '47557181', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(166, 'culpa', 'incidunt', 'rusak', '28062115', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(167, 'dolorem', 'est', 'baik', '37210766', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(168, 'dolor', 'qui', 'baik', '97431049', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(169, 'sed', 'impedit', 'rusak', '43941934', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(170, 'rerum', 'rem', 'baik', '17130225', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(171, 'perferendis', 'qui', 'baik', '67640955', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(172, 'error', 'rem', 'baik', '85972185', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(173, 'aut', 'ut', 'rusak', '90663901', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(174, 'sunt', 'eos', 'baik', '66388844', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(175, 'possimus', 'recusandae', 'baik', '84015616', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(176, 'sed', 'quod', 'baik', '30538757', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(177, 'similique', 'dignissimos', 'rusak', '37732538', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(178, 'ratione', 'velit', 'rusak', '60683281', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(179, 'et', 'reprehenderit', 'rusak', '50880393', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(180, 'est', 'et', 'baik', '23415753', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(181, 'et', 'occaecati', 'baik', '47072746', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(182, 'tenetur', 'est', 'baik', '55928465', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:37', '2022-11-02 01:57:37'),
(183, 'ad', 'consequuntur', 'Baik', '55873343', 'HP', NULL, NULL, '1', 0, '2022-11-02 01:57:38', '2022-11-02 05:30:50'),
(184, 'reprehenderit', 'sed', 'rusak', '94566893', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(185, 'omnis', 'perspiciatis', 'baik', '36146685', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(186, 'dolorem', 'assumenda', 'rusak', '24050149', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(187, 'aliquam', 'ipsum', 'baik', '94456508', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(188, 'et', 'exercitationem', 'rusak', '42048887', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(189, 'modi', 'aut', 'baik', '34016653', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(190, 'accusantium', 'facere', 'baik', '35580516', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(191, 'temporibus', 'nesciunt', 'rusak', '58801880', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(192, 'unde', 'cumque', 'baik', '41324328', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(193, 'molestiae', 'sed', 'rusak', '36653867', 'HP', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(194, 'facilis', 'nihil', 'baik', '25475540', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(195, 'et', 'ex', 'baik', '53407707', 'fujitsu', NULL, NULL, NULL, 1, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(196, 'consequuntur', 'omnis', 'baik', '33583706', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(197, 'possimus', 'mollitia', 'rusak', '51619370', 'fujitsu', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(198, 'quis', 'ratione', 'baik', '55198376', 'epson', NULL, NULL, NULL, 0, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(199, 'id', 'voluptatum', 'rusak', '33119856', 'HP', NULL, NULL, NULL, 1, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(200, 'et', 'nobis', 'baik', '58502645', 'epson', NULL, NULL, NULL, 1, '2022-11-02 01:57:38', '2022-11-02 01:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `inventories_crashes`
--

CREATE TABLE `inventories_crashes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$2y$10$iCxzwSwz3cNWoU4wjpghj.bVBrD48S3r3wCnT1YndEiXmPpSz31pS',
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `id_handler` bigint(20) UNSIGNED DEFAULT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `id_ruangan` bigint(20) UNSIGNED NOT NULL,
  `detail_ruangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_kerusakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories_crashes`
--

INSERT INTO `inventories_crashes` (`id`, `slug`, `id_pegawai`, `id_handler`, `id_barang`, `id_ruangan`, `detail_ruangan`, `detail_kerusakan`, `detail_foto`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(2, '$2y$10$iCxzwSwz3cNWoU4wjpghj.bVBrD48S3r3wCnT1YndEiXmPpSz31pS', 1, NULL, 55, 1, 'Magnam unde voluptas', 'Ut ut lorem aut aspe', NULL, 1, 1, '2022-11-02 07:51:58', '2022-11-02 07:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `inventories_loans`
--

CREATE TABLE `inventories_loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `inventoryloan_penanggung_jawab` bigint(20) UNSIGNED NOT NULL,
  `inventoryloan_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventoryloan_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventoryloan_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventoryloan_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventoryloan_tglpeminjaman` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventoryloan_esttglpengembalian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventoryloan_tglpengembalian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventoryloan_nomorBAST` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventoryloan_nomorBAP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventoryloan_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventoryloan_filepengembalian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventoryloan_createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventoryloan_updatedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories_loans`
--

INSERT INTO `inventories_loans` (`id`, `account_id`, `inventoryloan_penanggung_jawab`, `inventoryloan_type`, `inventoryloan_tujuan`, `inventoryloan_status`, `inventoryloan_duration`, `inventoryloan_tglpeminjaman`, `inventoryloan_esttglpengembalian`, `inventoryloan_tglpengembalian`, `inventoryloan_nomorBAST`, `inventoryloan_nomorBAP`, `inventoryloan_file`, `inventoryloan_filepengembalian`, `inventoryloan_createdby`, `inventoryloan_updatedby`, `created_at`, `updated_at`) VALUES
(1, 18, 12, 'Pengembalian', 'Pribadi', 'Sudah diproses', '4', '2022-02-24 05:28:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:38', '2022-11-02 01:57:38'),
(2, 15, 9, 'Pengembalian', 'Pribadi', 'Belum diproses', '26', '2022-10-18 13:28:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(3, 6, 15, 'Pengembalian', 'Pemeriksaan', 'Sudah diproses', '14', '2022-07-19 05:57:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(4, 9, 7, 'Pengembalian', 'Pribadi', 'Sudah diproses', '15', '2022-09-24 10:33:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(5, 14, 8, 'Peminjaman', 'Pemeriksaan', 'Belum diproses', '2', '2022-07-01 18:45:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(6, 11, 14, 'Pengembalian', 'Pemeriksaan', 'Sudah diproses', '4', '2022-03-18 14:59:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(7, 16, 19, 'Pengembalian', 'Pribadi', 'Belum diproses', '21', '2022-04-21 13:40:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(8, 6, 15, 'Peminjaman', 'Pemeriksaan', 'Belum diproses', '15', '2022-01-01 12:24:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(9, 16, 10, 'Peminjaman', 'Pribadi', 'Sudah diproses', '20', '2022-10-17 19:01:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(10, 13, 16, 'Peminjaman', 'Pemeriksaan', 'Sudah diproses', '12', '2022-10-27 00:44:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(11, 6, 19, 'Peminjaman', 'Pemeriksaan', 'Sudah diproses', '29', '2022-08-07 04:41:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(12, 7, 19, 'Pengembalian', 'Pribadi', 'Sudah diproses', '0', '2022-07-26 18:37:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(13, 9, 20, 'Peminjaman', 'Pribadi', 'Sudah diproses', '14', '2022-05-30 19:49:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(14, 18, 15, 'Pengembalian', 'Pemeriksaan', 'Belum diproses', '25', '2022-10-13 00:21:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(15, 11, 20, 'Pengembalian', 'Pribadi', 'Belum diproses', '17', '2022-05-14 23:45:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(16, 12, 11, 'Pengembalian', 'Pribadi', 'Belum diproses', '27', '2022-05-23 23:07:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(17, 7, 10, 'Pengembalian', 'Pribadi', 'Sudah diproses', '13', '2022-07-11 13:14:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(18, 8, 12, 'Pengembalian', 'Pemeriksaan', 'Belum diproses', '11', '2022-07-25 02:30:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(19, 19, 8, 'Pengembalian', 'Pribadi', 'Sudah diproses', '23', '2022-06-18 22:00:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(20, 11, 11, 'Pengembalian', 'Pemeriksaan', 'Belum diproses', '27', '2022-02-17 21:42:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(21, 12, 9, 'Pengembalian', 'Pemeriksaan', 'Sudah diproses', '25', '2022-05-16 09:19:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(22, 8, 7, 'Pengembalian', 'Pribadi', 'Belum diproses', '0', '2022-03-24 23:16:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(23, 12, 17, 'Pengembalian', 'Pribadi', 'Sudah diproses', '27', '2022-07-03 20:25:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(24, 8, 7, 'Peminjaman', 'Pemeriksaan', 'Belum diproses', '3', '2022-04-22 03:50:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(25, 12, 18, 'Pengembalian', 'Pribadi', 'Belum diproses', '12', '2022-05-12 21:38:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(26, 13, 9, 'Peminjaman', 'Pemeriksaan', 'Sudah diproses', '20', '2022-07-29 04:10:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:39', '2022-11-02 01:57:39'),
(27, 15, 20, 'Pengembalian', 'Pemeriksaan', 'Belum diproses', '13', '2022-10-15 18:45:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(28, 17, 13, 'Peminjaman', 'Pribadi', 'Sudah diproses', '23', '2022-01-09 17:11:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(29, 8, 17, 'Pengembalian', 'Pemeriksaan', 'Belum diproses', '3', '2022-05-19 18:53:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(30, 19, 15, 'Pengembalian', 'Pemeriksaan', 'Sudah diproses', '26', '2022-01-30 15:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(31, 14, 16, 'Pengembalian', 'Pemeriksaan', 'Sudah diproses', '3', '2022-07-15 13:24:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(32, 9, 17, 'Pengembalian', 'Pribadi', 'Belum diproses', '19', '2022-08-15 02:37:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(33, 11, 11, 'Peminjaman', 'Pribadi', 'Sudah diproses', '11', '2022-07-26 21:44:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(34, 17, 7, 'Peminjaman', 'Pribadi', 'Sudah diproses', '11', '2022-08-23 00:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(35, 17, 19, 'Pengembalian', 'Pribadi', 'Belum diproses', '30', '2022-07-09 19:44:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(36, 20, 12, 'Pengembalian', 'Pemeriksaan', 'Sudah diproses', '16', '2022-01-07 00:44:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(37, 16, 11, 'Pengembalian', 'Pemeriksaan', 'Sudah diproses', '25', '2022-05-22 23:42:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(38, 18, 20, 'Peminjaman', 'Pemeriksaan', 'Belum diproses', '22', '2022-08-18 00:23:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(39, 16, 14, 'Pengembalian', 'Pribadi', 'Sudah diproses', '25', '2022-07-16 16:22:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(40, 12, 12, 'Peminjaman', 'Pemeriksaan', 'Sudah diproses', '9', '2022-08-07 06:41:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(41, 9, 16, 'Peminjaman', 'Pribadi', 'Sudah diproses', '5', '2022-09-26 23:12:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(42, 7, 8, 'Peminjaman', 'Pribadi', 'Sudah diproses', '26', '2022-08-14 23:30:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(43, 8, 12, 'Peminjaman', 'Pemeriksaan', 'Belum diproses', '21', '2022-02-26 18:22:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:40', '2022-11-02 01:57:40'),
(44, 14, 15, 'Peminjaman', 'Pribadi', 'Belum diproses', '2', '2022-08-06 11:24:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(45, 18, 9, 'Pengembalian', 'Pribadi', 'Belum diproses', '6', '2022-08-08 08:04:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(46, 8, 14, 'Pengembalian', 'Pribadi', 'Sudah diproses', '4', '2022-03-05 18:32:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(47, 10, 13, 'Pengembalian', 'Pribadi', 'Sudah diproses', '29', '2022-02-10 17:43:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(48, 6, 7, 'Peminjaman', 'Pemeriksaan', 'Sudah diproses', '4', '2022-06-29 13:52:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(49, 5, 11, 'Pengembalian', 'Pemeriksaan', 'Belum diproses', '1', '2022-08-31 20:22:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(50, 17, 11, 'Pengembalian', 'Pribadi', 'Belum diproses', '30', '2022-07-14 06:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(51, 1, 1, 'Peminjaman', 'Pemeriksaan', 'Belum diproses', '12', '2022-11-02', '2022-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 02:30:25', '2022-11-02 02:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `inventories_loan_details`
--

CREATE TABLE `inventories_loan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventoryloan_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories_loan_details`
--

INSERT INTO `inventories_loan_details` (`id`, `inventoryloan_id`, `inventory_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(2, 4, 47, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(3, 6, 42, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(4, 9, 30, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(5, 4, 9, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(6, 8, 35, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(7, 4, 25, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(8, 4, 41, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(9, 9, 49, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(10, 5, 27, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(11, 1, 25, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(12, 3, 45, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(13, 8, 42, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(14, 3, 38, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(15, 3, 31, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(16, 2, 31, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(17, 2, 24, '2022-11-02 01:57:41', '2022-11-02 01:57:41'),
(18, 7, 18, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(19, 4, 18, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(20, 10, 39, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(21, 3, 36, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(22, 1, 41, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(23, 2, 15, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(24, 10, 49, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(25, 9, 36, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(26, 9, 40, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(27, 10, 19, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(28, 2, 14, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(29, 6, 9, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(30, 10, 22, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(31, 1, 23, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(32, 10, 39, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(33, 4, 7, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(34, 7, 26, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(35, 1, 7, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(36, 3, 26, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(37, 1, 43, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(38, 6, 33, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(39, 1, 24, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(40, 10, 13, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(41, 9, 40, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(42, 1, 15, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(43, 7, 44, '2022-11-02 01:57:42', '2022-11-02 01:57:42'),
(44, 6, 35, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(45, 7, 39, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(46, 5, 12, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(47, 2, 42, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(48, 1, 13, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(49, 1, 16, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(50, 6, 10, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(51, 5, 35, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(52, 6, 32, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(53, 4, 24, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(54, 6, 41, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(55, 6, 16, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(56, 4, 17, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(57, 7, 46, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(58, 4, 36, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(59, 2, 36, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(60, 10, 50, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(61, 2, 39, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(62, 3, 19, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(63, 10, 46, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(64, 6, 34, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(65, 4, 23, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(66, 8, 16, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(67, 3, 34, '2022-11-02 01:57:43', '2022-11-02 01:57:43'),
(68, 6, 38, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(69, 1, 12, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(70, 3, 17, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(71, 9, 38, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(72, 4, 8, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(73, 6, 7, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(74, 5, 39, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(75, 4, 45, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(76, 9, 49, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(77, 5, 42, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(78, 6, 40, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(79, 3, 45, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(80, 5, 47, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(81, 3, 31, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(82, 1, 29, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(83, 8, 15, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(84, 10, 14, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(85, 7, 49, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(86, 5, 17, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(87, 10, 37, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(88, 6, 32, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(89, 9, 39, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(90, 3, 48, '2022-11-02 01:57:44', '2022-11-02 01:57:44'),
(91, 1, 36, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(92, 6, 46, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(93, 10, 24, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(94, 9, 16, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(95, 6, 10, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(96, 3, 14, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(97, 8, 46, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(98, 2, 12, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(99, 9, 12, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(100, 4, 45, '2022-11-02 01:57:45', '2022-11-02 01:57:45'),
(101, 51, 1, NULL, NULL),
(102, 51, 8, NULL, NULL),
(103, 51, 12, NULL, NULL),
(104, 51, 14, NULL, NULL),
(105, 51, 17, NULL, NULL),
(106, 51, 20, NULL, NULL),
(107, 51, 24, NULL, NULL),
(108, 51, 28, NULL, NULL),
(109, 51, 30, NULL, NULL),
(110, 51, 45, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kendaraans`
--

CREATE TABLE `kendaraans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kendaraans`
--

INSERT INTO `kendaraans` (`id`, `slug`, `name`, `nomor`, `kapasitas`, `is_active`, `created_at`, `updated_at`, `status`) VALUES
(1, NULL, 'Louis Roy', 'Aliqua Omnis hic fu', '30', 1, '2023-01-03 17:45:53', '2023-01-03 17:45:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_24_072350_create_accounts_table', 1),
(6, '2022_08_24_072419_create_additional_positions_table', 1),
(7, '2022_08_24_072432_create_inventories_table', 1),
(8, '2022_08_24_072449_create_inventories_loans_table', 1),
(9, '2022_08_24_072505_create_inventories_loan_details_table', 1),
(10, '2022_09_22_095956_create_logins_table', 1),
(11, '2022_11_02_102425_create_inventories_crashes_table', 2),
(12, '2022_11_02_103903_create_rooms_table', 3),
(13, '2022_11_09_113603_create_room_loans_table', 4),
(14, '2022_11_09_114535_create_room_loan_details_table', 4),
(15, '2022_11_09_115305_create_equipment_table', 4),
(16, '2022_11_11_102523_create_kendaraans_table', 4),
(17, '2022_11_15_172347_create_drivers_table', 4),
(18, '2022_11_17_085623_add_status_to_kendaraans_table', 4),
(19, '2022_11_17_113535_create_vehicle_loans_table', 4),
(20, '2022_12_28_094921_create_books_table', 4),
(21, '2023_01_09_094023_create_books_transaction', 5);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$2y$10$LFbUNN9c9JpRu/mZGG2ReO3IGXLgz2OkBNa/bT7l3foIWaBxAT4aS',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_ruangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `slug`, `name`, `detail_ruangan`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '$1$dg2WthcE$Rq3PM9BRvlknttoC34DDJ.', 'Ruangan Media', NULL, 1, '2022-11-02 02:59:48', '2022-11-02 02:59:48'),
(2, '5dcFS', 'Ruangan Media', NULL, 1, '2022-11-02 03:01:46', '2022-11-02 03:01:46'),
(3, 'Fk2aS', 'Ruangan Media', NULL, 1, '2022-11-02 03:03:26', '2022-11-02 03:03:26'),
(4, '4vfdS', 'Ruangan Bulungan', NULL, 1, '2022-11-02 03:03:26', '2022-11-02 03:03:26'),
(5, 'F3X/2', 'Ruangan Perpustakaan', NULL, 1, '2022-11-02 03:03:26', '2022-11-02 03:03:26'),
(6, 'QEwAe', 'Ruangan PIPK', NULL, 1, '2022-11-02 03:03:26', '2022-11-02 03:03:26'),
(7, 'Bg682', 'Ruangan Nunukan', NULL, 1, '2022-11-02 03:03:26', '2022-11-02 03:03:26'),
(8, 'mcCdm', 'Ruangan KTT', NULL, 1, '2022-11-02 03:03:26', '2022-11-02 03:03:26'),
(9, '04WOy', 'Ruangan Malinau', NULL, 1, '2022-11-02 03:03:26', '2022-11-02 03:03:26'),
(10, 'xR0EC', 'Ruangan Billyard', NULL, 1, '2022-11-02 03:03:27', '2022-11-02 03:03:27'),
(11, 'd0wfW', 'Ruangan Studio', NULL, 1, '2022-11-02 03:03:27', '2022-11-02 03:03:27'),
(12, 'rssr.', 'Ruangan Auditorium', NULL, 1, '2022-11-02 03:03:27', '2022-11-02 03:03:27'),
(13, 'SeRoG', 'Ruangan Lobby', NULL, 1, '2022-11-02 03:03:27', '2022-11-02 03:03:27'),
(14, 'FRqby', 'Ruangan Klinik', NULL, 1, '2022-11-02 03:03:27', '2022-11-02 03:03:27'),
(15, 'Tjlw2', 'Ruangan Dharma Wanita', NULL, 1, '2022-11-02 03:03:27', '2022-11-02 03:03:27'),
(16, 'Ldsyy', 'Ruangan Laktasi', NULL, 1, '2022-11-02 03:03:27', '2022-11-02 03:03:27'),
(17, 'ZFze.', 'Ruangan Kantin', NULL, 1, '2022-11-02 03:03:27', '2022-11-02 03:03:27'),
(18, '8Z6qW', 'Ruangan Arsip', NULL, 1, '2022-11-02 03:03:28', '2022-11-02 03:03:28'),
(19, 'fk29S', 'Ruang Kalan', NULL, 1, '2022-11-02 03:03:28', '2022-11-02 03:03:28'),
(20, 'igCCq', 'Ruang Staf Kalan', NULL, 1, '2022-11-02 03:03:28', '2022-11-02 03:03:28'),
(21, 'un2WW', 'Ruang Subbagian Humas', NULL, 1, '2022-11-02 03:03:28', '2022-11-02 03:03:28'),
(22, 'DH3JO', 'Ruang Subbagian Umum dan TI', NULL, 1, '2022-11-02 03:03:28', '2022-11-02 03:03:28'),
(23, 'hVECi', 'Ruang Subbagian SDM', NULL, 1, '2022-11-02 03:03:28', '2022-11-02 03:03:28'),
(24, 'b44Fu', 'Ruang Subbagian Hukum', NULL, 1, '2022-11-02 03:03:28', '2022-11-02 03:03:28'),
(25, 'nqt0W', 'Ruang Subbagian Keuangan', NULL, 1, '2022-11-02 03:03:28', '2022-11-02 03:03:28'),
(27, 'hzG1a', 'Ruang Kepala Subauditorat', NULL, 1, '2022-11-02 03:03:29', '2022-11-02 03:03:29'),
(28, '2MJDu', 'Ruang Pengendali Teknis', NULL, 1, '2022-11-02 03:03:29', '2022-11-02 03:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `room_loans`
--

CREATE TABLE `room_loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `id_ruangan` bigint(20) UNSIGNED NOT NULL,
  `kegiatan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `detail_ruangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_loan_details`
--

CREATE TABLE `room_loan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomloan_id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_loans`
--

CREATE TABLE `vehicle_loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `tujuan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keperluan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_account_nip_bpk_unique` (`account_nip_bpk`),
  ADD UNIQUE KEY `accounts_account_nip_bkn_unique` (`account_nip_bkn`);

--
-- Indexes for table `additional_positions`
--
ALTER TABLE `additional_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_transaction`
--
ALTER TABLE `books_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventories_inventory_nup_unique` (`inventory_nup`);

--
-- Indexes for table `inventories_crashes`
--
ALTER TABLE `inventories_crashes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories_loans`
--
ALTER TABLE `inventories_loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories_loan_details`
--
ALTER TABLE `inventories_loan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kendaraans`
--
ALTER TABLE `kendaraans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_loans`
--
ALTER TABLE `room_loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_loan_details`
--
ALTER TABLE `room_loan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicle_loans`
--
ALTER TABLE `vehicle_loans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `additional_positions`
--
ALTER TABLE `additional_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2472;

--
-- AUTO_INCREMENT for table `books_transaction`
--
ALTER TABLE `books_transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `inventories_crashes`
--
ALTER TABLE `inventories_crashes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventories_loans`
--
ALTER TABLE `inventories_loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `inventories_loan_details`
--
ALTER TABLE `inventories_loan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `kendaraans`
--
ALTER TABLE `kendaraans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `room_loans`
--
ALTER TABLE `room_loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_loan_details`
--
ALTER TABLE `room_loan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_loans`
--
ALTER TABLE `vehicle_loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
