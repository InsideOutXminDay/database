-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: insideout
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `askcheck`
--

DROP TABLE IF EXISTS `askcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `askcheck` (
  `id_askcheck` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `type` varchar(15) NOT NULL,
  `content` varchar(45) NOT NULL,
  `isdone` tinyint NOT NULL,
  PRIMARY KEY (`id_askcheck`),
  KEY `fk_user` (`id_user`),
  CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `askcheck`
--

LOCK TABLES `askcheck` WRITE;
/*!40000 ALTER TABLE `askcheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `askcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id_comment` int NOT NULL AUTO_INCREMENT,
  `body` varchar(150) DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `id_post` int DEFAULT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_user` (`id_user`),
  KEY `id_post` (`id_post`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (2,'test comment 2',4,2),(3,'test comment 3',1,3),(4,'test comment 4',5,6),(5,'test comment 5',1,4),(9,'test comment 6',4,3),(10,'test comment 6',1,2),(11,'test comment 7',2,66),(14,'ㅁㅁㅁㅁ',2,88),(16,'fhhhssss',2,88),(17,'vvvvv',2,88),(18,'test comment 11',5,88),(19,'ccc',2,88),(20,'cccc',2,88),(22,'ffff',2,66),(23,'zzzz',2,59),(24,'eeee',2,59),(25,'리로드',2,88),(26,'리로드2',2,88),(27,'3333',2,88),(28,'4444',2,88),(29,'555',2,88),(30,'6666',2,88),(34,'test comment 11',5,88),(35,'test comment 11',5,88),(36,'test comment 11',5,88),(37,'ㄴㄴㄴㄴ',2,139),(38,'ㄴㄴㄴㄴ',2,139),(39,'ㄴㄴㄴㄴ',2,139),(40,'ㄴㄴ',2,139),(41,'ffff',2,141),(42,'ffff',2,92),(43,'fff',2,142),(44,'fff',2,59),(45,'sss',2,63),(46,'sss',2,146),(47,'sss',2,146),(48,'sss',2,147),(49,'',2,63),(50,'sss',2,63),(51,'sss',2,60),(52,'sss',2,145),(67,'ㄴㄴㄴ',2,148),(68,'haha',2,88);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `id_contents` int NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL,
  `title` varchar(25) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  PRIMARY KEY (`id_contents`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,'sleep','수면 유도 음악','img/contents_img/subcontents/sleep1_image.jpg','https://www.youtube.com/watch?v=aBSjhKevAio'),(2,'sleep','백색 소음','img/contents_img/subcontents/sleep2_image.jpg','https://www.youtube.com/watch?v=xRuHxlUoy2s'),(3,'sleep','델타파 수면','img/contents_img/subcontents/sleep3_image.jpg','https://www.youtube.com/watch?v=zoHBoEL_L1o&list=PLMk37ZqEMw-a01Q3CIDuNlRhXyStCGUUl'),(4,'sleep','깊은 수면을 위한 생각 비우기','img/contents_img/subcontents/sleep4_image.jpg','https://www.youtube.com/watch?v=X901on9pDEo'),(5,'nature','소복소복 빗소리','img/contents_img/subcontents/nature1_image.jpg','https://www.youtube.com/watch?v=lQ0fS2meTYQ'),(6,'nature','숲 사운드 테라피','img/contents_img/subcontents/nature2_image.jpg','https://www.youtube.com/watch?v=xNN7iTA57jM'),(7,'nature','시원한 바다','img/contents_img/subcontents/nature3_image.jpg','https://www.youtube.com/watch?v=Nep1qytq9JM'),(8,'nature','노르웨이 모닥불','img/contents_img/subcontents/nature4_image.jpg','https://www.youtube.com/watch?v=UgHKb_7884o'),(9,'med','5분 아침 명상','img/contents_img/subcontents/med1_image.jpg','https://www.youtube.com/watch?v=quQoNETX3s8'),(10,'med','만성피로 완화를 위한 명상','img/contents_img/subcontents/med2_image.jpg','https://www.youtube.com/watch?v=mWASFFB8YFY'),(11,'med','마음 챙기기','img/contents_img/subcontents/med3_image.jpg','https://www.youtube.com/watch?v=ceEYXS2a5sg'),(12,'med','나를 위한 마음 비우기','img/contents_img/subcontents/med4_image.jpg','https://www.youtube.com/watch?v=z0GtmPnqAd8'),(13,'nerv','내일의 고민 잊어버리기','img/contents_img/subcontents/nerv1_image.jpg','https://www.youtube.com/watch?v=OKqqnitWsz0'),(14,'nerv','불안감을 자신감으로','img/contents_img/subcontents/nerv2_image.jpg','https://www.youtube.com/watch?v=cBO6XWLUgR0'),(15,'nerv','마음 진정시키기','img/contents_img/subcontents/nerv3_image.jpg','https://www.youtube.com/watch?v=ZQWrleq-NhQ'),(16,'nerv','인지 행동 치료법','img/contents_img/subcontents/nerv4_image.jpg','https://www.youtube.com/watch?v=zAIZpNbYytI'),(17,'stress','스트레스 해소하기','img/contents_img/subcontents/stress1_image.jpg','https://www.youtube.com/watch?v=5bmDMFqnTs0'),(18,'stress','압박감 떨쳐내기','img/contents_img/subcontents/stress2_image.jpg','https://www.youtube.com/watch?v=a89vNiNQRvA'),(19,'stress','스트레스 힐링하기','img/contents_img/subcontents/stress3_image.jpg','https://www.youtube.com/watch?v=lFcSrYw-ARY'),(20,'stress','스트레스를 긍정의 힘으로','img/contents_img/subcontents/stress4_image.jpg','https://www.youtube.com/watch?v=Hp_Eg8NMfT0'),(21,'sad','활력있는 생활','img/contents_img/subcontents/sad1_image.jpg','https://www.youtube.com/watch?v=VbT2wQq5jQY&pp=ygUQcG9zaXRpdmUgaGVhbGluZw%3D%3D'),(22,'sad','부정적인 감정 해소하기','img/contents_img/subcontents/sad2_image.jpg','https://www.youtube.com/watch?v=gl3T3zW7gF8'),(23,'sad','응원의 한 마디','img/contents_img/subcontents/sad3_image.jpg','https://www.youtube.com/watch?v=gl3T3zW7gF8'),(24,'sad','나를 채찍질하지 않기','img/contents_img/subcontents/sad4_image.jpg','https://www.youtube.com/watch?v=I3OJUwILelU');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diary` (
  `id_diary` int NOT NULL AUTO_INCREMENT,
  `id_emotion` int NOT NULL,
  `id_user` int NOT NULL,
  `contents` varchar(300) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_diary`),
  UNIQUE KEY `id_diary_UNIQUE` (`id_diary`),
  KEY `fk_emotion_idx` (`id_emotion`),
  KEY `fk_userid_idx` (`id_user`),
  CONSTRAINT `fk_emotion` FOREIGN KEY (`id_emotion`) REFERENCES `emotion` (`id_emotion`),
  CONSTRAINT `fk_userid` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotion`
--

DROP TABLE IF EXISTS `emotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emotion` (
  `id_emotion` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `emoji` varchar(30) NOT NULL,
  PRIMARY KEY (`id_emotion`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotion`
--

LOCK TABLES `emotion` WRITE;
/*!40000 ALTER TABLE `emotion` DISABLE KEYS */;
INSERT INTO `emotion` VALUES (1,'행복','/emotion1.png'),(2,'신남','/emotion2.png'),(3,'만족','/emotion3.png'),(4,'감동','/emotion4.png'),(5,'편안','/emotion5.png'),(6,'뿌듯','/emotion6.png'),(7,'속시원함','/emotion7.png'),(8,'그저그럼','/emotion8.png'),(9,'비참','/emotion9.png'),(10,'화남','/emotion10.png'),(11,'지침','/emotion11.png'),(12,'상처받음','/emotion12.png'),(13,'멘붕','/emotion13.png'),(14,'우울','/emotion14.png'),(15,'불안','/emotion15.png'),(16,'예민','/emotion16.png');
/*!40000 ALTER TABLE `emotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paragraph`
--

DROP TABLE IF EXISTS `paragraph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paragraph` (
  `id_paragraph` int NOT NULL AUTO_INCREMENT,
  `article` varchar(200) NOT NULL,
  `ver_ko` varchar(200) NOT NULL,
  `writer` varchar(20) NOT NULL,
  PRIMARY KEY (`id_paragraph`),
  UNIQUE KEY `article` (`article`),
  UNIQUE KEY `ver_ko` (`ver_ko`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paragraph`
--

LOCK TABLES `paragraph` WRITE;
/*!40000 ALTER TABLE `paragraph` DISABLE KEYS */;
INSERT INTO `paragraph` VALUES (1,'The greatest glory in living lies not in never falling, but in rising every time we fall.','살아가는 데 있어 가장 큰 영광은 결코 넘어지지 않는 데가 아니라 넘어질 때마다 일어나는 데 있습니다.','Nelson Mandela'),(3,'To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.','계속해서 너를 다른 무언가로 만들려는 세상에서 자신을 유지하는 것이 가장 큰 성취입니다.','Ralph Waldo Emerso'),(4,'Be yourself; everyone else is already taken.','네 자신이 되어라; 다른 사람들은 이미 누군가입니다.','Oscar Wilde'),(5,'The only true wisdom is in knowing you know nothing.','진정한 지혜는 네가 아무 것도 모른다는 것을 알 때 나타납니다.','Socrates');
/*!40000 ALTER TABLE `paragraph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id_post` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `title` varchar(45) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `anonymity` tinyint NOT NULL,
  PRIMARY KEY (`id_post`),
  UNIQUE KEY `id_post` (`id_post`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (59,2,'value1vvvvvssss','value1vvvvvss',1),(60,2,'test','tsetddd',1),(61,2,'test','tset',1),(62,2,'test','tset',1),(63,2,'testsss','tsetsss',1),(64,2,'testssss','tsetsss',0),(65,2,'test','tset',1),(66,2,'test1111','tset1111',0),(67,2,'test','tset',1),(87,2,'ㄴㄴㄴ','ㄴㄴㄴ',1),(88,2,'댓글댓글2222333 replace2222','줄바꿈 해결~',1),(89,2,'sss','sssssss',0),(90,2,'hahaha','ahaha',1),(91,2,'gaga','gaga',1),(92,2,'gaga222ssss','gaga222sssss',0),(93,2,'hahaha333','hahah3333',0),(94,2,'test 94','test 94',0),(95,2,'test 95','test 95',0),(116,2,'promise......','promise......',0),(117,2,'promise......','promise......',0),(132,2,'sss','sss',0),(133,2,'sss','sss',0),(134,2,'sss','sss',0),(135,2,'sss','sss',0),(136,2,'ㅠㅠㅠㅠㅠㅠ','ㅠㅠㅠㅠㅠㅠㅠㅠ',0),(137,2,'ccc','ccc',0),(138,2,'sss','sss',0),(139,2,'sss','ssss',0),(140,2,'rrr','rrr',0),(141,2,'rrrsss','rrrsss',0),(142,2,'sss','sss',0),(143,2,'sss','sss',0),(144,11,'user num 11','user id num 11',0),(145,11,'user num 11','user id num 11',0),(146,2,'sss','sss',1),(147,2,'dddsss','dddsss',0),(148,2,'ssssss','가장 마지막 글',0),(149,2,'ssss','가장 마지막 글 22',0),(150,2,'가장 마지막 글 3','차별점을 위해 긴 글을 가져 왔습니다 \n\n글귀 컨텐츠 데이터 입니다 \n\n\"Success is not final, failure is not fatal: It is the courage to continue that counts.\", \"성공은 최종적이지 않고, 실패는 치명적이지 않습니다: 계속하는 용기가 중요합니다.\",\"Winston Churchill\"\n\n \"The only true wisdom is in knowing you know nothing.\", \"진정한 지혜는 네가 아무 것도 모른다는 것을 알 때 나타납니다.\", \"Socrates\"\n\n\"Be yourself; everyone else is already taken.\", \"네 자신이 되어라; 다른 사람들은 이미 누군가입니다.\", \"Oscar Wilde\"',0),(151,2,'sss','ss',0),(152,2,'sss','sss',0),(153,2,'aaaa','aaa',1),(154,2,'ㅋㅋ','ㅋㅋ',1),(155,2,'sss','sss',0),(156,2,'헐?','헐?',1),(157,2,'omgsss','omgsss',0),(158,2,'sss','sss',0);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `id_post` int DEFAULT NULL,
  `inputid` varchar(15) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `inputid` (`inputid`),
  UNIQUE KEY `nickname` (`nickname`),
  UNIQUE KEY `email` (`email`),
  KEY `id_post` (`id_post`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'test id 01','nickname 01','test01@test.com','123456789'),(2,NULL,'test id 02','nickname 02','test02@test.com','123456789'),(3,NULL,'test id 03','nickname 03','test03@test.com','123456789'),(4,NULL,'test id 04','nickname 04','test04@test.com','123456789'),(5,NULL,'test id 05','nickname 05','test05@test.com','123456789'),(6,NULL,'test id 06','nickname 06','test06@test.com','123456789'),(7,NULL,'test id 07','nickname 07','test07@test.com','123456789'),(8,NULL,'test id 08','nickname 08','test08@test.com','123456789'),(9,NULL,'test id 09','nickname 09','test09@test.com','123456789');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22 14:05:06
