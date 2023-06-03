-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: uknow
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` int NOT NULL DEFAULT '200',
  `rate` int NOT NULL DEFAULT '5',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` mediumtext NOT NULL,
  `tags` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idcourse_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'What is the money?',200,5,'2023-06-03 20:53:39','2023-06-03 20:53:39','/raulalhena/what-is-money/','money, whatismoney, money value'),(2,'Fiat money is scam',200,5,'2023-06-03 21:14:47','2023-06-03 21:14:47','/raulalhena/fiat-money-is-scam/','money, fiat money, scam'),(3,'Gold standard was terminated in 1972',200,5,'2023-06-03 21:17:49','2023-06-03 21:17:49','/raulalhena/gold-standard-was-terminated-in-1972/','money, gold standard, no more gold standard'),(4,'The authentic capitalism Austrian Economics School',200,5,'2023-06-03 21:21:38','2023-06-03 21:21:38','/raulalhena/the-authentic-capitalism-austrian-economics-school','capitalism, austrian economic school, social economics'),(5,'How to create your wealth',200,5,'2023-06-03 21:25:31','2023-06-03 21:25:31','/raulalhena/how-to-create-your-wealth','create wealth, become rich, earn money'),(6,'7 passive income ideas',200,5,'2023-06-03 21:28:19','2023-06-03 21:28:19','/raulalhena/7-passive-income-ideas','passive income, earn money, quitting my job'),(7,'Bitcoin the free finance system',200,5,'2023-06-03 21:29:50','2023-06-03 21:29:50','/raulalhena/bitcoin-the-free-finance-system','bitcoin, blockchain'),(8,'Manage day-to-day finances',200,5,'2023-06-03 21:31:53','2023-06-03 21:31:53','/raulalhena/manage-day-to-day-finances','budgetting, finance habits, save money'),(9,'10 habits of self-made millionares',200,5,'2023-06-03 21:35:19','2023-06-03 21:35:19','/raulalhena/10-habits-of-self-made-millionaires','financial habits, what millionaires do, investing money'),(10,'How invest your money wisely',200,5,'2023-06-03 21:36:23','2023-06-03 21:36:23','/raulalhena/how-invest-your-money-wisely','investing money, save money, budgetting');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_has_review`
--

DROP TABLE IF EXISTS `course_has_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_has_review` (
  `review_id` int NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`review_id`,`course_id`,`user_id`),
  KEY `fk_review_has_course_course1_idx` (`course_id`),
  KEY `fk_review_has_course_review1_idx` (`review_id`),
  KEY `fk_review_has_course_user_idx` (`user_id`),
  CONSTRAINT `fk_review_has_course_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `fk_review_has_course_review1` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`),
  CONSTRAINT `fk_review_has_course_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_has_review`
--

LOCK TABLES `course_has_review` WRITE;
/*!40000 ALTER TABLE `course_has_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_has_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_has_topic`
--

DROP TABLE IF EXISTS `course_has_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_has_topic` (
  `topic_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`topic_id`,`course_id`),
  KEY `fk_topic_has_course_course1_idx` (`course_id`),
  KEY `fk_topic_has_course_topic1_idx` (`topic_id`),
  CONSTRAINT `fk_topic_has_course_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `fk_topic_has_course_topic1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_has_topic`
--

LOCK TABLES `course_has_topic` WRITE;
/*!40000 ALTER TABLE `course_has_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_has_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_has_user`
--

DROP TABLE IF EXISTS `course_has_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_has_user` (
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  `author` tinyint NOT NULL,
  PRIMARY KEY (`course_id`,`user_id`),
  KEY `fk_course_has_user_user1_idx` (`user_id`),
  KEY `fk_course_has_user_course1_idx` (`course_id`),
  CONSTRAINT `fk_course_has_user_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `fk_course_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_has_user`
--

LOCK TABLES `course_has_user` WRITE;
/*!40000 ALTER TABLE `course_has_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_has_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `difficulty`
--

DROP TABLE IF EXISTS `difficulty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `difficulty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `level_of_difficulty` enum('easy','medium','difficult') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id_idx` (`course_id`),
  CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `difficulty`
--

LOCK TABLES `difficulty` WRITE;
/*!40000 ALTER TABLE `difficulty` DISABLE KEYS */;
/*!40000 ALTER TABLE `difficulty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direct_message`
--

DROP TABLE IF EXISTS `direct_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direct_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `requested_id` int NOT NULL,
  `petition_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_sender_id_idx` (`sender_id`),
  KEY `fk_requested_id_idx` (`requested_id`),
  CONSTRAINT `fk_requested_id` FOREIGN KEY (`requested_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_sender_id` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_message`
--

LOCK TABLES `direct_message` WRITE;
/*!40000 ALTER TABLE `direct_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `direct_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stars` tinyint NOT NULL,
  `comment` varchar(280) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` enum('Finance','Personal Development','Technology','Social and Natural Sciences','Arts and Culture') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'Finance'),(2,'Personal Development'),(3,'Technology'),(4,'Social and Natural Sciences'),(5,'Arts and Culture');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `current_course_id` int DEFAULT NULL,
  `wallet_amount` int NOT NULL DEFAULT '1000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `current_course_id_idx` (`current_course_id`),
  CONSTRAINT `fk_current_course_id` FOREIGN KEY (`current_course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Deniz','Ozerdogan','denizozerdogan','deniz@gmail.com','1234567',NULL,1000),(3,'tito','fajardo','titofc','tito@gmail.com','123458',NULL,1000),(4,'Raúl','Alhena','raulalhena','raul@gmail.com','12345678',NULL,1000);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_direct message`
--

DROP TABLE IF EXISTS `user_has_direct message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_direct message` (
  `user_id` int NOT NULL,
  `direct message_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`direct message_id`),
  KEY `fk_user_has_direct message_direct message1_idx` (`direct message_id`),
  KEY `fk_user_has_direct message_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_has_direct message_direct message1` FOREIGN KEY (`direct message_id`) REFERENCES `direct_message` (`id`),
  CONSTRAINT `fk_user_has_direct message_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_direct message`
--

LOCK TABLES `user_has_direct message` WRITE;
/*!40000 ALTER TABLE `user_has_direct message` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_direct message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03 21:38:58
