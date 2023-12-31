-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Nov 2023 pada 05.24
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen_pegawai`
--

CREATE TABLE `absen_pegawai` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `absen_pegawai`
--

INSERT INTO `absen_pegawai` (`id`, `tanggal`, `hari`, `jam_masuk`, `jam_pulang`, `keterangan`, `nip`) VALUES
(1, '2023-09-01', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(4, '2023-09-01', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(5, '2023-09-01', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(6, '2023-09-01', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(7, '2023-09-01', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(8, '2023-09-01', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(9, '2023-01-31', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(10, '2023-09-02', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(11, '2023-09-03', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(12, '2023-09-04', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(25, '2023-09-05', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(27, '2023-09-06', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(28, '2023-09-07', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(29, '2023-09-08', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(30, '2023-09-09', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(31, '2023-09-10', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(32, '2023-09-11', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(33, '2023-09-12', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(34, '2023-09-13', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(35, '2023-09-14', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(36, '2023-09-15', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(38, '2023-09-16', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(39, '2023-09-17', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(40, '2023-09-18', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(41, '2023-09-19', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(42, '2023-09-20', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(44, '2023-09-21', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(45, '2023-09-22', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(46, '2023-09-23', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(47, '2023-09-24', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(48, '2023-09-25', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(49, '2023-09-26', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(50, '2023-09-27', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(51, '2023-09-28', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(52, '2023-09-29', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(53, '2023-09-30', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(54, '2023-10-01', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(55, '2023-10-02', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(56, '2023-10-03', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(57, '2023-10-04', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(58, '2023-10-05', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(59, '2023-10-06', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(60, '2023-10-07', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(61, '2023-10-08', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(62, '2023-10-09', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(63, '2023-10-10', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(64, '2023-10-11', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(65, '2023-10-12', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(66, '2023-10-13', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(67, '2023-10-14', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(68, '2023-10-15', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(69, '2023-10-16', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(70, '2023-10-17', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(71, '2023-10-18', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(72, '2023-10-19', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(73, '2023-10-20', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(74, '2023-10-21', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(75, '2023-10-22', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(76, '2023-10-23', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(77, '2023-10-24', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(78, '2023-10-25', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(79, '2023-10-26', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(80, '2023-10-27', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(81, '2023-10-28', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(82, '2023-10-29', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196512312007011085'),
(83, '2023-10-30', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(84, '2023-10-31', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196512312007011085'),
(85, '2023-09-02', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(86, '2023-09-03', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(87, '2023-09-04', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(88, '2023-09-05', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(89, '2023-09-06', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(90, '2023-09-07', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(91, '2023-09-08', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(92, '2023-09-09', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(93, '2023-09-10', 'Minggu', '07:30:00', '16:00:00', 'Libur', '196908112008012003'),
(94, '2023-09-11', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(95, '2023-09-12', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(96, '2023-09-13', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(97, '2023-09-14', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(98, '2023-09-15', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(99, '2023-09-16', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(100, '2023-09-17', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(101, '2023-09-18', 'Senin', '07:30:00', '16:00:00', 'Libur', '196908112008012003'),
(102, '2023-09-19', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(103, '2023-09-20', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(104, '2023-09-21', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(105, '2023-09-22', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(106, '2023-09-23', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(107, '2023-09-24', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(108, '2023-09-25', 'Senin', '07:30:00', '16:30:00', 'Hadir', '196908112008012003'),
(109, '2023-09-26', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(110, '2023-09-27', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(111, '2023-09-28', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(112, '2023-09-29', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(113, '2023-09-30', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(114, '2023-09-02', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(115, '2023-09-03', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(116, '2023-09-04', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(117, '2023-09-05', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(118, '2023-10-01', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(119, '2023-10-02', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(120, '2023-10-03', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(121, '2023-10-04', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(122, '2023-10-05', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(123, '2023-10-06', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(124, '2023-10-07', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(125, '2023-10-08', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(126, '2023-10-09', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(127, '2023-10-10', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(128, '2023-10-11', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(129, '2023-10-12', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(130, '2023-10-13', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(131, '2023-10-14', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(132, '2023-10-15', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(133, '2023-10-16', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(134, '2023-10-17', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(135, '2023-10-18', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(136, '2023-10-19', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(137, '2023-10-20', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(138, '2023-10-21', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(139, '2023-10-22', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(140, '2023-10-23', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(141, '2023-10-24', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(142, '2023-10-25', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(143, '2023-10-26', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(144, '2023-10-27', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(145, '2023-10-28', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(146, '2023-10-29', 'Minggu', '00:00:00', '00:00:00', 'Libur', '196908112008012003'),
(147, '2023-10-30', 'Senin', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(148, '2023-10-31', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '196908112008012003'),
(149, '2023-09-06', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(150, '2023-09-07', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(151, '2023-09-08', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(152, '2023-09-09', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(153, '2023-09-10', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(154, '2023-09-11', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(155, '2023-09-12', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(156, '2023-09-13', 'Rabu', '07:23:00', '16:00:00', 'Hadir', '197512172007011004'),
(157, '2023-09-14', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(158, '2023-09-15', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(159, '2023-09-16', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(160, '2023-09-17', 'Minggu', '07:30:00', '16:00:00', 'Libur', '197512172007011004'),
(161, '2023-09-18', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(162, '2023-09-19', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(163, '2023-09-20', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(164, '2023-09-21', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(165, '2023-09-22', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(166, '2023-09-23', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(167, '2023-09-24', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(168, '2023-09-25', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(169, '2023-09-26', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(170, '2023-09-27', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(171, '2023-09-28', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(172, '2023-09-29', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(173, '2023-09-30', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(174, '2023-10-01', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(175, '2023-10-02', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(176, '2023-10-03', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(177, '2023-10-04', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(178, '2023-10-05', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(179, '2023-10-06', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(180, '2023-10-07', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(181, '2023-10-08', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(182, '2023-10-09', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(183, '2023-10-10', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(184, '2023-10-11', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(185, '2023-10-12', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(186, '2023-10-13', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(187, '2023-10-14', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(188, '2023-10-15', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(189, '2023-10-16', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(190, '2023-10-17', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(191, '2023-10-18', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(192, '2023-10-19', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(193, '2023-10-20', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(194, '2023-10-21', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(195, '2023-10-22', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(196, '2023-10-23', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(197, '2023-10-24', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(198, '2023-10-25', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(199, '2023-10-26', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(200, '2023-10-27', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(201, '2023-10-28', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(202, '2023-10-29', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197512172007011004'),
(203, '2023-10-30', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(204, '2023-10-31', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197512172007011004'),
(205, '2023-09-02', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(206, '2023-09-03', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(207, '2023-09-04', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(208, '2023-09-05', 'Selasa', '07:03:00', '16:00:00', 'Hadir', '197712681997032003'),
(209, '2023-09-06', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(210, '2023-09-07', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(211, '2023-09-08', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(212, '2023-09-09', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(213, '2023-09-10', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(214, '2023-09-11', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(215, '2023-09-12', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(216, '2023-09-13', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(217, '2023-09-14', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(218, '2023-09-15', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(219, '2023-09-16', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(220, '2023-09-17', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(221, '2023-09-18', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(222, '2023-09-19', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(223, '2023-09-20', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(224, '2023-09-21', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(225, '2023-09-22', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(226, '2023-09-23', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(227, '2023-09-24', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(228, '2023-09-25', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(229, '2023-09-26', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(230, '0000-00-00', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(231, '2023-09-28', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(232, '2023-09-29', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(233, '2023-09-30', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(234, '2023-10-01', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(235, '2023-10-02', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(236, '2023-10-03', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(237, '2023-10-04', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(238, '2023-10-05', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(239, '2023-10-06', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(240, '2023-10-07', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(241, '2023-10-08', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(242, '2023-10-09', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(243, '2023-10-10', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(244, '2023-10-11', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(245, '2023-10-12', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(246, '2023-10-13', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(247, '2023-10-14', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(248, '2023-10-15', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(249, '2023-10-16', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(250, '2023-10-17', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(251, '2023-10-18', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(252, '2023-10-19', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(253, '2023-10-20', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(254, '2023-10-21', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(255, '2023-10-22', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(256, '2023-10-23', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(257, '2023-10-24', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(258, '2023-10-25', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(259, '2023-10-26', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(260, '2023-10-27', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(261, '2023-10-28', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(262, '2023-10-29', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197712681997032003'),
(263, '2023-10-30', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(264, '2023-10-31', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197712681997032003'),
(265, '2023-09-02', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(266, '2023-09-02', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(267, '2023-09-03', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(268, '2023-09-03', 'Minggu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(269, '2023-09-04', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(270, '2023-09-04', 'Senin', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(271, '2023-09-05', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(272, '2023-09-05', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(273, '2023-09-06', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(274, '2023-09-06', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(275, '2023-09-07', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(276, '2023-09-07', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(277, '2023-09-08', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(278, '2023-09-08', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(279, '2023-09-09', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(280, '2023-09-09', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(281, '2023-09-10', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(282, '2023-09-10', 'Minggu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(283, '2023-09-11', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(284, '2023-09-11', 'Senin', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(285, '2023-09-12', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(286, '2023-09-12', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(287, '2023-09-13', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(288, '2023-09-13', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(289, '2023-09-14', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(290, '2023-09-14', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(291, '2023-09-15', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(292, '2023-09-15', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(293, '2023-09-16', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(294, '2023-09-16', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(295, '2023-09-17', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(296, '2023-09-17', 'Minggu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(297, '2023-09-18', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(298, '2023-09-18', 'Senin', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(299, '2023-09-19', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(300, '2023-09-19', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(301, '2023-09-20', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(302, '2023-09-20', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(303, '2023-09-21', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(304, '2023-09-21', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(305, '2023-09-22', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(306, '2023-09-22', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(307, '2023-09-23', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(308, '2023-09-23', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(309, '2023-09-24', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(310, '2023-09-24', 'Minggu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(311, '2023-09-25', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(312, '2023-09-25', 'Senin', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(313, '2023-09-26', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(314, '2023-09-26', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(315, '2023-09-27', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(316, '2023-09-27', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(317, '2023-09-28', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(318, '2023-09-28', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(319, '2023-09-29', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(320, '2023-09-29', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(321, '2023-09-30', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(322, '2023-09-30', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(323, '2023-10-01', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(324, '2023-10-01', 'Minggu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(325, '2023-10-02', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(326, '2023-10-02', 'Senin', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(327, '2023-10-03', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(328, '2023-10-03', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(329, '2023-10-04', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(330, '2023-10-04', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(331, '2023-10-05', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(332, '2023-10-05', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(333, '2023-10-06', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(334, '2023-10-06', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(335, '2023-10-07', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(336, '2023-10-07', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(337, '2023-10-08', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(338, '2023-10-08', 'Minggu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(339, '2023-10-09', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(340, '2023-10-09', 'Senin', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(341, '2023-10-10', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(342, '2023-10-10', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(343, '2023-10-11', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(344, '2023-10-11', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(345, '2023-10-12', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(346, '2023-10-12', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(347, '2023-10-13', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(348, '2023-10-13', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(349, '2023-10-14', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(350, '2023-10-14', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(351, '2023-10-15', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(352, '2023-10-15', 'Minggu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(353, '2023-10-16', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(354, '2023-10-16', 'Senin', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(355, '2023-10-17', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(356, '2023-10-17', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(357, '2023-10-18', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(358, '2023-10-18', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(359, '2023-10-19', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(360, '2023-10-19', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(361, '2023-10-20', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(362, '2023-10-20', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(363, '2023-10-21', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(364, '2023-10-21', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(365, '2023-10-22', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(366, '2023-10-22', 'Minggu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(367, '2023-10-23', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(368, '2023-10-23', 'Senin', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(369, '2023-10-24', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(370, '2023-10-24', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(371, '2023-10-25', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(372, '2023-10-25', 'Rabu', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(373, '2023-10-26', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(374, '2023-10-26', 'Kamis', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(375, '2023-10-27', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(376, '2023-10-27', 'Jumat', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(377, '2023-10-28', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(378, '2023-10-28', 'Sabtu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(379, '2023-10-29', 'Minggu', '00:00:00', '00:00:00', 'Libur', '197806252010011010'),
(380, '2023-10-29', 'Minggu', '00:00:00', '00:00:00', 'Libur', '198507312010012013'),
(381, '2023-10-30', 'Senin', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(382, '2023-10-30', 'Senin', '07:30:00', '16:00:00', 'Hadir', '198507312010012013'),
(383, '2023-10-31', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '197806252010011010'),
(384, '2023-10-31', 'Selasa', '07:30:00', '16:00:00', 'Hadir', '198507312010012013');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `Pasword` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`id`, `username`, `Pasword`, `nama_lengkap`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `nip` varchar(100) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `golongan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`nip`, `nama_pegawai`, `jabatan`, `golongan`) VALUES
('196512312007011085', 'Zulkarnaini S.H', 'Lurah', 'III / c'),
('196908112008012003', 'Yulhaida', 'Staff', 'II / d'),
('197512172007011004', 'Andre Wijaya S.T', 'Kasi Ketentraman & Ketertiban', 'III / b'),
('197712681997032003', 'Fitrah Dewi A.md.', 'Kasi Kesejahteraan Sosial', 'III / d'),
('197806252010011010', 'Ishariyanto A.md', 'Kasi Pemerintahan', 'III / b'),
('198507312010012013', 'Yefrina Akhyudelpa, SKM., MM', 'Sekretaris Lurah', 'III / c');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen_pegawai`
--
ALTER TABLE `absen_pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nip` (`nip`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `idx_nip` (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen_pegawai`
--
ALTER TABLE `absen_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absen_pegawai`
--
ALTER TABLE `absen_pegawai`
  ADD CONSTRAINT `fk_nip` FOREIGN KEY (`nip`) REFERENCES `tb_pegawai` (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
