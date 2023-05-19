-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31 Jan 2023 pada 12.08
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_satrioajipratama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`, `email`, `phone`, `hak_akses`) VALUES
(1, 'Admin Adriano', 'adminweb', 'e10adc3949ba59abbe56e057f20f883e', 'adminadriano@gmail.com', 85648263456, 'admin'),
(2, 'satrio', 'adminsatrio', 'b40cc7ce5313a9918211116af3e96faf', 'satrioajipratama@gmail.com', 12112121211, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `nama_pemilik` varchar(250) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nama_bank`, `nama_pemilik`, `no_rekening`, `gambar`) VALUES
(3, 'BRI', 'Satrio Aji Pratama', '1356787', '778473b7e82f9e47ba2c284eb60a6dfb.png'),
(4, 'BCA', 'Satrio Aji Pratama', '112233445', '4f55b4eee9111698a88abdc7df2e3ceb.png'),
(5, 'Bank Mandiri', 'Satrio Aji Pratama', '153231513', '7490d2529c57f240dbb8cc08b6f73253.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id_brand` int(11) NOT NULL,
  `nama_brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_brand`
--

INSERT INTO `tbl_brand` (`id_brand`, `nama_brand`) VALUES
(1, 'Premium'),
(2, 'Softstyle'),
(4, 'Caps'),
(5, 'Hardstyle');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_carabelanja`
--

CREATE TABLE `tbl_carabelanja` (
  `id_carabelanja` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_carabelanja`
--

INSERT INTO `tbl_carabelanja` (`id_carabelanja`, `judul`, `deskripsi`) VALUES
(1, 'Cara Belanja Online di dhasar.idn Online Shop', 'Pada tabel anda masukan quantity barang yang akan Anda beli.<br>Setelah mengubah quantity jangan lupa untuk klik tombol "refresh"(untuk menampilkan kalkulasi harga)<br>Tidak ada minimal belanja anda boleh belanja berapapun.<br>Untuk kembali memilih barang lainnya atau melanjutkan berbelanja silahkan klik tombol "lanjut berbelanja" dan cari produk lainnya.<br>Jika sudah selesai membeli silahkan klik tombol "selesai berbelanja"<br>Bia anda belum login silahkan login terlebih dahulu. Dengan cara mengisi form yang sudah tersedia. Jika belum menjadi member silahkan mendaftar dahulu dengan cara yang mudah mengklik tombol "registrasi member".<br>Selanjutnya silahkan mengisi data lengkap pada form yang sudah tersedia<br>Sebelum anda selesai periksa dahulu data yang anda isi kebenarnnya atau barangkali ada yang lupa dikosongkan.<br>Tunggu paling lambat 1x24 jam kami akan menkonfirmsi kiriman anda melalui email atau Hp yang anda cantumkan sebelumnya."<br>Anda akan menerima balasan melalui email atau Hp Anda tentang kalkulasi harga disertai jasa pengirmiannnya.<br>Jika Anda setuju silhkan kirim sejumlah uang yang kami konfimasikan. Berikut rekining Bank yang kami sediakan :<br>BANK BRI<br>5555555555 A/n : Satrio Aji Pratama<br>BANK BCA<br>44455555555 A/n : Satrio Aji Pratama<br>BANK MANDIRI<br>345235235 A/n : Satrio Aji Pratama<br>Setelah melakukan transfer ke bank silahkan anda lakukan konfirmasi ke email kami atau hotline kami di 08656455677776.<br>Pengiriman barang akan kami proses secepatnya dan Anda akan enerima nomer resi yang akan kami infokan melali alamt email atau No Hp Anda.<br>Jika Anda menemui kesulitan silahkan hubungi Costumer service kami.<br>Terimakasih Atas kepercayaan Anda. Semoga tetap menjadi pelanggan kami..<br><br>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategorigaleri_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `nama_galeri`, `gambar`, `kategorigaleri_id`) VALUES
(1, 'Jersea Motor', 'dec10698e402e54bbb65e199d1612127.gif', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hubungikami`
--

CREATE TABLE `tbl_hubungikami` (
  `id_hubungikami` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hp` bigint(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_hubungikami`
--

INSERT INTO `tbl_hubungikami` (`id_hubungikami`, `nama`, `email`, `hp`, `alamat`, `pesan`, `tanggal`, `status`) VALUES
(1, 'Muhammad Roziqin', 'roziqin_iqin@yahoo.com', 85648105447, 'Desa Pulo Dk Gayam RT 01 RW 04 Rembang', 'Mencoba Halaman Hubungi Kami', '2014-07-08', 1),
(2, 'Muhammad Roziqin', 'roziqin_iqin@yahoo.com', 85648105447, 'Rembang', 'Tes Komentar hubungi Kami', '2014-08-21', 1),
(3, 'Muhammad Imam Sulkarnaen', 'imam@gmail.com', 8493579345793, 'Jogja', 'Mau Tanya Cara Beli Di Toko adriano online shop', '2014-10-07', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hubungi_kami_kirim`
--

CREATE TABLE `tbl_hubungi_kami_kirim` (
  `id_hubungi_kami_kirim` int(11) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi_hubungi_kami_kirim` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_hubungi_kami_kirim`
--

INSERT INTO `tbl_hubungi_kami_kirim` (`id_hubungi_kami_kirim`, `kepada`, `judul`, `isi_hubungi_kami_kirim`) VALUES
(3, 'roziqin_iqin@yahoo.com', 'Balasan', 'Balasan Untuk roziqin'),
(4, 'roziqin_iqin@yahoo.com', 'ddd', 'undefined'),
(5, 'imam@gmail.com', 'Balas', 'fdsjfdsfdsfhdsu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jasapengiriman`
--

CREATE TABLE `tbl_jasapengiriman` (
  `id_jasapengiriman` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jasapengiriman`
--

INSERT INTO `tbl_jasapengiriman` (`id_jasapengiriman`, `nama`, `gambar`) VALUES
(3, 'ESL Express', 'cd1d63e790e558c44d0f538b51a72830.png'),
(4, 'Antaraja', 'a121f3c6ed6b554ffea23cec9d996acb.png'),
(5, 'sicepat', '60d5fd8c26c9fa47c31be20b30c695fe.png'),
(6, 'Jnt Express', '40b34bdb20c4b86df927dabff87c4de3.jpg'),
(7, 'Tiki Express', '9f7156ddda1f899f3eacff176e88e13f.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(3, 'Accessories'),
(4, 'Jacket'),
(9, 'T-Shirt');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategorigaleri`
--

CREATE TABLE `tbl_kategorigaleri` (
  `id_kategorigaleri` int(11) NOT NULL,
  `nama_kategorigaleri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategorigaleri`
--

INSERT INTO `tbl_kategorigaleri` (`id_kategorigaleri`, `nama_kategorigaleri`) VALUES
(1, 'Album Pertama'),
(2, 'Album Kedua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(11) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `alamat`, `phone`, `email`) VALUES
(1, 'Cibitung , Bekasi.<br>', 122124124, 'satrioajipratama@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kota`
--

INSERT INTO `tbl_kota` (`id_kota`, `nama_kota`) VALUES
(1, 'Purworejo'),
(2, 'Rembang'),
(3, 'Sleman'),
(4, 'Bantul'),
(5, 'Magelang'),
(6, 'Klaten'),
(7, 'Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id_logo` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_logo`
--

INSERT INTO `tbl_logo` (`id_logo`, `gambar`) VALUES
(1, 'd8c72c3fb867837e52728698172374e0.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` bigint(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` blob NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `kode_produk`, `nama_produk`, `harga`, `stok`, `deskripsi`, `gambar`, `kategori_id`, `brand_id`) VALUES
(8, 'AMX00001', 'T-Shirt CHMPN', 44000, 10, 'Size: S,M,L,XL', 0x38616430373136353237353634313363326131663839616236386432666438662e6a7067, 9, 1),
(9, 'AMX00002', 'Oversize T-Shirt MB', 54000, 8, 'Size: S,M,L,XL', 0x62346262633234636136393138626565343463353262333232376164303233352e706e67, 9, 1),
(10, 'AMX00003', 'Oversize T-Shirt UNQL', 54000, 10, '<div>Size: S,M,L,XL</div>', 0x37386236626137363736363466653265343635613933633337303437343439332e706e67, 9, 1),
(11, 'AMX00004', 'Longsleeve T-Shirt UNQL', 68000, 5, 'Size: S,M,L,XL<br>', 0x64613038623363613439616238626639383230336631643664623462616363642e6a7067, 9, 1),
(12, 'AMX00005', 'Crewneck Cashew', 68000, 5, 'Size: S,M,L,XL<br>', 0x36323631643130303231376338633432656662343861623165363839643939322e6a7067, 4, 2),
(13, 'AMX00006', 'Crewneck Fluke', 89000, 3, 'Size: S,M,L,XL<br>', 0x33643333366539316563326238386566653838383663303962323762396462362e6a706567, 4, 2),
(14, 'AMX00007', 'Hoodie LE COQ', 79000, 4, 'Size: S,M,L,XL<br>', 0x39313261373635343565366338323633343336396331616235303231643962392e6a7067, 4, 2),
(15, 'AMX00008', 'Varsity Bershka', 129000, 3, 'Size: S,M,L,XL<br>', 0x36636633353832333863646463636234653538633530363934663239326331382e6a706567, 4, 2),
(16, 'AMX00009', 'Varsity Moss', 129000, 2, 'Size: S,M,L,XL<br>', 0x32303362346635303835326334653336303466386363383931336130633865342e6a7067, 4, 2),
(17, 'AMX00010', 'Denim PepeJeans', 249000, 3, 'Size: M,L,XL<br>', 0x36613632326132613133633964363136663037666233376565616130373664332e6a7067, 4, 5),
(18, 'AMX00011', 'Basic T-Shirt QOT', 49000, 8, 'Size: S,M,L,XL<br>', 0x30636462393636363131633462353135303334663665303930323865353561392e6a7067, 9, 1),
(19, 'AMX00012', 'Basic T-Shirt Galantic', 49000, 7, 'Size: S,M,L,XL<br>', 0x32613664623665396362643131643765633364636636393464353866393861392e6a706567, 9, 1),
(20, 'AMX00013', 'Beanie Spalding', 69000, 5, 'Size: -<br>', 0x38666563393231633033666334656430623562616433383733656463303032642e6a706567, 3, 4),
(21, 'AMX00014', 'Bucket Hat Kangol', 49000, 3, 'Size: -<br>', 0x33393566313334346331366237623637343339626136303932353137393736372e6a7067, 3, 3),
(22, 'AMX00015', 'MLB Caps', 149000, 2, 'Size: -<br>', 0x61333431623862386430366537346165363332656366623461333263636565352e6a7067, 3, 5),
(23, 'AMX00016', 'Black Pepejeans', 279000, 3, '<div>Size: M, L, XL</div>', 0x63356630316263643365303966653131636465323034626363633737343865642e6a7067, 4, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sambutan`
--

CREATE TABLE `tbl_sambutan` (
  `id_sambutan` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sambutan`
--

INSERT INTO `tbl_sambutan` (`id_sambutan`, `judul`, `deskripsi`) VALUES
(1, 'Kami Hadir Untuk Anda', 'isi sambutan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_seo`
--

CREATE TABLE `tbl_seo` (
  `id_seo` int(11) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_seo`
--

INSERT INTO `tbl_seo` (`id_seo`, `tittle`, `keyword`, `description`) VALUES
(1, 'Cibitung Second', 'Cibitung Second<br><br>', 'Cibitung Second website resmi toko online shop<br>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id_slider` int(11) NOT NULL,
  `tittle` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `tittle`, `description`, `gambar`, `status`) VALUES
(4, 'Tentang Kami', 'Toko CibitungSecond adalah toko yang menjual berbagai macam pakaian branded. Toko CibitungSecond menjadi yang menjual pakaian branded buatan lokal dengan kualitas ekspor, didaerah Cibitung. \r\n<br><br>', 'db41503d47e04d73dec650f4986eebf6.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sosial_media`
--

CREATE TABLE `tbl_sosial_media` (
  `id_sosial_media` int(11) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `gp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sosial_media`
--

INSERT INTO `tbl_sosial_media` (`id_sosial_media`, `tw`, `fb`, `gp`) VALUES
(1, 'http://twitter.com', 'http://facebook.com', 'http://gplus.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tentangkami`
--

CREATE TABLE `tbl_tentangkami` (
  `id_tentangkami` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tentangkami`
--

INSERT INTO `tbl_tentangkami` (`id_tentangkami`, `judul`, `deskripsi`) VALUES
(1, 'Cibitung Second', 'Cibitung Second adalah toko yang menyediakan produk pakaian sesuai dengan keinginan pelanggan.<br>Salam Owner<br>Satrio Pratama<br>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_detail`
--

CREATE TABLE `tbl_transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `kode_transaksi` bigint(15) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transaksi_detail`
--

INSERT INTO `tbl_transaksi_detail` (`id_transaksi_detail`, `kode_transaksi`, `kode_produk`, `nama_produk`, `harga`, `jumlah`) VALUES
(1, 20140907001, 'AMX00007', 'Easy Polo Black Edition', '16000', 2),
(2, 20140907001, 'AMX00002', 'Easy Polo Black Edition', '56000', 1),
(3, 20140907002, 'AMX00007', 'Easy Polo Black Edition', '16000', 1),
(4, 20140907003, 'AMX00002', 'Easy Polo Black Edition', '56000', 2),
(5, 20140909001, 'AMX00007', 'Easy Polo Black Edition', '16000', 1),
(6, 20140909001, 'AMX00005', 'Easy Polo Black Edition', '36000', 1),
(7, 20141007001, 'AMX00007', 'Easy Polo Black Edition', '16000', 2),
(8, 20141007002, 'AMX00006', 'Easy Polo Black Edition', '26000', 1),
(9, 20141007002, 'AMX00003', 'Easy Polo Black Edition', '56000', 3),
(10, 20141007002, 'AMX00004', 'Easy Polo Black Edition', '56000', 1),
(11, 20210118001, 'AMX00003', 'Gildan', '54000', 4),
(12, 20210118001, 'AMX00001', 'Gildan', '41000', 3),
(13, 20210118001, 'AMX00002', 'Gildan', '54000', 7),
(14, 20221223001, 'AMX00001', 'Gildan', '41000', 1),
(15, 20221225001, 'AMX00001', 'T-Shirt CHMPN', '44000', 1),
(16, 20230115001, 'AMX00009', 'Varsity Moss', '129000', 1),
(17, 20230115002, 'AMX00006', 'Crewneck Fluke', '89000', 1),
(18, 20230115003, 'AMX00012', 'Basic T-Shirt Galantic', '49000', 1),
(19, 20230115004, 'AMX00011', 'Basic T-Shirt QOT', '49000', 1),
(20, 20230115004, 'AMX00016', 'Black Pepejeans', '279000', 1),
(21, 20230115004, 'AMX00003', 'Oversize T-Shirt UNQL', '54000', 1),
(22, 20230116001, 'AMX00016', 'Black Pepejeans', '279000', 1),
(23, 20230116001, 'AMX00015', 'MLB Caps', '149000', 1),
(24, 20230116002, 'AMX00011', 'Basic T-Shirt QOT', '49000', 1),
(25, 20230116003, 'AMX00013', 'Beanie Spalding', '69000', 1),
(26, 20230116004, 'AMX00013', 'Beanie Spalding', '69000', 1),
(27, 20230116005, 'AMX00013', 'Beanie Spalding', '69000', 1),
(28, 20230116006, 'AMX00011', 'Basic T-Shirt QOT', '49000', 1),
(29, 20230116007, 'AMX00009', 'Varsity Moss', '129000', 1),
(30, 20230116008, 'AMX00013', 'Beanie Spalding', '69000', 1),
(31, 20230116009, 'AMX00011', 'Basic T-Shirt QOT', '49000', 1),
(32, 20230116010, 'AMX00013', 'Beanie Spalding', '69000', 1),
(33, 20230116011, 'AMX00009', 'Varsity Moss', '129000', 1),
(34, 20230116012, 'AMX00009', 'Varsity Moss', '129000', 1),
(35, 20230116013, 'AMX00009', 'Varsity Moss', '129000', 1),
(36, 20230116014, 'AMX00009', 'Varsity Moss', '129000', 1),
(37, 20230130001, 'AMX00009', 'Varsity Moss', '129000', 1),
(38, 20230130002, 'AMX00011', 'Basic T-Shirt QOT', '49000', 1),
(39, 20230130003, 'AMX00009', 'Varsity Moss', '129000', 1),
(40, 20230130004, 'AMX00013', 'Beanie Spalding', '69000', 1),
(41, 20230130005, 'AMX00013', 'Beanie Spalding', '69000', 1),
(42, 20230130006, 'AMX00013', 'Beanie Spalding', '69000', 1),
(43, 20230131001, 'AMX00009', 'Varsity Moss', '129000', 1),
(44, 20230131002, 'AMX00006', 'Crewneck Fluke', '89000', 1),
(45, 20230131003, 'AMX00012', 'Basic T-Shirt Galantic', '49000', 1),
(46, 20230131004, 'AMX00011', 'Basic T-Shirt QOT', '49000', 1),
(47, 20230131005, 'AMX00016', 'Black Pepejeans', '279000', 1),
(48, 20230131006, 'AMX00003', 'Oversize T-Shirt UNQL', '54000', 1),
(49, 20230131007, 'AMX00011', 'Basic T-Shirt QOT', '49000', 1),
(50, 20230131007, 'AMX00009', 'Varsity Moss', '129000', 1),
(51, 20230131008, 'AMX00004', 'Longsleeve T-Shirt UNQL', '68000', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_header`
--

CREATE TABLE `tbl_transaksi_header` (
  `id_transaksi_header` int(11) NOT NULL,
  `kode_transaksi` bigint(15) NOT NULL,
  `penerima` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `propinsi` varchar(20) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `jasapengiriman_id` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transaksi_header`
--

INSERT INTO `tbl_transaksi_header` (`id_transaksi_header`, `kode_transaksi`, `penerima`, `email`, `alamat`, `no_telepon`, `propinsi`, `kota`, `kode_pos`, `bank_id`, `jasapengiriman_id`, `status`) VALUES
(36, 20230131001, 'Yusuf Ramadhon', 'yusufdoni35@gmail.com', 'Jl. Raya Mustikasari Kp. Babakan Kec Mustikajaya ', '085915316126', 'Jawa Barat', 'Bekasi', 17116, 0, 5, 0),
(37, 20230131002, 'Iwan', 'iwanpernama2@gmail.com', 'KP.PISANG BATU PONCOL', '085912447235', 'Jawa Barat', 'Bekasi', 17155, 0, 4, 0),
(39, 20230131003, 'Nawami', 'nawariarisatya@gmail.com', 'Jl.sersan misnady, kaliabang tengah, Bekasi Utara', '08591247247', 'Jawa Barat', 'Bekasi', 17510, 0, 7, 0),
(40, 20230131004, 'WIWI YUNENGSIH', 'wiwiyunengsih24@gmail.com', 'Jl. Mawar, Kecamatan Tambun, Kabupaten Bekasi', '083814271252', 'Jawa Barat', 'Bekasi', 17158, 0, 6, 0),
(41, 20230131005, 'DIDIN MUHIDIN', 'didinmuhidin23@gmail.com', 'Jl. Sakura 3, Jatimulya, Kec. Tambun Sel., Kabupaten Bekasi, Jawa Barat 17510', '0859131264621', 'Jawa Barat', 'Bekasi', 17158, 0, 4, 0),
(42, 20230131006, 'ALYA FITRIYANI', 'alyafitriyani23@gmail.com', 'Ciketing tenggilis rt 01 rw 12', '08591247423', 'Jawa Barat', 'Bekasi', 17158, 0, 4, 0),
(44, 20230131007, 'satrio', 'satrio', 'satrio', 'satrio', 'satrio', 'satrio', 0, 0, 7, 0),
(45, 20230131008, 'YHA ', 'YHA', 'YHAA', 'YHAA', 'YHAA', 'YHAA', 0, 0, 7, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
  ADD PRIMARY KEY (`id_carabelanja`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tbl_hubungikami`
--
ALTER TABLE `tbl_hubungikami`
  ADD PRIMARY KEY (`id_hubungikami`);

--
-- Indexes for table `tbl_hubungi_kami_kirim`
--
ALTER TABLE `tbl_hubungi_kami_kirim`
  ADD PRIMARY KEY (`id_hubungi_kami_kirim`);

--
-- Indexes for table `tbl_jasapengiriman`
--
ALTER TABLE `tbl_jasapengiriman`
  ADD PRIMARY KEY (`id_jasapengiriman`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
  ADD PRIMARY KEY (`id_kategorigaleri`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tbl_sambutan`
--
ALTER TABLE `tbl_sambutan`
  ADD PRIMARY KEY (`id_sambutan`);

--
-- Indexes for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
  ADD PRIMARY KEY (`id_seo`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
  ADD PRIMARY KEY (`id_sosial_media`);

--
-- Indexes for table `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
  ADD PRIMARY KEY (`id_tentangkami`);

--
-- Indexes for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- Indexes for table `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
  ADD PRIMARY KEY (`id_transaksi_header`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
  MODIFY `id_carabelanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_hubungikami`
--
ALTER TABLE `tbl_hubungikami`
  MODIFY `id_hubungikami` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_hubungi_kami_kirim`
--
ALTER TABLE `tbl_hubungi_kami_kirim`
  MODIFY `id_hubungi_kami_kirim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_jasapengiriman`
--
ALTER TABLE `tbl_jasapengiriman`
  MODIFY `id_jasapengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
  MODIFY `id_kategorigaleri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_sambutan`
--
ALTER TABLE `tbl_sambutan`
  MODIFY `id_sambutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
  MODIFY `id_seo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
  MODIFY `id_sosial_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
  MODIFY `id_tentangkami` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
  MODIFY `id_transaksi_header` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
