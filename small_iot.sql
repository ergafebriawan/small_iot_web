-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2020 pada 18.17
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `small_iot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datain`
--

CREATE TABLE `datain` (
  `id_data` int(3) NOT NULL,
  `nama_data` varchar(10) NOT NULL,
  `value_data` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datain`
--

INSERT INTO `datain` (`id_data`, `nama_data`, `value_data`) VALUES
(1, 'sensor', 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataout`
--

CREATE TABLE `dataout` (
  `id_data` int(3) NOT NULL,
  `nama_data` varchar(10) NOT NULL,
  `value_data` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dataout`
--

INSERT INTO `dataout` (`id_data`, `nama_data`, `value_data`) VALUES
(1, 'sensor', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datain`
--
ALTER TABLE `datain`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `dataout`
--
ALTER TABLE `dataout`
  ADD PRIMARY KEY (`id_data`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datain`
--
ALTER TABLE `datain`
  MODIFY `id_data` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dataout`
--
ALTER TABLE `dataout`
  MODIFY `id_data` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
