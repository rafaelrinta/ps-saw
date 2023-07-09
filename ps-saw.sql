-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2023 pada 14.45
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ps-saw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `kebersihan` double NOT NULL,
  `kenyamanan` double NOT NULL,
  `fasilitas` double NOT NULL,
  `jajanan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama`, `alamat`, `harga`, `kebersihan`, `kenyamanan`, `fasilitas`, `jajanan`) VALUES
(1, 'AM Game', 'Jl Nakula Slerok', 6000, 2, 3, 3, 2),
(2, 'AM Game 2', 'Jl. Cendrawasih', 6000, 3, 4, 3, 4),
(3, 'XGame', 'Jl. KS. Tubun', 5000, 5, 4, 5, 5),
(4, 'Juventus Game', 'Jl. Ababil No.15', 5000, 3, 3, 3, 3),
(5, 'Heroik Net', 'Jl. Cendrawasih', 5000, 3, 2, 2, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `hasil`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `hasil` (
`id` bigint(20) unsigned
,`nama` varchar(255)
,`alamat` varchar(255)
,`hasil` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bobot` double NOT NULL,
  `label` enum('Benefit','Cost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`, `bobot`, `label`) VALUES
(1, 'harga', 0.2, 'Cost'),
(2, 'kebersihan', 0.25, 'Benefit'),
(3, 'kenyamanan', 0.25, 'Benefit'),
(4, 'fasilitas', 0.2, 'Benefit'),
(5, 'jajanan', 0.1, 'Benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_18_130620_create_alternatif_table', 2),
(6, '2023_06_19_164208_create_kriteria_table', 3);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `normalisasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `normalisasi` (
`id` bigint(20) unsigned
,`nama` varchar(255)
,`alamat` varchar(255)
,`harga` double
,`kebersihan` double
,`kenyamanan` double
,`fasilitas` double
,`jajanan` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `pengkali`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pengkali` (
`id` bigint(20) unsigned
,`nama` varchar(255)
,`alamat` varchar(255)
,`harga` double
,`kebersihan` double
,`kenyamanan` double
,`fasilitas` double
,`jajanan` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur untuk view `hasil`
--
DROP TABLE IF EXISTS `hasil`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `hasil`  AS SELECT `kl`.`id` AS `id`, `kl`.`nama` AS `nama`, `kl`.`alamat` AS `alamat`, `kl`.`harga`+ `kl`.`kebersihan` + `kl`.`kenyamanan` + `kl`.`fasilitas` + `kl`.`jajanan` AS `hasil` FROM `pengkali` AS `kl`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `normalisasi`
--
DROP TABLE IF EXISTS `normalisasi`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `normalisasi`  AS SELECT `alt`.`id` AS `id`, `alt`.`nama` AS `nama`, `alt`.`alamat` AS `alamat`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 1) = 'Benefit',`alt`.`harga` / (select max(`alt2`.`harga`) from `alternatif` `alt2`),(select min(`alt2`.`harga`) from `alternatif` `alt2`) / `alt`.`harga`) AS `harga`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 2) = 'Benefit',`alt`.`kebersihan` / (select max(`alt2`.`kebersihan`) from `alternatif` `alt2`),(select min(`alt2`.`kebersihan`) from `alternatif` `alt2`) / `alt`.`kebersihan`) AS `kebersihan`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 3) = 'Benefit',`alt`.`kenyamanan` / (select max(`alt2`.`kenyamanan`) from `alternatif` `alt2`),(select min(`alt2`.`kenyamanan`) from `alternatif` `alt2`) / `alt`.`kenyamanan`) AS `kenyamanan`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 4) = 'Benefit',`alt`.`fasilitas` / (select max(`alt2`.`fasilitas`) from `alternatif` `alt2`),(select min(`alt2`.`fasilitas`) from `alternatif` `alt2`) / `alt`.`fasilitas`) AS `fasilitas`, if((select `kri`.`label` from `kriteria` `kri` where `kri`.`id` = 5) = 'Benefit',`alt`.`jajanan` / (select max(`alt2`.`jajanan`) from `alternatif` `alt2`),(select min(`alt2`.`jajanan`) from `alternatif` `alt2`) / `alt`.`jajanan`) AS `jajanan` FROM `alternatif` AS `alt` GROUP BY `alt`.`id`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `pengkali`
--
DROP TABLE IF EXISTS `pengkali`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `pengkali`  AS SELECT `nor`.`id` AS `id`, `nor`.`nama` AS `nama`, `nor`.`alamat` AS `alamat`, `nor`.`harga`* (select `kr`.`bobot` from `kriteria` `kr` where `kr`.`id` = 1) AS `harga`, `nor`.`kebersihan`* (select `kr`.`bobot` from `kriteria` `kr` where `kr`.`id` = 2) AS `kebersihan`, `nor`.`kenyamanan`* (select `kr`.`bobot` from `kriteria` `kr` where `kr`.`id` = 3) AS `kenyamanan`, `nor`.`fasilitas`* (select `kr`.`bobot` from `kriteria` `kr` where `kr`.`id` = 4) AS `fasilitas`, `nor`.`jajanan`* (select `kr`.`bobot` from `kriteria` `kr` where `kr`.`id` = 5) AS `jajanan` FROM `normalisasi` AS `nor`  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
