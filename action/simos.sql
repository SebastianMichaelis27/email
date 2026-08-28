/*
 Navicat Premium Dump SQL

 Source Server         : Lokal
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : simos

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 05/06/2026 14:17:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alokasi_pembayaran_utang_pembelian
-- ----------------------------
DROP TABLE IF EXISTS `alokasi_pembayaran_utang_pembelian`;
CREATE TABLE `alokasi_pembayaran_utang_pembelian` (
  `users_id` bigint(20) DEFAULT NULL,
  `pembelian_id` bigint(20) NOT NULL,
  `alokasi_pembayaran` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`pembelian_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of alokasi_pembayaran_utang_pembelian
-- ----------------------------
BEGIN;
INSERT INTO `alokasi_pembayaran_utang_pembelian` (`users_id`, `pembelian_id`, `alokasi_pembayaran`) VALUES (38, 1, 30000.00);
INSERT INTO `alokasi_pembayaran_utang_pembelian` (`users_id`, `pembelian_id`, `alokasi_pembayaran`) VALUES (38, 2, 1470000.00);
COMMIT;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jenis_barang_id` bigint(20) DEFAULT NULL,
  `kode_barang` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `merek_id` bigint(20) DEFAULT NULL,
  `tipe` varchar(255) DEFAULT NULL,
  `satuan_id` bigint(20) DEFAULT NULL,
  `harga_modal` decimal(20,2) DEFAULT NULL,
  `harga_jual` decimal(20,2) DEFAULT NULL,
  `stok` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=941 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of barang
-- ----------------------------
BEGIN;
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (1, 7, NULL, 'BATERAI', 10, 'A1K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (2, 17, NULL, 'EMMC', 10, 'A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (3, 65, NULL, 'PAPAN CAS', 21, 'Y19', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (4, 4, NULL, 'BACK COVER', 4, '11 G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (5, 52, NULL, 'LASER', 1, '11 G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (6, 65, NULL, 'PAPAN CAS', 3, 'NOTE 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (7, 37, NULL, 'FLEXIBLE CAS', 4, 'X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (8, 66, NULL, 'PERBAIKAN', 4, '11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (9, 53, NULL, 'LCD', 22, 'REDMI 8A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (10, 37, NULL, 'FLEXIBLE CAS', 4, 'XS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (11, 53, NULL, 'LCD', 10, 'F7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (12, 75, NULL, 'SERVICE IPHONE', 4, 'SERVICE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (13, 65, NULL, 'PAPAN CAS', 15, 'A25', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (14, 53, NULL, 'LCD', 4, '11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (15, 53, NULL, 'LCD', 21, 'Y27', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (16, 38, NULL, 'FLEXIBLE ON OFF', 10, 'A16', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (17, 80, NULL, 'TOMBOL LUAR', 22, 'REDMI 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (18, 38, NULL, 'FLEXIBLE ON OFF', 10, 'A74', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (19, 7, NULL, 'BATERAI', 14, '6i/C25Y', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (20, 70, NULL, 'PINDAH CIP', 4, '11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (21, 80, NULL, 'TOMBOL LUAR', 21, 'V21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (22, 7, NULL, 'BATERAI', 4, '11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (23, 53, NULL, 'LCD', 4, '6S PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (24, 53, NULL, 'LCD', 14, 'C30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (25, 53, NULL, 'LCD', 15, 'A03 CORE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (26, 4, NULL, 'BACK COVER', 21, 'V21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (27, 7, NULL, 'BATERAI', 15, 'A03 CORE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (28, 80, NULL, 'TOMBOL LUAR', 22, 'REDMI NOTE 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (29, 42, NULL, 'FRAME LCD', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (30, 53, NULL, 'LCD', 14, 'C25Y', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (31, 75, NULL, 'SERVICE IPHONE', 4, '?', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (32, 53, NULL, 'LCD', 15, 'A14', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (33, 53, NULL, 'LCD', 22, 'REDMI 13C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (34, 53, NULL, 'LCD', 3, 'HOT 50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (35, 53, NULL, 'LCD', 4, 'X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (36, 37, NULL, 'FLEXIBLE CAS', 4, '8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (37, 7, NULL, 'BATERAI', 21, 'Y30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (38, 40, NULL, 'FLEXIBLE VOLUME', 10, 'A74', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (39, 37, NULL, 'FLEXIBLE CAS', 10, 'F7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (40, 40, NULL, 'FLEXIBLE VOLUME', 10, 'F7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (41, 43, NULL, 'FRAME TENGAH', 14, '7i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (42, 4, NULL, 'BACK COVER', 14, '7i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (43, 7, NULL, 'BATERAI', 14, '7i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (44, 53, NULL, 'LCD', 15, 'M32', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (45, 7, NULL, 'BATERAI', 4, '11 G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (46, 53, NULL, 'LCD', 21, 'Y12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (47, 38, NULL, 'FLEXIBLE ON OFF', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (48, 53, NULL, 'LCD', 21, 'Y20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (49, 38, NULL, 'FLEXIBLE ON OFF', 3, 'HOT 10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (50, 7, NULL, 'BATERAI', 3, 'HOT 10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (51, 53, NULL, 'LCD', 22, 'POCO X3 GT', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (52, 80, NULL, 'TOMBOL LUAR', 22, 'POCO X3 GT', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (53, 42, NULL, 'FRAME LCD', 21, 'Y20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (54, 53, NULL, 'LCD', 22, 'POCO X6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (55, 42, NULL, 'FRAME LCD', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (56, 53, NULL, 'LCD', 10, 'A74', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (57, 53, NULL, 'LCD', 15, 'A6 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (58, 39, NULL, 'FLEXIBLE ON OFF VOL', 22, 'POCO X6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (59, 12, NULL, 'BUZZER', 22, 'REDMI NOTE 9 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (60, 7, NULL, 'BATERAI', 22, 'REDMI 9T', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (61, 53, NULL, 'LCD', 3, 'HOT 11 S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (62, 65, NULL, 'PAPAN CAS', 15, 'A13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (63, 5, NULL, 'BACK GLASS', 4, '15 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (64, 61, NULL, 'MAXIM', 12, 'PERTALITE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (65, 53, NULL, 'LCD', 21, 'Y33S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (66, 53, NULL, 'LCD', 10, 'A5S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (67, 53, NULL, 'LCD', 4, '11 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (68, 42, NULL, 'FRAME LCD', 15, 'A05', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (69, 65, NULL, 'PAPAN CAS', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (70, 53, NULL, 'LCD', 3, 'HOT 10 PLAY', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (71, 53, NULL, 'LCD', 15, 'A13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (72, 53, NULL, 'LCD', 15, 'A02', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (73, 53, NULL, 'LCD', 21, 'Y91', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (74, 53, NULL, 'LCD', 21, 'Y17S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (75, 53, NULL, 'LCD', 21, 'Y12S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (76, 53, NULL, 'LCD', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (77, 53, NULL, 'LCD', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (78, 53, NULL, 'LCD', 10, 'A3S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (79, 53, NULL, 'LCD', 10, 'A52020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (80, 53, NULL, 'LCD', 10, 'A3X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (81, 53, NULL, 'LCD', 10, 'A53/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (82, 53, NULL, 'LCD', 22, 'REDMI 9T', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (83, 7, NULL, 'BATERAI', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (84, 7, NULL, 'BATERAI', 10, 'A53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (85, 53, NULL, 'LCD', 14, '6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (86, 53, NULL, 'LCD', 15, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (87, 53, NULL, 'LCD', 22, 'REDMI NOTE 8 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (88, 53, NULL, 'LCD', 22, 'REDMI 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (89, 53, NULL, 'LCD', 15, 'A71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (90, 53, NULL, 'LCD', 10, 'A53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (91, 42, NULL, 'FRAME LCD', 21, 'Y91', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (92, 65, NULL, 'PAPAN CAS', 15, 'A02', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (93, 53, NULL, 'LCD', 21, 'V11 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (94, 53, NULL, 'LCD', 15, 'A22', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (95, 53, NULL, 'LCD', 14, 'C55', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (96, 65, NULL, 'PAPAN CAS', 15, 'A02S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (97, 12, NULL, 'BUZZER', 15, 'A02S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (98, 7, NULL, 'BATERAI', 10, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (99, 53, NULL, 'LCD', 4, '15 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (100, 42, NULL, 'FRAME LCD', 10, 'A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (101, 80, NULL, 'TOMBOL LUAR', 10, 'A5 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (102, 65, NULL, 'PAPAN CAS', 15, 'A51', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (103, 37, NULL, 'FLEXIBLE CAS', 15, 'M51', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (104, 80, NULL, 'TOMBOL LUAR', 10, 'A5S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (105, 53, NULL, 'LCD', 15, 'A04', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (106, 80, NULL, 'TOMBOL LUAR', 22, 'POCO M3 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (107, 53, NULL, 'LCD', 21, 'Y19S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (108, 12, NULL, 'BUZZER', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (109, 42, NULL, 'FRAME LCD', 22, 'REDMI 9A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (110, 7, NULL, 'BATERAI', 4, 'XS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (111, 74, NULL, 'SERVICE', 22, 'MI 12 LITE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (112, 53, NULL, 'LCD', 14, 'C63', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (113, 53, NULL, 'LCD', 10, 'RENO 3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (114, 53, NULL, 'LCD', 22, 'REDMO NOTE 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (115, 53, NULL, 'LCD', 21, 'Y03T', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (116, 42, NULL, 'FRAME LCD', 21, 'Y03T', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (117, 7, NULL, 'BATERAI', 22, 'POXO X3 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (118, 37, NULL, 'FLEXIBLE CAS', 22, 'POXO X3 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (119, 53, NULL, 'LCD', 15, 'A32', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (120, 4, NULL, 'BACK COVER', 22, 'REDMI NOTE 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (121, 76, NULL, 'SIM TRAY', 22, 'REDMI NOTE 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (122, 53, NULL, 'LCD', 21, 'Y02', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (123, 38, NULL, 'FLEXIBLE ON OFF', 21, 'Y91', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (124, 13, NULL, 'CC', 15, 'A02S/A11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (125, 65, NULL, 'PAPAN CAS', 22, 'POCO F3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (126, 37, NULL, 'FLEXIBLE CAS', 22, 'POCO F3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (127, 80, NULL, 'TOMBOL LUAR', 10, 'A95', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (128, 65, NULL, 'PAPAN CAS', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (129, 7, NULL, 'BATERAI', 4, '6S PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (130, 7, NULL, 'BATERAI', 10, 'A33', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (131, 53, NULL, 'LCD', 22, 'REDMI NOTE 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (132, 42, NULL, 'FRAME LCD', 15, 'A02', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (133, 80, NULL, 'TOMBOL LUAR', 15, 'A02', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (134, 7, NULL, 'BATERAI', 10, 'A39', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (135, 80, NULL, 'TOMBOL LUAR', 15, 'A20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (136, 53, NULL, 'LCD', 10, 'RENO 12F', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (137, 37, NULL, 'FLEXIBLE CAS', 10, 'RENO 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (138, 38, NULL, 'FLEXIBLE ON OFF', 22, 'REDMI NOTE 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (139, 80, NULL, 'TOMBOL LUAR', 22, 'REDMI NOTE 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (140, 53, NULL, 'LCD', 3, 'NOTE 40 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (141, 53, NULL, 'LCD', 15, 'A04S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (142, 7, NULL, 'BATERAI', 22, 'REDMI 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (143, 4, NULL, 'BACK COVER', 22, 'REDMI 6A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (144, 38, NULL, 'FLEXIBLE ON OFF', 22, 'REDMI 6A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (145, 39, NULL, 'FLEXIBLE ON OFF VOL', 22, 'REDMI 6A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (146, 77, NULL, 'TANG POTONG', 19, 'SPAREPART', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (147, 73, NULL, 'SERVER', 15, 'POLA', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (148, 7, NULL, 'BATERAI', 21, 'Y21A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (149, 53, NULL, 'LCD', 15, 'J7 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (150, 53, NULL, 'LCD', 14, 'C20/C11 2021', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (151, 53, NULL, 'LCD', 22, 'REDMI 9A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (152, 53, NULL, 'LCD', 10, 'A1K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (153, 53, NULL, 'LCD', 15, 'A02S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (154, 38, NULL, 'FLEXIBLE ON OFF', 10, 'A33', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (155, 40, NULL, 'FLEXIBLE VOLUME', 10, 'A33', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (156, 40, NULL, 'FLEXIBLE VOLUME', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (157, 80, NULL, 'TOMBOL LUAR', 14, 'C21Y', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (158, 80, NULL, 'TOMBOL LUAR', 10, 'A16', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (159, 80, NULL, 'TOMBOL LUAR', 14, '5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (160, 80, NULL, 'TOMBOL LUAR', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (161, 39, NULL, 'FLEXIBLE ON OFF VOL', 21, 'Y12S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (162, 39, NULL, 'FLEXIBLE ON OFF VOL', 21, 'Y15S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (163, 80, NULL, 'TOMBOL LUAR', 15, 'A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (164, 80, NULL, 'TOMBOL LUAR', 15, 'A20S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (165, 80, NULL, 'TOMBOL LUAR', 22, 'REDMI 9A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (166, 39, NULL, 'FLEXIBLE ON OFF VOL', 22, 'REDMI 8A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (167, 39, NULL, 'FLEXIBLE ON OFF VOL', 22, 'REDMI 9A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (168, 13, NULL, 'CC', 15, '22 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (169, 13, NULL, 'CC', 21, 'Y12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (170, 7, NULL, 'BATERAI', 10, 'A71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (171, 65, NULL, 'PAPAN CAS', 3, 'NOTE 40 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (172, 73, NULL, 'SERVER', 21, 'V27E', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (173, 13, NULL, 'CC', 7, 'A6000', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (174, 53, NULL, 'LCD', 21, 'Y71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (175, 53, NULL, 'LCD', 4, '7 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (176, 53, NULL, 'LCD', 21, 'Y03', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (177, 7, NULL, 'BATERAI', 4, '7 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (178, 53, NULL, 'LCD', 15, 'A10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (179, 53, NULL, 'LCD', 10, 'F11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (180, 39, NULL, 'FLEXIBLE ON OFF VOL', 15, 'A03S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (181, 42, NULL, 'FRAME LCD', 10, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (182, 7, NULL, 'BATERAI', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (183, 38, NULL, 'FLEXIBLE ON OFF', 14, '8i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (184, 7, NULL, 'BATERAI', 22, 'POCO X3 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (185, 65, NULL, 'PAPAN CAS', 22, 'REDMI NOTE 8 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (186, 37, NULL, 'FLEXIBLE CAS', 22, 'REDMI NOTE 8 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (187, 65, NULL, 'PAPAN CAS', 15, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (188, 80, NULL, 'TOMBOL LUAR', 15, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (189, 53, NULL, 'LCD', 22, 'REDMI 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (190, 7, NULL, 'BATERAI', 21, 'V20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (191, 65, NULL, 'PAPAN CAS', 10, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (192, 79, NULL, 'TINER', 8, 'TOOLS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (193, 7, NULL, 'BATERAI', 4, '7G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (194, 46, NULL, 'IC POWER', 22, 'REDMI NOTE 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (195, 42, NULL, 'FRAME LCD', 14, 'C53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (196, 53, NULL, 'LCD', 14, 'C53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (197, 7, NULL, 'BATERAI', 10, 'A74', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (198, 53, NULL, 'LCD', 3, 'SMART 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (199, 53, NULL, 'LCD', 14, '8i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (200, 53, NULL, 'LCD', 15, 'J5 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (201, 53, NULL, 'LCD', 3, 'HOT 30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (202, 4, NULL, 'BACK COVER', 15, 'A04', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (203, 7, NULL, 'BATERAI', 15, 'A04', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (204, 37, NULL, 'FLEXIBLE CAS', 10, 'F9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (205, 53, NULL, 'LCD', 15, 'TAB A7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (206, 53, NULL, 'LCD', 15, 'A36', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (207, 53, NULL, 'LCD', 21, 'V15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (208, 53, NULL, 'LCD', 21, 'V11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (209, 42, NULL, 'FRAME LCD', 10, 'A3X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (210, 53, NULL, 'LCD', 3, 'SMART 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (211, 7, NULL, 'BATERAI', 15, 'A34', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (212, 53, NULL, 'LCD', 15, 'A20S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (213, 4, NULL, 'BACK COVER', 14, 'C20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (214, 53, NULL, 'LCD', 4, '12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (215, 7, NULL, 'BATERAI', 4, '12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (216, 53, NULL, 'LCD', 3, 'SMART 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (217, 53, NULL, 'LCD', 22, 'REDMI NOTE 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (218, 65, NULL, 'PAPAN CAS', 18, 'SPARK 6 GO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (219, 37, NULL, 'FLEXIBLE CAS', 4, '11 G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (220, 53, NULL, 'LCD', 3, 'ZERO 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (221, 53, NULL, 'LCD', 3, 'NOTE 12i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (222, 4, NULL, 'BACK COVER', 15, 'A03', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (223, 28, NULL, 'FLEX ON OFF', 15, 'A03', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (224, 22, NULL, 'FLEX CAS', 13, 'X3 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (225, 22, NULL, 'FLEX CAS', 15, 'A03S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (226, 11, NULL, 'BEZZEL', 15, 'A04E', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (227, 53, NULL, 'LCD', 3, 'HOT 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (228, 53, NULL, 'LCD', 13, 'X3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (229, 22, NULL, 'FLEX CAS', 13, 'X3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (230, 53, NULL, 'LCD', 15, 'A8+', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (231, 53, NULL, 'LCD', 10, 'A58', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (232, 7, NULL, 'BATERAI', 22, 'REDMI 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (233, 30, NULL, 'FLEX ON OFF+VOL', 15, 'M20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (234, 50, NULL, 'KEYPAD ONOFF+VOL', 15, 'M20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (235, 53, NULL, 'LCD', 10, 'RENO 4F', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (236, 25, NULL, 'FLEX HOME FINGER PRINT', 22, 'REDMI 9T', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (237, 50, NULL, 'KEYPAD ONOFF+VOL', 3, 'H0T 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (238, 7, NULL, 'BATERAI', 10, 'RENO 4F', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (239, 53, NULL, 'LCD', 3, 'HOT 50PRO+', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (240, 53, NULL, 'LCD', 21, 'Y12/Y15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (241, 53, NULL, 'LCD', 10, 'A60', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (242, 53, NULL, 'LCD', 22, 'POCO C65', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (243, 53, NULL, 'LCD', 22, 'REDMI 10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (244, 53, NULL, 'LCD', 21, 'Y12I', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (245, 7, NULL, 'BATERAI', 22, 'REDMI NOTE 5 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (246, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'RENO 4F', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (247, 53, NULL, 'LCD', 3, 'SMART 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (248, 53, NULL, 'LCD', 21, 'Y20/Y21/Y22/Y33s', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (249, 53, NULL, 'LCD', 21, 'Y17/Y3/Y12/Y15/Y21/Y11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (250, 53, NULL, 'LCD', 21, 'Y30/Y30i/Y50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (251, 53, NULL, 'LCD', 21, 'Y03/Y03T/Y18/Y18i/Y18E', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (252, 53, NULL, 'LCD', 21, 'Y93/Y90/Y91C/Y93', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (253, 53, NULL, 'LCD', 10, 'C11/A16/153S 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (254, 53, NULL, 'LCD', 10, 'A57/C35', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (255, 53, NULL, 'LCD', 10, 'A3S/A5/REALME 2', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (256, 53, NULL, 'LCD', 10, 'A60/C65/A3/A3X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (257, 53, NULL, 'LCD', 10, 'A5S/A7/A12/EALME 3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (258, 53, NULL, 'LCD', 10, 'A53/A54/A32/A33', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (259, 53, NULL, 'LCD', 10, 'A11X/A5/A9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (260, 53, NULL, 'LCD', 22, 'REDMI 9/9T/NOTE 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (261, 53, NULL, 'LCD', 22, 'REDMI 9A/9C/POCO C3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (262, 53, NULL, 'LCD', 15, 'A05', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (263, 53, NULL, 'LCD', 15, 'A04E', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (264, 7, NULL, 'BATERAI', 10, 'A33/A53/A73', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (265, 13, NULL, 'CC', 7, 'A6000/A7000', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (266, 13, NULL, 'CC', 9, 'N220/N216', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (267, 13, NULL, 'CC', 10, 'A1K/REALME 3/C11/C12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (268, 13, NULL, 'CC', 22, 'REDMI 9A/9C/POCO C3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (269, 13, NULL, 'CC', 22, 'REDMI 8/8A/NOTE 7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (270, 53, NULL, 'LCD', 10, 'C63/C61/NOTE60', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (271, 20, NULL, 'FLEX', 10, 'F9/REALME 2 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (272, 53, NULL, 'LCD', 22, 'REDMI A1/A2/POCO C50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (273, 41, NULL, 'FRAME', 21, 'Y21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (274, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'F5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (275, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'A53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (276, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'F7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (277, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'A12/A5S/A7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (278, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (279, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'A5 20/AA9 20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (280, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'RENO 5F', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (281, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'A74', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (282, 50, NULL, 'KEYPAD ONOFF+VOL', 11, '5I', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (283, 50, NULL, 'KEYPAD ONOFF+VOL', 11, '7I', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (284, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'A93/F17 PRO/RENO 4F', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (285, 31, NULL, 'FLEX ON/OFF', 10, 'A5S/A11K/A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (286, 31, NULL, 'FLEX ON/OFF', 10, 'A7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (287, 31, NULL, 'FLEX ON/OFF', 10, 'F9/REALME 2 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (288, 31, NULL, 'FLEX ON/OFF', 10, 'A31 20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (289, 31, NULL, 'FLEX ON/OFF', 10, 'A11 X/A5 20/A9 20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (290, 31, NULL, 'FLEX ON/OFF', 10, 'RENO 5 4G/RENO 6 4G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (291, 33, NULL, 'FLEX ON/OFF+VOL', 10, '7I', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (292, 35, NULL, 'FLEX VOL', 10, 'RENO4', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (293, 35, NULL, 'FLEX VOL', 10, 'A36/A76/REALME 9I', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (294, 35, NULL, 'FLEX VOL', 10, 'F9/REALME 2 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (295, 35, NULL, 'FLEX VOL', 10, 'REALME 5PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (296, 35, NULL, 'FLEX VOL', 10, 'A31 20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (297, 35, NULL, 'FLEX VOL', 10, 'RENO 5/RENO 6 4G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (298, 33, NULL, 'FLEX ON/OFF+VOL', 21, 'Y93/Y90/Y91C/Y93', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (299, 33, NULL, 'FLEX ON/OFF+VOL', 21, 'Y11/Y12/Y15/Y17', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (300, 50, NULL, 'KEYPAD ONOFF+VOL', 22, 'REDMI NOTE 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (301, 50, NULL, 'KEYPAD ONOFF+VOL', 22, 'REDMI NOTE 8 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (302, 50, NULL, 'KEYPAD ONOFF+VOL', 22, 'REDMI 9A/9C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (303, 31, NULL, 'FLEX ON/OFF', 15, 'A10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (304, 33, NULL, 'FLEX ON/OFF+VOL', 15, 'A10/M10/M20/M30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (305, 33, NULL, 'FLEX ON/OFF+VOL', 15, 'A21S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (306, 33, NULL, 'FLEX ON/OFF+VOL', 15, 'A04E', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (307, 35, NULL, 'FLEX VOL', 15, 'A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (308, 50, NULL, 'KEYPAD ONOFF+VOL', 3, 'HOT 9 PLAY', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (309, 50, NULL, 'KEYPAD ONOFF+VOL', 3, 'SMART 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (310, 50, NULL, 'KEYPAD ONOFF+VOL', 3, 'SMART 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (311, 56, NULL, 'LCD+TS+FRAME', 15, 'A32', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (312, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'F11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (313, 53, NULL, 'LCD', 4, '13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (314, 7, NULL, 'BATERAI', 10, 'F1S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (315, 53, NULL, 'LCD', 14, 'C35', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (316, 60, NULL, 'MATA PISAU', NULL, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (317, 31, NULL, 'FLEX ON/OFF', 10, 'REALME C35', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (318, 53, NULL, 'LCD', 10, 'F9/REALME 2 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (319, 53, NULL, 'LCD', 10, 'REALME C53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (320, 11, NULL, 'BEZZEL', 14, 'NOTE50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (321, 20, NULL, 'FLEX', 21, 'Y12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (322, 67, NULL, 'PERNIK', 15, 'A53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (323, 53, NULL, 'LCD', 22, 'REDMI 14C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (324, 53, NULL, 'LCD', 3, 'SMART 8PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (325, 53, NULL, 'LCD', 14, 'NOTE 60X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (326, 53, NULL, 'LCD', 15, 'A01', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (327, 65, NULL, 'PAPAN CAS', 10, 'A37', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (328, 28, NULL, 'FLEX ON OFF', 10, 'A37', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (329, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'A37', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (330, 76, NULL, 'SIM TRAY', 15, 'A33/A53/A73', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (331, 15, NULL, 'DOUBLE TIP LCD', NULL, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (332, 4, NULL, 'BACK COVER', 3, 'SMART 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (333, 7, NULL, 'BATERAI', 3, 'SMART 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (334, 53, NULL, 'LCD', 15, 'A23', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (335, 45, NULL, 'HOUSING', 4, 'XSMAX', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (336, 37, NULL, 'FLEXIBLE CAS', 10, 'A59', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (337, 39, NULL, 'FLEXIBLE ON OFF VOL', 15, 'A31/A51', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (338, 80, NULL, 'TOMBOL LUAR', 15, 'A31/A51', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (339, 80, NULL, 'TOMBOL LUAR', 15, 'A21S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (340, 37, NULL, 'FLEXIBLE CAS', 10, 'A91/RENO 3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (341, 42, NULL, 'FRAME LCD', 15, 'A22', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (342, 53, NULL, 'LCD', 4, 'XS MAX', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (343, 53, NULL, 'LCD', 22, 'REDMI NOTE 4', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (344, 13, NULL, 'CC', 3, 'HOT 10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (345, 12, NULL, 'BUZZER', 3, 'HOT 10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (346, 50, NULL, 'KEYPAD ONOFF+VOL', 3, 'HOT 10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (347, 28, NULL, 'FLEX ON OFF', 10, 'A3S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (348, 50, NULL, 'KEYPAD ONOFF+VOL', 10, 'A3S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (349, 28, NULL, 'FLEX ON OFF', 3, 'HOT 10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (350, 34, NULL, 'FLEX ONOFF+VOL', 3, 'HOT 10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (351, 34, NULL, 'FLEX ONOFF+VOL', 3, 'ZERO X NEO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (352, 13, NULL, 'CC', 10, 'A77S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (353, 30, NULL, 'FLEX ON OFF+VOL', 22, 'REDMI NOTE 11 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (354, 53, NULL, 'LCD', 3, 'HOT 50 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (355, 67, NULL, 'PERNIK', 22, 'REDMI NOTE 11 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (356, 7, NULL, 'BATERAI', 21, 'Y12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (357, 7, NULL, 'BATERAI', 22, 'REDMI NOTE 4X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (358, 53, NULL, 'LCD', 10, 'A83', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (359, 51, NULL, 'KEYPAD VOLUME', 10, 'A16', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (360, 53, NULL, 'LCD', 15, 'A31 20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (361, 20, NULL, 'FLEX', 15, 'A20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (362, 53, NULL, 'LCD', 21, 'A71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (363, 34, NULL, 'FLEX ONOFF+VOL', 4, '13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (364, 53, NULL, 'LCD', 15, 'A7 2018', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (365, 53, NULL, 'LCD', 22, 'REDMI 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (366, 7, NULL, 'BATERAI', 15, 'A20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (367, 53, NULL, 'LCD', 10, 'REALME 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (368, 73, NULL, 'SERVER', 10, 'A16', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (369, 14, NULL, 'CONECTOR LCD', 15, 'A51/A31/A30S/A40', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (370, 22, NULL, 'FLEX CAS', 15, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (371, 65, NULL, 'PAPAN CAS', 3, 'SMART 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (372, 35, NULL, 'FLEX VOL', 10, 'A5S/A11K/A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (373, 51, NULL, 'KEYPAD VOLUME', 22, 'POCO X3/X3 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (374, 49, NULL, 'KEYPAD ON/OFF/VOL', 22, 'REDMI 8/8A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (375, 49, NULL, 'KEYPAD ON/OFF/VOL', 10, 'A1K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (376, 32, NULL, 'FLEX ON/OFF/VOL', 10, 'A15/A16K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (377, 31, NULL, 'FLEX ON/OFF', 10, 'A16/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (378, 32, NULL, 'FLEX ON/OFF/VOL', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (379, 53, NULL, 'LCD', 21, 'V19', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (380, 7, NULL, 'BATERAI', 10, 'A1K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (381, 4, NULL, 'BACK COVER', 10, 'A1K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (382, 53, NULL, 'LCD', 10, 'A98', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (383, 7, NULL, 'BATERAI', 22, 'REDMI NOTE 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (384, 65, NULL, 'PAPAN CAS', 22, 'REDMI NOTE 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (385, 11, NULL, 'BEZZEL', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (386, 7, NULL, 'BATERAI', 14, 'C33', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (387, 53, NULL, 'LCD', 14, 'C33', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (388, 7, NULL, 'BATERAI', 14, 'C15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (389, 55, NULL, 'LCD ORIGINAL', 21, 'V40  LITE 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (390, 41, NULL, 'FRAME', 21, 'Y91C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (391, 65, NULL, 'PAPAN CAS', 21, 'Y91C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (392, 21, NULL, 'FLEX BOARD', 21, 'Y91C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (393, 4, NULL, 'BACK COVER', 4, '12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (394, 35, NULL, 'FLEX VOL', 10, 'A16/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (395, 7, NULL, 'BATERAI', 22, 'REDMI NOTE 9 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (396, 4, NULL, 'BACK COVER', 22, 'REDMI NOTE 9 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (397, 53, NULL, 'LCD', 3, 'SMART 7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (398, 4, NULL, 'BACK COVER', 22, 'REDMI 9A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (399, 53, NULL, 'LCD', 22, 'POCO M5S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (400, 7, NULL, 'BATERAI', 10, 'A9 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (401, 11, NULL, 'BEZZEL', 10, 'A9 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (402, 53, NULL, 'LCD', 3, 'HOT 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (403, 73, NULL, 'SERVER', 15, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (404, 20, NULL, 'FLEX', 15, 'A50S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (405, 53, NULL, 'LCD', 14, 'NOTE 60', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (406, 20, NULL, 'FLEX', 4, '7+', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (407, 44, NULL, 'HOUSHING', 4, '13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (408, 4, NULL, 'BACK COVER', 10, 'REALME 5I', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (409, 11, NULL, 'BEZZEL', 10, 'REALME 5I', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (410, 53, NULL, 'LCD', 4, '13 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (411, 53, NULL, 'LCD', 4, 'XS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (412, 34, NULL, 'FLEX ONOFF+VOL', 4, '12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (413, 48, NULL, 'KEYPAD', 22, 'REDMI 5 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (414, 53, NULL, 'LCD', 21, 'V7 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (415, 53, NULL, 'LCD', 22, 'REDMI A1', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (416, 7, NULL, 'BATERAI', 4, '7+', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (417, 49, NULL, 'KEYPAD ON/OFF/VOL', 10, 'A3S 1803', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (418, 49, NULL, 'KEYPAD ON/OFF/VOL', 10, 'A12/A5S/A7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (419, 49, NULL, 'KEYPAD ON/OFF/VOL', 10, 'RENO 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (420, 49, NULL, 'KEYPAD ON/OFF/VOL', 10, 'A3S 1853', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (421, 49, NULL, 'KEYPAD ON/OFF/VOL', 21, 'Y11/Y12/Y15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (422, 49, NULL, 'KEYPAD ON/OFF/VOL', 21, 'Y91/Y91C/Y93', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (423, 49, NULL, 'KEYPAD ON/OFF/VOL', 15, 'A20/A30/A40/A50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (424, 49, NULL, 'KEYPAD ON/OFF/VOL', 15, 'A02/6A022/A32', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (425, 31, NULL, 'FLEX ON/OFF', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (426, 33, NULL, 'FLEX ON/OFF+VOL', 21, 'Y12S/Y20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (427, 33, NULL, 'FLEX ON/OFF+VOL', 21, 'Y11/Y12/Y15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (428, 33, NULL, 'FLEX ON/OFF+VOL', 22, 'REDMI NOTE 7/NOTE 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (429, 53, NULL, 'LCD', 23, 'BLADE A53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (430, 53, NULL, 'LCD', 21, 'V7+', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (431, 48, NULL, 'KEYPAD', 10, 'A12/A5S/A7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (432, 48, NULL, 'KEYPAD', 10, 'RENO 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (433, 7, NULL, 'BATERAI', 15, 'A01', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (434, 53, NULL, 'LCD', 10, 'A95', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (435, 4, NULL, 'BACK COVER', 10, 'A95', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (436, 7, NULL, 'BATERAI', 23, 'BLADE A53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (437, 53, NULL, 'LCD', 3, 'NOTE 40', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (438, 53, NULL, 'LCD', 21, 'V9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (439, 48, NULL, 'KEYPAD', 10, 'A53 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (440, 31, NULL, 'FLEX ON/OFF', 14, 'GT MASTER', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (441, 35, NULL, 'FLEX VOL', 14, 'GT MASTER', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (442, 48, NULL, 'KEYPAD', 10, 'A74', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (443, 53, NULL, 'LCD', 15, 'A05S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (444, 53, NULL, 'LCD', 4, '8+', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (445, 7, NULL, 'BATERAI', 3, 'HOT 11S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (446, 53, NULL, 'LCD', 15, 'J6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (447, 48, NULL, 'KEYPAD', 10, 'A16/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (448, 11, NULL, 'BEZZEL', 10, 'A5 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (449, 7, NULL, 'BATERAI', 10, 'F7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (450, 6, NULL, 'BALIK UANG LCD', 23, 'BLADE A53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (451, 4, NULL, 'BACK COVER', 15, 'A03 CORE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (452, 21, NULL, 'FLEX BOARD', 15, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (453, 53, NULL, 'LCD', 4, 'XR', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (454, 7, NULL, 'BATERAI', 14, 'C31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (455, 7, NULL, 'BATERAI', 22, 'REDMI NOTE 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (456, 11, NULL, 'BEZZEL', 10, 'A17', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (457, 53, NULL, 'LCD', 3, 'HOT 10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (458, 7, NULL, 'BATERAI', 4, '12 PROMAX', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (459, 28, NULL, 'FLEX ON OFF', 10, 'A5S/A11K/A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (460, 53, NULL, 'LCD', 22, 'REDMI 8/8A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (461, 4, NULL, 'BACK COVER', 22, 'REDMI 8A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (462, 76, NULL, 'SIM TRAY', 22, 'REDMI 8A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (463, 53, NULL, 'LCD', 3, 'HOT 10P', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (464, 53, NULL, 'LCD', 10, 'A12/A5S/A7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (465, 7, NULL, 'BATERAI', 10, 'A5S/A11K/A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (466, 7, NULL, 'BATERAI', 4, 'XR', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (467, 7, NULL, 'BATERAI', 10, 'A3S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (468, 73, NULL, 'SERVER', 10, 'A5X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (469, 53, NULL, 'LCD', 15, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (470, 53, NULL, 'LCD', 3, 'HOT 9P', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (471, 53, NULL, 'LCD', 21, 'Y93/Y91/Y91C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (472, 53, NULL, 'LCD', 21, 'Y17/Y12/Y15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (473, 53, NULL, 'LCD', 10, 'A15/A16K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (474, 53, NULL, 'LCD', 10, 'A5 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (475, 53, NULL, 'LCD', 10, 'A60/A3X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (476, 53, NULL, 'LCD', 10, 'A33/A53/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (477, 53, NULL, 'LCD', 10, 'A5S/A12/A11K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (478, 53, NULL, 'LCD', 10, 'A92/A52', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (479, 7, NULL, 'BATERAI', 10, 'A33/A53/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (480, 7, NULL, 'BATERAI', 10, 'A31/A3S/A5S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (481, 7, NULL, 'BATERAI', 22, 'REDMI 10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (482, 28, NULL, 'FLEX ON OFF', 22, 'REDMI NOTE 12/POCO X6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (483, 7, NULL, 'BATERAI', 21, 'Y20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (484, 28, NULL, 'FLEX ON OFF', 21, 'Y19', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (485, 53, NULL, 'LCD', 21, 'Y01/Y02', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (486, 53, NULL, 'LCD', 21, 'Y20/Y21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (487, 65, NULL, 'PAPAN CAS', 14, '1', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (488, 81, NULL, 'TOOLS MATA SORDER', NULL, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (489, 65, NULL, 'PAPAN CAS', 15, 'A06', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (490, 7, NULL, 'BATERAI', 21, 'Y83', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (491, 53, NULL, 'LCD', 14, '5 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (492, 53, NULL, 'LCD', 22, 'REDMI NOTE 11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (493, 9, NULL, 'BAYAR SERVER', 3, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (494, 53, NULL, 'LCD', 22, 'REDMI NOTE 50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (495, 7, NULL, 'BATERAI', 22, 'REDMI NOTE 50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (496, 4, NULL, 'BACK COVER', 22, 'REDMI 13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (497, 7, NULL, 'BATERAI', 10, 'A77S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (498, 4, NULL, 'BACK COVER', 15, 'A30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (499, 11, NULL, 'BEZZEL', 22, 'REDMI 13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (500, 28, NULL, 'FLEX ON OFF', 10, 'A1K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (501, 67, NULL, 'PERNIK', 10, 'A1K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (502, 19, NULL, 'FINGER', 10, 'A16/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (503, 4, NULL, 'BACK COVER', 10, 'A16/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (504, 11, NULL, 'BEZZEL', 10, 'A16/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (505, 67, NULL, 'PERNIK', 22, 'REDMI 7A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (506, 53, NULL, 'LCD', 22, 'REDMI 7A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (507, 53, NULL, 'LCD', 22, 'REDMI NOTE 60', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (508, 53, NULL, 'LCD', 10, 'A71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (509, 4, NULL, 'BACK COVER', 14, 'C21 Y', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (510, 53, NULL, 'LCD', 22, 'REDMI NOTE 9 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (511, 4, NULL, 'BACK COVER', 10, 'A71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (512, 18, NULL, 'FELX CAS', 10, 'A71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (513, 53, NULL, 'LCD', 21, 'Y100', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (514, 53, NULL, 'LCD', 4, '7G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (515, 72, NULL, 'SALASIBAN ANTI PANAS', NULL, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (516, 53, NULL, 'LCD', 14, 'NOTE 50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (517, 7, NULL, 'BATERAI', 10, 'A5S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (518, 73, NULL, 'SERVER', 15, 'A12S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (519, 57, NULL, 'LEM LCD', NULL, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (520, 53, NULL, 'LCD', 14, 'C21Y', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (521, 53, NULL, 'LCD', 15, 'A16/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (522, 53, NULL, 'LCD', 21, 'Y18', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (523, 7, NULL, 'BATERAI', 10, 'F5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (524, 16, NULL, 'EAR SPEAKER', 4, '13 PROMAX', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (525, 7, NULL, 'BATERAI', 3, 'NOTE 40', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (526, 11, NULL, 'BEZZEL', 14, 'NOTE 50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (527, 7, NULL, 'BATERAI', 22, 'REDMI 4X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (528, 53, NULL, 'LCD', 22, 'POCO X3 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (529, 53, NULL, 'LCD', 3, 'HOT 11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (530, 53, NULL, 'LCD', 21, '718', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (531, 53, NULL, 'LCD', 10, 'A94', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (532, 11, NULL, 'BEZZEL', 10, 'RENO 7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (533, 35, NULL, 'FLEX VOL', 10, 'RENO 7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (534, 53, NULL, 'LCD', 3, 'NOTE 7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (535, 53, NULL, 'LCD', 21, 'V5/Y67', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (536, 28, NULL, 'FLEX ON OFF', 21, 'Y69/V5/', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (537, 67, NULL, 'PERNIK', 21, 'V5/Y67', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (538, 7, NULL, 'BATERAI', 22, 'REDMI 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (539, 7, NULL, 'BATERAI', 14, '8 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (540, 14, NULL, 'CONECTOR LCD', 15, 'A02', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (541, 28, NULL, 'FLEX ON OFF', 3, 'HOT 9 P', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (542, 67, NULL, 'PERNIK', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (543, 67, NULL, 'PERNIK', 14, 'C11 20/C12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (544, 67, NULL, 'PERNIK', 10, 'A5 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (545, 67, NULL, 'PERNIK', 3, 'HOT 9 P', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (546, 67, NULL, 'PERNIK', 15, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (547, 28, NULL, 'FLEX ON OFF', 10, 'A16/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (548, 67, NULL, 'PERNIK', 10, 'A32', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (549, 28, NULL, 'FLEX ON OFF', 10, 'A32', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (550, 73, NULL, 'SERVER', 22, 'REDMI 14 T', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (551, 10, NULL, 'BELANJA', 6, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (552, 53, NULL, 'LCD', 14, 'C20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (553, 53, NULL, 'LCD', 10, 'F9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (554, 53, NULL, 'LCD', 14, 'C51', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (555, 41, NULL, 'FRAME', 21, 'Y81', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (556, 7, NULL, 'BATERAI', 10, 'A83', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (557, 28, NULL, 'FLEX ON OFF', 10, 'A38', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (558, 67, NULL, 'PERNIK', 10, 'A38', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (559, 67, NULL, 'PERNIK', 22, 'REDMI 5 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (560, 53, NULL, 'LCD', 15, 'M20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (561, 53, NULL, 'LCD', 21, 'Y81', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (562, 11, NULL, 'BEZZEL', 14, 'C20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (563, 4, NULL, 'BACK COVER', 14, 'C21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (564, 53, NULL, 'LCD', 10, 'NEO 9/A37', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (565, 28, NULL, 'FLEX ON OFF', 21, 'Y91', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (566, 7, NULL, 'BATERAI', 10, 'A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (567, 53, NULL, 'LCD', 21, 'Y50', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (568, 2, NULL, 'ANTI GORES', 22, 'REDMI 5 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (569, 53, NULL, 'LCD', 21, 'Y30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (570, 20, NULL, 'FLEX', 15, 'A34/A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (571, 53, NULL, 'LCD', 15, 'A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (572, 8, NULL, 'BAYAR KEKURANGAN', 5, 'VIVO Y30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (573, 53, NULL, 'LCD', 15, 'A30/A50/', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (574, 53, NULL, 'LCD', 15, 'A6+', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (575, 7, NULL, 'BATERAI', 15, 'A6+', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (576, 11, NULL, 'BEZZEL', 21, 'Y91/Y93', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (577, 4, NULL, 'BACK COVER', 3, 'HOT 9 PLAY', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (578, 7, NULL, 'BATERAI', 10, 'A3S/A5S/A7/A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (579, 7, NULL, 'BATERAI', 15, 'A24', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (580, 67, NULL, 'PERNIK', 10, 'A3S 1803', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (581, 67, NULL, 'PERNIK', 10, 'A3S 1853', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (582, 67, NULL, 'PERNIK', 10, 'A95', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (583, 67, NULL, 'PERNIK', 10, 'A77S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (584, 67, NULL, 'PERNIK', 10, 'A37', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (585, 67, NULL, 'PERNIK', 10, 'A53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (586, 67, NULL, 'PERNIK', 10, 'A16', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (587, 67, NULL, 'PERNIK', 10, 'A12/A5S/A7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (588, 67, NULL, 'PERNIK', 10, 'A5 20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (589, 67, NULL, 'PERNIK', 10, 'RENO 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (590, 67, NULL, 'PERNIK', 14, 'C20/C21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (591, 67, NULL, 'PERNIK', 14, 'C11/C12/C15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (592, 67, NULL, 'PERNIK', 14, 'C21Y', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (593, 28, NULL, 'FLEX ON OFF', 10, 'A33', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (594, 28, NULL, 'FLEX ON OFF', 10, 'A16', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (595, 28, NULL, 'FLEX ON OFF', 14, '5I', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (596, 28, NULL, 'FLEX ON OFF', 10, 'A74', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (597, 28, NULL, 'FLEX ON OFF', 10, 'A71 2017', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (598, 28, NULL, 'FLEX ON OFF', 10, 'A3S (1803)', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (599, 28, NULL, 'FLEX ON OFF', 14, 'C1/A3S (1853)', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (600, 28, NULL, 'FLEX ON OFF', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (601, 28, NULL, 'FLEX ON OFF', 14, 'C11/C12/C15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (602, 36, NULL, 'FLEX VOLUME', 10, 'A1K', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (603, 36, NULL, 'FLEX VOLUME', 10, 'A16', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (604, 36, NULL, 'FLEX VOLUME', 10, 'A74', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (605, 36, NULL, 'FLEX VOLUME', 10, 'A71 2018', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (606, 36, NULL, 'FLEX VOLUME', 10, 'A3S 1803', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (607, 36, NULL, 'FLEX VOLUME', 10, 'A3S 1853', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (608, 36, NULL, 'FLEX VOLUME', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (609, 36, NULL, 'FLEX VOLUME', 10, 'RENO 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (610, 67, NULL, 'PERNIK', 21, 'Y30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (611, 28, NULL, 'FLEX ON OFF', 21, 'Y91/Y93', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (612, 28, NULL, 'FLEX ON OFF', 21, 'Y30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (613, 28, NULL, 'FLEX ON OFF', 21, 'Y11/Y12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (614, 28, NULL, 'FLEX ON OFF', 22, 'REDMI NOTE 7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (615, 28, NULL, 'FLEX ON OFF', 22, 'REDMI 9A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (616, 67, NULL, 'PERNIK', 15, 'A21S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (617, 67, NULL, 'PERNIK', 15, 'A11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (618, 67, NULL, 'PERNIK', 15, 'A10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (619, 67, NULL, 'PERNIK', 15, 'A10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (620, 67, NULL, 'PERNIK', 15, 'A20S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (621, 67, NULL, 'PERNIK', 15, 'A02S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (622, 53, NULL, 'LCD', 21, 'V91/Y93', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (623, 53, NULL, 'LCD', 21, 'Y17', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (624, 53, NULL, 'LCD', 10, 'A5 20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (625, 53, NULL, 'LCD', 10, 'C20/C21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (626, 53, NULL, 'LCD', 10, 'A92', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (627, 53, NULL, 'LCD', 22, 'REDMI 9/POCO M2', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (628, 53, NULL, 'LCD', 22, 'REDMI A1/A2', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (629, 53, NULL, 'LCD', 3, 'HOT 10 P', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (630, 7, NULL, 'BATERAI', 21, 'Y20/Y21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (631, 7, NULL, 'BATERAI', 14, 'C11/C12/C15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (632, 13, NULL, 'CC', 21, 'V5/V11/Y12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (633, 13, NULL, 'CC', 15, 'A11/A02S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (634, 13, NULL, 'CC', 15, 'A20S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (635, 53, NULL, 'LCD', 21, 'Y20/Y21 (XJE)', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (636, 28, NULL, 'FLEX ON OFF', 10, 'A5 20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (637, 53, NULL, 'LCD', 21, 'S1 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (638, 71, NULL, 'REPAIR EMMC', 15, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (639, 7, NULL, 'BATERAI', 10, 'A92/A52', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (640, 65, NULL, 'PAPAN CAS', 22, 'POCO M4 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (641, 7, NULL, 'BATERAI', 10, 'REALME 2 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (642, 53, NULL, 'LCD', 10, 'REALME 2 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (643, 67, NULL, 'PERNIK', 22, 'REDMI NOTE 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (644, 7, NULL, 'BATERAI', 22, 'POCO X3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (645, 67, NULL, 'PERNIK', 10, 'F9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (646, 73, NULL, 'SERVER', 10, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (647, 11, NULL, 'BEZZEL', 10, 'RENO 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (648, 23, NULL, 'FLEX CC', 10, 'RENO 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (649, 4, NULL, 'BACK COVER', 10, 'RENO 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (650, 67, NULL, 'PERNIK', 3, 'HOT 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (651, 28, NULL, 'FLEX ON OFF', 3, 'HOT 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (652, 11, NULL, 'BEZZEL', 21, 'Y15S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (653, 65, NULL, 'PAPAN CAS', 22, 'REDMI NOTE 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (654, 73, NULL, 'SERVER', 15, 'A21S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (655, 11, NULL, 'BEZZEL', 10, 'A60', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (656, 17, NULL, 'EMMC', 15, 'A04', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (657, 73, NULL, 'SERVER', 10, 'A6X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (658, 53, NULL, 'LCD', 21, 'Y53S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (659, 7, NULL, 'BATERAI', 15, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (660, 4, NULL, 'BACK COVER', 21, 'Y91C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (661, 22, NULL, 'FLEX CAS', 4, '13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (662, 28, NULL, 'FLEX ON OFF', 14, 'C21Y/C25Y', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (663, 53, NULL, 'LCD', 10, 'F11 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (664, 7, NULL, 'BATERAI', 10, 'F11 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (665, 53, NULL, 'LCD', 10, 'A37', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (666, 19, NULL, 'FINGER', 13, 'M6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (667, 11, NULL, 'BEZZEL', 15, 'A05S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (668, 53, NULL, 'LCD', 10, 'A78', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (669, 22, NULL, 'FLEX CAS', 10, 'A37', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (670, 46, NULL, 'IC POWER', 10, 'A79', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (671, 11, NULL, 'BEZZEL', 10, 'A78', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (672, 11, NULL, 'BEZZEL', 21, 'V15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (673, 53, NULL, 'LCD', 10, 'FIND X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (674, 28, NULL, 'FLEX ON OFF', 22, 'REDMI 13/POCO M6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (675, 67, NULL, 'PERNIK', 21, 'V7+', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (676, 78, NULL, 'THINER', NULL, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (677, 73, NULL, 'SERVER', 10, 'A58', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (678, 53, NULL, 'LCD', 22, 'REDMI 13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (679, 7, NULL, 'BATERAI', 21, 'Y21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (680, 7, NULL, 'BATERAI', 22, 'REDMI 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (681, 65, NULL, 'PAPAN CAS', 21, 'V15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (682, 53, NULL, 'LCD', 3, 'NOTE 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (683, 53, NULL, 'LCD', 21, 'V20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (684, 53, NULL, 'LCD', 15, 'A24', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (685, 7, NULL, 'BATERAI', 15, 'S21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (686, 53, NULL, 'LCD', 15, 'A20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (687, 53, NULL, 'LCD', 3, 'X6812B', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (688, 7, NULL, 'BATERAI', 15, 'A71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (689, 7, NULL, 'BATERAI', 22, 'REDMI NOTE 5A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (690, 67, NULL, 'PERNIK', 22, 'REDMI NOTE 5A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (691, 28, NULL, 'FLEX ON OFF', 3, 'SMART 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (692, 76, NULL, 'SIM TRAY', 3, 'SMART 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (693, 7, NULL, 'BATERAI', 3, 'X656', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (694, 53, NULL, 'LCD', 21, 'Y28', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (695, 53, NULL, 'LCD', 15, 'A10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (696, 53, NULL, 'LCD', 21, 'Y22', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (697, 53, NULL, 'LCD', 10, 'A15/A16', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (698, 7, NULL, 'BATERAI', 15, 'A03S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (699, 53, NULL, 'LCD', 14, '5PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (700, 53, NULL, 'LCD', 14, '8I/OPPO A96', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (701, 7, NULL, 'BATERAI', 14, '8I/OPPO A97', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (702, 53, NULL, 'LCD', 21, 'Y19', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (703, 11, NULL, 'BEZZEL', 10, 'A3X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (704, 53, NULL, 'LCD', 21, 'REDMI 9A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (705, 28, NULL, 'FLEX ON OFF', 3, 'HOT 10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (706, 53, NULL, 'LCD', 10, 'A17', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (707, 53, NULL, 'LCD', 14, 'C11/A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (708, 53, NULL, 'LCD', 21, 'Y12/Y17', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (709, 7, NULL, 'BATERAI', 4, '12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (710, 7, NULL, 'BATERAI', 15, 'A03/A14/A04E', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (711, 11, NULL, 'BEZZEL', 3, 'HOT 11 PLAY', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (712, 58, NULL, 'LEM T9000', NULL, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (713, 7, NULL, 'BATERAI', 4, '13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (714, 53, NULL, 'LCD', 2, 'HONOR 8X', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (715, 53, NULL, 'LCD', 15, 'NOTE 20 ULTRA', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (716, 53, NULL, 'LCD', 10, 'RENO 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (717, 67, NULL, 'PERNIK', 10, 'RENO 8T', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (718, 4, NULL, 'BACK COVER', 15, 'M20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (719, 7, NULL, 'BATERAI', 22, 'REDMI 5A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (720, 65, NULL, 'PAPAN CAS', 21, 'V5S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (721, 22, NULL, 'FLEX CAS', 10, 'F7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (722, 22, NULL, 'FLEX CAS', 22, 'REDMI 5A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (723, 53, NULL, 'LCD', 22, 'REDMI NOTE 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (724, 53, NULL, 'LCD', 22, 'MI 11 LITE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (725, 24, NULL, 'FLEX CONNECT', 22, 'MI 11 LITE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (726, 65, NULL, 'PAPAN CAS', 15, 'A05S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (727, 22, NULL, 'FLEX CAS', 10, 'A71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (728, 54, NULL, 'LCD OLED', 4, '13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (729, 53, NULL, 'LCD', 14, '8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (730, 53, NULL, 'LCD', 22, 'REDMI NOTE 10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (731, 53, NULL, 'LCD', 21, 'ZI PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (732, 65, NULL, 'PAPAN CAS', 15, 'A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (733, 67, NULL, 'PERNIK', 15, 'S21 ULTRA', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (734, 62, NULL, 'MESIN', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (735, 53, NULL, 'LCD', 15, 'A11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (736, 4, NULL, 'BACK COVER', 15, 'A11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (737, 65, NULL, 'PAPAN CAS', 15, 'A04E', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (738, 41, NULL, 'FRAME', 10, 'A96', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (739, 63, NULL, 'MIDDLE FRAME', 14, '6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (740, 4, NULL, 'BACK COVER', 14, '6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (741, 7, NULL, 'BATERAI', 14, '5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (742, 41, NULL, 'FRAME', 14, 'C53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (743, 53, NULL, 'LCD', 15, 'J6 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (744, 1, NULL, 'ALAT BUKA LCD', NULL, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (745, 7, NULL, 'BATERAI', 21, 'V15 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (746, 28, NULL, 'FLEX ON OFF', 3, 'HOT 30i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (747, 59, NULL, 'LENSA', 10, 'A57', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (748, 53, NULL, 'LCD', 4, '8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (749, 11, NULL, 'BEZZEL', 10, 'A15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (750, 53, NULL, 'LCD', 22, 'REDMI 12C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (751, 67, NULL, 'PERNIK', 10, 'F11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (752, 67, NULL, 'PERNIK', 10, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (753, 67, NULL, 'PERNIK', 10, 'F7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (754, 67, NULL, 'PERNIK', 14, 'C31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (755, 67, NULL, 'PERNIK', 14, '5PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (756, 28, NULL, 'FLEX ON OFF', 10, 'A5S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (757, 28, NULL, 'FLEX ON OFF', 14, '5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (758, 28, NULL, 'FLEX ON OFF', 10, 'F7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (759, 28, NULL, 'FLEX ON OFF', 10, 'A59', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (760, 35, NULL, 'FLEX VOL', 10, 'F5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (761, 35, NULL, 'FLEX VOL', 10, 'A74', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (762, 67, NULL, 'PERNIK', 21, 'V15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (763, 67, NULL, 'PERNIK', 21, 'V5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (764, 67, NULL, 'PERNIK', 21, 'Y91', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (765, 67, NULL, 'PERNIK', 21, 'Y71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (766, 28, NULL, 'FLEX ON OFF', 21, 'Y71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (767, 67, NULL, 'PERNIK', 22, 'REDMI 9A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (768, 67, NULL, 'PERNIK', 22, 'REDMI 9T', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (769, 67, NULL, 'PERNIK', 22, 'REDMI NOTE 7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (770, 28, NULL, 'FLEX ON OFF', 22, 'REDMI 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (771, 67, NULL, 'PERNIK', 15, 'A03 CORE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (772, 67, NULL, 'PERNIK', 15, 'A12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (773, 67, NULL, 'PERNIK', 15, 'A51', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (774, 28, NULL, 'FLEX ON OFF', 15, 'A51', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (775, 28, NULL, 'FLEX ON OFF', 15, 'A20S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (776, 28, NULL, 'FLEX ON OFF', 15, 'A03 CORE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (777, 28, NULL, 'FLEX ON OFF', 15, 'A02S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (778, 28, NULL, 'FLEX ON OFF', 15, 'A21S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (779, 28, NULL, 'FLEX ON OFF', 15, 'A20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (780, 67, NULL, 'PERNIK', 3, 'SMART 5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (781, 67, NULL, 'PERNIK', 3, 'SMART 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (782, 28, NULL, 'FLEX ON OFF', 3, 'SMART 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (783, 28, NULL, 'FLEX ON OFF', 15, 'A11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (784, 3, NULL, 'ANTIGORES', 10, 'A3S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (785, 11, NULL, 'BEZZEL', 15, 'A13', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (786, 53, NULL, 'LCD', 15, 'A30', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (787, 28, NULL, 'FLEX ON OFF', 22, 'REDMI S2', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (788, 47, NULL, 'KARTU TELKOMSEL ICLOUD', NULL, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (789, 53, NULL, 'LCD', 10, 'RENO 6', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (790, 53, NULL, 'LCD', 22, 'POCO M4 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (791, 22, NULL, 'FLEX CAS', 22, 'REDMI NOTE 5 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (792, 53, NULL, 'LCD', 15, 'A51', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (793, 7, NULL, 'BATERAI', 21, 'Y93', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (794, 22, NULL, 'FLEX CAS', 10, 'A57 LAMA', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (795, 29, NULL, 'FLEX ON OFF VOL', 14, 'C55', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (796, 53, NULL, 'LCD', 10, 'A76', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (797, 4, NULL, 'BACK COVER', 4, '11 PROMAX', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (798, 53, NULL, 'LCD', 14, '10 4G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (799, 53, NULL, 'LCD', 4, '11 PROMAX', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (800, 52, NULL, 'LASER', 4, '11 PROMAX', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (801, 4, NULL, 'BACK COVER', 17, 'SPARK 6 GO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (802, 28, NULL, 'FLEX ON OFF', 17, 'SPARK 6 GO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (803, 22, NULL, 'FLEX CAS', 4, '11 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (804, 28, NULL, 'FLEX ON OFF', 10, 'A77S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (805, 19, NULL, 'FINGER', 3, 'HOT 11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (806, 28, NULL, 'FLEX ON OFF', 3, 'HOT 11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (807, 19, NULL, 'FINGER', 21, 'Y21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (808, 53, NULL, 'LCD', 15, 'A21S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (809, 53, NULL, 'LCD', 15, 'A31 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (810, 28, NULL, 'FLEX ON OFF', 21, 'Y21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (811, 67, NULL, 'PERNIK', 21, 'Y21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (812, 53, NULL, 'LCD', 21, 'Y35', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (813, 53, NULL, 'LCD', 4, '12 PROMAX OLED', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (814, 53, NULL, 'LCD', 23, 'BLADE A35', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (815, 28, NULL, 'FLEX ON OFF', 22, 'REDMI 12C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (816, 67, NULL, 'PERNIK', 10, 'A31 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (817, 67, NULL, 'PERNIK', 10, 'A71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (818, 35, NULL, 'FLEX VOL', 4, '11 2019', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (819, 67, NULL, 'PERNIK', 10, 'A54', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (820, 41, NULL, 'FRAME', 10, 'A31 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (821, 67, NULL, 'PERNIK', 3, 'HOT 9P', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (822, 21, NULL, 'FLEX BOARD', 10, 'A57 2022', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (823, 53, NULL, 'LCD', 10, 'F5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (824, 35, NULL, 'FLEX VOL', 10, 'A5S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (825, 67, NULL, 'PERNIK', 10, 'F5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (826, 67, NULL, 'PERNIK', 10, 'A5S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (827, 67, NULL, 'PERNIK', 10, 'A83', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (828, 67, NULL, 'PERNIK', 10, 'RENO 2F', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (829, 67, NULL, 'PERNIK', 14, '5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (830, 67, NULL, 'PERNIK', 14, '5i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (831, 67, NULL, 'PERNIK', 14, '7i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (832, 67, NULL, 'PERNIK', 14, '8i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (833, 27, NULL, 'FLEX O/F', 10, 'RENO 2F', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (834, 27, NULL, 'FLEX O/F', 10, 'F11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (835, 27, NULL, 'FLEX O/F', 10, 'A7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (836, 27, NULL, 'FLEX O/F', 10, 'A37', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (837, 27, NULL, 'FLEX O/F', 14, '5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (838, 27, NULL, 'FLEX O/F', 14, '5PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (839, 27, NULL, 'FLEX O/F', 10, 'F9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (840, 27, NULL, 'FLEX O/F', 10, 'A31 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (841, 27, NULL, 'FLEX O/F', 10, 'A71 2017', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (842, 27, NULL, 'FLEX O/F', 10, 'F5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (843, 27, NULL, 'FLEX O/F', 10, 'F1S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (844, 27, NULL, 'FLEX O/F', 10, 'A3S 1803', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (845, 27, NULL, 'FLEX O/F', 14, 'C35', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (846, 27, NULL, 'FLEX O/F', 14, '7PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (847, 27, NULL, 'FLEX O/F', 14, 'C20/C21/C11 2021', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (848, 27, NULL, 'FLEX O/F', 14, '8i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (849, 27, NULL, 'FLEX O/F', 14, '7i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (850, 35, NULL, 'FLEX VOL', 14, '8i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (851, 35, NULL, 'FLEX VOL', 14, '8 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (852, 35, NULL, 'FLEX VOL', 14, '7 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (853, 35, NULL, 'FLEX VOL', 14, '5i', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (854, 35, NULL, 'FLEX VOL', 10, 'RENO 2F', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (855, 35, NULL, 'FLEX VOL', 10, 'RENO 4', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (856, 35, NULL, 'FLEX VOL', 10, 'A16', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (857, 35, NULL, 'FLEX VOL', 10, 'A36', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (858, 35, NULL, 'FLEX VOL', 10, 'F9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (859, 35, NULL, 'FLEX VOL', 10, 'A7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (860, 35, NULL, 'FLEX VOL', 10, 'A83', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (861, 35, NULL, 'FLEX VOL', 10, 'A5 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (862, 67, NULL, 'PERNIK', 21, 'Y12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (863, 67, NULL, 'PERNIK', 21, 'Z1 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (864, 67, NULL, 'PERNIK', 21, 'V7 PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (865, 67, NULL, 'PERNIK', 21, 'V9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (866, 67, NULL, 'PERNIK', 21, 'Y53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (867, 67, NULL, 'PERNIK', 21, 'V21', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (868, 27, NULL, 'FLEX O/F', 21, 'Y81', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (869, 27, NULL, 'FLEX O/F', 21, 'Y71', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (870, 27, NULL, 'FLEX O/F', 21, 'V15', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (871, 27, NULL, 'FLEX O/F', 21, 'Y53', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (872, 27, NULL, 'FLEX O/F', 21, 'V7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (873, 27, NULL, 'FLEX O/F', 21, 'V19', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (874, 67, NULL, 'PERNIK', 15, 'A20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (875, 67, NULL, 'PERNIK', 15, 'AO3CORE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (876, 67, NULL, 'PERNIK', 15, 'A04E', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (877, 67, NULL, 'PERNIK', 15, 'A23 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (878, 67, NULL, 'PERNIK', 15, 'A01 CORE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (879, 67, NULL, 'PERNIK', 15, 'NOTE 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (880, 27, NULL, 'FLEX O/F', 15, 'A20S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (881, 27, NULL, 'FLEX O/F', 15, 'J7 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (882, 27, NULL, 'FLEX O/F', 10, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (883, 27, NULL, 'FLEX O/F', 15, 'A31', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (884, 27, NULL, 'FLEX O/F', 15, 'A10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (885, 27, NULL, 'FLEX O/F', 15, 'A03 CORE', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (886, 27, NULL, 'FLEX O/F', 15, 'A03S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (887, 27, NULL, 'FLEX O/F', 15, 'A02', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (888, 27, NULL, 'FLEX O/F', 15, 'A20', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (889, 27, NULL, 'FLEX O/F', 15, 'A04E', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (890, 27, NULL, 'FLEX O/F', 15, 'A21S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (891, 35, NULL, 'FLEX VOL', 15, 'A20S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (892, 67, NULL, 'PERNIK', 22, 'A1', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (893, 67, NULL, 'PERNIK', 22, '8/8A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (894, 67, NULL, 'PERNIK', 22, 'NOTE 8 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (895, 67, NULL, 'PERNIK', 22, 'NOTE 10 4G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (896, 67, NULL, 'PERNIK', 22, 'NOTE 9 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (897, 67, NULL, 'PERNIK', 22, 'REDMI 7', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (898, 67, NULL, 'PERNIK', 22, 'NOTE 11 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (899, 27, NULL, 'FLEX O/F', 22, 'REDMI 9T', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (900, 27, NULL, 'FLEX O/F', 22, 'X3', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (901, 27, NULL, 'FLEX O/F', 22, 'REDMI NOTE 8 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (902, 27, NULL, 'FLEX O/F', 22, 'NOTE 5A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (903, 27, NULL, 'FLEX O/F', 22, 'REDMI NOTE 9', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (904, 27, NULL, 'FLEX O/F', 22, 'REDMI 10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (905, 27, NULL, 'FLEX O/F', 22, 'REDMI 14C', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (906, 27, NULL, 'FLEX O/F', 22, 'REDMI NOTE 10', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (907, 27, NULL, 'FLEX O/F', 22, 'NOTE 9 PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (908, 27, NULL, 'FLEX O/F', 22, 'NOTE 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (909, 67, NULL, 'PERNIK', 3, 'HOT 10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (910, 67, NULL, 'PERNIK', 3, 'SMART 4', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (911, 27, NULL, 'FLEX O/F', 3, 'SMART 4', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (912, 27, NULL, 'FLEX O/F', 3, 'HOT 9P', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (913, 27, NULL, 'FLEX O/F', 3, 'HOT 12', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (914, 27, NULL, 'FLEX O/F', 3, 'HOT 11S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (915, 13, NULL, 'CC', 15, 'A10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (916, 13, NULL, 'CC', 9, NULL, 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (917, 13, NULL, 'CC', 15, 'A11', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (918, 11, NULL, 'BEZZEL', 15, 'A02S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (919, 4, NULL, 'BACK COVER', 22, 'REDMI 8', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (920, 27, NULL, 'FLEX O/F', 15, 'A10S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (921, 27, NULL, 'FLEX O/F', 14, '8 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (922, 27, NULL, 'FLEX O/F', 10, 'RENO 4', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (923, 7, NULL, 'BATERAI', 10, 'A31 2020', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (924, 7, NULL, 'BATERAI', 15, 'A14 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (925, 27, NULL, 'FLEX O/F', 22, 'REDMI A5', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (926, 53, NULL, 'LCD', 22, 'REDMI NOTE 10 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (927, 26, NULL, 'FLEX O.F', 3, 'HOT 11PRO', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (928, 11, NULL, 'BEZZEL', 15, 'A30S', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (929, 67, NULL, 'PERNIK', 22, 'REDMI NOTE 10 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (930, 69, NULL, 'PERPANJANGAN', 20, 'TOOL', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (931, 27, NULL, 'FLEX O/F', 22, 'REDMI 6A', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (932, 27, NULL, 'FLEX O/F', 10, 'A95 5G', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (933, 22, NULL, 'FLEX CAS', 10, 'A76/C35/8i/A96', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (934, 68, NULL, 'PERNIK VOL SAJA', 14, 'C35', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (935, 35, NULL, 'FLEX VOL', 14, 'C35', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (936, 19, NULL, 'FINGER', 10, 'A17', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (937, 21, NULL, 'FLEX BOARD', 15, 'M51', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (938, 21, NULL, 'FLEX BOARD', 15, 'A22', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (939, 53, NULL, 'LCD', 4, '7PLUS', 1, NULL, NULL, 0.00);
INSERT INTO `barang` (`id`, `jenis_barang_id`, `kode_barang`, `nama_barang`, `merek_id`, `tipe`, `satuan_id`, `harga_modal`, `harga_jual`, `stok`) VALUES (940, 5, NULL, 'BACK GLASS', 4, '11 PRO MAX', 1, NULL, NULL, 0.00);
COMMIT;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
BEGIN;
INSERT INTO `customer` (`id`, `nama`, `alamat`, `no_hp`, `email`) VALUES (3, 'serius', 'Medan', '[{\"id\":6,\"customer_id\":3,\"no_hp\":\"081277161121\"},{\"id\":7,\"customer_id\":3,\"no_hp\":\"082177188162\"}]', NULL);
INSERT INTO `customer` (`id`, `nama`, `alamat`, `no_hp`, `email`) VALUES (11, 'Mas Jarwo', 'Medan', '[{\"id\":8,\"customer_id\":11,\"no_hp\":\"0811122\"}]', '[{\"id\":2,\"customer_id\":11,\"email\":\"Jarwo@gmail.com\"}]');
COMMIT;

-- ----------------------------
-- Table structure for customer_email
-- ----------------------------
DROP TABLE IF EXISTS `customer_email`;
CREATE TABLE `customer_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of customer_email
-- ----------------------------
BEGIN;
INSERT INTO `customer_email` (`id`, `customer_id`, `email`) VALUES (2, 11, 'Jarwo@gmail.com');
COMMIT;

-- ----------------------------
-- Table structure for customer_no_hp
-- ----------------------------
DROP TABLE IF EXISTS `customer_no_hp`;
CREATE TABLE `customer_no_hp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of customer_no_hp
-- ----------------------------
BEGIN;
INSERT INTO `customer_no_hp` (`id`, `customer_id`, `no_hp`) VALUES (6, 3, '081277161121');
INSERT INTO `customer_no_hp` (`id`, `customer_id`, `no_hp`) VALUES (7, 3, '082177188162');
INSERT INTO `customer_no_hp` (`id`, `customer_id`, `no_hp`) VALUES (8, 11, '0811122');
COMMIT;

-- ----------------------------
-- Table structure for garansi
-- ----------------------------
DROP TABLE IF EXISTS `garansi`;
CREATE TABLE `garansi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `garansi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of garansi
-- ----------------------------
BEGIN;
INSERT INTO `garansi` (`id`, `garansi`) VALUES (1, '1 Minggu');
INSERT INTO `garansi` (`id`, `garansi`) VALUES (2, '2 Minggu');
INSERT INTO `garansi` (`id`, `garansi`) VALUES (3, '3 Minggu');
INSERT INTO `garansi` (`id`, `garansi`) VALUES (4, '1 Bulan');
INSERT INTO `garansi` (`id`, `garansi`) VALUES (5, '2 Bulan');
INSERT INTO `garansi` (`id`, `garansi`) VALUES (6, '3 Bulan');
COMMIT;

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
BEGIN;
INSERT INTO `jabatan` (`id`, `jabatan`) VALUES (1, 'Teknisi');
INSERT INTO `jabatan` (`id`, `jabatan`) VALUES (2, 'Admin');
COMMIT;

-- ----------------------------
-- Table structure for jasa
-- ----------------------------
DROP TABLE IF EXISTS `jasa`;
CREATE TABLE `jasa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jasa` varchar(255) DEFAULT NULL,
  `tarif` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of jasa
-- ----------------------------
BEGIN;
INSERT INTO `jasa` (`id`, `jasa`, `tarif`) VALUES (1, 'Pemasangan LCD', 75000.00);
INSERT INTO `jasa` (`id`, `jasa`, `tarif`) VALUES (2, 'Repair Tombol', 0.00);
INSERT INTO `jasa` (`id`, `jasa`, `tarif`) VALUES (3, 'Pemasangan Tombol Luar', 40000.00);
COMMIT;

-- ----------------------------
-- Table structure for jenis_barang
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jenis_barang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------
BEGIN;
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (1, 'ALAT BUKA LCD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (2, 'ANTI GORES');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (3, 'ANTIGORES');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (4, 'BACK COVER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (5, 'BACK GLASS');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (6, 'BALIK UANG LCD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (7, 'BATERAI');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (8, 'BAYAR KEKURANGAN');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (9, 'BAYAR SERVER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (10, 'BELANJA');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (11, 'BEZZEL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (12, 'BUZZER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (13, 'CC');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (14, 'CONECTOR LCD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (15, 'DOUBLE TIP LCD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (16, 'EAR SPEAKER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (17, 'EMMC');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (18, 'FELX CAS');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (19, 'FINGER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (20, 'FLEX');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (21, 'FLEX BOARD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (22, 'FLEX CAS');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (23, 'FLEX CC');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (24, 'FLEX CONNECT');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (25, 'FLEX HOME FINGER PRINT');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (26, 'FLEX O.F');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (27, 'FLEX O/F');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (28, 'FLEX ON OFF');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (29, 'FLEX ON OFF VOL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (30, 'FLEX ON OFF+VOL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (31, 'FLEX ON/OFF');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (32, 'FLEX ON/OFF/VOL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (33, 'FLEX ON/OFF+VOL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (34, 'FLEX ONOFF+VOL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (35, 'FLEX VOL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (36, 'FLEX VOLUME');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (37, 'FLEXIBLE CAS');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (38, 'FLEXIBLE ON OFF');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (39, 'FLEXIBLE ON OFF VOL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (40, 'FLEXIBLE VOLUME');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (41, 'FRAME');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (42, 'FRAME LCD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (43, 'FRAME TENGAH');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (44, 'HOUSHING');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (45, 'HOUSING');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (46, 'IC POWER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (47, 'KARTU TELKOMSEL ICLOUD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (48, 'KEYPAD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (49, 'KEYPAD ON/OFF/VOL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (50, 'KEYPAD ONOFF+VOL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (51, 'KEYPAD VOLUME');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (52, 'LASER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (53, 'LCD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (54, 'LCD OLED');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (55, 'LCD ORIGINAL');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (56, 'LCD+TS+FRAME');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (57, 'LEM LCD');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (58, 'LEM T9000');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (59, 'LENSA');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (60, 'MATA PISAU');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (61, 'MAXIM');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (62, 'MESIN');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (63, 'MIDDLE FRAME');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (64, 'MINYAK PARKIR');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (65, 'PAPAN CAS');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (66, 'PERBAIKAN');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (67, 'PERNIK');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (68, 'PERNIK VOL SAJA');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (69, 'PERPANJANGAN');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (70, 'PINDAH CIP');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (71, 'REPAIR EMMC');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (72, 'SALASIBAN ANTI PANAS');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (73, 'SERVER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (74, 'SERVICE');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (75, 'SERVICE IPHONE');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (76, 'SIM TRAY');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (77, 'TANG POTONG');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (78, 'THINER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (79, 'TINER');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (80, 'TOMBOL LUAR');
INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES (81, 'TOOLS MATA SORDER');
COMMIT;

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `jabatan_id` bigint(20) DEFAULT NULL,
  `persenan_komisi` decimal(10,2) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `status_aktif` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
BEGIN;
INSERT INTO `karyawan` (`id`, `nama`, `jenis_kelamin`, `alamat`, `no_hp`, `email`, `jabatan_id`, `persenan_komisi`, `tanggal_masuk`, `status_aktif`) VALUES (5, 'Andi', 'Laki-Laki', 'Medan', NULL, NULL, 1, 25.00, '2026-05-01', 1);
INSERT INTO `karyawan` (`id`, `nama`, `jenis_kelamin`, `alamat`, `no_hp`, `email`, `jabatan_id`, `persenan_komisi`, `tanggal_masuk`, `status_aktif`) VALUES (6, 'Beni', 'Laki-Laki', NULL, NULL, NULL, 1, 50.00, '2026-05-04', 1);
COMMIT;

-- ----------------------------
-- Table structure for karyawan_email
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_email`;
CREATE TABLE `karyawan_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `karyawan_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of karyawan_email
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for karyawan_no_hp
-- ----------------------------
DROP TABLE IF EXISTS `karyawan_no_hp`;
CREATE TABLE `karyawan_no_hp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `karyawan_id` bigint(20) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of karyawan_no_hp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `log_pekerjaan`;
CREATE TABLE `log_pekerjaan` (
  `id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `no_bon` varchar(255) DEFAULT NULL,
  `teknisi` longtext DEFAULT NULL,
  `garansi` varchar(255) DEFAULT NULL,
  `keterangan_garansi` text DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_nama` varchar(255) DEFAULT NULL,
  `customer_alamat` varchar(255) DEFAULT NULL,
  `customer_no_hp` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `rincian` longtext DEFAULT NULL,
  `barang` longtext DEFAULT NULL,
  `sub_total` decimal(20,2) DEFAULT NULL,
  `persen_diskon` decimal(10,2) DEFAULT NULL,
  `diskon` decimal(20,2) DEFAULT NULL,
  `dpp` decimal(20,2) DEFAULT NULL,
  `persen_ppn` decimal(10,2) DEFAULT NULL,
  `ppn` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `total_modal` decimal(20,2) DEFAULT NULL,
  `dibatalkan` datetime DEFAULT NULL,
  `alasan_dibatalkan` text DEFAULT NULL,
  `mulai` datetime DEFAULT NULL,
  `selesai` datetime DEFAULT NULL,
  `diambil` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of log_pekerjaan
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_pekerjaan_dibayar
-- ----------------------------
DROP TABLE IF EXISTS `log_pekerjaan_dibayar`;
CREATE TABLE `log_pekerjaan_dibayar` (
  `id` bigint(20) DEFAULT NULL,
  `pekerjaan_id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of log_pekerjaan_dibayar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_pembelian
-- ----------------------------
DROP TABLE IF EXISTS `log_pembelian`;
CREATE TABLE `log_pembelian` (
  `id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `no_bon` varchar(255) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `supplier_nama` varchar(255) DEFAULT NULL,
  `supplier_alamat` varchar(255) DEFAULT NULL,
  `supplier_no_telp` varchar(255) DEFAULT NULL,
  `supplier_email` varchar(255) DEFAULT NULL,
  `barang` longtext DEFAULT NULL,
  `sub_total` decimal(20,2) DEFAULT NULL,
  `persen_diskon` decimal(10,2) DEFAULT NULL,
  `diskon` decimal(20,2) DEFAULT NULL,
  `dpp` decimal(20,2) DEFAULT NULL,
  `persen_ppn` decimal(10,2) DEFAULT NULL,
  `ppn` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of log_pembelian
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_pembelian_dibayar
-- ----------------------------
DROP TABLE IF EXISTS `log_pembelian_dibayar`;
CREATE TABLE `log_pembelian_dibayar` (
  `id` bigint(20) DEFAULT NULL,
  `pembelian_id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(20) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of log_pembelian_dibayar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `log_penjualan`;
CREATE TABLE `log_penjualan` (
  `id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `no_bon` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_nama` varchar(255) DEFAULT NULL,
  `customer_alamat` varchar(255) DEFAULT NULL,
  `customer_no_hp` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `barang` longtext DEFAULT NULL,
  `sub_total` decimal(20,2) DEFAULT NULL,
  `persen_diskon` decimal(10,2) DEFAULT NULL,
  `diskon` decimal(20,2) DEFAULT NULL,
  `dpp` decimal(20,2) DEFAULT NULL,
  `persen_ppn` decimal(10,2) DEFAULT NULL,
  `ppn` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of log_penjualan
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_penjualan_dibayar
-- ----------------------------
DROP TABLE IF EXISTS `log_penjualan_dibayar`;
CREATE TABLE `log_penjualan_dibayar` (
  `id` bigint(20) DEFAULT NULL,
  `penjualan_id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of log_penjualan_dibayar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `id_induk` int(11) DEFAULT NULL,
  `menu` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (1, NULL, 'Home', 'fas fa-home', 'home', 1);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (2, NULL, 'Produk', 'fa fa-book', NULL, 2);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (3, 2, 'Jenis Barang', 'fas fa-ribbon', 'jenis-barang', 3);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (4, 2, 'Merek', 'fas fa-tags', 'merek', 4);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (5, 2, 'Tipe', 'fas fa-sign', 'tipe', 5);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (6, 2, 'Satuan', 'fas fa-suitcase', 'satuan', 6);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (7, 2, 'Barang', 'fas fa-cubes', 'barang', 7);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (8, 2, 'Garansi', 'fas fa-business-time', 'garansi', 8);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (9, NULL, 'SDM', 'fas fa-users-cog', NULL, 9);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (10, 9, 'Jabatan', 'fas fa-user-graduate', 'jabatan', 10);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (11, 9, 'Karyawan', 'fas fa-user-tie', 'karyawan', 11);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (12, NULL, 'Relasi Bisnis', 'far fa-address-book', NULL, 12);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (13, 12, 'Supplier', 'fas fa-user-secret', 'supplier', 13);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (14, 12, 'Customer', 'fas fa-child', 'customer', 14);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (15, 12, 'Toko', 'fas fa-store-alt', 'toko', 15);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (16, NULL, 'Transaksi', 'fas fa-cash-register', NULL, 16);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (17, 16, 'Pembelian', 'fas fa-credit-card', 'pembelian', 17);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (18, 16, 'Utang Pembelian', 'far fa-credit-card', 'utang-pembelian', 18);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (19, 16, 'Penjualan', 'fas fa-wallet', 'penjualan', 19);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (20, 16, 'Pekerjaan', 'fas fa-wrench', 'pekerjaan', 20);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (21, NULL, 'Laporan', 'fas fa-file-signature', NULL, 21);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (22, 21, 'Lap. Stok', 'far fa-file-excel', 'laporan-stok', 22);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (23, 21, 'Lap. Pembelian', 'far fa-file-excel', 'laporan-pembelian', 23);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (24, 21, 'Lap. Penjualan', 'far fa-file-excel', 'laporan-penjualan', 24);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (25, 21, 'Lap. Pekerjaan', 'far fa-file-excel', 'laporan-pekerjaan', 25);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (101, NULL, 'User Managemen', 'fas fa-users-cog', NULL, 101);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (102, 101, 'Users', 'far fa-user', 'users', 102);
INSERT INTO `menu` (`id`, `id_induk`, `menu`, `icon`, `url`, `no_urut`) VALUES (103, 101, 'Users Level', 'fas fa-user-shield', 'users-level', 103);
COMMIT;

-- ----------------------------
-- Table structure for menu_akses
-- ----------------------------
DROP TABLE IF EXISTS `menu_akses`;
CREATE TABLE `menu_akses` (
  `users_level_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `action` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu_akses
-- ----------------------------
BEGIN;
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'dashboard', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'dashboard', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'dashboard', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'artikel', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'artikel', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'artikel', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'artikel', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'artikel', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'users', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'users', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'users', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'users', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (34, 'users', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'home', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'home', '.DS_Store');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jenis-barang', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jenis-barang', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jenis-barang', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jenis-barang', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jenis-barang', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'merek', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'merek', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'merek', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'merek', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'merek', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'tipe', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'tipe', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'tipe', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'tipe', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'tipe', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'satuan', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'satuan', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'satuan', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'satuan', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'satuan', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'barang', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'barang', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'barang', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'barang', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'barang', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'barang', '.DS_Store');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'garansi', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'garansi', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'garansi', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'garansi', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'garansi', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jabatan', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jabatan', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jabatan', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jabatan', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'jabatan', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'karyawan', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'karyawan', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'karyawan', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'karyawan', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'karyawan', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'supplier', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'supplier', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'supplier', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'supplier', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'supplier', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'supplier', '.DS_Store');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'customer', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'customer', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'customer', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'customer', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'customer', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'toko', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'toko', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'toko', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'toko', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'toko', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'ubah-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'tampil-supplier');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'tampil-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'tampil-barang');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'simpan-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'hapus-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pembelian', '.DS_Store');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'ubah-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'tampil-supplier');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'tampil-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'simpan-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'set-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'hapus-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'bayar-utang');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'utang-pembelian', 'alokasikan-pembayaran');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'ubah-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'tampil-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'tampil-customer');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'tampil-barang');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'simpan-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'hapus-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'penjualan', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'ubah-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'tampil-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'tampil-customer');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'tampil-barang');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'simpan-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'set-status');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'hapus-dibayar');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'get-tipe');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'pekerjaan', '.DS_Store');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'laporan-stok', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'laporan-stok', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'laporan-stok', '.DS_Store');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'laporan-pembelian', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'laporan-pembelian', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'laporan-penjualan', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'laporan-penjualan', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'laporan-pekerjaan', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'laporan-pekerjaan', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users', 'form');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users-level', 'ubah');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users-level', 'tampil');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users-level', 'simpan');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users-level', 'simpan-hak-akses');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users-level', 'load-hak-akses');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users-level', 'hapus');
INSERT INTO `menu_akses` (`users_level_id`, `url`, `action`) VALUES (1, 'users-level', 'form');
COMMIT;

-- ----------------------------
-- Table structure for merek
-- ----------------------------
DROP TABLE IF EXISTS `merek`;
CREATE TABLE `merek` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merek` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of merek
-- ----------------------------
BEGIN;
INSERT INTO `merek` (`id`, `merek`) VALUES (1, 'BACKGLASH');
INSERT INTO `merek` (`id`, `merek`) VALUES (2, 'HUAWEI');
INSERT INTO `merek` (`id`, `merek`) VALUES (3, 'INFINIX');
INSERT INTO `merek` (`id`, `merek`) VALUES (4, 'IPHONE');
INSERT INTO `merek` (`id`, `merek`) VALUES (5, 'LCD');
INSERT INTO `merek` (`id`, `merek`) VALUES (6, 'LEM LCD');
INSERT INTO `merek` (`id`, `merek`) VALUES (7, 'LENOVO');
INSERT INTO `merek` (`id`, `merek`) VALUES (8, 'MANDIRI');
INSERT INTO `merek` (`id`, `merek`) VALUES (9, 'NOKIA');
INSERT INTO `merek` (`id`, `merek`) VALUES (10, 'OPPO');
INSERT INTO `merek` (`id`, `merek`) VALUES (11, 'OPPO/REALME');
INSERT INTO `merek` (`id`, `merek`) VALUES (12, 'PNG');
INSERT INTO `merek` (`id`, `merek`) VALUES (13, 'POCO');
INSERT INTO `merek` (`id`, `merek`) VALUES (14, 'REALME');
INSERT INTO `merek` (`id`, `merek`) VALUES (15, 'SAMSUNG');
INSERT INTO `merek` (`id`, `merek`) VALUES (16, 'SERVICE');
INSERT INTO `merek` (`id`, `merek`) VALUES (17, 'TECHNO');
INSERT INTO `merek` (`id`, `merek`) VALUES (18, 'TECNO');
INSERT INTO `merek` (`id`, `merek`) VALUES (19, 'TOOLS');
INSERT INTO `merek` (`id`, `merek`) VALUES (20, 'UNLOCK');
INSERT INTO `merek` (`id`, `merek`) VALUES (21, 'VIVO');
INSERT INTO `merek` (`id`, `merek`) VALUES (22, 'XIAOMI');
INSERT INTO `merek` (`id`, `merek`) VALUES (23, 'ZTE');
COMMIT;

-- ----------------------------
-- Table structure for pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `pekerjaan`;
CREATE TABLE `pekerjaan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `no_bon` varchar(255) DEFAULT NULL,
  `teknisi` longtext DEFAULT NULL,
  `garansi` varchar(255) DEFAULT NULL,
  `keterangan_garansi` text DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_nama` varchar(255) DEFAULT NULL,
  `customer_alamat` varchar(255) DEFAULT NULL,
  `customer_no_hp` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `rincian` longtext DEFAULT NULL,
  `barang` longtext DEFAULT NULL,
  `sub_total` decimal(20,2) DEFAULT NULL,
  `persen_diskon` decimal(10,2) DEFAULT NULL,
  `diskon` decimal(20,2) DEFAULT NULL,
  `dpp` decimal(20,2) DEFAULT NULL,
  `persen_ppn` decimal(10,2) DEFAULT NULL,
  `ppn` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `total_modal` decimal(20,2) DEFAULT NULL,
  `dibatalkan` datetime DEFAULT NULL,
  `alasan_dibatalkan` text DEFAULT NULL,
  `mulai` datetime DEFAULT NULL,
  `selesai` datetime DEFAULT NULL,
  `diambil` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pekerjaan
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pekerjaan_barang
-- ----------------------------
DROP TABLE IF EXISTS `pekerjaan_barang`;
CREATE TABLE `pekerjaan_barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pekerjaan_id` bigint(20) DEFAULT NULL,
  `barang_id` bigint(20) DEFAULT NULL,
  `harga` decimal(20,2) DEFAULT NULL,
  `jenis_ppn` varchar(100) DEFAULT NULL,
  `harga_sebelum_ppn` decimal(20,2) DEFAULT NULL,
  `jumlah` decimal(20,2) DEFAULT NULL,
  `sub_total` decimal(20,2) DEFAULT NULL,
  `sub_total_sebelum_ppn` decimal(20,2) DEFAULT NULL,
  `diskon_item` decimal(20,2) DEFAULT NULL,
  `diskon_item_detail` text DEFAULT NULL,
  `diskon_faktur` decimal(20,2) DEFAULT NULL,
  `dpp` decimal(20,2) DEFAULT NULL,
  `persen_ppn` decimal(20,2) DEFAULT NULL,
  `nominal_ppn` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pekerjaan_barang
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pekerjaan_customer_email
-- ----------------------------
DROP TABLE IF EXISTS `pekerjaan_customer_email`;
CREATE TABLE `pekerjaan_customer_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pekerjaan_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pekerjaan_customer_email
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pekerjaan_customer_no_hp
-- ----------------------------
DROP TABLE IF EXISTS `pekerjaan_customer_no_hp`;
CREATE TABLE `pekerjaan_customer_no_hp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pekerjaan_id` bigint(20) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pekerjaan_customer_no_hp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pekerjaan_dibayar
-- ----------------------------
DROP TABLE IF EXISTS `pekerjaan_dibayar`;
CREATE TABLE `pekerjaan_dibayar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pekerjaan_id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pekerjaan_dibayar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pekerjaan_rincian
-- ----------------------------
DROP TABLE IF EXISTS `pekerjaan_rincian`;
CREATE TABLE `pekerjaan_rincian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pekerjaan_id` bigint(20) DEFAULT NULL,
  `merek` varchar(255) DEFAULT NULL,
  `tipe` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `kasus` varchar(255) DEFAULT NULL,
  `jumlah` decimal(20,2) DEFAULT NULL,
  `toko` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pekerjaan_rincian
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pekerjaan_teknisi
-- ----------------------------
DROP TABLE IF EXISTS `pekerjaan_teknisi`;
CREATE TABLE `pekerjaan_teknisi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pekerjaan_id` bigint(20) DEFAULT NULL,
  `karyawan_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pekerjaan_teknisi
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pembelian
-- ----------------------------
DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE `pembelian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `no_bon` varchar(255) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `supplier_nama` varchar(255) DEFAULT NULL,
  `supplier_alamat` varchar(255) DEFAULT NULL,
  `supplier_no_telp` varchar(255) DEFAULT NULL,
  `supplier_email` varchar(255) DEFAULT NULL,
  `barang` longtext DEFAULT NULL,
  `sub_total` decimal(20,2) DEFAULT NULL,
  `persen_diskon` decimal(10,2) DEFAULT NULL,
  `diskon` decimal(20,2) DEFAULT NULL,
  `dpp` decimal(20,2) DEFAULT NULL,
  `persen_ppn` decimal(10,2) DEFAULT NULL,
  `ppn` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pembelian
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pembelian_barang
-- ----------------------------
DROP TABLE IF EXISTS `pembelian_barang`;
CREATE TABLE `pembelian_barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pembelian_id` bigint(20) DEFAULT NULL,
  `barang_id` bigint(20) DEFAULT NULL,
  `harga` decimal(20,2) DEFAULT NULL,
  `jenis_ppn` varchar(100) DEFAULT NULL,
  `harga_sebelum_ppn` decimal(20,2) DEFAULT NULL,
  `jumlah` decimal(20,2) DEFAULT NULL,
  `sub_total` decimal(20,2) DEFAULT NULL,
  `sub_total_sebelum_ppn` decimal(20,2) DEFAULT NULL,
  `diskon_item` decimal(20,2) DEFAULT NULL,
  `diskon_item_detail` text DEFAULT NULL,
  `diskon_faktur` decimal(20,2) DEFAULT NULL,
  `dpp` decimal(20,2) DEFAULT NULL,
  `persen_ppn` decimal(20,2) DEFAULT NULL,
  `nominal_ppn` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pembelian_barang
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pembelian_dibayar
-- ----------------------------
DROP TABLE IF EXISTS `pembelian_dibayar`;
CREATE TABLE `pembelian_dibayar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pembelian_id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pembelian_dibayar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pembelian_supplier_email
-- ----------------------------
DROP TABLE IF EXISTS `pembelian_supplier_email`;
CREATE TABLE `pembelian_supplier_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pembelian_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pembelian_supplier_email
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pembelian_supplier_no_telp
-- ----------------------------
DROP TABLE IF EXISTS `pembelian_supplier_no_telp`;
CREATE TABLE `pembelian_supplier_no_telp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pembelian_id` bigint(20) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pembelian_supplier_no_telp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penjualan
-- ----------------------------
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `no_bon` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_nama` varchar(255) DEFAULT NULL,
  `customer_alamat` varchar(255) DEFAULT NULL,
  `customer_no_hp` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `barang` longtext DEFAULT NULL,
  `sub_total` decimal(20,2) DEFAULT NULL,
  `persen_diskon` decimal(10,2) DEFAULT NULL,
  `diskon` decimal(20,2) DEFAULT NULL,
  `dpp` decimal(20,2) DEFAULT NULL,
  `persen_ppn` decimal(10,2) DEFAULT NULL,
  `ppn` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penjualan_barang
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_barang`;
CREATE TABLE `penjualan_barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `penjualan_id` bigint(20) DEFAULT NULL,
  `barang_id` bigint(20) DEFAULT NULL,
  `harga` decimal(20,2) DEFAULT NULL,
  `jenis_ppn` varchar(100) DEFAULT NULL,
  `harga_sebelum_ppn` decimal(20,2) DEFAULT NULL,
  `jumlah` decimal(20,2) DEFAULT NULL,
  `sub_total` decimal(20,2) DEFAULT NULL,
  `sub_total_sebelum_ppn` decimal(20,2) DEFAULT NULL,
  `diskon_item` decimal(20,2) DEFAULT NULL,
  `diskon_item_detail` text DEFAULT NULL,
  `diskon_faktur` decimal(20,2) DEFAULT NULL,
  `dpp` decimal(20,2) DEFAULT NULL,
  `persen_ppn` decimal(20,2) DEFAULT NULL,
  `nominal_ppn` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of penjualan_barang
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penjualan_customer_email
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_customer_email`;
CREATE TABLE `penjualan_customer_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `penjualan_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of penjualan_customer_email
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penjualan_customer_no_hp
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_customer_no_hp`;
CREATE TABLE `penjualan_customer_no_hp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `penjualan_id` bigint(20) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of penjualan_customer_no_hp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penjualan_dibayar
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_dibayar`;
CREATE TABLE `penjualan_dibayar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `penjualan_id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `dibayar` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of penjualan_dibayar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for satuan
-- ----------------------------
DROP TABLE IF EXISTS `satuan`;
CREATE TABLE `satuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of satuan
-- ----------------------------
BEGIN;
INSERT INTO `satuan` (`id`, `satuan`) VALUES (1, 'Pcs');
COMMIT;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telp` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of supplier
-- ----------------------------
BEGIN;
INSERT INTO `supplier` (`id`, `nama`, `alamat`, `no_telp`, `email`) VALUES (1, 'Sebarga Ganteng', 'Jl. Namorambe Gg. Karona', '[{\"id\":1,\"supplier_id\":1,\"no_telp\":\"082171711122\"},{\"id\":2,\"supplier_id\":1,\"no_telp\":\"081216171121\"}]', '[{\"id\":1,\"supplier_id\":1,\"email\":\"sebarga@gmail.com\"},{\"id\":2,\"supplier_id\":1,\"email\":\"michaelis@gmail.com\"}]');
COMMIT;

-- ----------------------------
-- Table structure for supplier_email
-- ----------------------------
DROP TABLE IF EXISTS `supplier_email`;
CREATE TABLE `supplier_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `supplier_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of supplier_email
-- ----------------------------
BEGIN;
INSERT INTO `supplier_email` (`id`, `supplier_id`, `email`) VALUES (1, 1, 'sebarga@gmail.com');
INSERT INTO `supplier_email` (`id`, `supplier_id`, `email`) VALUES (2, 1, 'michaelis@gmail.com');
COMMIT;

-- ----------------------------
-- Table structure for supplier_no_telp
-- ----------------------------
DROP TABLE IF EXISTS `supplier_no_telp`;
CREATE TABLE `supplier_no_telp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `supplier_id` bigint(20) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of supplier_no_telp
-- ----------------------------
BEGIN;
INSERT INTO `supplier_no_telp` (`id`, `supplier_id`, `no_telp`) VALUES (1, 1, '082171711122');
INSERT INTO `supplier_no_telp` (`id`, `supplier_id`, `no_telp`) VALUES (2, 1, '081216171121');
COMMIT;

-- ----------------------------
-- Table structure for tipe
-- ----------------------------
DROP TABLE IF EXISTS `tipe`;
CREATE TABLE `tipe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merek_id` bigint(20) DEFAULT NULL,
  `tipe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tipe
-- ----------------------------
BEGIN;
INSERT INTO `tipe` (`id`, `merek_id`, `tipe`) VALUES (1, 2, 'Arga');
INSERT INTO `tipe` (`id`, `merek_id`, `tipe`) VALUES (2, 2, 'UCIHA');
INSERT INTO `tipe` (`id`, `merek_id`, `tipe`) VALUES (3, 2, 'ZERO 30');
INSERT INTO `tipe` (`id`, `merek_id`, `tipe`) VALUES (4, 2, 'ZERO 30');
INSERT INTO `tipe` (`id`, `merek_id`, `tipe`) VALUES (5, 2, 'ZERO 30');
COMMIT;

-- ----------------------------
-- Table structure for toko
-- ----------------------------
DROP TABLE IF EXISTS `toko`;
CREATE TABLE `toko` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `toko` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of toko
-- ----------------------------
BEGIN;
INSERT INTO `toko` (`id`, `toko`) VALUES (1, 'SALWA');
INSERT INTO `toko` (`id`, `toko`) VALUES (2, 'GMT');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `users_level_id` int(11) DEFAULT NULL COMMENT '1 = Publik\r\n2 = Admin',
  `nama` varchar(255) DEFAULT NULL,
  `no_hp` varchar(30) DEFAULT NULL,
  `cabang_id` bigint(20) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `notifikasi_sppb` bigint(20) DEFAULT NULL,
  `notifikasi_cancel_dokumen` bigint(20) DEFAULT NULL,
  `persenan_clearance` decimal(10,2) DEFAULT NULL,
  `pegawai_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `username`, `password`, `users_level_id`, `nama`, `no_hp`, `cabang_id`, `last_login`, `notifikasi_sppb`, `notifikasi_cancel_dokumen`, `persenan_clearance`, `pegawai_id`) VALUES (38, 'sebastian', '4EF85E04C537B51F6CE117869B64EE64', 1, 'Sebastian', '81262493754', NULL, '2026-06-05 13:35:06', 2015, 1485, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for users_level
-- ----------------------------
DROP TABLE IF EXISTS `users_level`;
CREATE TABLE `users_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users_level
-- ----------------------------
BEGIN;
INSERT INTO `users_level` (`id`, `level`) VALUES (1, 'Developer');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
