-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6938
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table uniska.karyawan
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE IF NOT EXISTS `karyawan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_id` int NOT NULL DEFAULT '1',
  `nama` char(32) DEFAULT NULL,
  `alamat` text,
  `tempat_lahir` char(32) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL DEFAULT 'Laki-laki',
  `status_update` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table uniska.karyawan: ~110 rows (approximately)
INSERT INTO `karyawan` (`id`, `created_at`, `updated_at`, `status_id`, `nama`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `status_update`) VALUES
	(1, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Ahmad Fauzan', 'Jl. A. Yani Km 1, Banjarmasin Tengah, Kota Banjarmasin', 'Banjarmasin', '1994-02-14', 'Laki-laki', '2026-05-12 15:23:12'),
	(2, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Siti Rahmah', 'Jl. Veteran, Banjarmasin Timur, Kota Banjarmasin', 'Banjarmasin', '1997-06-21', 'Perempuan', '2026-05-12 15:23:12'),
	(3, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Muhammad Rizky', 'Jl. Sultan Adam, Banjarmasin Utara, Kota Banjarmasin', 'Banjarmasin', '1995-11-03', 'Laki-laki', '2026-05-12 15:23:12'),
	(4, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Nur Aisyah', 'Jl. Pramuka, Banjarmasin Timur, Kota Banjarmasin', 'Banjarmasin', '1999-01-18', 'Perempuan', '2026-05-12 15:23:12'),
	(5, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rudi Hartono', 'Jl. Kelayan A, Banjarmasin Selatan, Kota Banjarmasin', 'Banjarmasin', '1992-08-12', 'Laki-laki', '2026-05-12 15:23:12'),
	(6, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Maya Sari', 'Jl. Kuin Utara, Banjarmasin Utara, Kota Banjarmasin', 'Banjarmasin', '1998-04-25', 'Perempuan', '2026-05-12 15:23:12'),
	(7, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Hendra Saputra', 'Jl. Cempaka Raya, Kota Banjarbaru', 'Banjarbaru', '1993-09-09', 'Laki-laki', '2026-05-12 15:23:12'),
	(8, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Dewi Lestari', 'Jl. Panglima Batur, Kota Banjarbaru', 'Banjarbaru', '1996-12-30', 'Perempuan', '2026-05-12 15:23:12'),
	(9, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Arif Maulana', 'Jl. Karang Anyar, Banjarbaru Utara, Kota Banjarbaru', 'Banjarbaru', '1991-05-07', 'Laki-laki', '2026-05-12 15:23:12'),
	(10, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Fitri Handayani', 'Jl. Trikora, Landasan Ulin, Kota Banjarbaru', 'Banjarbaru', '2000-03-15', 'Perempuan', '2026-05-12 15:23:12'),
	(11, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Fadli Ramadhan', 'Jl. Sekumpul, Martapura, Kabupaten Banjar', 'Martapura', '1994-07-19', 'Laki-laki', '2026-05-12 15:23:12'),
	(12, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Nadia Putri', 'Jl. Pendidikan, Martapura, Kabupaten Banjar', 'Martapura', '1998-10-05', 'Perempuan', '2026-05-12 15:23:12'),
	(13, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Yusuf Hidayat', 'Jl. A. Yani Km 39, Martapura, Kabupaten Banjar', 'Martapura', '1990-01-27', 'Laki-laki', '2026-05-12 15:23:12'),
	(14, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rina Marlina', 'Jl. Menteri Empat, Martapura, Kabupaten Banjar', 'Martapura', '1997-02-11', 'Perempuan', '2026-05-12 15:23:12'),
	(15, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Dian Pratama', 'Jl. Pangeran Abdurrahman, Martapura, Kabupaten Banjar', 'Martapura', '1995-06-28', 'Laki-laki', '2026-05-12 15:23:12'),
	(16, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Salsabila Nur', 'Jl. Melati, Gambut, Kabupaten Banjar', 'Gambut', '2001-09-13', 'Perempuan', '2026-05-12 15:23:12'),
	(17, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rahmat Fauzi', 'Jl. Ahmad Yani, Kertak Hanyar, Kabupaten Banjar', 'Kertak Hanyar', '1993-03-22', 'Laki-laki', '2026-05-12 15:23:12'),
	(18, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Lina Wulandari', 'Jl. Pemajatan, Sungai Tabuk, Kabupaten Banjar', 'Sungai Tabuk', '1999-12-17', 'Perempuan', '2026-05-12 15:23:12'),
	(19, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Agus Setiawan', 'Jl. Tatah Makmur, Kabupaten Banjar', 'Gambut', '1989-04-08', 'Laki-laki', '2026-05-12 15:23:12'),
	(20, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Miftahul Jannah', 'Jl. Albasia, Martapura Barat, Kabupaten Banjar', 'Martapura', '1996-08-24', 'Perempuan', '2026-05-12 15:23:12'),
	(21, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Bambang Irawan', 'Jl. Pancasila, Pelaihari, Kabupaten Tanah Laut', 'Pelaihari', '1988-01-10', 'Laki-laki', '2026-05-12 15:23:12'),
	(22, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Sri Wahyuni', 'Jl. Gembira, Pelaihari, Kabupaten Tanah Laut', 'Pelaihari', '1994-11-16', 'Perempuan', '2026-05-12 15:23:12'),
	(23, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Taufik Hidayat', 'Jl. Ambawang, Pelaihari, Kabupaten Tanah Laut', 'Pelaihari', '1992-05-29', 'Laki-laki', '2026-05-12 15:23:12'),
	(24, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Aulia Rahmi', 'Jl. Sarang Halang, Pelaihari, Kabupaten Tanah Laut', 'Pelaihari', '2000-07-03', 'Perempuan', '2026-05-12 15:23:12'),
	(25, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Andi Firmansyah', 'Jl. Takisung, Kabupaten Tanah Laut', 'Takisung', '1991-09-20', 'Laki-laki', '2026-05-12 15:23:12'),
	(26, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Ratna Dewi', 'Jl. Batu Ampar, Kabupaten Tanah Laut', 'Batu Ampar', '1997-12-09', 'Perempuan', '2026-05-12 15:23:12'),
	(27, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Dedi Kurniawan', 'Jl. Kurau, Kabupaten Tanah Laut', 'Kurau', '1993-06-14', 'Laki-laki', '2026-05-12 15:23:12'),
	(28, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Yuliana Sari', 'Jl. Bati-Bati, Kabupaten Tanah Laut', 'Bati-Bati', '1998-02-26', 'Perempuan', '2026-05-12 15:23:12'),
	(29, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rizal Fahmi', 'Jl. Tambang Ulang, Kabupaten Tanah Laut', 'Tambang Ulang', '1990-10-18', 'Laki-laki', '2026-05-12 15:23:12'),
	(30, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Marlina Hasanah', 'Jl. Jorong, Kabupaten Tanah Laut', 'Jorong', '1995-04-04', 'Perempuan', '2026-05-12 15:23:12'),
	(31, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Herman Syahputra', 'Jl. Veteran, Marabahan, Kabupaten Barito Kuala', 'Marabahan', '1987-03-12', 'Laki-laki', '2026-05-12 15:23:12'),
	(32, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Nurlaila', 'Jl. Jenderal Sudirman, Marabahan, Kabupaten Barito Kuala', 'Marabahan', '1996-09-23', 'Perempuan', '2026-05-12 15:23:12'),
	(33, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Fajar Nugroho', 'Jl. Handil Bakti, Alalak, Kabupaten Barito Kuala', 'Alalak', '1994-05-02', 'Laki-laki', '2026-05-12 15:23:12'),
	(34, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Aminah Putri', 'Jl. Semangat Dalam, Alalak, Kabupaten Barito Kuala', 'Alalak', '1999-08-08', 'Perempuan', '2026-05-12 15:23:12'),
	(35, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Irfan Maulana', 'Jl. Anjir Muara, Kabupaten Barito Kuala', 'Anjir Muara', '1992-01-31', 'Laki-laki', '2026-05-12 15:23:12'),
	(36, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Mega Puspita', 'Jl. Mandastana, Kabupaten Barito Kuala', 'Mandastana', '1997-07-27', 'Perempuan', '2026-05-12 15:23:12'),
	(37, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Zainal Abidin', 'Jl. Rantau Badauh, Kabupaten Barito Kuala', 'Rantau Badauh', '1989-12-05', 'Laki-laki', '2026-05-12 15:23:12'),
	(38, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Halimah', 'Jl. Tabunganen, Kabupaten Barito Kuala', 'Tabunganen', '1998-11-19', 'Perempuan', '2026-05-12 15:23:12'),
	(39, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Syamsul Bahri', 'Jl. Belawang, Kabupaten Barito Kuala', 'Belawang', '1991-06-06', 'Laki-laki', '2026-05-12 15:23:12'),
	(40, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Indah Permata', 'Jl. Cerbon, Kabupaten Barito Kuala', 'Cerbon', '2001-02-02', 'Perempuan', '2026-05-12 15:23:12'),
	(41, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Hafiz Anwar', 'Jl. Aluh Idut, Kandangan, Kabupaten Hulu Sungai Selatan', 'Kandangan', '1993-10-01', 'Laki-laki', '2026-05-12 15:23:12'),
	(42, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Riska Amelia', 'Jl. Singakarsa, Kandangan, Kabupaten Hulu Sungai Selatan', 'Kandangan', '1998-03-09', 'Perempuan', '2026-05-12 15:23:12'),
	(43, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Junaidi', 'Jl. Brigjen Hasan Basry, Kandangan, Kabupaten Hulu Sungai Selatan', 'Kandangan', '1988-07-22', 'Laki-laki', '2026-05-12 15:23:12'),
	(44, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Maulida Sari', 'Jl. Angkinang, Kabupaten Hulu Sungai Selatan', 'Angkinang', '1997-05-18', 'Perempuan', '2026-05-12 15:23:12'),
	(45, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Fahriansyah', 'Jl. Daha Selatan, Kabupaten Hulu Sungai Selatan', 'Daha Selatan', '1994-01-06', 'Laki-laki', '2026-05-12 15:23:12'),
	(46, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Annisa Fitri', 'Jl. Daha Utara, Kabupaten Hulu Sungai Selatan', 'Daha Utara', '2000-06-11', 'Perempuan', '2026-05-12 15:23:12'),
	(47, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Syaiful Rahman', 'Jl. Padang Batung, Kabupaten Hulu Sungai Selatan', 'Padang Batung', '1991-04-23', 'Laki-laki', '2026-05-12 15:23:12'),
	(48, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Lestari Dewi', 'Jl. Sungai Raya, Kabupaten Hulu Sungai Selatan', 'Sungai Raya', '1996-08-03', 'Perempuan', '2026-05-12 15:23:12'),
	(49, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Burhanuddin', 'Jl. Telaga Langsat, Kabupaten Hulu Sungai Selatan', 'Telaga Langsat', '1989-09-14', 'Laki-laki', '2026-05-12 15:23:12'),
	(50, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Nurul Hikmah', 'Jl. Kalumpang, Kabupaten Hulu Sungai Selatan', 'Kalumpang', '1999-12-28', 'Perempuan', '2026-05-12 15:23:12'),
	(51, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rizky Ramadhani', 'Jl. Murakata, Barabai, Kabupaten Hulu Sungai Tengah', 'Barabai', '1995-03-17', 'Laki-laki', '2026-05-12 15:23:12'),
	(52, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Mardiana', 'Jl. Perintis Kemerdekaan, Barabai, Kabupaten Hulu Sungai Tengah', 'Barabai', '1994-10-20', 'Perempuan', '2026-05-12 15:23:12'),
	(53, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Haris Munandar', 'Jl. Hevea, Barabai, Kabupaten Hulu Sungai Tengah', 'Barabai', '1992-02-04', 'Laki-laki', '2026-05-12 15:23:12'),
	(54, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Yuni Kartika', 'Jl. Birayang, Kabupaten Hulu Sungai Tengah', 'Birayang', '1998-06-26', 'Perempuan', '2026-05-12 15:23:12'),
	(55, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Sofyan Hadi', 'Jl. Pandawan, Kabupaten Hulu Sungai Tengah', 'Pandawan', '1990-11-30', 'Laki-laki', '2026-05-12 15:23:12'),
	(56, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rabiatul Adawiyah', 'Jl. Labuan Amas, Kabupaten Hulu Sungai Tengah', 'Labuan Amas', '1997-01-15', 'Perempuan', '2026-05-12 15:23:12'),
	(57, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Khairul Anam', 'Jl. Batu Benawa, Kabupaten Hulu Sungai Tengah', 'Batu Benawa', '1993-07-07', 'Laki-laki', '2026-05-12 15:23:12'),
	(58, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Norhasanah', 'Jl. Hantakan, Kabupaten Hulu Sungai Tengah', 'Hantakan', '1999-09-29', 'Perempuan', '2026-05-12 15:23:12'),
	(59, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Wahyu Saputra', 'Jl. Limpasu, Kabupaten Hulu Sungai Tengah', 'Limpasu', '1991-12-13', 'Laki-laki', '2026-05-12 15:23:12'),
	(60, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Ernawati', 'Jl. Haruyan, Kabupaten Hulu Sungai Tengah', 'Haruyan', '1996-04-16', 'Perempuan', '2026-05-12 15:23:12'),
	(61, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Iwan Setiawan', 'Jl. Basuki Rahmat, Amuntai, Kabupaten Hulu Sungai Utara', 'Amuntai', '1988-08-01', 'Laki-laki', '2026-05-12 15:23:12'),
	(62, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Husna Aulia', 'Jl. Norman Umar, Amuntai, Kabupaten Hulu Sungai Utara', 'Amuntai', '1998-05-05', 'Perempuan', '2026-05-12 15:23:12'),
	(63, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Mochamad Ihsan', 'Jl. Empu Jatmika, Amuntai, Kabupaten Hulu Sungai Utara', 'Amuntai', '1994-09-10', 'Laki-laki', '2026-05-12 15:23:12'),
	(64, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Dina Aprilia', 'Jl. Sungai Malang, Amuntai, Kabupaten Hulu Sungai Utara', 'Amuntai', '2000-02-22', 'Perempuan', '2026-05-12 15:23:12'),
	(65, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rachmat Saleh', 'Jl. Danau Panggang, Kabupaten Hulu Sungai Utara', 'Danau Panggang', '1991-06-01', 'Laki-laki', '2026-05-12 15:23:12'),
	(66, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Winda Lestari', 'Jl. Babirik, Kabupaten Hulu Sungai Utara', 'Babirik', '1997-11-11', 'Perempuan', '2026-05-12 15:23:12'),
	(67, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Mahmud Yunus', 'Jl. Sungai Pandan, Kabupaten Hulu Sungai Utara', 'Sungai Pandan', '1989-03-03', 'Laki-laki', '2026-05-12 15:23:12'),
	(68, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Latifah Hanum', 'Jl. Banjang, Kabupaten Hulu Sungai Utara', 'Banjang', '1996-07-21', 'Perempuan', '2026-05-12 15:23:12'),
	(69, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Fikri Alamsyah', 'Jl. Amuntai Selatan, Kabupaten Hulu Sungai Utara', 'Amuntai', '1993-01-25', 'Laki-laki', '2026-05-12 15:23:12'),
	(70, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Novianti', 'Jl. Amuntai Utara, Kabupaten Hulu Sungai Utara', 'Amuntai', '1999-10-06', 'Perempuan', '2026-05-12 15:23:12'),
	(71, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Samsul Arifin', 'Jl. Pangeran Antasari, Rantau, Kabupaten Tapin', 'Rantau', '1990-04-12', 'Laki-laki', '2026-05-12 15:23:12'),
	(72, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Melati Sari', 'Jl. Brigjen H. Hasan Basry, Rantau, Kabupaten Tapin', 'Rantau', '1997-06-19', 'Perempuan', '2026-05-12 15:23:12'),
	(73, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Alfiansyah', 'Jl. Rangda Malingkung, Rantau, Kabupaten Tapin', 'Rantau', '1994-12-07', 'Laki-laki', '2026-05-12 15:23:12'),
	(74, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Nisa Rahmah', 'Jl. Binuang, Kabupaten Tapin', 'Binuang', '2001-03-01', 'Perempuan', '2026-05-12 15:23:12'),
	(75, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Hasan Basri', 'Jl. Tapin Selatan, Kabupaten Tapin', 'Tapin Selatan', '1988-10-10', 'Laki-laki', '2026-05-12 15:23:12'),
	(76, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rohani', 'Jl. Tapin Utara, Kabupaten Tapin', 'Tapin Utara', '1996-02-18', 'Perempuan', '2026-05-12 15:23:12'),
	(77, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Ari Gunawan', 'Jl. Candi Laras Selatan, Kabupaten Tapin', 'Candi Laras', '1992-08-29', 'Laki-laki', '2026-05-12 15:23:12'),
	(78, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Sari Nurjanah', 'Jl. Lokpaikat, Kabupaten Tapin', 'Lokpaikat', '1998-09-12', 'Perempuan', '2026-05-12 15:23:12'),
	(79, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Yudi Prasetyo', 'Jl. Salam Babaris, Kabupaten Tapin', 'Salam Babaris', '1991-05-24', 'Laki-laki', '2026-05-12 15:23:12'),
	(80, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Khadijah', 'Jl. Piani, Kabupaten Tapin', 'Piani', '1999-01-09', 'Perempuan', '2026-05-12 15:23:12'),
	(81, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rendra Wijaya', 'Jl. Ir. P. M. Noor, Tanjung, Kabupaten Tabalong', 'Tanjung', '1993-04-30', 'Laki-laki', '2026-05-12 15:23:12'),
	(82, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Nur Afifah', 'Jl. Basuki Rahmat, Tanjung, Kabupaten Tabalong', 'Tanjung', '1998-07-14', 'Perempuan', '2026-05-12 15:23:12'),
	(83, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Doni Saputra', 'Jl. Pembataan, Murung Pudak, Kabupaten Tabalong', 'Tanjung', '1990-12-21', 'Laki-laki', '2026-05-12 15:23:12'),
	(84, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Silvia Rahma', 'Jl. Mabuun, Murung Pudak, Kabupaten Tabalong', 'Tanjung', '1997-05-31', 'Perempuan', '2026-05-12 15:23:12'),
	(85, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Jamaluddin', 'Jl. Kelua, Kabupaten Tabalong', 'Kelua', '1989-06-17', 'Laki-laki', '2026-05-12 15:23:12'),
	(86, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Putri Amelia', 'Jl. Haruai, Kabupaten Tabalong', 'Haruai', '2000-10-27', 'Perempuan', '2026-05-12 15:23:12'),
	(87, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Akhmad Syarif', 'Jl. Upau, Kabupaten Tabalong', 'Upau', '1994-02-08', 'Laki-laki', '2026-05-12 15:23:12'),
	(88, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rika Anggraini', 'Jl. Muara Uya, Kabupaten Tabalong', 'Muara Uya', '1996-11-23', 'Perempuan', '2026-05-12 15:23:12'),
	(89, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Teguh Santoso', 'Jl. Jaro, Kabupaten Tabalong', 'Jaro', '1992-03-26', 'Laki-laki', '2026-05-12 15:23:12'),
	(90, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Suci Ramadhani', 'Jl. Tanta, Kabupaten Tabalong', 'Tanta', '1999-08-15', 'Perempuan', '2026-05-12 15:23:12'),
	(91, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Ilham Maulana', 'Jl. Pangeran Indra Kesuma, Kotabaru, Kabupaten Kotabaru', 'Kotabaru', '1993-09-02', 'Laki-laki', '2026-05-12 15:23:12'),
	(92, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rahayu Ningsih', 'Jl. Veteran, Kotabaru, Kabupaten Kotabaru', 'Kotabaru', '1997-04-20', 'Perempuan', '2026-05-12 15:23:12'),
	(93, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Eko Wahyudi', 'Jl. Raya Stagen, Kotabaru, Kabupaten Kotabaru', 'Kotabaru', '1991-01-16', 'Laki-laki', '2026-05-12 15:23:12'),
	(94, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Siska Amelia', 'Jl. Sigam, Kotabaru, Kabupaten Kotabaru', 'Kotabaru', '1998-12-04', 'Perempuan', '2026-05-12 15:23:12'),
	(95, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Firman Noor', 'Jl. Pulau Laut Utara, Kabupaten Kotabaru', 'Kotabaru', '1990-07-11', 'Laki-laki', '2026-05-12 15:23:12'),
	(96, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rahmawati', 'Jl. Pulau Laut Tengah, Kabupaten Kotabaru', 'Kotabaru', '1996-03-28', 'Perempuan', '2026-05-12 15:23:12'),
	(97, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Bahrul Ulum', 'Jl. Kelumpang Hilir, Kabupaten Kotabaru', 'Kelumpang Hilir', '1988-05-13', 'Laki-laki', '2026-05-12 15:23:12'),
	(98, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Murniati', 'Jl. Pamukan Selatan, Kabupaten Kotabaru', 'Pamukan Selatan', '1999-06-09', 'Perempuan', '2026-05-12 15:23:12'),
	(99, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Galih Pratama', 'Jl. Pulau Sebuku, Kabupaten Kotabaru', 'Pulau Sebuku', '1994-10-22', 'Laki-laki', '2026-05-12 15:23:12'),
	(100, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Nur Azizah', 'Jl. Pulau Laut Timur, Kabupaten Kotabaru', 'Kotabaru', '2001-01-04', 'Perempuan', '2026-05-12 15:23:12'),
	(101, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Rian Permana', 'Jl. Dharma Praja, Batulicin, Kabupaten Tanah Bumbu', 'Batulicin', '1992-11-02', 'Laki-laki', '2026-05-12 15:23:12'),
	(102, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Intan Maulida', 'Jl. Raya Batulicin, Kabupaten Tanah Bumbu', 'Batulicin', '1998-02-13', 'Perempuan', '2026-05-12 15:23:12'),
	(103, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Yoga Pratama', 'Jl. Kodeco, Simpang Empat, Kabupaten Tanah Bumbu', 'Simpang Empat', '1995-08-18', 'Laki-laki', '2026-05-12 15:23:12'),
	(104, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Mega Lestari', 'Jl. Sarigadung, Simpang Empat, Kabupaten Tanah Bumbu', 'Simpang Empat', '1997-09-25', 'Perempuan', '2026-05-12 15:23:12'),
	(105, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Aditya Nugraha', 'Jl. Satui, Kabupaten Tanah Bumbu', 'Satui', '1991-04-27', 'Laki-laki', '2026-05-12 15:23:12'),
	(106, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Dahlia Putri', 'Jl. Kusan Hilir, Kabupaten Tanah Bumbu', 'Kusan Hilir', '1999-05-06', 'Perempuan', '2026-05-12 15:23:12'),
	(107, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Farid Rahman', 'Jl. Angsana, Kabupaten Tanah Bumbu', 'Angsana', '1990-06-30', 'Laki-laki', '2026-05-12 15:23:12'),
	(108, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Nadila Sari', 'Jl. Sungai Loban, Kabupaten Tanah Bumbu', 'Sungai Loban', '2000-11-08', 'Perempuan', '2026-05-12 15:23:12'),
	(109, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Zulfikar', 'Jl. Kusan Hulu, Kabupaten Tanah Bumbu', 'Kusan Hulu', '1989-12-19', 'Laki-laki', '2026-05-12 15:23:12'),
	(110, '2026-05-12 07:01:59', '2026-05-12 07:01:59', 1, 'Wulan Safitri', 'Jl. Mantewe, Kabupaten Tanah Bumbu', 'Mantewe', '1996-07-02', 'Perempuan', '2026-05-12 15:23:12'),
	(111, '2026-05-12 07:30:23', '2026-05-12 07:31:59', 0, 'Budi Santoso', 'Jl. WEB 2, Banjarmasin', 'Banjarmasin', '2002-05-10', 'Laki-laki', '2026-05-12 15:30:23');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
