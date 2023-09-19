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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-18 09:55:31.458148'),(2,'auth','0001_initial','2023-09-18 09:55:31.968822'),(3,'admin','0001_initial','2023-09-18 09:55:32.077682'),(4,'admin','0002_logentry_remove_auto_add','2023-09-18 09:55:32.087262'),(5,'admin','0003_logentry_add_action_flag_choices','2023-09-18 09:55:32.098694'),(6,'contenttypes','0002_remove_content_type_name','2023-09-18 09:55:32.172728'),(7,'auth','0002_alter_permission_name_max_length','2023-09-18 09:55:32.222065'),(8,'auth','0003_alter_user_email_max_length','2023-09-18 09:55:32.256213'),(9,'auth','0004_alter_user_username_opts','2023-09-18 09:55:32.267898'),(10,'auth','0005_alter_user_last_login_null','2023-09-18 09:55:32.347028'),(11,'auth','0006_require_contenttypes_0002','2023-09-18 09:55:32.351627'),(12,'auth','0007_alter_validators_add_error_messages','2023-09-18 09:55:32.365055'),(13,'auth','0008_alter_user_username_max_length','2023-09-18 09:55:32.421399'),(14,'auth','0009_alter_user_last_name_max_length','2023-09-18 09:55:32.478467'),(15,'auth','0010_alter_group_name_max_length','2023-09-18 09:55:32.503359'),(16,'auth','0011_update_proxy_permissions','2023-09-18 09:55:32.516234'),(17,'auth','0012_alter_user_first_name_max_length','2023-09-18 09:55:32.575223'),(18,'captcha','0001_initial','2023-09-18 09:55:32.600904'),(19,'captcha','0002_alter_captchastore_id','2023-09-18 09:55:32.606996'),(20,'seller','0001_initial','2023-09-18 09:55:32.684888'),(21,'seller','0002_rename_pprice_product_price','2023-09-18 09:55:32.701957'),(22,'myapp','0001_initial','2023-09-18 09:55:32.726282'),(23,'myapp','0002_user_propic','2023-09-18 09:55:32.751467'),(24,'myapp','0003_cart','2023-09-18 09:55:32.845532'),(25,'myapp','0004_cart_total','2023-09-18 09:55:32.870049'),(26,'sessions','0001_initial','2023-09-18 09:55:32.907052');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-19  0:25:25
