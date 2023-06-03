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
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'What is the money?',200,5,'2023-06-03 20:53:39','2023-06-03 20:53:39','/raulalhena/what-is-money/','money, whatismoney, money value'),(2,'Fiat money is scam',200,5,'2023-06-03 21:14:47','2023-06-03 21:14:47','/raulalhena/fiat-money-is-scam/','money, fiat money, scam'),(3,'Gold standard was terminated in 1972',200,5,'2023-06-03 21:17:49','2023-06-03 21:17:49','/raulalhena/gold-standard-was-terminated-in-1972/','money, gold standard, no more gold standard'),(4,'The authentic capitalism Austrian Economics School',200,5,'2023-06-03 21:21:38','2023-06-03 21:21:38','/raulalhena/the-authentic-capitalism-austrian-economics-school','capitalism, austrian economic school, social economics'),(5,'How to create your wealth',200,5,'2023-06-03 21:25:31','2023-06-03 21:25:31','/raulalhena/how-to-create-your-wealth','create wealth, become rich, earn money'),(6,'7 passive income ideas',200,5,'2023-06-03 21:28:19','2023-06-03 21:28:19','/raulalhena/7-passive-income-ideas','passive income, earn money, quitting my job'),(7,'Bitcoin the free finance system',200,5,'2023-06-03 21:29:50','2023-06-03 21:29:50','/raulalhena/bitcoin-the-free-finance-system','bitcoin, blockchain'),(8,'Manage day-to-day finances',200,5,'2023-06-03 21:31:53','2023-06-03 21:31:53','/raulalhena/manage-day-to-day-finances','budgetting, finance habits, save money'),(9,'10 habits of self-made millionares',200,5,'2023-06-03 21:35:19','2023-06-03 21:35:19','/raulalhena/10-habits-of-self-made-millionaires','financial habits, what millionaires do, investing money'),(10,'How invest your money wisely',200,5,'2023-06-03 21:36:23','2023-06-03 21:36:23','/raulalhena/how-invest-your-money-wisely','investing money, save money, budgetting');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `course_has_review`
--

LOCK TABLES `course_has_review` WRITE;
/*!40000 ALTER TABLE `course_has_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_has_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `course_has_topic`
--

LOCK TABLES `course_has_topic` WRITE;
/*!40000 ALTER TABLE `course_has_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_has_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `course_has_user`
--

LOCK TABLES `course_has_user` WRITE;
/*!40000 ALTER TABLE `course_has_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_has_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `difficulty`
--

LOCK TABLES `difficulty` WRITE;
/*!40000 ALTER TABLE `difficulty` DISABLE KEYS */;
/*!40000 ALTER TABLE `difficulty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `direct_message`
--

LOCK TABLES `direct_message` WRITE;
/*!40000 ALTER TABLE `direct_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `direct_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'Finance'),(2,'Personal Development'),(3,'Technology'),(4,'Social and Natural Sciences'),(5,'Arts and Culture');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Deniz','Ozerdogan','denizozerdogan','deniz@gmail.com','1234567',NULL,1000),(3,'tito','fajardo','titofc','tito@gmail.com','123458',NULL,1000),(4,'Raúl','Alhena','raulalhena','raul@gmail.com','12345678',NULL,1000);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-06-03 21:42:30
