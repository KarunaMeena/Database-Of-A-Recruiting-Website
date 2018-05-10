CREATE DATABASE  IF NOT EXISTS `glassdoor` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `glassdoor`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: glassdoor
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `EventID` int(11) NOT NULL,
  `EventType` enum('Workshop','Conference','Retreat','CompanyTrip') DEFAULT NULL,
  `RegistrationAmount` int(11) DEFAULT NULL,
  `EventDate` date DEFAULT NULL,
  `AvailableSeats` int(11) DEFAULT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'Workshop',10,'2017-07-03',30),(2,'Conference',70,'2017-07-09',45),(3,'Retreat',30,'2016-12-16',10),(4,'CompanyTrip',20,'2017-07-13',60),(5,'Retreat',15,'2017-11-28',15),(6,'Conference',12,'2017-11-11',30),(7,'Workshop',10,'2017-09-16',25),(8,'Retreat',25,'2017-06-22',50),(9,'Workshop',30,'2017-11-08',100),(10,'Conference',15,'2017-07-05',35);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisor`
--

DROP TABLE IF EXISTS `advertisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisor` (
  `AdvertisorID` int(11) NOT NULL,
  `AdvertisorsName` varchar(45) DEFAULT NULL,
  `Payperclickamount` int(11) DEFAULT NULL,
  `Payperviewamount` int(11) DEFAULT NULL,
  `Carddetails` varchar(50) DEFAULT 'No Payment Method Provided',
  PRIMARY KEY (`AdvertisorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisor`
--

LOCK TABLES `advertisor` WRITE;
/*!40000 ALTER TABLE `advertisor` DISABLE KEYS */;
INSERT INTO `advertisor` VALUES (1,'Bradtke-Schaden',5,10,'3561114591203009'),(2,'Harvey Inc',3,8,'3539140560193136'),(3,'O\'Keefe, Beatty and Ebert',5,10,'5521628747490537'),(4,'Kulas Inc',10,4,'5225573530025901'),(5,'Dooley Group',5,3,'3550361374311391'),(6,'Adams and Sons',2,5,'4903253042781927'),(7,'Muller LLC',14,5,'30410631653396'),(8,'Ortiz, Adams and Hane',2,8,'3533689968282673'),(9,'Cronin, Tremblay and Sanford',4,5,'3584922557413328'),(10,'Maggio-Schinner',5,5,'374288367459079');
/*!40000 ALTER TABLE `advertisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisorfinances`
--

DROP TABLE IF EXISTS `advertisorfinances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisorfinances` (
  `AdvertisorID` int(11) DEFAULT NULL,
  `NoOfViews` varchar(100) NOT NULL DEFAULT 'No views',
  `NoOfClicks` varchar(100) NOT NULL DEFAULT 'No clicks',
  KEY `AdvertisorID` (`AdvertisorID`),
  CONSTRAINT `advertisorfinances_ibfk_1` FOREIGN KEY (`AdvertisorID`) REFERENCES `advertisor` (`AdvertisorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisorfinances`
--

LOCK TABLES `advertisorfinances` WRITE;
/*!40000 ALTER TABLE `advertisorfinances` DISABLE KEYS */;
INSERT INTO `advertisorfinances` VALUES (1,'8','5'),(2,'21','8'),(3,'33','23'),(4,'14','8'),(5,'15','9'),(6,'44','34'),(7,'71','70'),(8,'78','6'),(9,'56','32'),(10,'12','89');
/*!40000 ALTER TABLE `advertisorfinances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `eligiblecandidates`
--

