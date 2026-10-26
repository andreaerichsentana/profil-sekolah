-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 02:17 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_profil_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(12, 'Upacara Bendera', '2023-08-26 09:36:41', 'Upacara Bendera Setiap Hari Senin', '2023-08-27', '2023-08-27', 'SMP Negeri 1 Gunung Malela', '07.30-08.30', 'Upacara Bendera', 'MUHAMMAD RIZKY PRANATA'),
(13, 'Kegitan ekstrakurikuler sekolah', '2023-08-26 09:37:34', 'Kegitan ekstrakurikuler sekolah Setiap Jumat', '2023-08-25', '2023-08-25', 'SMP Negeri 1 Gunung Malela', '09.00-11.00', 'Kegitan ekstrakurikuler sekolah Setiap Jumat', 'MUHAMMAD RIZKY PRANATA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(8, 'SMP Negeri 1 Gunung Malela', '2023-08-26 10:24:26', 7, 'MUHAMMAD RIZKY PRANATA', 6, '0d5a3329991fccbaf098841c431d414b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(14, 'Pendaftaran Sd Swasta It Al-Ikhwan Perdagangan', 'Brosur Pendaftaran Sd Swasta It Al-Ikhwan Perdagangan', '2023-04-05 20:23:34', 'Sd Swasta It Al-Ikhwan Perdagangan', 0, '8676204138610ae18092bc3d4272cc80.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(19, '-', '2022-07-27 07:50:34', '553a931e252ed1943649d1b380c0c0b1.png', 4, 1, 'Kurnia Agung'),
(20, '-', '2022-07-27 07:50:45', '0b437d2becfbd73d34d35c3b457049d9.png', 4, 1, 'Kurnia Agung'),
(21, '-', '2022-07-27 07:50:54', '7e51facf2598b268c359c94b7d9a5905.png', 4, 1, 'Kurnia Agung'),
(22, '-', '2022-07-27 07:51:03', 'aae55c4f0f0e3481a90eed16c5b357de.png', 4, 1, 'Kurnia Agung'),
(23, '-', '2022-07-27 07:53:21', '2c11af58ffe920f86581cc56312a0dc9.png', 5, 1, 'Kurnia Agung'),
(24, '-', '2022-07-27 07:53:33', '236d182df7bb93a20b4621c4280fc1d2.png', 5, 1, 'Kurnia Agung'),
(25, '-', '2022-07-27 07:53:40', '06389ab2c6d8bb12171c4957f387b1ba.png', 5, 1, 'Kurnia Agung'),
(26, '-', '2022-07-27 07:53:48', 'bf66f721e94d255f040e5a3f4950596c.png', 5, 1, 'Kurnia Agung'),
(27, 'Alhamdulillah... Acara berbagi kurma hari ini berjalan lanca', '2023-04-05 20:27:38', '4a6dfdf3f6069a168235773a2759858d.jpg', 6, 1, 'Rizky Aulia'),
(28, 'Alhamdulillah... Acara berbagi kurma hari ini berjalan lanca', '2023-04-05 20:28:09', 'd85c0514426a516ce78ad761712fea33.jpg', 6, 1, 'Rizky Aulia'),
(29, 'Alhamdulillah... Acara berbagi kurma hari ini berjalan lanca', '2023-04-05 20:28:23', '0a4aa78ccec2ee1f202df14434e3f3ff.jpg', 6, 1, 'Rizky Aulia'),
(30, 'Alhamdulillah... Acara berbagi kurma hari ini berjalan lanca', '2023-04-05 20:28:36', 'f78999e6cfbeccdcc5b399e91fb254e9.jpg', 6, 1, 'Rizky Aulia'),
(31, 'Alhamdulillah... Acara hari ini berjalan dengan lancar... Tr', '2023-04-05 20:30:56', '45753494db600bbdadf84b679239350e.jpg', 7, 1, 'Rizky Aulia'),
(32, 'Alhamdulillah... Acara hari ini berjalan dengan lancar... Tr', '2023-04-05 20:31:18', 'dd66c2adaf96ab3bbf15f5102b6dfc63.jpg', 7, 1, 'Rizky Aulia'),
(33, 'Sekolah', '2023-08-26 10:24:54', 'd44db348b8b16754564d602d180ceb6f.jpg', 8, 7, 'MUHAMMAD RIZKY PRANATA'),
(34, 'Aula', '2023-08-26 10:25:05', '76fcb012bd17e4fdb32bdaa10466cd07.jpg', 8, 7, 'MUHAMMAD RIZKY PRANATA'),
(35, 'Lapangan', '2023-08-26 10:25:26', 'ef6fcc940406a86bc9769316c51f94b9.jpg', 8, 7, 'MUHAMMAD RIZKY PRANATA'),
(36, 'Baris Siswa', '2023-08-26 10:25:35', 'cd9036a0189a181c7aedc567cfc06706.jpg', 8, 7, 'MUHAMMAD RIZKY PRANATA'),
(37, 'Sekolah', '2023-08-26 10:25:51', 'f6a4c1670afafd2bc0df701c2a9a1f3d.jpg', 8, 7, 'MUHAMMAD RIZKY PRANATA'),
(38, 'sekolah', '2023-08-26 10:26:14', '64fe5d0405cdd1a047f4b730db27dc7b.jpg', 8, 7, 'MUHAMMAD RIZKY PRANATA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(17, '1987040712345678', 'Budi Susanto, S.Pd', 'L', 'Gunung Malela', '25 Agustus 1993', 'Matematika', 'c67185dbafb94b0c5d1a62208e88036c.png', '2023-08-26 10:04:03'),
(18, '1978121212345679', 'Siti Rahayu, S.Pd', 'P', 'Perdagangan', '12 Juli 1993', 'Bahasa Indonesia', '07dcc334377e57aa0207c304c7c4b1cc.png', '2023-08-26 10:05:23'),
(19, '1985060512345680', 'Agus Setiawan, M.Pd', 'L', 'Pematang Siantar', '22 Mei 1990', 'Ilmu Pengetahuan Alam (IPA)', 'ad29e5f875bc9a9e13ab992164100e69.png', '2023-08-26 10:06:15'),
(20, '1982103012345681', 'Retno Wulandari, S.Pd', 'P', 'Serbelawan', '12 Februari 1995', 'Seni Budaya', 'f40fd20e9a57792fff56f44b8715f86b.png', '2023-08-26 10:07:07'),
(21, '1983041522345682', 'Darmawan, M.Pd', 'L', 'Beringin', '11 Mei 1995', 'Bahasa Inggris', 'fb6ceaa6d7445d526da2c443c16b0472.png', '2023-08-26 10:08:18'),
(22, '1979091812345683', 'Ani Pratiwi, S.Pd', 'P', 'Perdagangan', '21 Juli 1996', 'Sejarah', 'acfe06cd6ae4c0492495260d7bf733f0.png', '2023-08-26 10:09:08'),
(23, '1981080912345684', 'Suryanto, M.Pd', 'L', 'Perumnas Batu 6', '21 September 1996', 'Pendidikan Jasmani dan Olahraga (PJOK)', 'bd3e8b831769d7e181008051cb3adc31.png', '2023-08-26 10:10:03'),
(24, '1989012312345685', 'Lestari Sari, S.Pd', 'P', 'Pendidikan Agama', '11 Mei 1997', 'Pendidikan Agama', '6837f459cbedc210aede1f64dfbc9df0.png', '2023-08-26 10:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', 0),
(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 03:45:57', 0),
(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:53:19', 0),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', 0),
(8, 'M Fikri', 'fikrifiver97@gmail.com', '084375684364', 'Hi There, Would you please help me about register?', '2018-08-06 13:51:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(14, 'Pendidikan', '2023-08-26 09:49:18'),
(15, ' Olahraga', '2023-08-26 09:49:25'),
(16, 'Seni dan Budaya', '2023-08-26 09:49:33'),
(17, 'Lingkungan', '2023-08-26 09:49:39'),
(18, 'Prestasi Siswa', '2023-08-26 09:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 15:09:07', '1', 24, 0),
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 15:14:26', '1', 24, 0),
(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 03:54:56', '1', 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(7, 'MUHAMMAD RIZKY PRANATA', NULL, 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'rizkypranata@gmail.com', '+62 823-4991-3930', NULL, NULL, NULL, NULL, 1, '1', '2023-08-26 09:32:15', '7a45b394ce1ac2c5c1919464838d384c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(8, 'Pengumuman Kelulusan ', 'Pengumuman Kelulusan Siswa Kelas 3 ', '2023-08-26 09:38:33', 'MUHAMMAD RIZKY PRANATA'),
(9, 'Pengumuman Pendaftaran', 'Pengumuman Buka Pendaftaran Sekolah SMP Negeri 1 Gunung Malela', '2023-08-26 09:39:25', 'MUHAMMAD RIZKY PRANATA'),
(10, 'Pengumuman Seleksi', 'Pengumuman Seleksi ppbd SMP ', '2023-08-26 09:39:48', 'MUHAMMAD RIZKY PRANATA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2022-07-18 01:51:32', '::1', 'Chrome'),
(932, '2022-07-19 15:24:09', '::1', 'Chrome'),
(933, '2022-07-19 17:54:49', '::1', 'Chrome'),
(934, '2022-07-22 03:52:16', '::1', 'Chrome'),
(935, '2022-07-25 02:17:36', '::1', 'Chrome'),
(936, '2022-07-26 10:07:37', '::1', 'Chrome'),
(937, '2022-07-27 01:59:32', '::1', 'Chrome'),
(938, '2022-07-28 02:38:31', '::1', 'Chrome'),
(939, '2022-07-28 04:47:36', '127.0.0.1', 'Firefox'),
(940, '2022-08-03 07:07:04', '::1', 'Chrome'),
(941, '2022-08-09 08:02:36', '::1', 'Chrome'),
(942, '2022-08-11 02:08:05', '::1', 'Chrome'),
(943, '2022-08-16 03:12:10', '::1', 'Chrome'),
(944, '2023-04-05 15:48:58', '::1', 'Chrome'),
(945, '2023-04-05 17:49:41', '::1', 'Chrome'),
(946, '2023-08-26 09:30:51', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
(13, '2023001001', 'Ani Fitriani', 'P', 1, '1d30f7b93166f7deab20348cb1d6c274.png'),
(14, '2023001002', 'Budi Pratama', 'L', 1, '2b15eb77c158b2521fc04ef8918ce583.png'),
(15, '2023001003', 'Cinta Wulandari', 'P', 1, '985d7fdb0d1865f6a4c3740ce711ebd6.png'),
(16, '2023001004', 'Dwi Cahyono', 'L', 1, 'cd15acd09a5c9846740e686f68c43113.png'),
(17, '2022002001', 'Eka Saputra', 'L', 2, '7c132bdf3bb3052c6a02057d352ffee5.png'),
(18, '2022002002', 'Fika Setiawan', 'L', 2, '51eedfe6c82e02810167ce057c01f08e.png'),
(19, '2022002003', 'Gita Wijayanti', 'P', 2, 'fb1b91e3c5d04adec5ffb9dee904c66d.png'),
(20, '2022002004', 'Hani Fitriani', 'P', 2, '4454a6f21d65fb1bf502b53ee921b7cc.png'),
(21, '2021003001', 'Irfan Prasetyo', 'L', 3, '746307ccbc4fb38ad2bb604042a37729.png'),
(22, '2021003002', 'Joko Santoso', 'L', 3, '638ff97a51487824bdb118594cc54cd3.png'),
(23, '2021003003', 'Kartika Sari', 'P', 3, '47d7c2b69ff4aa1d50f305897b4405db.png'),
(24, '2021003004', 'Lina Novianti', 'P', 3, '60b47698fddb0ae1e0e2bdaeb9fd884a.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(30, 'SMP Negeri 1 Gunung Malela Menyelenggarakan Lomba Membaca Puisi Antar Kelas', '<p>Pada hari Senin, 15 Agustus 2023, SMP Negeri 1 Gunung Malela sukses menyelenggarakan lomba membaca puisi antar kelas. Acara yang digelar di ruang aula sekolah ini bertujuan untuk meningkatkan minat baca dan kreativitas siswa dalam berbicara di depan umum.</p>\r\n', '2023-08-26 09:52:42', 14, 'Pendidikan', 0, 'd24b2a75024682bd28d30a051f6c1bd3.png', 7, 'MUHAMMAD RIZKY PRANATA', 0, 'smp-negeri-1-gunung-malela-menyelenggarakan-lomba-membaca-puisi-antar-kelas'),
(31, 'Tim Sepak Bola Negeri 1 Gunung Malela Raih Juara 1 dalam Turnamen Regional', '<p>Tim Sepak Bola SMP Negeri 1 Gunung Malela menunjukkan prestasi luar biasa dengan meraih juara pertama dalam turnamen Sepak Bola tingkat regional yang digelar di Kabupaten Simalungun. Mereka menang dengan skor telak 2-1 di final yang berlangsung pada Minggu lalu.</p>\r\n', '2023-08-26 09:54:37', 15, ' Olahraga', 2, 'c333fbc92d76e350ce261d56c866936f.png', 7, 'MUHAMMAD RIZKY PRANATA', 0, 'tim-sepak-bola-negeri-1-gunung-malela-raih-juara-1-dalam-turnamen-regional'),
(32, 'Pentas Seni Harmony of Cultures Meriahkan Peringatan Hari Kemerdekaan', '<p>Sekolah SMP Negeri 1 Gunung Malela menggelar pentas seni bertajuk &quot;Harmony of Cultures&quot; sebagai bagian dari peringatan Hari Kemerdekaan. Acara ini menampilkan beragam pertunjukan seni tradisional dari berbagai daerah di Indonesia.</p>\r\n', '2023-08-26 09:56:17', 16, 'Seni dan Budaya', 0, '5d57152ab2748f72316af60541d1426c.png', 7, 'MUHAMMAD RIZKY PRANATA', 0, 'pentas-seni-harmony-of-cultures-meriahkan-peringatan-hari-kemerdekaan'),
(33, 'SMP Negeri 1 Gunung Malela Luncurkan Program Peduli Lingkungan Go Green', '<p>Sekolah ini telah meluncurkan program peduli lingkungan yang diberi nama Go Green. Dalam program ini, siswa dan guru bekerja sama untuk menjaga kebersihan sekolah, mengurangi penggunaan plastik sekali pakai, dan mengadakan kegiatan penanaman pohon secara berkala.</p>\r\n', '2023-08-26 09:58:18', 17, 'Lingkungan', 4, '6d90a1ff128e5da388132e25500c9b14.png', 7, 'MUHAMMAD RIZKY PRANATA', 0, 'smp-negeri-1-gunung-malela-luncurkan-program-peduli-lingkungan-go-green');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=947;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
