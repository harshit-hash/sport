-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: sport
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `cricket`
--

DROP TABLE IF EXISTS `cricket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cricket` (
  `team` varchar(50) NOT NULL,
  `game` varchar(20) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `jerssyno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket`
--

LOCK TABLES `cricket` WRITE;
/*!40000 ALTER TABLE `cricket` DISABLE KEYS */;
INSERT INTO `cricket` VALUES ('pacheda cricket club','Cricket','Hemant Dewangan',11),('pacheda cricket club','Cricket','Shyam',1);
/*!40000 ALTER TABLE `cricket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamename`
--

DROP TABLE IF EXISTS `gamename`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamename` (
  `game` varchar(20) NOT NULL,
  PRIMARY KEY (`game`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamename`
--

LOCK TABLES `gamename` WRITE;
/*!40000 ALTER TABLE `gamename` DISABLE KEYS */;
INSERT INTO `gamename` VALUES ('Badminton'),('Cricket'),('FootBall'),('VolleyBall');
/*!40000 ALTER TABLE `gamename` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pballstate`
--

DROP TABLE IF EXISTS `pballstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pballstate` (
  `over` double NOT NULL DEFAULT '0',
  `run` int(11) NOT NULL DEFAULT '0',
  `wicket` int(11) NOT NULL DEFAULT '0',
  `pname` varchar(45) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'N',
  `playstatus` char(1) NOT NULL DEFAULT 'N',
  `totalover` double DEFAULT NULL,
  `teamname` varchar(45) NOT NULL,
  `game` varchar(20) NOT NULL,
  `tournament` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pballstate`
--

LOCK TABLES `pballstate` WRITE;
/*!40000 ALTER TABLE `pballstate` DISABLE KEYS */;
INSERT INTO `pballstate` VALUES (0,0,0,'Hemant Dewangan','N','N',NULL,'pacheda cricket club','Cricket','Raipur Premier League'),(0,0,0,'Shyam','N','N',NULL,'pacheda cricket club','Cricket','Raipur Premier League');
/*!40000 ALTER TABLE `pballstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerstate`
--

DROP TABLE IF EXISTS `playerstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerstate` (
  `run` int(11) NOT NULL DEFAULT '0',
  `ball` int(11) NOT NULL DEFAULT '0',
  `four` int(11) NOT NULL DEFAULT '0',
  `six` int(11) NOT NULL DEFAULT '0',
  `pname` varchar(45) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'N',
  `playstatus` char(1) NOT NULL DEFAULT 'N',
  `teamname` varchar(45) NOT NULL,
  `totalrun` int(11) NOT NULL DEFAULT '0',
  `tournament` varchar(45) NOT NULL,
  `game` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerstate`
--

LOCK TABLES `playerstate` WRITE;
/*!40000 ALTER TABLE `playerstate` DISABLE KEYS */;
INSERT INTO `playerstate` VALUES (0,0,0,0,'Shyam','N','N','pacheda cricket club',0,'Raipur Premier League','Cricket');
/*!40000 ALTER TABLE `playerstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pointtbl`
--

DROP TABLE IF EXISTS `pointtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pointtbl` (
  `teamname` varchar(50) NOT NULL,
  `played` int(11) NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `loss` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `runr` int(11) NOT NULL DEFAULT '0',
  `game` varchar(20) NOT NULL,
  `tournament` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pointtbl`
--

LOCK TABLES `pointtbl` WRITE;
/*!40000 ALTER TABLE `pointtbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `pointtbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `fullname` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `flag` char(1) NOT NULL DEFAULT 'U'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('Hemant','Harshit11','1101','hemant@1101','A'),('sangeeta','sangeeta31','1101','san@1101.com','U');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sport` (
  `team1` varchar(50) NOT NULL,
  `team2` varchar(45) NOT NULL,
  `game` varchar(20) NOT NULL,
  `tourn` varchar(45) NOT NULL,
  `matchdate` date NOT NULL,
  `state` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES ('pacheda cricket club','Raipur Cricket Club','Cricket','Raipur Premier League','2021-07-09','N'),('CG Cricket Club','Raipur Cricket Club','Cricket','Raipur Premier League','2021-07-11','N'),('pacheda cricket club','CG Cricket Club','Cricket','Raipur Premier League','2021-07-13','N');
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `teamname` varchar(50) NOT NULL,
  `shortname` varchar(10) NOT NULL,
  `game` varchar(20) NOT NULL,
  `tournament` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES ('pacheda cricket club','pcc','Cricket','Raipur Premier League'),('Raipur Cricket Club','RCC','Cricket','Raipur Premier League'),('CG Cricket Club','CGCC','Cricket','Raipur Premier League');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournamentname`
--

DROP TABLE IF EXISTS `tournamentname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournamentname` (
  `tournamentname` varchar(50) NOT NULL,
  `game` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournamentname`
--

LOCK TABLES `tournamentname` WRITE;
/*!40000 ALTER TABLE `tournamentname` DISABLE KEYS */;
INSERT INTO `tournamentname` VALUES ('Raipur Premier League','Cricket');
/*!40000 ALTER TABLE `tournamentname` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-10 12:22:01
