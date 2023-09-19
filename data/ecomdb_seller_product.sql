CREATE DATABASE  IF NOT EXISTS `ecomdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecomdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ecomdb
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
-- Table structure for table `seller_product`
--

DROP TABLE IF EXISTS `seller_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ppic` varchar(100) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `qty` int NOT NULL,
  `desc` varchar(500) NOT NULL,
  `seller_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_product_seller_id_6fbf4463_fk_seller_seller_user_id` (`seller_id`),
  CONSTRAINT `seller_product_seller_id_6fbf4463_fk_seller_seller_user_id` FOREIGN KEY (`seller_id`) REFERENCES `seller_seller_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_product`
--

LOCK TABLES `seller_product` WRITE;
/*!40000 ALTER TABLE `seller_product` DISABLE KEYS */;
INSERT INTO `seller_product` VALUES (1,'product_image/product-img-2.jpg','Grapes',100,10,'its good for health',1),(2,'product_image/product-img-4.jpg','kivi',800,12,'good for eyes and body',1),(3,'product_image/lappy.jfif','Brand New Laptop',25000,32,'New technology inbuilt',1),(4,'product_image/mob.jfif','Mobile one',12000,43,'8 GB RAM 256 GB Memory',1),(5,'product_image/lap2.jfif','laptop 2',87000,10,'i7 generation with multi functionality',1);
/*!40000 ALTER TABLE `seller_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-19  0:25:26
