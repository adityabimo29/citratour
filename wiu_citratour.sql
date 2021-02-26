-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 11:19 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wiu_citratour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` enum('admin','staf','super','') COLLATE latin1_general_ci NOT NULL DEFAULT 'staf',
  `status` enum('Aktif','Blokir') COLLATE latin1_general_ci NOT NULL DEFAULT 'Aktif',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `status`, `id_session`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Jogja Media Web', 'team.jmw111@gmail.com', '0816-4266-787', 'admin', 'Aktif', '32222');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(5) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `judul_seo` varchar(250) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `keyword` varchar(4000) NOT NULL,
  `description` varchar(1560) NOT NULL,
  `tgl` date NOT NULL,
  `status` enum('aktif','tidak aktif','Breaking News','Pilihan Editor') NOT NULL,
  `unggulan` enum('No','Yes') NOT NULL,
  `dilihat` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `id_admin`, `judul`, `judul_seo`, `gambar`, `deskripsi`, `keyword`, `description`, `tgl`, `status`, `unggulan`, `dilihat`) VALUES
(80, 2, 'Kulkas Tidak Dingin? Ini 7 Penyebabnya!', 'kulkas-tidak-dingin-ini-7-penyebabnya', 'kulkas-tidak-dingin-ini-7-penyebabnya-44.jpeg', '<p>Saat ini kulkas sepertinya menjadi perangkat rumah tangga yang harus ada di setiap rumah.&nbsp;&nbsp;Kulkas pun perlu perawatan tertentu agar awet dalam penggunaannya dan tidak menyulitkan ketika sewaktu-waktu rusak atau tidak dapat berfungsi secara maksimal. Kendala yang sering kali terjadi adalah kulkas tidak dingin lagi sehingga menyebabkan makanan yang tersimpan di dalamnya menjadi rusak. Ketika hal ini terjadi, bagaimana mengatasinya?</p>\r\n\r\n<h2>Bunga es adalah penyebab utama kulkas tidak dingin</h2>\r\n\r\n<p><img alt=\"Kulkas Tidak Dingin Bunga Es\" data-attachment-id=\"69764\" data-comments-opened=\"1\" data-image-description=\"&lt;p&gt;Kulkas Tidak Dingin Bunga Es&lt;/p&gt;\r\n\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"Kulkas Tidak Dingin Bunga Es\" data-large-file=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Bunga-Es.jpg?fit=999%2C666&amp;ssl=1\" data-medium-file=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Bunga-Es.jpg?fit=300%2C200&amp;ssl=1\" data-orig-file=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Bunga-Es.jpg?fit=999%2C666&amp;ssl=1\" data-orig-size=\"999,666\" data-permalink=\"https://dekoruma.blog/penyebab-kulkas-tidak-dingin/kulkas-tidak-dingin-bunga-es/\" data-recalc-dims=\"1\" loading=\"lazy\" sizes=\"(max-width: 999px) 100vw, 999px\" src=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Bunga-Es.jpg?resize=999%2C666&amp;ssl=1\" srcset=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Bunga-Es.jpg?w=999&amp;ssl=1 999w, https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Bunga-Es.jpg?resize=300%2C200&amp;ssl=1 300w, https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Bunga-Es.jpg?resize=768%2C512&amp;ssl=1 768w, https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Bunga-Es.jpg?resize=960%2C640&amp;ssl=1 960w, https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Bunga-Es.jpg?resize=450%2C300&amp;ssl=1 450w\" style=\"height:666px; width:999px\" /><em>google.com</em></p>\r\n\r\n<p>Saat kulkas tidak dingin lagi, sebab utama yang mungkin terjadi adalah karena bunga es yang sudah terlalu tebal dan menutupi bagian lubang angin. Lubang angin&nbsp;berperan dalam mendinginkan udara di dalam kulkas. Jika kulkas tidak dingin lagi, maka periksalah kondisi bunga esnya. Bagaimana cara mengatasi masalah ini?</p>\r\n\r\n<p>Kamu hanya perlu membiarkan kulkas terbuka dan letakkan kipas angin menyala di depannya agar angin dari kipas angin bisa langsung berinteraksi dengan bagian dalam kulkas. Cara ini terbukti sangat cepat dan efektif dalam mencairkan bunga-bunga es sehingga bagian&nbsp;<em>freezer</em>&nbsp;menjadi bersih kembali.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kulkas Tidak Digin Membersihkan Bunga Es\" data-attachment-id=\"69765\" data-comments-opened=\"1\" data-image-description=\"&lt;p&gt;Kulkas Tidak Digin Membersihkan Bunga Es&lt;/p&gt;\r\n\" data-image-meta=\"{&quot;aperture&quot;:&quot;10&quot;,&quot;credit&quot;:&quot;Andrey Popov&quot;,&quot;camera&quot;:&quot;NIKON D800E&quot;,&quot;caption&quot;:&quot;Young Woman Cleaning Refrigerator With Rag At Home&quot;,&quot;created_timestamp&quot;:&quot;1425737019&quot;,&quot;copyright&quot;:&quot;Andrey Popov&quot;,&quot;focal_length&quot;:&quot;50&quot;,&quot;iso&quot;:&quot;100&quot;,&quot;shutter_speed&quot;:&quot;0.00625&quot;,&quot;title&quot;:&quot;Woman Cleaning Refrigerator With Rag&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"Kulkas Tidak Digin Membersihkan Bunga Es\" data-large-file=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Membersihkan-Bunga-Es.jpg?fit=1000%2C750&amp;ssl=1\" data-medium-file=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Membersihkan-Bunga-Es.jpg?fit=300%2C225&amp;ssl=1\" data-orig-file=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Membersihkan-Bunga-Es.jpg?fit=1200%2C900&amp;ssl=1\" data-orig-size=\"1200,900\" data-permalink=\"https://dekoruma.blog/penyebab-kulkas-tidak-dingin/woman-cleaning-refrigerator-with-rag/\" data-recalc-dims=\"1\" loading=\"lazy\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Membersihkan-Bunga-Es.jpg?resize=1000%2C750&amp;ssl=1\" srcset=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Membersihkan-Bunga-Es.jpg?w=1200&amp;ssl=1 1200w, https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Membersihkan-Bunga-Es.jpg?resize=300%2C225&amp;ssl=1 300w, https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Membersihkan-Bunga-Es.jpg?resize=768%2C576&amp;ssl=1 768w, https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Membersihkan-Bunga-Es.jpg?resize=1024%2C768&amp;ssl=1 1024w, https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Membersihkan-Bunga-Es.jpg?resize=400%2C300&amp;ssl=1 400w\" style=\"height:750px; width:1000px\" /><em>google.com</em></p>\r\n\r\n<p>Selanjutnya saat bunga es sudah mencair, kamu bisa membuang air yang tertampung pada bagian bawah&nbsp;<em>freezer</em>. Lakukan pengelapan menggunakan&nbsp;<a href=\"https://www.dekoruma.com/Tekstil-Dapur\">lap tekstil dapur bersih</a>&nbsp;agar air bisa hilang dan tidak menimbulkan pembentukan bunga es kembali dalam waktu dekat.</p>\r\n\r\n<p>Proses terakhir, kamu bisa mencoba menyalakan kembali kulkasmu dan tunggu beberapa saat untuk bisa dingin kembali. Pembersihan pada bunga-bunga es ini sebaiknya secara rutin.</p>\r\n\r\n<h2>Kulkas tidak dingin padahal masih baru</h2>\r\n\r\n<p><img alt=\"Kulkas Tidak Dingin\" data-attachment-id=\"69766\" data-comments-opened=\"1\" data-image-description=\"&lt;p&gt;Kulkas Tidak Dingin&lt;/p&gt;\r\n\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"Kulkas Tidak Dingin\" data-large-file=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin.jpg?fit=1000%2C342&amp;ssl=1\" data-medium-file=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin.jpg?fit=300%2C103&amp;ssl=1\" data-orig-file=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin.jpg?fit=1170%2C400&amp;ssl=1\" data-orig-size=\"1170,400\" data-permalink=\"https://dekoruma.blog/penyebab-kulkas-tidak-dingin/kulkas-tidak-dingin/\" data-recalc-dims=\"1\" loading=\"lazy\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin.jpg?resize=1000%2C342&amp;ssl=1\" srcset=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin.jpg?w=1170&amp;ssl=1 1170w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin.jpg?resize=300%2C103&amp;ssl=1 300w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin.jpg?resize=768%2C263&amp;ssl=1 768w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin.jpg?resize=1024%2C350&amp;ssl=1 1024w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin.jpg?resize=600%2C205&amp;ssl=1 600w\" style=\"height:342px; width:1000px\" /><em>monogram.com</em></p>\r\n\r\n<p>Kamu baru saja membeli kulkas tetapi kulkas tidak dingin? Pasti sangat menyebalkan ya. Tapi jangan sedih dulu, karena itu bukan berarti rusak. Ketika kamu&nbsp;<a href=\"https://www.dekoruma.com/Kulkas\">membeli kulkas baru</a>, periksalah terlebih dahulu suhunya setelah kamu menyalakan. Kulkas baru biasanya beroperasi pada suhu yang relatif rendah sehingga menyebabkan kulkas tidak dingin seperti seharusnya.</p>\r\n\r\n<p>Aturlah suhu kulkas pada angka yang maksimal untuk mengetahui kualitas kulkas barumu. Dari situ akan terlihat apakah kulkas tersebut dapat bekerja dengan baik atau tidak.</p>\r\n\r\n<h2>Menyimpan makanan panas mengakibatkan kulkas tidak dingin</h2>\r\n\r\n<p><img alt=\"Kulkas Tidak Dingin Makanan Panas\" data-attachment-id=\"69768\" data-comments-opened=\"1\" data-image-description=\"&lt;p&gt;Kulkas Tidak Dingin Makanan Panas&lt;/p&gt;\r\n\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}\" data-image-title=\"Kulkas Tidak Dingin Makanan Panas\" data-large-file=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Makanan-Panas.jpg?fit=800%2C605&amp;ssl=1\" data-medium-file=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Makanan-Panas.jpg?fit=300%2C227&amp;ssl=1\" data-orig-file=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Makanan-Panas.jpg?fit=800%2C605&amp;ssl=1\" data-orig-size=\"800,605\" data-permalink=\"https://dekoruma.blog/penyebab-kulkas-tidak-dingin/kulkas-tidak-dingin-makanan-panas/\" data-recalc-dims=\"1\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Makanan-Panas.jpg?resize=800%2C605&amp;ssl=1\" srcset=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Makanan-Panas.jpg?w=800&amp;ssl=1 800w, https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Makanan-Panas.jpg?resize=300%2C227&amp;ssl=1 300w, https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Makanan-Panas.jpg?resize=768%2C581&amp;ssl=1 768w, https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Makanan-Panas.jpg?resize=397%2C300&amp;ssl=1 397w\" style=\"height:605px; width:800px\" /><em>google.com</em></p>\r\n\r\n<p>Tahukah kamu jika sering menyimpan makanan yang masih panas ke dalam kulkas bisa menyebabkan kulkas tidak dingin? Hal ini terjadi sesuai dengan logika dasar bahwa&nbsp;suhu panas yang dihasilkan oleh makanan lebih dominan, maka suhu di sekitarnya pun akan mengikutinya.</p>\r\n\r\n<p>Jika kamu menyimpan banyak makanan di dalam kulkas dengan kondisi yang masih panas akan menyebabkan suhu di dalam kulkas menurun karena berinteraksi dengan suhu panas yang dihasilkan oleh makanan tersebut.&nbsp;Itulah mengapa kulkas tidak dingin lagi setelah menyimpan makanan panas.</p>\r\n\r\n<h2>Jauhkan kulkas dari peralatan panas yang membuat kulkas tidak dingin</h2>\r\n\r\n<p><img alt=\"Kulkas Tidak Dingin Peralatan Panas\" data-attachment-id=\"69770\" data-comments-opened=\"1\" data-image-description=\"&lt;p&gt;Kulkas Tidak Dingin Peralatan Panas&lt;/p&gt;\r\n\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"Kulkas Tidak Dingin Peralatan Panas\" data-large-file=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Peralatan-Panas.jpg?fit=753%2C493&amp;ssl=1\" data-medium-file=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Peralatan-Panas.jpg?fit=300%2C196&amp;ssl=1\" data-orig-file=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Peralatan-Panas.jpg?fit=753%2C493&amp;ssl=1\" data-orig-size=\"753,493\" data-permalink=\"https://dekoruma.blog/penyebab-kulkas-tidak-dingin/kulkas-tidak-dingin-peralatan-panas/\" data-recalc-dims=\"1\" loading=\"lazy\" sizes=\"(max-width: 753px) 100vw, 753px\" src=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Peralatan-Panas.jpg?resize=753%2C493&amp;ssl=1\" srcset=\"https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Peralatan-Panas.jpg?w=753&amp;ssl=1 753w, https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Peralatan-Panas.jpg?resize=300%2C196&amp;ssl=1 300w, https://i0.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Peralatan-Panas.jpg?resize=458%2C300&amp;ssl=1 458w\" style=\"height:493px; width:753px\" /><em>google.com</em></p>\r\n\r\n<p>Sama halnya dengan makanan panas yang bisa menyebabkan kulkas tidak dingin, peralatan yang menghasilkan panas juga akan mempengaruhi performa kulkas. Kulkas bisa menjadi kurang dingin bahkan sampai kulkas tidak dingin sama sekali. Kalau kulkas di rumahmu menjadi tidak dingin, coba cek ya apakah di sekitarnya ada perangkat penghasil panas atau tidak?</p>\r\n\r\n<h2>Kulkas tidak dingin bisa disebabkan oleh stop kontak</h2>\r\n\r\n<p><img alt=\"Kulkas Tidak Dingin Stop Contact\" data-attachment-id=\"69773\" data-comments-opened=\"1\" data-image-description=\"&lt;p&gt;Kulkas Tidak Dingin Stop Contact&lt;/p&gt;\r\n\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"Kulkas Tidak Dingin Stop Contact\" data-large-file=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Stop-Contact.jpg?fit=1000%2C800&amp;ssl=1\" data-medium-file=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Stop-Contact.jpg?fit=300%2C240&amp;ssl=1\" data-orig-file=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Stop-Contact.jpg?fit=1200%2C960&amp;ssl=1\" data-orig-size=\"1200,960\" data-permalink=\"https://dekoruma.blog/penyebab-kulkas-tidak-dingin/kulkas-tidak-dingin-stop-contact/\" data-recalc-dims=\"1\" loading=\"lazy\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Stop-Contact.jpg?resize=1000%2C800&amp;ssl=1\" srcset=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Stop-Contact.jpg?w=1200&amp;ssl=1 1200w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Stop-Contact.jpg?resize=300%2C240&amp;ssl=1 300w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Stop-Contact.jpg?resize=768%2C614&amp;ssl=1 768w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Stop-Contact.jpg?resize=1024%2C819&amp;ssl=1 1024w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Stop-Contact.jpg?resize=375%2C300&amp;ssl=1 375w\" style=\"height:800px; width:1000px\" /><em>google.com</em></p>\r\n\r\n<p>Semua peralatan rumah tangga umumnya&nbsp;<a href=\"https://www.dekoruma.com/Stop-Kontak\">menggunakan stop kontak</a>&nbsp;sebagai sumber energinya. Namun, kita sering kali tidak sadar apabila stop kontak yang kita gunakan tersebut tidak berfungsi dengan baik.&nbsp;Stop kontak yang tidak berfungsi dengan baik bisa menjadi salah satu penyebab kulkas tidak dingin.</p>\r\n\r\n<p>Untuk mengetahuinya, kamu bisa mencoba menyambungkan&nbsp;<a href=\"https://www.dekoruma.com/Elektronik\">peralatan elektronik lain</a>&nbsp;ke sumber listrik tersebut. Apabila bisa berfungsi dengan baik, bisa jadi kabel kulkas tersebut hanya tidak kencang ketika dipasangkan ke stop kontak.</p>\r\n\r\n<h2>Freon juga menjadi faktor yang menyebabkan kulkas tidak dingin</h2>\r\n\r\n<p><img alt=\"Kulkas Tidak Dingin Freon\" data-attachment-id=\"69775\" data-comments-opened=\"1\" data-image-description=\"&lt;p&gt;Kulkas Tidak Dingin Freon&lt;/p&gt;\r\n\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"Kulkas Tidak Dingin Freon\" data-large-file=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Freon.jpg?fit=1000%2C563&amp;ssl=1\" data-medium-file=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Freon.jpg?fit=300%2C169&amp;ssl=1\" data-orig-file=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Freon.jpg?fit=1280%2C720&amp;ssl=1\" data-orig-size=\"1280,720\" data-permalink=\"https://dekoruma.blog/penyebab-kulkas-tidak-dingin/kulkas-tidak-dingin-freon/\" data-recalc-dims=\"1\" loading=\"lazy\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Freon.jpg?resize=1000%2C563&amp;ssl=1\" srcset=\"https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Freon.jpg?w=1280&amp;ssl=1 1280w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Freon.jpg?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Freon.jpg?resize=768%2C432&amp;ssl=1 768w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Freon.jpg?resize=1024%2C576&amp;ssl=1 1024w, https://i2.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Freon.jpg?resize=533%2C300&amp;ssl=1 533w\" style=\"height:563px; width:1000px\" /><em>youtube.com</em></p>\r\n\r\n<p>Penyebab lain dari kulkas tidak dingin adalah freon bocor atau habis. Kondisi ini bisa diketahui dengan memegang bagian belakang kulkas yang berdekatan dengan&nbsp;<em>grill</em>&nbsp;kulkas. Bagian ini merupakan bagian yang seharusnya panas, karena panas freon akan dilepaskan di sini. Jika tidak terasa hangat, maka freon sudah habis dan harus diisi lagi.</p>\r\n\r\n<h2>Kondisi pintu kulkas juga pemicu kulkas tidak dingin lagi</h2>\r\n\r\n<p><img alt=\"Kulkas Tidak Dingin Pintu\" data-attachment-id=\"69777\" data-comments-opened=\"1\" data-image-description=\"&lt;p&gt;Kulkas Tidak Dingin Pintu&lt;/p&gt;\r\n\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"Kulkas Tidak Dingin Pintu\" data-large-file=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Pintu.jpg?fit=1000%2C611&amp;ssl=1\" data-medium-file=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Pintu.jpg?fit=300%2C183&amp;ssl=1\" data-orig-file=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Pintu.jpg?fit=1140%2C697&amp;ssl=1\" data-orig-size=\"1140,697\" data-permalink=\"https://dekoruma.blog/penyebab-kulkas-tidak-dingin/kulkas-tidak-dingin-pintu/\" data-recalc-dims=\"1\" loading=\"lazy\" sizes=\"(max-width: 1000px) 100vw, 1000px\" src=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Pintu.jpg?resize=1000%2C611&amp;ssl=1\" srcset=\"https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Pintu.jpg?w=1140&amp;ssl=1 1140w, https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Pintu.jpg?resize=300%2C183&amp;ssl=1 300w, https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Pintu.jpg?resize=768%2C470&amp;ssl=1 768w, https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Pintu.jpg?resize=1024%2C626&amp;ssl=1 1024w, https://i1.wp.com/dekoruma.blog/wp-content/uploads/2018/05/Kulkas-Tidak-Dingin-Pintu.jpg?resize=491%2C300&amp;ssl=1 491w\" style=\"height:611px; width:1000px\" /><em>google.com</em></p>\r\n\r\n<p>Berkali-kali dalam sehari dibukanya pintu kulkas bisa menyebabkan karet pintu kulkas tidak lagi berfungsi dengan baik. Jika karet pintu kulkas sudah tidak lagi berfungsi dengan baik, maka kulkas tidak tertutup sempurna. Jika penutupnya kurang rapat, maka udara yang di dalam kulkas akan keluar dan berinteraksi dengan udara bebas sehingga suhu dingin di dalam kulkas akan menurun menyebabkan kulkas tidak dingin lagi.</p>\r\n\r\n<hr />\r\n<p>Tujuh cara mudah di atas perlu kamu ketahui untuk mengatasi kulkas tidak dingin yang sering terjadi secara tiba-tiba. Tentunya, kulkas tidak dingin akan mengganggu kenyamanan aktivitasmu, kan? Selamat tinggal kulkas tidak dingin lagi!</p>\r\n\r\n<p>Jika kamu sedang mencari kulkas baru, kamu bisa cari di toko yang&nbsp;<a href=\"https://www.dekoruma.com/furniture\">jual&nbsp;<em>furniture online&nbsp;</em>Indonesia</a>&nbsp;seperti Dekoruma. Nah, selain furnitur dan elektronik, Dekoruma juga menyediakan kasur dengan ragam ukuran dan material. Beberapa kasur yang jadi favorit masyarakat Indonesia juga bisa kamu temukan, seperti&nbsp;<a href=\"https://www.dekoruma.com/kasur/search/Semua-Kategori/Elite\">kasur Elite</a>&nbsp;dan&nbsp;<a href=\"https://www.dekoruma.com/kasur/search/Spring-Bed/Alga\">kasur Alga</a>.</p>\r\n\r\n<p>Tak hanya sampai di situ saja, Dekoruma juga menyediakan properti untuk tempat tinggal atau berinvestasi, lho! Kamu bisa menemukan hunian dijual dari berbagai daerah, seperti&nbsp;<a href=\"https://www.dekoruma.com/list-properti/kota/bekasi/rumah-dijual\">rumah dijual di Bekasi</a>, Jakarta, Depok, Tangerang, dan kawasan berkembang lainnya. Tunggu apa lagi? Yuk, wujudkan rumah impianmu bersama&nbsp;<a href=\"https://www.dekoruma.com/\">Dekoruma</a>&nbsp;sekarang juga!</p>\r\n\r\n<p>Sumber :&nbsp;https://www.dekoruma.com/artikel/69689/penyebab-kulkas-tidak-dingin</p>\r\n', '', '', '2020-08-13', 'aktif', 'No', 15),
(81, 2, 'Agar Mesin Cuci Awet Hingga 10 Tahun, Terapkan Tips Berikut Ini', 'agar-mesin-cuci-awet-hingga-10-tahun-terapkan-tips-berikut-ini', 'agar-mesin-cuci-awet-hingga-10-tahun-terapkan-tips-berikut-ini-48.jpeg', '<p>Entah itu mesin cuci top loading atau front loading, bagi para pemilik mesin cuci, keinginan mereka untuk membuatnya awet hingga beberapa tahun ke depan tetaplah sama. Bahkan jika memungkinkan, pasti banyak yang menginginkan mesin cucinya mampu bertahan hingga 10 tahun. Tapi apakah mungkin? Dengan tips merawat mesin cuci di bawah ini, semua itu bisa saja terjadi.</p>\r\n\r\n<p>1. Gunakan Sesuai Kapasitas<br />\r\nSetiap mesin cuci memiliki kapasitasnya masing-masing. Ada yang memiliki kapasitas 7 kg ada juga yang 10 kg. Gunakan mesin cuci sesuai kapasitas tersebut. Ingat, terlalu memaksakan kinerja mesin cuci hanya akan memperpendek masa pakainya. Jadi jika ingin mesin cuci Anda awet, jangan abaikan tips merawat mesin cuci yang satu ini.</p>\r\n\r\n<p>2. Lindungi Panel Kontrol dari Air<br />\r\nPanel kontrol atau pusat kontrol mesin cuci terbuat dari komponen elektronik yang sangat rentan akan air. Jadi jaga agar bagian tersebut tidak sering terkena air, apalagi sampai merembes ke bagian dalam.</p>\r\n\r\n<p>3. Tempatkan Mesin Cuci di Permukaan Datar<br />\r\nMungkin tips merawat mesin cuci yang satu ini terdengar sepele. Akan tetapi menempatkan mesin cuci di permukaan yang tidak rata justru bisa mengganggu putaran gear box. Inilah yang kemudian membuat mesin cuci menjadi berisik saat beroperasi. Jika kondisi ini dibiarkan, gear box akan cepat rusak dan mesin cuci tak lagi bisa digunakan.</p>\r\n\r\n<p>4. Cabut Mesin Cuci Saat Tidak Digunakan<br />\r\nSaat tidak digunakan, cabut mesin cuci dari stop kontak. Ini dilakukan agar aliran listrik tidak terus mengalir ke mesin cuci. Mencabut mesin cuci saat tidak digunakan juga bisa meminimalisir risiko korsleting.</p>\r\n\r\n<p>Membersihkan mesin cuci secara teratur sebenarnya juga bisa memperpanjang masa pakainya. Mesin cuci jadi tidak mudah rusak. Risiko munculnya karat juga bisa ditekan. Anda bisa melakukannya dengan cara mengelap mesin cuci setelah digunakan. Selain itu, jauhkan mesin cuci dari tempat yang sering terpapar air. Dengan tips merawat mesin cuci ini, bukan mustahil mesin cuci tersebut bisa bertahan hingga 10 tahun. Namun awet atau tidaknya mesin cuci juga dipengaruhi oleh kualitasnya. Inilah yang ditawarkan Sharp melalui mesin cuci besutannya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber : https://id.sharp/news/agar-mesin-cuci-awet-hingga-10-tahun-terapkan-tips-berikut-ini</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 19),
(82, 2, 'Cara merawat dan membersihkan freezer untuk menjaga kualitas frozen food', 'cara-merawat-dan-membersihkan-freezer-untuk-menjaga-kualitas-frozen-food', 'cara-merawat-dan-membersihkan-freezer-untuk-menjaga-kualitas-frozen-food-37.jpeg', '<p>Makanan beku memang termasuk jenis makanan yang dapat bertahan lama di dalam&nbsp;<em>freezer</em>. Tapi sebagai tempat penyimpanan, ternyata&nbsp;<em>freezer&nbsp;</em>juga harus dibersihkan dan dirawat dengan baik. Sehingga makanan yang disimpan tidak terkontaminasi bau atau malah rusak. Lalu seperti apa sih cara merawat dan membersihkan freezer untuk menjaga kualitas&nbsp;<em>frozen food&nbsp;</em>tetap terjaga dengan baik?</p>\r\n\r\n<p><strong>Jangan menyimpan makanan panas</strong></p>\r\n\r\n<p>Makanan atau minuman yang masih panas, tentu akan menghasilkan udara yang juga panas. Jika disimpan begitu saja di dalam&nbsp;<em>freezer</em>&nbsp;tentu akan kurang baik untuk&nbsp;<em>freezer&nbsp;</em>dan membuatnya cepat rusak. Karena itu sebelum memasukkannya ke dalam&nbsp;<em>freezer</em>, sebaiknya dinginkan dalam suhu ruang terlebih dahulu.</p>\r\n\r\n<p><strong>Tidak terlalu sedikit, juga tidak terlalu penuh</strong></p>\r\n\r\n<p>Menyimpan makanan terlalu penuh, dapat membuat&nbsp;<em>freezer&nbsp;</em>kesulitan mengalirkan udara dingin secara merata. Sirkulasinya pun menjadi lebih terbatas. Dengan begitu, proses pembekuan pun jadi lebih lambat sehingga lama-kelamaan dapat memperpendek umur&nbsp;<em>freezer</em>. Sebaliknya&nbsp;<em>freezer&nbsp;</em>yang terlalu kosong juga kurang baik. Udara dingin dalam&nbsp;<em>freezer&nbsp;</em>dapat membuat material di dalamnya jadi membeku dan cepat rusak.</p>\r\n\r\n<p><strong>Hindari dekat-dekat tembok</strong></p>\r\n\r\n<p>Meletakkan makanan di dekat tembok dapat membuat aliran udara terhambat. Sehingga nantinya dapat membuat kinerja&nbsp;<em>freezer&nbsp;</em>terpengaruh. Karena itu sebaiknya beri jarak antara makanan dengan dinding-dinding lemari pembeku.</p>\r\n\r\n<p><strong>Bersihkan bunga es</strong></p>\r\n\r\n<p>Bunga es yang muncul di dalam&nbsp;<em>freezer</em>&nbsp;dapat membuat makanan atau minuman yang disimpan di dalamnya jadi susah beku. Karena itu&nbsp;bunga es harus dicairkan dan dibersihkan secara rutin. Namun hindari menggunakan benda tajam saat membersihkannya ya. Biasanya&nbsp;<em>freezer</em>&nbsp;menyediakan tombol untuk&nbsp;<em>defrost</em>&nbsp;untuk mencairkan bunga es kok.</p>\r\n\r\n<p><strong>Lap dan keringkan</strong></p>\r\n\r\n<p>Setelah bunga es mencair seluruhnya dan&nbsp;<em>freezer&nbsp;</em>kosong dari bahan makanan dan minuman, ada baiknya lap dan keringkan&nbsp;<em>freezer&nbsp;</em>terlebih dahulu sebelum digunakan kembali. Bersih,&nbsp;<em>freezer&nbsp;</em>pun jadi lebih awet.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber :&nbsp;https://www.kitchenofindonesia.com/cara-merawat-dan-membersihkan-freezer-untuk-menjaga-kualitas-frozen-food/</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 16),
(83, 2, 'Ini Dia 6 Cara Ampuh Usir Bau Pada Kulkas Dalam Sekejap', 'ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap', 'ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap-17.jpeg', '<p>Kebanyakan dari kita pasti pernah mengalami masalah ini di dapur.&nbsp;<a aria-label=\"link\" href=\"https://belitung.tribunnews.com/tag/kulkas\" title=\"Kulkas\">Kulkas</a>&nbsp;yang penuh, sumpek dan akhirnya berbau tidak sedap.&nbsp;<a aria-label=\"link\" href=\"https://belitung.tribunnews.com/tag/bau\" title=\"Bau\">Bau</a>&nbsp;itu akhirnya menempel pada makanan, buah hingga aneka cairan yang kita taruh di kulkas.</p>\r\n\r\n<p>Sungguh tidak nyaman.&nbsp;&nbsp;<a aria-label=\"link\" href=\"https://belitung.tribunnews.com/tag/bau\" title=\"Bau\">Bau</a>&nbsp;pada kulkas sebenarnya menjadi pertanda bahwa kulkas di rumah kurang sehat.</p>\r\n\r\n<p>Bau bisa disebabkan karena kontaminasi aroma makanan sampai&nbsp;perkembangan bakteri. Kalau sudah begini, kita harus pintar mencari jalan keluar.</p>\r\n\r\n<p>Ini dia 6 cara ampuh usir bau pada kulkas dalam sekejap.</p>\r\n\r\n<p><strong>1.&nbsp;&nbsp;<a aria-label=\"link\" href=\"https://belitung.tribunnews.com/tag/baking-soda\" title=\"Baking Soda\">Baking&nbsp;Soda</a></strong></p>\r\n\r\n<p>Baking soda ternyata punya fungsi menetralisir bau yang ada di dalam kulkas.</p>\r\n\r\n<p>Cara penggunaanya sangat mudah, cukup letakkan sekotak baking soda yang terbuka di dalam kulkas dan tutup rapat pintunya. Lakukan terus sampai bau di kulkas menghilang terserap baking soda.&nbsp;Untuk efek yang cepat, letakkan baking soda di setiap rak dalam kulkas.</p>\r\n\r\n<p>&nbsp;<strong>2. Kopi</strong></p>\r\n\r\n<p>Kopi sudah sejak lama terkenal menjadi penetralisir bau. Cara kerjanya masih sama, letakkan biji atau bubuk kopi di dalam lemari es. Kopi akan menyerap bau tidak sedap di kulkas dalam beberapa hari.&nbsp;</p>\r\n\r\n<p><strong>3. Vanilli</strong></p>\r\n\r\n<p>Vanilli memang punya aroma harum yang sedap. Aroma vanilli inilah yang dipercaya ampuh menghilangkan bau tidak sedap pada kulkas. Caranya teteskan beberapa tetes cairan vanilli pada kapas dan letakkan di setiap rak kulkas. Cara ini cukup ampuh sehingga dalam hitungan hari saja kulkas akan kembali berbau segar.</p>\r\n\r\n<p>&nbsp;<strong>4. Cuka</strong></p>\r\n\r\n<p>Cuka memang berbau masam dan kurang sedap, tapi cuka justru bisa menetralisir bau di kulkas. Cukup campurkan beberapa tetes cuka dalam segelas air lalu letakkan di rak kulkas.</p>\r\n\r\n<p>Cara lain adalah menggunakan campuran air dan cuka sebagai cairan saat kita membersihkan rak-rak pada kulkas.&nbsp;</p>\r\n\r\n<p><strong>5. Lemon</strong></p>\r\n\r\n<p>Cairan segar dari lemon ternyata ampuh juga menghilangkan bau tidak sedap pada kulkas.</p>\r\n\r\n<p>Caranya sangat sederhana. Taruh perasan air jeruk lemon dalam wadah dan tempatkan di sudut-sudut kulkas. Tutup pintunya dan dalam waktu 3 jam, kulkas akan kembali segar.</p>\r\n\r\n<p><strong>6. Jus Tomat</strong></p>\r\n\r\n<p>Cara yang satu ini sedikit lebih rumit tapi tetap layak dicoba. Lap bagian dalam kulkas dengan tomat yang telah di jus.</p>\r\n\r\n<p>Diamkan beberapa saat dan bilas bersih dengan detergen. Cara ini akan membuat bau tidak sedap menghilang dengan sekejap.&nbsp; &nbsp;</p>\r\n\r\n<p>Keenam cara di atas akan makin efektif jika kita telah mengeluarkan dulu semua bahan makanan dari kulkas.</p>\r\n\r\n<p>Bersihkan kulkas dan cuci rak-raknya, kemudian letakkan satu per&nbsp;satu bahan di dalam kulkas. Tutup pintunya dan biarkan selama beberapa saat hingga bau kulkas kembali segar.</p>\r\n\r\n<p>Cara ini terbukti ampuh mengembalikan kesegaran kulkas sehingga bahan makanan kita juga tetap segar. Ingat juga untuk selalu rutin membersihkan kulkas setiap minggu atau dua minggu sekali dan menyortir tumpukan bahan&nbsp;yang mungkin sudah rusak dan tidak bisa lagi digunakan. Dengan begini, kulkas jadi bersih dan tentu lapang.&nbsp;<br />\r\n<br />\r\nArtikel ini telah tayang di&nbsp;<a belitung=\"\" href=\"https:\">posbelitung.co</a>&nbsp;dengan judul Ini Dia 6 Cara Ampuh Usir Bau Pada Kulkas Dalam Sekejap,&nbsp;<a href=\"https://belitung.tribunnews.com/2018/03/10/ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap\">https://belitung.tribunnews.com/2018/03/10/ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap</a>.<br />\r\n<br />\r\nEditor: Khamelia</p>\r\n\r\n<p>Sumber :&nbsp;https://belitung.tribunnews.com/2018/03/10/ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap</p>\r\n', '', '', '2021-02-19', 'aktif', 'No', 28);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `nama` varchar(400) NOT NULL,
  `url` varchar(600) NOT NULL,
  `gambar` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `nama`, `url`, `gambar`) VALUES
(2, 'Laboratorium Kimia', 'https://drive.google.com/file/d/1CG2-lj3DI2l_EU7tzoeGsIZIOCRrMqAH/preview', 'laboratorium-kimia-59.jpeg'),
(3, 'Video Belajar Bersama', 'https://drive.google.com/file/d/1RI1zLbFyRBQqqOXY5_E5Dj1rq1tHOZIO/preview', 'video-3-26.jpeg'),
(4, 'Video Pembelajaran', 'https://drive.google.com/file/d/1AeygYY1nap-VNmGGyykypoz3wOiy8BVt/preview', 'video-4-42.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(400) DEFAULT NULL,
  `message` text NOT NULL,
  `tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `daily_car`
