-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 11:04 AM
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
(80, 2, 'Kulkas Tidak Dingin? Ini 7 Penyebabnya!', 'kulkas-tidak-dingin-ini-7-penyebabnya', 'kulkas-tidak-dingin-ini-7-penyebabnya-49.jpeg', '<p>Saat ini kulkas sepertinya menjadi perangkat rumah tangga yang harus ada di setiap rumah.&nbsp;&nbsp;Kulkas pun perlu perawatan tertentu agar awet dalam penggunaannya dan tidak menyulitkan ketika sewaktu-waktu rusak atau tidak dapat berfungsi secara maksimal. Kendala yang sering kali terjadi adalah kulkas tidak dingin lagi sehingga menyebabkan makanan yang tersimpan di dalamnya menjadi rusak. Ketika hal ini terjadi, bagaimana mengatasinya?</p>\r\n\r\n<h2>Bunga es adalah penyebab utama kulkas tidak dingin</h2>\r\n\r\n<p><em>google.com</em></p>\r\n\r\n<p>Saat kulkas tidak dingin lagi, sebab utama yang mungkin terjadi adalah karena bunga es yang sudah terlalu tebal dan menutupi bagian lubang angin. Lubang angin&nbsp;berperan dalam mendinginkan udara di dalam kulkas. Jika kulkas tidak dingin lagi, maka periksalah kondisi bunga esnya. Bagaimana cara mengatasi masalah ini?</p>\r\n\r\n<p>Kamu hanya perlu membiarkan kulkas terbuka dan letakkan kipas angin menyala di depannya agar angin dari kipas angin bisa langsung berinteraksi dengan bagian dalam kulkas. Cara ini terbukti sangat cepat dan efektif dalam mencairkan bunga-bunga es sehingga bagian&nbsp;<em>freezer</em>&nbsp;menjadi bersih kembali.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>google.com</em></p>\r\n\r\n<p>Selanjutnya saat bunga es sudah mencair, kamu bisa membuang air yang tertampung pada bagian bawah&nbsp;<em>freezer</em>. Lakukan pengelapan menggunakan&nbsp;<a href=\"https://www.dekoruma.com/Tekstil-Dapur\">lap tekstil dapur bersih</a>&nbsp;agar air bisa hilang dan tidak menimbulkan pembentukan bunga es kembali dalam waktu dekat.</p>\r\n\r\n<p>Proses terakhir, kamu bisa mencoba menyalakan kembali kulkasmu dan tunggu beberapa saat untuk bisa dingin kembali. Pembersihan pada bunga-bunga es ini sebaiknya secara rutin.</p>\r\n\r\n<h2>Kulkas tidak dingin padahal masih baru</h2>\r\n\r\n<p><em>monogram.com</em></p>\r\n\r\n<p>Kamu baru saja membeli kulkas tetapi kulkas tidak dingin? Pasti sangat menyebalkan ya. Tapi jangan sedih dulu, karena itu bukan berarti rusak. Ketika kamu&nbsp;<a href=\"https://www.dekoruma.com/Kulkas\">membeli kulkas baru</a>, periksalah terlebih dahulu suhunya setelah kamu menyalakan. Kulkas baru biasanya beroperasi pada suhu yang relatif rendah sehingga menyebabkan kulkas tidak dingin seperti seharusnya.</p>\r\n\r\n<p>Aturlah suhu kulkas pada angka yang maksimal untuk mengetahui kualitas kulkas barumu. Dari situ akan terlihat apakah kulkas tersebut dapat bekerja dengan baik atau tidak.</p>\r\n\r\n<h2>Menyimpan makanan panas mengakibatkan kulkas tidak dingin</h2>\r\n\r\n<p><em>google.com</em></p>\r\n\r\n<p>Tahukah kamu jika sering menyimpan makanan yang masih panas ke dalam kulkas bisa menyebabkan kulkas tidak dingin? Hal ini terjadi sesuai dengan logika dasar bahwa&nbsp;suhu panas yang dihasilkan oleh makanan lebih dominan, maka suhu di sekitarnya pun akan mengikutinya.</p>\r\n\r\n<p>Jika kamu menyimpan banyak makanan di dalam kulkas dengan kondisi yang masih panas akan menyebabkan suhu di dalam kulkas menurun karena berinteraksi dengan suhu panas yang dihasilkan oleh makanan tersebut.&nbsp;Itulah mengapa kulkas tidak dingin lagi setelah menyimpan makanan panas.</p>\r\n\r\n<h2>Jauhkan kulkas dari peralatan panas yang membuat kulkas tidak dingin</h2>\r\n\r\n<p><em>google.com</em></p>\r\n\r\n<p>Sama halnya dengan makanan panas yang bisa menyebabkan kulkas tidak dingin, peralatan yang menghasilkan panas juga akan mempengaruhi performa kulkas. Kulkas bisa menjadi kurang dingin bahkan sampai kulkas tidak dingin sama sekali. Kalau kulkas di rumahmu menjadi tidak dingin, coba cek ya apakah di sekitarnya ada perangkat penghasil panas atau tidak?</p>\r\n\r\n<h2>Kulkas tidak dingin bisa disebabkan oleh stop kontak</h2>\r\n\r\n<p><em>google.com</em></p>\r\n\r\n<p>Semua peralatan rumah tangga umumnya&nbsp;<a href=\"https://www.dekoruma.com/Stop-Kontak\">menggunakan stop kontak</a>&nbsp;sebagai sumber energinya. Namun, kita sering kali tidak sadar apabila stop kontak yang kita gunakan tersebut tidak berfungsi dengan baik.&nbsp;Stop kontak yang tidak berfungsi dengan baik bisa menjadi salah satu penyebab kulkas tidak dingin.</p>\r\n\r\n<p>Untuk mengetahuinya, kamu bisa mencoba menyambungkan&nbsp;<a href=\"https://www.dekoruma.com/Elektronik\">peralatan elektronik lain</a>&nbsp;ke sumber listrik tersebut. Apabila bisa berfungsi dengan baik, bisa jadi kabel kulkas tersebut hanya tidak kencang ketika dipasangkan ke stop kontak.</p>\r\n\r\n<h2>Freon juga menjadi faktor yang menyebabkan kulkas tidak dingin</h2>\r\n\r\n<p><em>youtube.com</em></p>\r\n\r\n<p>Penyebab lain dari kulkas tidak dingin adalah freon bocor atau habis. Kondisi ini bisa diketahui dengan memegang bagian belakang kulkas yang berdekatan dengan&nbsp;<em>grill</em>&nbsp;kulkas. Bagian ini merupakan bagian yang seharusnya panas, karena panas freon akan dilepaskan di sini. Jika tidak terasa hangat, maka freon sudah habis dan harus diisi lagi.</p>\r\n\r\n<h2>Kondisi pintu kulkas juga pemicu kulkas tidak dingin lagi</h2>\r\n\r\n<p><em>google.com</em></p>\r\n\r\n<p>Berkali-kali dalam sehari dibukanya pintu kulkas bisa menyebabkan karet pintu kulkas tidak lagi berfungsi dengan baik. Jika karet pintu kulkas sudah tidak lagi berfungsi dengan baik, maka kulkas tidak tertutup sempurna. Jika penutupnya kurang rapat, maka udara yang di dalam kulkas akan keluar dan berinteraksi dengan udara bebas sehingga suhu dingin di dalam kulkas akan menurun menyebabkan kulkas tidak dingin lagi.</p>\r\n\r\n<hr />\r\n<p>Tujuh cara mudah di atas perlu kamu ketahui untuk mengatasi kulkas tidak dingin yang sering terjadi secara tiba-tiba. Tentunya, kulkas tidak dingin akan mengganggu kenyamanan aktivitasmu, kan? Selamat tinggal kulkas tidak dingin lagi!</p>\r\n\r\n<p>Jika kamu sedang mencari kulkas baru, kamu bisa cari di toko yang&nbsp;<a href=\"https://www.dekoruma.com/furniture\">jual&nbsp;<em>furniture online&nbsp;</em>Indonesia</a>&nbsp;seperti Dekoruma. Nah, selain furnitur dan elektronik, Dekoruma juga menyediakan kasur dengan ragam ukuran dan material. Beberapa kasur yang jadi favorit masyarakat Indonesia juga bisa kamu temukan, seperti&nbsp;<a href=\"https://www.dekoruma.com/kasur/search/Semua-Kategori/Elite\">kasur Elite</a>&nbsp;dan&nbsp;<a href=\"https://www.dekoruma.com/kasur/search/Spring-Bed/Alga\">kasur Alga</a>.</p>\r\n\r\n<p>Tak hanya sampai di situ saja, Dekoruma juga menyediakan properti untuk tempat tinggal atau berinvestasi, lho! Kamu bisa menemukan hunian dijual dari berbagai daerah, seperti&nbsp;<a href=\"https://www.dekoruma.com/list-properti/kota/bekasi/rumah-dijual\">rumah dijual di Bekasi</a>, Jakarta, Depok, Tangerang, dan kawasan berkembang lainnya. Tunggu apa lagi? Yuk, wujudkan rumah impianmu bersama&nbsp;<a href=\"https://www.dekoruma.com/\">Dekoruma</a>&nbsp;sekarang juga!</p>\r\n\r\n<p>Sumber :&nbsp;https://www.dekoruma.com/artikel/69689/penyebab-kulkas-tidak-dingin</p>\r\n', '', '', '2020-08-13', 'aktif', 'No', 15),
(81, 2, 'Agar Mesin Cuci Awet Hingga 10 Tahun, Terapkan Tips Berikut Ini', 'agar-mesin-cuci-awet-hingga-10-tahun-terapkan-tips-berikut-ini', 'agar-mesin-cuci-awet-hingga-10-tahun-terapkan-tips-berikut-ini-36.jpeg', '<p>Entah itu mesin cuci top loading atau front loading, bagi para pemilik mesin cuci, keinginan mereka untuk membuatnya awet hingga beberapa tahun ke depan tetaplah sama. Bahkan jika memungkinkan, pasti banyak yang menginginkan mesin cucinya mampu bertahan hingga 10 tahun. Tapi apakah mungkin? Dengan tips merawat mesin cuci di bawah ini, semua itu bisa saja terjadi.</p>\r\n\r\n<p>1. Gunakan Sesuai Kapasitas<br />\r\nSetiap mesin cuci memiliki kapasitasnya masing-masing. Ada yang memiliki kapasitas 7 kg ada juga yang 10 kg. Gunakan mesin cuci sesuai kapasitas tersebut. Ingat, terlalu memaksakan kinerja mesin cuci hanya akan memperpendek masa pakainya. Jadi jika ingin mesin cuci Anda awet, jangan abaikan tips merawat mesin cuci yang satu ini.</p>\r\n\r\n<p>2. Lindungi Panel Kontrol dari Air<br />\r\nPanel kontrol atau pusat kontrol mesin cuci terbuat dari komponen elektronik yang sangat rentan akan air. Jadi jaga agar bagian tersebut tidak sering terkena air, apalagi sampai merembes ke bagian dalam.</p>\r\n\r\n<p>3. Tempatkan Mesin Cuci di Permukaan Datar<br />\r\nMungkin tips merawat mesin cuci yang satu ini terdengar sepele. Akan tetapi menempatkan mesin cuci di permukaan yang tidak rata justru bisa mengganggu putaran gear box. Inilah yang kemudian membuat mesin cuci menjadi berisik saat beroperasi. Jika kondisi ini dibiarkan, gear box akan cepat rusak dan mesin cuci tak lagi bisa digunakan.</p>\r\n\r\n<p>4. Cabut Mesin Cuci Saat Tidak Digunakan<br />\r\nSaat tidak digunakan, cabut mesin cuci dari stop kontak. Ini dilakukan agar aliran listrik tidak terus mengalir ke mesin cuci. Mencabut mesin cuci saat tidak digunakan juga bisa meminimalisir risiko korsleting.</p>\r\n\r\n<p>Membersihkan mesin cuci secara teratur sebenarnya juga bisa memperpanjang masa pakainya. Mesin cuci jadi tidak mudah rusak. Risiko munculnya karat juga bisa ditekan. Anda bisa melakukannya dengan cara mengelap mesin cuci setelah digunakan. Selain itu, jauhkan mesin cuci dari tempat yang sering terpapar air. Dengan tips merawat mesin cuci ini, bukan mustahil mesin cuci tersebut bisa bertahan hingga 10 tahun. Namun awet atau tidaknya mesin cuci juga dipengaruhi oleh kualitasnya. Inilah yang ditawarkan Sharp melalui mesin cuci besutannya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber : https://id.sharp/news/agar-mesin-cuci-awet-hingga-10-tahun-terapkan-tips-berikut-ini</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 19),
(82, 2, 'Cara merawat dan membersihkan freezer untuk menjaga kualitas frozen food', 'cara-merawat-dan-membersihkan-freezer-untuk-menjaga-kualitas-frozen-food', 'cara-merawat-dan-membersihkan-freezer-untuk-menjaga-kualitas-frozen-food-50.jpeg', '<p>Makanan beku memang termasuk jenis makanan yang dapat bertahan lama di dalam&nbsp;<em>freezer</em>. Tapi sebagai tempat penyimpanan, ternyata&nbsp;<em>freezer&nbsp;</em>juga harus dibersihkan dan dirawat dengan baik. Sehingga makanan yang disimpan tidak terkontaminasi bau atau malah rusak. Lalu seperti apa sih cara merawat dan membersihkan freezer untuk menjaga kualitas&nbsp;<em>frozen food&nbsp;</em>tetap terjaga dengan baik?</p>\r\n\r\n<p><strong>Jangan menyimpan makanan panas</strong></p>\r\n\r\n<p>Makanan atau minuman yang masih panas, tentu akan menghasilkan udara yang juga panas. Jika disimpan begitu saja di dalam&nbsp;<em>freezer</em>&nbsp;tentu akan kurang baik untuk&nbsp;<em>freezer&nbsp;</em>dan membuatnya cepat rusak. Karena itu sebelum memasukkannya ke dalam&nbsp;<em>freezer</em>, sebaiknya dinginkan dalam suhu ruang terlebih dahulu.</p>\r\n\r\n<p><strong>Tidak terlalu sedikit, juga tidak terlalu penuh</strong></p>\r\n\r\n<p>Menyimpan makanan terlalu penuh, dapat membuat&nbsp;<em>freezer&nbsp;</em>kesulitan mengalirkan udara dingin secara merata. Sirkulasinya pun menjadi lebih terbatas. Dengan begitu, proses pembekuan pun jadi lebih lambat sehingga lama-kelamaan dapat memperpendek umur&nbsp;<em>freezer</em>. Sebaliknya&nbsp;<em>freezer&nbsp;</em>yang terlalu kosong juga kurang baik. Udara dingin dalam&nbsp;<em>freezer&nbsp;</em>dapat membuat material di dalamnya jadi membeku dan cepat rusak.</p>\r\n\r\n<p><strong>Hindari dekat-dekat tembok</strong></p>\r\n\r\n<p>Meletakkan makanan di dekat tembok dapat membuat aliran udara terhambat. Sehingga nantinya dapat membuat kinerja&nbsp;<em>freezer&nbsp;</em>terpengaruh. Karena itu sebaiknya beri jarak antara makanan dengan dinding-dinding lemari pembeku.</p>\r\n\r\n<p><strong>Bersihkan bunga es</strong></p>\r\n\r\n<p>Bunga es yang muncul di dalam&nbsp;<em>freezer</em>&nbsp;dapat membuat makanan atau minuman yang disimpan di dalamnya jadi susah beku. Karena itu&nbsp;bunga es harus dicairkan dan dibersihkan secara rutin. Namun hindari menggunakan benda tajam saat membersihkannya ya. Biasanya&nbsp;<em>freezer</em>&nbsp;menyediakan tombol untuk&nbsp;<em>defrost</em>&nbsp;untuk mencairkan bunga es kok.</p>\r\n\r\n<p><strong>Lap dan keringkan</strong></p>\r\n\r\n<p>Setelah bunga es mencair seluruhnya dan&nbsp;<em>freezer&nbsp;</em>kosong dari bahan makanan dan minuman, ada baiknya lap dan keringkan&nbsp;<em>freezer&nbsp;</em>terlebih dahulu sebelum digunakan kembali. Bersih,&nbsp;<em>freezer&nbsp;</em>pun jadi lebih awet.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber :&nbsp;https://www.kitchenofindonesia.com/cara-merawat-dan-membersihkan-freezer-untuk-menjaga-kualitas-frozen-food/</p>\r\n', '', '', '2021-02-15', 'aktif', 'No', 17),
(83, 2, 'Ini Dia 6 Cara Ampuh Usir Bau Pada Kulkas Dalam Sekejap', 'ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap', 'ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap-52.jpeg', '<p>Kebanyakan dari kita pasti pernah mengalami masalah ini di dapur.&nbsp;<a aria-label=\"link\" href=\"https://belitung.tribunnews.com/tag/kulkas\" title=\"Kulkas\">Kulkas</a>&nbsp;yang penuh, sumpek dan akhirnya berbau tidak sedap.&nbsp;<a aria-label=\"link\" href=\"https://belitung.tribunnews.com/tag/bau\" title=\"Bau\">Bau</a>&nbsp;itu akhirnya menempel pada makanan, buah hingga aneka cairan yang kita taruh di kulkas.</p>\r\n\r\n<p>Sungguh tidak nyaman.&nbsp;&nbsp;<a aria-label=\"link\" href=\"https://belitung.tribunnews.com/tag/bau\" title=\"Bau\">Bau</a>&nbsp;pada kulkas sebenarnya menjadi pertanda bahwa kulkas di rumah kurang sehat.</p>\r\n\r\n<p>Bau bisa disebabkan karena kontaminasi aroma makanan sampai&nbsp;perkembangan bakteri. Kalau sudah begini, kita harus pintar mencari jalan keluar.</p>\r\n\r\n<p>Ini dia 6 cara ampuh usir bau pada kulkas dalam sekejap.</p>\r\n\r\n<p><strong>1.&nbsp;&nbsp;<a aria-label=\"link\" href=\"https://belitung.tribunnews.com/tag/baking-soda\" title=\"Baking Soda\">Baking&nbsp;Soda</a></strong></p>\r\n\r\n<p>Baking soda ternyata punya fungsi menetralisir bau yang ada di dalam kulkas.</p>\r\n\r\n<p>Cara penggunaanya sangat mudah, cukup letakkan sekotak baking soda yang terbuka di dalam kulkas dan tutup rapat pintunya. Lakukan terus sampai bau di kulkas menghilang terserap baking soda.&nbsp;Untuk efek yang cepat, letakkan baking soda di setiap rak dalam kulkas.</p>\r\n\r\n<p>&nbsp;<strong>2. Kopi</strong></p>\r\n\r\n<p>Kopi sudah sejak lama terkenal menjadi penetralisir bau. Cara kerjanya masih sama, letakkan biji atau bubuk kopi di dalam lemari es. Kopi akan menyerap bau tidak sedap di kulkas dalam beberapa hari.&nbsp;</p>\r\n\r\n<p><strong>3. Vanilli</strong></p>\r\n\r\n<p>Vanilli memang punya aroma harum yang sedap. Aroma vanilli inilah yang dipercaya ampuh menghilangkan bau tidak sedap pada kulkas. Caranya teteskan beberapa tetes cairan vanilli pada kapas dan letakkan di setiap rak kulkas. Cara ini cukup ampuh sehingga dalam hitungan hari saja kulkas akan kembali berbau segar.</p>\r\n\r\n<p>&nbsp;<strong>4. Cuka</strong></p>\r\n\r\n<p>Cuka memang berbau masam dan kurang sedap, tapi cuka justru bisa menetralisir bau di kulkas. Cukup campurkan beberapa tetes cuka dalam segelas air lalu letakkan di rak kulkas.</p>\r\n\r\n<p>Cara lain adalah menggunakan campuran air dan cuka sebagai cairan saat kita membersihkan rak-rak pada kulkas.&nbsp;</p>\r\n\r\n<p><strong>5. Lemon</strong></p>\r\n\r\n<p>Cairan segar dari lemon ternyata ampuh juga menghilangkan bau tidak sedap pada kulkas.</p>\r\n\r\n<p>Caranya sangat sederhana. Taruh perasan air jeruk lemon dalam wadah dan tempatkan di sudut-sudut kulkas. Tutup pintunya dan dalam waktu 3 jam, kulkas akan kembali segar.</p>\r\n\r\n<p><strong>6. Jus Tomat</strong></p>\r\n\r\n<p>Cara yang satu ini sedikit lebih rumit tapi tetap layak dicoba. Lap bagian dalam kulkas dengan tomat yang telah di jus.</p>\r\n\r\n<p>Diamkan beberapa saat dan bilas bersih dengan detergen. Cara ini akan membuat bau tidak sedap menghilang dengan sekejap.&nbsp; &nbsp;</p>\r\n\r\n<p>Keenam cara di atas akan makin efektif jika kita telah mengeluarkan dulu semua bahan makanan dari kulkas.</p>\r\n\r\n<p>Bersihkan kulkas dan cuci rak-raknya, kemudian letakkan satu per&nbsp;satu bahan di dalam kulkas. Tutup pintunya dan biarkan selama beberapa saat hingga bau kulkas kembali segar.</p>\r\n\r\n<p>Cara ini terbukti ampuh mengembalikan kesegaran kulkas sehingga bahan makanan kita juga tetap segar. Ingat juga untuk selalu rutin membersihkan kulkas setiap minggu atau dua minggu sekali dan menyortir tumpukan bahan&nbsp;yang mungkin sudah rusak dan tidak bisa lagi digunakan. Dengan begini, kulkas jadi bersih dan tentu lapang.&nbsp;<br />\r\n<br />\r\nArtikel ini telah tayang di&nbsp;<a belitung=\"\" href=\"https:\">posbelitung.co</a>&nbsp;dengan judul Ini Dia 6 Cara Ampuh Usir Bau Pada Kulkas Dalam Sekejap,&nbsp;<a href=\"https://belitung.tribunnews.com/2018/03/10/ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap\">https://belitung.tribunnews.com/2018/03/10/ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap</a>.<br />\r\n<br />\r\nEditor: Khamelia</p>\r\n\r\n<p>Sumber :&nbsp;https://belitung.tribunnews.com/2018/03/10/ini-dia-6-cara-ampuh-usir-bau-pada-kulkas-dalam-sekejap</p>\r\n', '', '', '2021-02-19', 'aktif', 'No', 32);

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
(2, 'Laboratorium Kimia', 'https://drive.google.com/file/d/1CG2-lj3DI2l_EU7tzoeGsIZIOCRrMqAH/preview', 'laboratorium-kimia-11.jpeg');

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
  `jenis` enum('daily','transfer','wedding') NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_car`
--

INSERT INTO `daily_car` (`id_daily_car`, `id_daily_kategori`, `id_daily_description`, `jenis`, `judul`, `deskripsi`, `gambar`, `url`) VALUES
(1, 2, NULL, 'daily', 'KARIMUN WAGON', NULL, 'karimun-wagon-63.png', NULL),
(2, 2, NULL, 'daily', 'DAIHATSU AYLA', NULL, 'daihatsu-ayla-26.png', NULL),
(3, 0, NULL, 'wedding', 'ALL NEW CAMRY', NULL, 'all-new-camry-49.jpeg', NULL),
(4, 0, NULL, 'wedding', 'ALPHARD', NULL, 'alphard-30.jpeg', NULL),
(5, 0, NULL, 'wedding', 'VELLFIRE', NULL, 'vellfire-48.jpeg', NULL),
(6, 0, NULL, 'wedding', 'ALPHARD TRANSFORMER', NULL, 'alphard-transformer-38.png', NULL),
(7, 0, NULL, 'wedding', 'VELLFIRE TRANSFORMER', NULL, 'vellfire-transformer-45.png', NULL),
(8, 2, NULL, 'daily', 'DATSUN GO+', NULL, 'datsun-go-5.png', NULL),
(9, 2, NULL, 'daily', 'DAIHATSU AYLA MATIC', NULL, 'daihatsu-ayla-matic-91.png', NULL);

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
(10, 2, '<p>ALL IN:<br />\r\n&bull; Rp 335.000 / 6 jam<br />\r\n&bull; Rp 395.000 / 12 jam<br />\r\n&bull; Rp 535.000 / 18 jam<br />\r\n&bull; Rp 600.000 / 24 jam</p>\r\n'),
(11, 3, '<p>ALL IN PACKAGE + DECORATION<br />\r\n&bull; Rp 2.500.000 / 12 jam</p>\r\n'),
(13, 4, '<p>ALL IN PACKAGE + DECORATION<br />\r\n&bull; Rp 2.500.000 / 12 jam</p>\r\n'),
(15, 5, '<p>ALL IN PACKAGE + DECORATION<br />\r\n&bull; Rp 2.500.000 / 12 jam</p>\r\n'),
(16, 6, '<p>ALL IN PACKAGE + DECORATION<br />\r\n&bull; Rp 3.800.000 / 12 jam</p>\r\n'),
(17, 7, '<p>ALL IN PACKAGE + DECORATION<br />\r\n&bull; Rp 3.800.000 / 12 jam</p>\r\n'),
(18, 8, '<p>Lepas Kunci:<br />\r\n&bull; Rp 200.000 / 12 jam<br />\r\n&bull; Rp 250.000 / 24 jam</p>\r\n'),
(19, 8, '<p>Mobil+Supir:<br />\r\n&bull; Rp 275.000 / 12 jam<br />\r\n&bull; Rp 350.000 / 24 jam</p>\r\n'),
(20, 8, '<p>Mobil+Supir+BBM:<br />\r\n&bull; Rp 300.000 / 6 jam<br />\r\n&bull; Rp 345.000 / 12 jam<br />\r\n&bull; Rp 450.000 / 18 jam<br />\r\n&bull; Rp 500.000 / 24 jam</p>\r\n'),
(21, 8, '<p>ALL IN:<br />\r\n&bull; Rp 335.000 / 6 jam<br />\r\n&bull; Rp 395.000 / 12 jam<br />\r\n&bull; Rp 535.000 / 18 jam<br />\r\n&bull; Rp 600.000 / 24 jam</p>\r\n'),
(22, 9, '<p>Lepas Kunci:<br />\r\n&bull; Rp 250.000 / 12 jam<br />\r\n&bull; Rp 300.000 / 24 jam</p>\r\n');

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
(12, NULL, 2, 'Bazaar', 'bazaar', NULL, '', '', 'bazaar-60.jpeg', NULL, 'Tidak', 0, '0000-00-00', 'Tersedia', NULL, NULL, NULL, 'Tidak');

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
(1, 'Logo Jogja', 'logo-jogja-66.png'),
(23, 'galeri', 'galeri-58.png'),
(24, 'galeri', 'galeri-5.png');

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
(53, 'bazaar87.jpeg', 12, '1');

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
(1, 'fa fa-plane'),
(2, 'fa fa-ravelry'),
(3, 'fa fa-smile-o'),
(4, 'fa fa-car'),
(5, 'fa fa-cogs'),
(6, 'fa fa-comments'),
(7, 'fa fa-briefcase'),
(8, 'fa fa-money');

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
(2, 'Terawat', 'terawat', 'Untuk rental mobil jogja, untuk jaminan rasa aman dan nyaman kami menyediakan unit terbaru dengan kondisi armada prima, bersih terawat luar dalam.', 'fa fa-car'),
(3, 'Banyak Pilihan', 'banyak-pilihan', 'Banyak pilihan paket tour jogja murah dan beragam, jadi anda leluasa memilih sesuai budget, kami akan memberikan fasilitas yang terbaik untuk anda.', 'fa fa-briefcase'),
(4, 'Harga Terjangkau', 'harga-terjangkau', 'Kami akan selalu berusaha memberikan layanan terbaik, harga paket wisata jogja yang kami tawarkan kepada anda sangat terjangkau dan termurah.', 'fa fa-money'),
(5, 'Layanan Terbaik', 'layanan-terbaik', 'Pelayanan dengan memprioritaskan kepuasan klien kami memiliki staff, sopir berpengalaman dan pemandu wisata yang ramah dan sabar.', 'fa fa-smile-o');

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
(1, 'Logo Web', 'logo-web', '15citra.png', '', 'No', 'Images', '2021-03-03 00:00:00', 'Ya', 'On', 1),
(2, 'Kota', NULL, NULL, '501', 'No', 'Select', '2020-10-27 00:00:00', 'Tidak', 'On', 5),
(3, 'Footer Information', 'home-footer', '', '<p>Sakya Label</p>\r\n\r\n<p>Hubungi Kami :<br />\r\n(WA / SMS / Telp)<br />\r\n085-729-585-548<br />\r\nEmail :&nbsp;<a href=\"mailto:evalutfina@gmail.com\">evalutfina@gmail.com</a></p>\r\n\r\n<p>Jl. Brojogaten Raya No. 25&nbsp;Baturetno, Banguntapan, Bantul&nbsp;Yogyakarta 55197</p>\r\n', 'No', 'Textarea', '2020-11-14 00:00:00', 'Tidak', 'Off', 3),
(7, 'No WA', 'no-wa', '', '6281329001631', 'No', 'Text', '2021-02-17 00:00:00', 'Ya', 'On', 7),
(9, 'Email', 'email', '', 'evalutfina@gmail.com', 'No', 'Text', '2020-11-16 00:00:00', 'Tidak', 'On', 9),
(10, 'Twitter', 'email', '', 'https://twitter.com', 'No', 'Text', '2020-10-16 00:00:00', 'Tidak', 'On', 3),
(18, 'Footer Information', 'visitor-embed', '', '<p>Anda sedang mencari&nbsp;<strong>Service &nbsp;</strong>untuk memperbaiki barang&nbsp;Anda yang rusak? Atau Anda sedang mencari jasa service Kulkas, AC, Mesin Cuci, Freezer, Showcase ? Serahkan kepada kami. Kami ahlinya ! Kami sudah berpengalaman dalam bidang perbaikan Kulkas, AC, Mesin Cuci, Freezer, Showcase di Sleman &amp; Jogja.</p>\r\n', 'No', 'Textarea', '2021-02-25 00:00:00', 'Ya', 'On', 3),
(19, 'Footer Pengiriman', 'visitor-counter', '', '<p><img alt=\"\" src=\"https://1.bp.blogspot.com/-fwtVBbL9r94/XnHvo7K4ZCI/AAAAAAAAAZI/ieK4XnQPR8M_9ZTiUEOKgg8I5mVVtFHeACLcBGAsYHQ/s1600/logo-jasa-kirim-pos-jne-tiki-jnt-jne.png\" style=\"width:100%\" /></p>\r\n', 'No', 'Textarea', '2021-02-17 00:00:00', 'Tidak', 'On', 3),
(20, 'Tawkto Script', 'fb', '', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602cea799c4f165d47c4200b/1eunn7ujr\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 'No', 'Text', '2021-02-17 00:00:00', 'Tidak', 'On', 3),
(22, 'Footer Alamat', 'logo-web-small', '', '<p><a href=\"https://goo.gl/maps/RiA5AKM6zf82\">Jl. Gambir Anom No. 26, Pandeyan, Umbulharjo, Kota Yogyakarta 55161</a></p>\r\n\r\n<p><strong>Follow Us</strong></p>\r\n\r\n<p><a href=\"https://www.youtube.com/channel/UCveZ0Nk7dyUmdsL_BjLusfQ\"><img alt=\"\" loading=\"lazy\" src=\"https://www.sabilatransport.com/wp-content/uploads/2020/10/Youtube.png\" style=\"height:18px; width:18px\" />&nbsp;Sabila Transport</a></p>\r\n\r\n<p><a href=\"https://twitter.com/sabilatransport\"><img alt=\"\" loading=\"lazy\" src=\"https://www.sabilatransport.com/wp-content/uploads/2020/10/Twitter.png\" style=\"height:18px; width:18px\" />SabilaTransport</a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/SabilaTransport\"><img alt=\"\" loading=\"lazy\" src=\"https://www.sabilatransport.com/wp-content/uploads/2020/10/Facebook.png\" style=\"height:18px; width:20px\" />Sabila Transport</a></p>\r\n\r\n<p><a href=\"https://www.instagram.com/sabila_transport/\"><img alt=\"\" loading=\"lazy\" src=\"https://www.sabilatransport.com/wp-content/uploads/2020/10/Instagram.png\" style=\"height:18px; width:18px\" />sabila_transport</a></p>\r\n', 'No', 'Textarea', '2021-03-02 00:00:00', 'Ya', 'On', 0),
(77, 'Title', 'title', '', 'Jomblang Cave Tour', 'No', '', '2017-10-26 06:07:05', 'Tidak', 'Off', 0),
(78, 'Keywords', 'keywords', '', 'Keyword Adisukma', 'No', 'Text', '2017-12-20 00:07:46', 'Tidak', 'Off', 0),
(79, 'Description', 'description', '', 'Deskripsi Adisukma', 'No', 'Text', '2017-12-20 00:07:55', 'Tidak', 'Off', 0),
(80, 'Footer Contact', NULL, '', '<p><a href=\"tel:02744340640\"><strong>(0274) 4340640</strong></a></p>\r\n\r\n<p>Customer Services WhatsApp</p>\r\n\r\n<p><a href=\"https://wa.me/+628112758090?text=Hallo%20Sabila,%20Saya%20ingin%20bertanya%20tentang\"><strong>+62 811 275 8090 (YK)</strong></a></p>\r\n\r\n<p><a href=\"https://wa.me/+6285103311101?text=Hallo%20Sabila,%20Saya%20ingin%20bertanya%20tentang\"><strong>+62 851 0331 1101 (Solo)</strong></a></p>\r\n\r\n<p><a href=\"https://wa.me/+6282136628077?text=Hallo%20Sabila,%20Saya%20ingin%20bertanya%20tentang\"><strong>+62 821 3662 8077 (SMG)</strong></a></p>\r\n', NULL, 'Textarea', '2021-03-02 00:00:00', 'Ya', 'On', 2),
(81, 'Google Map', NULL, '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31625.530092815326!2d110.39412539999996!3d-7.7695325999999945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a5d910692cbc7%3A0x75a46491cd8e73b0!2s!5e0!3m2!1sid!2sid!4v1614224069190!5m2!1sid!2sid\" width=\"100%\" height=\"250\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'No', 'Text', '2021-02-25 00:00:00', 'Ya', 'On', 8),
(82, 'No telp', NULL, '', '(0619) 0624', 'No', 'Text', '2021-02-19 00:00:00', 'Tidak', 'On', 4),
(83, 'Payment Partner', NULL, '', '<p><img alt=\"\" loading=\"lazy\" src=\"https://www.sabilatransport.com/wp-content/uploads/2020/10/Logo-ovo.png\" style=\"height:34px; width:64px;margin-bottom:10px\" />&nbsp;<img alt=\"\" loading=\"lazy\" src=\"https://www.sabilatransport.com/wp-content/uploads/2020/10/LinkAja.png\" style=\"height:34px; width:64px;margin-bottom:10px\" />&nbsp;<img alt=\"\" loading=\"lazy\" src=\"https://www.sabilatransport.com/wp-content/uploads/2020/10/Gopay.png\" style=\"height:34px; width:64px;margin-bottom:10px\" />&nbsp;<img alt=\"\" loading=\"lazy\" src=\"https://www.sabilatransport.com/wp-content/uploads/2020/10/Bank-Mandiri.png\" style=\"height:34px; width:64px;margin-bottom:10px\" />&nbsp;<img alt=\"\" loading=\"lazy\" src=\"https://www.sabilatransport.com/wp-content/uploads/2020/10/Bank-BCA.png\" style=\"height:34px; width:64px;margin-bottom:10px\" /></p>\r\n', 'No', 'Textarea', '2021-03-02 00:00:00', 'Ya', 'On', NULL),
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
(2, 'Bagian 1 Wedding Car', 'portofolio', 'catalogue-11.jpeg', '<div class=\"btgrid\">\r\n<div class=\"row row-1\">\r\n<div class=\"col col-12 col-md-6\">\r\n<div class=\"content\">\r\n<p><img alt=\"\" src=\"https://www.sabilatransport.com/pic/sewa-mobil-pengantin/sewa-mobil-pengantin.jpg\" style=\"width:100%\" /></p>\r\n\r\n<table class=\"table table-bordered table-hover\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">ALL IN PACKAGE + DECORATION</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&bull; Rp 2.200.000 / 12 jam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Hubungi Customer Service :<br />\r\n			<a href=\"https://web.whatsapp.com/send?phone=6281227722211&amp;text=Hi%2c%20SabilaTransport\">081227722211</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col col-12 col-md-6\">\r\n<div class=\"content\">\r\n<p>Menyediakan jasa sewa mobil pengantin atau wedding car di Jogja. Paket lengkap dengan dekorasi mobil pengantin sesuai yang di inginkan. Sabila Transport menyediakan untuk Anda yang akan menikah layanan mobil pengantin yang dapat Anda sewa.</p>\r\n\r\n<p>Kami memberikan beberapa pilihan mobil pengantin yang dapat Anda sewa seperti Avanza, Wuling, Ayla, hingga beberapa mobil premier seperti Alphard Transformer, Camry, dan Mercedes Benz. Selain mobil untuk pernikahan tersedia pula unit penunjang acara perniakahan seperti mobil pengangkut keluarga dengan menggunakan hiace, elf atau mercedes sprinter.</p>\r\n\r\n<p>MENGAPA WEDDING CAR SABILA TRANSPORT ?</p>\r\n\r\n<ul>\r\n	<li>Pilihan kendaraan yang lengkap.</li>\r\n	<li>Harga sewa yang bersahabat dengan budget pernikahan Anda.</li>\r\n	<li>Dekorasi kendaraan yang dapat disesuaikan dengan keinginan customer.</li>\r\n	<li>Durasi sewa yang fleksible.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<ul>\r\n</ul>\r\n', 'No', 'Textarea', 'On', 'Ya', 'Portofolio', 'enom management,  e-nom, event profesional, event organizer,', 'enom management merupakan event organizer yang melingkupi event budaya, seminar, gathering, bazaar juga pameran seni', '2021-03-02 00:00:00', 0),
(3, 'Prakata', 'event', 'prakata-82.jpeg', '<h3>Service Bangkit Teknik</h3>\r\n\r\n<p><strong>Service Bangkit Teknik&nbsp;</strong>adalah Tempat&nbsp;<strong>Service AC, FREEZER, SHOWCASE, KULKAS, &amp; MESIN CUCI di Sleman &amp; Jogja</strong>, Murah &amp; Bergaransi , Layanan Usaha Di Bidang Jasa Perbaikan Yang Menyediakan Jasa Service AC, FREEZER, SHOWCASE, KULKAS, &amp; MESIN CUCI&nbsp;Kami Hadir Untuk Memberikan Solusi Kepada Anda Yang Sedang Membutuhkan Jasa&nbsp;<strong>Service&nbsp;di Jogja dan sekitarnya.</strong></p>\r\n', 'No', 'Textarea', 'Off', 'Tidak', '', '', '', '2021-02-25 00:00:00', 0),
(4, 'Foto', 'seo-galeri', 'foto-99.jpeg', '', 'No', 'Images SEO', 'Off', 'Tidak', 'Foto', '', '', '2021-02-20 00:00:00', 0),
(8, 'Kontak Kami', '', 'kontak-kami-87.jpeg', '<p>dalam proses input data</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 'No', 'Textarea Images', 'On', 'Tidak', 'Kontak', '', '', '2021-02-23 00:00:00', 0),
(9, 'Berita', 'cara-order', 'berita-28.jpeg', '', 'No', 'Images SEO', 'On', 'Ya', 'Berita', '', '', '2021-02-20 00:00:00', 0),
(10, 'Layanan', 'syarat--ketentuan', 'layanan-37.jpeg', '<h2 style=\"text-align:center\"><strong>SPESIALIS SERVICE KHUSUS KULKAS, MESIN CUCI, FREEZER SEGALA MERK</strong></h2>\r\n\r\n<h3 style=\"text-align:center\"><strong>0821-2224-4415&nbsp; (SMS,Tlp,WA)</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Selain mengerjakan di bengkel juga menerima panggilan servis kota Sleman &amp; Jogja. Service khusus Kulkas, Mesin Cuci, Freezer dengan masalah &nbsp;seperti :</p>\r\n\r\n<ul>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">AC Split</div>\r\n	</li>\r\n</ul>\r\n\r\n<ol style=\"margin-left:40px\">\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Service cleaning AC split&nbsp;</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Pemasangan AC split</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Penambahan dan pengisian freon&nbsp;</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan AC split&nbsp;</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Bongkar AC split&nbsp;</div>\r\n	</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan kulkas</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan showcase</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan freezer</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"coba\" style=\"text-align:justify\">Perbaikan mesin cuci</div>\r\n	</li>\r\n</ul>\r\n', 'No', 'Textarea Images', 'On', 'Ya', '', '', '', '2021-02-25 00:00:00', 0),
(11, 'Header Wedding', 'tentang-kami', 'header-wedding-13.png', '', 'No', 'Images', 'On', 'Ya', '', '', '', '2021-03-02 00:00:00', 0),
(12, 'Daily Rent Car', 'info-iklan', 'galeri-4.jpeg', '<p><strong>Rental &amp; Sewa Mobil di Jogja</strong>&nbsp;&ndash; Anda mencari perusahaan rental dengan unit terlengkap di Jogja? Sabila Transport menyediakan hingga 30 jenis kendaraan untuk Anda sewa selama di Jogja. Dengan paket yang beragam mulai dari&nbsp;<strong>Lepas Kunci</strong>,&nbsp;<strong>Mobil+Supir</strong>,&nbsp;<strong>Mobil+Supir+BBM</strong>&nbsp;dan&nbsp;<strong>All In (Mobil+Supir+BBM+Parkir+Konsumsi Supir)</strong>.</p>\r\n\r\n<p>Berkunjung ke Kota Jogja tentu akan terasa sulit jika Anda tidak memilih akomodasi transportasi yang nyaman. Sabila Transport memberikan layanan dengan Driver Profesional dan siap mengantarkan Anda berkeliling menjelajah kota Gudeg. Tak hanya berkeliling kota yang indah saja dengan pesona kenangan yang tak terlupakan, namun Sabila Transport dapat mengantarkan Anda menuju&nbsp;<strong>Pantai Gunung Kidul</strong>&nbsp;yang indah dan sedang Hits saat ini. Menikmati pemandangan&nbsp;<strong>Sunrise</strong>&nbsp;dan&nbsp;<strong>Sunset</strong>&nbsp;di Spot terbaik Jogja seperti&nbsp;<strong>Mangunan</strong>,&nbsp;<strong>Candi Borobudur, Candi Prambanan&nbsp;</strong>dan lainnya. Anda juga dapat melihat gallery wisata Sabila Transport dengan mengunjungi IG&nbsp;<a href=\"https://www.instagram.com/sabila_transport/\">@sabila_transport</a>.</p>\r\n', 'No', 'Textarea', 'On', 'Ya', '', '', '', '2021-02-26 00:00:00', 0),
(13, 'Bagian 3 Wedding Car', 'prakata', 'bagian-3-wedding-car-68.png', '<h3><strong>Ciptakan Moment Pernikahan Tak Terlupakan Di Jogja</strong><br />\r\n&nbsp;</h3>\r\n\r\n<p>Tak hanya dikenal dengan kota wisata dan kota budaya saja. Jogja juga sering dikenal dengan kota romantisme jawa. Banyak tempat-tempat yang cocok untuk para pasangan menghabiskan waktu bersama sambil menikmati indahnya kota. Ada juga beberapa pasangan yang memulai kasihnya ketika bertemu di Kota Jogja.</p>\r\n\r\n<p>Demi mempersiapkan semuanya berjalan lancar dari mulai awal acara hingga akhir acara pernikahan perlu di persiapkan secara matang.Sabila Transport dapat membantu Anda untuk melengkapi kebutuhan transportasi Anda. Mulai dari mobil untuk pengantin hingga mobil yang di persiapkan untuk rombongan pernikahan. Salah satu yang sering menjadi favorit kendaraan para rombongan ialah Toyota Hiace Commuter. Mobil yang satu ini memiliki kenyamanan dengan kabin yang luas dan jumlah kursi yang tidak terlalu banyak.</p>\r\n', NULL, 'Textarea Images', 'On', 'Ya', '', 'Sakya Label Jogja, Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', 'Sakya Label Jogja menyediakan jasa cetak undangan, guestbook, tag souvenir, roller belt, hangtag, pricetag, label baju serta berbagai kebutuhan cetak anda baik untuk kepentingan pribadi maupun branding sebuah produk. Jasa Cetak Hangtag Jogja, Jasa Cetak Undangan, Buat Label Baju Jogja Harga Murah, Buat Label Merk, Pembuatan Label baju, Cetak Label Baju', '2021-03-02 00:00:00', 0),
(14, 'prakata Custom Tour', '', 'prakata-custom-tour-6.png', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Nulla consectetur augue eget lorem lobortis, a vehicula massa mattis. Phasellus sit amet mauris in dolor elementum lacinia non id felis. Suspendisse metus lectus, ultrices at turpis bibendum, aliquet bibendum velit. Ut facilisis lectus ut magna posuere vestibulum. In imperdiet, risus vitae viverra condimentum, eros dolor tempus dui, id efficitur ante lectus quis nulla. Nullam quis velit nunc. Quisque efficitur sollicitudin urna, a auctor odio semper quis. Phasellus vel lobortis lectus.</p>\r\n\r\n<p>Proin nec odio eget dolor vulputate condimentum blandit nec quam. Phasellus accumsan purus vel urna consectetur tincidunt. Quisque vel vulputate metus. Phasellus quis purus sed nunc eleifend interdum at eget turpis. Nam viverra dictum est et malesuada.&nbsp;</p>\r\n', NULL, 'Textarea Images', 'On', 'Ya', 'Daftar Harga', '', '', '2021-03-01 00:00:00', 0),
(15, 'Syarat & Ketentuan', '', 'sarana-prasarana-29.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet eros sodales, pharetra arcu ut, tempor est. Curabitur aliquet non nulla eu accumsan. Vestibulum vehicula est in elit lacinia, ut accumsan est auctor. Quisque a nulla id ante efficitur pharetra. Ut maximus, velit suscipit sollicitudin malesuada, felis nulla sagittis tortor, ut efficitur tellus est vitae lacus. Morbi nec interdum arcu. Integer blandit imperdiet dolor quis maximus. Donec faucibus, purus non cursus pretium, urna nibh tempor massa, ac sollicitudin enim justo eget libero. Integer a turpis nibh. Sed pretium risus vehicula, pretium magna eu, fermentum ipsum.</p>\r\n', 'No', 'Textarea', 'On', 'Ya', 'Sarana Prasarana', '', '', '2021-02-28 00:00:00', 0),
(16, 'Tips', '', 'prestasi-7.jpeg', '<h3><strong>Tips Sewa Mobil di Jogja</strong><br />\r\n&nbsp;</h3>\r\n\r\n<p>Untuk lebih meyakinkan Anda agar menyewa mobil di Sabila Transport, kami akan memberikan tips untuk Anda. Tips ini berdasarkan pengamatan kami ketika calon pelanggan ingin melakukan transaksi sewa atau rental mobil.</p>\r\n\r\n<p>1. Kenali Penyedia Rental Mobil<br />\r\nSaat Anda ingin menggunakan pelayanan dari seorang penyedia jasa. Ada baiknya Anda mengetahui profil dari penyedia jasa tersebut. Ini bertujuan agar Anda mendapatkan garansi keamanan dan kenyamanan ketika menggunakan layanan dari si penyedia jasa.</p>\r\n\r\n<p>2. Pesan Jauh Jauh Hari<br />\r\nSetiap layanan memiliki periode mereka sendiri. Akan lebih baik jika Anda juga memiliki rencana sebelum melakukan perjalanan atau berlibur. Moment liburan panjang (Long Weekend) dapat memberikan imbas pada kenaikan harga sewa mobil. Selain itu, penyedia jasa sewa mobil cenderung menaikkan harga pada hari Sabtu dan Minggu. Perhatikan hari di mana Anda ingin melakukan perjalanan atau berlibur.</p>\r\n\r\n<p>3. Ketahui Harga Pasar<br />\r\nSetiap daerah akan memiliki regulasi sewa mobil yang berbeda. Jika Anda berkunjung ke kota Jogjakarta, durasi sewa yang di sediakan bisa 12 Jam. Namun jika Anda berkunjung ke Bali durasi sewa yang di sediakan bisa 10 Jam. Mengetahui kisaran harga sewa untuk mobil jenis MPV lazimnya di kisaran Rp 400.000,- / 12 Jam untuk pemakaian dengan supir di dalam provinsi Jogja termasuk&nbsp;<a href=\"https://goo.gl/maps/1oWrJHvsZpXgh5us5\">Candi Borobudur</a>&nbsp;dan&nbsp;<a href=\"https://goo.gl/maps/W5EFaqBHt1FUsF3y9\">Candi Prambanan</a>.</p>\r\n\r\n<p>4. Cek Kondisi Kendaraan<br />\r\nJika Anda melakukan transaksi sewa mobil &ldquo;Lepas Kunci&rdquo; sebelum melakukan perjalanan memakai mobil sewa. Anda perlu memperhatikan kondisi mobil sebelum keluar dari lokasi penyewaan. Periksa body mobil, kondisi mesin, ban, bensin, dan STNK. Ini bertujuan. Akan lebih baik jika penyedia jasa sewa mobil sudah memiliki standar operasional yang dapat membantu Anda seperti cek list mobil dan lainnya.&nbsp; Jika Anda ingin lebih nyaman lagi, Anda dapat melakukan sewa mobil dengan paket termasuk supir.</p>\r\n', 'No', 'Textarea', 'On', 'Ya', '', '', '', '2021-02-26 00:00:00', 0),
(17, 'Kontak', '', 'guru--staff-72.jpeg', '<div class=\"table-responsive\">\r\n<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">JABATAN</th>\r\n			<th scope=\"col\">NAMA</th>\r\n			<th scope=\"col\">NIP</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>KEPALA SEKOLAH</td>\r\n			<td>SOLIKHIN,MPd</td>\r\n			<td>196602041994121001&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OPERATOR SEKOLAH</td>\r\n			<td>NOVITA BR LIMBONG&nbsp;</td>\r\n			<td>198410062014032001</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WAKASEK KURIKULUM</td>\r\n			<td>Harlen Damanik</td>\r\n			<td>196405171989031007</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WAKASEK SARPRAS</td>\r\n			<td>Billem Marpaung</td>\r\n			<td>196606071998011002</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WAKASEK KESISWAAN</td>\r\n			<td>Rukita Hasmaita Hasan</td>\r\n			<td>197112302002122001</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BENDAHARA</td>\r\n			<td>Khairiyah</td>\r\n			<td>197010241994122001&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KEPALA TATA USAHA&nbsp;</td>\r\n			<td>Suwimih</td>\r\n			<td>197212142014082002&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 'No', 'Textarea', 'On', 'Ya', 'Guru & Staff', '', '', '2021-02-20 00:00:00', 0),
(18, 'Bagian 1 Transfer In Out', '', '', '<p>Transfer In Out merupakan layanan antar-jemput dari satu titik ke titik lain di dalam mau pun luar kota Jogja. Melayani penjemputan tamu dari Stasiun Besar Yogyakarta, Stasiun Lempuyangan, Bandara Internasional Yogyakarta (YIA), Terminal, Hotel, Gueshouse dan lokasi lainnya di Jogja. Jika Anda ingin pengantaran menuju Bandara Internasional Yogyakarta (BIY) Kulon Progo dengan unit lebih Premium.</p>\r\n\r\n<p>Layanan ini bersifat 1 kali jalan atau One Way Service. Paket yang diberikan merupakan paket sewa all in atau mobil+supir+bbm. Selain di dalam provinsi Yogyakarta, Kami juga dapat mengantarkan Anda hingga ke luar kota seperti Bandung, Jakarta,&nbsp;<a href=\"https://www.sabilatransport.com/solo\">Solo</a>,&nbsp;<a href=\"https://www.sabilatransport.com/semarang\">Semarang</a>, Klaten, Magelang, Surabaya, Madura hingga Bali.</p>\r\n\r\n<p>Untuk antar dan jemput dengan tujuan atau keberangkatan dari luar Kota Jogja, Anda dapat menghubungi Customer Service 7 x 24 jam kami untuk informasi layanan dan pemesanan.</p>\r\n\r\n<h4>MENGAPA TRANSFER IN OUT SABILA TRANSPORT ?</h4>\r\n\r\n<ul>\r\n	<li>Ketepatan Waktu. Anda tidak perlu menunggu jemputan datang. Karena Driver kami akan Standby di Lokasi minimal 15 menit sebelum kedatangan Anda.</li>\r\n	<li>Harga yang Bersaing. Kami memberikan layanan dengan mengutamakan profesionalitas, keamanan dan kenyamanan pelanggan.</li>\r\n	<li>Penyesuaian Tipe Kendaraan Sesuai dengan Jumlah Penumpang. Anda tidak perlu khawatir kami akan tetap menjumput Anda beserta rombongan sebanyak yang di perlukan.</li>\r\n	<li>Driver Profesional. Anda akan di jemput dengan driver berpakaian rapi dan menggunakan papan penjemputan agar tidak mudah mencari keberadaan driver kami</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"bootstrap-tabs\" data-tab-set-title=\"2\">\r\n<ul class=\"nav nav-tabs\" role=\"tablist\"><!-- add tabs here -->\r\n	<li class=\"active\" role=\"presentation\"><a aria-controls=\"2-tab-1\" aria-expanded=\"true\" class=\"tab-link\" data-toggle=\"tab\" href=\"#2-tab-1\" role=\"tab\">Transfer In Out - WeekDay</a></li>\r\n	<li role=\"presentation\"><a aria-controls=\"2-tab-2\" aria-expanded=\"false\" class=\"tab-link\" data-toggle=\"tab\" href=\"#2-tab-2\" role=\"tab\">Transfer In Out - Weekend</a></li>\r\n</ul>\r\n\r\n<div class=\"tab-content\"><!-- add tab panels here -->\r\n<div class=\"active tab-pane\" id=\"2-tab-1\" role=\"tabpanel\">\r\n<div class=\"tab-pane-content\">\r\n<p>Paket jemput-antar reguler ini dapat dipesan dengan waktu reservasi maksimal 3 hari sebelum hari pemakaian mobil dan pemakaian mobil hanya untuk hari Senin, Selasa, Rabu dan Kamis.</p>\r\n\r\n<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>LCGC: Estilo / Ayla / GO+</td>\r\n			<td>Rp 65.000</td>\r\n			<td>Rp 150.000</td>\r\n			<td>Rp 300.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Avanza / Xenia / Ertiga</td>\r\n			<td>Rp 100.000</td>\r\n			<td>Rp 200.000</td>\r\n			<td>Rp 350.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Innova</td>\r\n			<td>Rp 120.000</td>\r\n			<td>Rp 350.000</td>\r\n			<td>Rp 450.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ELF 10 Seats</td>\r\n			<td>Rp 250.000</td>\r\n			<td>Rp 500.000</td>\r\n			<td>Rp 600.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ELF 17 Seats</td>\r\n			<td>Rp 400.000</td>\r\n			<td>Rp 750.000</td>\r\n			<td>Rp 850.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hiace Commuter</td>\r\n			<td>Rp 450.000</td>\r\n			<td>Rp 800.000</td>\r\n			<td>Rp 900.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n\r\n<div class=\"tab-pane\" id=\"2-tab-2\" role=\"tabpanel\">\r\n<div class=\"tab-pane-content\">\r\n<p>Paket Transfer IN &amp; OUT weekend dikhususkan untuk pemakaian mobil di hari Jum&rsquo;at, Sabtu dan Minggu dengan waktu reservasi maksimal&nbsp;3 hari sebelum hari pengantaran.</p>\r\n\r\n<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>JENIS MOBIL</th>\r\n			<th>ZONA 1</th>\r\n			<th>ZONA 2</th>\r\n			<th>ZONA 3</th>\r\n		</tr>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>LCGC: Estilo / Ayla / GO+</td>\r\n			<td>Rp 200.000</td>\r\n			<td>Rp 250.000</td>\r\n			<td>Rp 400.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Avanza / Xenia / Ertiga</td>\r\n			<td>Rp 300.000</td>\r\n			<td>Rp 400.000</td>\r\n			<td>Rp 450.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Innova</td>\r\n			<td>Rp 400.000</td>\r\n			<td>Rp 450.000</td>\r\n			<td>Rp 550.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ELF 10 Seats</td>\r\n			<td>Rp 500.000</td>\r\n			<td>Rp 600.000</td>\r\n			<td>Rp 750.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ELF 17 Seats</td>\r\n			<td>Rp 750.000</td>\r\n			<td>Rp 850.000</td>\r\n			<td>Rp 850.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hiace Commuter</td>\r\n			<td>Rp 850.000</td>\r\n			<td>Rp 900.000</td>\r\n			<td>Rp 950.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'No', 'Textarea', 'On', 'Ya', '', '', '', '2021-03-02 00:00:00', 0),
(19, 'Bagian 2 Transfer In Out', '', '', '<p>Berikut ini ialah tarif antar &amp; jemput dari kota Yogyakarta menuju Yogyakarta Internasional Airport ataupun sebaliknya. Dapatkan potongan sebesar Rp 50.000,- pada pemakian paket lepas kunci di kemudian hari. Segera hubungi Customer Service 7 x 24 jam untuk informasi pemesanan lebih lanjut.</p>\r\n\r\n<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>JENIS MOBIL</th>\r\n			<th>HARGA TRANSFER IN OUT</th>\r\n		</tr>\r\n		<tr>\r\n			<td>City Car</td>\r\n			<td>Rp 200.000,-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Avanza</td>\r\n			<td>Rp 250.000,-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Grand Innova</td>\r\n			<td>Rp 375.000,-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Innova Reborn</td>\r\n			<td>Rp 475.000,-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hiace 15 Seat</td>\r\n			<td>Rp 675.000,-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Elf 17 Seat</td>\r\n			<td>Rp 675.000,-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Medium Bus 25-35 Seat</td>\r\n			<td>Rp 1.350.000,-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h4>Minta Jemput Paling Aman dan Nyaman !</h4>\r\n\r\n<p>Jika Anda terbiasa berpergian sendiri, tentunya Anda perlu orang yang terpercaya untuk menjemput dan mengantarkan Anda ke lokasi yang akan dituju. Salah satu kelebihan dari Sabila Transport ialah kami menjamin keselamatan dari setiap pelanggan yang kami jemput dan antarkan.</p>\r\n\r\n<p>Selain menjamin keselamatan pelanggan, kami juga memberikan layanan yang membuat pelanggan nyaman. Dengan mempersiapkan armada yang bersih dan wangi. Driver juga tak segan-segan membawakan barang bawaan Anda dari atau menuju mobil.</p>\r\n\r\n<p>Anda ingin mampir ke lokasi oleh-oleh atau minimarket? Anda juga tidak perlu malu untuk meminta driver memberhentikan armadanya di minimarket. Kami juga berkomitmen menjaga ketepatan waktu demi kelancaran perjalanan Anda hingga sampai tempat tujuan.</p>\r\n\r\n<h4>Banyak Pilihan dalam Satu Transporasi</h4>\r\n\r\n<p>Ketika Anda menggunakan Sabila Transport maka Anda sudah mendapatkan banyak kemudahan dalam kebutuhan transportasi Anda.&nbsp;<a href=\"https://www.sabilatransport.com/\">Sabila Transport</a>&nbsp;salah satu perusahaan multi service transportasi yang ada di Jogja. Memiliki 30 jenis kendaraan yang siap Anda gunakan untuk keperluan pribadi, kantor atau kelaurga.</p>\r\n\r\n<p>Selain itu, terdapat promo sewa atau potongan harga jika Anda sudah berlangganan atau sering menggunakan layanan transportasi dari Sabila. Agar tidak ketinggalan promo Anda dapat mengikuti akun sosial media kami di @sabila_transport (Instagram) dan @SabilaTransport (Facebook).</p>\r\n\r\n<p>Merencanakan liburan juga tidak perlu ribet, hanya dengan menghubungi Sabila Holiday Anda dapat membuat liburan versi Anda.</p>\r\n', 'No', 'Textarea', 'On', 'Ya', '', '', '', '2021-03-02 00:00:00', 0);

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
(67, 'Slider 1', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>\r\n', 'slider-1-90.jpeg', 'slider-1.jpeg', NULL),
(68, 'Slider 2', '', 'slider-2-61.jpeg', 'slider-2.jpeg', NULL);

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
(84, '::1', '2021-02-26', 1894, '1614334759', '00:00:00'),
(85, '::1', '2021-02-27', 98, '1614442881', '00:00:00'),
(86, '::1', '2021-02-28', 404, '1614519781', '00:00:00'),
(87, '::1', '2021-03-01', 2842, '1614593210', '00:00:00'),
(88, '::1', '2021-03-02', 1288, '1614679261', '00:00:00'),
(89, '127.0.0.1', '2021-03-02', 7, '1614678990', '00:00:00'),
(90, '::1', '2021-03-03', 1454, '1614765829', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tempat_wisata`
--

CREATE TABLE `tempat_wisata` (
  `id_tempat_wisata` int(11) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempat_wisata`
--

INSERT INTO `tempat_wisata` (`id_tempat_wisata`, `id_lokasi`, `judul`, `judul_seo`, `deskripsi`) VALUES
(1, 1, 'Candi Borobudur', 'candi-borobudur', NULL),
(2, 2, 'Candi Prambanan', 'candi-prambanan', NULL),
(3, 1, 'Candi Mendut', 'candi-mendut', NULL),
(4, 1, 'Candi Pawon', 'candi-pawon', NULL),
(5, 1, 'Bukit Rhema', 'bukit-rhema', NULL),
(6, 1, 'Rumah Kamera', 'rumah-kamera', NULL),
(7, 2, 'Candi Ijo/Sunset', 'candi-ijosunset', NULL),
(8, 2, 'Candi Ratu Boko/Sunset', 'candi-ratu-bokosunset', NULL),
(9, 3, 'Gunung Api Purba', 'gunung-api-purba', NULL),
(10, 3, 'Embung Nglanggeran', 'embung-nglanggeran', NULL),
(11, 4, 'Pantai Parangkusumo', 'pantai-parangkusumo', NULL),
(12, 4, 'Kebun Buah Mangunan', 'kebun-buah-mangunan', NULL);

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
  `id_tour_kategori` int(11) NOT NULL,
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
  `dilihat` int(12) NOT NULL,
  `jenis` enum('jogja','lain') NOT NULL DEFAULT 'jogja'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id_tour`, `id_tour_kategori`, `id_admin`, `judul`, `judul_seo`, `gambar`, `deskripsi`, `harga_mulai`, `harga`, `fasilitas`, `destinasi`, `keyword`, `description`, `tgl`, `status`, `unggulan`, `dilihat`, `jenis`) VALUES
(1, 1, 2, 'Happy Family Jogja #01', 'happy-family-jogja-01', 'happy-family-jogja-01-94.jpeg', '', '245.000', '<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Jumlah Peserta</th>\r\n			<th>Harga Per Orang</th>\r\n		</tr>\r\n		<tr>\r\n			<td>2 Pax</td>\r\n			<td>Rp 370.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 Pax</td>\r\n			<td>Rp 290.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 &ndash; 10 Pax</td>\r\n			<td>Rp 245.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt; 11 Pax</td>\r\n			<td>Rp 225.000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Biaya Sudah Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Private transport ber Ac sesuai jumlah peserta</li>\r\n	<li>Tour leader ramah &amp; profesional</li>\r\n	<li>Wellcome Snack &amp; soft drink&nbsp;</li>\r\n	<li>Tiket masuk obyek wisata</li>\r\n	<li>P3K standard</li>\r\n	<li>Fee parkir</li>\r\n</ul>\r\n\r\n<p>Biaya Belum Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Transportasi PP (Pesawat/kereta)</li>\r\n	<li>Pengeluaran pribadi (loundry//minibar//tips )</li>\r\n	<li>Destinasi tambahan di luar program</li>\r\n	<li>Akomodasi Hotel &amp; Makan selama tour</li>\r\n</ul>\r\n', 'Candi Prambanan, Tebing Breksi, Pinus Mangunan, Pinus Pengger', '', '', '2021-02-26', 'aktif', 'No', 0, 'jogja'),
(4, 1, 2, 'Happy Family Jogja #2', 'happy-family-jogja-2', 'happy-family-jogja-2-60.jpeg', '', '245.000', '<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Jumlah Peserta</th>\r\n			<th>Harga Per Orang</th>\r\n		</tr>\r\n		<tr>\r\n			<td>2 Pax</td>\r\n			<td>Rp 370.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 Pax</td>\r\n			<td>Rp 290.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 &ndash; 10 Pax</td>\r\n			<td>Rp 245.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt; 11 Pax</td>\r\n			<td>Rp 225.000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Biaya Sudah Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Private transport ber Ac sesuai jumlah peserta</li>\r\n	<li>Tour leader ramah &amp; profesional</li>\r\n	<li>Wellcome Snack &amp; soft drink&nbsp;</li>\r\n	<li>Tiket masuk obyek wisata</li>\r\n	<li>P3K standard</li>\r\n	<li>Fee parkir</li>\r\n</ul>\r\n\r\n<p>Biaya Belum Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Transportasi PP (Pesawat/kereta)</li>\r\n	<li>Pengeluaran pribadi (loundry//minibar//tips )</li>\r\n	<li>Destinasi tambahan di luar program</li>\r\n	<li>Akomodasi Hotel &amp; Makan selama tour</li>\r\n</ul>\r\n', 'Candi Borobudur, Landmark Merapi, Tebing Breksi', '', '', '2021-03-03', 'aktif', 'No', 0, 'jogja'),
(5, 1, 2, 'Happy Family Jogja #3', 'happy-family-jogja-3', 'happy-family-jogja-3-23.jpeg', '', '245.000', '<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Jumlah Peserta</th>\r\n			<th>Harga Per Orang</th>\r\n		</tr>\r\n		<tr>\r\n			<td>2 Pax</td>\r\n			<td>Rp 370.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 Pax</td>\r\n			<td>Rp 290.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 &ndash; 10 Pax</td>\r\n			<td>Rp 245.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt; 11 Pax</td>\r\n			<td>Rp 225.000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Biaya Sudah Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Private transport ber Ac sesuai jumlah peserta</li>\r\n	<li>Tour leader ramah &amp; profesional</li>\r\n	<li>Wellcome Snack &amp; soft drink&nbsp;</li>\r\n	<li>Tiket masuk obyek wisata</li>\r\n	<li>P3K standard</li>\r\n	<li>Fee parkir</li>\r\n</ul>\r\n\r\n<p>Biaya Belum Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Transportasi PP (Pesawat/kereta)</li>\r\n	<li>Pengeluaran pribadi (loundry//minibar//tips )</li>\r\n	<li>Destinasi tambahan di luar program</li>\r\n	<li>Akomodasi Hotel &amp; Makan selama tour</li>\r\n</ul>\r\n', 'Puncak Becici, Rumah Hobbit, Candi Prambanan, Tebing Breksi', '', '', '2021-03-03', 'aktif', 'No', 0, 'jogja'),
(6, 1, 2, 'Happy Family Jogja #4', 'happy-family-jogja-4', 'happy-family-jogja-4-36.jpeg', '', '245.000', '<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Jumlah Peserta</th>\r\n			<th>Harga Per Orang</th>\r\n		</tr>\r\n		<tr>\r\n			<td>2 Pax</td>\r\n			<td>Rp 370.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 Pax</td>\r\n			<td>Rp 290.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 &ndash; 10 Pax</td>\r\n			<td>Rp 245.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt; 11 Pax</td>\r\n			<td>Rp 225.000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Biaya Sudah Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Private transport ber Ac sesuai jumlah peserta</li>\r\n	<li>Tour leader ramah &amp; profesional</li>\r\n	<li>Wellcome Snack &amp; soft drink&nbsp;</li>\r\n	<li>Tiket masuk obyek wisata</li>\r\n	<li>P3K standard</li>\r\n	<li>Fee parkir</li>\r\n</ul>\r\n\r\n<p>Biaya Belum Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Transportasi PP (Pesawat/kereta)</li>\r\n	<li>Pengeluaran pribadi (loundry//minibar//tips )</li>\r\n	<li>Destinasi tambahan di luar program</li>\r\n	<li>Akomodasi Hotel &amp; Makan selama tour</li>\r\n</ul>\r\n', 'The Lost World Castle, Stonehenge, Tebing Breksi, Pinus Pengger', '', '', '2021-03-03', 'aktif', 'No', 0, 'jogja'),
(7, 1, 2, 'Happy Family Jogja #5', 'happy-family-jogja-5', 'happy-family-jogja-5-24.jpeg', '', '245.000', '<table class=\"table table-bordered\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Jumlah Peserta</th>\r\n			<th>Harga Per Orang</th>\r\n		</tr>\r\n		<tr>\r\n			<td>2 Pax</td>\r\n			<td>Rp 370.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 Pax</td>\r\n			<td>Rp 290.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 &ndash; 10 Pax</td>\r\n			<td>Rp 245.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&gt; 11 Pax</td>\r\n			<td>Rp 225.000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Biaya Sudah Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Private transport ber Ac sesuai jumlah peserta</li>\r\n	<li>Tour leader ramah &amp; profesional</li>\r\n	<li>Wellcome Snack &amp; soft drink&nbsp;</li>\r\n	<li>Tiket masuk obyek wisata</li>\r\n	<li>P3K standard</li>\r\n	<li>Fee parkir</li>\r\n</ul>\r\n\r\n<p>Biaya Belum Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Transportasi PP (Pesawat/kereta)</li>\r\n	<li>Pengeluaran pribadi (loundry//minibar//tips )</li>\r\n	<li>Destinasi tambahan di luar program</li>\r\n	<li>Akomodasi Hotel &amp; Makan selama tour</li>\r\n</ul>\r\n', 'Goa Pindul, Pantai Indrayanti, Pinus Pengger', '', '', '2021-03-03', 'aktif', 'No', 0, 'jogja');

-- --------------------------------------------------------

--
-- Table structure for table `tour_kategori`
--

CREATE TABLE `tour_kategori` (
  `id_tour_kategori` int(11) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `judul_seo` varchar(400) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `pien` varchar(400) DEFAULT NULL,
  `gambar` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_kategori`
--

INSERT INTO `tour_kategori` (`id_tour_kategori`, `judul`, `judul_seo`, `deskripsi`, `pien`, `gambar`) VALUES
(1, 'Paket Wisata Jogja 1 Hari', 'paket-wisata-jogja-1-hari', 'Siapa yang tidak ingin ke Jogja? Kota yang terbilang nyaman dan banyak pariwisata membuat kota ini selalu masuk dalam list banyak orang. Tidak hanya untuk turis lokal saja, namun sudah terkenal hingga ke mancanegara', 'tour-jogja', 'wisata-1-hari-1.jpeg'),
(2, 'Wisata 2 Hari 1 Malam', 'wisata-2-hari-1-malam', NULL, 'tour-jogja', NULL),
(3, 'Wisata 3 Hari 2 Malam', 'wisata-3-hari-2-malam', NULL, 'tour-jogja', NULL),
(4, 'Wisata 4 Hari 3 Malam', 'wisata-4-hari-3-malam', NULL, 'tour-jogja', NULL),
(5, 'Honeymoon Jogja', 'honeymoon-jogja', 'Wisata 5 Hari 4 Malam', 'tour-jogja', NULL),
(8, 'SOLO', 'solo', NULL, 'tour-lain', NULL),
(9, 'BROMO', 'bromo', NULL, 'tour-lain', NULL),
(10, 'SEMARANG', 'semarang', NULL, 'tour-lain', NULL),
(11, 'BANDUNG', 'bandung', NULL, 'tour-lain', NULL),
(12, 'MALANG', 'malang', NULL, 'tour-lain', NULL),
(13, 'DIENG', 'dieng', NULL, 'tour-lain', NULL),
(14, 'BALI', 'bali', NULL, 'tour-lain', NULL),
(15, 'LOMBOK', 'lombok', NULL, 'tour-lain', NULL),
(887, 'Gathering Jogja', 'gathering-jogja', 'bbb', 'tour-jogja', 'gathering-jogja-61.jpeg');

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
  MODIFY `id_daily_car` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `daily_description`
--
ALTER TABLE `daily_description`
  MODIFY `id_daily_description` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gallery_foto`
--
ALTER TABLE `gallery_foto`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `icon`
--
ALTER TABLE `icon`
  MODIFY `id_icon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id_page` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  MODIFY `id_tempat_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id_tour` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tour_kategori`
--
ALTER TABLE `tour_kategori`
  MODIFY `id_tour_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=888;

--
-- AUTO_INCREMENT for table `z`
--
ALTER TABLE `z`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
