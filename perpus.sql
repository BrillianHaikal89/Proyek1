-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jan 2024 pada 14.17
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `no_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(30) NOT NULL,
  `no_mahasiswa` int(11) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `nomor` int(11) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `no_anggota`, `nama_anggota`, `no_mahasiswa`, `telp`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `is_active`, `nomor`, `date_created`) VALUES
(11, 2006300001, 'Ilham Arip', 613220030, '0881-0235-0462', '1999-09-24', 'Laki-Laki', 'Garut', 1, 1, '2020-06-30'),
(12, 2006300002, 'Maheswara Rivai Jamhur', 613220032, '0857-3164-8455', '1999-10-27', 'Laki-Laki', 'JakSel', 1, 2, '2020-06-30'),
(13, 2006300003, 'Muhamad Rizqi Maulana', 613220039, '0896-3947-1372', '2020-06-09', 'Laki-Laki', 'Cimahi', 1, 3, '2020-06-30'),
(14, 613220033, 'Muhamad Brillian Haikal', 613223232, '0910-9327-4432', '2003-09-08', 'Laki-Laki', 'hads nfnw', 0, 1, '2024-01-02'),
(15, 2147483647, 'Andiga Rahman Maulana', 613220036, '0896-5516-1210', '2019-01-07', 'Laki-Laki', 'Cimahi', 1, 2, '2024-01-02'),
(16, 2147483647, 'Asep ', 613220017, '0838-4208-6440', '2000-01-02', 'Laki-Laki', 'Padalarang', 1, 3, '2024-01-02'),
(17, 2147483647, 'Tahrij Ilyas', 613220026, '0832-4743-5937', '2002-01-03', 'Laki-Laki', 'Cikalong', 1, 4, '2024-01-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` varchar(15) NOT NULL,
  `judul_buku` varchar(60) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `penerbit_id` int(11) NOT NULL,
  `penulis_id` int(11) NOT NULL,
  `rak_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul_buku`, `jumlah_buku`, `tahun_terbit`, `penerbit_id`, `penulis_id`, `rak_id`, `jenis_id`, `is_active`) VALUES
