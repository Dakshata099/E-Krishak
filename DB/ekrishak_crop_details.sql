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
-- Table structure for table `crop_details`
--

DROP TABLE IF EXISTS `crop_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crop_details` (
  `cr_id` int NOT NULL,
  `cr_name` varchar(45) NOT NULL,
  `cr_type` varchar(45) NOT NULL,
  `cr_quantity` int NOT NULL,
  `cr_price` int NOT NULL,
  `user_id` int NOT NULL,
  `cr_sold` tinyint NOT NULL DEFAULT '0',
  `cr_img` varchar(200) DEFAULT 'https://images.unsplash.com/photo-1529511582893-2d7e684dd128?q=80&w=1033&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  `seller_id` int DEFAULT NULL,
  `buyer_id` int DEFAULT NULL,
  PRIMARY KEY (`cr_id`),
  KEY `ven_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Crop Details are stored here in this Table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop_details`
--

LOCK TABLES `crop_details` WRITE;
/*!40000 ALTER TABLE `crop_details` DISABLE KEYS */;
INSERT INTO `crop_details` VALUES (922,'Rice','Grains',10,10,9223,1,'../assets/img/',9223,NULL),(2534,'peas','Legumes',200,25,2030,1,'../assets/img/',2030,3837),(2865,'Rice','Grains',600,25,2720,1,'../assets/img/',9223,5535),(3882,'Rice','Grains',200,25,9223,1,'../assets/img/vegetable.png',731,5535),(4776,'Rice','Grains',300,40,1478,0,'../assets/img/',NULL,NULL),(5561,'Soya Bean','Legumes',100,40,3837,0,'../assets/img/',NULL,NULL),(6041,'Rice','Grains',500,45,9223,1,'https://images.unsplash.com/photo-1529511582893-2d7e684dd128?q=80&w=1033&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',9223,9755),(6428,'Peas','Legumes',100,25,8738,1,'../assets/img/vendorLogin2.jpg',8738,9755),(6769,'Wheat','Grains',500,40,3837,1,'../assets/img/',2720,3837),(7917,'Peas','Legumes',200,20,9223,1,'../assets/img/',9223,9755),(8667,'Wheat','Grains',200,40,9223,1,'../assets/img/',9223,5535),(9842,'Peanut','Legumes',250,45,3837,0,'../assets/img/',NULL,NULL);
/*!40000 ALTER TABLE `crop_details` ENABLE KEYS */;
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
