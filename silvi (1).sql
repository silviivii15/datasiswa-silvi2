-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Mar 2023 pada 07.48
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silvi`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `joinsiswa`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `joinsiswa` (
`id` int(9)
,`nis` int(10)
,`foto` varchar(100)
,`nama` varchar(50)
,`angkatan` varchar(20)
,`id_jurusan` int(10)
,`jurusan` varchar(100)
,`email` varchar(20)
,`hp` varchar(15)
,`alamat` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(9) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `jurusan`) VALUES
(2, 'RPL'),
(3, 'TKJ'),
(4, 'TBSM'),
(5, 'TOI'),
(6, 'DKV');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(9) NOT NULL,
  `nis` int(10) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `angkatan` varchar(20) NOT NULL,
  `id_jurusan` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `foto`, `nama`, `angkatan`, `id_jurusan`, `email`, `hp`, `alamat`) VALUES
(1, 5, 'silvi.jpg', 'silvi', '2020', 1, 'silviivii@gmail.com', '085708171404', 'kp.cidahu rt 2/rw 3'),
(6, 202110139, 'naswar.png', 'AJI NASWAR PURNAMA', '2020', 2, 'ajinaswar@gmail.com', '087813534812', 'JL.PURBARATU AWILUAR RT 02/RW 01'),
(7, 202110140, 'alpi1.jpg', 'ALFI NURSAKINAH', '2020', 2, 'alfi@gmail.com', '085727248876', 'JL.PURBARATU RT 03/RW 09'),
(8, 202110141, 'akma.jpg', 'AQMARINA FALAHIA', '2020', 2, 'aqmarina@gmail.com', '085786545370', 'JL.LEUWIANYAR RT 04/RW 21'),
(9, 202110142, 'ARGI.jpeg', 'ARGI HENDRA PRAMANA', '2020', 2, 'argi@gmail.com', '087700226224', 'JL.SUKAMAJU KEL.SUKAMENAK KEC.PURBARATU'),
(10, 202110143, 'arsal.jpg', 'ARSAL DZULKIFLI', '2020', 2, 'arsal@gmail.com', '081915702051', 'JL.PURBARATU CIHAJI KALER RT 02/RW 013'),
(11, 202110144, 'asri1.jpg', 'ASRI YUNIAR', '2020', 2, 'asri@gmail.com', '085700210596', 'LENGKONG KALER RT 5/RW 3'),
(12, 202110145, 'desi1.jpg', 'DESI LESTARI', '2020', 2, 'desi@gmail.com', '081572519198', 'KP.PASIRJAYA RT 01/RW 05'),
(13, 202110146, 'DHAPA.jpeg', 'DHAPA FAZALIKHA', '2020', 2, 'dhapa@gmail.com', '082139435507', 'JL.CISALAK'),
(14, 202110147, 'gandi.jpg', 'GANDHI ARIEL PANGESTU', '2020', 2, 'gandhi@gmail.com', '089655503838', 'Jl.Lengkong Barat RT.04 RW.01'),
(15, 202110148, 'irsyad1.JPG', 'IRSYAD ABIDIN', '2020', 2, 'irsyad@gmail.com', '085294030170', 'Jln.KH.Tubagus Abdullah,kp.Cimerak'),
(16, 202110151, 'lia1.jpg', 'LIA AULIA NINGSIH', '2020', 2, 'lia@gmail.com', '085876798807', 'kp Sukasirna RT04 RW06  sukanagara,purbaratu'),
(17, 202110152, 'lutfi1.jpg', 'LUTFI AZHAR RISQULLAH', '2020', 2, 'lutfi@gmail.com', '081776436959', 'Perum Graha Persada Sindangkasih Ciamis'),
(18, 202110153, 'azfa.jpeg', 'MUHAMMAD AZFA HUWAIZA AL AFLAH', '2020', 2, 'azfa@gmail.com', '082123824490', 'Jalan Lengkong, Gg. Mesjid, Rt. 002/Rw. 012 No. 35'),
(19, 202110154, 'fakhri1.jpg', 'MUHAMMAD FAKHRI PRATAMA', '2020', 2, 'fakhri@gmail.com', '081929658022', 'sambongpari mangkubumi, kp babakan kadu rt 03 rw 1'),
(20, 202110155, 'rafly.jpeg', 'MUHAMMAD RAFLY AZHAR RAMADAN', '2020', 2, 'rafly@gmail.com', '081804695794', 'Jl Awipari Tengah RT/RW 03/03 Kel Awipari Kec Cibe'),
(21, 202110156, 'muhtar.jpeg', 'MUHTAR AZIZ', '2020', 2, 'muhtar@gmail.com', '087879060475', 'Kp.Cikareo Rt06/Rw03 Kec.Purbaratu Kel.Purbaratu'),
(22, 202110157, 'vii.jpg', 'NENG SILVI', '2020', 2, 'silvi@gmail.com', '085708171404', 'KP.CIDAHU RT 02/RW 03 KEL.SUKAJAYA KEC.PURBARATU'),
(23, 202110158, 'nevi.jpeg', 'NEVI SOPIANI', '2020', 2, 'nevi@gmai.com', '081573238854', 'Kp.Cipeusar RT 05/ RW 04 Kelurahan Sukajaya kecama'),
(24, 202110159, 'hani.jpeg', 'NUR AENI MUNTAQOH', '2020', 2, 'nuraeni@gmail.com', '089524276290', 'Jl.kh Tubagus Abdullah kp.sukabetah kel sukaasih k'),
(25, 202110160, 'pebri1.jpg', 'PEBRI YASI ALKAHFI', '2020', 2, 'pebri@gmail.com', '087736851519', 'Jln.Tanjung Wangi RT03/14'),
(26, 202110161, 'RANGGA.jpeg', 'RANGGA DIVA KUSUMA', '2020', 2, 'rangga@gmail.com', '087836263859', 'Cihaji RT.03 RW.13 Kec.Purbaratu Kel.Sukanegara'),
(27, 202110162, 'RAYSA.jpeg', 'RAYSA SITI AISYAH', '2020', 2, 'raysa@gmail.com', '089665448308', 'Kp. Pelang RT.01/RW.06, kelurahan Sukamanah kecama'),
(28, 202110163, 'rifky.jpeg', 'RIFKY PUTRA RAMADHAN', '2020', 2, 'rifky@gmail.com', '085811367152', 'Jl. Benda Pesantren, RT 06/RW13, Kel. Nagarasari, '),
(29, 202110164, 'risa.jpg', 'RISA MAULANI', '2020', 2, 'risa@gmail.com', '085732449296', 'Jl. Bebedahan1 Rt.1 Rw.08 Kel.sukanagara kec.purba'),
(30, 202110165, 'rossa.jpeg', 'ROSSA NURAENI', '2020', 2, 'rossa@gmail.com', '085703243781', 'Benteng, RT 03/RW 07 kec.purbaratu kel.sukamenak'),
(31, 202110167, 'santia1.jpg', 'SANTIA AGUSTIN MIRANTI', '2020', 2, 'santia@gmail.com', '089676229466', 'Perum Sukamenak Indah'),
(32, 202110167, 'SARI.jpeg', 'SARI NURAENI', '2020', 2, 'sari@gmail.com', '085798854710', 'Kp.Pasirjaya RT 01 RW05 kel.Sukajaya Kec.Purbaratu'),
(33, 202110168, 'shevina.jpeg', 'SHEVINA HERLINA PUTRI', '2020', 2, 'shevina@gmail.com', '085861925296', 'kp.golempang RT/RW 02/07 kel.sukajaya kec.purbarat'),
(34, 202110169, 'SOPI.jpeg', 'SOPI NURAINI', '2020', 2, 'sopi@gmail.com', '085864762978', 'Nagrog RT05 RW07 kel.Sukaasih'),
(35, 202110171, 'wisnu1.jpg', 'WISNU NUGRAHA', '2020', 2, 'wisnu@gmail.com', '083840411392', 'Jln.Cilolohan'),
(36, 202110172, 'yuda.jpeg', 'YUDA ADITIA', '2020', 2, 'yuda@gmail.com', '081931134127', 'Jln.Tanjung wangi RT02/014');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(9) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur untuk view `joinsiswa`
--
DROP TABLE IF EXISTS `joinsiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `joinsiswa`  AS SELECT `a`.`id` AS `id`, `a`.`nis` AS `nis`, `a`.`foto` AS `foto`, `a`.`nama` AS `nama`, `a`.`angkatan` AS `angkatan`, `a`.`id_jurusan` AS `id_jurusan`, `b`.`jurusan` AS `jurusan`, `a`.`email` AS `email`, `a`.`hp` AS `hp`, `a`.`alamat` AS `alamat` FROM (`siswa` `a` join `jurusan` `b` on(`a`.`id_jurusan` = `b`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
