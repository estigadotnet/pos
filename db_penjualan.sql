-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Apr 2017 pada 09.57
-- Versi Server: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` double DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_harjul_grosir` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT '0',
  `barang_min_stok` int(11) DEFAULT '0',
  `barang_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`barang_id`),
  KEY `barang_user_id` (`barang_user_id`),
  KEY `barang_kategori_id` (`barang_kategori_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000001', 'Klem Kabel IKK No 7', 'Bks', 15000, 20000, 17000, 2, 1, '2016-11-22 23:30:50', NULL, 11, 1),
('BR000002', 'Klem Kabel IKK No 8', 'Bks', 16000, 20000, 18000, 2, 1, '2016-11-22 23:32:02', NULL, 11, 1),
('BR000003', 'Klem Kabel IKK No 9', 'Bks', 16000, 22000, 18500, 2, 1, '2016-11-22 23:33:08', NULL, 11, 1),
('BR000004', 'Klem Kabel IKK No 10', 'Bks', 17000, 24000, 19000, 2, 1, '2016-11-22 23:34:19', NULL, 11, 1),
('BR000005', 'Klem kabel dms No 6', 'Bks', 3000, 5000, 4000, 2, 1, '2016-11-22 23:35:23', NULL, 10, 1),
('BR000006', 'Klem kabel dms No 7', 'Bks', 3500, 6000, 4500, 2, 1, '2016-11-22 23:36:23', NULL, 10, 1),
('BR000007', 'Klem kabel dms No 8', 'Bks', 4000, 7000, 5000, 2, 1, '2016-11-22 23:37:20', NULL, 10, 1),
('BR000008', 'Klem kabel dms No 9', 'Bks', 4500, 8000, 5500, 2, 1, '2016-11-22 23:38:36', NULL, 10, 1),
('BR000009', 'Klem kabel dms No 10', 'Bks', 5000, 9000, 6000, 2, 1, '2016-11-22 23:39:24', NULL, 10, 1),
('BR000010', 'Klem kabel Steel No 6', 'Bks', 3100, 6000, 4000, 2, 1, '2016-11-22 23:40:49', NULL, 9, 1),
('BR000011', 'Klem kabel Steel No 7', 'Bks', 3400, 7000, 4500, 2, 1, '2016-11-22 23:41:43', NULL, 9, 1),
('BR000012', 'Klem kabel Steel No 8', 'Bks', 4200, 8000, 5500, 2, 1, '2016-11-22 23:42:42', NULL, 9, 1),
('BR000013', 'Klem kabel Steel No 9', 'Bks', 5000, 9000, 6000, 2, 1, '2016-11-22 23:43:37', NULL, 9, 1),
('BR000014', 'Klem kabel Steel No 10', 'Bks', 5750, 10000, 7000, 2, 1, '2016-11-22 23:44:49', NULL, 9, 1),
('BR000015', 'Saklar Engkel Fonic B', 'PCS', 6750, 10000, 7250, 2, 1, '2016-11-22 23:46:15', NULL, 8, 1),
('BR000016', 'Saklar Seri Fonic B', 'PCS', 8750, 12000, 9500, 2, 1, '2016-11-22 23:47:14', NULL, 8, 1),
('BR000017', 'Saklar Tridel Fonic B', 'PCS', 9500, 15000, 11500, 2, 1, '2016-11-22 23:48:03', NULL, 8, 1),
('BR000018', 'Saklar Engkel Fonic KK', 'PCS', 6750, 10000, 7250, 2, 1, '2016-11-22 23:48:47', NULL, 8, 1),
('BR000019', 'Saklar Seri Fonic KK', 'PCS', 8750, 12000, 9500, 2, 1, '2016-11-22 23:49:55', NULL, 8, 1),
('BR000020', 'Stok Kontak Fonic B', 'PCS', 8750, 12000, 9500, 2, 1, '2016-11-22 23:51:02', NULL, 8, 1),
('BR000021', 'Stop Kontak Fonic KK', 'PCS', 8750, 12000, 9500, 2, 1, '2016-11-22 23:52:11', NULL, 8, 1),
('BR000022', 'Saklar Engkel Sheineder B ', 'PCS', 14000, 18000, 15000, 2, 1, '2016-11-23 00:04:07', NULL, 7, 1),
('BR000023', 'Saklar Seri Sheineder B', 'PCS', 22000, 25000, 23000, 2, 1, '2016-11-23 00:17:36', NULL, 7, 1),
('BR000024', 'Stop Kontak Sheineder B', 'PCS', 16000, 20000, 17000, 1, 1, '2016-11-23 00:18:24', NULL, 7, 1),
('BR000026', 'MCB Sheineder 4A SNI', 'PCS', 35000, 50000, 40000, 2, 1, '2016-11-23 00:19:46', NULL, 7, 1),
('BR000027', 'MCB Sheineder 6A SNI', 'PCS', 35000, 50000, 40000, 2, 1, '2016-11-23 00:20:27', NULL, 7, 1),
('BR000028', 'MCB Sheineder 10A SNI', 'PCS', 35000, 50000, 40000, 2, 1, '2016-11-23 00:21:12', NULL, 7, 1),
('BR000029', 'MCB Sheineder 16A SNI', 'PCS', 47500, 70000, 55000, 2, 1, '2016-11-23 00:21:53', NULL, 7, 1),
('BR000030', 'MCB Sheineder 20A SNI', 'PCS', 47500, 70000, 55000, 2, 1, '2016-11-23 00:22:39', NULL, 7, 1),
('BR000031', 'MCB Sheineder 25A SNI', 'PCS', 47500, 70000, 55000, 2, 1, '2016-11-23 00:23:18', NULL, 7, 1),
('BR000032', 'Saklar Engkel Visalux B', 'PCS', 7250, 10000, 7750, 2, 1, '2016-11-23 00:33:27', '2016-11-22 16:33:57', 6, 1),
('BR000034', 'Stop Kontak Visalux B', 'PCS', 10250, 12000, 0, 1, 1, '2016-11-23 00:35:23', NULL, 6, 1),
('BR000038', 'Saklar Arde Visalux 2L', 'PCS', 8200, 9000, 12000, 0, 1, '2016-11-23 00:38:12', NULL, 6, 1),
('BR000039', 'Saklar Arde Visalux 3L', 'PCS', 10500, 15000, 11500, 2, 1, '2016-11-23 00:39:07', NULL, 6, 1),
('BR000040', 'Saklar Arde Visalux 4L', 'PCS', 13500, 18000, 14000, 2, 1, '2016-11-23 00:39:51', NULL, 6, 1),
('BR000041', 'Saklar Arde Visalux 5L', 'PCS', 15500, 22000, 18000, 2, 1, '2016-11-23 00:40:34', NULL, 6, 1),
('BR000042', 'Saklar Arde Visalux 6L', 'PCS', 19500, 25000, 21000, 2, 1, '2016-11-23 00:41:15', NULL, 6, 1),
('BR000043', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 6000, 7, 1, '2016-11-23 00:52:21', '2016-11-29 14:35:29', 5, 1),
('BR000044', 'Saklar Seri Omi KK', 'PCS', 5700, 10000, 6500, 2, 1, '2016-11-23 00:53:37', NULL, 5, 1),
('BR000045', 'Stok Kontak Omi KK', 'PCS', 5700, 10000, 6500, 1, 1, '2016-11-23 00:54:31', NULL, 5, 1),
('BR000047', 'K. NYM 2x1,5 Voxel Per Meter', 'Meter', 6055, 8000, 6500, 2, 1, '2016-11-23 01:07:43', NULL, 12, 1),
('BR000049', 'K. NYM 2x2,5 Voxel Per Meter', 'Meter', 0, 10000, 9500, 2, 1, '2016-11-23 01:09:52', NULL, 12, 1),
('BR000051', 'K. NYM 3x1,5 Voxel Per Meter', 'Meter', 0, 10000, 9000, 2, 1, '2016-11-23 01:11:10', NULL, 12, 1),
('BR000052', 'K. NYM 3x2,5 Voxel Per Roll', 'Roll', 495000, 530000, 520000, 1, 1, '2016-11-23 01:11:54', NULL, 12, 1),
('BR000054', 'Antena Remot Misonic 850', 'PCS', 87500, 120000, 100000, 2, 1, '2016-11-23 16:51:12', NULL, 13, 1),
('BR000055', 'Antena Digital HD 10', 'PCS', 56000, 75000, 63000, 1, 1, '2016-11-23 16:52:37', NULL, 13, 1),
('BR000056', 'Antena Digital HD 12', 'PCS', 66000, 95000, 75000, 2, 1, '2016-11-23 16:53:21', NULL, 13, 1),
('BR000057', 'Antena Digital Indoor HD 14', 'PCS', 30000, 50000, 35000, 2, 1, '2016-11-23 16:54:09', NULL, 13, 1),
('BR000058', 'Antena Digital HD 19', 'PCS', 117500, 165000, 133000, 2, 1, '2016-11-23 16:54:53', NULL, 13, 1),
('BR000059', 'Antena Digital HD 5000', 'PCS', 106000, 145000, 120000, 2, 1, '2016-11-23 16:55:35', NULL, 13, 1),
('BR000060', 'Antena Digital + Remot PF 850', 'PCS', 95000, 125000, 105000, 2, 1, '2016-11-23 16:56:22', NULL, 13, 1),
('BR000061', 'Boster DX 9900', 'PCS', 69000, 95000, 75000, 2, 1, '2016-11-23 16:57:05', NULL, 13, 1),
('BR000062', 'Kabel Antena TV 15 Yard Enter', 'Roll', 13500, 20000, 15000, 2, 1, '2016-11-23 18:45:15', NULL, 14, 1),
('BR000063', 'Kabel Antena TV 20 Yard Enter', 'Roll', 16500, 24000, 19000, 2, 1, '2016-11-23 18:46:07', NULL, 14, 1),
('BR000064', 'Kabel Antena TV 100 Yard Enter', 'Roll', 82500, 110000, 95000, 2, 1, '2016-11-23 18:46:58', NULL, 14, 1),
('BR000065', 'Kabel Antena TV 300 Yard Enter', 'Roll', 125000, 285000, 275000, 2, 1, '2016-11-23 18:47:47', NULL, 14, 1),
('BR000067', 'Power Supply Tanaka', 'PCS', 21000, 30000, 23000, 2, 1, '2016-11-23 18:50:01', NULL, 15, 1),
('BR000068', 'Power Supply Remote', 'PCS', 35000, 50000, 40000, 2, 1, '2016-11-23 18:50:45', NULL, 15, 1),
('BR000069', 'RCA 1 In 1', 'PCS', 4000, 8000, 5000, 2, 1, '2016-11-23 18:52:09', NULL, 16, 1),
('BR000070', 'RCA 2 In 1 1,5M Enter', 'PCS', 3500, 10000, 4500, 2, 1, '2016-11-23 18:52:51', NULL, 16, 1),
('BR000071', 'RCA 2P In 1,2M Stell', 'PCS', 0, 8000, 6500, 1, 1, '2016-11-23 18:57:08', NULL, 16, 1),
('BR000072', 'RCA 3P In 1,2M Stell', 'PCS', 0, 10000, 7500, 2, 1, '2016-11-23 19:10:30', NULL, 16, 1),
('BR000073', 'RCA 3P In 1,5M APK', 'PCS', 6750, 13000, 7500, 2, 1, '2016-11-23 19:11:37', NULL, 16, 1),
('BR000075', 'AC Cord Komp Hitam 1,2', 'PCS', 6100, 10000, 7500, 2, 1, '2016-11-23 19:15:33', NULL, 17, 1),
('BR000076', 'AC Cord Komp Putih 1,2', 'PCS', 6600, 10000, 8000, 2, 1, '2016-11-23 19:16:17', NULL, 17, 1),
('BR000077', 'Jack Antena TV Jantan Hitam', 'PCS', 600, 2000, 750, 2, 1, '2016-11-23 19:24:27', NULL, 18, 1),
('BR000078', 'Jack Antena TV Betina Hitam', 'PCS', 700, 2000, 800, 2, 1, '2016-11-23 19:25:11', NULL, 18, 1),
('BR000079', 'SK Arde Esenze 2L', 'PCS', 6500, 10000, 7500, 2, 1, '2016-11-23 19:27:43', NULL, 19, 1),
('BR000080', 'SK Arde Esenze 4L', 'PCS', 11500, 18000, 12500, 2, 1, '2016-11-23 19:28:31', NULL, 19, 1),
('BR000083', 'SK Arde Augen 4L', 'PCS', 16500, 18000, 17000, 2, 1, '2016-11-23 19:35:29', NULL, 20, 1),
('BR000084', 'SK Arde Augen 5L', 'PCS', 19000, 22000, 20000, 2, 1, '2016-11-23 19:36:12', NULL, 20, 1),
('BR000085', 'SK Arde Augen 6L', 'PCS', 21000, 25000, 22000, 2, 1, '2016-11-23 19:37:10', NULL, 20, 1),
('BR000086', 'Skring Automatic Augen 6A ', 'PCS', 32500, 40000, 35000, 2, 1, '2016-11-23 19:37:57', NULL, 20, 1),
('BR000087', 'Skring Automatic Augen 10A', 'PCS', 32500, 40000, 35000, 2, 1, '2016-11-23 19:38:43', NULL, 20, 1),
('BR000088', 'Skring Automatic Augen 16A', 'PCS', 32500, 40000, 35000, 2, 1, '2016-11-23 19:40:32', NULL, 20, 1),
('BR000089', 'MCB Itami 4A SNI', 'PCS', 6000, 15000, 7500, 2, 1, '2016-11-23 20:20:37', NULL, 21, 1),
('BR000090', 'MCB Itami 20A SNI', 'PCS', 6000, 15000, 7500, 2, 1, '2016-11-23 20:21:24', NULL, 21, 1),
('BR000091', 'MCB Itami 25A SNI', 'PCS', 6000, 15000, 7500, 2, 1, '2016-11-23 20:22:19', NULL, 21, 1),
('BR000092', 'Skring Batu Itami 6A, 10A', 'PCS', 1000, 3000, 1350, 2, 1, '2016-11-23 20:23:08', NULL, 21, 1),
('BR000094', 'Steker Hitam Yaki', 'PCS', 650, 3000, 1000, 2, 1, '2016-11-23 20:25:58', NULL, 22, 1),
('BR000095', 'Steker Arde Rocko', 'PCS', 1350, 5000, 1600, 2, 1, '2016-11-23 20:26:43', NULL, 22, 1),
('BR000096', 'Steker Arde Dexta 638', 'PCS', 3000, 7000, 4600, 2, 1, '2016-11-23 20:27:27', NULL, 22, 1),
('BR000101', 'MCB New Pallas 6A', 'PCS', 7500, 15000, 8500, 2, 1, '2016-11-23 21:30:05', NULL, 23, 1),
('BR000102', 'MCB New Pallas 10A', 'PCS', 7500, 15000, 8500, 2, 1, '2016-11-23 21:31:32', NULL, 23, 1),
('BR000103', 'T. Multi Stanco SR 5303', 'PCS', 2350, 7000, 3500, 2, 1, '2016-11-23 21:32:27', NULL, 24, 1),
('BR000104', 'T. Multi Rocko', 'PCS', 1650, 5000, 3000, 2, 1, '2016-11-23 21:33:19', NULL, 24, 1),
('BR000105', 'T. Multi Monita', 'PCS', 3250, 7000, 3750, 2, 1, '2016-11-23 21:34:06', NULL, 24, 1),
('BR000106', 'Stand Fan 2 IN 1 16 Stanco SCS 1602', 'PCS', 165000, 187500, 225000, 2, 1, '2016-11-23 21:35:03', NULL, 24, 1),
('BR000107', 'Desk Fan 12’ Elegant Stanco SCD 1202', 'PCS', 135000, 170000, 145000, 2, 1, '2016-11-23 21:35:43', NULL, 24, 1),
('BR000108', 'Desk Fan 12’ Biasa Stanco SCD 1202', 'PCS', 125000, 160000, 135000, 2, 1, '2016-11-23 21:36:39', NULL, 24, 1),
('BR000109', 'Box Fan 12’ Stanco SCD 901', 'PCS', 140000, 175000, 152500, 2, 1, '2016-11-23 21:37:21', NULL, 24, 1),
('BR000110', 'Box Fan 12’ Stanco SCD 1201', 'PCS', 110000, 160000, 125000, 2, 1, '2016-11-23 21:38:05', NULL, 24, 1),
('BR000112', 'Industrial Fan 18’ SPF 109', 'PCS', 260000, 350000, 285000, 2, 1, '2016-11-23 21:39:21', NULL, 24, 1),
('BR000113', 'RN Biasa Stanco RN888', 'PCS', 29000, 40000, 32000, 2, 1, '2016-11-23 21:40:09', NULL, 24, 1),
('BR000114', 'Fiting Flapon S6 4 Starco 1203', 'PCS', 3700, 10000, 5000, 2, 1, '2016-11-23 21:41:11', NULL, 24, 1),
('BR000115', 'Fiting Flapon S6 8 Starco 1201', 'PCS', 3700, 10000, 5000, 2, 1, '2016-11-23 21:42:36', NULL, 24, 1),
('BR000116', 'Fiting Flapon Kombang S6 4 Starco 1202', 'PCS', 3700, 10000, 5000, 2, 1, '2016-11-23 21:43:21', NULL, 24, 1),
('BR000117', 'Fiting Flapon Sok FP10', 'PCS', 4850, 10000, 6500, 2, 1, '2016-11-23 21:48:33', NULL, 25, 1),
('BR000118', 'Fiting Flapon Fuji L', 'PCS', 1850, 5000, 2500, 1, 1, '2016-11-23 21:49:15', NULL, 25, 1),
('BR000119', 'Fiting Flapon Sok Biasa', 'PCS', 1850, 5000, 2500, 2, 1, '2016-11-23 21:50:01', NULL, 25, 1),
('BR000120', 'Fiting Flapon VLC', 'PCS', 4850, 10000, 6500, 2, 1, '2016-11-23 21:50:42', NULL, 25, 1),
('BR000121', 'T. Dos 5/8 Hitam', 'PCS', 300, 1000, 500, 2, 1, '2016-11-23 21:53:44', NULL, 26, 1),
('BR000122', 'T. Dos 3/4 Cab 3 Putih', 'PCS', 1300, 3000, 1750, 2, 1, '2016-11-23 21:54:34', NULL, 26, 1),
('BR000123', 'T. Dos 3/4 Cab 4 Putih', 'PCS', 1450, 4000, 1900, 2, 1, '2016-11-23 21:56:37', NULL, 26, 1),
('BR000124', 'L. Boh 5/8 P/H', 'PCS', 300, 1000, 500, 2, 1, '2016-11-23 21:57:21', NULL, 26, 1),
('BR000125', 'L. Boh 3/4 P', 'PCS', 1750, 3000, 2000, 2, 1, '2016-11-23 21:58:05', NULL, 26, 1),
('BR000126', 'Rolen', 'PCS', 75, 500, 150, 2, 1, '2016-11-23 21:58:48', NULL, 26, 1),
('BR000127', 'Tekong 1B Segi 4 Hiro', 'PCS', 1750, 3000, 1900, 2, 1, '2016-11-23 22:06:23', NULL, 27, 1),
('BR000128', 'Tekong 0B Segi 4 MK', 'PCS', 2200, 3000, 2500, 2, 1, '2016-11-23 22:07:09', NULL, 27, 1),
('BR000129', 'Tekong 0B Segi 4 Poisson', 'PCS', 1350, 3000, 1700, 1, 1, '2016-11-23 22:07:53', NULL, 27, 1),
('BR000130', 'Strika Maspion HA 110', 'PCS', 101000, 140000, 107500, 2, 1, '2016-11-23 22:09:44', NULL, 28, 1),
('BR000131', 'Strika Maspion EX 1000', 'PCS', 80000, 110000, 92500, 2, 1, '2016-11-23 22:10:44', NULL, 28, 1),
('BR000132', 'Strika Maspion HA 358', 'PCS', 86000, 115000, 97500, 2, 1, '2016-11-23 22:11:35', NULL, 28, 1),
('BR000133', 'Strika Maspion HA 130', 'PCS', 97000, 135000, 105000, 2, 1, '2016-11-23 22:12:47', NULL, 28, 1),
('BR000134', 'Strika Maspion HA 40', 'PCS', 102000, 150000, 120000, 2, 1, '2016-11-23 22:23:23', NULL, 28, 1),
('BR000135', 'Strika Maspion HA 30', 'PCS', 114000, 165000, 127500, 2, 1, '2016-11-23 22:24:16', NULL, 28, 1),
('BR000136', 'DF Maspion EX 307', 'PCS', 195000, 245000, 220000, 2, 1, '2016-11-23 22:25:02', NULL, 28, 1),
('BR000137', 'SF Maspion EX 1675', 'PCS', 266000, 325000, 285000, 2, 1, '2016-11-23 22:25:55', NULL, 28, 1),
('BR000138', 'BOX FAN Maspion EX 2109', 'PCS', 240000, 300000, 265000, 2, 1, '2016-11-23 22:27:16', NULL, 28, 1),
('BR000139', 'BOX FAN Maspion JF210iT', 'PCS', 260000, 325000, 285000, 2, 1, '2016-11-23 22:28:20', NULL, 28, 1),
('BR000140', 'Hexos Fan Maspion MV250 NEX 10’', 'PCS', 270000, 325000, 300000, 2, 1, '2016-11-23 22:29:30', NULL, 28, 1),
('BR000141', 'Hexos Fan Maspion MV250 NEX 12’', 'PCS', 285000, 350000, 315000, 2, 1, '2016-11-23 22:30:26', NULL, 28, 1),
('BR000142', 'Orbit Fan Maspion MOF 401D', 'PCS', 400000, 475000, 430000, 2, 1, '2016-11-23 22:31:25', NULL, 28, 1),
('BR000143', 'Kompor Gas Rinnai 522C', 'PCS', 260600, 300000, 270000, 2, 1, '2016-11-23 23:04:11', NULL, 29, 1),
('BR000144', 'Kompor Gas Rinnai 712C', 'PCS', 420000, 445000, 430000, 2, 1, '2016-11-23 23:05:19', NULL, 29, 1),
('BR000145', 'Kompor Gas Rinnai 511E', 'PCS', 175000, 182500, 200000, 2, 1, '2016-11-23 23:06:17', NULL, 29, 1),
('BR000146', 'Kompor Gas Rinnai 289RI', 'PCS', 385600, 440000, 410000, 2, 1, '2016-11-23 23:07:17', NULL, 29, 1),
('BR000147', 'Strika Miyako El 1000 M', 'PCS', 100000, 125000, 83600, 2, 1, '2016-11-23 23:09:00', NULL, 30, 1),
('BR000148', 'Strika Miyako El 1009 M', 'PCS', 102000, 145000, 115000, 2, 1, '2016-11-23 23:09:57', NULL, 30, 1),
('BR000149', 'M.Com Miyako 507 1,8 L ', 'PCS', 230000, 265000, 240000, 2, 1, '2016-11-23 23:11:28', NULL, 30, 1),
('BR000150', 'M.Com Miyako 508 1,8 L', 'PCS', 230000, 265000, 240000, 2, 1, '2016-11-23 23:12:18', NULL, 30, 1),
('BR000151', 'M.Com Miyako 509 1,8 L', 'PCS', 230000, 265000, 240000, 2, 1, '2016-11-23 23:13:21', NULL, 30, 1),
('BR000152', 'M.Com Miyako 606 0,6 L', 'PCS', 200000, 210000, 220000, 2, 1, '2016-11-23 23:14:12', NULL, 30, 1),
('BR000153', 'M.Com Miyako 612 1,2 L', 'PCS', 210000, 215000, 235000, 2, 1, '2016-11-23 23:23:42', NULL, 30, 1),
('BR000154', 'SF Miyako 1627', 'PCS', 243000, 270000, 250000, 2, 1, '2016-11-23 23:24:30', NULL, 30, 1),
('BR000158', 'DF Miyako 1227', 'PCS', 173000, 200000, 180000, 2, 1, '2016-11-23 23:26:39', NULL, 30, 1),
('BR000159', 'DIPS Myako HD 189', 'PCS', 145000, 165000, 150000, 2, 1, '2016-11-23 23:27:40', NULL, 30, 1),
('BR000160', 'DIPS Myako HD 190', 'PCS', 148000, 170000, 152000, 2, 1, '2016-11-23 23:28:24', NULL, 30, 1),
('BR000161', 'DIPS Myako HD 289', 'PCS', 285000, 315000, 295000, 2, 1, '2016-11-23 23:29:04', NULL, 30, 1),
('BR000162', 'T. Multi Uticon', 'PCS', 5500, 10000, 5500, 2, 1, '2016-11-23 23:40:31', NULL, 31, 1),
('BR000163', 'T. Arde Unicon', 'PCS', 15500, 20000, 15500, 2, 1, '2016-11-23 23:41:17', NULL, 31, 1),
('BR000164', 'T. Arde + Sfush', 'PCS', 15750, 25000, 19500, 2, 1, '2016-11-23 23:42:02', NULL, 31, 1),
('BR000165', 'DF Sekai 650', 'PCS', 105000, 125000, 110000, 2, 1, '2016-11-23 23:43:17', NULL, 32, 1),
('BR000166', 'DF Sekai 960', 'PCS', 160000, 185000, 165000, 2, 1, '2016-11-23 23:43:58', NULL, 32, 1),
('BR000167', 'DF Sekai 2 In 1 1060', 'PCS', 198000, 220000, 205000, 2, 1, '2016-11-23 23:44:48', NULL, 32, 1),
('BR000168', 'DF Sekai 2 In 1 1210', 'PCS', 249000, 275000, 260000, 2, 1, '2016-11-23 23:45:28', '2016-11-23 15:46:39', 32, 1),
('BR000169', 'SF Sekai 1808', 'PCS', 310000, 325000, 350000, 2, 1, '2016-11-23 23:46:11', NULL, 32, 1),
('BR000170', 'SF Sekai 1851', 'PCS', 360000, 415000, 370000, 2, 1, '2016-11-23 23:47:28', NULL, 32, 1),
('BR000171', 'Celling Sekai HCF 5683', 'PCS', 265000, 325000, 285000, 2, 1, '2016-11-23 23:48:18', NULL, 32, 1),
('BR000172', 'Wall Fan Sekai 1606', 'PCS', 210000, 265000, 230000, 2, 1, '2016-11-23 23:48:57', NULL, 32, 1),
('BR000173', 'Orbit Fan Sekai COF 1651', 'PCS', 300000, 375000, 330000, 2, 1, '2016-11-23 23:49:53', NULL, 32, 1),
('BR000174', 'Regancy 2 TW 18', 'PCS', 490000, 575000, 540000, 2, 1, '2016-11-23 23:52:23', NULL, 33, 1),
('BR000175', 'Regancy 2 TW 20', 'PCS', 550000, 600000, 585000, 1, 1, '2016-11-23 23:53:31', NULL, 33, 1),
('BR000176', 'PLC Amasco 2U 5W', 'PCS', 15525, 23000, 17250, 2, 1, '2016-11-23 23:54:45', NULL, 34, 1),
('BR000177', 'PLC Amasco 2U 8W', 'PCS', 16200, 24000, 18000, 2, 1, '2016-11-23 23:55:23', NULL, 34, 1),
('BR000178', 'PLC Amasco 2U 11W', 'PCS', 17550, 26000, 19500, 2, 1, '2016-11-23 23:56:09', NULL, 34, 1),
('BR000179', 'PLC Amasco 2U 14W', 'PCS', 18630, 27500, 20700, 2, 1, '2016-11-23 23:56:51', NULL, 34, 1),
('BR000180', 'PLC Amasco 3U 18W', 'PCS', 23625, 35000, 26250, 1, 1, '2016-11-23 23:57:30', NULL, 34, 1),
('BR000181', 'PLC Amasco 3U 23W', 'PCS', 25650, 38000, 28500, 2, 1, '2016-11-23 23:58:08', NULL, 34, 1),
('BR000182', 'PLC Amasco 3U 28W', 'PCS', 29700, 44000, 33000, 2, 1, '2016-11-23 23:58:47', NULL, 34, 1),
('BR000183', 'PLC Amasco 4U 45W', 'PCS', 42000, 60000, 45000, 2, 1, '2016-11-23 23:59:32', NULL, 34, 1),
('BR000185', 'Spiral Amasco 5W', 'PCS', 22800, 32000, 24000, 1, 1, '2016-11-24 00:00:47', NULL, 34, 1),
('BR000186', 'Spiral Amasco 8W', 'PCS', 22800, 32000, 24000, 2, 1, '2016-11-24 00:01:28', NULL, 34, 1),
('BR000187', 'Spiral Amasco 12W', 'PCS', 23900, 33500, 25125, 2, 1, '2016-11-24 00:02:08', NULL, 34, 1),
('BR000188', 'Spiral Amasco 15W', 'PCS', 26000, 36500, 27375, 2, 1, '2016-11-24 00:02:51', NULL, 34, 1),
('BR000189', 'Spiral Amasco 20W', 'PCS', 29925, 42000, 31500, 2, 1, '2016-11-24 00:23:25', NULL, 34, 1),
('BR000190', 'Spiral Amasco 24W', 'PCS', 32000, 45000, 33750, 2, 1, '2016-11-24 00:24:09', NULL, 34, 1),
('BR000191', 'Spiral Amasco 28W', 'PCS', 35700, 50000, 37500, 2, 1, '2016-11-24 00:24:49', NULL, 34, 1),
('BR000192', 'Spiral Amasco 45W', 'PCS', 53500, 75000, 56250, 2, 1, '2016-11-24 00:25:38', NULL, 34, 1),
('BR000194', 'LED Enter 3W', 'PCS', 3000, 5000, 3250, 2, 1, '2016-11-24 03:44:02', NULL, 35, 1),
('BR000195', 'LED Enter 5W', 'PCS', 4650, 7000, 5500, 2, 1, '2016-11-24 03:44:49', NULL, 35, 1),
('BR000196', 'LED Enter 7W', 'PCS', 5500, 10000, 7000, 1, 1, '2016-11-24 03:45:29', NULL, 35, 1),
('BR000197', 'LED Enter 9W', 'PCS', 7300, 12000, 8500, 2, 1, '2016-11-24 03:46:34', NULL, 35, 1),
('BR000198', 'LED Enter 12W', 'PCS', 8600, 15000, 10000, 2, 1, '2016-11-24 03:47:16', NULL, 35, 1),
('BR000199', 'LED Enter 15W', 'PCS', 10000, 18000, 12000, 2, 1, '2016-11-24 03:47:53', NULL, 35, 1),
('BR000200', 'LED Enter 18W', 'PCS', 11600, 20000, 13000, 2, 1, '2016-11-24 03:48:40', NULL, 35, 1),
('BR000201', 'LED Magic Enter 12W', 'PCS', 40000, 55000, 45000, 2, 1, '2016-11-24 03:54:24', NULL, 35, 1),
('BR000203', 'LED Licons 3W', 'PCS', 2650, 5000, 3500, 2, 1, '2016-11-24 05:02:33', NULL, 36, 1),
('BR000206', 'LED Licons 9W', 'PCS', 8000, 12000, 8750, 2, 1, '2016-11-24 05:07:20', NULL, 36, 1),
('BR000207', 'LED Licons 12W', 'PCS', 9800, 15000, 10000, 2, 1, '2016-11-24 05:08:10', NULL, 36, 1),
('BR000208', 'Essial Philips 5W', 'PCS', 23200, 25000, 23700, 2, 1, '2016-11-24 05:12:51', NULL, 37, 1),
('BR000209', 'Essial Philips 8W', 'PCS', 25800, 28000, 26500, 2, 1, '2016-11-24 05:13:57', NULL, 37, 1),
('BR000210', 'Essial Philips 11W', 'PCS', 29550, 32000, 30000, 2, 1, '2016-11-24 05:15:03', '2016-11-23 21:17:09', 37, 1),
('BR000211', 'Essial Philips 14W', 'PCS', 32150, 36000, 32800, 2, 1, '2016-11-24 05:15:46', '2016-11-23 21:17:24', 37, 1),
('BR000212', 'Essial Philips 18W', 'PCS', 33250, 38000, 34000, 2, 1, '2016-11-24 05:16:46', NULL, 37, 1),
('BR000213', 'Essial Philips 23W', 'PCS', 40300, 43000, 41000, 2, 1, '2016-11-24 05:18:19', NULL, 37, 1),
('BR000214', 'Sitrang Philips 20 5W', 'PCS', 17650, 20000, 18150, 2, 1, '2016-11-24 05:19:57', NULL, 37, 1),
('BR000215', 'Sitrang Philips 20 8W', 'PCS', 19050, 25000, 19550, 2, 1, '2016-11-24 05:21:06', NULL, 37, 1),
('BR000216', 'Sitrang Philips 20 11W', 'PCS', 20950, 27000, 21450, 2, 1, '2016-11-24 05:22:21', NULL, 37, 1),
('BR000217', 'Sitrang Philips 20 18W', 'PCS', 25500, 35000, 26000, 2, 1, '2016-11-24 05:23:28', NULL, 37, 1),
('BR000218', 'Sitrang Philips 20 23W', 'PCS', 28950, 37000, 29450, 2, 1, '2016-11-24 05:24:10', NULL, 37, 1),
('BR000219', 'Spiral Philips 5W', 'PCS', 36250, 40000, 36750, 2, 1, '2016-11-24 05:24:49', NULL, 37, 1),
('BR000220', 'Spiral Philips 8W', 'PCS', 37700, 40000, 38200, 2, 1, '2016-11-24 05:25:33', NULL, 37, 1),
('BR000221', 'Spiral Philips 12W', 'PCS', 38050, 42000, 38550, 2, 1, '2016-11-24 05:26:16', NULL, 37, 1),
('BR000222', 'Spiral Philips 15W', 'PCS', 40750, 42000, 41250, 2, 1, '2016-11-24 05:27:02', NULL, 37, 1),
('BR000223', 'Spiral Philips 20W', 'PCS', 43800, 50000, 44200, 2, 1, '2016-11-24 05:27:45', NULL, 37, 1),
('BR000224', 'Spiral Philips 24W', 'PCS', 48350, 55000, 49500, 2, 1, '2016-11-24 05:28:22', NULL, 37, 1),
('BR000225', 'Spiral Philips  Helix 32W', 'PCS', 57400, 65000, 57500, 2, 1, '2016-11-24 05:29:26', NULL, 37, 1),
('BR000226', 'Spiral Philips  Helix 42W', 'PCS', 68400, 75000, 68500, 2, 1, '2016-11-24 05:33:15', NULL, 37, 1),
('BR000227', 'Spiral Philips  Helix 52W', 'PCS', 98400, 110000, 100000, 2, 1, '2016-11-24 05:33:51', NULL, 37, 1),
('BR000230', 'Stater Philips 510', 'PCS', 3350, 5000, 3500, 2, 1, '2016-11-24 05:35:10', NULL, 37, 1),
('BR000234', 'TLD Ospam 36W', 'PCS', 9600, 15000, 10000, 2, 1, '2016-11-24 05:37:22', NULL, 37, 1),
('BR000235', 'Gembok Nissan Pendek 30', 'PCS', 9000, 15000, 10500, 2, 1, '2016-11-24 05:39:11', NULL, 38, 1),
('BR000236', 'Gembok Nissan Panjang 30', 'PCS', 9750, 18000, 13500, 2, 1, '2016-11-24 05:39:50', '2016-11-23 21:40:47', 38, 1),
('BR000237', 'Gembok Nissan Pendek 40', 'PCS', 12000, 20000, 14000, 2, 1, '2016-11-24 05:40:30', NULL, 38, 1),
('BR000238', 'Gembok Nissan Panjang 40', 'PCS', 13000, 24000, 18000, 2, 1, '2016-11-24 05:41:23', NULL, 38, 1),
('BR000239', 'Gembok Nissan Pendek 50', 'PCS', 15000, 25000, 17500, 2, 1, '2016-11-24 05:42:03', NULL, 38, 1),
('BR000240', 'Gembok Nissan Panjang 50', 'PCS', 16250, 30000, 22500, 2, 1, '2016-11-24 05:44:58', NULL, 38, 1),
('BR000241', 'Gembok Nissan Pendek 60', 'PCS', 18000, 30000, 21000, 2, 1, '2016-11-24 05:45:37', NULL, 38, 1),
('BR000242', 'Gembok Nissan Panjang 60', 'PCS', 19500, 36000, 27000, 2, 1, '2016-11-24 05:46:28', NULL, 38, 1),
('BR000243', 'K.Ties 3 Amc (80X2,5mm)', 'Bks', 3100, 6000, 4000, 2, 1, '2016-11-24 05:47:53', NULL, 39, 1),
('BR000244', 'K.Ties 4 Amc (100X2,5mm)', 'Bks', 3500, 7000, 4000, 2, 1, '2016-11-24 05:48:29', NULL, 39, 1),
('BR000245', 'K.Ties 6 Amc (150X2,5mm)', 'Bks', 6100, 10000, 7000, 2, 1, '2016-11-24 05:49:06', NULL, 39, 1),
('BR000246', 'K.Ties 6 Amc (180X3,6mm)', 'Bks', 8800, 12000, 10000, 2, 1, '2016-11-24 05:49:53', NULL, 39, 1),
('BR000247', 'K.Ties 8 Amc (200X3,6mm)', 'Bks', 12200, 15000, 13000, 2, 1, '2016-11-24 05:50:36', NULL, 39, 1),
('BR000248', 'K.Ties 8 Amc (200X4,8mm)', 'Bks', 17000, 22000, 18000, 2, 1, '2016-11-24 05:51:22', NULL, 39, 1),
('BR000249', 'K.Ties 10 Amc (250X3,6mm)', 'Bks', 15200, 20000, 16000, 2, 1, '2016-11-24 05:52:04', NULL, 39, 1),
('BR000250', 'K.Ties 10 Amc (200X4,8mm)', 'Bks', 21500, 25000, 23000, 2, 1, '2016-11-24 05:52:44', NULL, 39, 1),
('BR000251', 'Klem Kabel Amc No 7', 'Bks', 3250, 6000, 4000, 2, 1, '2016-11-24 05:53:29', NULL, 39, 1),
('BR000252', 'Klem Kabel Amc No 8', 'Bks', 3850, 7000, 4500, 2, 1, '2016-11-24 05:54:13', NULL, 39, 1),
('BR000253', 'Klem Kabel Amc No 9', 'Bks', 4200, 8000, 5000, 2, 1, '2016-11-24 05:55:00', NULL, 39, 1),
('BR000254', 'Klem Kabel Amc No 10', 'Bks', 4600, 9000, 5500, 2, 1, '2016-11-24 05:55:45', NULL, 39, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_beli`
--

CREATE TABLE IF NOT EXISTS `tbl_beli` (
  `beli_nofak` varchar(15) DEFAULT NULL,
  `beli_tanggal` date DEFAULT NULL,
  `beli_suplier_id` int(11) DEFAULT NULL,
  `beli_user_id` int(11) DEFAULT NULL,
  `beli_kode` varchar(15) NOT NULL,
  PRIMARY KEY (`beli_kode`),
  KEY `beli_user_id` (`beli_user_id`),
  KEY `beli_suplier_id` (`beli_suplier_id`),
  KEY `beli_id` (`beli_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_beli`
--

CREATE TABLE IF NOT EXISTS `tbl_detail_beli` (
  `d_beli_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_beli_nofak` varchar(15) DEFAULT NULL,
  `d_beli_barang_id` varchar(15) DEFAULT NULL,
  `d_beli_harga` double DEFAULT NULL,
  `d_beli_jumlah` int(11) DEFAULT NULL,
  `d_beli_total` double DEFAULT NULL,
  `d_beli_kode` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`d_beli_id`),
  KEY `d_beli_barang_id` (`d_beli_barang_id`),
  KEY `d_beli_nofak` (`d_beli_nofak`),
  KEY `d_beli_kode` (`d_beli_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_jual`
--

CREATE TABLE IF NOT EXISTS `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` double DEFAULT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL,
  PRIMARY KEY (`d_jual_id`),
  KEY `d_jual_barang_id` (`d_jual_barang_id`),
  KEY `d_jual_nofak` (`d_jual_nofak`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data untuk tabel `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_nofak`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harpok`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(1, '241116000001', 'BR000001', 'Klem Kabel IKK No 7', 'Bks', 15000, 20000, 1, 0, 20000),
(2, '241116000002', 'BR000002', 'Klem Kabel IKK No 8', 'Bks', 16000, 20000, 1, 0, 20000),
(3, '241116000003', 'BR000003', 'Klem Kabel IKK No 9', 'Bks', 16000, 22000, 1, 0, 22000),
(4, '241116000004', 'BR000045', 'Stok Kontak Omi KK', 'PCS', 5700, 10000, 1, 0, 10000),
(5, '241116000005', 'BR000005', 'Klem kabel dms No 6', 'Bks', 3000, 5000, 1, 0, 5000),
(6, '241116000006', 'BR000006', 'Klem kabel dms No 7', 'Bks', 3500, 6000, 1, 0, 6000),
(7, '241116000007', 'BR000008', 'Klem kabel dms No 9', 'Bks', 4500, 8000, 1, 0, 8000),
(8, '241116000008', 'BR000010', 'Klem kabel Steel No 6', 'Bks', 3100, 6000, 1, 0, 6000),
(9, '241116000008', 'BR000011', 'Klem kabel Steel No 7', 'Bks', 3400, 7000, 1, 0, 7000),
(10, '241116000009', 'BR000013', 'Klem kabel Steel No 9', 'Bks', 5000, 6000, 1, 0, 6000),
(11, '251116000001', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(12, '251116000001', 'BR000038', 'Saklar Arde Visalux 2L', 'PCS', 8200, 9000, 1, 0, 9000),
(13, '291116000001', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(14, '291116000001', 'BR000056', 'Antena Digital HD 12', 'PCS', 66000, 95000, 1, 0, 95000),
(15, '291116000002', 'BR000030', 'MCB Sheineder 20A SNI', 'PCS', 47500, 70000, 1, 2000, 68000),
(16, '291116000003', 'BR000012', 'Klem kabel Steel No 8', 'Bks', 4200, 8000, 1, 0, 8000),
(17, '291116000004', 'BR000032', 'Saklar Engkel Visalux B', 'PCS', 7250, 10000, 1, 0, 10000),
(18, '291116000005', 'BR000045', 'Stok Kontak Omi KK', 'PCS', 5700, 10000, 1, 0, 10000),
(19, '291116000006', 'BR000024', 'Stop Kontak Sheineder B', 'PCS', 16000, 20000, 1, 0, 20000),
(20, '291116000006', 'BR000038', 'Saklar Arde Visalux 2L', 'PCS', 8200, 9000, 1, 0, 9000),
(21, '291116000007', 'BR000038', 'Saklar Arde Visalux 2L', 'PCS', 8200, 9000, 1, 0, 9000),
(22, '240117000001', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(23, '240117000002', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000),
(24, '290317000001', 'BR000034', 'Stop Kontak Visalux B', 'PCS', 10250, 12000, 1, 0, 12000),
(25, '290317000001', 'BR000043', 'Saklar Engkel Omi KK', 'PCS', 4500, 10000, 1, 0, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jual`
--

CREATE TABLE IF NOT EXISTS `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `jual_total` double DEFAULT NULL,
  `jual_jml_uang` double DEFAULT NULL,
  `jual_kembalian` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`jual_nofak`),
  KEY `jual_user_id` (`jual_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_nofak`, `jual_tanggal`, `jual_total`, `jual_jml_uang`, `jual_kembalian`, `jual_user_id`, `jual_keterangan`) VALUES
('240117000001', '2017-01-24 15:07:07', 10000, 20000, 10000, 1, 'eceran'),
('240117000002', '2017-01-24 15:07:26', 10000, 20000, 10000, 1, 'eceran'),
('241116000001', '2016-11-24 17:42:06', 20000, 20000, 0, 1, 'eceran'),
('241116000002', '2016-11-24 17:49:58', 20000, 20000, 0, 1, 'eceran'),
('241116000003', '2016-11-24 17:55:48', 22000, 22000, 0, 1, 'eceran'),
('241116000004', '2016-11-24 17:59:38', 10000, 10000, 0, 1, 'eceran'),
('241116000005', '2016-11-24 18:21:24', 5000, 20000, 15000, 1, 'eceran'),
('241116000006', '2016-11-24 18:27:01', 6000, 7000, 1000, 1, 'eceran'),
('241116000007', '2016-11-24 18:29:43', 8000, 10000, 2000, 1, 'eceran'),
('241116000008', '2016-11-24 18:32:01', 13000, 15000, 2000, 1, 'eceran'),
('241116000009', '2016-11-24 19:47:50', 6000, 7000, 1000, 1, 'grosir'),
('251116000001', '2016-11-25 22:07:15', 19000, 60000, 41000, 1, 'eceran'),
('290317000001', '2017-03-29 13:35:49', 22000, 56000, 34000, 1, 'eceran'),
('291116000001', '2016-11-29 19:11:48', 105000, 120000, 15000, 1, 'eceran'),
('291116000002', '2016-11-29 19:49:20', 68000, 70000, 2000, 1, 'eceran'),
('291116000003', '2016-11-29 19:57:17', 8000, 10000, 2000, 1, 'eceran'),
('291116000004', '2016-11-29 19:58:35', 10000, 12000, 2000, 1, 'eceran'),
('291116000005', '2016-11-29 22:10:10', 10000, 10000, 0, 1, 'eceran'),
('291116000006', '2016-11-29 22:23:40', 29000, 30000, 1000, 1, 'eceran'),
('291116000007', '2016-11-29 22:41:08', 9000, 10000, 1000, 2, 'eceran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(5, 'Omi'),
(6, 'Visalux'),
(7, 'Sheineder'),
(8, 'Fonic'),
(9, 'Steel'),
(10, 'DMS'),
(11, 'IKK'),
(12, 'Voxel'),
(13, 'Antena'),
(14, 'Kabel Antena'),
(15, 'Power Supply'),
(16, 'RCA'),
(17, 'AC Cord'),
(18, 'Jack Antena '),
(19, 'Esenze'),
(20, 'Augen'),
(21, 'Itami'),
(22, 'Steker'),
(23, 'Pallas'),
(24, 'Stanco'),
(25, 'Flapon'),
(26, 'T Dos dan Rolen'),
(27, 'Tekong'),
(28, 'Maspion'),
(29, 'Kompos Gas'),
(30, 'Miyako'),
(31, 'Uticon'),
(32, 'Sekai'),
(33, 'Regancy'),
(34, 'Amasco'),
(35, 'Enter'),
(36, 'Licons'),
(37, 'Philips'),
(38, 'Nissan'),
(39, 'AMC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_retur`
--

CREATE TABLE IF NOT EXISTS `tbl_retur` (
  `retur_id` int(11) NOT NULL AUTO_INCREMENT,
  `retur_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `retur_barang_id` varchar(15) DEFAULT NULL,
  `retur_barang_nama` varchar(150) DEFAULT NULL,
  `retur_barang_satuan` varchar(30) DEFAULT NULL,
  `retur_harjul` double DEFAULT NULL,
  `retur_qty` int(11) DEFAULT NULL,
  `retur_subtotal` double DEFAULT NULL,
  `retur_keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`retur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suplier`
--

CREATE TABLE IF NOT EXISTS `tbl_suplier` (
  `suplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_nama` varchar(35) DEFAULT NULL,
  `suplier_alamat` varchar(60) DEFAULT NULL,
  `suplier_notelp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`suplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'M Fikri Setiadi', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1'),
(2, 'fikri', 'kasir', 'e10adc3949ba59abbe56e057f20f883e', '2', '1');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`barang_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`barang_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD CONSTRAINT `tbl_beli_ibfk_1` FOREIGN KEY (`beli_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_beli_ibfk_2` FOREIGN KEY (`beli_suplier_id`) REFERENCES `tbl_suplier` (`suplier_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD CONSTRAINT `tbl_detail_beli_ibfk_1` FOREIGN KEY (`d_beli_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_beli_ibfk_2` FOREIGN KEY (`d_beli_kode`) REFERENCES `tbl_beli` (`beli_kode`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`d_jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_jual_ibfk_2` FOREIGN KEY (`d_jual_nofak`) REFERENCES `tbl_jual` (`jual_nofak`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD CONSTRAINT `tbl_jual_ibfk_1` FOREIGN KEY (`jual_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