(9, 'A006.7.001561', 'Amazon Web Service', 0, 2023, 6, 5, 5, 7, 1),
(10, 'B133.3.002130', 'Mistisisme Tengger', 1, 2009, 7, 6, 6, 8, 1),
(11, 'C226.6.002750', 'Acts of  The Apostles', 0, 2009, 8, 7, 7, 9, 1),
(12, 'D304.2.003045', 'Human Ecology Problem and Solutions', 0, 1973, 10, 9, 8, 11, 1),
(13, 'E496.3.004231', 'Intonation in African Tone Languages', 0, 2016, 12, 10, 9, 12, 1),
(14, 'H658.7.005850', 'Marketing Management', 1, 2016, 9, 8, 10, 10, 1),
(15, 'F513.2.004520', 'The Essence of Mathematics', 2, 2019, 13, 11, 10, 13, 1),
(16, 'G615.5.005452', 'Bahaya Narkoba', 2, 2015, 18, 14, 11, 14, 1),
(17, 'I822.1.006071', 'English Drama Before Shakespeare', 4, 1999, 14, 12, 13, 15, 1),
(18, 'J940.5.006319', 'A History of Europe', 4, 2020, 15, 13, 14, 16, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_kembali`
--

CREATE TABLE `item_kembali` (
  `id_item_kembali` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `kembali_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `item_kembali`
--

INSERT INTO `item_kembali` (`id_item_kembali`, `buku_id`, `qty`, `kembali_id`) VALUES
(27, 9, 1, 20),
(28, 9, 1, 21),
(29, 9, 1, 22),
(30, 9, 1, 23),
(31, 9, 1, 24),
(32, 9, 1, 25),
(33, 9, 1, 26),
(34, 10, 1, 27),
(35, 10, 1, 28),
(36, 10, 1, 29),
(37, 9, 1, 30),
(38, 10, 1, 31),
(39, 11, 1, 32),
(40, 11, 1, 33),
(41, 9, 1, 34),
(42, 10, 1, 35),
(43, 13, 1, 36),
(44, 9, 1, 37),
(45, 15, 1, 38),
(46, 12, 1, 39),
(47, 11, 1, 40),
(48, 13, 1, 41),
(49, 13, 1, 42),
(50, 9, 1, 43),
(51, 10, 1, 44),
(52, 11, 1, 45),
(53, 10, 1, 46),
(54, 9, 1, 47),
(55, 14, 1, 48),
(56, 15, 1, 49),
(57, 14, 1, 50),
(58, 16, 1, 51),
(59, 10, 1, 52),
(60, 18, 1, 53),
(61, 18, 1, 54);

--
-- Trigger `item_kembali`
--
DELIMITER $$
CREATE TRIGGER `tambah_jumlah_buku` BEFORE INSERT ON `item_kembali` FOR EACH ROW BEGIN
	UPDATE buku SET jumlah_buku = jumlah_buku + NEW.qty
	WHERE id_buku = NEW.buku_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_pinjam`
--

CREATE TABLE `item_pinjam` (
  `id_item` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `pinjam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `item_pinjam`
--

INSERT INTO `item_pinjam` (`id_item`, `buku_id`, `qty`, `pinjam_id`) VALUES
(43, 9, 1, 36),
(44, 9, 1, 37),
(45, 9, 1, 38),
(46, 9, 1, 40),
(47, 9, 1, 41),
(48, 9, 1, 42),
(49, 9, 1, 43),
(50, 9, 1, 44),
(51, 10, 1, 45),
(52, 10, 1, 46),
(53, 10, 1, 47),
(54, 10, 1, 48),
(55, 9, 1, 49),
(56, 9, 1, 50),
(57, 10, 1, 51),
(58, 9, 1, 52),
(59, 11, 1, 53),
(60, 11, 1, 54),
(61, 13, 1, 55),
(62, 13, 1, 56),
(63, 13, 1, 57),
(64, 11, 1, 58),
(65, 11, 1, 59),
(66, 10, 1, 60),
(67, 9, 1, 61),
(68, 12, 1, 62),
(69, 15, 1, 63),
(70, 11, 1, 64),
(71, 13, 1, 65),
(72, 10, 1, 66),
(73, 9, 1, 67),
(74, 9, 1, 68),
(75, 13, 1, 69),
(76, 9, 1, 70),
(77, 9, 1, 71),
(78, 14, 1, 72),
(79, 15, 1, 73),
(80, 14, 1, 74),
(81, 13, 1, 75),
(82, 12, 1, 76),
(83, 12, 1, 77),
(84, 11, 1, 78),
(85, 9, 1, 79),
(86, 10, 1, 80),
(87, 9, 1, 81),
(88, 17, 1, 82),
(89, 18, 1, 83),
(90, 16, 1, 84),
(91, 18, 1, 85),
(92, 18, 1, 86);

--
-- Trigger `item_pinjam`
--
DELIMITER $$
CREATE TRIGGER `kurang_jumlah_buku` BEFORE INSERT ON `item_pinjam` FOR EACH ROW BEGIN
	UPDATE buku SET jumlah_buku = jumlah_buku - NEW.qty
	WHERE id_buku = NEW.buku_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `jenis_buku` varchar(30) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `jenis_buku`, `is_active`) VALUES