DROP TABLE IF EXISTS `eligiblecandidates`;
/*!50001 DROP VIEW IF EXISTS `eligiblecandidates`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `eligiblecandidates` AS SELECT 
 1 AS `PersonName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employerbranding`
--

DROP TABLE IF EXISTS `employerbranding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employerbranding` (
  `EmployerBrandingID` int(11) NOT NULL,
  `EmployerID` int(11) DEFAULT NULL,
  `BrandingType` enum('vLog','Blog','Social Media Branding','Cultural Branding') DEFAULT NULL,
  PRIMARY KEY (`EmployerBrandingID`),
  KEY `EmployerID` (`EmployerID`),
  CONSTRAINT `employerbranding_ibfk_1` FOREIGN KEY (`EmployerID`) REFERENCES `useremployer` (`EmployerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employerbranding`
--

LOCK TABLES `employerbranding` WRITE;
/*!40000 ALTER TABLE `employerbranding` DISABLE KEYS */;
INSERT INTO `employerbranding` VALUES (1,1,'vLog'),(2,2,'Blog'),(3,3,'Social Media Branding'),(4,4,'Cultural Branding'),(5,5,'Blog');
/*!40000 ALTER TABLE `employerbranding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employerfinances`
--

DROP TABLE IF EXISTS `employerfinances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employerfinances` (
  `EmpFinancesID` int(11) NOT NULL,
  `EmployerID` int(11) DEFAULT NULL,
  `vlogPay` int(11) DEFAULT NULL,
  `BlogPay` int(11) DEFAULT NULL,
  `SocialMediaPay` int(11) DEFAULT NULL,
  `CulturalBrandingPay` int(11) DEFAULT NULL,
  PRIMARY KEY (`EmpFinancesID`),
  KEY `EmployerID` (`EmployerID`),
  CONSTRAINT `employerfinances_ibfk_1` FOREIGN KEY (`EmployerID`) REFERENCES `useremployer` (`EmployerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employerfinances`
--

LOCK TABLES `employerfinances` WRITE;
/*!40000 ALTER TABLE `employerfinances` DISABLE KEYS */;
INSERT INTO `employerfinances` VALUES (1,1,10,0,0,0),(2,2,0,25,0,0),(3,3,0,1,30,0),(4,4,0,0,0,44),(5,5,0,12,0,0);
/*!40000 ALTER TABLE `employerfinances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `eventtypeandpersonname`
--

DROP TABLE IF EXISTS `eventtypeandpersonname`;
/*!50001 DROP VIEW IF EXISTS `eventtypeandpersonname`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `eventtypeandpersonname` AS SELECT 
 1 AS `registrationid`,
 1 AS `eventtype`,
 1 AS `personname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jobapplication`
--

DROP TABLE IF EXISTS `jobapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobapplication` (
  `ApplicatioNo` int(11) NOT NULL,
  `CandidateNo` int(11) NOT NULL,
  `JobID` int(11) DEFAULT NULL,
  `CompletedDate` date DEFAULT NULL,
  `NoOfApplications` int(11) DEFAULT '0',
  PRIMARY KEY (`ApplicatioNo`),
  KEY `JobID` (`JobID`),
  KEY `CandidateNo` (`CandidateNo`),
  CONSTRAINT `jobapplication_ibfk_1` FOREIGN KEY (`JobID`) REFERENCES `jobs` (`JobID`),
  CONSTRAINT `jobapplication_ibfk_2` FOREIGN KEY (`CandidateNo`) REFERENCES `usercandidate` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobapplication`
--

LOCK TABLES `jobapplication` WRITE;
/*!40000 ALTER TABLE `jobapplication` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobapplication` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger AddNoOfApplications
 after
 insert
 on JobApplication
 for each row
 begin
 update JobApplication
 set NoOfApplications=NoOfApplications+1;
 end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `EmployerID` int(11) DEFAULT NULL,
  `JobID` int(11) NOT NULL,
  `JobTitle` varchar(45) NOT NULL,
  `datePosted` date DEFAULT NULL,
  PRIMARY KEY (`JobID`),
  KEY `EmployerID` (`EmployerID`),
  CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`EmployerID`) REFERENCES `useremployer` (`EmployerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `Personid` int(11) NOT NULL,
  `PersonName` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` enum('Decline to respond','Male','Female','Transgender') DEFAULT NULL,
  `StreetAddress` varchar(45) NOT NULL,
  `Zip` int(11) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `SSN` int(11) DEFAULT '0',
  `CreditCardNo` varchar(100) NOT NULL DEFAULT 'No Payment Method Provided',
  PRIMARY KEY (`Personid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Siouxie',1,'Female','45 Burning Wood Place',9915,'Waterloo','Iowa',881361592,'56022230691170400'),(2,'Lib',2,'Female','4 Havey Terrace',80912,'Stamford','Connecticut',560405186,'3567838861081448'),(3,'Vivi',3,'Transgender','9 Anzinger Terrace',30145,'Boulder','Colorado',857584486,'3528930436695394'),(4,'Beatriz',4,'Female','1329 Weeping Birch Court',69217,'Oklahoma City','Oklahoma',309110946,'3531743585596080'),(5,'Correy',5,'Transgender','95 Dexter Drive',2215,'Saint Louis','Missouri',411309866,'3541310265329139'),(6,'Fin',6,'Male','56817 Everett Junction',11225,'Clearwater','Florida',180976890,'6759557987192290'),(7,'Shawnee',7,'Decline to respond','947 Londonderry Alley',2115,'Tampa','Florida',157948469,'3568167103958232'),(8,'Anet',8,'Female','697 Bonner Pass',2562,'20135','Georgia',399745038,'3545766357641499'),(9,'Marijn',9,'Male','1633 Tony Parkway',45109,'Virginia Beach','Virginia',198966226,'3564366207368280'),(10,'Merralee',10,'Decline to respond','084 Annamark Lane',12903,'Elizabeth','New Jersey',412196764,'3540840776994725');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `RegistrationID` int(11) NOT NULL,
  `EventID` int(11) DEFAULT NULL,
  `PersonId` int(11) DEFAULT NULL,
  PRIMARY KEY (`RegistrationID`),
  KEY `EventID` (`EventID`),
  KEY `PersonId` (`PersonId`),
  CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `activities` (`EventID`),
  CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`PersonId`) REFERENCES `person` (`Personid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,4,7),(2,4,1),(3,4,2),(4,4,9),(5,3,3),(6,2,4),(7,2,8),(8,6,6),(9,6,5),(10,6,10);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger AvailabilityCheck
 after
 insert
 on Registration
 for each row
 begin
 update activities
 set availableseats=availableseats-1; 
 end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `salaryreport`
--

DROP TABLE IF EXISTS `salaryreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salaryreport` (
  `SalaryReportID` int(11) NOT NULL,
  `PersonId` int(11) DEFAULT NULL,
  `Salary` bigint(20) DEFAULT NULL,
  `JobTitle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SalaryReportID`),
  KEY `PersonId` (`PersonId`),
  CONSTRAINT `salaryreport_ibfk_1` FOREIGN KEY (`PersonId`) REFERENCES `person` (`Personid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaryreport`
--

LOCK TABLES `salaryreport` WRITE;
/*!40000 ALTER TABLE `salaryreport` DISABLE KEYS */;
INSERT INTO `salaryreport` VALUES (1,5,100000,'Data Analyst'),(2,1,120000,'Accountant'),(3,2,30000,'Data Analyst'),(4,3,60000,'Data Analyst'),(5,4,50000,'Accountant'),(6,10,100000,'Data Analyst'),(7,8,120000,'Accountant'),(8,7,30000,'Data Analyst'),(9,6,60000,'Accountant'),(10,9,50000,'Accountant');
/*!40000 ALTER TABLE `salaryreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercandidate`
--

DROP TABLE IF EXISTS `usercandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercandidate` (
  `UserID` int(11) NOT NULL,
  `Personid` int(11) DEFAULT NULL,
  `EducationLevel` enum('High School','Undergraduate','Graduate','Postgraduate') DEFAULT NULL,
  `WorkAuthorizationStatus` enum('Not Eligible','Eligible') DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  KEY `Personid` (`Personid`),
  CONSTRAINT `usercandidate_ibfk_1` FOREIGN KEY (`Personid`) REFERENCES `person` (`Personid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercandidate`
--

LOCK TABLES `usercandidate` WRITE;
/*!40000 ALTER TABLE `usercandidate` DISABLE KEYS */;
INSERT INTO `usercandidate` VALUES (1,1,'Graduate','Eligible'),(2,2,'Postgraduate','Eligible'),(3,3,'Undergraduate','Eligible'),(4,4,'High School','Not Eligible'),(5,5,'Graduate','Eligible');
/*!40000 ALTER TABLE `usercandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useremployer`
--

DROP TABLE IF EXISTS `useremployer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useremployer` (
  `Personid` int(11) DEFAULT NULL,
  `EmployerID` int(11) NOT NULL,
  `CompanyName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EmployerID`),
  KEY `Personid` (`Personid`),
  CONSTRAINT `useremployer_ibfk_1` FOREIGN KEY (`Personid`) REFERENCES `person` (`Personid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useremployer`
--

LOCK TABLES `useremployer` WRITE;
/*!40000 ALTER TABLE `useremployer` DISABLE KEYS */;
INSERT INTO `useremployer` VALUES (1,1,'Microsoft'),(2,2,'Microsoft'),(3,3,'Apple'),(4,4,'Apple'),(5,5,'Microsoft');
/*!40000 ALTER TABLE `useremployer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'glassdoor'
--

--
-- Dumping routines for database 'glassdoor'
--
/*!50003 DROP FUNCTION IF EXISTS `AdvFees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `AdvFees`(a int, b int) RETURNS int(11)
begin
declare fees int; 
set fees=a*b;
return fees;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `temp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `temp`(c int, d int) RETURNS int(11)
begin
declare fees2 int; 
set fees2=c*d;
return fees2;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `topjobsbyLocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `topjobsbyLocation`(c varchar(45))
begin
select p.city as City,sr.salary as Salary,sr.jobtitle as JobTitle
from person p inner join salaryreport sr
on p.personid=sr.personid
where p.city=c;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `topJobsbySalary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `topJobsbySalary`(JT varchar(100))
begin
 
 
 select salary,jobtitle from salaryreport
where JobTitle=Jt
limit 2;
 
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `eligiblecandidates`
--

/*!50001 DROP VIEW IF EXISTS `eligiblecandidates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `eligiblecandidates` AS select `p`.`PersonName` AS `PersonName` from (`person` `p` join `usercandidate` `u` on((`p`.`Personid` = `u`.`Personid`))) where ((`u`.`WorkAuthorizationStatus` = 'Eligible') and ((`u`.`EducationLevel` = 'Graduate') or (`u`.`EducationLevel` = 'PostGraduate'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `eventtypeandpersonname`
--

/*!50001 DROP VIEW IF EXISTS `eventtypeandpersonname`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `eventtypeandpersonname` AS select `r`.`RegistrationID` AS `registrationid`,`a`.`EventType` AS `eventtype`,`p`.`PersonName` AS `personname` from ((`registration` `r` join `activities` `a` on((`r`.`EventID` = `a`.`EventID`))) join `person` `p` on((`r`.`PersonId` = `p`.`Personid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 18:10:25
