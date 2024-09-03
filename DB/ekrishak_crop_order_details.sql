CREATE DATABASE  IF NOT EXISTS `ekrishak` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ekrishak`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ekrishak
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `crop_order_details`
--

DROP TABLE IF EXISTS `crop_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crop_order_details` (
  `order_id` int NOT NULL,
  `crop_id` int DEFAULT NULL,
  `farmer_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `driver_id` int DEFAULT NULL,
  `order_amount` int NOT NULL,
  `approved` tinyint NOT NULL DEFAULT '0',
  `orderDate` varchar(45) DEFAULT 'null',
  PRIMARY KEY (`order_id`),
  KEY `vendor_details_idx` (`vendor_id`),
  KEY `farmer_detail_idx` (`farmer_id`),
  KEY `driver_details_idx` (`driver_id`),
  KEY `crop_details_idx` (`crop_id`),
  CONSTRAINT `crop_details` FOREIGN KEY (`crop_id`) REFERENCES `crop_details` (`cr_id`),
  CONSTRAINT `driver_details` FOREIGN KEY (`driver_id`) REFERENCES `driver_details` (`driver_id`),
  CONSTRAINT `farmer_detail` FOREIGN KEY (`farmer_id`) REFERENCES `farmer_details` (`id`),
  CONSTRAINT `vendor_detail` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_details` (`ven_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop_order_details`
--

LOCK TABLES `crop_order_details` WRITE;
/*!40000 ALTER TABLE `crop_order_details` DISABLE KEYS */;
INSERT INTO `crop_order_details` VALUES (1912,3882,731,5535,8244,5000,1,'null'),(4172,6041,9223,9755,6084,22500,1,'null'),(4947,2534,2030,3837,NULL,5000,1,'null'),(5494,6769,2720,3837,NULL,20000,1,'null'),(9441,2865,9223,5535,7448,15000,1,'null');
/*!40000 ALTER TABLE `crop_order_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 15:16:04
