CREATE DATABASE  IF NOT EXISTS `reservation` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `reservation`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: reservation
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotelproduct`
--

DROP TABLE IF EXISTS `hotelproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hotelproduct` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(45) NOT NULL,
  `roomsize` int(11) NOT NULL,
  `location` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelproduct`
--

LOCK TABLES `hotelproduct` WRITE;
/*!40000 ALTER TABLE `hotelproduct` DISABLE KEYS */;
INSERT INTO `hotelproduct` VALUES (1,'A호텔',2,'서울',70000),(2,'무지개 호텔',3,'충북',20000),(3,'솜사탕 호텔',1,'전남',25000),(4,'스노우 호텔',5,'경기',40000),(5,'눈송이 호텔',9,'충남',100000),(6,'방울 호텔',11,'전북',120000),(7,'스마트 호텔',4,'서울',80000);
/*!40000 ALTER TABLE `hotelproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservation` (
  `resid` int(11) NOT NULL AUTO_INCREMENT,
  `cusName` varchar(45) NOT NULL,
  `resPw` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `resDate` date NOT NULL,
  `productid` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`resid`),
  KEY `reservation_ibfk_1` (`productid`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `hotelproduct` (`productid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (20,'라이언','lion','010-1111-1111','2020-01-02','2020-01-04','2019-11-05',3),(21,'어피치','apeach','010-2222-2222','2020-01-05','2020-01-07','2019-11-07',2),(22,'헬로','hello','010-3333-3333','2020-03-18','2020-03-25','2019-11-07',5),(23,'프로도','prodo','010-4444-4444','2020-02-11','2020-02-17','2019-11-10',1),(24,'튜브','tube','010-5555-5555','2020-01-24','2020-01-27','2019-11-14',6),(25,'도라에몽','doraemon','010-6666-6666','2020-04-15','2020-04-21','2019-11-19',4),(26,'올라프','olaf','010-7777-7777','2020-05-19','2020-05-22','2019-11-21',7),(27,'안나','anna','010-8888-8888','2020-06-14','2020-06-16','2019-11-29',2);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'reservation'
--

--
-- Dumping routines for database 'reservation'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-23 17:26:38
CREATE DATABASE  IF NOT EXISTS `board` /*!40100 DEFAULT CHARACTER SET euckr COLLATE euckr_bin */;
USE `board`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: board
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `board_no` int(11) NOT NULL AUTO_INCREMENT,
  `board_pw` varchar(50) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL,
  `board_title` varchar(50) CHARACTER SET euckr COLLATE euckr_bin NOT NULL,
  `board_content` text CHARACTER SET euckr COLLATE euckr_bin NOT NULL,
  `board_user` varchar(50) CHARACTER SET euckr COLLATE euckr_bin NOT NULL,
  `board_date` date NOT NULL,
  PRIMARY KEY (`board_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (2,'1324','주문이 편해서 좋네요ㅎㅎ','회원가입, 로그인없이 바로 주문가능해서 편하고 좋네요ㅎㅎ','네오','2019-05-11'),(4,'1111','맛있네요ㅎㅎ','생각보다 맛있네요 추천합니다ㅎㅎ','어피치','2019-05-11'),(7,'','첫 번째 글이네요ㅋㅋ','첫 번째 글입니다ㅋㅋ','네오','2019-05-13');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_pw` varchar(20) NOT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'communitymanager');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_board`
--

DROP TABLE IF EXISTS `qa_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qa_board` (
  `board_no` int(11) NOT NULL AUTO_INCREMENT,
  `board_pw` varchar(50) COLLATE euckr_bin NOT NULL DEFAULT '0000',
  `board_title` varchar(50) COLLATE euckr_bin NOT NULL DEFAULT '제목이 없습니다',
  `board_content` text COLLATE euckr_bin NOT NULL,
  `board_user` varchar(50) COLLATE euckr_bin NOT NULL DEFAULT '닉네임이 없습니다',
  `board_date` date NOT NULL,
  PRIMARY KEY (`board_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=euckr COLLATE=euckr_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_board`
--

LOCK TABLES `qa_board` WRITE;
/*!40000 ALTER TABLE `qa_board` DISABLE KEYS */;
INSERT INTO `qa_board` VALUES (1,'apeach','결제 취소 기간 문의','결제 취소 가능한 기간이 공휴일 포함하여 7일인가요?','어피치','2019-11-14'),(2,'hello','환불 문의','숙박일 2일전에 취소하면 환불액이 몇퍼센트인가요?','헬로','2019-11-16'),(3,'neo','호텔 옵션','호텔 옵션 관련 문의는 어디로 하죠?','네오','2019-11-19'),(4,'aaa','영업시간 문의','점심시간으로 쉬는 시간이 몇시부터 몇시까지죠?','aaa','2019-11-21'),(5,'hi','결제 확인 메일 관련 문의','결제 확인 메일이 안왔어요ㅠ','하이','2019-11-24');
/*!40000 ALTER TABLE `qa_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_board`
--

DROP TABLE IF EXISTS `review_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review_board` (
  `board_no` int(11) NOT NULL AUTO_INCREMENT,
  `board_pw` varchar(50) COLLATE euckr_bin NOT NULL DEFAULT '0000',
  `board_title` varchar(50) COLLATE euckr_bin NOT NULL DEFAULT '제목이 없습니다',
  `board_content` text COLLATE euckr_bin NOT NULL,
  `board_user` varchar(50) COLLATE euckr_bin NOT NULL DEFAULT '닉네임이 없습니다',
  `board_date` date NOT NULL,
  PRIMARY KEY (`board_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=euckr COLLATE=euckr_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_board`
--

LOCK TABLES `review_board` WRITE;
/*!40000 ALTER TABLE `review_board` DISABLE KEYS */;
INSERT INTO `review_board` VALUES (1,'124','첫 번째 글이네요ㅋㅋ','첫번째 글이네요 ㅎㅎ 편리한 예약 시스템 감사합니다.','네오','2019-11-06'),(2,'apeach','예약이 간편해서 좋아요','회원가입, 로그인 없이 간편하게 주문할 수 있어서 좋네요 ! ㅎㅎ\r\n','어피치','2019-11-07'),(3,'kakao','위치 충북대 아니예요?','이 기업 대체 어디에 있음? 지도 충북대인데?','카카오','2019-11-12'),(4,'moji','친절하네요~','상담전화 했었는데 너무 친절하셨어요~','무지무지','2019-11-15'),(5,'frodo','따르릉~ 여보세요???','여보세요??? 제 문의 들어주시는거 맞나요? 여보세요?? 똑똑똑~~~?','프로도','2019-11-17'),(6,'friends','가격이 조금..','수수료가 조금 비싸네요ㅠ','프렌즈','2019-11-21');
/*!40000 ALTER TABLE `review_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'board'
--

--
-- Dumping routines for database 'board'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-23 17:26:39
