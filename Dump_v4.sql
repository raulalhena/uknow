-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: uknow
-- ------------------------------------------------------
-- Server version	8.0.33

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
  `difficulty` enum('easy','medium','hard') NOT NULL,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idcourse_UNIQUE` (`id`),
  KEY `course_author` (`author_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Introduction to Sociology',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/introduction-to-sociology/','social sciences, sociology','easy',1),(2,'Biology 101',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/biology-101/','natural sciences, biology','easy',1),(3,'Psychology Fundamentals',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/psychology-fundamentals/','social sciences, psychology','easy',1),(4,'Chemistry Basics',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/chemistry-basics/','natural sciences, chemistry','easy',1),(5,'World History Overview',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/world-history-overview/','social sciences, history','easy',1),(6,'Environmental Science',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/environmental-science/','natural sciences, environment','hard',1),(7,'Introduction to Anthropology',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/introduction-to-anthropology/','social sciences, anthropology','medium',1),(8,'Physics for Beginners',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/physics-for-beginners/','natural sciences, physics','easy',1),(9,'Political Science 101',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/political-science-101/','social sciences, political science','easy',1),(10,'Geology: Earth and Its Processes',200,5,'2023-06-02 18:34:59','2023-06-02 18:34:59','/denizozerdogan/geology-earth-and-its-processes','natural sciences, geology','hard',1),(11,'Mastering Time Management',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/mastering-time-management/','Time management, Productivity','easy',41),(12,'Effective Communication Skills',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/effective-communication-skills/','Communication, Interpersonal skills','medium',41),(13,'Goal Setting and Achievement',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/goal-setting-and-achievement/','Goal setting, Motivation','easy',41),(14,'Building Resilience and Emotional Intelligence',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/building-resilience-and-emotinal-intelligence/','Resilience','medium',41),(15,'Mindfulness and Meditation for Personal Growth',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/mindfulness-and-meditation-for-personal-growth/','Mindfulness, Meditation','medium',41),(16,'Boosting Self-Confidence and Self-Esteem',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/boosting-self-confidence-and-self-esteem/','Self-confidence, Self-esteem','easy',41),(17,'Financial Literacy and Wealth Management',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/financial-literacy-and-wealth-management/','Financial literacy, Money management','hard',41),(18,'Leadership Development and Team Building',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/leadership-development-and-team-building/','Leadership skills, Team management','medium',41),(19,'Introduction to Art History',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/introduction-to-art-history/','Art history, Visual arts','easy',41),(20,'Exploring World Cinema',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/exploring-world-cinema/','Film studies, World cinema','easy',41),(21,'Creative Writing Workshop',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/creative-writing-workshop/','Creative writing, Storytelling','medium',41),(22,'Introduction to Music Theory',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/introdcution-to-music-theory/','Music theory, Musical composition','easy',41),(23,'Photography Essentials: From Basics to Artistic Vision',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/photography-essentials-from-basics-to-artistic-vision/','Photography, Composition','medium',41),(24,'Theatre and Performance Studies',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/theatre-and-performance-studies/','Theatre, Performance art','easy',41),(25,'Exploring Cultural Diversity: Anthropology in Practice',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/exploring-cultural-diversity-antrhopology-in-practice/','Cultural anthropology, Cultural diversity','hard',41),(26,'Fashion Design and Styling',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/fashion-design-and-styling/',' Fashion design, Styling','hard',41),(27,'Exploring Contemporary Art Movements',200,5,'2023-06-03 23:21:41','2023-06-03 23:21:41','/carlossaiz/exploring-contemporary-art-movements/','Contemporary art, Art movements','easy',41),(28,'First steps learning guitar',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/first-steps-learning-guitar/','guitar,music,concert','easy',2),(29,'Can i have a motorcycle',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/can-i-have-a-motorcycle/','bike,moto,motorcycle','easy',2),(30,'Cooking the best Arepas',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/cooking-the-best-arepas/','food,arepa,eat','easy',2),(31,'How to drink beer and loose weight',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/how-to-drink-beer-and-loose-weight/','beer,drinking,health','medium',2),(32,'Install windows by yourself',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/install-windows-by-yourself/','computer,pc,windows','medium',2),(33,'Why apple is better than windows',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/why-apple-is-better-than-windows/','computer,apple,system','easy',2),(34,'Car maintenance',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/car-maintenance/','car,maintnance,repair','medium',2),(35,'How to change a tire',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/how-to-change-a-tire/','tires,car,maintenance','easy',2),(36,'How to fix a computer',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/how-to-fix-a-computer/','computers,fixing,reapir','hard',2),(37,'Best gpu in the market',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/best-gpu-in-the-market/','gpu,gaming,pc','easy',2),(38,'The secret for a good speech',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/the-secret-for-a-good-speech/','speech,talking,teaching','medium',2),(39,'How to control your emotions',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/how-to-control-your-emotions/','emotions,mental,control','easy',2),(40,'Minimalist in 5 simple steps',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/minimalist-in-5-simple-steps/','minimalist,reduce,small','easy',2),(41,'Why renting and not buying',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/why-renting-and-not-buying/','money,buying,renting','medium',2),(42,'top metal legends',200,5,'2023-06-04 12:50:36','2023-06-04 12:50:36','/titofajardo/top-metal-legends/','metal,music,legends','easy',2),(43,'What is the money?',200,5,'2023-06-03 20:53:39','2023-06-03 20:53:39','/raulalhena/what-is-money/','money, whatismoney, money value','easy',40),(44,'Fiat money is scam',200,5,'2023-06-03 21:14:47','2023-06-03 21:14:47','/raulalhena/fiat-money-is-scam/','money, fiat money, scam','easy',40),(45,'Gold standard was terminated in 1972',200,5,'2023-06-03 21:17:49','2023-06-03 21:17:49','/raulalhena/gold-standard-was-terminated-in-1972/','money, gold standard, no more gold standard','medium',40),(46,'The authentic capitalism Austrian Economics School',200,5,'2023-06-03 21:21:38','2023-06-03 21:21:38','/raulalhena/the-authentic-capitalism-austrian-economics-school','capitalism, austrian economic school, social economics','hard',40),(47,'How to create your wealth',200,5,'2023-06-03 21:25:31','2023-06-03 21:25:31','/raulalhena/how-to-create-your-wealth','create wealth, become rich, earn money','medium',40),(48,'7 passive income ideas',200,5,'2023-06-03 21:28:19','2023-06-03 21:28:19','/raulalhena/7-passive-income-ideas','passive income, earn money, quitting my job','easy',40),(49,'Bitcoin the free finance system',200,5,'2023-06-03 21:29:50','2023-06-03 21:29:50','/raulalhena/bitcoin-the-free-finance-system','bitcoin, blockchain','easy',40),(50,'Manage day-to-day finances',200,5,'2023-06-03 21:31:53','2023-06-03 21:31:53','/raulalhena/manage-day-to-day-finances','budgetting, finance habits, save money','medium',40),(51,'10 habits of self-made millionares',200,5,'2023-06-03 21:35:19','2023-06-03 21:35:19','/raulalhena/10-habits-of-self-made-millionaires','financial habits, what millionaires do, investing money','easy',40),(52,'How invest your money wisely',200,5,'2023-06-03 21:36:23','2023-06-03 21:36:23','/raulalhena/how-invest-your-money-wisely','investing money, save money, budgetting','hard',40);
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
  PRIMARY KEY (`review_id`,`course_id`),
  KEY `fk_review_has_course_course1_idx` (`course_id`),
  KEY `fk_review_has_course_review1_idx` (`review_id`),
  CONSTRAINT `fk_review_has_course_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `fk_review_has_course_review1` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_has_review`
