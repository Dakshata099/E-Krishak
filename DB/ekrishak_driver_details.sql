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
-- Table structure for table `driver_details`
--

DROP TABLE IF EXISTS `driver_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_details` (
  `driver_id` int NOT NULL,
  `driver_name` varchar(45) NOT NULL,
  `driver_contact` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `vehicle_type` varchar(45) NOT NULL DEFAULT 'null',
  `driver_state` varchar(45) NOT NULL,
  `driver_city` varchar(45) NOT NULL,
  `driver_pincode` int NOT NULL,
  `driver_locality` varchar(45) NOT NULL,
  `booking_status` varchar(45) NOT NULL DEFAULT 'available',
  PRIMARY KEY (`driver_id`),
  UNIQUE KEY `driver_contact_UNIQUE` (`driver_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Transport Driver details are stored here.		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_details`
--

LOCK TABLES `driver_details` WRITE;
/*!40000 ALTER TABLE `driver_details` DISABLE KEYS */;
INSERT INTO `driver_details` VALUES (6084,'Shoiab','9868669656','123','Lorry Van','Maharashtra','Nashik',823001,'akurdi','booked'),(6965,'Vikash','9868669365','123','Tractor','Maharashtra','Nashik',435263,'Akurdi','available'),(7154,'Pratik','7882582525','123','Lorry Van','Maharashtra','Pune',448525,'Pimpri','available'),(7261,'rajiv','7845961230','123','Truck','Maharashtra','PUNE',854533,'Akurdi','pending'),(7423,'dakshata','7894561230','123','Truck','Maharashtra','PUNE',81201,'Akurdi','booked'),(7448,'Jaideep','8584518421','1234','Truck','Maharashtra','Mumbai',433204,'Gokuldham','available'),(8244,'Atul','8457845495','123','Tractor','Bihar','Patna',820582,'Patna','available'),(8710,'Aatma Ram ','9586558585','123','Tractor','Maharashtra','Mumbai',448252,'Panvel','available');
/*!40000 ALTER TABLE `driver_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 15:16:02
