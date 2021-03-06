-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Okt 2020 pada 00.08
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_value`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bio_dev`
--

CREATE TABLE `bio_dev` (
  `id_bio_dev` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_desk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_job` enum('Freelance','Full Time') COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_place` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_dev` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bio_dev`
--

INSERT INTO `bio_dev` (`id_bio_dev`, `name`, `job_desk`, `status_job`, `work_place`, `description`, `city`, `image`, `id_dev`, `created_at`, `updated_at`) VALUES
(2, 'madu', 'Web Developer', 'Freelance', 'Jl.Sungai Raya Dalam', 'mantap', 'Pontianak', 'a.jpg', 15, '2020-09-19 23:58:53', '2020-09-19 23:58:53'),
(3, 'mimi', 'Mobile Developer', 'Freelance', 'Jl.Adisucipto', 'mantap', 'Pontianak', 'a.jpg', 16, '2020-09-20 00:02:43', '2020-09-20 00:02:43'),
(4, 'bima', 'Web Developer', 'Freelance', 'Jl.Trans Kalimantan', 'Mampu di mana pun', 'Ketapang', 'a.jpg', 17, '2020-09-21 01:12:47', '2020-09-21 01:12:47'),
(5, 'Ahmad', 'Web Developer', 'Freelance', 'Jl.pinyuh', 'pandai memanajemen', 'Sanggau', 'a.jpg', 18, '2020-09-21 01:14:03', '2020-09-21 01:14:03'),
(6, 'Rendra', 'Mobile', 'Freelance', 'Jl.Martadinata', 'kuat menantap laptop', 'Sungai Kakap', 'a.jpg', 19, '2020-09-21 01:15:12', '2020-09-21 01:15:12'),
(7, 'Hizmi', 'Mobile Developer', 'Full Time', 'Jl.lumangun', 'bisa bikin mobile dengan indah', 'Bansir Raya', 'a.jpg', 20, '2020-09-21 01:17:28', '2020-09-21 01:17:28'),
(9, 'abu nawas', 'Mobile Developer', 'Freelance', 'Jl.Adisucipto', 'mantap', 'Pontianak', '', 122, '2020-10-01 06:50:55', '2020-10-01 07:01:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bio_recuiter`
--

CREATE TABLE `bio_recuiter` (
  `id_bio_rec` int(11) NOT NULL,
  `name_company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_recruiter` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bio_recuiter`
--

INSERT INTO `bio_recuiter` (`id_bio_rec`, `name_company`, `sector`, `city`, `description`, `instagram`, `image`, `linkedin`, `id_recruiter`, `created_at`, `updated_at`) VALUES
(3, 'DE VONTE', 'Finansial', 'Sanggau', 'yox', 'sahabat_kita', '', 'sahabatkita', 14, '2020-09-27 08:57:34', '2020-10-01 08:03:44'),
(4, 'PT.VARSHAM', 'Healty', 'Bogor', 'Perawatan kesehatan dengan Botani', 'dr.botani', 'image-1601538873169-avatar3.png', 'botani-doc', 37, '2020-10-01 07:54:33', '2020-10-01 07:54:33'),
(5, 'ADAMKU', 'Healty', 'Bogor', 'Perawatan Bekam Sang Adam', 'adam.bekam', 'image-1602369873772-avatar3.png', 'adam_bekam', 39, '2020-10-10 22:44:33', '2020-10-10 22:44:33'),
(18, 'ADAMKU', 'Healty', 'Bogor', 'Perawatan Bekam Sang Adam', 'adam.bekam', 'image-1602371030593-avatar3.png', 'adam_bekam', 8, '2020-10-10 23:03:50', '2020-10-10 23:03:50'),
(19, 'ADAMKU', 'Healty', 'Bogor', 'Perawatan Bekam Sang Adam', 'adam.bekam', 'image-1602371834859-avatar3.png', 'adam_bekam', 9, '2020-10-10 23:17:14', '2020-10-10 23:17:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `developer`
--

CREATE TABLE `developer` (
  `id_dev` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `developer`
--

INSERT INTO `developer` (`id_dev`, `name`, `email`, `password`, `no_hp`, `role`, `created_at`, `updated_at`) VALUES
(15, 'Ahmad', 'dan@gmail.com', 'dan', '3452', 2, '2020-09-18 23:05:38', '2020-09-27 19:12:24'),
(17, 'ramu', 'ramu@gmail.com', 'ramu', '34567', 2, '2020-09-18 23:15:40', '2020-09-27 19:12:34'),
(19, 'ahmad', 'ahmad@gmail.com', 'ahmad', '7654', 2, '2020-09-18 23:17:49', '2020-09-27 19:12:53'),
(21, 'ahmad', 'ahad@gmail.com', '$2a$10$Sv3cXkYpVdnfzJ8uVUtFW.2rt6b7JIMbUURo22ghGTv6Vx9dNlYiu', '7654', 2, '2020-09-24 05:04:31', '2020-09-27 19:13:32'),
(109, 'andi', 'andi@gmail.com', '$2a$10$U6tRneeA78bHoMw1O0.nbOWS4JSdxAppF0VyNtHmcDSRCSedUGrWi', '7654', 2, '2020-09-29 17:01:56', '2020-09-29 17:01:56'),
(122, 'abu nawas', 'abu@gmail.com', '$2a$10$sIvMQ1TLa1sST7vVf8cV9uOA9piXDzsPkCvkFGQoaAGENvQBxqyIS', '7654', 2, '2020-10-01 05:49:46', '2020-10-01 05:56:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exp_dev`
--

CREATE TABLE `exp_dev` (
  `id_exp` int(11) NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bio_dev` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `exp_dev`
--

INSERT INTO `exp_dev` (`id_exp`, `position`, `name_company`, `description`, `id_bio_dev`, `start`, `end`) VALUES
(1, 'web developer', 'ASK', 'mantap', 2, '2020-09-01', '2020-09-16'),
(2, 'web developer', 'SEGA', 'oke mantap terus', 2, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hire`
--

CREATE TABLE `hire` (
  `idHire` int(11) NOT NULL,
  `projectJob` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusConfirm` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateConfirm` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(200) NOT NULL,
  `idBioDev` int(11) NOT NULL,
  `idProject` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hire`
--

INSERT INTO `hire` (`idHire`, `projectJob`, `message`, `statusConfirm`, `dateConfirm`, `price`, `idBioDev`, `idProject`, `createdAt`, `updatedAt`) VALUES
(1, 'coba', 'message', '1', '0000-00-00', 500000, 1, 1, '2020-10-12 23:16:47.088561', '2020-10-12 23:16:47.088561'),
(2, 'medium', 'message', '1', '0000-00-00', 200000, 2, 2, '2020-10-12 23:19:28.107159', '2020-10-12 23:19:28.107159'),
(3, 'high', 'message', '1', '0000-00-00', 200000, 3, 3, '2020-10-12 23:20:24.964240', '2020-10-12 23:20:24.964240'),
(4, 'super', 'message', '1', '0000-00-00', 200000, 4, 4, '2020-10-12 23:21:47.951218', '2020-10-12 23:21:47.951218'),
(6, 'super', 'message', '1', '0000-00-00', 200000, 2, 4, '2020-10-12 23:44:51.677340', '2020-10-12 23:44:51.677340'),
(7, 'super', 'message', '1', '0000-00-00', 200000, 3, 10, '2020-10-13 04:28:39.271457', '2020-10-13 04:28:39.271457'),
(8, 'Opera', 'message', '1', '0000-00-00', 200000, 6, 4, '2020-10-13 04:42:12.915151', '2020-10-13 04:42:12.915151'),
(9, 'Opera', 'message', '1', '26-12-2020', 200000, 6, 4, '2020-10-13 05:07:37.196623', '2020-10-13 05:07:37.196623');

-- --------------------------------------------------------

--
-- Struktur dari tabel `port_dev`
--

CREATE TABLE `port_dev` (
  `id_port` int(11) NOT NULL,
  `name_app` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_publish` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_repo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workplace_related` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_type` enum('Web Developer','Mobile Developer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bio_dev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `port_dev`
--

INSERT INTO `port_dev` (`id_port`, `name_app`, `description`, `link_publish`, `link_repo`, `workplace_related`, `base_type`, `image`, `id_bio_dev`) VALUES
(1, 'Productive', 'mengatur ritme productive', 'github', 'playstore', 'Jl.Imam Bonjol', 'Mobile Developer', 'a.png', 2),
(3, 'simanja', 'manajemen sipil', 'asd', 'asd', 'oke', 'Web Developer', '', 2),
(4, 'simanja', 'manajemen sipil', 'asd', 'asd', 'oke', 'Web Developer', '', 2),
(5, 'simanja', 'manajemen sipil', 'asd', 'asd', 'oke', 'Web Developer', '', 2),
(6, 'Productive', 'mengatur ritme productive', 'github', 'playstore', 'Jl.Imam Bonjol', 'Mobile Developer', 'image-1601404542822-productive.png', 2),
(7, 'simanja', 'manajemen sipil', 'asd', 'asd', 'oke', 'Web Developer', '', 2),
(8, 'simanja', 'manajemen sipil', 'asd', 'asd', 'oke', 'Web Developer', 'photo-1601192592317-n2f2014.jpg', 2),
(9, 'simanja', 'manajemen sipil', 'asd', 'asd', 'oke', 'Web Developer', '', 2),
(10, 'simanja', 'manajemen sipil', 'asd', 'asd', 'oke', 'Web Developer', '', 2),
(11, 'N2F', 'Game Hunter Wild', 'playstore', 'github', 'playto.group', 'Web Developer', '', 2),
(13, 'Productive', 'mengatur ritme productive', 'github', 'playstore', 'Jl.Imam Bonjol', 'Mobile Developer', 'image-1601534561439-lemonwater.jpg', 2),
(14, 'IBL APPS', 'memberikan para penonton jadwal tanding IBL', 'playstore', 'github', 'Patriotic Group', 'Mobile Developer', 'image-1601194202273-ibl.png', 2),
(15, 'TEH LEMON', 'aplikasi Sosial media terbaru', 'playstore', 'github', 'Patriotic Group', 'Mobile Developer', 'image-1601531881905-lemon.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `id_project` int(11) NOT NULL,
  `name_project` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline_month` int(3) NOT NULL,
  `id_recruiter` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`id_project`, `name_project`, `location`, `description`, `deadline_month`, `id_recruiter`, `image`, `created_at`, `updated_at`) VALUES
(1, 'APP SIMANJA', 'Jl.Veteran', 'Aplikasi Simpan Pinjam untuk Koperasi yang sering di pinjam', 3, 4, 'image-1601815114922-manja.jpg', '2020-09-20 09:09:11', '2020-09-20 09:09:11'),
(3, 'APP PENSIL', 'Jl.Veteran', 'Aplikasi Data Penduduk Sipil', 3, 4, 'image-1601815144892-pensil.jpg', '2020-09-20 09:13:58', '2020-09-20 09:13:58'),
(4, 'APP PENSIL', 'Jl.Veteran', 'Aplikasi Data Penduduk Sipil', 3, 4, 'undefined-1600909229377-neo.png', '2020-09-24 01:00:29', '2020-09-24 01:00:29'),
(6, 'APP N2F', 'jl. veteran', 'Aplikasi Management', 3, 4, 'image-1600909877516-n2f.png', '2020-09-24 01:11:17', '2020-09-24 01:11:17'),
(7, 'FUTURE', 'jl. kalimatan', 'Membangun Fasilitas Teknologi', 3, 4, '', '2020-09-27 07:53:48', '2020-09-27 07:53:48'),
(9, 'APP SIMANJA', 'Jl.Veteran', 'Aplikasi Simpan Pinjam', 3, 4, 'image-1601552267376-lemon.jpg', '2020-09-27 08:03:16', '2020-09-27 08:03:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_developer`
--

CREATE TABLE `project_developer` (
  `id_prodev` int(11) NOT NULL,
  `name_detail` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_job` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(15) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_project` int(11) NOT NULL,
  `id_dev` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sts_confirm` enum('agree','waiting','not agree') COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `project_developer`
--

INSERT INTO `project_developer` (`id_prodev`, `name_detail`, `description`, `project_job`, `location`, `price`, `message`, `id_project`, `id_dev`, `created_at`, `updated_at`, `sts_confirm`, `confirm_date`) VALUES
(1, 'APLIKASI SIMANJA', 'Aplikasi penunjang manajemen', 'manajer project', 'Kubu Raya', 15400000, 'tawaran menggiurkan', 1, 15, '2020-09-20 10:17:16', '2020-09-20 10:54:36', 'waiting', '0000-00-00'),
(2, 'APLIKASI PENSIL', 'aplikasi simpan pinjam tertama di koperasi', 'Back End Web Developer', 'Kubu Raya', 15400000, 'tawaran menggiurkan', 1, 15, '2020-09-20 10:20:28', '2020-09-20 10:55:30', 'agree', '0000-00-00'),
(4, 'APLIKASI PENSIL', 'aplikasi simpan pinjam tertama di koperasi', 'Back End Web Developer', 'Kubu Raya', 15400000, 'tawaran menggiurkan', 1, 15, '2020-09-20 10:36:28', '2020-10-01 11:49:49', 'agree', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `recruiter`
--

CREATE TABLE `recruiter` (
  `id_recruiter` int(191) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `recruiter`
--

INSERT INTO `recruiter` (`id_recruiter`, `name`, `email`, `company`, `position`, `password`, `no_hp`, `created_at`, `update_at`, `role`) VALUES
(3, 'Hajon Mahdy', 'bravo@gmail.com', 'PT.KREASI PUTRA HOTAMA', 'CEO', 'jonmadi', '086543', '2020-09-19 03:48:06', '2020-09-27 19:14:37', 1),
(4, 'Romeo Oreo Roma', 'rome0@gmail.com', 'PT.TAMAN PUJANGGA', 'HRD', 'rome0', '833334', '2020-09-19 03:51:13', '2020-09-27 19:14:48', 1),
(5, 'Hanif Rafudin', 'asef.09@gmail.com', 'PT.ADITYA SENTOSA', 'HRD', 'asef56', '0823253', '2020-09-19 03:53:59', '2020-09-27 19:14:55', 1),
(6, 'Rahmat Iskandar', 'mat.is.98@gmail.com', 'PT.DJAYA BATAVIA', 'HRD', 'mat98is', '76523', '2020-09-19 03:57:24', '2020-09-27 19:15:06', 1),
(7, 'Alphen Tora', 'tora.90@gmail.com', 'PT.BONAR ANDALAN', 'HRD', 'torikan', '05643', '2020-09-19 03:59:07', '2020-09-27 19:15:20', 1),
(8, 'Akhsari Sophian', 'akh.sop@gmail.com', 'PT.PURNAMA JAYA ABADI', 'HRD', 'kihihi', '0746453', '2020-09-19 04:00:53', '2020-09-27 19:15:36', 1),
(9, 'Hanafi Andili', 'hanaf.1@gmail.com', 'PT.CINTA SEJATI', 'Manager Project', 'hanaf1', '044414', '2020-09-19 04:02:07', '2020-09-27 19:15:48', 1),
(12, 'Somad', 'sasimi@gmail.com', 'PT.DIRIKU SEKARANG', 'HRD', 'hanaf1', '044414', '2020-09-21 10:03:36', '2020-09-27 19:16:00', 1),
(13, 'bakar', 'bakar@gmail.com', 'PT.KREASI BANGSAN', 'HRD', 'hanaf1', '044414', '2020-09-23 20:12:41', '2020-09-27 19:16:11', 1),
(15, 'Varsha Ravita ', 'varshara@gmail.com', 'PT.RUMAH HEALTY', 'HRD', 'varha', '833334', '2020-09-23 20:59:58', '2020-10-01 07:48:29', 1),
(37, 'varsha', 'varsha@gmail.com', 'PT.VARSHAM', 'HRD', '$2a$10$SsVs1FQ4OYxjsKoevSEc8OCpBsahJTtGvxmbNRfwdot.JtkT7kM/O', '08505050', '2020-10-01 07:53:03', '2020-10-01 07:53:03', 1),
(38, '1', '1', '1', '1', '$2a$10$nm3HYOagx4TU0eGDrmjEYuK5haZb5AIMGmYw.BdZ0qTfcAvJlQB0i', '1', '2020-10-05 19:12:23', '2020-10-05 19:12:23', 1),
(39, 'adam', 'adam@gmail.com', 'adamku', 'CEO', '$2a$10$8oSmgBukJCdLsGmWrSKMIuVYVE.w0.d6Ji9v3Q1JHlA8Lej4YaC32', '3456', '2020-10-10 22:35:40', '2020-10-10 22:35:40', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `skill_dev`
--

CREATE TABLE `skill_dev` (
  `id_skill` int(11) NOT NULL,
  `name_skill` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bio_dev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skill_dev`
--

INSERT INTO `skill_dev` (`id_skill`, `name_skill`, `id_bio_dev`) VALUES
(1, 'kotlin', 2),
(3, 'ruby', 2),
(4, 'node js', 2),
(5, 'node js', 5),
(6, 'Express js', 5),
(7, 'React', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bio_dev`
--
ALTER TABLE `bio_dev`
  ADD PRIMARY KEY (`id_bio_dev`);

--
-- Indeks untuk tabel `bio_recuiter`
--
ALTER TABLE `bio_recuiter`
  ADD PRIMARY KEY (`id_bio_rec`),
  ADD KEY `id_recruiter` (`id_recruiter`);

--
-- Indeks untuk tabel `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`id_dev`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `exp_dev`
--
ALTER TABLE `exp_dev`
  ADD PRIMARY KEY (`id_exp`),
  ADD KEY `id_dev` (`id_bio_dev`);

--
-- Indeks untuk tabel `hire`
--
ALTER TABLE `hire`
  ADD PRIMARY KEY (`idHire`);

--
-- Indeks untuk tabel `port_dev`
--
ALTER TABLE `port_dev`
  ADD PRIMARY KEY (`id_port`),
  ADD KEY `bio_dev` (`id_bio_dev`);

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`),
  ADD KEY `id_recruiter` (`id_recruiter`);

--
-- Indeks untuk tabel `project_developer`
--
ALTER TABLE `project_developer`
  ADD PRIMARY KEY (`id_prodev`),
  ADD KEY `id_project` (`id_project`),
  ADD KEY `id_dev` (`id_dev`);

--
-- Indeks untuk tabel `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`id_recruiter`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `skill_dev`
--
ALTER TABLE `skill_dev`
  ADD PRIMARY KEY (`id_skill`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bio_dev`
--
ALTER TABLE `bio_dev`
  MODIFY `id_bio_dev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `bio_recuiter`
--
ALTER TABLE `bio_recuiter`
  MODIFY `id_bio_rec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `developer`
--
ALTER TABLE `developer`
  MODIFY `id_dev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `exp_dev`
--
ALTER TABLE `exp_dev`
  MODIFY `id_exp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `hire`
--
ALTER TABLE `hire`
  MODIFY `idHire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `port_dev`
--
ALTER TABLE `port_dev`
  MODIFY `id_port` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `project_developer`
--
ALTER TABLE `project_developer`
  MODIFY `id_prodev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `recruiter`
--
ALTER TABLE `recruiter`
  MODIFY `id_recruiter` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `skill_dev`
--
ALTER TABLE `skill_dev`
  MODIFY `id_skill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
