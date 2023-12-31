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
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captcha_captchastore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (1,'JEXS','jexs','415674324a49884f86b04583a3e872b25ca0c02c','2023-09-18 10:40:03.883353'),(2,'NHSD','nhsd','702c6dd824ae41641961cadee94eba288f9ee8dc','2023-09-18 11:14:49.512003'),(3,'RSKM','rskm','388dfd6d4ce1cf94d7d51cfb3de74248fdae4cdc','2023-09-18 11:18:24.585734'),(4,'YYWP','yywp','f108155bc6bf69b8b10c1670d94a7f90941543c9','2023-09-18 11:18:45.994334'),(5,'HKOO','hkoo','be8744f110427fdb37e79dbc4e1f1b57483b2862','2023-09-18 11:52:50.837063'),(6,'KYTE','kyte','e819855e1faada936caf19e4e0bfcd35f3d4d9a2','2023-09-18 11:53:13.973596'),(7,'LABL','labl','3f1d5b751bbb47aa61e6577025e0c6607a4923ae','2023-09-18 14:41:04.936973'),(8,'QAMT','qamt','9b39908a712c61957797feaa339a8592a6e3fa6f','2023-09-18 14:44:10.450103'),(9,'MYFY','myfy','b5a50a70b260ef182a1a48fce8daf6b6243a2ef2','2023-09-18 14:44:46.816340'),(10,'XJGN','xjgn','fad2c7faaa14f298f6bdec858eff69e8901cdc05','2023-09-18 14:47:43.385188'),(11,'AKYF','akyf','cfa508df96ce9b96b26cfad8a76257ea5cf16378','2023-09-18 14:52:55.309309'),(12,'DRHU','drhu','f4e56baedbdb8c107724f09df9ca18c0604164fc','2023-09-18 15:01:50.733477'),(13,'OMNU','omnu','5c245703a9ec5f8b419550b7428f7798b93e513d','2023-09-18 15:08:15.560707'),(14,'OUDC','oudc','1ace34e050b67343583ef68c31d49fef4008b91e','2023-09-18 15:13:35.476241'),(15,'QSNE','qsne','7393e23b07c91c0e404b1acb2f25793366c49b90','2023-09-18 15:29:22.487004'),(16,'UFWB','ufwb','232a4b7920821c68529f4d37d0f5e2d15995d78c','2023-09-18 17:15:13.695867'),(17,'ZAYG','zayg','1d5a68ef7d020b44ece5db30438f71fafbaf81e7','2023-09-18 17:15:54.383387');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
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
