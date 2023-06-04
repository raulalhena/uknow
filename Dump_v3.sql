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
  KEY `author_id` (`author_id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Deniz','Ozerdogan','denizozerdogan','deniz@gmail.com','1234567',NULL,1000),(2,'Tito','Fajardo','titofc','tito@gmail.com','123458',NULL,1000),(3,'Mohammed','Ali','mohammedali','mohammed.ali@example.com','password123',NULL,1000),(4,'Aisha','Khan','aishakhan','aisha.khan@example.com','qwerty456',NULL,1000),(5,'Luis','Garcia','luisgarcia','luis.garcia@example.com','abc123xyz',NULL,1000),(6,'Sofia','Rodriguez','sofiarodriguez','sofia.rodriguez@example.com','pass123word',NULL,1000),(7,'Wei','Li','weili','wei.li@example.com','98765abc',NULL,1000),(8,'Maria','Santos','mariasantos','maria.santos@example.com','mypassword',NULL,1000),(9,'Mateusz','Kowalski','mateuszkowalski','mateusz.kowalski@example.com','securepass',NULL,1000),(10,'Sakura','Tanaka','sakuratanaka','sakura.tanaka@example.com','letmein123',NULL,1000),(11,'Ravi','Patel','ravipatel','ravi.patel@example.com','password321',NULL,1000),(12,'Chloe','Nguyen','chloenguyen','chloe.nguyen@example.com','ilovecats',NULL,1000),(13,'John','Smith','jsmith123','john.smith@gmail.com','password123',NULL,1000),(14,'Emily','Johnson','ejohnson456','emily.johnson@hotmail.com','securepass789',NULL,1000),(15,'David','Brown','dbrown789','david.brown@gmail.com','mysecretpassword',NULL,1000),(16,'Sarah','Davis','sdavis321','sarah.davis@hotmail.com','pass1234word',NULL,1000),(17,'Michael','Wilson','mwilson987','michael.wilson@gmail.com','strongpass789',NULL,1000),(18,'Jessica','Lee','jlee567','jessica.lee@example.com','password4321',NULL,1000),(19,'Matthew','Thompson','mthompson234','matthew.thompson@gmail.com','securepass987',NULL,1000),(20,'Olivia','Rodriguez','orodriguez876','olivia.rodriguez@gmail.com','mysecretpass123',NULL,1000),(21,'Ethan','Harris','eharris345','ethan.harris@gmail.com','pass9876word',NULL,1000),(22,'Alexander','Clark','aclark234','alexander.clark@hotmail.com','mysecretpass123',NULL,1000),(23,'Lily','Walker','lwalker789','lily.walker@example.com','mysecretpass890',NULL,1000),(24,'Benjamin','Evans','bevans456','benjamin.evans@example.com','pass1234word',NULL,1000),(25,'James','Hetfield','hetflied_james','james_hetfield@gmail.com','metallica',NULL,1000),(26,'Kirk','Hammett','kirkmetallica','kirk.hammett@hotmail.com','guitargod',NULL,1000),(27,'Lars','Ulrich','drummerboy','lars.busines@gmail.com','lovedrums',NULL,1000),(28,'Robert','Trujillo','basspower','trujillo.bass@hotmail.com','killthebass',NULL,1000),(29,'Rob','Flynn','machine.head','robguitars@gmail.com','strongviking123',NULL,1000),(30,'Phil','Demmel','demmelstyle','demmel.phil@gmail.com','6stringsgod',NULL,1000),(31,'Chester','Bennington','crazytrain','chester.sing@gmail.com','dontdie69',NULL,1000),(32,'Mike','Shinoda','linkin.shinoda','shinoda-band@gmail.com','linkinpark666',NULL,1000),(33,'Joe','Hahn','djfromhell','joe.hahn@gmail.com','no.clue.11',NULL,1000),(34,'Jacoby','Shaddix','roach.baby','papa.roach@hotmail.com','roaches.everywhere',NULL,1000),(35,'Fred','Durst','anarchy','allforthenookie@yahoo.com','666beerbitches',NULL,1000),(36,'Wes','Borland','play.me','one-of-those-days@gmail.com','pinchme123456',NULL,1000),(37,'Serj','Tankian','nuts','aerials@gmail.com','radio.video',NULL,1000),(38,'Daron','Malakian','guitar.sick','grumpy@gmail.com','close.to.me465',NULL,1000),(39,'Corey','Taylor','kill.me.please','rock.bottom@gmail.com','stay-away',NULL,1000),(40,'Raul','Alhena','raulalhena','raul@example.com','raulisgod',NULL,1000),(41,'Carlos','Saiz','carlossaiz','carlossaiz@example.com','carlos12345',NULL,1000),(42,'Maria','Sanchez','mariasan','marisanchez@example.com','mariamaria',NULL,1000),(43,'Laia','Garcia','laiaaa','laiagarcia@example.com','laia61y32',NULL,1000),(44,'Laura','Martinez','laurmarti','laura.martinez@example.com','ahjfakjhf',NULL,1000),(45,'Pedro','Pedroni','pedro12','pedro.pedroni@example.com','716729834',NULL,1000),(46,'Lola','Mento','lolaloa','lolamento@example.com','5473hfh',NULL,1000),(47,'Benito','Camelot','bentobox','bentocamelot@example.com','983994',NULL,1000),(48,'Jorge','Fuentes','jorge.fuentes','jorge.fuentes@example.com','7382o9hfh',NULL,1000),(49,'Alan','Morto','alanmorto','alan.morto@example.com','84y8384',NULL,1000),(50,'Joseph','Brito','jobrito','jo.brito@example.com','74021j',NULL,1000);
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

-- Dump completed on 2023-06-04 18:26:22