(7, 'Computer Science', 1),
(8, 'Divinatory Arts', 1),
(9, 'Bible', 1),
(10, 'General Management', 1),
(11, 'Human Ecology', 1),
(12, 'African Languages', 1),
(13, 'Mathematics', 1),
(14, 'Drugs', 1),
(15, 'English Drama', 1),
(16, 'History of Europe', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `level` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `user_name`, `password`, `nama_karyawan`, `no_telp`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `level`, `is_active`, `date_created`) VALUES
(2, 'Haikal', '$2y$10$hu7x6hYg6OMTcROIUfJ19eXIQAeUVhfBOg0t1by.8lrXZxIwpBw7m', 'Muhamad Brillian Haikal', '0821-2651-0230', 'Laki-Laki', '2003-09-08', 'Cimahi', 1, 1, '2020-06-23'),
(10, 'Aulia', '$2y$10$8eBaeftpKVmV.dbnOvuoJe/Meixl4GnCI1spbIJ.6n4LqtFjvf672', 'Aulia Vilnail', '0858-8265-7835', 'Laki-Laki', '2002-01-03', 'Depok', 2, 1, '2020-06-30'),
(12, 'admin', '$2y$10$lPf0DJrNqZbDwaowSYhSyOucdzP7CKMnzkDnGxZOt3s6CNn9PIXc.', 'aulia', '4353-4657-7757', 'Laki-Laki', '2003-09-08', '54645', 2, 0, '2024-01-15'),
(15, 'Andiga', '$2y$10$a6CTJR9Q8h/5ObavAeCZRezMJO9gf3hw73KDu8TuZmwBsljb7oS1q', 'digow', '0908-0483-6433', 'Laki-Laki', '2000-01-02', 'cimahi', 1, 0, '2024-01-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` int(11) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `penerbit`, `telp`, `email`, `alamat`, `is_active`) VALUES
(6, 'Elex M.K', '1212-1212-1212', 'elex@gmail.com', 'Yogyakarta', 1),
(7, 'LKiS Yogyakarta', '3829-8294-7237', 'LKiS@gmail.com', 'Aceh', 1),
(8, 'Grand Rapids', '9302-9094-8542', 'rapids@gmail.com', 'Padang', 1),
(9, 'Philip Kotler', '0935-2752-4563', 'philipkotler@gmail.com', 'Lampung', 1),
(10, 'Freeman and Company', '8129-8947-7182', 'Freeman@gmail.com', 'Bandung', 1),
(11, 'Gramedia Pustaka Utama', '2348-9275-7252', 'gramedia@gmail.com', 'bandung', 1),
(12, 'De Gruyter', '9354-5347-5838', 'Gruyter@gmail.com', 'cimahi', 1),
(13, 'Michael N.F', '0935-0829-5748', 'michael@gmail.com', 'india', 1),
(14, 'Routledge', '0293-4823-9723', 'harper@gmail.com', 'amerika', 1),
(15, 'Yogyakarta Forum', '0954-3854-7353', 'yogya@gmail.com', 'jakarta', 1),
(16, 'Random House', '0403-8972-8574', 'random@gmail.com', 'inggris', 1),
(17, 'Pearson', '9283-9572-7587', 'persen@gmail.com', 'spanyol', 1),
(18, 'Asih Jaya', '0946-8349-4383', 'jaya@gmail.com', 'jaya', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id_pengaturan` int(11) NOT NULL,
  `nama_kampus` text NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id_pengaturan`, `nama_kampus`, `alamat`, `no_telp`) VALUES
(1, 'UNIVERSITAS LOGISTIK DAN BISNIS INTERNASIONAL', 'Jl. Sari Asih No.54, Sarijadi, Kec. Sukasari, Kota Bandung, Jawa Barat 40151', '08112267778');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id_penulis` int(11) NOT NULL,
  `penulis` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id_penulis`, `penulis`, `email`, `alamat`, `is_active`) VALUES
