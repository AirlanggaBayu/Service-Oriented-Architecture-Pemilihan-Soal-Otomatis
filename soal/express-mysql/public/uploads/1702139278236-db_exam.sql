-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Des 2023 pada 12.59
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL,
  `jawaban_a` varchar(255) DEFAULT NULL,
  `jawaban_b` varchar(255) DEFAULT NULL,
  `jawaban_c` varchar(255) DEFAULT NULL,
  `jawaban_d` varchar(255) DEFAULT NULL,
  `kesulitan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `pertanyaan`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `kesulitan`) VALUES
(4, 'Waktu untuk memperoleh suatu target merupakan fungsi dari jarak dan ukuran target. Adalah pengertian dari... ', 'Fitts\' Law', 'Hick\'s Law', 'Jakob\'s Law', 'Miller\'s Law', 'Sedang'),
(5, 'Rata-rata orang hanya dapat menyimpan 7 (plus atau minus 2) item dalam memori kerjanya. Pernyataan diatas merupakan pengertian dari..', 'Fitts\' Law', 'Hick\'s Law', 'Jakob\'s Law', 'Miller\'s Law', 'Sedang'),
(33, 'Berikut metode pengembangan kecuali', 'Waterfall', 'Agile', 'Rapid Development', 'User Interface', 'Mudah'),
(34, 'Berikut adalah jenis-jenis dari database yakni', 'NoSQL', 'Relational Database', 'Network Database', 'Semua benar', 'Sulit'),
(49, 'Apa itu user interface ?', 'Proses dari sistem', 'Tampilan yang dilihat oleh user', 'Fungsi dari sistem', 'Eror dalam sistem', 'Mudah'),
(50, 'Berikut ini yang merupakan proses dari design sprint yakni', 'Understand', 'Diverge', 'Validate', 'Semua benar', 'Sedang'),
(51, 'Berikut yang merupakan metode dalam pengembangan sistem, kecuali', 'Scrum', 'Fuzzy', 'Agile', 'Waterfall', 'Sedang'),
(52, 'The human eye tends to perceive similar elements in a design as a complete picture, shape, or group, even if those elements are separated. Merupakan pengertian dari..', 'Law of Similarity', 'Aesthetic-Usability Effect', 'Fitts’s Law', 'Law of Uniform Connectedness', 'Sedang'),
(53, 'SOA merupakan kepanjangan dari', 'Service Oriented Architecture', 'Service Of Architecture', 'Service Oriented Asyncronous', 'Service Oriented Argumentation', 'Sulit'),
(54, 'Berikut yang bukan merupakan bahasa pemrograman adalah', 'PHP', 'C++', 'HTML', 'Javascript', 'Sedang'),
(55, 'Dalam pengembangan aplikasi terdapat istilah RAD. Apa kepanjangan dari RAD ...', 'Rapid application development', 'Rapid assesment document', 'Rapid application document', 'Rapid accident development', 'Sulit'),
(56, 'Tahapan sebelum memulai pengembangan proyek yaitu..', 'Mengumpulkan kebutuhan pengguna', 'Melakukan desain', 'Menyiapkan teknologi yang sesuai', 'Menyiapkan keamanan sistem', 'Mudah'),
(57, 'Agar semua kegiatan pengembangan berjalan dengan lancar merupakan tugas dari seorang..', 'Projek manager', 'Tim developer', 'Product owner', 'Semua salah', 'Mudah'),
(58, 'Keberhasilan proyek pengembangan aplikasi merupakan tugas dari seorang..', 'Projek manager', 'Tim developer', 'Product owner', 'Semua yang terlibat', 'Sulit'),
(62, 'Tujuan dari prototype dalam pengembangan aplikasi yakni untuk..', 'Memudahkan dalam pembayaran', 'Memvisualisasikan aplikasi sebelum aplikasi dikembangkan', 'Semua jawaban benar', 'Membuat senang pengguna', 'Mudah'),
(63, 'Langkah awal yang harus dilakukan sebelum mengembangkan aplikasi yakni..', 'Membuat aplikasi dengan tampilan yang menarik', 'Meminimalisir biaya pengembangan', 'Mencari tahu kebutuhan pengguna', 'Semua jawaban benar', 'Sedang'),
(64, 'MySQL adalah database yang menggunakan tipe data...', 'Relasional', 'NoSQL', 'Dokumen', 'Semua jawaban benar', 'Sulit'),
(65, 'Berikut ini adalah metode dalam rest API, yakni...', 'Get', 'Post', 'Delete', 'Semua jawaban benar', 'Sulit'),
(66, 'Berikut adalah beberapa contoh database yang menggunakan relasional, kecuali', 'MySQL', 'PostgreSQL', 'Oracle', 'MongDB', 'Sulit'),
(67, 'Berikut adalah kekurangan menggunakan database NoSQL, kecuali', 'Fleksibilitas', 'Skalabilitas', 'Kompleksitas', 'Performa', 'Mudah'),
(68, 'Berikut adalah kelebihan menggunakan relasional database , kecuali', 'Efisiensi', 'Fleksibilitas', 'Keamanan', 'Kompleksitas', 'Sedang'),
(69, 'Integer meupakan tipe data yang digunakan untuk..', 'Karakter', 'Angka', 'Tanggal', 'Waktu', 'Sulit'),
(70, 'Fitur database yang digunakan untuk menambah angka otomatis yakni', 'Auto complete', 'Auto increment', 'Automatic', 'Semua jawaban benar', 'Sedang'),
(71, 'Metode yang digunakan untuk membaca data dalam database adalah..', 'Read', 'Update', 'Delete', 'Create', 'Sedang'),
(72, 'Berikut adalah tahapan dalam pengembangan sistem, yaitu kecuali...', 'Analisis sistem', 'Desain sistem', 'Pengujian sistem', 'Implementasi sistem', 'Sedang'),
(73, 'Berikut tantangan dalam pengembangan sistem meliputi', 'Kebutuhan pengguna yang berubah-ubah', 'Kesulitan dalam mengintegrasikan sistem baru dengan sistem yang ada', 'Biaya pengembangan sistem yang tinggi', 'Semua jawaban benar', 'Sedang'),
(74, 'Bagaimana cara mengatasi tantangan dalam pengembangan sistem?', 'Melakukan komunikasi yang efektif dengan pengguna', 'Menggunakan metode pengembangan sistem yang sesuai dengan kebutuhan', 'Melakukan perencanaan dan pengelolaan proyek yang baik', 'Semua jawaban benar', 'Sulit'),
(75, 'Apa yang dimaksud dengan algoritma?', 'Langkah-langkah yang jelas dan sistematis untuk menyelesaikan suatu masalah atau melakukan suatu tugas tertentu', 'Urutan step by step untuk menyelesaikan masalah', 'Panduan untuk menyelesaikan masalah', 'Alat yang digunakan untuk menyelesaikan masalah', 'Sulit'),
(76, 'Apa saja faktor yang perlu dipertimbangkan dalam memilih metode pengembangan sistem? Kecuali', 'Kompleksitas sistem yang akan dikembangkan', 'Kebutuhan pengguna', 'Ketersediaan sumber daya', 'Kesenangan pengguna', 'Sulit'),
(77, 'Select * from mahasiswa; Syntax berikut digunakan untuk..', 'Menampilkan semua data mahasiswa', 'Menampilkan semua data mahasiswa berdasarkan kondisi', 'Menampilkan semua data mahasiswa secara acak', 'Semua jawaban salah', 'Sedang'),
(78, 'Sebuah bahasa standar pemrograman yang digunakan untuk membuat halaman website adalah', 'HTML', 'Database', 'Jaringan', 'Semua jawaban salah', 'Mudah'),
(79, 'Berikut ini yang bukan merupakan fungsi dari website, yaitu …', 'Menyimpan data', ' Menampilkan informasi', 'Menghubungkan antar halaman', 'Menjalankan program', 'Mudah'),
(80, 'Tag html yang digunakan untuk membuat daftar (list) menggunakan nomor, huruf, romawi, dan lainnya adalah', ' <ul>', '<ol>', ' <li>', '<ul> dan <ol>', 'Mudah'),
(81, 'Link yang berfungsi menuju ke domain atau halaman web itu sendiri disebut …', ' Link internal', 'Link eksternal', 'Link absolut', 'Link relatif', 'Mudah'),
(82, 'Sebuah domain yang merupakan bagian dari domain yang lebih besar adalah', 'Subdomain', 'Domain utama', 'Domain lokal', 'Domain global', 'Mudah'),
(83, 'API gateway adalah sebuah layanan yang digunakan untuk', 'Melakukan routing permintaan API', 'Mengatur keamanan API', 'Mengoptimalkan kinerja API', 'Semua jawaban benar', 'Mudah'),
(84, 'Berikut ini adalah contoh dari API gateway, yaitu', 'Amazon API Gateway', 'Google Cloud API Gateway', 'Azure API Management', 'Semua jawaban benar', 'Mudah'),
(85, 'Fungsi dari routing permintaan API adalah', 'Menentukan API mana yang akan digunakan untuk menangani permintaan', 'Mengatur jalur permintaan API', 'Mengarahkan permintaan API ke API yang tepat ', 'Semua jawaban benar', 'Mudah'),
(86, 'Fungsi dari keamanan API adalah', 'Melindungi API dari akses yang tidak sah ', 'Mengatur autentikasi dan otorisasi API', 'Melindungi data yang dikirim melalui API ', 'Semua jawaban benar', 'Mudah'),
(87, 'Fungsi dari optimalisasi kinerja API adalah', 'Meningkatkan kecepatan respons API', ' Mengurangi beban server', 'Meningkatkan skalabilitas API', 'Semua jawaban benar', 'Mudah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
