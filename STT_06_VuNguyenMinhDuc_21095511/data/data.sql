-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               10.11.7-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.8.0.6935
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for stt_06_vunguyenminhduc_21095511
CREATE DATABASE IF NOT EXISTS `stt_06_vunguyenminhduc_21095511` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `stt_06_vunguyenminhduc_21095511`;

-- Dumping structure for table stt_06_vunguyenminhduc_21095511.flights
CREATE TABLE IF NOT EXISTS `flights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airplane_name` varchar(255) DEFAULT NULL,
  `arrival_airport` varchar(255) DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_airport` varchar(255) DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `flight_status` tinyint(4) DEFAULT NULL,
  `seat_fare` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table stt_06_vunguyenminhduc_21095511.flights: ~5 rows (approximately)
INSERT INTO `flights` (`id`, `airplane_name`, `arrival_airport`, `arrival_date`, `departure_airport`, `departure_date`, `flight_status`, `seat_fare`) VALUES
	(1, 'Airbus 0001', 'HCM', '2024-12-21', 'HN', '2024-12-21', 0, 1),
	(2, 'Airbus 0002', 'HCM', '2024-12-20', 'HN', '2024-12-20', 1, 1),
	(3, 'Airbus 0002', 'HN', '2024-12-21', 'HP', '2024-12-21', 0, 1),
	(4, 'Boeing 0001', 'NG', '2024-12-21', 'CM', '2024-12-21', 0, 2),
	(5, 'Boeing 0002', 'as', '2024-12-21', 'zx', '2024-12-21', 1, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