(5, 'Jubilee enterprise', 'anjas@gmail.com', 'Yogyakarta', 1),
(6, 'R.P.Suyono', 'suyono@gmail.com', 'Papua', 1),
(7, 'Peterson David', 'irving@gmail.com', 'cimahi', 1),
(8, 'Kevin Lane Keller', 'kevin@gmail.com', 'solo', 1),
(9, 'Paul R.E', 'vincent@gmail.com', 'tangerang', 1),
(10, 'Annie Rialland', 'annie@gmail.com', 'malang', 1),
(11, 'Alexander Borovik', 'alexander@gmail.com', 'padang', 1),
(12, 'Peter Happe', 'peter@gmail.com', 'medan', 1),
(13, 'West Willis Mason', 'willis@gmail.com', 'jerman', 1),
(14, 'Setiyawati', 'setiya@gmail.com', 'asih', 1),
(15, 'Peter Happe', 'peter@gmail.com', 'amrik', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(11) NOT NULL,
  `kode_rak` varchar(10) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id_rak`, `kode_rak`, `is_active`) VALUES
(5, 'A', 1),
(6, 'B', 1),
(7, 'C', 1),
(8, 'D', 1),
(9, 'E', 1),
(10, 'F', 1),
(11, 'G', 1),
(12, 'H', 1),
(13, 'I', 1),
(14, 'J', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_kembali`
--

CREATE TABLE `transaksi_kembali` (
  `id_kembali` int(11) NOT NULL,
  `no_pengembalian` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `terlambat` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `anggota_id` int(11) NOT NULL,
  `karyawan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi_kembali`
--

INSERT INTO `transaksi_kembali` (`id_kembali`, `no_pengembalian`, `tanggal`, `terlambat`, `denda`, `total`, `bayar`, `kembalian`, `nomor`, `anggota_id`, `karyawan_id`) VALUES
(20, 'KMB/2006300001', '2020-06-30', 0, 0, 0, 0, 0, 1, 11, 2),
(21, 'KMB/2006300002', '2020-06-30', 5, 1500, 7500, 10000, 2500, 2, 11, 2),
(22, 'KMB/2006300003', '2020-06-30', 0, 0, 0, 0, 0, 3, 11, 2),
(23, 'KMB/2006300004', '2020-06-30', 0, 0, 0, 0, 0, 4, 13, 2),
(24, 'KMB/2006300005', '2020-06-30', 6, 1500, 9000, 10000, 1000, 5, 11, 2),
(25, 'KMB/2401020001', '2024-01-02', 0, 0, 0, 10, 0, 1, 11, 2),
(26, 'KMB/2401020002', '2024-01-02', 0, 0, 0, 0, 0, 2, 13, 2),
(27, 'KMB/2401020003', '2024-01-02', 0, 0, 0, 0, 0, 3, 12, 2),
(28, 'KMB/2401020004', '2024-01-02', 0, 0, 0, 0, 0, 4, 15, 2),
(29, 'KMB/2401020005', '2024-01-02', 0, 0, 0, 0, 0, 5, 16, 2),
(30, 'KMB/2401070006', '2024-01-07', 0, 0, 0, 0, 0, 6, 11, 2),
(31, 'KMB/2401090007', '2024-01-09', 1, 0, 0, 0, 0, 7, 11, 2),
(32, 'KMB/2401120008', '2024-01-12', 0, 0, 0, 0, 0, 8, 11, 2),
(33, 'KMB/2401150009', '2024-01-15', 0, 0, 0, 0, 0, 9, 13, 2),
(34, 'KMB/2401150010', '2024-01-15', 3, 1000, 3000, 5000, 2000, 10, 12, 2),
(35, 'KMB/2401150011', '2024-01-15', 6, 1000, 6000, 6000, 0, 11, 12, 2),
(36, 'KMB/2401160012', '2024-01-16', 0, 0, 0, 0, 0, 12, 11, 2),
(37, 'KMB/2401160013', '2024-01-16', 14, 1000, 14000, 900, -13100, 13, 12, 2),
(38, 'KMB/2401170014', '2024-01-17', 0, 0, 0, 0, 0, 14, 11, 2),
(39, 'KMB/2401170015', '2024-01-17', 1, 1000, 1000, 2000, 1000, 15, 11, 2),
(40, 'KMB/2401170016', '2024-01-17', 1, 1000, 1000, 4000, 3000, 16, 11, 2),
(41, 'KMB/2401170017', '2024-01-17', 0, 0, 0, 0, 0, 17, 12, 2),
(42, 'KMB/2401170018', '2024-01-17', 1, 1000, 1000, 900, -100, 18, 12, 2),
(43, 'KMB/2401170019', '2024-01-17', 1, 1000, 1000, 200, -800, 19, 12, 2),
(44, 'KMB/2401170020', '2024-01-17', 1, 1000, 1000, 430, -570, 20, 12, 2),
(45, 'KMB/2401170021', '2024-01-17', 1, 1000, 1000, 1000, 0, 21, 12, 2),
(46, 'KMB/2401170022', '2024-01-17', 0, 0, 0, 100, 0, 22, 12, 2),
(47, 'KMB/2401170023', '2024-01-17', 0, 0, 0, 0, 0, 23, 12, 2),
(48, 'KMB/2401250024', '2024-01-25', 0, 0, 0, 0, 0, 24, 11, 2),
(49, 'KMB/2401250025', '2024-01-25', 0, 0, 0, 0, 0, 25, 11, 2),
(50, 'KMB/2401250026', '2024-01-25', 0, 0, 0, 0, 0, 26, 17, 2),
(51, 'KMB/2401290027', '2024-01-29', 0, 0, 0, 0, 0, 27, 12, 2),
(52, 'KMB/2401290028', '2024-01-29', 2, 1000, 2000, 2000, 0, 28, 12, 2),
(53, 'KMB/2401300029', '2024-01-30', 0, 0, 0, 0, 0, 29, 12, 2),
(54, 'KMB/2401300030', '2024-01-30', 0, 0, 0, 0, 0, 30, 13, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pinjam`
--

CREATE TABLE `transaksi_pinjam` (
  `id_peminjaman` int(11) NOT NULL,
  `no_peminjaman` varchar(20) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `anggota_id` int(11) NOT NULL,
  `karyawan_id` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi_pinjam`
--

INSERT INTO `transaksi_pinjam` (`id_peminjaman`, `no_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`, `anggota_id`, `karyawan_id`, `nomor`, `is_active`) VALUES
(36, 'PMJ/2006300001', '2020-06-23', '2020-06-25', 11, 2, 1, 0),
(37, 'PMJ/2006300002', '2020-06-30', '2020-07-02', 11, 2, 2, 0),
(38, 'PMJ/2006300003', '2020-06-16', '2020-06-24', 11, 2, 3, 0),
(40, 'PMJ/2006300004', '2020-06-30', '2020-06-30', 11, 2, 4, 0),
(41, 'PMJ/2006300005', '2020-06-30', '2020-07-02', 13, 2, 5, 0),
(42, 'PMJ/2401020001', '2024-01-02', '2024-01-08', 12, 2, 1, 0),
(43, 'PMJ/2401020002', '2024-01-02', '2024-01-07', 13, 2, 2, 0),
(44, 'PMJ/2401020003', '2024-01-02', '2024-01-07', 13, 2, 3, 0),
(45, 'PMJ/2401020004', '2024-01-02', '2024-01-08', 15, 2, 4, 0),
(46, 'PMJ/2401020005', '2024-01-02', '2024-01-08', 15, 2, 5, 0),
(47, 'PMJ/2401020006', '2024-01-02', '2024-01-02', 15, 2, 6, 0),
(48, 'PMJ/2401020007', '2024-01-02', '2024-01-08', 16, 2, 7, 0),
(49, 'PMJ/2401020008', '2024-01-02', '2024-01-02', 13, 2, 8, 0),
(50, 'PMJ/2401070009', '2024-01-07', '2024-01-08', 11, 2, 9, 0),
(51, 'PMJ/2401090010', '2024-01-09', '2024-01-09', 12, 2, 10, 0),
(52, 'PMJ/2401110011', '2024-01-11', '2024-01-12', 12, 2, 11, 0),
(53, 'PMJ/2401120012', '2024-01-12', '2024-01-12', 12, 2, 12, 0),
(54, 'PMJ/2401150013', '2024-01-15', '2024-01-20', 12, 2, 13, 0),
(55, 'PMJ/2401150014', '2024-01-15', '2024-01-15', 12, 2, 14, 0),
(56, 'PMJ/2401150015', '2024-01-15', '2024-01-16', 12, 2, 15, 0),
(57, 'PMJ/2401150016', '2024-01-15', '2024-01-17', 13, 2, 16, 0),
(58, 'PMJ/2401160017', '2024-01-16', '2024-01-16', 12, 2, 17, 0),
(59, 'PMJ/2401160018', '2024-01-16', '2024-01-16', 12, 2, 18, 0),
(60, 'PMJ/2401160019', '2024-01-16', '2024-01-16', 11, 2, 19, 0),
(61, 'PMJ/2401160020', '2024-01-16', '2024-01-16', 13, 2, 20, 0),
(62, 'PMJ/2401160021', '2024-01-16', '2024-01-16', 16, 2, 21, 0),
(63, 'PMJ/2401170022', '2024-01-17', '2024-01-18', 11, 2, 22, 0),
(64, 'PMJ/2401170023', '2024-01-17', '2024-01-25', 11, 2, 23, 1),
(65, 'PMJ/2401170024', '2024-01-17', '2024-01-25', 12, 2, 24, 0),
(66, 'PMJ/2401170025', '2024-01-17', '2024-01-17', 12, 2, 25, 0),
(67, 'PMJ/2401170026', '2024-01-17', '2024-01-17', 15, 2, 26, 1),
(68, 'PMJ/2401170027', '2024-01-17', '2024-01-17', 16, 2, 27, 1),
(69, 'PMJ/2401170028', '2024-01-17', '2024-01-17', 13, 2, 28, 1),
(70, 'PMJ/2401170029', '2024-01-17', '2024-01-17', 12, 2, 29, 1),
(71, 'PMJ/2401170030', '2024-01-17', '2024-01-17', 12, 2, 30, 0),
(72, 'PMJ/2401250031', '2024-01-25', '2024-01-26', 12, 2, 31, 0),
(73, 'PMJ/2401250032', '2024-01-25', '2024-01-26', 11, 2, 32, 0),
(74, 'PMJ/2401250033', '2024-01-25', '2024-01-26', 16, 2, 33, 0),
(75, 'PMJ/2401260034', '2024-01-26', '2024-01-26', 17, 2, 34, 1),
(76, 'PMJ/2401260035', '2024-01-26', '2024-01-26', 15, 2, 35, 1),
(77, 'PMJ/2401260036', '2024-01-26', '2024-01-26', 16, 2, 36, 1),
(78, 'PMJ/2401260037', '2024-01-26', '2024-01-27', 11, 2, 37, 1),
(79, 'PMJ/2401260038', '2024-01-26', '2024-01-30', 13, 2, 38, 1),
(80, 'PMJ/2401270039', '2024-01-27', '2024-01-27', 13, 2, 39, 0),
(81, 'PMJ/2401270040', '2024-01-27', '2024-01-30', 11, 2, 40, 1),
(82, 'PMJ/2401270041', '2024-01-27', '2024-01-31', 17, 2, 41, 1),
(83, 'PMJ/2401270042', '2024-01-27', '2024-01-27', 15, 2, 42, 1),
(84, 'PMJ/2401270043', '2024-01-27', '2024-01-31', 16, 2, 43, 0),
(85, 'PMJ/2401300044', '0000-00-00', '0000-00-00', 16, 2, 44, 0),
(86, 'PMJ/2401300044', '0000-00-00', '0000-00-00', 17, 2, 44, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `penerbit_id` (`penerbit_id`),
  ADD KEY `penulis_id` (`penulis_id`),
  ADD KEY `rak_id` (`rak_id`),
  ADD KEY `jenis_id` (`jenis_id`);

--
-- Indeks untuk tabel `item_kembali`
--
ALTER TABLE `item_kembali`
  ADD PRIMARY KEY (`id_item_kembali`),
  ADD KEY `buku_id` (`buku_id`),
  ADD KEY `kembali_id` (`kembali_id`);

--
-- Indeks untuk tabel `item_pinjam`
--
ALTER TABLE `item_pinjam`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `buku_id` (`buku_id`),
  ADD KEY `pinjam_id` (`pinjam_id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id_penulis`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- Indeks untuk tabel `transaksi_kembali`
--
ALTER TABLE `transaksi_kembali`
  ADD PRIMARY KEY (`id_kembali`),
  ADD KEY `anggota_id` (`anggota_id`),
  ADD KEY `karyawan_id` (`karyawan_id`);

--
-- Indeks untuk tabel `transaksi_pinjam`
--
ALTER TABLE `transaksi_pinjam`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `anggota_id` (`anggota_id`),
  ADD KEY `karyawan_id` (`karyawan_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `item_kembali`
--
ALTER TABLE `item_kembali`
  MODIFY `id_item_kembali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `item_pinjam`
--
ALTER TABLE `item_pinjam`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id_penerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id_pengaturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id_penulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `rak`
--
ALTER TABLE `rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `transaksi_kembali`
--
ALTER TABLE `transaksi_kembali`
  MODIFY `id_kembali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `transaksi_pinjam`
--
ALTER TABLE `transaksi_pinjam`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`penerbit_id`) REFERENCES `penerbit` (`id_penerbit`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`penulis_id`) REFERENCES `penulis` (`id_penulis`),
  ADD CONSTRAINT `buku_ibfk_3` FOREIGN KEY (`rak_id`) REFERENCES `rak` (`id_rak`),
  ADD CONSTRAINT `buku_ibfk_4` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id_jenis`);

--
-- Ketidakleluasaan untuk tabel `item_kembali`
--
ALTER TABLE `item_kembali`
  ADD CONSTRAINT `item_kembali_ibfk_1` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `item_kembali_ibfk_2` FOREIGN KEY (`kembali_id`) REFERENCES `transaksi_kembali` (`id_kembali`);

--
-- Ketidakleluasaan untuk tabel `item_pinjam`
--
ALTER TABLE `item_pinjam`
  ADD CONSTRAINT `item_pinjam_ibfk_1` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `item_pinjam_ibfk_2` FOREIGN KEY (`pinjam_id`) REFERENCES `transaksi_pinjam` (`id_peminjaman`);

--
-- Ketidakleluasaan untuk tabel `transaksi_kembali`
--
ALTER TABLE `transaksi_kembali`
  ADD CONSTRAINT `transaksi_kembali_ibfk_1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `transaksi_kembali_ibfk_2` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawan` (`id_karyawan`);

--
-- Ketidakleluasaan untuk tabel `transaksi_pinjam`
--
ALTER TABLE `transaksi_pinjam`
  ADD CONSTRAINT `transaksi_pinjam_ibfk_1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `transaksi_pinjam_ibfk_2` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawan` (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
