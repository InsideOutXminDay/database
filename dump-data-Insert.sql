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
  `content` varchar(255) NOT NULL,
  `isdone` tinyint NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id_askcheck`)
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
-- Table structure for table `asklist`
--

DROP TABLE IF EXISTS `asklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asklist` (
  `id_asklist` int NOT NULL AUTO_INCREMENT,
  `id_askcheck` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_asklist`),
  KEY `id_askcheck` (`id_askcheck`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `asklist_ibfk_1` FOREIGN KEY (`id_askcheck`) REFERENCES `askcheck` (`id_askcheck`) ON UPDATE CASCADE,
  CONSTRAINT `asklist_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asklist`
--

LOCK TABLES `asklist` WRITE;
/*!40000 ALTER TABLE `asklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `asklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id_comment` int NOT NULL AUTO_INCREMENT,
  `body` varchar(255) NOT NULL,
  `id_user` int NOT NULL,
  `id_post` int NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_user` (`id_user`),
  KEY `id_post` (`id_post`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `maincontent_id` int NOT NULL AUTO_INCREMENT,
  `content_id` int NOT NULL,
  `subcontent_id` int NOT NULL,
  `content_name` varchar(255) NOT NULL,
  `subcontent_name` varchar(255) NOT NULL,
  `content_link` varchar(255) NOT NULL,
  `content_image` varchar(255) NOT NULL,
  `subcontent_image` varchar(255) NOT NULL,
  PRIMARY KEY (`maincontent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,1,1,'이상적인 숙면을 위한 조언','수면의 중요성','https://www.youtube.com/watch?v=VsXUKHZuafE','img/contents_img/contents_sleep.jpg','img/contents_img/subcontents/sleep1_image.jpg'),(2,1,2,'이상적인 숙면을 위한 조언','베개 선택법','https://www.youtube.com/watch?v=BdaPs8jUb6w','img/contents_img/contents_sleep.jpg','img/contents_img/subcontents/sleep2_image.jpg'),(3,1,3,'이상적인 숙면을 위한 조언','수면의 환경 조성','https://www.youtube.com/watch?v=8aMvOt6wCYI','img/contents_img/contents_sleep.jpg','img/contents_img/subcontents/sleep3_image.jpg'),(4,1,4,'이상적인 숙면을 위한 조언','잠들기 전 스트레칭','https://www.youtube.com/watch?v=1vfMmDuTweQ','img/contents_img/contents_sleep.jpg','img/contents_img/subcontents/sleep4_image.jpg'),(5,2,1,'자연의 소리','자연의 소리 (바람)','https://www.youtube.com/watch?v=KKi2qiuZZWQ','img/contents_img/contents_nature.jpg','img/contents_img/subcontents/nature1_image.jpg'),(6,2,2,'자연의 소리','자연의 소리 (물)','https://www.youtube.com/watch?v=oa7SC4-VN6Q','img/contents_img/contents_nature.jpg','img/contents_img/subcontents/nature2_image.jpg'),(7,2,3,'자연의 소리','자연의 소리 (새)','https://www.youtube.com/watch?v=LMsUjtbro9s','img/contents_img/contents_nature.jpg','img/contents_img/subcontents/nature3_image.jpg'),(8,2,4,'자연의 소리','자연의 소리 (폭포)','https://www.youtube.com/watch?v=j2Udybhper4','img/contents_img/contents_nature.jpg','img/contents_img/subcontents/nature4_image.jpg'),(9,3,1,'명상 음악','마음을 위한 명상 음악','https://www.youtube.com/watch?v=RtPwBk0pqKE','img/contents_img/contents_stress.jpg','img/contents_img/subcontents/stress1_image.jpg'),(10,3,2,'명상 음악','몸을 위한 명상 음악','https://www.youtube.com/watch?v=mWASFFB8YFY','img/contents_img/contents_stress.jpg','img/contents_img/subcontents/stress2_image.jpg'),(11,3,3,'명상 음악','내면의 평화를 위한 명상','https://www.youtube.com/watch?v=EsL7TErAQKc','img/contents_img/contents_stress.jpg','img/contents_img/subcontents/stress3_image.jpg'),(12,3,4,'명상 음악','자기 수양을 위한 명상','https://www.youtube.com/watch?v=dZewQEbQQM0','img/contents_img/contents_stress.jpg','img/contents_img/subcontents/stress4_image.jpg'),(13,4,1,'요가 동작 배우기','요가 기초','https://www.youtube.com/watch?v=OBTl49bVk94','img/contents_img/contents_yoga.jpg','img/contents_img/subcontents/med1_image.jpg'),(14,4,2,'요가 동작 배우기','요가 초급','https://www.youtube.com/watch?v=PL43EOuh2EE','img/contents_img/contents_yoga.jpg','img/contents_img/subcontents/med2_image.jpg'),(15,4,3,'요가 동작 배우기','요가 중급','https://www.youtube.com/watch?v=1HlkJcoEmNI','img/contents_img/contents_yoga.jpg','img/contents_img/subcontents/med3_image.jpg'),(16,4,4,'요가 동작 배우기','요가 고급','https://www.youtube.com/watch?v=GJlUgYYktIM','img/contents_img/contents_yoga.jpg','img/contents_img/subcontents/med4_image.jpg'),(17,5,1,'긴장을 푸는 방법','심호흡으로 긴장 풀기','https://www.youtube.com/watch?v=OOIjKv-1gus','img/contents_img/contents_nervous.jpg','img/contents_img/subcontents/nerv1_image.jpg'),(18,5,2,'긴장을 푸는 방법','스트레칭으로 긴장 풀기','https://www.youtube.com/watch?v=KaX2OlbHdW4','img/contents_img/contents_nervous.jpg','img/contents_img/subcontents/nerv2_image.jpg'),(19,5,3,'긴장을 푸는 방법','명상으로 긴장 풀기','https://www.youtube.com/watch?v=A2FjPz4ILhw','img/contents_img/contents_nervous.jpg','img/contents_img/subcontents/nerv3_image.jpg'),(20,5,4,'긴장을 푸는 방법','스트레스 해소법','https://www.youtube.com/watch?v=Yp3Ouxalob4','img/contents_img/contents_nervous.jpg','img/contents_img/subcontents/nerv4_image.jpg'),(21,6,1,'슬픔에서 벗어나는 방법','눈물 흘리기','https://www.youtube.com/watch?v=MAVTDMQY7b0','img/contents_img/contents_sadness.jpg','img/contents_img/subcontents/sad1_image.jpg'),(22,6,2,'슬픔에서 벗어나는 방법','자기 위로하기','https://www.youtube.com/watch?v=DB9JEy7s2oY','img/contents_img/contents_sadness.jpg','img/contents_img/subcontents/sad2_image.jpg'),(23,6,3,'슬픔에서 벗어나는 방법','대화로 풀기','https://www.youtube.com/watch?v=6iaIsMtZtqo','img/contents_img/contents_sadness.jpg','img/contents_img/subcontents/sad3_image.jpg'),(24,6,4,'슬픔에서 벗어나는 방법','긍정적인 생각하기','https://www.youtube.com/watch?v=xaOKP0wPexU','img/contents_img/contents_sadness.jpg','img/contents_img/subcontents/sad4_image.jpg');
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
  `content` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id_diary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diarylist`
--

DROP TABLE IF EXISTS `diarylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diarylist` (
  `id_diarylist` int NOT NULL AUTO_INCREMENT,
  `id_diary` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_diarylist`),
  KEY `id_diary` (`id_diary`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `diarylist_ibfk_1` FOREIGN KEY (`id_diary`) REFERENCES `diary` (`id_diary`) ON UPDATE CASCADE,
  CONSTRAINT `diarylist_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diarylist`
--

LOCK TABLES `diarylist` WRITE;
/*!40000 ALTER TABLE `diarylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `diarylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotionlist`
--

DROP TABLE IF EXISTS `emotionlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emotionlist` (
  `id_emotionlist` int NOT NULL AUTO_INCREMENT,
  `emotionname` varchar(255) NOT NULL,
  `emotionimg` varchar(255) NOT NULL,
  PRIMARY KEY (`id_emotionlist`),
  UNIQUE KEY `emotionname` (`emotionname`),
  UNIQUE KEY `emotionimg` (`emotionimg`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotionlist`
--

LOCK TABLES `emotionlist` WRITE;
/*!40000 ALTER TABLE `emotionlist` DISABLE KEYS */;
INSERT INTO `emotionlist` VALUES (1,'행복','/img/emotions/emotion1.png'),(2,'신남','/img/emotions/emotion2.png'),(3,'만족','/img/emotions/emotion3.png'),(4,'편안','/img/emotions/emotion5.png'),(5,'감동','/img/emotions/emotion4.png'),(6,'뿌듯','/img/emotions/emotion6.png'),(7,'속시원함','/img/emotions/emotion7.png'),(8,'그저그럼','/img/emotions/emotion8.png'),(9,'비참','/img/emotions/emotion9.png'),(10,'화남','/img/emotions/emotion10.png'),(11,'지침','/img/emotions/emotion11.png'),(12,'상처받음','/img/emotions/emotion12.png'),(13,'멘붕','/img/emotions/emotion13.png'),(14,'우울','/img/emotions/emotion14.png'),(15,'불안','/img/emotions/emotion15.png'),(16,'예민','/img/emotions/emotion16.png');
/*!40000 ALTER TABLE `emotionlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paragraph`
--

DROP TABLE IF EXISTS `paragraph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paragraph` (
  `id_paragraph` int NOT NULL AUTO_INCREMENT,
  `article` varchar(255) NOT NULL,
  `ver_ko` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
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
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `anonymity` tinyint NOT NULL,
  PRIMARY KEY (`id_post`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
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
  `username` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `nickname` (`nickname`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2024-07-25 17:19:20
