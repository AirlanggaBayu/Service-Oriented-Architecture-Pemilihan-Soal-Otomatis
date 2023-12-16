-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 16 Des 2023 pada 15.00
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
  `kesulitan` varchar(255) DEFAULT NULL,
  `materi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `pertanyaan`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `kesulitan`, `materi`) VALUES
(5, 'Rata-rata orang hanya dapat menyimpan 7 (plus atau minus 2) item dalam memori kerjanya. Pernyataan diatas merupakan pengertian dari..', 'Fitts\' Law', 'Hick\'s Law', 'Jakob\'s Law', 'Miller\'s Law', 'Sedang', 'Bab 2'),
(33, 'Berikut metode pengembangan kecuali', 'Waterfall', 'Agile', 'Rapid Development', 'User Interface', 'Mudah', 'Bab 3'),
(34, 'Berikut adalah jenis-jenis dari database yakni', 'NoSQL', 'Relational Database', 'Network Database', 'Semua benar', 'Sulit', 'Bab 4'),
(49, 'Apa itu user interface ?', 'Proses dari sistem', 'Tampilan yang dilihat oleh user', 'Fungsi dari sistem', 'Eror dalam sistem', 'Mudah', 'Bab 5'),
(50, 'Berikut ini yang merupakan proses dari design sprint yakni', 'Understand', 'Diverge', 'Validate', 'Semua benar', 'Sedang', 'Bab 3'),
(51, 'Berikut yang merupakan metode dalam pengembangan sistem, kecuali', 'Scrum', 'Fuzzy', 'Agile', 'Waterfall', 'Sedang', 'Bab 4'),
(52, 'The human eye tends to perceive similar elements in a design as a complete picture, shape, or group, even if those elements are separated. Merupakan pengertian dari..', 'Law of Similarity', 'Aesthetic-Usability Effect', 'Fitts’s Law', 'Law of Uniform Connectedness', 'Sedang', 'Bab 1'),
(53, 'SOA merupakan kepanjangan dari', 'Service Oriented Architecture', 'Service Of Architecture', 'Service Oriented Asyncronous', 'Service Oriented Argumentation', 'Sulit', 'Bab 1'),
(54, 'Berikut yang bukan merupakan bahasa pemrograman adalah', 'PHP', 'C++', 'HTML', 'Javascript', 'Sedang', 'Bab 2'),
(55, 'Dalam pengembangan aplikasi terdapat istilah RAD. Apa kepanjangan dari RAD ...', 'Rapid application development', 'Rapid assesment document', 'Rapid application document', 'Rapid accident development', 'Sulit', 'Bab 3'),
(56, 'Tahapan sebelum memulai pengembangan proyek yaitu..', 'Mengumpulkan kebutuhan pengguna', 'Melakukan desain', 'Menyiapkan teknologi yang sesuai', 'Menyiapkan keamanan sistem', 'Mudah', 'Bab 5'),
(57, 'Agar semua kegiatan pengembangan berjalan dengan lancar merupakan tugas dari seorang..', 'Projek manager', 'Tim developer', 'Product owner', 'Semua salah', 'Mudah', 'Bab3'),
(58, 'Keberhasilan proyek pengembangan aplikasi merupakan tugas dari seorang..', 'Projek manager', 'Tim developer', 'Product owner', 'Semua yang terlibat', 'Sulit', 'Bab 1'),
(62, 'Tujuan dari prototype dalam pengembangan aplikasi yakni untuk..', 'Memudahkan dalam pembayaran', 'Memvisualisasikan aplikasi sebelum aplikasi dikembangkan', 'Semua jawaban benar', 'Membuat senang pengguna', 'Mudah', 'Bab 2'),
(63, 'Langkah awal yang harus dilakukan sebelum mengembangkan aplikasi yakni..', 'Membuat aplikasi dengan tampilan yang menarik', 'Meminimalisir biaya pengembangan', 'Mencari tahu kebutuhan pengguna', 'Semua jawaban benar', 'Sedang', 'Bab 4'),
(64, 'MySQL adalah database yang menggunakan tipe data...', 'Relasional', 'NoSQL', 'Dokumen', 'Semua jawaban benar', 'Sulit', 'Bab 3'),
(65, 'Berikut ini adalah metode dalam rest API, yakni...', 'Get', 'Post', 'Delete', 'Semua jawaban benar', 'Sulit', 'Bab 1'),
(66, 'Berikut adalah beberapa contoh database yang menggunakan relasional, kecuali', 'MySQL', 'PostgreSQL', 'Oracle', 'MongDB', 'Sulit', 'Bab 5'),
(67, 'Berikut adalah kekurangan menggunakan database NoSQL, kecuali', 'Fleksibilitas', 'Skalabilitas', 'Kompleksitas', 'Performa', 'Mudah', 'Bab 3'),
(68, 'Berikut adalah kelebihan menggunakan relasional database , kecuali', 'Efisiensi', 'Fleksibilitas', 'Keamanan', 'Kompleksitas', 'Sedang', 'Bab 2'),
(69, 'Integer meupakan tipe data yang digunakan untuk..', 'Karakter', 'Angka', 'Tanggal', 'Waktu', 'Sulit', 'Bab 2'),
(70, 'Fitur database yang digunakan untuk menambah angka otomatis yakni', 'Auto complete', 'Auto increment', 'Automatic', 'Semua jawaban benar', 'Sedang', 'Bab 1'),
(71, 'Metode yang digunakan untuk membaca data dalam database adalah..', 'Read', 'Update', 'Delete', 'Create', 'Sedang', 'Bab 4'),
(72, 'Berikut adalah tahapan dalam pengembangan sistem, yaitu kecuali...', 'Analisis sistem', 'Desain sistem', 'Pengujian sistem', 'Implementasi sistem', 'Sedang', 'Bab 5'),
(73, 'Berikut tantangan dalam pengembangan sistem meliputi', 'Kebutuhan pengguna yang berubah-ubah', 'Kesulitan dalam mengintegrasikan sistem baru dengan sistem yang ada', 'Biaya pengembangan sistem yang tinggi', 'Semua jawaban benar', 'Sedang', 'Bab 3'),
(74, 'Bagaimana cara mengatasi tantangan dalam pengembangan sistem?', 'Melakukan komunikasi yang efektif dengan pengguna', 'Menggunakan metode pengembangan sistem yang sesuai dengan kebutuhan', 'Melakukan perencanaan dan pengelolaan proyek yang baik', 'Semua jawaban benar', 'Sulit', 'Bab 4'),
(75, 'Apa yang dimaksud dengan algoritma?', 'Langkah-langkah yang jelas dan sistematis untuk menyelesaikan suatu masalah atau melakukan suatu tugas tertentu', 'Urutan step by step untuk menyelesaikan masalah', 'Panduan untuk menyelesaikan masalah', 'Alat yang digunakan untuk menyelesaikan masalah', 'Sulit', 'Bab 2'),
(76, 'Apa saja faktor yang perlu dipertimbangkan dalam memilih metode pengembangan sistem? Kecuali', 'Kompleksitas sistem yang akan dikembangkan', 'Kebutuhan pengguna', 'Ketersediaan sumber daya', 'Kesenangan pengguna', 'Sulit', 'Bab 2'),
(77, 'Select * from mahasiswa; Syntax berikut digunakan untuk..', 'Menampilkan semua data mahasiswa', 'Menampilkan semua data mahasiswa berdasarkan kondisi', 'Menampilkan semua data mahasiswa secara acak', 'Semua jawaban salah', 'Sedang', 'Bab 4'),
(78, 'Sebuah bahasa standar pemrograman yang digunakan untuk membuat halaman website adalah', 'HTML', 'Database', 'Jaringan', 'Semua jawaban salah', 'Mudah', 'Bab 5'),
(79, 'Berikut ini yang bukan merupakan fungsi dari website, yaitu …', 'Menyimpan data', ' Menampilkan informasi', 'Menghubungkan antar halaman', 'Menjalankan program', 'Mudah', 'Bab 5'),
(89, ' Kepanjangan dari HTML adalah?', 'Hyper Text Markup Language', ' Hyper Text Markup Language', 'HyperText Marking Language', 'Hypertext Marking Language', 'Mudah', 'Bab 3'),
(90, 'Tag yang digunakan untuk membuat judul halaman web adalah?', '<title>', '<body>', '<header>', '<main>', 'Sedang', 'Bab 2'),
(91, 'Tag yang digunakan untuk membuat paragraf adalah?', '<p>', '<h1>', '<h2>', '<h3>', 'Sulit', 'Bab 2'),
(92, 'Tag yang digunakan untuk membuat gambar adalah?', '<img>', '<src>', '<alt>', '<width>', 'Sedang', 'Bab 5'),
(93, 'Tag yang digunakan untuk membuat tombol adalah?', '<button>', '<input type=\"button\">', '<submit>', '<form>', 'Sedang', 'Bab 3'),
(94, 'Tag yang digunakan untuk membuat input radio adalah?', '<input type=\"radio\">', '<input type=\"checkbox\">', '<input type=\"select\">', '<input type=\"submit\">', 'Mudah', 'Bab 1'),
(95, 'Tag <a> memiliki atribut href yang digunakan untuk menentukan?', 'Alamat URL halaman web yang akan dituju', 'Nama file gambar yang akan ditampilkan', 'Isi dari paragraf', 'Judul dari halaman web', 'Mudah', 'Bab 3'),
(96, 'Tag <table> memiliki atribut border yang digunakan untuk menentukan?', 'Lebar dari tabel', 'Tinggi dari tabel', 'Warna dari tabel', 'Ukuran dari border tabel', 'Mudah', 'Bab 1'),
(108, 'Apakah HTML termasuk bahasa pemrograman', 'Benar', 'Tidak', 'Mungkin', 'Tidak tahu', 'Mudah', 'Bab 5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE `ujian` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `berkas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `ujian`
--

INSERT INTO `ujian` (`id`, `judul`, `tanggal`, `berkas`) VALUES
(13, 'Ujian Tengah Semester PPS', '2023-12-18 08:45:00', '1702139394363-file.pdf'),
(14, 'Ujian Semester', '2023-12-16 08:21:00', '1702225313535-Soal Ujian.pdf'),
(15, 'Soal Ujian Pemahaman', '2023-12-22 12:51:00', '1702532763900-file.pdf'),
(16, 'Coba Ujian', '2023-12-15 11:11:00', '1702570289095-file (3).pdf');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT untuk tabel `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
