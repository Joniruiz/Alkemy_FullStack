-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: db_alkemy
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'comida');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operations` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `amount` int(255) NOT NULL,
  `updatedAt` date DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `category_id` int(50) NOT NULL,
  `operation_type` varchar(100) NOT NULL,
  `concept` text NOT NULL,
  `user_id` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_FK` (`category_id`),
  KEY `operations_FK_1` (`user_id`),
  CONSTRAINT `operations_FK` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `operations_FK_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (7,2000,'2022-01-14',NULL,1,'ingresando','gonza pelozo',1),(9,123,'2022-01-13','2022-01-13',1,'ingreso','porque si',1),(10,100,'2022-01-13','2022-01-13',1,'ingreso','porque no',1),(11,100,'2022-01-13','2022-01-13',1,'ingreso','porque siiiii',1),(12,20,'2022-02-02','2022-02-02',1,'egreso','Mc donalds',14),(13,2,'2022-02-04','2022-02-04',1,'egreso','Porque si',14),(14,2,'2022-02-04','2022-02-04',1,'egreso','Porque si',14);
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'roberto','robertgmail.com','asd123',''),(6,'Roberto','asdadss@gmail.com','$2a$10$n0AEPllknf8gxFD1RY0rb.cOxypWP/t720wKxgz7ZLuQQUBPxXbrO',''),(7,'Ricardo','asdadssss@gmail.com','$2a$10$blzHDo08EAvW242EkJRWjO/A01rF03dRJXUcyYwpW0C2tX6mRnzzG',''),(11,'Gonza','mail1@gmail.com','$2a$10$AATpIYuVmykFhhk6NMA58.3Yyv5Kduu.JyTDBrZdDG4obQuUnxoBm',''),(13,'Aime','mail@gmail.com','$2a$10$uTPo8.L8HVL9Yj6oqCUJEuRMc7rn/XvYKc7UMDvqFRVEEkZeP4DLq','Pelozo'),(14,'Yo','prueba@prueba.com','$2b$10$XCsSNi/Wb0GBLjZZZSQpGOZy2QPFeGyGHFLsiSyzOTGUMPQ2z1eXW','Tu'),(16,'Jorge','prueba1@prueba.com','$2b$10$TAAakCIVXNsSORYoj/XbHeCpIRn1I1W.VtlP7RtGy0xKtdDeLUkH6','Roberto'),(17,'Juan','prueba22@mail.com','$2b$10$YWTchDZfONY3r5VltorQd.I.Mza1PD0UDO.V/F6q3oo3I.lDYOTvS',''),(18,'Aime','gonzalo@mail.com','$2b$10$IJAwsRTTutEpsOnpFu1AFe45fG15rcfknnCxQstVqqWu6Gtxxz4.a',''),(19,'Probando','mail33@mail33.com','$2b$10$pSruNrXLxivip3CEGlMLQelHRYJosmiFdf0M.DZyz7HvU9rcVpr3S',''),(20,'asd','email@email.com','$2b$10$2orZV3HKtnV9ApEPQxs9U.kbAIjj0Xk4cPLImlc4U9ctGMJ7GnJ6G',''),(21,'asd','email.123@gmail.com','$2b$10$XfKrCi95hzL3XMETJPaw4.oTmPfkCc/jJB9qvcBsQ3HZKR1alzn8a',''),(22,'dsa','asd@easd.com','$2b$10$rf2NlVpx6xsrpUC4mY/wce38JPOdzqfar33PzKFlLXD7N.UnRbYNW',''),(23,'asd','asdsa@adwqsd.com','$2b$10$uCjBS9BAjwhwvNjSHtxpeuGbEPE9eiOnAGyRexTrOlhlREl9CdFY2',''),(24,'asd','wedqd@asdas.com','$2b$10$GmLh9TLYVYacZDW70KOMrOPC17vosBo7CrtoR5qinP0OhoxKRTI/u',''),(25,'asd','ssss@mail.com','$2b$10$dSyoy5gty0AsGc9Fph72hujNV7GhV2o63PSC5V047oUyr/M4XNdIa',''),(26,'asdadsa','aaa@mail.com','$2b$10$YFdqaQK3vaOy8KLVkGARu.w6JIBCHeXceTM/0QyGdmPpTUr9YLJda',''),(27,'asdasd','asdas@mail.com','$2b$10$vadhS/nJSELMJiWtNIAY1emElh8QwNz/2JGdlpdyhMUe26INlXcXq','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_alkemy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-21 12:18:40