--

LOCK TABLES `course_has_review` WRITE;
/*!40000 ALTER TABLE `course_has_review` DISABLE KEYS */;
INSERT INTO `course_has_review` VALUES (37,1),(39,2),(44,3),(47,4),(49,5),(1,6),(5,7),(7,8),(10,9),(12,10),(14,11),(4,12),(9,13),(43,14),(16,15),(19,16),(24,17),(28,18),(31,19),(34,20),(42,21),(45,22),(48,23),(2,24),(8,25),(13,26),(18,27),(22,28),(27,29),(29,30),(33,31),(36,32),(41,33),(46,34),(50,35),(3,36),(15,37),(21,38),(25,39),(11,40),(6,41),(17,42),(20,43),(23,44),(26,45),(30,46),(32,47),(35,48),(38,49),(40,50),(51,51),(52,52);
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
INSERT INTO `course_has_topic` VALUES (4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(5,19),(5,20),(5,21),(5,22),(5,23),(5,24),(5,25),(5,26),(5,27),(5,28),(3,29),(5,30),(2,31),(3,32),(3,33),(3,34),(3,35),(3,36),(3,37),(2,38),(2,39),(5,40),(1,41),(5,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52);
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
INSERT INTO `course_has_user` VALUES (12,1),(51,1),(13,2),(52,2),(40,3),(15,4),(16,5),(17,6),(18,7),(19,8),(20,9),(1,10),(2,11),(3,12),(4,13),(5,14),(6,15),(7,16),(8,17),(9,18),(10,19),(11,20),(42,21),(43,22),(44,23),(45,24),(46,25),(47,26),(48,27),(49,28),(50,29),(21,30),(22,31),(23,32),(24,33),(25,34),(26,35),(27,36),(28,37),(29,38),(30,39),(31,40),(32,41),(33,42),(34,43),(35,44),(36,45),(37,46),(38,47),(39,48),(14,49),(41,50);
/*!40000 ALTER TABLE `course_has_user` ENABLE KEYS */;
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
  `petition_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_sender_id_idx` (`sender_id`),
  KEY `fk_requested_id_idx` (`requested_id`),
  CONSTRAINT `fk_requested_id` FOREIGN KEY (`requested_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_sender_id` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direct_message`
--

LOCK TABLES `direct_message` WRITE;
/*!40000 ALTER TABLE `direct_message` DISABLE KEYS */;
INSERT INTO `direct_message` VALUES (1,1,41,'2023-06-05 16:36:29'),(2,2,41,'2023-06-05 16:36:29'),(3,3,41,'2023-06-05 16:36:29'),(4,4,41,'2023-06-05 16:36:29'),(5,5,41,'2023-06-05 16:36:29'),(6,6,41,'2023-06-05 16:36:29'),(7,7,41,'2023-06-05 16:36:29'),(8,8,41,'2023-06-05 16:36:29'),(9,9,41,'2023-06-05 16:36:29'),(10,10,41,'2023-06-05 16:36:29'),(11,11,41,'2023-06-05 16:36:29'),(12,12,41,'2023-06-05 16:36:29'),(13,13,41,'2023-06-05 16:36:29'),(14,14,41,'2023-06-05 16:36:29'),(15,15,41,'2023-06-05 16:36:29'),(16,16,41,'2023-06-05 16:36:29'),(17,17,41,'2023-06-05 16:36:29'),(18,18,41,'2023-06-05 16:36:29'),(19,19,41,'2023-06-05 16:36:29'),(20,20,40,'2023-06-05 16:36:29'),(21,21,40,'2023-06-05 16:36:29'),(22,22,40,'2023-06-05 16:36:29'),(23,23,40,'2023-06-05 16:36:29'),(24,24,40,'2023-06-05 16:36:29'),(25,25,40,'2023-06-05 16:36:29'),(26,26,40,'2023-06-05 16:36:29'),(27,27,40,'2023-06-05 16:36:29'),(28,28,40,'2023-06-05 16:36:29'),(29,29,40,'2023-06-05 16:36:29'),(30,30,1,'2023-06-05 16:36:29'),(31,31,1,'2023-06-05 16:36:29'),(32,32,1,'2023-06-05 16:36:29'),(33,33,1,'2023-06-05 16:36:29'),(34,34,1,'2023-06-05 16:36:29'),(35,35,1,'2023-06-05 16:36:29'),(36,36,1,'2023-06-05 16:36:29'),(37,37,1,'2023-06-05 16:36:29'),(38,38,1,'2023-06-05 16:36:29'),(39,39,1,'2023-06-05 16:36:29'),(40,40,2,'2023-06-05 16:36:29'),(41,41,2,'2023-06-05 16:36:29'),(42,42,2,'2023-06-05 16:36:29'),(43,43,2,'2023-06-05 16:36:29'),(44,44,2,'2023-06-05 16:36:29'),(45,45,2,'2023-06-05 16:36:29'),(46,46,2,'2023-06-05 16:36:29'),(47,47,2,'2023-06-05 16:36:29'),(48,48,2,'2023-06-05 16:36:29'),(49,49,2,'2023-06-05 16:36:29'),(50,50,41,'2023-06-05 16:36:29');
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`) /*!80000 INVISIBLE */
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,4,'This was a good course and there were interesting concepts in it. ',15),(2,3,'This was an average course, there is space for improvements.',33),(3,2,'This was a below-average course, the author must improve it as the content feels incomplete.',45),(4,5,'This was an excellent course and I learned a lot!',1),(5,4,'This was a good course and there were interesting concepts in it. ',16),(6,1,'This is a bad course and I definitely do not recommend it to anyone!!!',50),(7,4,'This was a good course and there were interesting concepts in it. ',17),(8,3,'This was an average course, there is space for improvements.',34),(9,5,'This was an excellent course and I learned a lot!',2),(10,4,'This was a good course and there were interesting concepts in it. ',18),(11,5,'This was an excellent course and I learned a lot!',3),(12,4,'This was a good course and there were interesting concepts in it. ',19),(13,3,'This was an average course, there is space for improvements.',35),(14,4,'This was a good course and there were interesting concepts in it. ',20),(15,2,'This was a below-average course, the author must improve it as the content feels incomplete.',46),(16,5,'This was an excellent course and I learned a lot!',4),(17,4,'This was a good course and there were interesting concepts in it. ',21),(18,3,'This was an average course, there is space for improvements.',36),(19,5,'This was an excellent course and I learned a lot!',5),(20,4,'This was a good course and there were interesting concepts in it. ',22),(21,2,'This was a below-average course, the author must improve it as the content feels incomplete.',47),(22,3,'This was an average course, there is space for improvements.',37),(23,4,'This was a good course and there were interesting concepts in it. ',23),(24,5,'This was an excellent course and I learned a lot!',6),(25,2,'This was a below-average course, the author must improve it as the content feels incomplete.',48),(26,4,'This was a good course and there were interesting concepts in it. ',24),(27,3,'This was an average course, there is space for improvements.',38),(28,5,'This was an excellent course and I learned a lot!',7),(29,3,'This was an average course, there is space for improvements.',39),(30,4,'This was a good course and there were interesting concepts in it. ',25),(31,5,'This was an excellent course and I learned a lot!',8),(32,4,'This was a good course and there were interesting concepts in it. ',26),(33,3,'This was an average course, there is space for improvements.',40),(34,5,'This was an excellent course and I learned a lot!',9),(35,4,'This was a good course and there were interesting concepts in it. ',27),(36,3,'This was an average course, there is space for improvements.',41),(37,5,'This was an excellent course and I learned a lot!',10),(38,4,'This was a good course and there were interesting concepts in it. ',28),(39,5,'This was an excellent course and I learned a lot!',11),(40,4,'This was a good course and there were interesting concepts in it. ',29),(41,3,'This was an average course, there is space for improvements.',42),(42,4,'This was a good course and there were interesting concepts in it. ',30),(43,2,'This was a below-average course, the author must improve it as the content feels incomplete.',49),(44,5,'This was an excellent course and I learned a lot!',12),(45,4,'This was a good course and there were interesting concepts in it. ',31),(46,3,'This was an average course, there is space for improvements.',43),(47,5,'This was an excellent course and I learned a lot!',13),(48,4,'This was a good course and there were interesting concepts in it. ',32),(49,5,'This was an excellent course and I learned a lot!',14),(50,3,'This was an average course, there is space for improvements.',44),(51,2,'This was a below-average course, the author must improve it as the content feels incomplete.',1),(52,3,'This was an average course, there is space for improvements.',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Deniz','Ozerdogan','denizozerdogan','deniz@gmail.com','1234567',NULL,2600),(2,'Tito','Fajardo','titofc','tito@gmail.com','123458',NULL,3600),(3,'Mohammed','Ali','mohammedali','mohammed.ali@example.com','password123',NULL,800),(4,'Aisha','Khan','aishakhan','aisha.khan@example.com','qwerty456',NULL,800),(5,'Luis','Garcia','luisgarcia','luis.garcia@example.com','abc123xyz',NULL,800),(6,'Sofia','Rodriguez','sofiarodriguez','sofia.rodriguez@example.com','pass123word',NULL,800),(7,'Wei','Li','weili','wei.li@example.com','98765abc',NULL,800),(8,'Maria','Santos','mariasantos','maria.santos@example.com','mypassword',NULL,800),(9,'Mateusz','Kowalski','mateuszkowalski','mateusz.kowalski@example.com','securepass',NULL,800),(10,'Sakura','Tanaka','sakuratanaka','sakura.tanaka@example.com','letmein123',NULL,800),(11,'Ravi','Patel','ravipatel','ravi.patel@example.com','password321',NULL,800),(12,'Chloe','Nguyen','chloenguyen','chloe.nguyen@example.com','ilovecats',NULL,800),(13,'John','Smith','jsmith123','john.smith@gmail.com','password123',NULL,800),(14,'Emily','Johnson','ejohnson456','emily.johnson@hotmail.com','securepass789',NULL,800),(15,'David','Brown','dbrown789','david.brown@gmail.com','mysecretpassword',NULL,800),(16,'Sarah','Davis','sdavis321','sarah.davis@hotmail.com','pass1234word',NULL,800),(17,'Michael','Wilson','mwilson987','michael.wilson@gmail.com','strongpass789',NULL,800),(18,'Jessica','Lee','jlee567','jessica.lee@example.com','password4321',NULL,800),(19,'Matthew','Thompson','mthompson234','matthew.thompson@gmail.com','securepass987',NULL,800),(20,'Olivia','Rodriguez','orodriguez876','olivia.rodriguez@gmail.com','mysecretpass123',NULL,800),(21,'Ethan','Harris','eharris345','ethan.harris@gmail.com','pass9876word',NULL,800),(22,'Alexander','Clark','aclark234','alexander.clark@hotmail.com','mysecretpass123',NULL,800),(23,'Lily','Walker','lwalker789','lily.walker@example.com','mysecretpass890',NULL,800),(24,'Benjamin','Evans','bevans456','benjamin.evans@example.com','pass1234word',NULL,800),(25,'James','Hetfield','hetflied_james','james_hetfield@gmail.com','metallica',NULL,800),(26,'Kirk','Hammett','kirkmetallica','kirk.hammett@hotmail.com','guitargod',NULL,800),(27,'Lars','Ulrich','drummerboy','lars.busines@gmail.com','lovedrums',NULL,800),(28,'Robert','Trujillo','basspower','trujillo.bass@hotmail.com','killthebass',NULL,800),(29,'Rob','Flynn','machine.head','robguitars@gmail.com','strongviking123',NULL,800),(30,'Phil','Demmel','demmelstyle','demmel.phil@gmail.com','6stringsgod',NULL,800),(31,'Chester','Bennington','crazytrain','chester.sing@gmail.com','dontdie69',NULL,800),(32,'Mike','Shinoda','linkin.shinoda','shinoda-band@gmail.com','linkinpark666',NULL,800),(33,'Joe','Hahn','djfromhell','joe.hahn@gmail.com','no.clue.11',NULL,800),(34,'Jacoby','Shaddix','roach.baby','papa.roach@hotmail.com','roaches.everywhere',NULL,800),(35,'Fred','Durst','anarchy','allforthenookie@yahoo.com','666beerbitches',NULL,800),(36,'Wes','Borland','play.me','one-of-those-days@gmail.com','pinchme123456',NULL,800),(37,'Serj','Tankian','nuts','aerials@gmail.com','radio.video',NULL,800),(38,'Daron','Malakian','guitar.sick','grumpy@gmail.com','close.to.me465',NULL,800),(39,'Corey','Taylor','kill.me.please','rock.bottom@gmail.com','stay-away',NULL,800),(40,'Raul','Alhena','raulalhena','raul@example.com','raulisgod',NULL,2800),(41,'Carlos','Saiz','carlossaiz','carlossaiz@example.com','carlos12345',NULL,3800),(42,'Maria','Sanchez','mariasan','marisanchez@example.com','mariamaria',NULL,800),(43,'Laia','Garcia','laiaaa','laiagarcia@example.com','laia61y32',NULL,800),(44,'Laura','Martinez','laurmarti','laura.martinez@example.com','ahjfakjhf',NULL,800),(45,'Pedro','Pedroni','pedro12','pedro.pedroni@example.com','716729834',NULL,800),(46,'Lola','Mento','lolaloa','lolamento@example.com','5473hfh',NULL,800),(47,'Benito','Camelot','bentobox','bentocamelot@example.com','983994',NULL,800),(48,'Jorge','Fuentes','jorge.fuentes','jorge.fuentes@example.com','7382o9hfh',NULL,800),(49,'Alan','Morto','alanmorto','alan.morto@example.com','84y8384',NULL,800),(50,'Joseph','Brito','jobrito','jo.brito@example.com','74021j',NULL,800);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_direct_message`
--

DROP TABLE IF EXISTS `user_has_direct_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_direct_message` (
  `user_id` int NOT NULL,
  `direct_message_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`direct_message_id`),
  KEY `fk_user_has_direct message_direct message1_idx` (`direct_message_id`),
  KEY `fk_user_has_direct message_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_has_direct message_direct message1` FOREIGN KEY (`direct_message_id`) REFERENCES `direct_message` (`id`),
  CONSTRAINT `fk_user_has_direct message_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_direct_message`
--

LOCK TABLES `user_has_direct_message` WRITE;
/*!40000 ALTER TABLE `user_has_direct_message` DISABLE KEYS */;
INSERT INTO `user_has_direct_message` VALUES (41,1),(41,2),(41,3),(41,4),(41,5),(41,6),(41,7),(41,8),(41,9),(41,10),(41,11),(41,12),(41,13),(41,14),(41,15),(41,16),(41,17),(41,18),(41,19),(40,20),(40,21),(40,22),(40,23),(40,24),(40,25),(40,26),(40,27),(40,28),(40,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(2,40),(2,41),(2,42),(2,43),(2,44),(2,45),(2,46),(2,47),(2,48),(2,49),(41,50);
/*!40000 ALTER TABLE `user_has_direct_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 19:01:34
