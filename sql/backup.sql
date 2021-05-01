-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping structure for table testsql.genre
CREATE TABLE IF NOT EXISTS `genre` (
  `kd_genre` varchar(50) NOT NULL,
  `nm_genre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table testsql.genre: ~6 rows (approximately)
DELETE FROM `genre`;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` (`kd_genre`, `nm_genre`) VALUES
	('G001', 'ACTION'),
	('G002', 'HORROR'),
	('G003', 'COMEDY'),
	('G004', 'DRAMA'),
	('G005', 'THRILLER'),
	('G006', 'FICTION');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;

-- Dumping structure for table testsql.negara
CREATE TABLE IF NOT EXISTS `negara` (
  `kd_negara` varchar(100) NOT NULL,
  `nm_negara` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kd_negara`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table testsql.negara: ~4 rows (approximately)
DELETE FROM `negara`;
/*!40000 ALTER TABLE `negara` DISABLE KEYS */;
INSERT INTO `negara` (`kd_negara`, `nm_negara`) VALUES
	('AS', 'AMERIKA SERIKAT'),
	('HK', 'HONGKONG'),
	('ID', 'INDONESIA'),
	('IN', 'INDIA');
/*!40000 ALTER TABLE `negara` ENABLE KEYS */;

-- Dumping structure for table testsql.pegawai
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `umur` int(11) DEFAULT NULL,
  `nama` varchar(55) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `gapok` int(11) DEFAULT '5000',
  `tunjangan` int(11) DEFAULT '0',
  `gaji_terima` int(11) DEFAULT '5000',
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table testsql.pegawai: ~5 rows (approximately)
DELETE FROM `pegawai`;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` (`id_pegawai`, `umur`, `nama`, `status`, `gapok`, `tunjangan`, `gaji_terima`) VALUES
	(0, 0, 'dono', 'M', 5000, 0, 5000),
	(1, 22, 'Bagus', 'M', 5000, 0, 5000),
	(2, 21, 'dedi', 'M', 5000, 0, 5000),
	(3, 30, 'nugroho', 'T', 5000, 2000, 7000),
	(5, 12, 'dino', 'M', 5000, 0, 5000);
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;

-- Dumping structure for table testsql.produser
CREATE TABLE IF NOT EXISTS `produser` (
  `kd_produser` varchar(50) NOT NULL,
  `nm_produser` varchar(50) DEFAULT NULL,
  `international` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_produser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table testsql.produser: ~5 rows (approximately)
DELETE FROM `produser`;
/*!40000 ALTER TABLE `produser` DISABLE KEYS */;
INSERT INTO `produser` (`kd_produser`, `nm_produser`, `international`) VALUES
	('PD01', 'MARVEL', 'YA'),
	('PD02', 'HONGKONG CINEMA', 'YA'),
	('PD03', 'RAPI FILM', 'TIDAK'),
	('PD04', 'PARKIT', 'TIDAK'),
	('PD05', 'PARAMOUNT PICTURE ', 'YA');
/*!40000 ALTER TABLE `produser` ENABLE KEYS */;

-- Dumping structure for table testsql.propinsi
CREATE TABLE IF NOT EXISTS `propinsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table testsql.propinsi: ~6 rows (approximately)
DELETE FROM `propinsi`;
/*!40000 ALTER TABLE `propinsi` DISABLE KEYS */;
INSERT INTO `propinsi` (`id`, `nama`) VALUES
	(1, 'DKI jakarta'),
	(2, 'jawa barat'),
	(3, 'papua barat'),
	(4, 'sulawesi selatan'),
	(5, 'jawa timur'),
	(6, 'sumatra utara');
/*!40000 ALTER TABLE `propinsi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- Dumping structure for table testsql.kota
CREATE TABLE IF NOT EXISTS `kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(55) DEFAULT NULL,
  `id_propinsi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `propinsi` (`id_propinsi`),
  CONSTRAINT `propinsi` FOREIGN KEY (`id_propinsi`) REFERENCES `propinsi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table testsql.kota: ~6 rows (approximately)
DELETE FROM `kota`;
/*!40000 ALTER TABLE `kota` DISABLE KEYS */;
INSERT INTO `kota` (`id`, `nama`, `id_propinsi`) VALUES
	(1, 'jakarta', 1),
	(2, 'bandung', 2),
	(3, 'sumedang', 3),
	(4, 'makasar', 4),
	(5, 'surabaya', 5),
	(6, 'medan', 6);
/*!40000 ALTER TABLE `kota` ENABLE KEYS */;

-- Dumping database structure for testsql
DROP DATABASE IF EXISTS `testsql`;
CREATE DATABASE IF NOT EXISTS `testsql` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `testsql`;

-- Dumping structure for table testsql.film
CREATE TABLE IF NOT EXISTS `film` (
  `kd_film` varchar(50) NOT NULL,
  `nm_film` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `artis` varchar(50) DEFAULT NULL,
  `produser` varchar(50) DEFAULT NULL,
  `pendapatan` int(12) DEFAULT NULL,
  `nominasi` int(5) DEFAULT NULL,
  PRIMARY KEY (`kd_film`),
  KEY `genre` (`genre`),
  KEY `produser` (`produser`),
  CONSTRAINT `genre` FOREIGN KEY (`genre`) REFERENCES `genre` (`kd_genre`),
  CONSTRAINT `produser` FOREIGN KEY (`produser`) REFERENCES `produser` (`kd_produser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table testsql.film: ~0 rows (approximately)
DELETE FROM `film`;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` (`kd_film`, `nm_film`, `genre`, `artis`, `produser`, `pendapatan`, `nominasi`) VALUES
	('F001', 'IRON MAN', 'G001', 'A001', 'PD01', 2000000000, 3),
	('F002', 'IRON MAN 2', 'G001', 'A001', 'PD01', 1800000000, 2),
	('F003', 'IRON MAN 3', 'G001', 'A001', 'PD01', 1200000000, 0),
	('F004', 'AVENGER : CIVIL WAR', 'G001', 'A001', 'PD01', 2000000000, 1),
	('F005', 'SPIDER HOME COMING', 'G001', 'A001', 'PD01', 1300000000, 0),
	('F006', 'THE RAID', 'G001', 'A004', 'PD03', 800000000, 5),
	('F007', 'FAST & FURIOUS', 'G001', 'A004', 'PD05', 830000000, 2),
	('F008', 'HABIBIE AND AINUN', 'G004', 'A005', 'PD03', 670000000, 4),
	('F009', 'POLICE STORY', 'G001', 'A003', 'PD02', 700000000, 3),
	('F010', 'POLICE STORY 2', 'G001', 'A003', 'PD02', 710000000, 1),
	('F011', 'POLICE STORY 3', 'G001', 'A003', 'PD02', 615000000, 0),
	('F012', 'RUSH HOUR', 'G003', 'A003', 'PD05', 695000000, 2),
	('F013', 'KUNGFU PANDA', 'G003', 'A003', 'PD05', 923000000, 5);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
