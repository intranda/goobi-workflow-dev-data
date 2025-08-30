-- MariaDB dump 10.19-11.4.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: goobi
-- ------------------------------------------------------
-- Server version	11.4.4-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `api_token`
--

DROP TABLE IF EXISTS `api_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `token_name` varchar(255) DEFAULT NULL,
  `token_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_token`
--

LOCK TABLES `api_token` WRITE;
/*!40000 ALTER TABLE `api_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_token_method`
--

DROP TABLE IF EXISTS `api_token_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_token_method` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token_id` int(11) DEFAULT NULL,
  `method_type` varchar(255) DEFAULT NULL,
  `method_description` varchar(255) DEFAULT NULL,
  `method_url` varchar(255) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tokenid` (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_token_method`
--

LOCK TABLES `api_token_method` WRITE;
/*!40000 ALTER TABLE `api_token_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_token_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `background_job`
--

DROP TABLE IF EXISTS `background_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `background_job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `jobname` varchar(255) DEFAULT NULL,
  `jobtype` varchar(255) DEFAULT NULL,
  `jobstatus` int(11) DEFAULT NULL,
  `retrycount` int(11) DEFAULT NULL,
  `lastAltered` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `background_job`
--

LOCK TABLES `background_job` WRITE;
/*!40000 ALTER TABLE `background_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `background_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `background_job_properties`
--

DROP TABLE IF EXISTS `background_job_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `background_job_properties` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `background_job_properties`
--

LOCK TABLES `background_job_properties` WRITE;
/*!40000 ALTER TABLE `background_job_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `background_job_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `batchName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchproperties`
--

DROP TABLE IF EXISTS `batchproperties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchproperties` (
  `batchpropertyID` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `Wert` varchar(255) DEFAULT NULL,
  `IstObligatorisch` bit(1) DEFAULT NULL,
  `DatentypenID` int(11) DEFAULT NULL,
  `Auswahl` varchar(255) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `batchID` int(11) DEFAULT NULL,
  PRIMARY KEY (`batchpropertyID`),
  KEY `FK4DD023EDF131C529` (`batchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchproperties`
--

LOCK TABLES `batchproperties` WRITE;
/*!40000 ALTER TABLE `batchproperties` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchproperties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benutzer`
--

DROP TABLE IF EXISTS `benutzer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benutzer` (
  `BenutzerID` int(11) NOT NULL AUTO_INCREMENT,
  `Vorname` varchar(255) DEFAULT NULL,
  `Nachname` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `passwort` varchar(255) DEFAULT NULL,
  `Standort` varchar(255) DEFAULT NULL,
  `metadatensprache` varchar(255) DEFAULT NULL,
  `css` varchar(255) DEFAULT NULL,
  `mitMassendownload` tinyint(1) DEFAULT 0,
  `displayProcessDateColumn` tinyint(1) DEFAULT 0,
  `Tabellengroesse` int(11) DEFAULT NULL,
  `sessiontimeout` int(11) DEFAULT NULL,
  `ldapgruppenID` int(11) DEFAULT NULL,
  `ldaplogin` varchar(255) DEFAULT NULL,
  `displayDeactivatedProjects` tinyint(1) DEFAULT 0,
  `displayFinishedProcesses` tinyint(1) DEFAULT 0,
  `displaySelectBoxes` tinyint(1) DEFAULT 0,
  `displayIdColumn` tinyint(1) DEFAULT 0,
  `displayBatchColumn` tinyint(1) DEFAULT 0,
  `displayLocksColumn` tinyint(1) DEFAULT 0,
  `displaySwappingColumn` tinyint(1) DEFAULT 0,
  `displayAutomaticTasks` tinyint(1) DEFAULT 0,
  `hideCorrectionTasks` tinyint(1) DEFAULT 0,
  `displayOnlySelectedTasks` tinyint(1) DEFAULT 0,
  `displayOnlyOpenTasks` tinyint(1) DEFAULT 0,
  `displayModulesColumn` tinyint(1) DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `shortcut` varchar(255) DEFAULT NULL,
  `metseditortime` int(11) DEFAULT NULL,
  `displayOtherTasks` tinyint(1) DEFAULT 0,
  `metsDisplayTitle` tinyint(1) DEFAULT 0,
  `metsLinkImage` tinyint(1) DEFAULT 0,
  `metsDisplayPageAssignments` tinyint(1) DEFAULT 0,
  `metsDisplayHierarchy` tinyint(1) DEFAULT 0,
  `displayMetadataColumn` tinyint(1) DEFAULT 0,
  `displayThumbColumn` tinyint(1) DEFAULT 0,
  `displayGridView` tinyint(1) DEFAULT 0,
  `metsDisplayProcessID` tinyint(1) DEFAULT 0,
  `customColumns` text DEFAULT NULL,
  `customCss` text DEFAULT NULL,
  `salt` text DEFAULT NULL,
  `encryptedPassword` text DEFAULT NULL,
  `mailNotificationLanguage` varchar(255) DEFAULT NULL,
  `ssoId` varchar(255) DEFAULT NULL,
  `institution_id` int(11) NOT NULL,
  `superadmin` tinyint(1) DEFAULT NULL,
  `displayInstitutionColumn` tinyint(1) DEFAULT NULL,
  `dashboardPlugin` varchar(255) DEFAULT NULL,
  `processses_sort_field` varchar(255) DEFAULT NULL,
  `processes_sort_order` varchar(255) DEFAULT NULL,
  `tasks_sort_field` varchar(255) DEFAULT NULL,
  `tasks_sort_order` varchar(255) DEFAULT NULL,
  `displayLastEditionDate` tinyint(1) DEFAULT 0,
  `displayLastEditionUser` tinyint(1) DEFAULT 0,
  `displayLastEditionTask` tinyint(1) DEFAULT 0,
  `dashboard_configuration` text DEFAULT NULL,
  `ui_mode` varchar(190) DEFAULT 'regular',
  `displayrulesetcolumn` tinyint(1) DEFAULT 0,
  `userstatus` varchar(190) DEFAULT NULL,
  `additional_data` text DEFAULT NULL,
  `additional_search_fields` text DEFAULT NULL,
  `displayNumberOfImagesColumn` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`BenutzerID`),
  KEY `FK6564F1FD78EC6B0F` (`ldapgruppenID`),
  KEY `id_x_login` (`BenutzerID`,`login`(50))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benutzer`
--

LOCK TABLES `benutzer` WRITE;
/*!40000 ALTER TABLE `benutzer` DISABLE KEYS */;
INSERT INTO `benutzer` VALUES
(1,'Don','Akerman','testadmin','','Rome','','/css/default.css',0,0,10,7200,2,'',0,0,0,0,0,0,0,0,0,0,0,0,'','ctrl+shift',0,0,0,0,0,0,0,0,0,0,NULL,NULL,'Ip20Qnq/Tv4473DtxJe3Ig==','CUUSVkEer/VFb8WjxvH5jG30q55BGQ1RUTE2aalPNgA=',NULL,NULL,1,1,NULL,'intranda_dashboard_extended','prozesse.titel',' asc','prioritaet',' desc',0,0,0,NULL,'regular',0,'active',NULL,NULL,NULL),
(2,'Delbert','Hawking','testscanning','','Paris','','/css/default.css',0,0,10,7200,2,'',0,0,0,0,0,0,0,0,0,0,0,0,'','ctrl+shift',0,0,0,0,0,0,0,0,0,0,NULL,NULL,'ybu5U6WVNRqDjPNjs54XCw==','u2tbeDKQ4xyeCgOyHNi4Bd7oBIGeLQynUx80oTmIJG4=',NULL,NULL,1,NULL,NULL,'intranda_dashboard_extended','prozesse.titel',' asc','prioritaet',' desc',0,0,0,NULL,'regular',0,'active',NULL,NULL,NULL),
(3,'Moss','Readdie','testqc','','Sidney','','/css/default.css',0,0,10,7200,2,'',0,0,0,0,0,0,0,0,0,0,0,0,'','ctrl+shift',0,0,0,0,0,0,0,0,0,0,NULL,NULL,'2xYgOsQvn2q1WUpmxmw7dA==','MNw4D1PVxPUX+C+CjIc/OaAXY6mF7mqaOC12tXmbsgQ=',NULL,NULL,1,NULL,NULL,'intranda_dashboard_extended','prozesse.titel',' asc','prioritaet',' desc',0,0,0,NULL,'regular',0,'active',NULL,NULL,NULL),
(4,'Cedric','Fuller','testbookmanager','','Tokio','','/css/default.css',0,0,10,7200,2,'',0,0,0,0,0,0,0,0,0,0,0,0,'','ctrl+shift',0,0,0,0,0,0,0,0,0,0,NULL,NULL,'Q/yoV/TZrPtKSoG/++fHJw==','0z3w8lffi+uAEeg7vBmQcYu86B/NrQqO6btt87nZPiw=',NULL,NULL,1,NULL,NULL,'intranda_dashboard_extended','prozesse.titel',' asc','prioritaet',' desc',0,0,0,NULL,'regular',0,'active',NULL,NULL,NULL),
(5,'Wilburn','Anson','testmetadata','','New York','','/css/default.css',0,0,10,7200,2,'',0,0,0,0,0,0,0,0,0,0,0,0,'','ctrl+shift',0,0,0,0,0,0,0,0,0,0,NULL,NULL,'zDC6nHAP9pElEVuUit8w2Q==','lHWk9VVpQi/NuEz3BS07Hpno0BS7+bV+nL89QJDudTs=',NULL,NULL,1,NULL,NULL,'intranda_dashboard_extended','prozesse.titel',' asc','prioritaet',' desc',0,0,0,NULL,'regular',0,'active',NULL,NULL,NULL),
(6,'Hayden','Smedley','testprojectmanagement','','London','','/css/default.css',0,0,10,7200,2,'',0,0,0,0,0,0,0,0,0,0,0,0,'','ctrl+shift',0,0,0,0,0,0,0,0,0,0,NULL,NULL,'Xiv1CN7kuoAdOGcRvrVymQ==','o2rh4wXTNmM6NgEL9JJYad7jVxlXxHf0DShihBxzo20=',NULL,NULL,1,NULL,NULL,'intranda_dashboard_extended','prozesse.titel',' asc','prioritaet',' desc',0,0,0,NULL,'regular',0,'active',NULL,NULL,NULL),
(7,'Goobi','Administrator','goobi',NULL,'Göttingen','','/css/default.css',0,0,10,7200,2,'',0,0,0,0,0,0,0,0,0,0,0,0,'','ctrl+shift',0,0,0,0,0,0,0,0,0,0,NULL,NULL,'39gwU5p2ekUMLJ7j71d+RQ==','0QtuNTfYN6gL6FfmC17bD2flGuwIAEP5hySnw0KClgQ=',NULL,NULL,1,0,0,'intranda_dashboard_extended','prozesse.titel',' asc','prioritaet',' desc',0,0,0,NULL,'regular',0,'active',NULL,NULL,0);
/*!40000 ALTER TABLE `benutzer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benutzereigenschaften`
--

DROP TABLE IF EXISTS `benutzereigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benutzereigenschaften` (
  `benutzereigenschaftenID` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `Wert` text DEFAULT NULL,
  `IstObligatorisch` tinyint(1) DEFAULT 0,
  `DatentypenID` int(11) DEFAULT NULL,
  `Auswahl` varchar(255) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `BenutzerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`benutzereigenschaftenID`),
  KEY `FK963DAE0F8896477B` (`BenutzerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benutzereigenschaften`
--

LOCK TABLES `benutzereigenschaften` WRITE;
/*!40000 ALTER TABLE `benutzereigenschaften` DISABLE KEYS */;
/*!40000 ALTER TABLE `benutzereigenschaften` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benutzergruppen`
--

DROP TABLE IF EXISTS `benutzergruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benutzergruppen` (
  `BenutzergruppenID` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) DEFAULT NULL,
  `berechtigung` int(11) DEFAULT NULL,
  `roles` text DEFAULT NULL,
  `institution_id` int(11) NOT NULL,
  PRIMARY KEY (`BenutzergruppenID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benutzergruppen`
--

LOCK TABLES `benutzergruppen` WRITE;
/*!40000 ALTER TABLE `benutzergruppen` DISABLE KEYS */;
INSERT INTO `benutzergruppen` VALUES
(1,'Administration',1,'Admin_Administrative_Tasks;Admin_All_Mail_Notifications;Admin_Dockets;Admin_Export_Processdata;Admin_Jobtypes;Admin_Ldap;Admin_Menu;Admin_Plugins;Admin_Projects;Admin_Queue;Admin_Rulesets;Admin_Usergroups;Admin_Users;Admin_Users_Allow_Switch;Admin_Users_Change_Passwords;Admin_Vocabulary;Admin_Vocabulary_Management;Plugin_administration_config_file_editor;Plugin_administration_ruleset_editor;Statistics_CurrentUsers;Statistics_CurrentUsers_Details;Statistics_General;Statistics_Menu;Statistics_Plugins;Task_List;Task_Menu;Task_Mets_Files;Task_Mets_Metadata;Task_Mets_Pagination;Task_Mets_Structure;Workflow_General_Batches;Workflow_General_Details;Workflow_General_Details_Edit;Workflow_General_Menu;Workflow_General_Plugins;Workflow_General_Search;Workflow_General_Show_All_Projects;Workflow_ProcessTemplates;Workflow_ProcessTemplates_Clone;Workflow_ProcessTemplates_Create;Workflow_ProcessTemplates_Import_Multi;Workflow_ProcessTemplates_Import_Single;Workflow_Processes;Workflow_Processes_Allow_Download;Workflow_Processes_Allow_Export;Workflow_Processes_Allow_GoobiScript;Workflow_Processes_Allow_Linking;Workflow_Processes_Allow_Template_Change;Workflow_Processes_Show_Deactivated_Projects;Workflow_Processes_Show_Finished;Workflow_Processes_Show_Processlog_File_Deletion;',1),
(2,'Scanning officers	',4,'Statistics_CurrentUsers;Task_List;Task_Menu;',1),
(3,'Quality control officers',4,'Statistics_CurrentUsers;Task_List;Task_Menu;',1),
(4,'Book managing officers',4,'Statistics_CurrentUsers;Task_List;Task_Menu;',1),
(5,'Metadata officers',4,'Statistics_CurrentUsers;Task_List;Task_Menu;Task_Mets_Metadata;Task_Mets_Pagination;Task_Mets_Structure;',1),
(6,'Project management',2,'Statistics_CurrentUsers;Statistics_CurrentUsers_Details;Statistics_General;Statistics_Menu;Statistics_Plugins;Task_List;Task_Menu;Task_Mets_Metadata;Task_Mets_Pagination;Task_Mets_Structure;Workflow_General_Batches;Workflow_General_Details;Workflow_General_Details_Edit;Workflow_General_Menu;Workflow_General_Plugins;Workflow_General_Search;Workflow_ProcessTemplates;Workflow_ProcessTemplates_Clone;Workflow_ProcessTemplates_Create;Workflow_ProcessTemplates_Import_Multi;Workflow_ProcessTemplates_Import_Single;Workflow_Processes;Workflow_Processes_Allow_Download;Workflow_Processes_Allow_Export;Workflow_Processes_Allow_Linking;Workflow_Processes_Show_Deactivated_Projects;Workflow_Processes_Show_Finished;',1);
/*!40000 ALTER TABLE `benutzergruppen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benutzergruppenmitgliedschaft`
--

DROP TABLE IF EXISTS `benutzergruppenmitgliedschaft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benutzergruppenmitgliedschaft` (
  `BenutzerGruppenID` int(11) NOT NULL,
  `BenutzerID` int(11) NOT NULL,
  PRIMARY KEY (`BenutzerID`,`BenutzerGruppenID`),
  KEY `FK45CBE5781843242F` (`BenutzerGruppenID`),
  KEY `FK45CBE5788896477B` (`BenutzerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benutzergruppenmitgliedschaft`
--

LOCK TABLES `benutzergruppenmitgliedschaft` WRITE;
/*!40000 ALTER TABLE `benutzergruppenmitgliedschaft` DISABLE KEYS */;
INSERT INTO `benutzergruppenmitgliedschaft` VALUES
(1,1),
(1,7),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6);
/*!40000 ALTER TABLE `benutzergruppenmitgliedschaft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databaseversion`
--

DROP TABLE IF EXISTS `databaseversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databaseversion` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databaseversion`
--

LOCK TABLES `databaseversion` WRITE;
/*!40000 ALTER TABLE `databaseversion` DISABLE KEYS */;
INSERT INTO `databaseversion` VALUES
(57);
/*!40000 ALTER TABLE `databaseversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dockets`
--

DROP TABLE IF EXISTS `dockets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dockets` (
  `docketID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`docketID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dockets`
--

LOCK TABLES `dockets` WRITE;
/*!40000 ALTER TABLE `dockets` DISABLE KEYS */;
INSERT INTO `dockets` VALUES
(1,'Standard','docket.xsl');
/*!40000 ALTER TABLE `dockets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_history`
--

DROP TABLE IF EXISTS `export_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `export_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `record_id` int(11) NOT NULL,
  `record_identifier` varchar(255) NOT NULL,
  `record_title` text DEFAULT NULL,
  `repository_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_history`
--

LOCK TABLES `export_history` WRITE;
/*!40000 ALTER TABLE `export_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goobiscript_template`
--

DROP TABLE IF EXISTS `goobiscript_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goobiscript_template` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `goobiscript` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goobiscript_template`
--

LOCK TABLES `goobiscript_template` WRITE;
/*!40000 ALTER TABLE `goobiscript_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `goobiscript_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `historyid` int(11) NOT NULL AUTO_INCREMENT,
  `numericvalue` double DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `processID` int(11) DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `FK373FE4946640305C` (`processID`),
  KEY `type_x_numericvalue` (`type`,`numericvalue`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES
(1,136,NULL,1,'2016-10-28 11:24:44',3),
(2,1,'Vorgang anlegen',6,'2016-10-28 11:24:43',3),
(3,1,'Vorgang anlegen',7,'2016-10-28 11:24:25',3),
(4,1,'Vorgang anlegen',10,'2016-10-28 11:24:25',3),
(5,2,'Einspielen der Images',7,'2016-10-28 11:24:25',3),
(6,2,'Einspielen der Images',10,'2016-10-28 11:24:25',3),
(7,3,'Qualitätskontrolle',10,'2016-10-28 11:24:25',3),
(8,4,'Erstellung der Tiff-Header und komprimierter Derivate',10,'2016-10-28 11:24:25',3),
(9,5,'Struktur- und Metadaten',10,'2016-10-28 11:24:25',3),
(10,6,'Export',10,'2016-10-28 11:24:25',3),
(11,7,'Archivierung',10,'2016-10-28 11:24:25',3),
(12,2,'Einspielen der Images',8,'2016-10-28 11:25:03',3),
(13,2,'Einspielen der Images',6,'2016-10-28 11:25:36',3),
(14,3,'Qualitätskontrolle',7,'2016-10-28 11:25:36',3),
(15,3,'Qualitätskontrolle',8,'2016-10-28 11:26:41',3),
(16,3,'Qualitätskontrolle',6,'2016-10-28 11:26:57',3),
(17,4,'Erstellung der Tiff-Header und komprimierter Derivate',7,'2016-10-28 11:26:57',3),
(19,4,'Erstellung der Tiff-Header und komprimierter Derivate',8,'2016-10-28 11:26:57',3),
(20,4,'Erstellung der Tiff-Header und komprimierter Derivate',6,'2016-10-28 12:06:51',3),
(21,5,'Struktur- und Metadaten',7,'2016-10-28 12:06:51',3),
(22,2403,NULL,1,'2019-07-20 08:59:26',5),
(23,1,'Bibliographische Aufnahme',6,'2019-07-20 08:59:24',5),
(24,1,'Bibliographische Aufnahme',7,'2019-07-20 08:59:14',5),
(25,1,'Bibliographische Aufnahme',10,'2019-07-20 08:59:14',5),
(26,2,'Einspielen der Images',7,'2019-07-20 08:59:14',5),
(27,2,'Einspielen der Images',10,'2019-07-20 08:59:14',5),
(28,3,'Qualitätskontrolle',10,'2019-07-20 08:59:14',5),
(29,4,'Erstellung der Tiff-Header und komprimierter Derivate',10,'2019-07-20 08:59:14',5),
(30,5,'Struktur- und Metadaten',10,'2019-07-20 08:59:14',5),
(31,6,'Export in viewer',10,'2019-07-20 08:59:14',5),
(32,7,'Archivierung',10,'2019-07-20 08:59:14',5),
(43,225399057,NULL,1,'2022-03-08 11:15:28',3),
(44,42305040,NULL,14,'2022-03-08 11:15:28',3),
(45,183055610,NULL,15,'2022-03-08 11:15:28',3),
(46,56,NULL,3,'2022-03-08 11:15:28',3),
(47,1,'Data import',6,'2022-03-08 11:15:27',3),
(48,1,'Data import',7,'2022-03-08 11:15:13',3),
(49,1,'Data import',10,'2022-03-08 11:15:13',3),
(50,2,'Get manuscript from book depot',10,'2022-03-08 11:15:13',3),
(51,3,'Scanning',10,'2022-03-08 11:15:13',3),
(52,5,'Quality control',10,'2022-03-08 11:15:13',3),
(53,6,'Image processing',10,'2022-03-08 11:15:13',3),
(54,7,'Metadata enrichment',10,'2022-03-08 11:15:13',3),
(55,8,'Export to viewer',10,'2022-03-08 11:15:13',3),
(56,9,'Bring manuscript back to book depot',10,'2022-03-08 11:15:13',3),
(57,72758561,NULL,1,'2022-03-08 11:15:57',4),
(58,12574204,NULL,14,'2022-03-08 11:15:57',4),
(59,60162032,NULL,15,'2022-03-08 11:15:57',4),
(60,23,NULL,3,'2022-03-08 11:15:57',4),
(61,1,'Data import',6,'2022-03-08 11:15:56',4),
(62,1,'Data import',7,'2022-03-08 11:15:43',4),
(63,1,'Data import',10,'2022-03-08 11:15:43',4),
(64,2,'Scanning',10,'2022-03-08 11:15:43',4),
(65,4,'Quality control',10,'2022-03-08 11:15:43',4),
(66,5,'Image processing',10,'2022-03-08 11:15:43',4),
(67,6,'Metadata enrichment',10,'2022-03-08 11:15:43',4),
(68,7,'Export to viewer',10,'2022-03-08 11:15:43',4),
(69,176930872,NULL,1,'2022-03-08 11:16:24',5),
(70,32413699,NULL,14,'2022-03-08 11:16:24',5),
(71,140908946,NULL,15,'2022-03-08 11:16:24',5),
(72,74,NULL,3,'2022-03-08 11:16:24',5),
(73,1,'Data import',6,'2022-03-08 11:16:24',5),
(74,1,'Data import',7,'2022-03-08 11:16:01',5),
(75,1,'Data import',10,'2022-03-08 11:16:01',5),
(76,2,'Scanning',10,'2022-03-08 11:16:01',5),
(77,4,'Quality control',10,'2022-03-08 11:16:01',5),
(78,5,'Image processing',10,'2022-03-08 11:16:01',5),
(79,6,'Metadata enrichment',10,'2022-03-08 11:16:01',5),
(80,7,'Export to viewer',10,'2022-03-08 11:16:01',5),
(81,7,'Metadata enrichment',6,'2022-03-08 14:35:31',3),
(82,8,'Export to viewer',7,'2022-03-08 14:35:31',3),
(83,8,'Export to viewer',8,'2022-03-08 14:35:31',3),
(84,6,'Image processing',6,'2022-03-08 14:35:32',3),
(85,5,'Quality control',6,'2022-03-08 14:35:32',3),
(86,3,'Scanning',6,'2022-03-08 14:35:33',3),
(87,2,'Get manuscript from book depot',6,'2022-03-08 14:35:34',3),
(88,8,'Export to viewer',6,'2022-03-08 14:35:34',3),
(89,9,'Bring manuscript back to book depot',7,'2022-03-08 14:35:34',3),
(90,2,'Scanning',6,'2022-03-08 14:35:55',5),
(91,4,'Quality control',7,'2022-03-08 14:35:55',5),
(92,4,'Quality control',6,'2022-03-08 14:36:01',5),
(93,5,'Image processing',6,'2022-03-08 14:36:02',5),
(94,6,'Metadata enrichment',6,'2022-03-08 14:36:09',5),
(95,6,'Metadata enrichment',6,'2022-03-08 14:36:22',4),
(96,5,'Image processing',6,'2022-03-08 14:36:22',4),
(97,2,'Scanning',6,'2022-03-08 14:36:24',4),
(98,4,'Quality control',6,'2022-03-08 14:36:25',4);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shortName` varchar(255) DEFAULT NULL,
  `longName` text DEFAULT NULL,
  `allowAllRulesets` tinyint(1) DEFAULT NULL,
  `allowAllDockets` tinyint(1) DEFAULT NULL,
  `allowAllAuthentications` tinyint(1) DEFAULT NULL,
  `allowAllPlugins` tinyint(1) DEFAULT NULL,
  `additional_data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES
(1,'goobi','goobi',1,1,1,1,NULL);
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_configuration`
--

DROP TABLE IF EXISTS `institution_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `institution_id` int(10) unsigned NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `object_type` text DEFAULT NULL,
  `object_name` text DEFAULT NULL,
  `selected` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_configuration`
--

LOCK TABLES `institution_configuration` WRITE;
/*!40000 ALTER TABLE `institution_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(64) NOT NULL DEFAULT 'WAITING',
  `repository_id` int(11) NOT NULL,
  `repository_name` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobTypes`
--

DROP TABLE IF EXISTS `jobTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobTypes` (
  `jobTypes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobTypes`
--

LOCK TABLES `jobTypes` WRITE;
/*!40000 ALTER TABLE `jobTypes` DISABLE KEYS */;
INSERT INTO `jobTypes` VALUES
('[]');
/*!40000 ALTER TABLE `jobTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal`
--

DROP TABLE IF EXISTS `journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `objectID` int(10) NOT NULL,
  `creationDate` datetime DEFAULT current_timestamp(),
  `userName` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `filename` mediumtext DEFAULT NULL,
  `entrytype` varchar(255) DEFAULT 'process',
  PRIMARY KEY (`id`),
  KEY `processID` (`objectID`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal`
--

LOCK TABLES `journal` WRITE;
/*!40000 ALTER TABLE `journal` DISABLE KEYS */;
INSERT INTO `journal` VALUES
(8,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Scanning\' to position 3 in process details.',NULL,'process'),
(9,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Quality assurance\' to position 4 in process details.',NULL,'process'),
(10,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Creation of TIFF header and derivative\' to position 5 in process details.',NULL,'process'),
(11,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Metadata indexing\' to position 6 in process details.',NULL,'process'),
(12,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Export to viewer\' to position 7 in process details.',NULL,'process'),
(13,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Archiving\' to position 8 in process details.',NULL,'process'),
(14,4,'2022-03-08 10:34:13','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(40,3,'2022-03-08 14:35:19','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 1 in process details.',NULL,'process'),
(41,3,'2022-03-08 14:35:19','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(42,3,'2022-03-08 14:35:20','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 1 in process details.',NULL,'process'),
(43,3,'2022-03-08 14:35:20','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(44,3,'2022-03-08 14:35:21','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 1 in process details.',NULL,'process'),
(45,3,'2022-03-08 14:35:21','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(46,3,'2022-03-08 14:35:22','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 1 in process details.',NULL,'process'),
(47,3,'2022-03-08 14:35:22','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(48,3,'2022-03-08 14:35:26','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 2 in process details.',NULL,'process'),
(49,3,'2022-03-08 14:35:26','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(50,3,'2022-03-08 14:35:27','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 2 in process details.',NULL,'process'),
(51,3,'2022-03-08 14:35:27','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(52,3,'2022-03-08 14:35:28','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 2 in process details.',NULL,'process'),
(53,3,'2022-03-08 14:35:28','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(54,3,'2022-03-08 14:35:28','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 2 in process details.',NULL,'process'),
(55,3,'2022-03-08 14:35:28','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(56,3,'2022-03-08 14:35:29','Administrator, Goobi','debug','Changed status for step \'Get manuscript from book depot\' to 2 in process details.',NULL,'process'),
(57,3,'2022-03-08 14:35:29','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(58,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 3 in process details.',NULL,'process'),
(59,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Step \'Metadata enrichment\' closed.',NULL,'process'),
(60,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Step \'Export to viewer\' opened.',NULL,'process'),
(61,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Step \'Export to viewer\' started to work automatically.',NULL,'process'),
(62,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(63,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 3 in process details.',NULL,'process'),
(64,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Step \'Image processing\' closed.',NULL,'process'),
(65,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(66,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 3 in process details.',NULL,'process'),
(67,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Step \'Quality control\' closed.',NULL,'process'),
(68,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(69,3,'2022-03-08 14:35:33','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 3 in process details.',NULL,'process'),
(70,3,'2022-03-08 14:35:33','Administrator, Goobi','debug','Step \'Scanning\' closed.',NULL,'process'),
(71,3,'2022-03-08 14:35:33','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(72,3,'2022-03-08 14:35:34','Administrator, Goobi','debug','Changed status for step \'Get manuscript from book depot\' to 3 in process details.',NULL,'process'),
(73,3,'2022-03-08 14:35:34','Administrator, Goobi','debug','Step \'Get manuscript from book depot\' closed.',NULL,'process'),
(74,3,'2022-03-08 14:35:34','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(75,3,'2022-03-08 14:35:34','- automatic -','debug','The export for process with ID \'3\' was done successfully.',NULL,'process'),
(76,3,'2022-03-08 14:35:34','- automatic -','debug','Step \'Export to viewer\' closed.',NULL,'process'),
(77,3,'2022-03-08 14:35:34','- automatic -','debug','Step \'Bring manuscript back to book depot\' opened.',NULL,'process'),
(78,3,'2022-03-08 14:35:44','Administrator, Goobi','debug','Changed status for step \'Export to viewer\' to 1 in process details.',NULL,'process'),
(79,3,'2022-03-08 14:35:44','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(80,3,'2022-03-08 14:35:46','Administrator, Goobi','debug','Changed status for step \'Bring manuscript back to book depot\' to 0 in process details.',NULL,'process'),
(81,3,'2022-03-08 14:35:46','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(82,5,'2022-03-08 14:35:54','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 2 in process details.',NULL,'process'),
(83,5,'2022-03-08 14:35:54','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(84,5,'2022-03-08 14:35:55','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 3 in process details.',NULL,'process'),
(85,5,'2022-03-08 14:35:55','Administrator, Goobi','debug','Step \'Scanning\' closed.',NULL,'process'),
(86,5,'2022-03-08 14:35:55','Administrator, Goobi','debug','Step \'Quality control\' opened.',NULL,'process'),
(87,5,'2022-03-08 14:35:55','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(88,5,'2022-03-08 14:35:56','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 2 in process details.',NULL,'process'),
(89,5,'2022-03-08 14:35:56','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(90,5,'2022-03-08 14:35:58','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 1 in process details.',NULL,'process'),
(91,5,'2022-03-08 14:35:58','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(92,5,'2022-03-08 14:35:59','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 1 in process details.',NULL,'process'),
(93,5,'2022-03-08 14:35:59','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(94,5,'2022-03-08 14:36:00','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 2 in process details.',NULL,'process'),
(95,5,'2022-03-08 14:36:00','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(96,5,'2022-03-08 14:36:01','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 3 in process details.',NULL,'process'),
(97,5,'2022-03-08 14:36:01','Administrator, Goobi','debug','Step \'Quality control\' closed.',NULL,'process'),
(98,5,'2022-03-08 14:36:01','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(99,5,'2022-03-08 14:36:02','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 3 in process details.',NULL,'process'),
(100,5,'2022-03-08 14:36:02','Administrator, Goobi','debug','Step \'Image processing\' closed.',NULL,'process'),
(101,5,'2022-03-08 14:36:02','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(102,5,'2022-03-08 14:36:07','Administrator, Goobi','debug','Changed status for step \'Export to viewer\' to 1 in process details.',NULL,'process'),
(103,5,'2022-03-08 14:36:07','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(104,5,'2022-03-08 14:36:08','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 2 in process details.',NULL,'process'),
(105,5,'2022-03-08 14:36:08','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(106,5,'2022-03-08 14:36:09','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 3 in process details.',NULL,'process'),
(107,5,'2022-03-08 14:36:09','Administrator, Goobi','debug','Step \'Metadata enrichment\' closed.',NULL,'process'),
(108,5,'2022-03-08 14:36:09','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(109,4,'2022-03-08 14:36:16','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 1 in process details.',NULL,'process'),
(110,4,'2022-03-08 14:36:16','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(111,4,'2022-03-08 14:36:17','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 1 in process details.',NULL,'process'),
(112,4,'2022-03-08 14:36:17','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(113,4,'2022-03-08 14:36:18','Administrator, Goobi','debug','Changed status for step \'Export to viewer\' to 1 in process details.',NULL,'process'),
(114,4,'2022-03-08 14:36:18','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(115,4,'2022-03-08 14:36:19','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 2 in process details.',NULL,'process'),
(116,4,'2022-03-08 14:36:19','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(117,4,'2022-03-08 14:36:19','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 2 in process details.',NULL,'process'),
(118,4,'2022-03-08 14:36:19','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(119,4,'2022-03-08 14:36:20','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 1 in process details.',NULL,'process'),
(120,4,'2022-03-08 14:36:20','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(121,4,'2022-03-08 14:36:21','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 2 in process details.',NULL,'process'),
(122,4,'2022-03-08 14:36:21','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(123,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 3 in process details.',NULL,'process'),
(124,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Step \'Metadata enrichment\' closed.',NULL,'process'),
(125,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(126,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 3 in process details.',NULL,'process'),
(127,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Step \'Image processing\' closed.',NULL,'process'),
(128,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(129,4,'2022-03-08 14:36:23','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 2 in process details.',NULL,'process'),
(130,4,'2022-03-08 14:36:23','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(131,4,'2022-03-08 14:36:24','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 3 in process details.',NULL,'process'),
(132,4,'2022-03-08 14:36:24','Administrator, Goobi','debug','Step \'Scanning\' closed.',NULL,'process'),
(133,4,'2022-03-08 14:36:24','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(134,4,'2022-03-08 14:36:25','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 3 in process details.',NULL,'process'),
(135,4,'2022-03-08 14:36:25','Administrator, Goobi','debug','Step \'Quality control\' closed.',NULL,'process'),
(136,4,'2022-03-08 14:36:25','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,'process'),
(164,4,'2022-09-26 16:40:52','Administrator, Goobi','debug','Started export using \'ExportDMS\'.',NULL,'process'),
(165,5,'2022-09-26 16:40:56','Administrator, Goobi','debug','Started export using \'ExportDMS\'.',NULL,'process'),
(166,3,'2022-09-26 16:40:58','Administrator, Goobi','debug','Started export using \'ExportDMS\'.',NULL,'process'),
(233,3,'2022-10-07 08:03:51','Administrator, Goobi','debug','Started export using \'ExportDMS\'.',NULL,'process'),
(234,5,'2022-10-07 08:03:54','Administrator, Goobi','debug','Started export using \'ExportDMS\'.',NULL,'process'),
(235,4,'2022-10-07 08:03:56','Administrator, Goobi','debug','Started export using \'ExportDMS\'.',NULL,'process');
/*!40000 ALTER TABLE `journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldapgruppen`
--

DROP TABLE IF EXISTS `ldapgruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldapgruppen` (
  `ldapgruppenID` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) DEFAULT NULL,
  `homeDirectory` varchar(255) DEFAULT NULL,
  `gidNumber` varchar(255) DEFAULT NULL,
  `userDN` varchar(255) DEFAULT NULL,
  `objectClasses` varchar(255) DEFAULT NULL,
  `sambaSID` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `gecos` varchar(255) DEFAULT NULL,
  `loginShell` varchar(255) DEFAULT NULL,
  `sambaAcctFlags` varchar(255) DEFAULT NULL,
  `sambaLogonScript` varchar(255) DEFAULT NULL,
  `sambaPrimaryGroupSID` varchar(255) DEFAULT NULL,
  `sambaPwdMustChange` varchar(255) DEFAULT NULL,
  `sambaPasswordHistory` varchar(255) DEFAULT NULL,
  `sambaLogonHours` varchar(255) DEFAULT NULL,
  `sambaKickoffTime` varchar(255) DEFAULT NULL,
  `adminLogin` varchar(255) DEFAULT NULL,
  `adminPassword` varchar(255) DEFAULT NULL,
  `ldapUrl` varchar(255) DEFAULT NULL,
  `attributeToTest` varchar(255) DEFAULT NULL,
  `valueOfAttribute` varchar(255) DEFAULT NULL,
  `nextFreeUnixId` varchar(255) DEFAULT NULL,
  `pathToRootCertificate` varchar(255) DEFAULT NULL,
  `pathToPdcCertificate` varchar(255) DEFAULT NULL,
  `encryptionType` varchar(255) DEFAULT NULL,
  `useSsl` tinyint(1) DEFAULT NULL,
  `authenticationType` varchar(255) DEFAULT NULL,
  `readonly` tinyint(1) DEFAULT NULL,
  `readDirectoryAnonymous` tinyint(1) DEFAULT NULL,
  `useLocalDirectoryConfiguration` tinyint(1) DEFAULT NULL,
  `ldapHomeDirectoryAttributeName` varchar(255) DEFAULT NULL,
  `useTLS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ldapgruppenID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldapgruppen`
--

LOCK TABLES `ldapgruppen` WRITE;
/*!40000 ALTER TABLE `ldapgruppen` DISABLE KEYS */;
INSERT INTO `ldapgruppen` VALUES
(2,'Standard','/home/{login}','100','cn={login},ou=users,ou=goobi,dc=goobihost,dc=example,dc=net','top,inetOrgPerson,posixAccount,shadowAccount,sambaSamAccount','S-1-5-21-3214869138-56264717-4102676759-{uidnumber*2+1000} ','{login}','{login}','Mitarbeiter','{user full name}','Mitarbeiter','/bin/false','[UX         ]','_{login}.bat','S-1-5-21-3214869138-56264717-4102676759-100','2147483647','0000000000000000000000000000000000000000000000000000000000000000','FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'database',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ldapgruppen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata`
--

DROP TABLE IF EXISTS `metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata` (
  `processid` int(11) DEFAULT NULL,
  `name` varchar(190) DEFAULT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `print` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  KEY `id` (`processid`),
  KEY `metadataname` (`name`),
  FULLTEXT KEY `idx_metadata_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata`
--

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
INSERT INTO `metadata` VALUES
(3,'_electronicPublisher','Goobi','Goobi'),
(3,'_dateDigitization','2020','2020'),
(3,'shelfmarksource','8 ZOOL VI, 5214','8 ZOOL VI, 5214'),
(3,'TitleDocMain','Sphingvm Evropaearvm larvae qvotqvot adhvc innotvervnt ad Linnaeorvm Fabriciorvm et Viennensivm imprimis catalogos systematicos recensitae ; cvm tabvlis aeneis qvatvordecim ; oder die evropaeischen Schwaermerravpen nach den systematischen Verzeichnissen eines Linne, Fabricius vnd vorzuiglich der Wienerischen Natvrforscher ; lateinisch vnd tevtsch in vierzehen erlevchteten vnd vnerlevchteten Kvpfern','Sphingvm Evropaearvm larvae qvotqvot adhvc innotvervnt ad Linnaeorvm Fabriciorvm et Viennensivm imprimis catalogos systematicos recensitae ; cvm tabvlis aeneis qvatvordecim ; oder die evropaeischen Schwaermerravpen nach den systematischen Verzeichnissen eines Linne, Fabricius vnd vorzuiglich der Wienerischen Natvrforscher ; lateinisch vnd tevtsch in vierzehen erlevchteten vnd vnerlevchteten Kvpfern'),
(3,'CatalogIDDigital','625017145','625017145'),
(3,'TSL_ATS','bergsphi','bergsphi'),
(3,'_digitalOrigin','reformatted digital','reformatted digital'),
(3,'PublicationYear','1782','1782'),
(3,'DocLanguage','ger','ger'),
(3,'singleDigCollection','General','General'),
(3,'index.Identifier','[625017145]','[625017145] '),
(3,'Subject','Raupe','Raupe; Schmetterlinge; Insekten; Wirbellose; Zoologie'),
(3,'Subject','Schmetterlinge','Raupe; Schmetterlinge; Insekten; Wirbellose; Zoologie'),
(3,'Subject','Insekten','Raupe; Schmetterlinge; Insekten; Wirbellose; Zoologie'),
(3,'Subject','Wirbellose','Raupe; Schmetterlinge; Insekten; Wirbellose; Zoologie'),
(3,'Subject','Zoologie','Raupe; Schmetterlinge; Insekten; Wirbellose; Zoologie'),
(3,'TitleDocMainShort','Sphingvm Evropaearvm larvae qvotqvot adhvc innotvervnt ad Linnaeorvm Fabriciorvm et Viennensivm imprimis catalogos systematicos recensitae ; cvm tabvlis aeneis qvatvordecim ; oder die evropaeischen Schwaermerravpen nach den systematischen Verzeichnissen eines Linne, Fabricius vnd vorzuiglich der Wienerischen Natvrforscher ; lateinisch vnd tevtsch in vierzehen erlevchteten vnd vnerlevchteten Kvpfern','Sphingvm Evropaearvm larvae qvotqvot adhvc innotvervnt ad Linnaeorvm Fabriciorvm et Viennensivm imprimis catalogos systematicos recensitae ; cvm tabvlis aeneis qvatvordecim ; oder die evropaeischen Schwaermerravpen nach den systematischen Verzeichnissen eines Linne, Fabricius vnd vorzuiglich der Wienerischen Natvrforscher ; lateinisch vnd tevtsch in vierzehen erlevchteten vnd vnerlevchteten Kvpfern'),
(3,'PlaceOfPublication','Hanau','Hanau'),
(3,'pathimagefiles','file:///opt/digiverso/g2g/workspace/workflow/metadata/3/images/bergsphi_625017145_tif','file:///opt/digiverso/g2g/workspace/workflow/metadata/3/images/bergsphi_625017145_tif'),
(3,'_electronicEdition','[Electronic ed.]','[Electronic ed.]'),
(3,'_placeOfElectronicOrigin','Göttingen','Göttingen'),
(3,'PublisherName','Selbstverl.','Selbstverl.'),
(3,'CatalogIDSource','625017145','625017145'),
(3,'SizeSourcePrint','12 S., 14 Bl','12 S., 14 Bl'),
(3,'DocStruct','Monograph','Monograph'),
(3,'FormatSourcePrint','4\"','4\"'),
(3,'PhysicalLocation','Goobi','Goobi'),
(4,'_electronicPublisher','Goobi','Goobi'),
(4,'_dateDigitization','2020','2020'),
(4,'shelfmarksource','8 ZOOL VIII, 8545','8 ZOOL VIII, 8545'),
(4,'TitleDocMain','Specimen ichthyologicum De muraena et ophichtho','Specimen ichthyologicum De muraena et ophichtho'),
(4,'CatalogIDDigital','577843346','577843346'),
(4,'TSL_ATS','thunspec','thunspec'),
(4,'_digitalOrigin','reformatted digital','reformatted digital'),
(4,'PublicationYear','1789','1789'),
(4,'DocLanguage','lat','lat'),
(4,'singleDigCollection','Biology','Biology'),
(4,'index.Identifier','[577843346]','[577843346] '),
(4,'Subject','Knochenfische','Knochenfische; Fische; Wirbeltiere; Zoologie'),
(4,'Subject','Fische','Knochenfische; Fische; Wirbeltiere; Zoologie'),
(4,'Subject','Wirbeltiere','Knochenfische; Fische; Wirbeltiere; Zoologie'),
(4,'Subject','Zoologie','Knochenfische; Fische; Wirbeltiere; Zoologie'),
(4,'TitleDocMainShort','Specimen ichthyologicum De muraena et ophichtho','Specimen ichthyologicum De muraena et ophichtho'),
(4,'PlaceOfPublication','Upsaliæ','Upsaliæ'),
(4,'pathimagefiles','file:///opt/digiverso/g2g/workspace/workflow/metadata/4/images/thunspec_577843346_tif','file:///opt/digiverso/g2g/workspace/workflow/metadata/4/images/thunspec_577843346_tif'),
(4,'_electronicEdition','[Electronic ed.]','[Electronic ed.]'),
(4,'_placeOfElectronicOrigin','Göttingen','Göttingen'),
(4,'PublisherName','Edman','Edman'),
(4,'CatalogIDSource','577843346','577843346'),
(4,'SizeSourcePrint','14 S','14 S'),
(4,'DocStruct','Monograph','Monograph'),
(4,'PhysicalLocation','Goobi','Goobi'),
(5,'_electronicPublisher','Goobi','Goobi'),
(5,'_dateDigitization','2020','2020'),
(5,'shelfmarksource','8 ZOOL V, 4215','8 ZOOL V, 4215'),
(5,'TitleDocMain','Dissertatio medica inauguralis de infestis viventibus intra viventia','Dissertatio medica inauguralis de infestis viventibus intra viventia'),
(5,'CatalogIDDigital','618299084','618299084'),
(5,'TSL_ATS','schudiss','schudiss'),
(5,'_digitalOrigin','reformatted digital','reformatted digital'),
(5,'PublicationYear','1760','1760'),
(5,'DocLanguage','lat','lat'),
(5,'singleDigCollection','General','General; Physics'),
(5,'singleDigCollection','Physics','General; Physics'),
(5,'index.Identifier','[618299084]','[618299084] '),
(5,'Subject','Zoologie','Zoologie'),
(5,'TitleDocMainShort','Dissertatio medica inauguralis de infestis viventibus intra viventia','Dissertatio medica inauguralis de infestis viventibus intra viventia'),
(5,'PlaceOfPublication','Lugduni Batavorum','Lugduni Batavorum'),
(5,'pathimagefiles','file:///opt/digiverso/g2g/workspace/workflow/metadata/5/images/schudiss_618299084_tif','file:///opt/digiverso/g2g/workspace/workflow/metadata/5/images/schudiss_618299084_tif'),
(5,'_electronicEdition','[Electronic ed.]','[Electronic ed.]'),
(5,'_placeOfElectronicOrigin','Göttingen','Göttingen'),
(5,'PublisherName','Haak','Haak'),
(5,'CatalogIDSource','618299084','618299084'),
(5,'SizeSourcePrint','62 S','62 S'),
(5,'DocStruct','Monograph','Monograph'),
(5,'FormatSourcePrint','8°','8°'),
(5,'PhysicalLocation','Goobi','Goobi');
/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata_json`
--

DROP TABLE IF EXISTS `metadata_json`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata_json` (
  `processid` int(11) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata_json`
--

LOCK TABLES `metadata_json` WRITE;
/*!40000 ALTER TABLE `metadata_json` DISABLE KEYS */;
INSERT INTO `metadata_json` VALUES
(3,'{\"_electronicPublisher\":[\"Goobi\"],\"_dateDigitization\":[\"2020\"],\"shelfmarksource\":[\"8 ZOOL VI, 5214\"],\"TitleDocMain\":[\"Sphingvm Evropaearvm larvae qvotqvot adhvc innotvervnt ad Linnaeorvm Fabriciorvm et Viennensivm imprimis catalogos systematicos recensitae ; cvm tabvlis aeneis qvatvordecim ; oder die evropaeischen Schwaermerravpen nach den systematischen Verzeichnissen eines Linne, Fabricius vnd vorzuiglich der Wienerischen Natvrforscher ; lateinisch vnd tevtsch in vierzehen erlevchteten vnd vnerlevchteten Kvpfern\"],\"CatalogIDDigital\":[\"625017145\"],\"TSL_ATS\":[\"bergsphi\"],\"_digitalOrigin\":[\"reformatted digital\"],\"PublicationYear\":[\"1782\"],\"DocLanguage\":[\"ger\"],\"singleDigCollection\":[\"General\"],\"Subject\":[\"Raupe\",\"Schmetterlinge\",\"Insekten\",\"Wirbellose\",\"Zoologie\"],\"TitleDocMainShort\":[\"Sphingvm Evropaearvm larvae qvotqvot adhvc innotvervnt ad Linnaeorvm Fabriciorvm et Viennensivm imprimis catalogos systematicos recensitae ; cvm tabvlis aeneis qvatvordecim ; oder die evropaeischen Schwaermerravpen nach den systematischen Verzeichnissen eines Linne, Fabricius vnd vorzuiglich der Wienerischen Natvrforscher ; lateinisch vnd tevtsch in vierzehen erlevchteten vnd vnerlevchteten Kvpfern\"],\"PlaceOfPublication\":[\"Hanau\"],\"pathimagefiles\":[\"file:///opt/digiverso/g2g/workspace/workflow/metadata/3/images/bergsphi_625017145_tif\"],\"_electronicEdition\":[\"[Electronic ed.]\"],\"_placeOfElectronicOrigin\":[\"Göttingen\"],\"PublisherName\":[\"Selbstverl.\"],\"CatalogIDSource\":[\"625017145\"],\"SizeSourcePrint\":[\"12 S., 14 Bl\"],\"DocStruct\":[\"Monograph\"],\"FormatSourcePrint\":[\"4\\\"\"],\"PhysicalLocation\":[\"Goobi\"]}'),
(4,'{\"_electronicPublisher\":[\"Goobi\"],\"_dateDigitization\":[\"2020\"],\"shelfmarksource\":[\"8 ZOOL VIII, 8545\"],\"TitleDocMain\":[\"Specimen ichthyologicum De muraena et ophichtho\"],\"CatalogIDDigital\":[\"577843346\"],\"TSL_ATS\":[\"thunspec\"],\"_digitalOrigin\":[\"reformatted digital\"],\"PublicationYear\":[\"1789\"],\"DocLanguage\":[\"lat\"],\"singleDigCollection\":[\"Biology\"],\"Subject\":[\"Knochenfische\",\"Fische\",\"Wirbeltiere\",\"Zoologie\"],\"TitleDocMainShort\":[\"Specimen ichthyologicum De muraena et ophichtho\"],\"PlaceOfPublication\":[\"Upsaliæ\"],\"pathimagefiles\":[\"file:///opt/digiverso/g2g/workspace/workflow/metadata/4/images/thunspec_577843346_tif\"],\"_electronicEdition\":[\"[Electronic ed.]\"],\"_placeOfElectronicOrigin\":[\"Göttingen\"],\"PublisherName\":[\"Edman\"],\"CatalogIDSource\":[\"577843346\"],\"SizeSourcePrint\":[\"14 S\"],\"DocStruct\":[\"Monograph\"],\"PhysicalLocation\":[\"Goobi\"]}'),
(5,'{\"_electronicPublisher\":[\"Goobi\"],\"_dateDigitization\":[\"2020\"],\"shelfmarksource\":[\"8 ZOOL V, 4215\"],\"TitleDocMain\":[\"Dissertatio medica inauguralis de infestis viventibus intra viventia\"],\"CatalogIDDigital\":[\"618299084\"],\"TSL_ATS\":[\"schudiss\"],\"_digitalOrigin\":[\"reformatted digital\"],\"PublicationYear\":[\"1760\"],\"DocLanguage\":[\"lat\"],\"singleDigCollection\":[\"General\",\"Physics\"],\"Subject\":[\"Zoologie\"],\"TitleDocMainShort\":[\"Dissertatio medica inauguralis de infestis viventibus intra viventia\"],\"PlaceOfPublication\":[\"Lugduni Batavorum\"],\"pathimagefiles\":[\"file:///opt/digiverso/g2g/workspace/workflow/metadata/5/images/schudiss_618299084_tif\"],\"_electronicEdition\":[\"[Electronic ed.]\"],\"_placeOfElectronicOrigin\":[\"Göttingen\"],\"PublisherName\":[\"Haak\"],\"CatalogIDSource\":[\"618299084\"],\"SizeSourcePrint\":[\"62 S\"],\"DocStruct\":[\"Monograph\"],\"FormatSourcePrint\":[\"8°\"],\"PhysicalLocation\":[\"Goobi\"]}');
/*!40000 ALTER TABLE `metadata_json` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadatenkonfigurationen`
--

DROP TABLE IF EXISTS `metadatenkonfigurationen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadatenkonfigurationen` (
  `MetadatenKonfigurationID` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `Datei` varchar(255) DEFAULT NULL,
  `orderMetadataByRuleset` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`MetadatenKonfigurationID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadatenkonfigurationen`
--

LOCK TABLES `metadatenkonfigurationen` WRITE;
/*!40000 ALTER TABLE `metadatenkonfigurationen` DISABLE KEYS */;
INSERT INTO `metadatenkonfigurationen` VALUES
(1,'Standard','ruleset.xml',0);
/*!40000 ALTER TABLE `metadatenkonfigurationen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mq_results`
--

DROP TABLE IF EXISTS `mq_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mq_results` (
  `ticket_id` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `original_message` text DEFAULT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `processid` int(11) DEFAULT 0,
  `stepid` int(11) DEFAULT 0,
  `scriptName` varchar(255) DEFAULT NULL,
  `objects` int(11) DEFAULT 0,
  `ticketType` varchar(255) DEFAULT NULL,
  `ticketName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mq_results`
--

LOCK TABLES `mq_results` WRITE;
/*!40000 ALTER TABLE `mq_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `mq_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processlog`
--

DROP TABLE IF EXISTS `processlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `processID` int(10) unsigned NOT NULL,
  `creationDate` datetime DEFAULT current_timestamp(),
  `userName` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `secondContent` mediumtext DEFAULT NULL,
  `thirdContent` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `processID` (`processID`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processlog`
--

LOCK TABLES `processlog` WRITE;
/*!40000 ALTER TABLE `processlog` DISABLE KEYS */;
INSERT INTO `processlog` VALUES
(8,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Scanning\' to position 3 in process details.',NULL,NULL),
(9,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Quality assurance\' to position 4 in process details.',NULL,NULL),
(10,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Creation of TIFF header and derivative\' to position 5 in process details.',NULL,NULL),
(11,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Metadata indexing\' to position 6 in process details.',NULL,NULL),
(12,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Export to viewer\' to position 7 in process details.',NULL,NULL),
(13,4,'2022-03-08 10:31:47','Administrator, Goobi','debug','Changed step order for step \'Archiving\' to position 8 in process details.',NULL,NULL),
(14,4,'2022-03-08 10:34:13','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(40,3,'2022-03-08 14:35:19','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 1 in process details.',NULL,NULL),
(41,3,'2022-03-08 14:35:19','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(42,3,'2022-03-08 14:35:20','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 1 in process details.',NULL,NULL),
(43,3,'2022-03-08 14:35:20','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(44,3,'2022-03-08 14:35:21','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 1 in process details.',NULL,NULL),
(45,3,'2022-03-08 14:35:21','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(46,3,'2022-03-08 14:35:22','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 1 in process details.',NULL,NULL),
(47,3,'2022-03-08 14:35:22','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(48,3,'2022-03-08 14:35:26','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 2 in process details.',NULL,NULL),
(49,3,'2022-03-08 14:35:26','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(50,3,'2022-03-08 14:35:27','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 2 in process details.',NULL,NULL),
(51,3,'2022-03-08 14:35:27','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(52,3,'2022-03-08 14:35:28','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 2 in process details.',NULL,NULL),
(53,3,'2022-03-08 14:35:28','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(54,3,'2022-03-08 14:35:28','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 2 in process details.',NULL,NULL),
(55,3,'2022-03-08 14:35:28','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(56,3,'2022-03-08 14:35:29','Administrator, Goobi','debug','Changed status for step \'Get manuscript from book depot\' to 2 in process details.',NULL,NULL),
(57,3,'2022-03-08 14:35:29','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(58,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 3 in process details.',NULL,NULL),
(59,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Step \'Metadata enrichment\' closed.',NULL,NULL),
(60,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Step \'Export to viewer\' opened.',NULL,NULL),
(61,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Step \'Export to viewer\' started to work automatically.',NULL,NULL),
(62,3,'2022-03-08 14:35:31','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(63,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 3 in process details.',NULL,NULL),
(64,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Step \'Image processing\' closed.',NULL,NULL),
(65,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(66,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 3 in process details.',NULL,NULL),
(67,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Step \'Quality control\' closed.',NULL,NULL),
(68,3,'2022-03-08 14:35:32','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(69,3,'2022-03-08 14:35:33','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 3 in process details.',NULL,NULL),
(70,3,'2022-03-08 14:35:33','Administrator, Goobi','debug','Step \'Scanning\' closed.',NULL,NULL),
(71,3,'2022-03-08 14:35:33','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(72,3,'2022-03-08 14:35:34','Administrator, Goobi','debug','Changed status for step \'Get manuscript from book depot\' to 3 in process details.',NULL,NULL),
(73,3,'2022-03-08 14:35:34','Administrator, Goobi','debug','Step \'Get manuscript from book depot\' closed.',NULL,NULL),
(74,3,'2022-03-08 14:35:34','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(75,3,'2022-03-08 14:35:34','- automatic -','debug','The export for process with ID \'3\' was done successfully.',NULL,NULL),
(76,3,'2022-03-08 14:35:34','- automatic -','debug','Step \'Export to viewer\' closed.',NULL,NULL),
(77,3,'2022-03-08 14:35:34','- automatic -','debug','Step \'Bring manuscript back to book depot\' opened.',NULL,NULL),
(78,3,'2022-03-08 14:35:44','Administrator, Goobi','debug','Changed status for step \'Export to viewer\' to 1 in process details.',NULL,NULL),
(79,3,'2022-03-08 14:35:44','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(80,3,'2022-03-08 14:35:46','Administrator, Goobi','debug','Changed status for step \'Bring manuscript back to book depot\' to 0 in process details.',NULL,NULL),
(81,3,'2022-03-08 14:35:46','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(82,5,'2022-03-08 14:35:54','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 2 in process details.',NULL,NULL),
(83,5,'2022-03-08 14:35:54','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(84,5,'2022-03-08 14:35:55','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 3 in process details.',NULL,NULL),
(85,5,'2022-03-08 14:35:55','Administrator, Goobi','debug','Step \'Scanning\' closed.',NULL,NULL),
(86,5,'2022-03-08 14:35:55','Administrator, Goobi','debug','Step \'Quality control\' opened.',NULL,NULL),
(87,5,'2022-03-08 14:35:55','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(88,5,'2022-03-08 14:35:56','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 2 in process details.',NULL,NULL),
(89,5,'2022-03-08 14:35:56','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(90,5,'2022-03-08 14:35:58','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 1 in process details.',NULL,NULL),
(91,5,'2022-03-08 14:35:58','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(92,5,'2022-03-08 14:35:59','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 1 in process details.',NULL,NULL),
(93,5,'2022-03-08 14:35:59','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(94,5,'2022-03-08 14:36:00','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 2 in process details.',NULL,NULL),
(95,5,'2022-03-08 14:36:00','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(96,5,'2022-03-08 14:36:01','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 3 in process details.',NULL,NULL),
(97,5,'2022-03-08 14:36:01','Administrator, Goobi','debug','Step \'Quality control\' closed.',NULL,NULL),
(98,5,'2022-03-08 14:36:01','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(99,5,'2022-03-08 14:36:02','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 3 in process details.',NULL,NULL),
(100,5,'2022-03-08 14:36:02','Administrator, Goobi','debug','Step \'Image processing\' closed.',NULL,NULL),
(101,5,'2022-03-08 14:36:02','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(102,5,'2022-03-08 14:36:07','Administrator, Goobi','debug','Changed status for step \'Export to viewer\' to 1 in process details.',NULL,NULL),
(103,5,'2022-03-08 14:36:07','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(104,5,'2022-03-08 14:36:08','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 2 in process details.',NULL,NULL),
(105,5,'2022-03-08 14:36:08','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(106,5,'2022-03-08 14:36:09','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 3 in process details.',NULL,NULL),
(107,5,'2022-03-08 14:36:09','Administrator, Goobi','debug','Step \'Metadata enrichment\' closed.',NULL,NULL),
(108,5,'2022-03-08 14:36:09','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(109,4,'2022-03-08 14:36:16','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 1 in process details.',NULL,NULL),
(110,4,'2022-03-08 14:36:16','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(111,4,'2022-03-08 14:36:17','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 1 in process details.',NULL,NULL),
(112,4,'2022-03-08 14:36:17','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(113,4,'2022-03-08 14:36:18','Administrator, Goobi','debug','Changed status for step \'Export to viewer\' to 1 in process details.',NULL,NULL),
(114,4,'2022-03-08 14:36:18','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(115,4,'2022-03-08 14:36:19','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 2 in process details.',NULL,NULL),
(116,4,'2022-03-08 14:36:19','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(117,4,'2022-03-08 14:36:19','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 2 in process details.',NULL,NULL),
(118,4,'2022-03-08 14:36:19','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(119,4,'2022-03-08 14:36:20','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 1 in process details.',NULL,NULL),
(120,4,'2022-03-08 14:36:20','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(121,4,'2022-03-08 14:36:21','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 2 in process details.',NULL,NULL),
(122,4,'2022-03-08 14:36:21','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(123,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Changed status for step \'Metadata enrichment\' to 3 in process details.',NULL,NULL),
(124,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Step \'Metadata enrichment\' closed.',NULL,NULL),
(125,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(126,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Changed status for step \'Image processing\' to 3 in process details.',NULL,NULL),
(127,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Step \'Image processing\' closed.',NULL,NULL),
(128,4,'2022-03-08 14:36:22','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(129,4,'2022-03-08 14:36:23','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 2 in process details.',NULL,NULL),
(130,4,'2022-03-08 14:36:23','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(131,4,'2022-03-08 14:36:24','Administrator, Goobi','debug','Changed status for step \'Scanning\' to 3 in process details.',NULL,NULL),
(132,4,'2022-03-08 14:36:24','Administrator, Goobi','debug','Step \'Scanning\' closed.',NULL,NULL),
(133,4,'2022-03-08 14:36:24','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL),
(134,4,'2022-03-08 14:36:25','Administrator, Goobi','debug','Changed status for step \'Quality control\' to 3 in process details.',NULL,NULL),
(135,4,'2022-03-08 14:36:25','Administrator, Goobi','debug','Step \'Quality control\' closed.',NULL,NULL),
(136,4,'2022-03-08 14:36:25','Administrator, Goobi','debug','Removed links in home directories for all users in process details.',NULL,NULL);
/*!40000 ALTER TABLE `processlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectfilegroups`
--

DROP TABLE IF EXISTS `projectfilegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectfilegroups` (
  `ProjectFileGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `ProjekteID` int(11) DEFAULT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `ignore_file_extensions` text DEFAULT NULL,
  `original_mimetypes` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ProjectFileGroupID`),
  KEY `FK51AAC229327F143A` (`ProjekteID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectfilegroups`
--

LOCK TABLES `projectfilegroups` WRITE;
/*!40000 ALTER TABLE `projectfilegroups` DISABLE KEYS */;
INSERT INTO `projectfilegroups` VALUES
(3,'PRESENTATION','file:////opt/digiverso/viewer/media/$(meta.CatalogIDDigital)/','image/jpg','jpg',1,NULL,'',0),
(6,'PRESENTATION','file:////opt/digiverso/viewer/media/$(meta.CatalogIDDigital)/','image/jpg','jpg',2,NULL,'',0),
(7,'DEFAULT','http://presentation.example.net/content/$(meta.CatalogIDDigital)/800/0/','image/jpeg','jpg',2,NULL,NULL,0);
/*!40000 ALTER TABLE `projectfilegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projektbenutzer`
--

DROP TABLE IF EXISTS `projektbenutzer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projektbenutzer` (
  `BenutzerID` int(11) NOT NULL,
  `ProjekteID` int(11) NOT NULL,
  PRIMARY KEY (`BenutzerID`,`ProjekteID`),
  KEY `FKEC749D0E327F143A` (`ProjekteID`),
  KEY `FKEC749D0E8896477B` (`BenutzerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projektbenutzer`
--

LOCK TABLES `projektbenutzer` WRITE;
/*!40000 ALTER TABLE `projektbenutzer` DISABLE KEYS */;
INSERT INTO `projektbenutzer` VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(1,2),
(2,2),
(3,2),
(4,2),
(5,2),
(6,2),
(7,2);
/*!40000 ALTER TABLE `projektbenutzer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekte`
--

DROP TABLE IF EXISTS `projekte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekte` (
  `ProjekteID` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(190) DEFAULT NULL,
  `useDmsImport` tinyint(1) DEFAULT 0,
  `dmsImportTimeOut` int(11) DEFAULT NULL,
  `dmsImportRootPath` varchar(255) DEFAULT NULL,
  `dmsImportImagesPath` varchar(255) DEFAULT NULL,
  `dmsImportSuccessPath` varchar(255) DEFAULT NULL,
  `dmsImportErrorPath` varchar(255) DEFAULT NULL,
  `dmsImportCreateProcessFolder` tinyint(1) DEFAULT 0,
  `fileFormatInternal` varchar(255) DEFAULT NULL,
  `fileFormatDmsExport` varchar(255) DEFAULT NULL,
  `metsRightsOwner` varchar(255) DEFAULT NULL,
  `metsRightsOwnerLogo` varchar(255) DEFAULT NULL,
  `metsRightsOwnerSite` varchar(255) DEFAULT NULL,
  `metsRightsOwnerMail` varchar(255) DEFAULT NULL,
  `metsDigiprovReference` varchar(255) DEFAULT NULL,
  `metsDigiprovPresentation` varchar(255) DEFAULT NULL,
  `metsDigiprovReferenceAnchor` varchar(255) DEFAULT NULL,
  `metsDigiprovPresentationAnchor` varchar(255) DEFAULT NULL,
  `metsPointerPath` varchar(255) DEFAULT NULL,
  `metsPointerPathAnchor` varchar(255) DEFAULT NULL,
  `metsPurl` varchar(255) DEFAULT NULL,
  `metsContentIDs` varchar(255) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `numberOfPages` int(11) DEFAULT NULL,
  `numberOfVolumes` int(11) DEFAULT NULL,
  `projectIsArchived` tinyint(1) DEFAULT 0,
  `metsRightsSponsor` varchar(255) DEFAULT NULL,
  `metsRightsSponsorLogo` varchar(255) DEFAULT NULL,
  `metsRightsSponsorSiteURL` varchar(255) DEFAULT NULL,
  `metsRightsLicense` varchar(255) DEFAULT NULL,
  `institution_id` int(11) NOT NULL,
  `project_identifier` varchar(255) DEFAULT NULL,
  `iiifUrl` varchar(255) DEFAULT NULL,
  `sruUrl` varchar(255) DEFAULT NULL,
  `dfgViewerUrl` text DEFAULT NULL,
  PRIMARY KEY (`ProjekteID`),
  KEY `FKC8539A94327F143A` (`ProjekteID`),
  KEY `institution_id` (`institution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekte`
--

LOCK TABLES `projekte` WRITE;
/*!40000 ALTER TABLE `projekte` DISABLE KEYS */;
INSERT INTO `projekte` VALUES
(1,'Archive_Project',1,0,'/opt/digiverso/viewer/hotfolder/','/opt/digiverso/viewer/hotfolder/','','',0,'Mets','Mets','Example Library','http://www.example.net/mylogo.png','http://www.example.net','mailto:digitisation@example.net','http://catalog.example.net/A?function=search&request=$(meta.CatalogIDDigital)','http://presentation.example.net/ppnresolver?id=$(meta.CatalogIDDigital)','http://catalog.example.net/A?function=search&request=$(meta.topstruct.CatalogIDDigital)','http://presentation.example.net/ppnresolver?id=$(meta.topstruct.CatalogIDDigital)','http://presentation.example.net/sourcefile?id=$(meta.CatalogIDDigital)','http://presentation.example.net/sourcefile?id=$(meta.topstruct.CatalogIDDigital)','','','2017-05-01 00:00:00','2024-12-31 00:00:00',300000,280,0,'','','info@intranda.com','',1,'',NULL,NULL,NULL),
(2,'Manuscript_Project',1,3600000,'/opt/digiverso/viewer/hotfolder/','/opt/digiverso/viewer/hotfolder/','','',0,'Mets','Mets','Example Library','http://www.example.net/mylogo.png','http://www.example.net','mailto:digitisation@example.net','http://catalog.example.net/A?function=search&request=$(meta.CatalogIDDigital)','http://presentation.example.net/ppnresolver?id=$(meta.CatalogIDDigital)','http://catalog.example.net/A?function=search&request=$(meta.topstruct.CatalogIDDigital)','http://presentation.example.net/ppnresolver?id=$(meta.topstruct.CatalogIDDigital)','http://presentation.example.net/sourcefile?id=$(meta.topstruct.CatalogIDDigital)','http://presentation.example.net/sourcefile?id=$(meta.CatalogIDDigital)','','','2017-01-02 00:00:00','2024-12-31 00:00:00',200000,150,0,'','','info@intranda.com','',1,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `projekte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prozesse`
--

DROP TABLE IF EXISTS `prozesse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prozesse` (
  `ProzesseID` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(190) DEFAULT NULL,
  `ausgabename` varchar(255) DEFAULT NULL,
  `IstTemplate` tinyint(1) DEFAULT 0,
  `swappedOut` tinyint(1) DEFAULT 0,
  `inAuswahllisteAnzeigen` tinyint(1) DEFAULT 0,
  `sortHelperStatus` varchar(20) DEFAULT NULL,
  `sortHelperImages` int(11) DEFAULT NULL,
  `sortHelperArticles` int(11) DEFAULT NULL,
  `erstellungsdatum` datetime DEFAULT NULL,
  `ProjekteID` int(11) DEFAULT NULL,
  `MetadatenKonfigurationID` int(11) DEFAULT NULL,
  `sortHelperDocstructs` int(11) DEFAULT NULL,
  `sortHelperMetadata` int(11) DEFAULT NULL,
  `wikifield` text DEFAULT NULL,
  `batchID` int(11) DEFAULT NULL,
  `docketID` int(11) DEFAULT NULL,
  `mediaFolderExists` tinyint(1) DEFAULT 0,
  `pauseAutomaticExecution` tinyint(1) DEFAULT 0,
  `exportValidator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProzesseID`),
  KEY `FKC55ACC6DACAFE8C7` (`MetadatenKonfigurationID`),
  KEY `project` (`ProjekteID`),
  KEY `FKC55ACC6DD0F4FC05` (`docketID`),
  KEY `batchID` (`batchID`),
  KEY `status` (`sortHelperStatus`),
  KEY `Titel` (`titel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prozesse`
--

LOCK TABLES `prozesse` WRITE;
/*!40000 ALTER TABLE `prozesse` DISABLE KEYS */;
INSERT INTO `prozesse` VALUES
(1,'Manuscript_Workflow',NULL,1,0,0,'012000088',0,0,'2022-03-08 10:35:02',2,1,0,0,NULL,NULL,1,0,0,NULL),
(2,'Sample_Workflow',NULL,1,0,0,'014014071',0,0,'2016-10-28 12:08:47',1,1,0,0,' ',NULL,1,0,0,NULL),
(3,'bergsphi_625017145',NULL,0,0,0,'075012012',56,0,'2022-03-08 11:15:13',2,1,0,0,NULL,NULL,1,0,0,NULL),
(4,'thunspec_577843346',NULL,0,0,0,'083017000',23,0,'2022-03-08 11:15:43',1,1,0,0,NULL,NULL,1,0,0,NULL),
(5,'schudiss_618299084',NULL,0,0,0,'083017000',74,0,'2022-03-08 11:16:01',1,1,0,0,NULL,NULL,1,0,0,NULL);
/*!40000 ALTER TABLE `prozesse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prozesseeigenschaften`
--

DROP TABLE IF EXISTS `prozesseeigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prozesseeigenschaften` (
  `prozesseeigenschaftenID` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(190) DEFAULT NULL,
  `WERT` text DEFAULT NULL,
  `IstObligatorisch` tinyint(1) DEFAULT 0,
  `DatentypenID` int(11) DEFAULT NULL,
  `Auswahl` varchar(255) DEFAULT NULL,
  `prozesseID` int(11) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `container` text DEFAULT NULL,
  PRIMARY KEY (`prozesseeigenschaftenID`),
  KEY `FK3B22499F815A56DA` (`prozesseID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prozesseeigenschaften`
--

LOCK TABLES `prozesseeigenschaften` WRITE;
/*!40000 ALTER TABLE `prozesseeigenschaften` DISABLE KEYS */;
INSERT INTO `prozesseeigenschaften` VALUES
(21,'Digitisation date','2020',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(22,'Electronic ed.','[Electronic ed.]',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(23,'Creator of digital edition','Goobi',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(24,'Place of digital edition','Göttingen',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(25,'Digital origin','reformatted digital',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(26,'digitalCollection','General',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(27,'Template','Manuscript_Workflow',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(28,'TemplateID','1',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(29,'Digitisation date','2020',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(30,'Electronic ed.','[Electronic ed.]',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(31,'Creator of digital edition','Goobi',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(32,'Place of digital edition','Göttingen',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(33,'Digital origin','reformatted digital',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(34,'digitalCollection','Biology',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(35,'Template','Sample_Workflow',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(36,'TemplateID','2',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(37,'Digitisation date','2020',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(38,'Electronic ed.','[Electronic ed.]',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(39,'Creator of digital edition','Goobi',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(40,'Place of digital edition','Göttingen',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(41,'Digital origin','reformatted digital',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(42,'digitalCollection','General',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(43,'digitalCollection','Physics',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(44,'Template','Sample_Workflow',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(45,'TemplateID','2',0,5,NULL,5,'2022-03-08 11:16:24','0');
/*!40000 ALTER TABLE `prozesseeigenschaften` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `creator` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `repository_datestamp` datetime NOT NULL,
  `setSpec` text DEFAULT NULL,
  `identifier` text NOT NULL,
  `job_id` int(11) NOT NULL,
  `source` text DEFAULT NULL,
  `exported` text DEFAULT NULL,
  `exported_datestamp` datetime DEFAULT NULL,
  `subquery` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`(12)),
  KEY `exported_datestamp` (`exported_datestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository`
--

DROP TABLE IF EXISTS `repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `base_url` text NOT NULL,
  `export_folder` varchar(255) DEFAULT NULL,
  `script_path` varchar(255) DEFAULT NULL,
  `last_harvest` timestamp NULL DEFAULT NULL,
  `freq` int(11) NOT NULL DEFAULT 6,
  `delay` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `type` text DEFAULT NULL,
  `goobi_import` tinyint(1) NOT NULL DEFAULT 1,
  `project_name` text DEFAULT NULL,
  `template_name` text DEFAULT NULL,
  `fileformat` text DEFAULT NULL,
  `testmode` tinyint(1) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository`
--

LOCK TABLES `repository` WRITE;
/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository_parameter`
--

DROP TABLE IF EXISTS `repository_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository_parameter` (
  `repository_id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository_parameter`
--

LOCK TABLES `repository_parameter` WRITE;
/*!40000 ALTER TABLE `repository_parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `repository_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schritte`
--

DROP TABLE IF EXISTS `schritte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schritte` (
  `SchritteID` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(190) DEFAULT NULL,
  `Prioritaet` int(11) DEFAULT 0,
  `Reihenfolge` int(11) DEFAULT NULL,
  `Bearbeitungsstatus` int(11) DEFAULT 0,
  `BearbeitungsZeitpunkt` datetime DEFAULT NULL,
  `BearbeitungsBeginn` datetime DEFAULT NULL,
  `BearbeitungsEnde` datetime DEFAULT NULL,
  `homeverzeichnisNutzen` smallint(6) DEFAULT 0,
  `typMetadaten` tinyint(1) DEFAULT 0,
  `typAutomatisch` tinyint(1) DEFAULT 0,
  `typImportFileUpload` tinyint(1) DEFAULT 0,
  `typExportRus` tinyint(1) DEFAULT 0,
  `typImagesLesen` tinyint(1) DEFAULT 0,
  `typImagesSchreiben` tinyint(1) DEFAULT 0,
  `typExportDMS` tinyint(1) DEFAULT 0,
  `typBeimAnnehmenModul` tinyint(1) DEFAULT 0,
  `typBeimAnnehmenAbschliessen` tinyint(1) DEFAULT 0,
  `typBeimAnnehmenModulUndAbschliessen` tinyint(1) DEFAULT 0,
  `typAutomatischScriptpfad` text DEFAULT NULL,
  `typBeimAbschliessenVerifizieren` tinyint(1) DEFAULT 0,
  `typModulName` varchar(255) DEFAULT NULL,
  `BearbeitungsBenutzerID` int(11) DEFAULT NULL,
  `ProzesseID` int(11) DEFAULT NULL,
  `edittype` int(11) DEFAULT NULL,
  `typScriptStep` tinyint(1) DEFAULT 0,
  `scriptName1` varchar(255) DEFAULT NULL,
  `scriptName2` varchar(255) DEFAULT NULL,
  `typAutomatischScriptpfad2` text DEFAULT NULL,
  `scriptName3` varchar(255) DEFAULT NULL,
  `typAutomatischScriptpfad3` text DEFAULT NULL,
  `scriptName4` varchar(255) DEFAULT NULL,
  `typAutomatischScriptpfad4` text DEFAULT NULL,
  `scriptName5` varchar(255) DEFAULT NULL,
  `typAutomatischScriptpfad5` text DEFAULT NULL,
  `batchStep` tinyint(1) DEFAULT 0,
  `stepPlugin` varchar(255) DEFAULT NULL,
  `validationPlugin` varchar(255) DEFAULT NULL,
  `delayStep` tinyint(1) DEFAULT 0,
  `updateMetadataIndex` tinyint(1) DEFAULT 0,
  `generateDocket` tinyint(1) DEFAULT 0,
  `httpStep` tinyint(1) DEFAULT 0,
  `httpMethod` varchar(15) DEFAULT NULL,
  `httpUrl` text DEFAULT NULL,
  `httpJsonBody` text DEFAULT NULL,
  `httpCloseStep` tinyint(1) DEFAULT NULL,
  `httpEscapeBodyJson` tinyint(1) DEFAULT NULL,
  `messageQueue` varchar(255) DEFAULT 'NO_QUEUE',
  `messageId` varchar(255) DEFAULT NULL,
  `typAutomaticThumbnail` tinyint(1) DEFAULT 0,
  `automaticThumbnailSettingsYaml` varchar(1000) DEFAULT '--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: "" #set path to custom image directory \nCustom_script_command: "" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800',
  PRIMARY KEY (`SchritteID`),
  KEY `FKD7200736815A56DA` (`ProzesseID`),
  KEY `FKD72007365B4F6962` (`BearbeitungsBenutzerID`),
  KEY `priority_x_status` (`Prioritaet`,`Bearbeitungsstatus`),
  KEY `stepstatus` (`Bearbeitungsstatus`),
  KEY `Titel` (`titel`),
  KEY `processid_x_title` (`ProzesseID`,`titel`),
  KEY `id_x_title` (`SchritteID`,`titel`),
  KEY `processid_x_title_x_user` (`SchritteID`,`titel`,`BearbeitungsBenutzerID`),
  KEY `automatic_tasks` (`titel`,`typAutomatisch`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schritte`
--

LOCK TABLES `schritte` WRITE;
/*!40000 ALTER TABLE `schritte` DISABLE KEYS */;
INSERT INTO `schritte` VALUES
(22,'Data import',0,1,3,'2022-03-08 10:30:30','2016-10-28 12:08:47','2016-10-28 12:08:47',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,2,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(23,'Scanning',0,2,1,'2022-03-08 10:31:47',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,2,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_fileUpload','intranda_validation_filename',0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(24,'Quality control',0,4,0,'2022-03-08 10:32:18',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,2,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageQA',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(25,'Image processing',0,5,0,'2022-03-08 10:33:43',NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,0,NULL,7,2,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageConverter',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(26,'Metadata enrichment',0,6,0,'2022-03-08 10:34:00',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,1,NULL,7,2,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(27,'Export to viewer',0,7,0,'2016-10-28 12:12:50',NULL,NULL,0,0,1,0,0,0,0,1,0,0,0,NULL,0,NULL,1,2,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(43,'Data import',0,1,3,'2022-03-08 10:35:02','2022-03-08 10:35:02','2022-03-08 10:35:02',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,1,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(44,'Scanning',0,3,0,'2022-03-08 10:36:05',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,1,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_fileUpload','intranda_validation_filename',0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(45,'Quality control',0,5,0,'2022-03-08 10:35:02',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,1,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageQA',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(46,'Image processing',0,6,0,'2022-03-08 10:35:02',NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,NULL,0,NULL,7,1,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageConverter',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(47,'Metadata enrichment',0,7,0,'2022-03-08 10:35:02',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,NULL,1,NULL,7,1,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(48,'Export to viewer',0,8,0,'2022-03-08 10:35:02',NULL,NULL,0,0,1,0,0,0,0,1,0,0,0,NULL,0,NULL,7,1,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(49,'Get manuscript from book depot',0,2,1,'2022-03-08 10:36:07',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,1,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,'',0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(50,'Bring manuscript back to book depot',0,9,0,'2022-03-08 10:35:59',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,1,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,'',0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(51,'Data import',0,1,3,'2022-03-08 11:15:27','2022-03-08 11:15:13','2022-03-08 11:15:27',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,3,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(52,'Get manuscript from book depot',0,2,3,'2022-03-08 14:35:34',NULL,'2022-03-08 14:35:34',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,3,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,'',0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(53,'Scanning',0,3,3,'2022-03-08 14:35:33',NULL,'2022-03-08 14:35:33',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,3,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_fileUpload','intranda_validation_filename',0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(54,'Quality control',0,5,3,'2022-03-08 14:35:32',NULL,'2022-03-08 14:35:32',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,3,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageQA',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(55,'Image processing',0,6,3,'2022-03-08 14:35:32',NULL,'2022-03-08 14:35:32',0,0,1,0,0,0,0,0,0,0,0,NULL,0,NULL,7,3,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageConverter',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(56,'Metadata enrichment',0,7,3,'2022-03-08 14:35:31',NULL,'2022-03-08 14:35:31',0,1,0,0,0,0,0,0,0,0,0,NULL,1,NULL,7,3,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(57,'Export to viewer',0,8,1,'2022-03-08 14:35:44','2022-03-08 14:35:31',NULL,0,0,1,0,0,0,0,1,0,0,0,NULL,0,NULL,NULL,3,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(58,'Bring manuscript back to book depot',0,9,0,'2022-03-08 14:35:46',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,3,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,'',0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(59,'Data import',0,1,3,'2022-03-08 11:15:56','2022-03-08 11:15:43','2022-03-08 11:15:56',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,4,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(60,'Scanning',0,2,3,'2022-03-08 14:36:24',NULL,'2022-03-08 14:36:24',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,4,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_fileUpload','intranda_validation_filename',0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(61,'Quality control',0,4,3,'2022-03-08 14:36:25',NULL,'2022-03-08 14:36:25',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,4,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageQA',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(62,'Image processing',0,5,3,'2022-03-08 14:36:22',NULL,'2022-03-08 14:36:22',0,0,1,0,0,0,0,0,0,0,0,NULL,0,NULL,7,4,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageConverter',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(63,'Metadata enrichment',0,6,3,'2022-03-08 14:36:22',NULL,'2022-03-08 14:36:22',0,1,0,0,0,0,0,0,0,0,0,NULL,1,NULL,7,4,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(64,'Export to viewer',0,7,1,'2022-03-08 14:36:18',NULL,NULL,0,0,1,0,0,0,0,1,0,0,0,NULL,0,NULL,NULL,4,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(65,'Data import',0,1,3,'2022-03-08 11:16:24','2022-03-08 11:16:01','2022-03-08 11:16:24',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,5,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(66,'Scanning',0,2,3,'2022-03-08 14:35:55',NULL,'2022-03-08 14:35:55',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,5,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_fileUpload','intranda_validation_filename',0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(67,'Quality control',0,4,3,'2022-03-08 14:36:01',NULL,'2022-03-08 14:36:01',0,0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,7,5,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageQA',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(68,'Image processing',0,5,3,'2022-03-08 14:36:02',NULL,'2022-03-08 14:36:02',0,0,1,0,0,0,0,0,0,0,0,NULL,0,NULL,7,5,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'intranda_step_imageConverter',NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(69,'Metadata enrichment',0,6,3,'2022-03-08 14:36:09',NULL,'2022-03-08 14:36:09',0,1,0,0,0,0,0,0,0,0,0,NULL,1,NULL,7,5,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800'),
(70,'Export to viewer',0,7,1,'2022-03-08 14:36:07',NULL,NULL,0,0,1,0,0,0,0,1,0,0,0,NULL,0,NULL,NULL,5,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,'NO_QUEUE',NULL,0,'--- \nMaster: false  #use master image directory \nMedia: false  #use media image directory \nImg_directory: \"\" #set path to custom image directory \nCustom_script_command: \"\" #command to execute custom thumbnail generation script \nSizes: #define thumbnail sizes \n- 800');
/*!40000 ALTER TABLE `schritte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schritteberechtigtebenutzer`
--

DROP TABLE IF EXISTS `schritteberechtigtebenutzer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schritteberechtigtebenutzer` (
  `BenutzerID` int(11) NOT NULL,
  `schritteID` int(11) NOT NULL,
  PRIMARY KEY (`schritteID`,`BenutzerID`),
  KEY `FK4BB889CF8896477B` (`BenutzerID`),
  KEY `FK4BB889CFBB6FCB7A` (`schritteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schritteberechtigtebenutzer`
--

LOCK TABLES `schritteberechtigtebenutzer` WRITE;
/*!40000 ALTER TABLE `schritteberechtigtebenutzer` DISABLE KEYS */;
/*!40000 ALTER TABLE `schritteberechtigtebenutzer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schritteberechtigtegruppen`
--

DROP TABLE IF EXISTS `schritteberechtigtegruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schritteberechtigtegruppen` (
  `BenutzerGruppenID` int(11) NOT NULL,
  `schritteID` int(11) NOT NULL,
  PRIMARY KEY (`schritteID`,`BenutzerGruppenID`),
  KEY `FKA5A0CC811843242F` (`BenutzerGruppenID`),
  KEY `FKA5A0CC81BB6FCB7A` (`schritteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schritteberechtigtegruppen`
--

LOCK TABLES `schritteberechtigtegruppen` WRITE;
/*!40000 ALTER TABLE `schritteberechtigtegruppen` DISABLE KEYS */;
INSERT INTO `schritteberechtigtegruppen` VALUES
(1,25),
(1,27),
(1,46),
(1,48),
(1,55),
(1,57),
(1,62),
(1,64),
(1,68),
(1,70),
(2,23),
(2,44),
(2,53),
(2,60),
(2,66),
(3,24),
(3,45),
(3,54),
(3,61),
(3,67),
(4,49),
(4,50),
(4,52),
(4,58),
(5,26),
(5,47),
(5,56),
(5,63),
(5,69),
(6,22),
(6,43),
(6,51),
(6,59),
(6,65);
/*!40000 ALTER TABLE `schritteberechtigtegruppen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schritteeigenschaften`
--

DROP TABLE IF EXISTS `schritteeigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schritteeigenschaften` (
  `schritteeigenschaftenID` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `WERT` text DEFAULT NULL,
  `IstObligatorisch` tinyint(1) DEFAULT 0,
  `DatentypenID` int(11) DEFAULT NULL,
  `Auswahl` varchar(255) DEFAULT NULL,
  `schritteID` int(11) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `container` text DEFAULT NULL,
  PRIMARY KEY (`schritteeigenschaftenID`),
  KEY `FK884E9D76BB6FCB7A` (`schritteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schritteeigenschaften`
--

LOCK TABLES `schritteeigenschaften` WRITE;
/*!40000 ALTER TABLE `schritteeigenschaften` DISABLE KEYS */;
/*!40000 ALTER TABLE `schritteeigenschaften` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `schritteids`
--

DROP TABLE IF EXISTS `schritteids`;
/*!50001 DROP VIEW IF EXISTS `schritteids`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schritteids` AS SELECT
 1 AS `schritteID`,
  1 AS `Titel`,
  1 AS `Reihenfolge`,
  1 AS `prozesseID` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schrittfilter`
--

DROP TABLE IF EXISTS `schrittfilter`;
/*!50001 DROP VIEW IF EXISTS `schrittfilter`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schrittfilter` AS SELECT
 1 AS `prozesseID`,
  1 AS `anzahl` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `urn_table`
--

DROP TABLE IF EXISTS `urn_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urn_table` (
  `urn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `werk_id` varchar(255) DEFAULT NULL,
  `struktur_typ` varchar(255) DEFAULT NULL,
  `urn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`urn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urn_table`
--

LOCK TABLES `urn_table` WRITE;
/*!40000 ALTER TABLE `urn_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `urn_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_email_configuration`
--

DROP TABLE IF EXISTS `user_email_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_email_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `projectid` int(10) unsigned NOT NULL,
  `stepname` text DEFAULT NULL,
  `open` tinyint(1) DEFAULT 0,
  `inWork` tinyint(1) DEFAULT 0,
  `done` tinyint(1) DEFAULT 0,
  `error` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_email_configuration`
--

LOCK TABLES `user_email_configuration` WRITE;
/*!40000 ALTER TABLE `user_email_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_email_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabulary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `lastAltered` datetime NOT NULL DEFAULT '2020-01-01 00:00:01',
  `lastUploaded` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary`
--

LOCK TABLES `vocabulary` WRITE;
/*!40000 ALTER TABLE `vocabulary` DISABLE KEYS */;
INSERT INTO `vocabulary` VALUES
(1,'Digital collections','A list of digital collections to select values from in the METS-Editor','2022-03-08 11:19:14','2020-01-01 00:00:00'),
(2,'Languages','A vocabulary of languages to be used in the METS-Editor','2022-03-08 11:21:01','2020-01-01 00:00:00'),
(3,'Licences','This is a list of all entries for the licence of use','2022-10-07 08:33:57','2020-01-01 00:00:00');
/*!40000 ALTER TABLE `vocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary_record`
--

DROP TABLE IF EXISTS `vocabulary_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabulary_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vocabulary_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary_record`
--

LOCK TABLES `vocabulary_record` WRITE;
/*!40000 ALTER TABLE `vocabulary_record` DISABLE KEYS */;
INSERT INTO `vocabulary_record` VALUES
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,2),
(12,2),
(13,2),
(14,2),
(15,3),
(16,3),
(17,3),
(18,3),
(19,3),
(20,3),
(21,3),
(22,3),
(23,3);
/*!40000 ALTER TABLE `vocabulary_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary_record_data`
--

DROP TABLE IF EXISTS `vocabulary_record_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabulary_record_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` int(10) unsigned NOT NULL,
  `vocabulary_id` int(10) unsigned NOT NULL,
  `definition_id` int(10) unsigned NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `definition_id` (`definition_id`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary_record_data`
--

LOCK TABLES `vocabulary_record_data` WRITE;
/*!40000 ALTER TABLE `vocabulary_record_data` DISABLE KEYS */;
INSERT INTO `vocabulary_record_data` VALUES
(1,6,1,1,'Name','','Biology'),
(2,7,1,1,'Name','','Mathematics'),
(3,8,1,1,'Name','','Physics'),
(4,9,1,1,'Name','','General'),
(5,10,1,1,'Name','','Religion'),
(6,11,2,2,'Name','','ger'),
(7,11,2,3,'Full name','','German'),
(8,11,2,4,'Description','','German language, spoken in Germany'),
(9,12,2,2,'Name','','eng'),
(10,12,2,3,'Full name','','English'),
(11,12,2,4,'Description','','English, including British English and American English'),
(12,13,2,2,'Name','','spa'),
(13,13,2,3,'Full name','','Spanish'),
(14,13,2,4,'Description','','Spanish language, spoken in Spain and lots of other countries'),
(15,14,2,2,'Name','','fra'),
(16,14,2,3,'Full name','','French'),
(17,14,2,4,'Description','','Language spoken mostly in France'),
(18,15,3,5,'Name','','PDM'),
(19,16,3,5,'Name','','CC0'),
(20,17,3,5,'Name','','CC BY'),
(21,18,3,5,'Name','','CC BY-SA'),
(22,19,3,5,'Name','','CC BY-ND'),
(23,20,3,5,'Name','','CC BY-NC'),
(24,21,3,5,'Name','','CC BY-NC-SA'),
(25,22,3,5,'Name','','CC BY-NC-ND'),
(26,23,3,5,'Name','','reserved');
/*!40000 ALTER TABLE `vocabulary_record_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary_structure`
--

DROP TABLE IF EXISTS `vocabulary_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabulary_structure` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vocabulary_id` int(10) unsigned NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `validation` text DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `mainEntry` tinyint(1) DEFAULT NULL,
  `distinctive` tinyint(1) DEFAULT NULL,
  `selection` text DEFAULT NULL,
  `titleField` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary_structure`
--

LOCK TABLES `vocabulary_structure` WRITE;
/*!40000 ALTER TABLE `vocabulary_structure` DISABLE KEYS */;
INSERT INTO `vocabulary_structure` VALUES
(1,1,'Name','','input','',1,1,1,'',1),
(2,2,'Name','','input','',1,1,1,'',1),
(3,2,'Full name','','input','',0,0,0,'',0),
(4,2,'Description','','textarea','',0,0,0,'',0),
(5,3,'Name','','input','',1,1,1,'',1);
/*!40000 ALTER TABLE `vocabulary_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vorlagen`
--

DROP TABLE IF EXISTS `vorlagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vorlagen` (
  `VorlagenID` int(11) NOT NULL AUTO_INCREMENT,
  `Herkunft` varchar(255) DEFAULT NULL,
  `ProzesseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`VorlagenID`),
  KEY `FK9A466882815A56DA` (`ProzesseID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vorlagen`
--

LOCK TABLES `vorlagen` WRITE;
/*!40000 ALTER TABLE `vorlagen` DISABLE KEYS */;
INSERT INTO `vorlagen` VALUES
(3,NULL,3),
(4,NULL,4),
(5,NULL,5);
/*!40000 ALTER TABLE `vorlagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vorlageneigenschaften`
--

DROP TABLE IF EXISTS `vorlageneigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vorlageneigenschaften` (
  `vorlageneigenschaftenID` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(190) DEFAULT NULL,
  `WERT` text DEFAULT NULL,
  `IstObligatorisch` tinyint(1) DEFAULT 0,
  `DatentypenID` int(11) DEFAULT NULL,
  `Auswahl` varchar(255) DEFAULT NULL,
  `vorlagenID` int(11) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `container` text DEFAULT NULL,
  PRIMARY KEY (`vorlageneigenschaftenID`),
  KEY `FKAA25B7AA239F423` (`vorlagenID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vorlageneigenschaften`
--

LOCK TABLES `vorlageneigenschaften` WRITE;
/*!40000 ALTER TABLE `vorlageneigenschaften` DISABLE KEYS */;
INSERT INTO `vorlageneigenschaften` VALUES
(27,'Title','Sphingvm Evropaearvm larvae qvotqvot adhvc innotvervnt ad Linnaeorvm Fabriciorvm et Viennensivm imprimis catalogos systematicos recensitae ; cvm tabvlis aeneis qvatvordecim ; oder die evropaeischen Schwaermerravpen nach den systematischen Verzeichnissen eines Linne, Fabricius vnd vorzuiglich der Wienerischen Natvrforscher ; lateinisch vnd tevtsch in vierzehen erlevchteten vnd vnerlevchteten Kvpfern',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(28,'Sorting title','Sphingvm Evropaearvm larvae qvotqvot adhvc innotvervnt ad Linnaeorvm Fabriciorvm et Viennensivm imprimis catalogos systematicos recensitae ; cvm tabvlis aeneis qvatvordecim ; oder die evropaeischen Schwaermerravpen nach den systematischen Verzeichnissen eines Linne, Fabricius vnd vorzuiglich der Wienerischen Natvrforscher ; lateinisch vnd tevtsch in vierzehen erlevchteten vnd vnerlevchteten Kvpfern',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(29,'Authors','',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(30,'Identifier analogue (a)','625017145',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(31,'Publishing place','Hanau',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(32,'Publishing year','1782',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(33,'Publishing house','Selbstverl.',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(34,'Shelfmark','',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(35,'Physical location','Goobi',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(36,'Title','Specimen ichthyologicum De muraena et ophichtho',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(37,'Sorting title','Specimen ichthyologicum De muraena et ophichtho',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(38,'Authors','',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(39,'Identifier analogue (a)','577843346',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(40,'Publishing place','Upsaliæ',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(41,'Publishing year','1789',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(42,'Publishing house','Edman',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(43,'Shelfmark','',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(44,'Physical location','Goobi',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(45,'Title','Dissertatio medica inauguralis de infestis viventibus intra viventia',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(46,'Sorting title','Dissertatio medica inauguralis de infestis viventibus intra viventia',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(47,'Authors','',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(48,'Identifier analogue (a)','618299084',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(49,'Publishing place','Lugduni Batavorum',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(50,'Publishing year','1760',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(51,'Publishing house','Haak',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(52,'Shelfmark','',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(53,'Physical location','Goobi',0,5,NULL,5,'2022-03-08 11:16:24','0');
/*!40000 ALTER TABLE `vorlageneigenschaften` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `werkstuecke`
--

DROP TABLE IF EXISTS `werkstuecke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `werkstuecke` (
  `WerkstueckeID` int(11) NOT NULL AUTO_INCREMENT,
  `ProzesseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`WerkstueckeID`),
  KEY `FK98DED745815A56DA` (`ProzesseID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `werkstuecke`
--

LOCK TABLES `werkstuecke` WRITE;
/*!40000 ALTER TABLE `werkstuecke` DISABLE KEYS */;
INSERT INTO `werkstuecke` VALUES
(3,3),
(4,4),
(5,5);
/*!40000 ALTER TABLE `werkstuecke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `werkstueckeeigenschaften`
--

DROP TABLE IF EXISTS `werkstueckeeigenschaften`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `werkstueckeeigenschaften` (
  `werkstueckeeigenschaftenID` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(190) DEFAULT NULL,
  `WERT` text DEFAULT NULL,
  `IstObligatorisch` tinyint(1) DEFAULT 0,
  `DatentypenID` int(11) DEFAULT NULL,
  `Auswahl` varchar(255) DEFAULT NULL,
  `werkstueckeID` int(11) DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `container` text DEFAULT NULL,
  PRIMARY KEY (`werkstueckeeigenschaftenID`),
  KEY `FK7B209DC7C9900466` (`werkstueckeID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `werkstueckeeigenschaften`
--

LOCK TABLES `werkstueckeeigenschaften` WRITE;
/*!40000 ALTER TABLE `werkstueckeeigenschaften` DISABLE KEYS */;
INSERT INTO `werkstueckeeigenschaften` VALUES
(21,'Creator of digital edition','Common Library Network',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(22,'Font type','Antiqua',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(23,'ATS','bergsphi',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(24,'Identifier digital (a)','625017145',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(25,'DocType','monograph',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(26,'TifHeaderImagedescription','|<TYPE>Monographie|<TITLE>Sphingvm Evropaearvm larvae qvotqvot adhvc innotvervnt ad Linnaeorvm Fabriciorvm et Viennensivm imprimis catalogos systematicos recensitae ; cvm tabvlis aeneis qvatvo|<AUTHORS> |<YEAR>1782|<PLACE>Hanau|<FOLDER>bergsphi_625017145|',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(27,'TifHeaderDocumentname','bergsphi_625017145',0,5,NULL,3,'2022-03-08 11:15:27','0'),
(28,'Creator of digital edition','Common Library Network',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(29,'Font type','Antiqua',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(30,'ATS','thunspec',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(31,'Identifier digital (a)','577843346',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(32,'DocType','monograph',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(33,'TifHeaderImagedescription','|<TYPE>Monographie|<TITLE>Specimen ichthyologicum De muraena et ophichtho|<AUTHORS> |<YEAR>1789|<PLACE>Upsaliæ|<FOLDER>thunspec_577843346|',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(34,'TifHeaderDocumentname','thunspec_577843346',0,5,NULL,4,'2022-03-08 11:15:56','0'),
(35,'Creator of digital edition','Common Library Network',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(36,'Font type','Antiqua',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(37,'ATS','schudiss',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(38,'Identifier digital (a)','618299084',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(39,'DocType','monograph',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(40,'TifHeaderImagedescription','|<TYPE>Monographie|<TITLE>Dissertatio medica inauguralis de infestis viventibus intra viventia|<AUTHORS> |<YEAR>1760|<PLACE>Lugduni Batavorum|<FOLDER>schudiss_618299084|',0,5,NULL,5,'2022-03-08 11:16:24','0'),
(41,'TifHeaderDocumentname','schudiss_618299084',0,5,NULL,5,'2022-03-08 11:16:24','0');
/*!40000 ALTER TABLE `werkstueckeeigenschaften` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `schritteids`
--

/*!50001 DROP VIEW IF EXISTS `schritteids`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`goobi`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schritteids` AS select `schritte`.`SchritteID` AS `schritteID`,`schritte`.`titel` AS `Titel`,`schritte`.`Reihenfolge` AS `Reihenfolge`,`schritte`.`ProzesseID` AS `prozesseID` from `schritte` where `schritte`.`Bearbeitungsstatus` = 1 and `schritte`.`ProzesseID` in (select `schrittfilter`.`prozesseID` from `schrittfilter` where `schrittfilter`.`anzahl` > 1) order by `schritte`.`Reihenfolge` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schrittfilter`
--

/*!50001 DROP VIEW IF EXISTS `schrittfilter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`goobi`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schrittfilter` AS select `schritte`.`ProzesseID` AS `prozesseID`,count(`schritte`.`ProzesseID`) AS `anzahl` from `schritte` where `schritte`.`Bearbeitungsstatus` = 1 group by `schritte`.`ProzesseID` */;
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
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-12-18 10:49:19
