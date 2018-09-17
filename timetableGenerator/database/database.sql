/*
SQLyog Community Edition- MySQL GUI v7.01 
MySQL - 5.0.27-community-nt : Database - timetablegeneration
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`timetablegeneration` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `timetablegeneration`;

/*Table structure for table `all_containts` */

DROP TABLE IF EXISTS `all_containts`;

CREATE TABLE `all_containts` (
  `branch` varchar(255) default NULL,
  `subject` varchar(255) default NULL,
  `subcode` varchar(255) default NULL,
  `sem` varchar(255) default NULL,
  `lec1_prac0` varchar(255) default NULL,
  `id` int(255) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `all_containts` */

insert  into `all_containts`(`branch`,`subject`,`subcode`,`sem`,`lec1_prac0`,`id`) values ('Computer','Human machine interaction','HMI-8','8','1',1),('Computer','Data Warehouse and Mining','DWM-8','8','1',2),('Computer','Parallel and Distributed System','PDS-8','8','1',3),('Computer ','Big data Analytics','BDA-8','8','1',4),('Computer ','Human machine interaction LAB','LABHMI-8','8','0',5),('Computer','Data Warehouse and Mining LAB','LABDWM-8','8','0',6),('Computer','Parallel and Distributed System LAB','LABPDS-8','8','0',7),('Computer','Big data Analytics LAB','LABBDA-8','8','0',8),('Computer','Digital Signal Processing','DSP-7','7','1',9),('Computer','Cryptography and System Security','CSS-7','7','1',10),('Computer','Artificial Intelligence','AI-7','7','1',11),('Computer','ERP and Supply Chain Management','ERP-7','7','1',12),('Computer','ERP and Supply Chain Management','ERP-7','7','1',13),('Computer','Cryptography and System Security','LABCSS-7','7','0',14),('Computer','Cryptography and System Security','LABCSS-7','7','0',15),('Computer','ERP and Supply Chain Management LAB','LABERP-7','7','0',16),('Computer','Network Threats and Attacks Laboratory','LABNTA-7','7','0',17),('Computer','System Programming and Compiler\r\nConstruction','SPCC-6','6','1',18),('Computer','Software Engineering','SE-6','6','1',19),('Computer','Distributed Databases','DB-6','6','1',20),('Computer','Mobile Communication and Computing','MCC-6','6','1',21),('Computer','ElectiveI','ELECS-6','6','1',22),('Computer','Network Programming Laboratory LAB','LABNPL-6','6','0',23),('Computer','Network Programming Laboratory LAB','LABNPL-6','6','0',24),('Computer','Software Engineering LAB','LABSE-6','6','0',25),('Computer','Distributed Databases LAB','LABDB-6','6','0',26),('Computer','Mobile Communication and Computing LAB','LABMCC-6','6','0',27),('Computer','Operating Systems','OS-5','5','1',28),('Computer','Operating Systems','OS-5','5','1',29),('Computer','Structured and Object Oriented Analysis and','SOOAD-5','5','1',30),('Computer','Computer Networks','CN-5','5','1',31),('Computer','Web Technologies Laboratory LAB','LABWTL-5','5','0',32),('Computer','Microprocessor LAB','LABMICRO-5','5','0',33),('Computer','Operating Systems LAB','LABOS-5','5','0',34),('Computer','Structured and Object Oriented Analysis LAB','LABSOOAD-5','5','0',35),('Computer','Computer Networks LAB','LABCN-5','5','0',36),('Computer','Applied Mathematics IV*','AMCOM-4','4','1',37),('Computer','Analysis of Algorithms','AOA-4','4','1',38),('Computer','Computer Organization and Architecture','COA-4','4','1',39),('Computer','Data Base Management systems','DBMS-4','4','1',40),('Computer','Theoretical Computer Science','TCS-4','4','1',41),('Computer','Computer Graphics','CG-4','4','1',42),('Computer','Analysis of Algorithms LAB','LABAOA-4','4','0',43),('Computer','Analysis of Algorithms LAB','LABAOA-4','4','0',44),('Computer','Analysis of Algorithms LAB','LABAOA-4','4','0',45),('Computer','Analysis of Algorithms LAB','LABAOA-4','4','0',46),('Computer','Applied Mathematics III*','AMCOM-3','3','1',47),('Computer','Applied Mathematics III*','AMCOM-3','3','1',48),('Computer','Applied Mathematics III*','AMCOM-3','3','1',49),('Computer','Applied Mathematics III*','AMCOM-3','3','1',50),('Computer','Discrete Structures','DS-3','3','1',51),('Computer','Electronic Circuits and Communication','ECCF-3','3','1',52),('Computer','Object Oriented Programming Methodolgy LAB','LABOOPM-3','3','0',53),('Computer','Object Oriented Programming Methodolgy LAB','LABOOPM-3','3','0',54),('Computer','Digital Logic Design and Analysis LAB','LABDLDA-3','3','0',55),('Computer','Digital Logic Design and Analysis LAB','LABDLDA-3','3','0',56),('Computer','Applied Maths 2','AMCOM-2','2','1',57),('Computer','Applied Physics II','APCOM-2','2','1',58),('Computer','Applied Physics II','APCOM-2','2','1',59),('Computer','Applied Physics II','APCOM-2','2','1',60),('Computer','Applied Physics II','APCOM-2','2','1',61),('Computer','Applied Physics II','APCOM-2','2','1',62),('Computer','Workshop','WORKCOM-2','2','0',63),('Computer','Applied Maths 1','AM1COM-1','1','1',64),('Computer','Applied Maths 1','AM1COM-1','1','1',65),('Computer','Applied Chemistry I','AC1COM-1','1','1',66),('Computer','Engineering Mechanics','EMCOM-1','1','1',67),('Computer','BEE','BEECOM-1','1','1',68),('Computer','Environmental Studies','EVSCOM-1','1','1',69),('Computer','Workshop','LABWORKSHOPCOM-1','1','0',70),('IT','Applied Maths 3 IT','AM3-IT','3','1',71),('IT','Analog and Digital Circuits IT LAB','ADC-LAB-IT','3','0',72),('IT','Analog and Digital Circuits IT','ADC-IT','3','1',73),('IT','Principles of Analog & Digital Communication IT','PADC-IT','3','1',74),('IT','Principles of Analog & Digital Communication IT LAB','PADC-LAB-IT','3','0',75),('IT','Object Oriented Programming Methodology IT LAB','OOPM-LAB-IT','3','0',76),('IT','Object Oriented Programming Methodology IT','OOPM-IT','3','1',77),('IT','Database Management System IT','DBMS-IT','3','1',78),('IT','Database Management System IT LAB','DBMS-LAB-IT','3','0',79),('IT','Applied Maths 3 IT LAB','AM3-LAB-IT','3','0',80),('IT','Data Structures & Algorithms IT LAB','DSA-LAB-IT','3','0',81),('IT','Data Structures & Algorithms IT','DSA-IT','3','1',82),('IT','Applied Maths 4 IT LAB','AM4-LAB-IT','4','0',83),('IT','Applied Maths 4 IT','AM4-IT','4','1',84),('IT','Computer Networks IT','CN-IT','4','1',85),('IT','Computer Networks IT LAB','CN-LAB-IT','4','0',86),('IT','Computer Organization & Architecture IT LAB','COA-LAB-IT','4','0',87),('IT','Computer Organization & Architecture IT','COA-IT','4','1',88),('IT','Automata Theory IT','AT-IT','4','1',89),('IT','Automata Theory IT LAB','AT-LAB-IT','4','0',90),('IT','Web Programming IT LAB','WP-LAB-IT','4','0',91),('IT','Web Programming IT','WP-IT','4','1',92),('IT','Information Theory & Coding IT','ITC-IT','4','1',93),('IT','Information Theory & Coding IT LAB','ITC-LAB-IT','4','0',94),('IT','Computer Graphics & Virtual Reality IT','CGVR-IT','5','1',95),('IT','Computer Graphics & Virtual Reality IT LAB','CGVR-LAB-IT','5','0',96),('IT','Operating Systems IT LAB','OS-LAB-IT','5','0',97),('IT','Operating Systems IT','OS-IT','5','1',98),('IT','Microcontroller & Embedded Systems IT','MES-IT','5','1',99),('IT','Microcontroller & Embedded Systems IT LAB ','MES-LAB-IT','5','0',100),('IT','Advance Database Management Systems IT LAB ','ADBMS-LAB-IT','5','0',101),('IT','Advance Database Management Systems IT','ADBMS-IT','5','1',102),('IT','Business Communication & Ethics IT ','BCE-IT','5','1',103),('IT','Business Communication & Ethics IT LAB  ','BCE-LAB-IT','5','0',104),('IT','Software Engineering IT LAB  ','SE-LAB-IT','6','0',105),('IT','Software Engineering IT','SE-IT','6','1',106),('IT','Data Mining & Business Intelligence IT','DMBI-IT','6','1',107),('IT','Data Mining & Business Intelligence IT LAB','DMBI-LAB-IT','6','0',108),('IT','System & Web Security IT LAB','SAWS-LAB-IT','6','0',109),('IT','System & Web Security IT','SAWS-IT','6','1',110),('IT','Distributed Systems IT','DS-IT','6','1',111),('IT','Distributed Systems IT LAB','DS-LAB-IT','6','0',112),('IT','Advance Internet Technology IT LAB','AIT-LAB-IT','6','0',113),('IT','Advance Internet Technology IT','AIT-IT','6','1',114),('IT','Software Project Management IT','SPM-IT','7','1',115),('IT','Software Project Management IT LAB','SPM-LAB-IT','7','0',116),('IT','Cloud Computing IT LAB','CC-LAB-IT','7','0',117),('IT','Cloud Computing IT','CC-IT','7','1',118),('IT','Intelligent System IT','IS-IT','7','1',119),('IT','Intelligent System IT LAB','IS-LAB-IT','7','0',120),('IT','Wireless Technology IT LAB','WT-LAB-IT','7','0',121),('IT','Wireless Technology IT','WT-IT','7','1',122),('IT','Elective I IT','EL1-IT','7','1',123),('IT','Elective I IT LAB','EL1-LAB-IT','7','0',124),('IT','Storage Network Management & Retrival IT','SNMR-IT','8','1',125),('IT','Storage Network Management & Retrival IT LAB','SNMR-LAB-IT','8','0',126),('IT','Big Data Analytics IT LAB','BDA-LAB-IT','8','0',127),('IT','Big Data Analytics IT','BDA-IT','8','1',128),('IT','Computer Simulation & Modelling IT','CSM-IT','8','1',129),('IT','Computer Simulation & Modelling IT LAB','CSM-LAB-IT','8','0',130),('IT','Elective II IT LAB','EL2-LAB-IT','8','0',131),('IT','Elective II IT','EL2-IT','8','1',132),('IT','Project 1  IT','P1-LAB-IT','7','0',133),('IT','Project 2  IT','P2-LAB-IT','8','0',134);

/*Table structure for table `classrooms` */

DROP TABLE IF EXISTS `classrooms`;

CREATE TABLE `classrooms` (
  `class` varchar(255) default NULL,
  `subject` varchar(255) default NULL,
  `room` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `classrooms` */

insert  into `classrooms`(`class`,`subject`,`room`) values ('computer8','Humanmachineinteraction','LAB5'),('computer8','BigdataAnalyticsjmyujyuj','LAB2'),('computer8','BigdataAnalyticsjyujyjuyj','LAB2'),('computer8','BigdataAnalyticsyujyj','LAB2'),('computer8','BigdataAnalytics','LAB2');

/*Table structure for table `computer4` */

DROP TABLE IF EXISTS `computer4`;

CREATE TABLE `computer4` (
  `days` varchar(255) default NULL,
  `9.30-10.30` varchar(255) default NULL,
  `10.30-11.30` varchar(255) default NULL,
  `11.30-12.30` varchar(255) default NULL,
  `1.00-2.00` varchar(255) default NULL,
  `2.00-3.00` varchar(255) default NULL,
  `3.00-4.00` varchar(255) default NULL,
  `4.00-5.00` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `computer4` */

insert  into `computer4`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','AMCOM-4B1||AOA-4B2||COA-4B3||CG-4B4','AMCOM-4B1||AOA-4B2||COA-4B3||CG-4B4','----','COA-4','----','AMCOM-4','AOA-4'),('Tue','AOA-4B1||COA-4B2||CG-4B3||AMCOM-4B4','AOA-4B1||COA-4B2||CG-4B3||AMCOM-4B4','COA-4','CG-4','----','CG-4','AOA-4'),('Wed','COA-4B1||CG-4B2||AMCOM-4B3||AOA-4B4','COA-4B1||CG-4B2||AMCOM-4B3||AOA-4B4','AOA-4','----','----','CG-4','COA-4'),('Thurs','CG-4B1||AMCOM-4B2||AOA-4B3||COA-4B4','CG-4B1||AMCOM-4B2||AOA-4B3||COA-4B4','AOA-4','COA-4','----','----','CG-4'),('Fri','AMCOM-4','AMCOM-4','CG-4','COA-4','AMCOM-4','AMCOM-4','AOA-4');

/*Table structure for table `computer6` */

DROP TABLE IF EXISTS `computer6`;

CREATE TABLE `computer6` (
  `days` varchar(255) default NULL,
  `9.30-10.30` varchar(255) default NULL,
  `10.30-11.30` varchar(255) default NULL,
  `11.30-12.30` varchar(255) default NULL,
  `1.00-2.00` varchar(255) default NULL,
  `2.00-3.00` varchar(255) default NULL,
  `3.00-4.00` varchar(255) default NULL,
  `4.00-5.00` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `computer6` */

insert  into `computer6`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','CSS-1','DWM-8','DSP-1','DSP-1','DSP-1B1||DWM-8 B2||CSS-1B3||AI-1B4','DSP-1B1||DWM-8 B2||CSS-1B3||AI-1B4','CSS-1'),('Tue','DWM-8','CSS-1','DSP-1','AI-1','DWM-8 B1||CSS-1B2||AI-1B3||DSP-1B4','DWM-8 B1||CSS-1B2||AI-1B3||DSP-1B4','DWM-8'),('Wed','CSS-1','----','AI-1','DSP-1','CSS-1B1||AI-1B2||DSP-1B3||DWM-8 B4','CSS-1B1||AI-1B2||DSP-1B3||DWM-8 B4','DWM-8'),('Thurs','DWM-8','----','AI-1','----','AI-1B1||DSP-1B2||DWM-8 B3||CSS-1B4','AI-1B1||DSP-1B2||DWM-8 B3||CSS-1B4','AI-1'),('Fri','----','DSP-1','----','CSS-1','----','AI-1','----');

/*Table structure for table `demo` */

DROP TABLE IF EXISTS `demo`;

CREATE TABLE `demo` (
  `class` varchar(255) default NULL,
  `subject` varchar(255) default NULL,
  `subcode` varchar(255) default NULL,
  `teacher` varchar(255) default NULL,
  `practical` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `demo` */

insert  into `demo`(`class`,`subject`,`subcode`,`teacher`,`practical`) values ('Computer6','Digital Signal Processing','DSP-1','a','1'),('Computer6','Data Warehouse and Mining','DWM-8 ','c','1'),('Computer6','Cryptography and System Security','CSS-1','z','1'),('Computer6','Artificial Intelligence','AI-1','b','1'),('Computer4','Applied Mathematics IV*','AMCOM-4','e','1'),('Computer4','Analysis of Algorithms','AOA-4','a','1'),('Computer4','Computer Organization and Architecture','COA-4','b','1'),('Computer4','Computer Graphics','CG-4','f','1'),('IT8','Storage Network Management & Retrival IT','SNMR-IT','SB','1'),('IT8','Big Data Analytics IT','BDA-IT','SMR','1'),('IT8','Computer Simulation & Modelling IT','CSM-IT','SA','1'),('IT8','Elective II IT','EL2-IT','SLR','1'),('IT8','Project 2  IT','P2-LAB-IT','NJ','0'),('IT6','Software Engineering IT','SE-IT','f','1'),('IT6','Distributed Systems IT','DS-IT','SSD','1'),('IT6','System & Web Security IT','SAWS-IT','NJ','1'),('IT6','Data Mining & Business Intelligence IT','DMBI-IT','MAK','1'),('IT6','Advance Internet Technology IT','AIT-IT','SB','1'),('IT4','Applied Maths 4 IT','AM4-IT','VPP','1'),('IT4','Computer Networks IT','CN-IT','KLS','1'),('IT4','Computer Organization & Architecture IT','COA-IT','LVL','1'),('IT4','Automata Theory IT','AT-IT','SA','1'),('IT4','Web Programming IT','WP-IT','SSD','1'),('IT4','Information Theory & Coding IT','ITC-IT','SGL','1');

/*Table structure for table `it4` */

DROP TABLE IF EXISTS `it4`;

CREATE TABLE `it4` (
  `days` varchar(255) default NULL,
  `9.30-10.30` varchar(255) default NULL,
  `10.30-11.30` varchar(255) default NULL,
  `11.30-12.30` varchar(255) default NULL,
  `1.00-2.00` varchar(255) default NULL,
  `2.00-3.00` varchar(255) default NULL,
  `3.00-4.00` varchar(255) default NULL,
  `4.00-5.00` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `it4` */

insert  into `it4`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','AM4-IT','CN-IT','CN-IT','AT-IT','AM4-ITB1||CN-ITB2||COA-ITB3||AT-ITB4','AM4-ITB1||CN-ITB2||COA-ITB3||AT-ITB4','AM4-IT'),('Tue','AT-IT','CN-IT','WP-IT','CN-IT','CN-ITB1||COA-ITB2||AT-ITB3||WP-ITB4','CN-ITB1||COA-ITB2||AT-ITB3||WP-ITB4','COA-IT'),('Wed','AT-IT','COA-IT','WP-IT','AT-IT','COA-ITB1||AT-ITB2||WP-ITB3||ITC-ITB4','COA-ITB1||AT-ITB2||WP-ITB3||ITC-ITB4','COA-IT'),('Thurs','AT-IT','COA-IT','CN-IT','AM4-IT','AT-ITB1||WP-ITB2||ITC-ITB3||AM4-ITB4','AT-ITB1||WP-ITB2||ITC-ITB3||AM4-ITB4','AM4-IT'),('Fri','WP-IT','COA-IT','WP-IT','AM4-IT','WP-ITB1||ITC-ITB2||AM4-ITB3||CN-ITB4','WP-ITB1||ITC-ITB2||AM4-ITB3||CN-ITB4','WP-IT');

/*Table structure for table `it6` */

DROP TABLE IF EXISTS `it6`;

CREATE TABLE `it6` (
  `days` varchar(255) default NULL,
  `9.30-10.30` varchar(255) default NULL,
  `10.30-11.30` varchar(255) default NULL,
  `11.30-12.30` varchar(255) default NULL,
  `1.00-2.00` varchar(255) default NULL,
  `2.00-3.00` varchar(255) default NULL,
  `3.00-4.00` varchar(255) default NULL,
  `4.00-5.00` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `it6` */

insert  into `it6`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','SAWS-IT','DS-IT','SE-IT','SE-ITB1||DS-ITB2||SAWS-ITB3||DMBI-ITB4','SE-ITB1||DS-ITB2||SAWS-ITB3||DMBI-ITB4','SAWS-IT','SE-IT'),('Tue','AIT-IT','DS-IT','SE-IT','DS-ITB1||SAWS-ITB2||DMBI-ITB3||AIT-ITB4','DS-ITB1||SAWS-ITB2||DMBI-ITB3||AIT-ITB4','SAWS-IT','SE-IT'),('Wed','SAWS-IT','DS-IT','DMBI-IT','SAWS-ITB1||DMBI-ITB2||AIT-ITB3||SE-ITB4','SAWS-ITB1||DMBI-ITB2||AIT-ITB3||SE-ITB4','AIT-IT','DMBI-IT'),('Thurs','DS-IT','DMBI-IT','DS-IT','DMBI-ITB1||AIT-ITB2||SE-ITB3||DS-ITB4','DMBI-ITB1||AIT-ITB2||SE-ITB3||DS-ITB4','SE-IT','DMBI-IT'),('Fri','AIT-IT','SAWS-IT','AIT-IT','AIT-ITB1||SE-ITB2||DS-ITB3||SAWS-ITB4','AIT-ITB1||SE-ITB2||DS-ITB3||SAWS-ITB4','AIT-IT','DMBI-IT');

/*Table structure for table `it8` */

DROP TABLE IF EXISTS `it8`;

CREATE TABLE `it8` (
  `days` varchar(255) default NULL,
  `9.30-10.30` varchar(255) default NULL,
  `10.30-11.30` varchar(255) default NULL,
  `11.30-12.30` varchar(255) default NULL,
  `1.00-2.00` varchar(255) default NULL,
  `2.00-3.00` varchar(255) default NULL,
  `3.00-4.00` varchar(255) default NULL,
  `4.00-5.00` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `it8` */

insert  into `it8`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','Project','SNMR-ITB1||BDA-ITB2||CSM-ITB3||EL2-ITB4','SNMR-ITB1||BDA-ITB2||CSM-ITB3||EL2-ITB4','SNMR-IT','SNMR-IT','BDA-IT','SNMR-IT'),('Tue','Project','BDA-ITB1||CSM-ITB2||EL2-ITB3||SNMR-ITB4','BDA-ITB1||CSM-ITB2||EL2-ITB3||SNMR-ITB4','CSM-IT','BDA-IT','SNMR-IT','EL2-IT'),('Wed','Project','CSM-ITB1||EL2-ITB2||SNMR-ITB3||BDA-ITB4','CSM-ITB1||EL2-ITB2||SNMR-ITB3||BDA-ITB4','EL2-IT','BDA-IT','P2-LAB-IT','BDA-IT'),('Thurs','Project','EL2-ITB1||SNMR-ITB2||BDA-ITB3||CSM-ITB4','EL2-ITB1||SNMR-ITB2||BDA-ITB3||CSM-ITB4','CSM-IT','EL2-IT','P2-LAB-IT','CSM-IT'),('Fri','Project','----','BDA-IT','EL2-IT','CSM-IT','P2-LAB-IT','EL2-IT');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `ID` int(11) NOT NULL auto_increment,
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `role` varchar(30) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`ID`,`username`,`password`,`role`) values (1,'admin','admin','admin'),(2,'student','student','student'),(3,'teacher','teacher','teacher');

/*Table structure for table `practical` */

DROP TABLE IF EXISTS `practical`;

CREATE TABLE `practical` (
  `class` varchar(255) default NULL,
  `subcode` varchar(255) default NULL,
  `teacher` varchar(255) default NULL,
  `subject` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `practical` */

insert  into `practical`(`class`,`subcode`,`teacher`,`subject`) values ('Computer6','DSP-1B1','f','Digital Signal Processing'),('Computer6','DSP-1B2','f','Digital Signal Processing'),('Computer6','DSP-1B3','f','Digital Signal Processing'),('Computer6','DSP-1B4','f','Digital Signal Processing'),('Computer6','DWM-8B1','c','Data Warehouse and Mining'),('Computer6','DWM-8B2','c','Data Warehouse and Mining'),('Computer6','DWM-8B3','c','Data Warehouse and Mining'),('Computer6','DWM-8B4','c','Data Warehouse and Mining'),('Computer6','CSS-1B1','a','Cryptography and System Security'),('Computer6','CSS-1B2','a','Cryptography and System Security'),('Computer6','CSS-1B3','a','Cryptography and System Security'),('Computer6','CSS-1B4','a','Cryptography and System Security'),('Computer6','AI-1B1','b','Artificial Intelligence'),('Computer6','AI-1B2','b','Artificial Intelligence'),('Computer6','AI-1B3','b','Artificial Intelligence'),('Computer6','AI-1B4','b','Artificial Intelligence'),('Computer4','AOA-4B1','a','Analysis of Algorithms'),('Computer4','AOA-4B2','a','Analysis of Algorithms'),('Computer4','AOA-4B3','a','Analysis of Algorithms'),('Computer4','AOA-4B4','f','Analysis of Algorithms'),('Computer4','COA-4B1','b','Computer Organization and Architecture'),('Computer4','COA-4B2','b','Computer Organization and Architecture'),('Computer4','COA-4B3','b','Computer Organization and Architecture'),('Computer4','COA-4B4','b','Computer Organization and Architecture'),('Computer4','CG-4B1','d','Computer Graphics'),('Computer4','CG-4B2','d','Computer Graphics'),('Computer4','CG-4B3','d','Computer Graphics'),('Computer4','CG-4B4','d','Computer Graphics'),('IT4','WP-LAB-ITB2','SMR','Web Programming IT LAB'),('IT4','WP-LAB-ITB3','BS','Web Programming IT LAB'),('IT4','WP-LAB-ITB1','SMR','Web Programming IT LAB'),('IT4','WP-LAB-ITB4','SMR','Web Programming IT LAB'),('IT4','AM4-LAB-ITB1','VPP','Applied Maths 4 IT LAB'),('IT4','AM4-LAB-ITB2','VPP','Applied Maths 4 IT LAB'),('IT4','AM4-LAB-ITB3','VPP','Applied Maths 4 IT LAB'),('IT4','AM4-LAB-ITB4','VPP','Applied Maths 4 IT LAB'),('IT4','CN-LAB-ITB2','SLR','Computer Networks IT LAB'),('IT4','CN-LAB-ITB1','KLS','Computer Networks IT LAB'),('IT4','CN-LAB-ITB3','KLS','Computer Networks IT LAB'),('IT4','CN-LAB-ITB4','KLS','Computer Networks IT LAB'),('IT4','COA-LAB-ITB1','LVL','Computer Organization & Architecture IT LAB'),('IT4','COA-LAB-ITB2','LVL','Computer Organization & Architecture IT LAB'),('IT4','COA-LAB-ITB3','LVL','Computer Organization & Architecture IT LAB'),('IT4','COA-LAB-ITB4','LVL','Computer Organization & Architecture IT LAB'),('IT4','AT-LAB-ITB1','SA','Automata Theory IT LAB'),('IT4','AT-LAB-ITB2','SA','Automata Theory IT LAB'),('IT4','AT-LAB-ITB3','SA','Automata Theory IT LAB'),('IT4','AT-LAB-ITB4','SA','Automata Theory IT LAB'),('IT4','ITC-LAB-ITB1','SGL','Information Theory & Coding IT LAB'),('IT4','ITC-LAB-ITB2','SGL','Information Theory & Coding IT LAB'),('IT4','ITC-LAB-ITB3','SGL','Information Theory & Coding IT LAB'),('IT4','ITC-LAB-ITB4','SGL','Information Theory & Coding IT LAB'),('IT6','SE-LAB-ITB1','LVL','Software Engineering IT LAB  '),('IT6','SE-LAB-ITB3','SGL','Software Engineering IT LAB  '),('IT6','SE-LAB-ITB2','LVL','Software Engineering IT LAB  '),('IT6','SE-LAB-ITB4','LVL','Software Engineering IT LAB  '),('IT6','DS-LAB-ITB1','SSD','Distributed Systems IT LAB'),('IT6','DS-LAB-ITB2','SSD','Distributed Systems IT LAB'),('IT6','DS-LAB-ITB3','SSD','Distributed Systems IT LAB'),('IT6','DS-LAB-ITB4','SSD','Distributed Systems IT LAB'),('IT6','SAWS-LAB-ITB1','KLS','System & Web Security IT LAB'),('IT6','SAWS-LAB-ITB4','KLS','System & Web Security IT LAB'),('IT6','SAWS-LAB-ITB2','NJ','System & Web Security IT LAB'),('IT6','SAWS-LAB-ITB3','NJ','System & Web Security IT LAB'),('IT6','DMBI-LAB-ITB1','MAK','Data Mining & Business Intelligence IT LAB'),('IT6','DMBI-LAB-ITB2','MAK','Data Mining & Business Intelligence IT LAB'),('IT6','DMBI-LAB-ITB3','MAK','Data Mining & Business Intelligence IT LAB'),('IT6','DMBI-LAB-ITB4','MAK','Data Mining & Business Intelligence IT LAB'),('IT6','AIT-LAB-ITB1','SB','Advance Internet Technology IT LAB'),('IT6','AIT-LAB-ITB2','SB','Advance Internet Technology IT LAB'),('IT6','AIT-LAB-ITB3','SB','Advance Internet Technology IT LAB'),('IT6','AIT-LAB-ITB4','SB','Advance Internet Technology IT LAB'),('IT8','SNMR-LAB-ITB1','NJ','Storage Network Management & Retrival IT LAB'),('IT8','SNMR-LAB-ITB2','NJ','Storage Network Management & Retrival IT LAB'),('IT8','SNMR-LAB-ITB3','NJ','Storage Network Management & Retrival IT LAB'),('IT8','SNMR-LAB-ITB4','NJ','Storage Network Management & Retrival IT LAB'),('IT8','BDA-LAB-ITB1','SMR','Big Data Analytics IT LAB'),('IT8','BDA-LAB-ITB2','SMR','Big Data Analytics IT LAB'),('IT8','BDA-LAB-ITB3','SMR','Big Data Analytics IT LAB'),('IT8','BDA-LAB-ITB4','SMR','Big Data Analytics IT LAB'),('IT8','EL2-LAB-ITB1','SLR','Elective II IT LAB'),('IT8','EL2-LAB-ITB2','SLR','Elective II IT LAB'),('IT8','EL2-LAB-ITB3','SLR','Elective II IT LAB'),('IT8','EL2-LAB-ITB4','SLR','Elective II IT LAB'),('IT8','CSM-LAB-ITB1','MAK','Computer Simulation & Modelling IT LAB'),('IT8','CSM-LAB-ITB3','MAK','Computer Simulation & Modelling IT LAB'),('IT8','CSM-LAB-ITB2','SA','Computer Simulation & Modelling IT LAB'),('IT8','CSM-LAB-ITB4','SA','Computer Simulation & Modelling IT LAB'),('IT8','P2-LAB-ITB1','NJ','Project 2  IT'),('IT8','P2-LAB-ITB2','NJ','Project 2  IT'),('IT8','P2-LAB-ITB3','NJ','Project 2  IT'),('IT8','P2-LAB-ITB4','NJ','Project 2  IT');

/*Table structure for table `sample` */

DROP TABLE IF EXISTS `sample`;

CREATE TABLE `sample` (
  `time` varchar(255) default NULL,
  `Monday` varchar(255) default NULL,
  `Tuesday` varchar(255) default NULL,
  `Wednesday` varchar(255) default NULL,
  `Thursday` varchar(255) default NULL,
  `Friday` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sample` */

/*Table structure for table `time` */

DROP TABLE IF EXISTS `time`;

CREATE TABLE `time` (
  `class` varchar(255) default NULL,
  `practical` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `time` */

insert  into `time`(`class`,`practical`) values ('Computer6','2.00-3.00'),('Computer4','9.30-10.30'),('IT6','1.00-2.00'),('IT8','10.30-11.30'),('IT4','2.00-3.00');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `type` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`type`) values ('a','a','admin'),('f','f','teacher'),('e','e','teacher'),('a','0','teacher'),('b','5','teacher'),('c','c','teacher'),('d','d','teacher'),('e','e','teacher'),('f','f','teacher');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
