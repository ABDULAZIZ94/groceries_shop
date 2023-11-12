-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: grocery_shop
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bills` (
  `#id` int(11) NOT NULL AUTO_INCREMENT,
  `grand_total` int(11) NOT NULL,
  PRIMARY KEY (`#id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `#id` int(255) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `price_#id` int(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`#id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Nasi Lemak',7,'2023-11-22','2024-11-09'),(2,'Roti Canai',12,'2024-01-08','2028-06-15'),(3,'Char Kway Teow',2,'2023-12-14','2027-03-22'),(4,'Laksa',9,'2024-02-02','2025-09-01'),(5,'Hainanese Chicken Rice',9,'2024-01-17','2029-12-18'),(6,'Satay',13,'2024-03-05','2026-08-05'),(7,'Rendang',12,'2023-12-29','2028-02-14'),(8,'Mee Goreng',2,'2024-02-25','2025-07-30'),(9,'Nasi Goreng',10,'2023-12-02','2027-11-12'),(10,'Chicken Curry',15,'2024-03-18','2026-04-25'),(11,'Nasi Ayam',9,'2023-11-29','2028-10-09'),(12,'Hokkien Mee',4,'2024-02-12','2027-01-20'),(13,'Otak-Otak',6,'2024-02-20','2025-06-07'),(14,'Rojak',8,'2024-01-31','2029-12-02'),(15,'Cendol',9,'2024-03-10','2026-09-16'),(16,'Murtabak',6,'2024-01-24','2027-05-03'),(17,'Popiah',14,'2024-03-28','2028-11-28'),(18,'Nasi Kandar',5,'2023-11-20','2025-08-10'),(19,'Ayam Percik',14,'2024-03-23','2029-03-22'),(20,'Nasi Kerabu',1,'2024-02-08','2027-07-14'),(21,'Lontong',9,'2023-12-09','2025-11-01'),(22,'Kuih-muih (assorted Malaysian desserts)',14,'2024-02-16','2026-02-19'),(23,'Mee Rebus',14,'2024-01-03','2028-09-07'),(24,'Ikan Bakar',15,'2024-03-14','2027-04-25'),(25,'Sup Kambing',6,'2024-01-27','2026-12-12'),(26,'Prawn Mee',8,'2024-02-29','2029-06-03'),(27,'Kway Teow Soup',3,'2024-03-31','2025-10-18'),(28,'Banana Leaf Rice',15,'2023-11-26','2027-01-05'),(29,'Mee Siam',9,'2024-03-01','2028-07-28'),(30,'Kuih Lapis',1,'2024-01-10','2026-03-09');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `#id` int(255) NOT NULL,
  `price_val` double(255,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`#id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,87.96),(2,49.22),(3,84.40),(4,86.97),(5,53.47),(6,13.40),(7,30.63),(8,86.55),(9,16.37),(10,6.09),(11,43.82),(12,91.77),(13,57.28),(14,69.15),(15,58.03),(16,44.01),(17,33.57),(18,5.80),(19,5.26),(20,52.00),(21,48.00),(22,31.00);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sold_items`
--

DROP TABLE IF EXISTS `sold_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sold_items` (
  `#id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_#no` int(11) NOT NULL,
  `item_#id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`#id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_items`
--

LOCK TABLES `sold_items` WRITE;
/*!40000 ALTER TABLE `sold_items` DISABLE KEYS */;
INSERT INTO `sold_items` VALUES (1,7,8,4),(2,7,11,5),(3,1,24,7),(4,1,10,6),(5,3,1,1);
/*!40000 ALTER TABLE `sold_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 19:02:06