--

CREATE TABLE `daily_car` (
  `id_daily_car` int(5) NOT NULL,
  `id_daily_kategori` int(11) DEFAULT NULL,
  `id_daily_description` int(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_car`
--

INSERT INTO `daily_car` (`id_daily_car`, `id_daily_kategori`, `id_daily_description`, `judul`, `deskripsi`, `gambar`, `url`) VALUES
(1, 2, NULL, 'KARIMUN WAGON', NULL, 'karimun-wagon-47.jpeg', NULL),
(2, 2, NULL, 'DAIHATSU AYLA', NULL, 'daihatsu-ayla-26.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_description`
--

CREATE TABLE `daily_description` (
  `id_daily_description` int(11) NOT NULL,
  `id_daily_car` int(11) DEFAULT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daily_description`
--

INSERT INTO `daily_description` (`id_daily_description`, `id_daily_car`, `deskripsi`) VALUES
(1, 1, '<p>Lepas Kunci:<br />\r\n&bull; Rp 200.000 / 12 jam<br />\r\n&bull; Rp 250.000 / 24 jam</p>\r\n'),
(2, 1, '<p>Mobil+Supir:<br />\r\n&bull; Rp 275.000 / 12 jam<br />\r\n&bull; Rp 350.000 / 24 jam</p>\r\n'),
(3, 1, '<p>Mobil+Supir+BBM:<br />\r\n&bull; Rp 300.000 / 6 jam<br />\r\n&bull; Rp 345.000 / 12 jam<br />\r\n&bull; Rp 450.000 / 18 jam<br />\r\n&bull; Rp 500.000 / 24 jam</p>\r\n'),
(4, 1, '<p>ALL IN:<br />\r\n&bull; Rp 335.000 / 6 jam<br />\r\n&bull; Rp 395.000 / 12 jam<br />\r\n&bull; Rp 535.000 / 18 jam<br />\r\n&bull; Rp 600.000 / 24 jam</p>\r\n'),
(7, 2, '<p>Lepas Kunci<br />\r\n&bull; Rp 200.000 / 12 jam<br />\r\n&bull; Rp 250.000 / 24 jam</p>\r\n'),
(8, 2, '<p>Mobil+Supir:<br />\r\n&bull; Rp 275.000 / 12 jam<br />\r\n&bull; Rp 350.000 / 24 jam</p>\r\n'),
(9, 2, '<p>Mobil+Supir+BBM:<br />\r\n&bull; Rp 300.000 / 6 jam<br />\r\n&bull; Rp 345.000 / 12 jam<br />\r\n&bull; Rp 450.000 / 18 jam<br />\r\n&bull; Rp 500.000 / 24 jam</p>\r\n'),
(10, 2, '<p>ALL IN:<br />\r\n&bull; Rp 335.000 / 6 jam<br />\r\n&bull; Rp 395.000 / 12 jam<br />\r\n&bull; Rp 535.000 / 18 jam<br />\r\n&bull; Rp 600.000 / 24 jam</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `daily_kategori`
--

CREATE TABLE `daily_kategori` (
  `id_daily_kategori` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_kategori`
--

INSERT INTO `daily_kategori` (`id_daily_kategori`, `judul`, `judul_seo`, `deskripsi`) VALUES
(1, 'MPV', 'mpv', NULL),
(2, 'CITY CAR', 'city-car', NULL),
(3, 'PREMIUM CAR', 'premium-car', NULL),
(4, 'MICRO BUS', 'micro-bus', NULL),
(5, 'BUS', 'bus', NULL),
(6, 'MOBIL BARANG', 'mobil-barang', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_slider`
--

CREATE TABLE `daily_slider` (
  `id_daily_slider` int(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `gambar_mobile` varchar(400) NOT NULL,
  `url` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_slider`
--

INSERT INTO `daily_slider` (`id_daily_slider`, `judul`, `deskripsi`, `gambar`, `gambar_mobile`, `url`) VALUES
(1, 'Slider 1', NULL, 'slider-1-89.jpeg', '', NULL),
(2, 'Slider 2', NULL, 'slider-2-3.jpeg', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id_email` int(11) NOT NULL,
  `host` varchar(400) NOT NULL,
  `username` varchar(400) NOT NULL,
  `password` varchar(400) NOT NULL,
  `port` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id_email`, `host`, `username`, `password`, `port`) VALUES
(1, 'mail.lopotia.com', 'tako@lopotia.com', 'jogjamediaweb', 465);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `id_foto_kategori` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(500) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `keyword` varchar(350) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `gambar` varchar(500) DEFAULT NULL,
  `harga` varchar(300) DEFAULT NULL,
  `unggulan` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `dilihat` int(11) NOT NULL DEFAULT 0,
  `tgl` date NOT NULL DEFAULT current_timestamp(),
  `stok` enum('Tersedia','Terbatas','Habis','Pre Order') NOT NULL,
  `berat` int(11) DEFAULT NULL,
  `kode_produk` varchar(200) DEFAULT NULL,
  `harga_diskon` varchar(400) DEFAULT NULL,
  `promo` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id_foto`, `id_foto_kategori`, `id_admin`, `judul`, `judul_seo`, `deskripsi`, `keyword`, `description`, `gambar`, `harga`, `unggulan`, `dilihat`, `tgl`, `stok`, `berat`, `kode_produk`, `harga_diskon`, `promo`) VALUES
(1, NULL, 2, 'Foto Sekolah', 'foto-sekolah', NULL, '', '', 'foto-sekolah-20.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(2, NULL, 2, 'Ruang Kelas', 'ruang-kelas', NULL, '', '', 'ruang-kelas-43.jpeg', NULL, 'Tidak', 0, '2021-02-19', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(3, NULL, 2, 'Laboratorium Komputer', 'laboratorium-komputer', NULL, '', '', 'laboratorium-komputer-52.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(4, NULL, 2, 'Rapat Guru', 'rapat-guru', NULL, '', '', 'rapat-guru-77.jpeg', NULL, 'Tidak', 0, '2021-02-19', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(5, NULL, 2, 'Praktek Prakarya', 'praktek-prakarya', NULL, '', '', 'praktek-prakarya-15.jpeg', NULL, 'Tidak', 0, '2021-02-19', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(6, NULL, 2, 'Paskibraka', 'paskibraka', NULL, '', '', 'paskibraka-21.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(7, NULL, 2, 'Perpustakaan', 'perpustakaan', NULL, '', '', 'perpustakaan-75.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(8, NULL, 2, 'Kunjungan Rs Umum', 'kunjungan-rs-umum', NULL, '', '', 'kunjungan-rs-umum-55.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(9, NULL, 2, 'Kunjungan Pabrik', 'kunjungan-pabrik', NULL, '', '', 'kunjungan-pabrik-51.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(10, NULL, 2, 'Sosialisasi Literasi Media Jurnalistik', 'sosialisasi-literasi-media-jurnalistik', NULL, '', '', 'sosialisasi-literasi-media-jurnalistik-53.jpeg', NULL, 'Tidak', 0, '2021-02-19', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(11, NULL, 2, 'Pembelajaran di Kelas', 'pembelajaran-di-kelas', NULL, '', '', 'pembelajaran-di-kelas-18.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak'),
(12, NULL, 2, 'Bazaar', 'bazaar', NULL, '', '', 'bazaar-45.jpeg', NULL, 'Tidak', 0, '2021-02-22', 'Tersedia', NULL, NULL, NULL, 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `nama` varchar(400) NOT NULL,
  `gambar` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `nama`, `gambar`) VALUES
(1, 'Galeri 1', 'httpswwwinstagramcomlabel_klambi-56.jpeg'),
(2, 'Galeri 2', 'galeri-2-61.jpeg'),
(10, 'Galeri 3', 'galeri-3-50.jpeg'),
(11, 'Galeri 4', 'galeri-4-72.jpeg'),
(12, 'Galeri 5', 'galeri-5-90.jpeg'),
(13, 'Galeri', 'galeri-89.jpeg'),
(14, 'Galeri', 'galeri-86.jpeg'),
(15, 'Galeri 8', 'galeri-8-36.jpeg'),
(16, 'Galeri', 'galeri-36.jpeg'),
(17, 'galeri', 'galeri-27.jpeg'),
(18, 'galeri', 'galeri-99.jpeg'),
(19, 'galeri', 'galeri-41.jpeg'),
(20, 'galeri', 'galeri-96.jpeg'),
(21, 'galeri', 'galeri-81.jpeg'),
(22, 'galeri', 'galeri-95.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_foto`
--

CREATE TABLE `gallery_foto` (
  `id_gallery` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `id_foto` int(11) NOT NULL,
  `judul` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_foto`
--

INSERT INTO `gallery_foto` (`id_gallery`, `gambar`, `id_foto`, `judul`) VALUES
(1, 'sosialisasi-literasi-media-jurnalistik23.jpeg', 1, 'Gambar 2'),
(2, 'sosialisasi-literasi-media-jurnalistik87.jpeg', 1, 'Gambar 3'),
(3, 'sosialisasi-literasi-media-jurnalistik30.jpeg', 1, 'Gambar  4'),
(4, 'sosialisasi-literasi-media-jurnalistik38.jpeg', 1, 'Gambar 5'),
(6, 'ruang-kelas88.jpeg', 2, 'Gambar 2'),
(8, 'ruang-kelas17.jpeg', 2, 'Gambar 4'),
(9, 'ruang-kelas81.jpeg', 2, 'Gambar 5'),
(10, 'rapat-guru11.jpeg', 3, 'Gambar 2'),
(11, 'praktek-prakarya18.jpeg', 4, 'Gambar 2'),
(12, 'praktek-prakarya85.jpeg', 4, 'Gambar 3'),
(13, 'praktek-prakarya92.jpeg', 4, 'Gambar 4'),
(14, 'praktek-prakarya77.jpeg', 4, 'Gambar 5'),
(15, 'perpustakaan6.jpeg', 5, 'Gambar 2'),
(16, 'perpustakaan33.jpeg', 5, 'Gambar 3'),
(17, 'paskibraka42.jpeg', 6, 'Gambar 2'),
(18, 'paskibraka92.jpeg', 6, 'Gambar 3'),
(19, 'paskibraka14.jpeg', 6, 'Gambar 4'),
(20, 'paskibraka46.jpeg', 6, 'Gambar 5'),
(21, 'paskibraka65.jpeg', 6, 'Gambar 6'),
(22, 'paskibraka21.jpeg', 6, 'Gambar 7'),
(23, 'paskibraka61.jpeg', 6, 'Gambar 8'),
(24, 'paskibraka32.jpeg', 6, 'Gambar  9'),
(25, 'laboratorium-komputer6.jpeg', 7, 'Gambar 2'),
(26, 'laboratorium-komputer37.jpeg', 7, 'Gambar 3'),
(27, 'kunjungan-rs-umum53.jpeg', 8, 'Gambar 2'),
(28, 'kunjungan-rs-umum24.jpeg', 8, 'Gambar 3'),
(29, 'kunjungan-rs-umum12.jpeg', 8, 'Gambar 4'),
(30, 'kunjungan-rs-umum92.jpeg', 8, 'Gambar 5'),
(31, 'kunjungan-rs-umum27.jpeg', 8, 'Gambar 6'),
(32, 'kunjungan-rs-umum76.jpeg', 8, 'Gambar 7'),
(33, 'kunjungan-rs-umum34.jpeg', 8, 'Gambar 8'),
(34, 'kunjungan-rs-umum40.jpeg', 8, 'Gambar 9'),
(35, 'kunjungan-pabrik99.jpeg', 9, '1'),
(36, 'kunjungan-pabrik61.jpeg', 9, '2'),
(37, 'kunjungan-pabrik88.jpeg', 9, '3'),
(38, 'kunjungan-pabrik53.jpeg', 9, '4'),
(39, 'kunjungan-pabrik54.jpeg', 9, '5'),
(40, 'kunjungan-pabrik1.jpeg', 9, '6'),
(41, 'foto-sekolah42.jpeg', 10, 'Gambar 2'),
(42, 'foto-sekolah41.jpeg', 10, 'Gambar 3'),
(43, 'foto-sekolah48.jpeg', 10, 'Gambar 4'),
(44, 'foto-sekolah37.jpeg', 10, 'Gambar 5'),
(45, 'foto-sekolah1.jpeg', 10, 'Gambar 6'),
(46, 'pembelajaran-di-kelas40.jpeg', 11, 'Gambar 2'),
(47, 'pembelajaran-di-kelas58.jpeg', 11, 'Gambar 3'),
(48, 'pembelajaran-di-kelas11.jpeg', 11, 'Gambar 4'),
(49, 'pembelajaran-di-kelas35.jpeg', 11, 'Gambar 5'),
(50, 'bazaar51.jpeg', 12, 'Gambar 2'),
(51, 'bazaar1.jpeg', 12, 'Gambar 3'),
(52, 'bazaar44.jpeg', 12, 'Gambar 4');

-- --------------------------------------------------------

--
-- Table structure for table `icon`
--

CREATE TABLE `icon` (
  `id_icon` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icon`
--

INSERT INTO `icon` (`id_icon`, `nama`) VALUES
(1, 'fas fa-sync'),
(2, 'far fa-clock'),
(3, 'far fa-smile'),
(4, 'fas fa-piggy-bank'),
(5, 'fas fa-cogs'),
(6, 'far fa-comments');

-- --------------------------------------------------------

--
-- Table structure for table `kategorix`
--

CREATE TABLE `kategorix` (
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategorix`
--

INSERT INTO `kategorix` (`id_kategori`, `judul`, `judul_seo`, `deskripsi`, `gambar`) VALUES
(14, 'Promo', 'promo', NULL, 'promo-90.jpeg'),
(16, 'Label Katun', 'label-katun', NULL, 'label-sablon-65.jpeg'),
(18, 'Label Katun Baby', 'label-katun-baby', NULL, 'label-katun-baby-77.jpeg'),
(19, 'Label Satin Impor', 'label-satin-impor', NULL, 'label-satin-impor-59.jpeg'),
(20, 'Label Woven Bordir', 'label-woven-bordir', NULL, 'label-woven-bordir-25.jpeg'),
(21, 'Hangtag', 'hangtag', NULL, 'hangtag-53.jpeg'),
(22, 'Accessories', 'accessories', NULL, 'accessories-36.jpeg'),
(23, 'Buku Tamu', 'buku-tamu', NULL, 'buku-tamu-36.jpeg'),
(24, 'Packaging', 'packaging', NULL, 'label-katun-40.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `keunggulan`
--

CREATE TABLE `keunggulan` (
  `id_keunggulan` int(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `tgl_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keunggulan`
--

INSERT INTO `keunggulan` (`id_keunggulan`, `judul`, `deskripsi`, `telp`, `gambar`, `url`, `tgl_update`) VALUES
(1, 'Ramah di Kantong', 'Minimal order untuk label hanya 1Rol, selain itu harga ramah di kantong, kualitas kami utamakan. Jadi buat kamu para pemula ini STARTUP FRIENDLY banget.', NULL, 'ramah-di-kantong-32.png', NULL, '2020-10-16'),
(2, 'Proses Produksi', 'Proses produksi kami tepat waktu, 10-14hari kerja.', NULL, 'proses-produksi-31.png', NULL, '2020-10-16'),
(3, 'Customer Service', 'Didukung oleh Customer Service ramah, dan fast respon siap melayani dan memproses pesanan Anda.', NULL, 'customer-service-57.png', NULL, '2020-08-12'),
(4, 'Banya Pilihan', 'Banyak model dan pilihan bahan yang bisa Anda pilih dari beberapa kategori label kami : Woven, Katun, Katun Baby, Satin Impor, Hangtag, Packaging dll', NULL, 'banya-pilihan-36.png', NULL, '2020-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `keuntungan`
--

CREATE TABLE `keuntungan` (
  `id_keuntungan` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keuntungan`
--

INSERT INTO `keuntungan` (`id_keuntungan`, `judul`, `judul_seo`, `deskripsi`, `gambar`) VALUES
(2, 'Cepat', 'cepat', 'Kami selalu berusaha secepat mungkin untuk menyelesaikan pekerjaan yang dipercayakan kepada kami namun tetap menjaga kualitas.', 'far fa-clock'),
(3, 'Garansi', 'garansi', 'Untuk semua jasa dan suku cadang yang kami kerjakan mendapatkan jaminan kualitas berupa garansi service dan suku cadang.', 'fas fa-sync'),
(4, 'Komunikatif', 'komunikatif', 'Sebelum melakukan tindakan dan penggantian suku cadang kami sampaikan terlebih dahulu tahapan tindakan dan harganya kepada anda.', 'far fa-comments'),
(5, 'Suku Cadang Lengkap', 'suku-cadang-lengkap', 'Kami menyediakan suku cadang untuk semua merek dan jenis ac ruang model lama maupun model baru. Sehingga tak perlu khawatir', 'fas fa-cogs'),
(6, 'Teknisi Yang Berpengalaman', 'teknisi-yang-berpengalaman', 'Dalam bekerja kami senantiasa menjaga kualitas pekerjaan dengan memperhatikan faktor keselamatan, ketelitian dan komunikatif.', 'far fa-smile'),
(7, 'Harga Murah', 'harga-murah', 'Kami memberikan layanan dengan kualitas yang memenuhi standar service dan reparasi mesin pendingin namun dengan harga yang kompetitif.', 'fas fa-piggy-bank');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `judul`, `judul_seo`, `deskripsi`) VALUES
(1, 'Jogja Utara', 'jogja-utara', NULL),
(2, 'Jogja Timur', 'jogja-timur', NULL),
(3, 'Jogja Tenggara', 'jogja-tenggara', NULL),
(4, 'Jogja Selatan', 'jogja-selatan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nama_seo` varchar(200) DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `hapus` enum('Yes','No') DEFAULT NULL,
  `jenis_modul` enum('Text','Textarea','Judul & Text','Judul & Textarea','Text Images','Textarea Images','Images','Video','Select') DEFAULT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `tampil` enum('Ya','Tidak') DEFAULT NULL,
  `status` enum('On','Off') DEFAULT NULL,
  `no_urut` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama`, `nama_seo`, `gambar`, `deskripsi`, `hapus`, `jenis_modul`, `tgl_update`, `tampil`, `status`, `no_urut`) VALUES
(0, 'Nama Web', 'nama-web', '', 'Citra Tour,citra-tour,citra-tour,citra-tour', 'No', '', '2017-11-01 02:22:09', 'Tidak', 'On', 0),
(1, 'Logo Web', 'logo-web', '15WhatsApp Image 2021-02-12 at 15.27.14.jpeg', '', 'No', 'Images', '2021-02-24 00:00:00', 'Ya', 'On', 1),
(2, 'Kota', NULL, NULL, '501', 'No', 'Select', '2020-10-27 00:00:00', 'Tidak', 'On', 5),
(3, 'Footer Information', 'home-footer', '', '<p>Sakya Label</p>\r\n\r\n<p>Hubungi Kami :<br />\r\n(WA / SMS / Telp)<br />\r\n085-729-585-548<br />\r\nEmail :&nbsp;<a href=\"mailto:evalutfina@gmail.com\">evalutfina@gmail.com</a></p>\r\n\r\n<p>Jl. Brojogaten Raya No. 25&nbsp;Baturetno, Banguntapan, Bantul&nbsp;Yogyakarta 55197</p>\r\n', 'No', 'Textarea', '2020-11-14 00:00:00', 'Tidak', 'Off', 3),
(7, 'No WA', 'no-wa', '', '6281329001631', 'No', 'Text', '2021-02-17 00:00:00', 'Ya', 'On', 7),
(9, 'Email', 'email', '', 'evalutfina@gmail.com', 'No', 'Text', '2020-11-16 00:00:00', 'Tidak', 'On', 9),
(10, 'Twitter', 'email', '', 'https://twitter.com', 'No', 'Text', '2020-10-16 00:00:00', 'Tidak', 'On', 3),
(18, 'Footer Information', 'visitor-embed', '', '<p>Anda sedang mencari&nbsp;<strong>Service &nbsp;</strong>untuk memperbaiki barang&nbsp;Anda yang rusak? Atau Anda sedang mencari jasa service Kulkas, AC, Mesin Cuci, Freezer, Showcase ? Serahkan kepada kami. Kami ahlinya ! Kami sudah berpengalaman dalam bidang perbaikan Kulkas, AC, Mesin Cuci, Freezer, Showcase di Sleman &amp; Jogja.</p>\r\n', 'No', 'Textarea', '2021-02-25 00:00:00', 'Ya', 'On', 3),
(19, 'Footer Pengiriman', 'visitor-counter', '', '<p><img alt=\"\" src=\"https://1.bp.blogspot.com/-fwtVBbL9r94/XnHvo7K4ZCI/AAAAAAAAAZI/ieK4XnQPR8M_9ZTiUEOKgg8I5mVVtFHeACLcBGAsYHQ/s1600/logo-jasa-kirim-pos-jne-tiki-jnt-jne.png\" style=\"width:100%\" /></p>\r\n', 'No', 'Textarea', '2021-02-17 00:00:00', 'Tidak', 'On', 3),
(20, 'Tawkto Script', 'fb', '', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602cea799c4f165d47c4200b/1eunn7ujr\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 'No', 'Text', '2021-02-17 00:00:00', 'Tidak', 'On', 3),
(22, 'Logo Footer', 'logo-web-small', '73logo smansakopin.png', 'logo_new@2x.png', 'No', 'Images', '2021-02-23 00:00:00', 'Tidak', 'On', 0),
(77, 'Title', 'title', '', 'Jomblang Cave Tour', 'No', '', '2017-10-26 06:07:05', 'Tidak', 'Off', 0),
(78, 'Keywords', 'keywords', '', 'Keyword Adisukma', 'No', 'Text', '2017-12-20 00:07:46', 'Tidak', 'Off', 0),
(79, 'Description', 'description', '', 'Deskripsi Adisukma', 'No', 'Text', '2017-12-20 00:07:55', 'Tidak', 'Off', 0),
(80, 'Footer Contact', NULL, '', '<p><strong>BANGKIT TEKNIK SERVICE</strong></p>\r\n\r\n<p><strong>Alamat Kami :</strong><br />\r\nJl. Sengon No.178 AA, Gowok, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281</p>\r\n\r\n<p><strong>Contact Us :</strong><br />\r\n0821-2224-4415<br />\r\nbangkitteknik.com</p>\r\n', NULL, 'Textarea', '2021-02-25 00:00:00', 'Ya', 'On', 2),
(81, 'Google Map', NULL, '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31625.530092815326!2d110.39412539999996!3d-7.7695325999999945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5d910692cbc7%3A0x75a46491cd8e73b0!2s!5e0!3m2!1sid!2sid!4v1614224069190!5m2!1sid!2sid\" width=\"100%\" height=\"250\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'No', 'Text', '2021-02-25 00:00:00', 'Ya', 'On', 8),
(82, 'No telp', NULL, '', '(0619) 0624', 'No', 'Text', '2021-02-19 00:00:00', 'Tidak', 'On', 4),
(83, 'Pesan Promo', NULL, '', 'Kami menerima pesanan dan pengiriman label dari dan ke seluruh wilayah di Indonesia. Jadi tunggu apa lagi? segera buat label usaha fashion anda disini', 'No', 'Text', '2021-02-17 00:00:00', 'Tidak', 'On', NULL),
(84, 'Script Head', NULL, '', '<!-- Global site tag (gtag.js) - Google Ads: 694515717 -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=AW-694515717\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'AW-694515717\');\r\n</script>\r\n\r\n\r\n\r\n		\r\n		<!-- Global site tag (gtag.js) - Google Ads: 598387016 -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=AW-598387016\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'AW-598387016\');\r\n</script>\r\n<!-- Event snippet for Kunjungan halaman conversion page -->\r\n<script>\r\n  gtag(\'event\', \'conversion\', {\'send_to\': \'AW-598387016/HR-zCPTa5d0BEMjSqp0C\'});\r\n</script>\r\n		<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W72WTLW\');</script>\r\n<!-- End Google Tag Manager --> \r\n		\r\n		<meta name=\"google-site-verification\" content=\"g-x_R9sZtd6uuHmFqCKoGdbLN7RzIiLxzlIgXeLxzrM\" />', 'No', 'Text', '2020-12-30 00:00:00', 'Tidak', 'On', 5),
(85, 'Script Body', NULL, '', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W72WTLW\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->\r\n		<!-- Navigation -->', 'No', 'Text', '2020-12-30 00:00:00', 'Tidak', 'On', 5);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id_page` int(5) NOT NULL,
  `judul` varchar(180) NOT NULL,
  `judul_seo` varchar(200) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `hapus` enum('Yes','No') DEFAULT NULL,
  `jenis_modul` enum('Text','Textarea','Judul & Text','Judul & Textarea','Text Images','Textarea Images','Images','Images SEO','SEO','Images & Link') NOT NULL,
  `status` enum('On','Off') DEFAULT NULL,
  `tampil` enum('Ya','Tidak') DEFAULT NULL,
  `title` varchar(12800) DEFAULT NULL,
  `keyword` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `dilihat` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `judul`, `judul_seo`, `gambar`, `deskripsi`, `hapus`, `jenis_modul`, `status`, `tampil`, `title`, `keyword`, `description`, `tgl_update`, `dilihat`) VALUES
(0, 'Label Klambi', '', 'enom-management-40.jpeg', '', 'No', 'SEO', 'On', 'Ya', 'Jasa Service Sleman & Jogja', 'service ac, service kulkas, service mesin cuci, service freezer, service showcase, service dijogja, service disleman, service di klaten', 'Bangkit Teknik melayani service kulkas, service mesin cuci, service freezer, showcase, ac split di sleman & jogja', '2021-02-25 00:00:00', 0),
(1, 'Header', '', 'header-74.jpeg', '<h3>Bangkit Teknik</h3>\r\n\r\n<p style=\"text-align:justify\">Kami Spesialis Service AC&nbsp;SPLIT,MESIN CUCI, FREEZER, SHOWCASE &amp; KULKAS Di Sleman &amp; Jogja Yang Menyediakan Jasa Service Panggilan Sleman &amp; Jogja Maupun Di Tempat Khusus Anda Yang Bertempat Tinggal Di Jogja dan sekitarnya.</p>\r\n', 'No', 'Textarea Images', 'Off', 'Tidak', '', '', '', '2021-02-25 00:00:00', 0),
(2, 'Portofolio', 'portofolio', 'catalogue-11.jpeg', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong>Sususan Redaksi&nbsp;</strong></span><br />\r\nPimpinan Redaksi :<br />\r\nDwijo Suyono</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<span style=\"font-size:14px\"><strong>Staf Redaksi/Reporter :</strong></span><br />\r\nDwijo Suyono<br />\r\nN Sukardi<br />\r\nArif Wicaksono<br />\r\nNadia Sekar Arum&nbsp;</p>\r\n', 'No', 'Textarea', 'On', 'Ya', 'Portofolio', 'enom management,  e-nom, event profesional, event organizer,', 'enom management merupakan event organizer yang melingkupi event budaya, seminar, gathering, bazaar juga pameran seni', '2020-10-06 00:00:00', 0),
(3, 'Prakata', 'event', 'prakata-82.jpeg', '<h3>Service Bangkit Teknik</h3>\r\n\r\n<p><strong>Service Bangkit Teknik&nbsp;</strong>adalah Tempat&nbsp;<strong>Service AC, FREEZER, SHOWCASE, KULKAS, &amp; MESIN CUCI di Sleman &amp; Jogja</strong>, Murah &amp; Bergaransi , Layanan Usaha Di Bidang Jasa Perbaikan Yang Menyediakan Jasa Service AC, FREEZER, SHOWCASE, KULKAS, &amp; MESIN CUCI&nbsp;Kami Hadir Untuk Memberikan Solusi Kepada Anda Yang Sedang Membutuhkan Jasa&nbsp;<strong>Service&nbsp;di Jogja dan sekitarnya.</strong></p>\r\n', 'No', 'Textarea', 'Off', 'Tidak', '', '', '', '2021-02-25 00:00:00', 0),
(4, 'Foto', 'seo-galeri', 'foto-99.jpeg', '', 'No', 'Images SEO', 'Off', 'Tidak', 'Foto', '', '', '2021-02-20 00:00:00', 0),
(8, 'Kontak Kami', '', 'kontak-kami-87.jpeg', '<p>dalam proses input data</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 'No', 'Textarea Images', 'On', 'Tidak', 'Kontak', '', '', '2021-02-23 00:00:00', 0),
(9, 'Berita', 'cara-order', 'berita-28.jpeg', '', 'No', 'Images SEO', 'On', 'Ya', 'Berita', '', '', '2021-02-20 00:00:00', 0),
(10, 'Layanan', 'syarat--ketentuan', 'layanan-37.jpeg', '<h2 style=\"text-align:center\"><strong>SPESIALIS SERVICE KHUSUS KULKAS, MESIN CUCI, FREEZER SEGALA MERK</strong></h2>\r\n\r\n<h3 style=\"text-align:center\"><strong>0821-2224-4415&nbsp; (SMS,Tlp,WA)</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Selain mengerjakan di bengkel juga menerima panggilan servis kota Sleman &amp; Jogja. Service khusus Kulkas, Mesin Cuci, Freezer dengan masalah &nbsp;seperti :</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">AC Split</div>\r\n	</li>\r\n</ul>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Service cleaning AC split&nbsp;</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Pemasangan AC split</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Penambahan dan pengisian freon&nbsp;</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan AC split&nbsp;</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Bongkar AC split&nbsp;</div>\r\n	</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan kulkas</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan showcase</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan freezer</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan mesin cuci</div>\r\n	</li>\r\n</ul>\r\n', 'No', 'Textarea Images', 'On', 'Ya', '', '', '', '2021-02-25 00:00:00', 0),
(11, 'Profile Sekolah', 'tentang-kami', 'profile-sekolah-76.jpeg', '<div class=\"table-responsive\">\r\n<table cellspacing=\"0\" class=\"table table-bordered\" style=\"border-collapse:collapse; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"9\" style=\"background-color:black; border-bottom:none; border-left:none; border-right:none; border-top:none; height:20px; text-align:left; vertical-align:middle; white-space:nowrap; width:682px\"><span style=\"font-size:14px\"><span style=\"color:white\"><strong><span style=\"font-family:Calibri\">1. Identitas Sekolah</span></strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">1</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Nama Sekolah</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">SMAN 1 KOTAPINANG</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">2</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">NPSN</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">10205379</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">3</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Jenjang Pendidikan</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">SMA</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">4</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Status Sekolah</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:&nbsp;</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Negeri</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">5</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Alamat Sekolah</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">JL. BEDAGAI NO.25 KOTA PINANG</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">RT / RW</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">0</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; text-align:center; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">/</span></span></span></td>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; text-align:center; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">0</span></span></span></td>\r\n			<td colspan=\"3\" style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; text-align:left; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kode Pos</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">21464</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kelurahan</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kota Pinang</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kecamatan</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kec. Kota Pinang</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kabupaten/Kota</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Kab. Labuhan Batu Selatan</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Provinsi</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Prov. Sumatera Utara</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Negara</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:&nbsp;</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Indonesia</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">6</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Posisi Geografis</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"3\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">1.8985</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Lintang</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:20px; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td colspan=\"3\" style=\"border-bottom:none; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">100.0854</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Bujur</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"9\" style=\"background-color:black; border-bottom:none; border-left:none; border-right:none; border-top:none; height:20px; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:white\"><strong><span style=\"font-family:Calibri\">3. Kontak Sekolah</span></strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">1</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Nomor Telepon</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">0624</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">2</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Nomor Fax</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:&nbsp;</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">95146</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">3</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Email</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">smansa_kopin@yahoo.com</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; height:21px; text-align:right; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">4</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:normal; width:223px\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">Website</span></span></span></td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">:&nbsp;</span></span></span></td>\r\n			<td colspan=\"6\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:.7px solid black; border-top:1px solid black; text-align:left; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:14px\"><span style=\"color:black\"><span style=\"font-family:Calibri\">http://www.smansakopin.com</span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 'No', 'Textarea Images', 'On', 'Ya', 'Profile Sekolah', '', '', '2021-02-24 00:00:00', 0),
(12, 'Daily Rent Car', 'info-iklan', 'galeri-4.jpeg', '<p><strong>Rental &amp; Sewa Mobil di Jogja</strong>&nbsp;&ndash; Anda mencari perusahaan rental dengan unit terlengkap di Jogja? Sabila Transport menyediakan hingga 30 jenis kendaraan untuk Anda sewa selama di Jogja. Dengan paket yang beragam mulai dari&nbsp;<strong>Lepas Kunci</strong>,&nbsp;<strong>Mobil+Supir</strong>,&nbsp;<strong>Mobil+Supir+BBM</strong>&nbsp;dan&nbsp;<strong>All In (Mobil+Supir+BBM+Parkir+Konsumsi Supir)</strong>.</p>\r\n\r\n<p>Berkunjung ke Kota Jogja tentu akan terasa sulit jika Anda tidak memilih akomodasi transportasi yang nyaman. Sabila Transport memberikan layanan dengan Driver Profesional dan siap mengantarkan Anda berkeliling menjelajah kota Gudeg. Tak hanya berkeliling kota yang indah saja dengan pesona kenangan yang tak terlupakan, namun Sabila Transport dapat mengantarkan Anda menuju&nbsp;<strong>Pantai Gunung Kidul</strong>&nbsp;yang indah dan sedang Hits saat ini. Menikmati pemandangan&nbsp;<strong>Sunrise</strong>&nbsp;dan&nbsp;<strong>Sunset</strong>&nbsp;di Spot terbaik Jogja seperti&nbsp;<strong>Mangunan</strong>,&nbsp;<strong>Candi Borobudur, Candi Prambanan&nbsp;</strong>dan lainnya. Anda juga dapat melihat gallery wisata Sabila Transport dengan mengunjungi IG&nbsp;<a href=\"https://www.instagram.com/sabila_transport/\">@sabila_transport</a>.</p>\r\n', 'No', 'Textarea', 'On', 'Ya', '', '', '', '2021-02-26 00:00:00', 0),
(13, 'Quote', 'prakata', '', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">&rdquo;</span></span><strong><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Menghasilkan Peserta Didik Yang </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Bermutu</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"> , </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Berbudaya,</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">bermartabat mampu menguasai</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Ilmu Pengetahuan dan </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Teknologi Informasi&nbsp; Komunikasi Yang Tinggi Dengan Dilandasi Iman dan Taqwa</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"> dengan nilai-nilai karakter budaya bangsa</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">&rdquo;</span></span></em></strong></p>\r\n', NULL, 'Textarea', 'On', 'Ya', 'Sakya Label Jogja | Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju ', 'Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', 'Sakya Label Jogja menyediakan jasa cetak undangan, guestbook, tag souvenir, roller belt, hangtag, pricetag, label baju serta berbagai kebutuhan cetak anda baik untuk kepentingan pribadi maupun branding sebuah produk. Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', '2021-02-19 00:00:00', 0);
INSERT INTO `page` (`id_page`, `judul`, `judul_seo`, `gambar`, `deskripsi`, `hapus`, `jenis_modul`, `status`, `tampil`, `title`, `keyword`, `description`, `tgl_update`, `dilihat`) VALUES
(14, 'prakata Custom Tour', '', 'profile-video-12.jpeg', '<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:18.0pt\">Daftar Harga Service AC Jogja Klaten</span></span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<div class=\"table-responsive\">\r\n<table cellspacing=\"0\" class=\"table table-bordered\" style=\"border-collapse:collapse; border:none; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">No</span></strong></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Jenis Layanan</span></strong></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">0,5 Pk - 1 Pk</span></strong></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">1,5 Pk - 2pk</span></strong></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Service Ac Split (Cuci Ac Indoor dan Outdoor) 1 unit</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 60.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 60.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Service Ac Split (Cuci Ac Indoor dan Outdoor) 3 sd 5 unit</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 55.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 55.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Service Ac Split (Cuci Ac Indoor dan Outdoor) lebih dari 6 unit</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 50.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 50.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">4</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">Jasa Pengecekan 1 unit </span></span><span style=\"font-size:12.0pt\">( Tanpa Tindakan )</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 35.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 35.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">5</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Jasa Troubelshoting Kerusakan ( Tanpa Tindakan )</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 75.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 75.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">6</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Bongkar Ac Split ( Lokasi Standart )</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 150.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 175.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">7</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Pasang Ac Split Bekas + Vakum ( Tanpa Bahan)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 225.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 250.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">8</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Pasang Ac Split Baru + Vakum ( Tanpa Bahan)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 250.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 275.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">9</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Bongkar - Pasang Ac Split dalam satu area ( Tanpa Bahan)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 300.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 350.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">10</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Bongkar - Pasang Ac Split berbeda area ( Tanpa Bahan)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 325.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 375.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">11</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Penambahan Freon R22 Ac Split 10psi s/d 20psi</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 150.000 - Rp 200.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 175.000 - Rp 250.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">12</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Penambahan Freon R32 Ac Split 10psi s/d 20psi</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 150.000 - Rp 200.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 175.000 - Rp 250.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">13</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Penambahan Freon R410 Ac Split 10psi s/d 20psi</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 150.000 - Rp 200.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 175.000 - Rp 250.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">14</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Pengisian Freon R22 Ac Split ( Dari Kosong)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 350.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 400.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">15</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Pengisian Freon R32 Ac Split ( Dari Kosong)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 400.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 500.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">16</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Pengisian Freon R410 Ac Split ( Dari Kosong)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 400.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 500.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">17</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:429px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Jasa Reparasi Ringan</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 75.000,-</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Rp 75.000,-</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:34px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">18</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:429px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Perbaikan / Reparasi</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:198px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Hubungi Kami</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:189px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Hubungi Kami</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Catatan:</span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Harga dapat berubah sewaktu-waktu.</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Harga tersebut merupakan perkiraan dengan kondisi ac pada umumnya/standar.</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Harga diatas berlaku untuk pekerjaan dengan tingkat kesulitan standar.</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Harga tersebut untuk jarak lokasi wajar.</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Jika lokasi jauh dikenakan biaya transpot.</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Pengantian sparepart garansi 1 bulan</span></span></span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><a href=\"http://localhost/images/source/Daftar%20Harga%20Service%20AC%20Jogja%20Klaten%20BANGKIT%20TEKNIK%20pdf.pdf\"><img alt=\"\" src=\"https://lh3.googleusercontent.com/-fsG4lSQJEak/YDckyE2mLfI/AAAAAAAAAKM/e0Iu1lkNzsgAOrK8T7aZX7cMxu1011PLACLcBGAsYHQ/download-pdf-button-kamarmandiku-blog.png\" style=\"height:67px; width:250px\" /></a></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', NULL, 'Textarea', 'On', 'Ya', 'Daftar Harga', '', '', '2021-02-25 00:00:00', 0),
(15, 'Syarat & Ketentuan', '', 'sarana-prasarana-29.jpeg', '<p>dalam proses input data.</p>\r\n', 'No', 'Textarea Images', 'On', 'Ya', 'Sarana Prasarana', '', '', '2021-02-23 00:00:00', 0),
(16, 'Tips', '', 'prestasi-7.jpeg', '<h3><strong>Tips Sewa Mobil di Jogja</strong><br />\r\n&nbsp;</h3>\r\n\r\n<p>Untuk lebih meyakinkan Anda agar menyewa mobil di Sabila Transport, kami akan memberikan tips untuk Anda. Tips ini berdasarkan pengamatan kami ketika calon pelanggan ingin melakukan transaksi sewa atau rental mobil.</p>\r\n\r\n<p>1. Kenali Penyedia Rental Mobil<br />\r\nSaat Anda ingin menggunakan pelayanan dari seorang penyedia jasa. Ada baiknya Anda mengetahui profil dari penyedia jasa tersebut. Ini bertujuan agar Anda mendapatkan garansi keamanan dan kenyamanan ketika menggunakan layanan dari si penyedia jasa.</p>\r\n\r\n<p>2. Pesan Jauh Jauh Hari<br />\r\nSetiap layanan memiliki periode mereka sendiri. Akan lebih baik jika Anda juga memiliki rencana sebelum melakukan perjalanan atau berlibur. Moment liburan panjang (Long Weekend) dapat memberikan imbas pada kenaikan harga sewa mobil. Selain itu, penyedia jasa sewa mobil cenderung menaikkan harga pada hari Sabtu dan Minggu. Perhatikan hari di mana Anda ingin melakukan perjalanan atau berlibur.</p>\r\n\r\n<p>3. Ketahui Harga Pasar<br />\r\nSetiap daerah akan memiliki regulasi sewa mobil yang berbeda. Jika Anda berkunjung ke kota Jogjakarta, durasi sewa yang di sediakan bisa 12 Jam. Namun jika Anda berkunjung ke Bali durasi sewa yang di sediakan bisa 10 Jam. Mengetahui kisaran harga sewa untuk mobil jenis MPV lazimnya di kisaran Rp 400.000,- / 12 Jam untuk pemakaian dengan supir di dalam provinsi Jogja termasuk&nbsp;<a href=\"https://goo.gl/maps/1oWrJHvsZpXgh5us5\">Candi Borobudur</a>&nbsp;dan&nbsp;<a href=\"https://goo.gl/maps/W5EFaqBHt1FUsF3y9\">Candi Prambanan</a>.</p>\r\n\r\n<p>4. Cek Kondisi Kendaraan<br />\r\nJika Anda melakukan transaksi sewa mobil &ldquo;Lepas Kunci&rdquo; sebelum melakukan perjalanan memakai mobil sewa. Anda perlu memperhatikan kondisi mobil sebelum keluar dari lokasi penyewaan. Periksa body mobil, kondisi mesin, ban, bensin, dan STNK. Ini bertujuan. Akan lebih baik jika penyedia jasa sewa mobil sudah memiliki standar operasional yang dapat membantu Anda seperti cek list mobil dan lainnya.&nbsp; Jika Anda ingin lebih nyaman lagi, Anda dapat melakukan sewa mobil dengan paket termasuk supir.</p>\r\n', 'No', 'Textarea', 'On', 'Ya', '', '', '', '2021-02-26 00:00:00', 0),
(17, 'Guru & Staff', '', 'guru--staff-72.jpeg', '<div class=\"table-responsive\">\r\n<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">JABATAN</th>\r\n			<th scope=\"col\">NAMA</th>\r\n			<th scope=\"col\">NIP</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>KEPALA SEKOLAH</td>\r\n			<td>SOLIKHIN,MPd</td>\r\n			<td>196602041994121001&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OPERATOR SEKOLAH</td>\r\n			<td>NOVITA BR LIMBONG&nbsp;</td>\r\n			<td>198410062014032001</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WAKASEK KURIKULUM</td>\r\n			<td>Harlen Damanik</td>\r\n			<td>196405171989031007</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WAKASEK SARPRAS</td>\r\n			<td>Billem Marpaung</td>\r\n			<td>196606071998011002</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WAKASEK KESISWAAN</td>\r\n			<td>Rukita Hasmaita Hasan</td>\r\n			<td>197112302002122001</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BENDAHARA</td>\r\n			<td>Khairiyah</td>\r\n			<td>197010241994122001&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KEPALA TATA USAHA&nbsp;</td>\r\n			<td>Suwimih</td>\r\n			<td>197212142014082002&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 'No', 'Textarea Images', 'On', 'Ya', 'Guru & Staff', '', '', '2021-02-20 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `tgl_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `judul`, `deskripsi`, `nama`, `gambar`, `url`, `tgl_update`) VALUES
(1, 'BCA', '8465423478', 'EVA LUTHFINA ROHMATIKA', NULL, NULL, '2020-12-15'),
(3, 'BRI', '051401000255537', 'EVA LUTHFINA ROCHMATIKA', NULL, NULL, '2020-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `gambar_mobile` varchar(400) NOT NULL,
  `url` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `judul`, `deskripsi`, `gambar`, `gambar_mobile`, `url`) VALUES
(67, 'Slider 1', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>\r\n', 'slider-1-86.jpeg', 'slider-1.jpeg', NULL),
(68, 'Slider 2', '<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p>\r\n', 'slider-2-7.jpeg', 'slider-2.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id_social_media` int(11) NOT NULL,
  `judul` varchar(400) NOT NULL,
  `link` text NOT NULL,
  `tgl_update` date DEFAULT NULL,
  `status` enum('on','off') NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id_social_media`, `judul`, `link`, `tgl_update`, `status`) VALUES
(1, 'Facebook', 'https://www.facebook.com/', '2020-08-07', 'on'),
(2, 'Twitter', 'https://twitter.com/', '2020-08-07', 'on'),
(3, 'Youtube', 'https://www.youtube.com/channel/UCGd_KqBBB-37OKCHCRzBiHA', '2020-08-07', 'on'),
(4, 'Instagram', 'https://www.instagram.com/', '2020-08-07', 'on'),
(5, 'Pinterest', 'https://pinterest.com', '2020-08-07', 'off'),
(6, 'Email', 'smansa_kopin@yahoo.com', '2017-11-01', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `id` int(5) NOT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`id`, `ip`, `tanggal`, `hits`, `online`, `time`) VALUES
(1, '36.81.91.116', '2021-02-10', 177, '1612951303', '00:00:00'),
(2, '66.249.82.190', '2021-02-10', 6, '1612951339', '00:00:00'),
(3, '66.249.82.164', '2021-02-10', 1, '1612951335', '00:00:00'),
(4, '66.249.82.161', '2021-02-10', 1, '1612951339', '00:00:00'),
(5, '125.165.13.107', '2021-02-10', 3, '1612956288', '00:00:00'),
(6, '36.78.38.216', '2021-02-10', 7, '1612968694', '00:00:00'),
(7, '120.188.75.233', '2021-02-10', 5, '1612964618', '00:00:00'),
(8, '36.81.91.116', '2021-02-11', 7, '1613023816', '00:00:00'),
(9, '::1', '2021-02-15', 6063, '1613383491', '00:00:00'),
(10, '::1', '2021-02-16', 1002, '1613469787', '00:00:00'),
(11, '::1', '2021-02-17', 724, '1613557387', '00:00:00'),
(12, '::1', '2021-02-18', 316, '1613642737', '00:00:00'),
(13, '::1', '2021-02-19', 1475, '1613729243', '00:00:00'),
(14, '127.0.0.1', '2021-02-19', 1, '1613707680', '00:00:00'),
(15, '::1', '2021-02-20', 774, '1613804646', '00:00:00'),
(16, '::1', '2021-02-22', 885, '1613981063', '00:00:00'),
(17, '118.96.159.164', '2021-02-22', 227, '1613989040', '00:00:00'),
(18, '66.249.82.161', '2021-02-22', 33, '1614008917', '00:00:00'),
(19, '66.249.82.164', '2021-02-22', 32, '1614008918', '00:00:00'),
(20, '66.249.82.190', '2021-02-22', 40, '1614008918', '00:00:00'),
(21, '40.78.13.111', '2021-02-22', 15, '1613985369', '00:00:00'),
(22, '52.170.235.90', '2021-02-22', 4, '1613983764', '00:00:00'),
(23, '40.78.13.27', '2021-02-22', 11, '1613985366', '00:00:00'),
(24, '13.67.232.211', '2021-02-22', 13, '1613985367', '00:00:00'),
(25, '40.78.13.182', '2021-02-22', 6, '1613985368', '00:00:00'),
(26, '40.76.232.16', '2021-02-22', 2, '1613985369', '00:00:00'),
(27, '66.102.9.116', '2021-02-22', 24, '1614011944', '00:00:00'),
(28, '66.102.9.114', '2021-02-22', 19, '1614011945', '00:00:00'),
(29, '66.102.9.118', '2021-02-22', 11, '1614011943', '00:00:00'),
(30, '66.102.9.102', '2021-02-22', 3, '1614011947', '00:00:00'),
(31, '66.102.6.241', '2021-02-22', 8, '1613987816', '00:00:00'),
(32, '66.102.6.243', '2021-02-22', 5, '1613987816', '00:00:00'),
(33, '66.102.6.245', '2021-02-22', 5, '1613987810', '00:00:00'),
(34, '66.102.6.231', '2021-02-22', 1, '1613987803', '00:00:00'),
(35, '66.249.81.52', '2021-02-22', 10, '1614011938', '00:00:00'),
(36, '66.102.9.106', '2021-02-22', 2, '1614011946', '00:00:00'),
(37, '66.249.81.54', '2021-02-22', 10, '1614011947', '00:00:00'),
(38, '66.249.81.50', '2021-02-22', 9, '1614011945', '00:00:00'),
(39, '66.102.6.229', '2021-02-22', 1, '1613987816', '00:00:00'),
(40, '66.249.81.38', '2021-02-22', 1, '1613987819', '00:00:00'),
(41, '114.142.169.17', '2021-02-22', 10, '1613990349', '00:00:00'),
(42, '66.249.81.42', '2021-02-22', 2, '1614011948', '00:00:00'),
(43, '36.79.80.86', '2021-02-22', 81, '1614008904', '00:00:00'),
(44, '36.72.215.233', '2021-02-22', 82, '1614014400', '00:00:00'),
(45, '66.102.9.104', '2021-02-22', 1, '1614011780', '00:00:00'),
(46, '36.72.215.233', '2021-02-23', 45, '1614042862', '00:00:00'),
(47, '125.163.226.83', '2021-02-23', 1147, '1614074902', '00:00:00'),
(48, '66.249.82.161', '2021-02-23', 5, '1614047098', '00:00:00'),
(49, '66.249.82.164', '2021-02-23', 3, '1614047098', '00:00:00'),
(50, '66.249.82.190', '2021-02-23', 4, '1614047098', '00:00:00'),
(51, '66.102.6.245', '2021-02-23', 4, '1614050771', '00:00:00'),
(52, '66.249.81.50', '2021-02-23', 9, '1614050775', '00:00:00'),
(53, '66.249.81.52', '2021-02-23', 5, '1614050769', '00:00:00'),
(54, '66.102.6.241', '2021-02-23', 9, '1614050770', '00:00:00'),
(55, '66.102.9.116', '2021-02-23', 6, '1614050770', '00:00:00'),
(56, '66.102.6.243', '2021-02-23', 5, '1614050769', '00:00:00'),
(57, '66.102.9.114', '2021-02-23', 3, '1614050773', '00:00:00'),
(58, '66.249.81.54', '2021-02-23', 3, '1614050773', '00:00:00'),
(59, '66.102.6.231', '2021-02-23', 2, '1614050774', '00:00:00'),
(60, '66.249.81.40', '2021-02-23', 2, '1614050782', '00:00:00'),
(61, '66.102.9.106', '2021-02-23', 1, '1614050780', '00:00:00'),
(62, '36.81.22.56', '2021-02-23', 162, '1614096608', '00:00:00'),
(63, '36.79.80.86', '2021-02-23', 15, '1614096037', '00:00:00'),
(64, '159.203.197.91', '2021-02-23', 3, '1614098568', '00:00:00'),
(65, '36.81.22.56', '2021-02-24', 3, '1614127759', '00:00:00'),
(66, '125.163.226.83', '2021-02-24', 1064, '1614151318', '00:00:00'),
(67, '66.249.82.161', '2021-02-24', 6, '1614146962', '00:00:00'),
(68, '66.249.82.164', '2021-02-24', 3, '1614146960', '00:00:00'),
(69, '66.249.82.190', '2021-02-24', 3, '1614146962', '00:00:00'),
(70, '66.102.9.118', '2021-02-24', 2, '1614150641', '00:00:00'),
(71, '66.102.6.243', '2021-02-24', 3, '1614150643', '00:00:00'),
(72, '66.102.9.114', '2021-02-24', 5, '1614150640', '00:00:00'),
(73, '66.102.6.245', '2021-02-24', 6, '1614150644', '00:00:00'),
(74, '66.102.9.116', '2021-02-24', 2, '1614150640', '00:00:00'),
(75, '66.249.81.54', '2021-02-24', 8, '1614150643', '00:00:00'),
(76, '66.249.81.52', '2021-02-24', 7, '1614150645', '00:00:00'),
(77, '66.249.81.50', '2021-02-24', 2, '1614150646', '00:00:00'),
(78, '66.102.9.102', '2021-02-24', 1, '1614150644', '00:00:00'),
(79, '66.102.6.231', '2021-02-24', 1, '1614150646', '00:00:00'),
(80, '66.249.81.42', '2021-02-24', 1, '1614150646', '00:00:00'),
(81, '66.249.81.40', '2021-02-24', 1, '1614150647', '00:00:00'),
(82, '::1', '2021-02-24', 836, '1614161283', '00:00:00'),
(83, '::1', '2021-02-25', 1444, '1614248205', '00:00:00'),
(84, '::1', '2021-02-26', 1894, '1614334759', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tempat_wisata`
--

CREATE TABLE `tempat_wisata` (
  `id_tempat_wisata` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `nama` varchar(400) NOT NULL,
  `gambar` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `nama`, `gambar`) VALUES
(1, 'Testi 1', 'testi-1-14.jpeg'),
(2, 'Testi 2', 'testi-2-64.png'),
(3, 'Testi 3', 'testi-3-59.png'),
(4, 'Testi 4', 'testi-4-94.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL,
  `code` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `name`, `code`) VALUES
(1, 'navbarbg', 'skin2'),
(2, 'logobg', 'skin2'),
(3, 'sidebarbg', 'skin5');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `id_tour` int(5) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `judul_seo` varchar(250) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `harga_mulai` varchar(400) NOT NULL,
  `harga` text DEFAULT NULL,
  `fasilitas` text DEFAULT NULL,
  `destinasi` varchar(600) NOT NULL,
  `keyword` varchar(4000) NOT NULL,
  `description` varchar(1560) NOT NULL,
  `tgl` date NOT NULL,
  `status` enum('aktif','tidak aktif','Breaking News','Pilihan Editor') NOT NULL,
  `unggulan` enum('No','Yes') NOT NULL,
  `dilihat` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id_tour`, `id_admin`, `judul`, `judul_seo`, `gambar`, `deskripsi`, `harga_mulai`, `harga`, `fasilitas`, `destinasi`, `keyword`, `description`, `tgl`, `status`, `unggulan`, `dilihat`) VALUES
(1, 2, 'Paket Wisata Jogja 1 Hari City Tour', 'paket-wisata-jogja-1-hari-city-tour', 'paket-wisata-jogja-1-hari-city-tour-46.jpeg', '<p>Siapa yang tidak ingin ke Jogja? Kota yang terbilang nyaman dan banyak pariwisata membuat kota ini selalu masuk dalam list banyak orang. Tidak hanya untuk turis lokal saja, namun sudah terkenal hingga ke mancanegara</p>\r\n', '245.000', '<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Jumlah Peserta</th>\r\n			<th>Harga Per Orang</th>\r\n		</tr>\r\n		<tr>\r\n			<td>2 Pax</td>\r\n			<td>Rp 370.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 Pax</td>\r\n			<td>Rp 290.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 &ndash; 10 Pax</td>\r\n			<td>Rp 245.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt; 11 Pax</td>\r\n			<td>Rp 225.000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Biaya Sudah Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Private transport ber Ac sesuai jumlah peserta</li>\r\n	<li>Tour leader ramah &amp; profesional</li>\r\n	<li>Wellcome Snack &amp; soft drink&nbsp;</li>\r\n	<li>Tiket masuk obyek wisata</li>\r\n	<li>P3K standard</li>\r\n	<li>Fee parkir</li>\r\n</ul>\r\n\r\n<p>Biaya Belum Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Transportasi PP (Pesawat/kereta)</li>\r\n	<li>Pengeluaran pribadi (loundry//minibar//tips )</li>\r\n	<li>Destinasi tambahan di luar program</li>\r\n	<li>Akomodasi Hotel &amp; Makan selama tour</li>\r\n</ul>\r\n', '', '', '', '2021-02-26', 'aktif', 'No', 0),
(2, 2, 'Wisata 2 Hari 1 Malam', 'wisata-2-hari-1-malam', 'wisata-2-hari-1-malam-33.jpeg', '<p>Ketika membahas Kota Yogyakarta rasanya tidak pernah ada habisnya, karena kota satu ini menjadi ikon Indonesia dan dunia. Karena begitu banyak hal yang dapat dilakukan di dalam kota tersebut.</p>\r\n', '300.000', '<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Jumlah Peserta</th>\r\n			<th>Harga Per Orang</th>\r\n		</tr>\r\n		<tr>\r\n			<td>2 Pax</td>\r\n			<td>Rp 370.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 Pax</td>\r\n			<td>Rp 290.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 &ndash; 10 Pax</td>\r\n			<td>Rp 245.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt; 11 Pax</td>\r\n			<td>Rp 225.000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Biaya Sudah Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Private transport ber Ac sesuai jumlah peserta</li>\r\n	<li>Tour leader ramah &amp; profesional</li>\r\n	<li>Wellcome Snack &amp; soft drink&nbsp;</li>\r\n	<li>Tiket masuk obyek wisata</li>\r\n	<li>P3K standard</li>\r\n	<li>Fee parkir</li>\r\n</ul>\r\n\r\n<p>Biaya Belum Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Transportasi PP (Pesawat/kereta)</li>\r\n	<li>Pengeluaran pribadi (loundry//minibar//tips )</li>\r\n	<li>Destinasi tambahan di luar program</li>\r\n	<li>Akomodasi Hotel &amp; Makan selama tour</li>\r\n</ul>\r\n', '', '', '', '2021-02-26', 'aktif', 'No', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tour_kategori`
--

CREATE TABLE `tour_kategori` (
  `id_tour_kategori` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z`
--

CREATE TABLE `z` (
  `id` int(5) NOT NULL,
  `z` text DEFAULT NULL,
  `d` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z`
--

INSERT INTO `z` (`id`, `z`, `d`) VALUES
(1, '', '2017-11-14 19:41:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `daily_car`
--
ALTER TABLE `daily_car`
  ADD PRIMARY KEY (`id_daily_car`);

--
-- Indexes for table `daily_description`
--
ALTER TABLE `daily_description`
  ADD PRIMARY KEY (`id_daily_description`);

--
-- Indexes for table `daily_kategori`
--
ALTER TABLE `daily_kategori`
  ADD PRIMARY KEY (`id_daily_kategori`);

--
-- Indexes for table `daily_slider`
--
ALTER TABLE `daily_slider`
  ADD PRIMARY KEY (`id_daily_slider`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id_email`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `gallery_foto`
--
ALTER TABLE `gallery_foto`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `icon`
--
ALTER TABLE `icon`
  ADD PRIMARY KEY (`id_icon`);

--
-- Indexes for table `kategorix`
--
ALTER TABLE `kategorix`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keunggulan`
--
ALTER TABLE `keunggulan`
  ADD PRIMARY KEY (`id_keunggulan`);

--
-- Indexes for table `keuntungan`
--
ALTER TABLE `keuntungan`
  ADD PRIMARY KEY (`id_keuntungan`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id_social_media`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  ADD PRIMARY KEY (`id_tempat_wisata`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id_tour`);

--
-- Indexes for table `tour_kategori`
--
ALTER TABLE `tour_kategori`
  ADD PRIMARY KEY (`id_tour_kategori`);

--
-- Indexes for table `z`
--
ALTER TABLE `z`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `daily_car`
--
ALTER TABLE `daily_car`
  MODIFY `id_daily_car` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daily_description`
--
ALTER TABLE `daily_description`
  MODIFY `id_daily_description` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `daily_kategori`
--
ALTER TABLE `daily_kategori`
  MODIFY `id_daily_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `daily_slider`
--
ALTER TABLE `daily_slider`
  MODIFY `id_daily_slider` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `gallery_foto`
--
ALTER TABLE `gallery_foto`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `icon`
--
ALTER TABLE `icon`
  MODIFY `id_icon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategorix`
--
ALTER TABLE `kategorix`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `keunggulan`
--
ALTER TABLE `keunggulan`
  MODIFY `id_keunggulan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keuntungan`
--
ALTER TABLE `keuntungan`
  MODIFY `id_keuntungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id_social_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  MODIFY `id_tempat_wisata` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `id_tour` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tour_kategori`
--
ALTER TABLE `tour_kategori`
  MODIFY `id_tour_kategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z`
--
ALTER TABLE `z`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
