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

insert  into `all_containts`(`branch`,`subject`,`subcode`,`sem`,`lec1_prac0`,`id`) values ('IT','Applied Maths III IT','AM3-IT','3','1',71),('IT','Analog and Digital Circuits IT LAB','ADC-IT','3','0',72),('IT','Analog and Digital Circuits IT','ADC-IT','3','1',73),('IT','Principles of Analog & Digital Communication IT','PADC-IT','3','1',74),('IT','Principles of Analog & Digital Communication IT LAB','PADC-IT','3','0',75),('IT','Object Oriented Programming Methodology IT LAB','OOPM-IT','3','0',76),('IT','Object Oriented Programming Methodology IT','OOPM-IT','3','1',77),('IT','Database Management System IT','DBMS-IT','3','1',78),('IT','Database Management System IT LAB','DBMS-IT','3','0',79),('IT','Applied Maths III IT LAB','AM3-IT','3','0',80),('IT','Data Structures & Algorithms IT LAB','DSA-IT','3','0',81),('IT','Data Structures & Algorithms IT','DSA-IT','3','1',82),('IT','Applied Maths IV IT LAB','AM4-IT','4','0',83),('IT','Applied Maths IV IT','AM4-IT','4','1',84),('IT','Computer Networks IT','CN-IT','4','1',85),('IT','Computer Networks IT LAB','CN-IT','4','0',86),('IT','Computer Organization & Architecture IT LAB','COA-IT','4','0',87),('IT','Computer Organization & Architecture IT','COA-IT','4','1',88),('IT','Automata Theory IT','AT-IT','4','1',89),('IT','Automata Theory IT LAB','AT-IT','4','0',90),('IT','Web Programming IT LAB','WP-IT','4','0',91),('IT','Web Programming IT','WP-IT','4','1',92),('IT','Information Theory & Coding IT','ITC-IT','4','1',93),('IT','Information Theory & Coding IT LAB','ITC-IT','4','0',94),('IT','Computer Graphics & Virtual Reality IT','CGVR-IT','5','1',95),('IT','Computer Graphics & Virtual Reality IT LAB','CGVR-IT','5','0',96),('IT','Operating Systems IT LAB','OS-IT','5','0',97),('IT','Operating Systems IT','OS-IT','5','1',98),('IT','Microcontroller & Embedded Systems IT','MES-IT','5','1',99),('IT','Microcontroller & Embedded Systems IT LAB ','MES-IT','5','0',100),('IT','Advance Database Management Systems IT LAB ','ADBMS-IT','5','0',101),('IT','Advance Database Management Systems IT','ADBMS-IT','5','1',102),('IT','Business Communication & Ethics IT ','BCE-IT','5','1',103),('IT','Business Communication & Ethics IT LAB  ','BCE-IT','5','0',104),('IT','Software Engineering IT LAB  ','SE-IT','6','0',105),('IT','Software Engineering IT','SE-IT','6','1',106),('IT','Data Mining & Business Intelligence IT','DMBI-IT','6','1',107),('IT','Data Mining & Business Intelligence IT LAB','DMBI-IT','6','0',108),('IT','System & Web Security IT LAB','SAWS-IT','6','0',109),('IT','System & Web Security IT','SAWS-IT','6','1',110),('IT','Distributed Systems IT','DS-IT','6','1',111),('IT','Distributed Systems IT LAB','DS-IT','6','0',112),('IT','Advance Internet Technology IT LAB','AIT-IT','6','0',113),('IT','Advance Internet Technology IT','AIT-IT','6','1',114),('IT','Software Project Management IT','SPM-IT','7','1',115),('IT','Software Project Management IT LAB','SPM-IT','7','0',116),('IT','Cloud Computing IT LAB','CC-IT','7','0',117),('IT','Cloud Computing IT','CC-IT','7','1',118),('IT','Intelligent System IT','IS-IT','7','1',119),('IT','Intelligent System IT LAB','IS-IT','7','0',120),('IT','Wireless Technology IT LAB','WT-IT','7','0',121),('IT','Wireless Technology IT','WT-IT','7','1',122),('IT','Elective I IT','EL1-IT','7','1',123),('IT','Elective I IT LAB','EL1-IT','7','0',124),('IT','Storage Network Management & Retrival IT','SNMR-IT','8','1',125),('IT','Storage Network Management & Retrival IT LAB','SNMR-IT','8','0',126),('IT','Big Data Analytics IT LAB','BDA-IT','8','0',127),('IT','Big Data Analytics IT','BDA-IT','8','1',128),('IT','Computer Simulation & Modelling IT','CSM-IT','8','1',129),('IT','Computer Simulation & Modelling IT LAB','CSM-IT','8','0',130),('IT','Elective II IT LAB','EL2-IT','8','0',131),('IT','Elective II IT','EL2-IT','8','1',132),('IT','Project I IT','P1-IT','7','0',133),('IT','Project II IT','P2-IT','8','0',134),('Computer','Applied Mathematics III CE','AM3-CE','3','1',136),('Computer','Applied Mathematics III LAB CE ','AM3-CE','3','0',137),('Computer','Object Oriented Programming Methodolgy CE','OOPM-CE','3','1',138),('Computer','Object Oriented Programming Methodolgy CE LAB','OOPM-CE','3','0',139),('Computer','Data Structures CE','DSA-CE','3','1',140),('Computer','Data Structures CE LAB','DSA-CE','3','0',141),('Computer','Digital Logic Design and Analysis CE','DLDA-CE','3','1',142),('Computer','Digital Logic Design and Analysis CE LAB','DLDA-CE','3','0',143),('Computer','Discrete Structures CE','DS-CE','3','1',144),('Computer','Electronic Circuits and Communication Fundamentals CE','ECCF-CE','3','1',145),('Computer','Electronic Circuits and Communication Fundamentals CE LAB','ECCF-CE','3','0',146),('Computer','Applied Mathematics IV CE','AM4-CE','4','1',147),('Computer','Applied Mathematics IV CE LAB','AM4-CE','4','0',148),('Computer','Analysis of Algorithms CE','AOA-CE','4','1',149),('Computer','Analysis of Algorithms CE LAB','AOA-CE','4','0',150),('Computer','Computer Organization and Architecture CE','COA-CE','4','1',151),('Computer','Computer Organization and Architecture CE LAB','COA-CE','4','0',152),('Computer','Data Base Management systems CE','DBMS-CE','4','1',153),('Computer','Data Base Management systems CE LAB','DBMS-CE','4','0',154),('Computer','Theoretical Computer Science CE','TCS-CE','4','1',155),('Computer','Computer Graphics CE','CG-CE','4','1',156),('Computer','Computer Graphics  LAB','CG-CE','4','0',157),('Computer','Microprocessor CE','MP-CE','5','1',158),('Computer','Microprocessor CE LAB','MP-CE','5','0',159),('Computer','Operating Systems CE','OS-CE','5','1',160),('Computer','Operating Systems CE LAB','OS-CE','5','0',161),('Computer','Structured and Object Oriented  Analysis and Design CE','SOAD-CE','5','1',162),('Computer','Structured and Object Oriented  Analysis and Design CE LAB','SOAD-CE','5','0',163),('Computer','Computer Networks CE','CN-CE','5','1',164),('Computer','Computer Networks CE LAB','CN-CE','5','0',165),('Computer','Web Technologies Laboratory CE LAB','WTL-CE','5','0',166),('Computer','Business Communication and Ethics CE LAB','BCE-CE','5','0',168),('Computer','System Programming and Compiler Construction CE','SPCC-CE','6','1',169),('Computer','System Programming and Compiler Construction CE LAB','SPCC-CE','6','0',170),('Computer','Software Engineering CE','SE-CE','6','1',171),('Computer','Software Engineering CE LAB','SE-CE','6','0',172),('Computer','Distributed Databases CE','DDBS-CE','6','1',173),('Computer','Distributed Databases CE LAB','DDBS-CE','6','0',174),('Computer','Mobile Communication and Computing CE ','MCC-CE','6','1',175),('Computer','Mobile Communication and Computing CE LAB','MCC-CE','6','0',176),('Computer','Elective­I CE','EL-I-CE','6','1',177),('Computer','Network Programming Laboratory CE LAB','NPL-CE','6','0',179),('Computer','Digital Signal Processing CE','DSP-CE','7','1',180),('Computer','Digital Signal Processing CE LAB','DSP-CE','7','0',181),('Computer','Cryptography and System Security CE','CSS-CE','7','1',182),('Computer','Cryptography and System Security CE LAB','CSS-CE','7','0',183),('Computer','Artificial Intelligence CE','AI-CE','7','1',184),('Computer','Artificial Intelligence CE LAB','AI-CE','7','0',185),('Computer','Elective­II CE','EL-II-CE','7','1',186),('Computer','Elective­II CE LAB','EL-II-CE','7','0',187),('Computer','Project I CE','P1-CE','7','0',188),('Computer','Network Threats and Attacks Laboratory CE LAB','NTAL-CE','7','0',189),('Computer','Data Warehouse and Mining CE','DWM-CE','8','1',190),('Computer','Data Warehouse and Mining CE LAB','DWM-CE','8','0',191),('Computer','Human Machine Interaction CE','HMI-CE','8','1',192),('Computer','Human Machine Interaction CE LAB','HMI-CE','8','0',193),('Computer','Parallel and distributed Systems CE','PADS-CE','8','1',194),('Computer','Parallel and distributed Systems CE LAB','PADS-CE','8','0',195),('Computer','Elective­III CE','EL-III-CE','8','1',196),('Computer','Elective­III CE LAB','EL-III-CE','8','0',197),('Computer','Project II CE','P2-CE','8','0',198),('Computer','Cloud Computing Laboratory CE LAB','CCL-CE','8','0',200),('Computer','Elective­I CE LAB','EL-I-CE','6','0',201);

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

insert  into `computer4`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','AM4-CEB1||AOA-CEB2||COA-CEB3||DBMS-CEB4','AM4-CEB1||AOA-CEB2||COA-CEB3||DBMS-CEB4','AOA-CE','AM4-CE','AM4-CE','AM4-CE','COA-CE'),('Tue','AOA-CEB1||COA-CEB2||DBMS-CEB3||TCS-CEB4','AOA-CEB1||COA-CEB2||DBMS-CEB3||TCS-CEB4','AM4-CE','DBMS-CE','COA-CE','AOA-CE','DBMS-CE'),('Wed','COA-CEB1||DBMS-CEB2||TCS-CEB3||CG-CEB4','COA-CEB1||DBMS-CEB2||TCS-CEB3||CG-CEB4','COA-CE','TCS-CE','COA-CE','AM4-CE','COA-CE'),('Thurs','DBMS-CEB1||TCS-CEB2||CG-CEB3||AM4-CEB4','DBMS-CEB1||TCS-CEB2||CG-CEB3||AM4-CEB4','DBMS-CE','DBMS-CE','TCS-CE','DBMS-CE','AOA-CE'),('Fri','TCS-CEB1||CG-CEB2||AM4-CEB3||AOA-CEB4','TCS-CEB1||CG-CEB2||AM4-CEB3||AOA-CEB4','TCS-CE','AOA-CE','TCS-CE','AOA-CE','TCS-CE');

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

insert  into `computer6`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','SPCC-CE','DDBS-CE','SE-CE','SPCC-CEB1||SE-CEB2||DDBS-CEB3||MCC-CEB4','SPCC-CEB1||SE-CEB2||DDBS-CEB3||MCC-CEB4','SPCC-CE','DDBS-CE'),('Tue','SE-CE','EL-I-CE','SE-CE','SE-CEB1||DDBS-CEB2||MCC-CEB3||EL-I-CEB4','SE-CEB1||DDBS-CEB2||MCC-CEB3||EL-I-CEB4','SPCC-CE','SE-CE'),('Wed','MCC-CE','MCC-CE','DDBS-CE','DDBS-CEB1||MCC-CEB2||EL-I-CEB3||SPCC-CEB4','DDBS-CEB1||MCC-CEB2||EL-I-CEB3||SPCC-CEB4','SPCC-CE','DDBS-CE'),('Thurs','MCC-CE','SE-CE','EL-I-CE','MCC-CEB1||EL-I-CEB2||SPCC-CEB3||SE-CEB4','MCC-CEB1||EL-I-CEB2||SPCC-CEB3||SE-CEB4','DDBS-CE','MCC-CE'),('Fri','EL-I-CE','MCC-CE','EL-I-CE','EL-I-CEB1||SPCC-CEB2||SE-CEB3||DDBS-CEB4','EL-I-CEB1||SPCC-CEB2||SE-CEB3||DDBS-CEB4','SPCC-CE','EL-I-CE');

/*Table structure for table `computer8` */

DROP TABLE IF EXISTS `computer8`;

CREATE TABLE `computer8` (
  `days` varchar(255) default NULL,
  `9.30-10.30` varchar(255) default NULL,
  `10.30-11.30` varchar(255) default NULL,
  `11.30-12.30` varchar(255) default NULL,
  `1.00-2.00` varchar(255) default NULL,
  `2.00-3.00` varchar(255) default NULL,
  `3.00-4.00` varchar(255) default NULL,
  `4.00-5.00` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `computer8` */

insert  into `computer8`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','PADS-CE','HMI-CE','DWM-CE','----','HMI-CEB1||PADS-CEB2||EL-III-CEB3||DWM-CEB4','HMI-CEB1||PADS-CEB2||EL-III-CEB3||DWM-CEB4','HMI-CE'),('Tue','PADS-CE','DWM-CE','PADS-CE','----','PADS-CEB1||EL-III-CEB2||DWM-CEB3||HMI-CEB4','PADS-CEB1||EL-III-CEB2||DWM-CEB3||HMI-CEB4','PADS-CE'),('Wed','EL-III-CE','EL-III-CE','PADS-CE','EL-III-CE','EL-III-CEB1||DWM-CEB2||HMI-CEB3||PADS-CEB4','EL-III-CEB1||DWM-CEB2||HMI-CEB3||PADS-CEB4','EL-III-CE'),('Thurs','HMI-CE','----','HMI-CE','DWM-CE','DWM-CEB1||HMI-CEB2||PADS-CEB3||EL-III-CEB4','DWM-CEB1||HMI-CEB2||PADS-CEB3||EL-III-CEB4','EL-III-CE'),('Fri','----','DWM-CE','----','HMI-CE','----','DWM-CE','----');

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

insert  into `demo`(`class`,`subject`,`subcode`,`teacher`,`practical`) values ('IT4','Applied Maths IV IT','AM4-IT','VPP','1'),('IT4','Computer Networks IT','CN-IT','KLS','1'),('IT4','Computer Organization & Architecture IT','COA-IT','LVL','1'),('IT4','Automata Theory IT','AT-IT','SA','1'),('IT4','Web Programming IT','WP-IT','SSD','1'),('IT4','Information Theory & Coding IT','ITC-IT','SGL','1'),('IT6','Software Engineering IT','SE-IT','SA','1'),('IT6','Data Mining & Business Intelligence IT','DMBI-IT','MAK','1'),('IT6','System & Web Security IT','SAWS-IT','NJ','1'),('IT6','Distributed Systems IT','DS-IT','SLR','1'),('IT6','Advance Internet Technology IT','AIT-IT','SSD','1'),('IT8','Storage Network Management & Retrival IT','SNMR-IT','SB','1'),('IT8','Big Data Analytics IT','BDA-IT','SMR','1'),('IT8','Computer Simulation & Modelling IT','CSM-IT','RGM','1'),('IT8','Elective II IT','EL2-IT','SLR','1'),('Computer4','Applied Mathematics IV CE','AM4-CE','MBB','1'),('Computer4','Analysis of Algorithms CE','AOA-CE','DPR','1'),('Computer4','Computer Organization and Architecture CE','COA-CE','KNP','1'),('Computer4','Data Base Management systems CE','DBMS-CE','RGM','1'),('Computer4','Theoretical Computer Science CE','TCS-CE','MMM','1'),('Computer4','Computer Graphics CE','CG-CE','UNR','1'),('Computer6','System Programming and Compiler Construction CE','SPCC-CE','LVL','1'),('Computer6','Software Engineering CE','SE-CE','SKP','1'),('Computer6','Distributed Databases CE','DDBS-CE','AMB','1'),('Computer6','Mobile Communication and Computing CE ','MCC-CE','SVC','1'),('Computer6','Elective­I CE','EL-I-CE','MAS','1'),('Computer8','Human Machine Interaction CE','HMI-CE','PKS','1'),('Computer8','Parallel and distributed Systems CE','PADS-CE','RDK','1'),('Computer8','Elective­III CE','EL-III-CE','SKP','1'),('Computer8','Data Warehouse and Mining CE','DWM-CE','PYM','1');

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

insert  into `it4`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','CN-IT','AM4-ITB1||CN-ITB2||COA-ITB3||AT-ITB4','AM4-ITB1||CN-ITB2||COA-ITB3||AT-ITB4','WP-IT','WP-IT','AM4-IT','AM4-IT'),('Tue','WP-IT','CN-ITB1||COA-ITB2||AT-ITB3||WP-ITB4','CN-ITB1||COA-ITB2||AT-ITB3||WP-ITB4','COA-IT','COA-IT','AM4-IT','CN-IT'),('Wed','COA-IT','COA-ITB1||AT-ITB2||WP-ITB3||ITC-ITB4','COA-ITB1||AT-ITB2||WP-ITB3||ITC-ITB4','AT-IT','AM4-IT','CN-IT','COA-IT'),('Thurs','AT-IT','AT-ITB1||WP-ITB2||ITC-ITB3||AM4-ITB4','AT-ITB1||WP-ITB2||ITC-ITB3||AM4-ITB4','AT-IT','CN-IT','COA-IT','AT-IT'),('Fri','WP-IT','WP-ITB1||ITC-ITB2||AM4-ITB3||CN-ITB4','WP-ITB1||ITC-ITB2||AM4-ITB3||CN-ITB4','AT-IT','AM4-IT','CN-IT','WP-IT');

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

insert  into `it6`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','SAWS-IT','AIT-IT','AIT-IT','DS-IT','SE-ITB1||DMBI-ITB2||SAWS-ITB3||DS-ITB4','SE-ITB1||DMBI-ITB2||SAWS-ITB3||DS-ITB4','DMBI-IT'),('Tue','DMBI-IT','SAWS-IT','SAWS-IT','SE-IT','DMBI-ITB1||SAWS-ITB2||DS-ITB3||AIT-ITB4','DMBI-ITB1||SAWS-ITB2||DS-ITB3||AIT-ITB4','DS-IT'),('Wed','AIT-IT','DMBI-IT','SAWS-IT','AIT-IT','SAWS-ITB1||DS-ITB2||AIT-ITB3||SE-ITB4','SAWS-ITB1||DS-ITB2||AIT-ITB3||SE-ITB4','SE-IT'),('Thurs','AIT-IT','SAWS-IT','DMBI-IT','DS-IT','DS-ITB1||AIT-ITB2||SE-ITB3||DMBI-ITB4','DS-ITB1||AIT-ITB2||SE-ITB3||DMBI-ITB4','DS-IT'),('Fri','SE-IT','SE-IT','SE-IT','DS-IT','AIT-ITB1||SE-ITB2||DMBI-ITB3||SAWS-ITB4','AIT-ITB1||SE-ITB2||DMBI-ITB3||SAWS-ITB4','DMBI-IT');

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

insert  into `it8`(`days`,`9.30-10.30`,`10.30-11.30`,`11.30-12.30`,`1.00-2.00`,`2.00-3.00`,`3.00-4.00`,`4.00-5.00`) values ('Mon','SNMR-ITB1||BDA-ITB2||CSM-ITB3||EL2-ITB4','SNMR-ITB1||BDA-ITB2||CSM-ITB3||EL2-ITB4','EL2-IT','----','BDA-IT','CSM-IT','SNMR-IT'),('Tue','BDA-ITB1||CSM-ITB2||EL2-ITB3||SNMR-ITB4','BDA-ITB1||CSM-ITB2||EL2-ITB3||SNMR-ITB4','EL2-IT','EL2-IT','----','SNMR-IT','SNMR-IT'),('Wed','CSM-ITB1||EL2-ITB2||SNMR-ITB3||BDA-ITB4','CSM-ITB1||EL2-ITB2||SNMR-ITB3||BDA-ITB4','EL2-IT','EL2-IT','CSM-IT','CSM-IT','BDA-IT'),('Thurs','EL2-ITB1||SNMR-ITB2||BDA-ITB3||CSM-ITB4','EL2-ITB1||SNMR-ITB2||BDA-ITB3||CSM-ITB4','----','BDA-IT','SNMR-IT','BDA-IT','CSM-IT'),('Fri','----','SNMR-IT','----','BDA-IT','----','CSM-IT','----');

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

insert  into `practical`(`class`,`subcode`,`teacher`,`subject`) values ('IT4','AM4-ITB1','VPP','Applied Maths IV IT LAB'),('IT4','AM4-ITB2','VPP','Applied Maths IV IT LAB'),('IT4','AM4-ITB3','VPP','Applied Maths IV IT LAB'),('IT4','AM4-ITB4','VPP','Applied Maths IV IT LAB'),('IT4','CN-ITB1','KLS','Computer Networks IT LAB'),('IT4','CN-ITB2','KLS','Computer Networks IT LAB'),('IT4','CN-ITB3','KLS','Computer Networks IT LAB'),('IT4','CN-ITB4','KLS','Computer Networks IT LAB'),('IT4','COA-ITB1','LVL','Computer Organization & Architecture IT LAB'),('IT4','COA-ITB2','LVL','Computer Organization & Architecture IT LAB'),('IT4','COA-ITB3','LVL','Computer Organization & Architecture IT LAB'),('IT4','COA-ITB4','LVL','Computer Organization & Architecture IT LAB'),('IT4','AT-ITB1','SA','Automata Theory IT LAB'),('IT4','AT-ITB2','SA','Automata Theory IT LAB'),('IT4','AT-ITB3','SA','Automata Theory IT LAB'),('IT4','AT-ITB4','SB','Automata Theory IT LAB'),('IT4','WP-ITB1','BS','Web Programming IT LAB'),('IT4','WP-ITB2','SSD','Web Programming IT LAB'),('IT4','WP-ITB3','SSD','Web Programming IT LAB'),('IT4','WP-ITB4','SSD','Web Programming IT LAB'),('IT4','ITC-ITB1','SGL','Information Theory & Coding IT LAB'),('IT4','ITC-ITB2','SGL','Information Theory & Coding IT LAB'),('IT4','ITC-ITB3','SGL','Information Theory & Coding IT LAB'),('IT4','ITC-ITB4','SGL','Information Theory & Coding IT LAB'),('IT6','SE-ITB1','SA','Software Engineering IT LAB  '),('IT6','SE-ITB2','SA','Software Engineering IT LAB  '),('IT6','SE-ITB3','SA','Software Engineering IT LAB  '),('IT6','SE-ITB4','SLR','Software Engineering IT LAB  '),('IT6','DMBI-ITB1','MAK','Data Mining & Business Intelligence IT LAB'),('IT6','DMBI-ITB2','MAK','Data Mining & Business Intelligence IT LAB'),('IT6','DMBI-ITB3','MAK','Data Mining & Business Intelligence IT LAB'),('IT6','DMBI-ITB4','MAK','Data Mining & Business Intelligence IT LAB'),('IT6','SAWS-ITB1','NJ','System & Web Security IT LAB'),('IT6','SAWS-ITB2','NJ','System & Web Security IT LAB'),('IT6','SAWS-ITB3','NJ','System & Web Security IT LAB'),('IT6','SAWS-ITB4','NJ','System & Web Security IT LAB'),('IT6','DS-ITB1','SLR','Distributed Systems IT LAB'),('IT6','DS-ITB2','SLR','Distributed Systems IT LAB'),('IT6','DS-ITB3','SLR','Distributed Systems IT LAB'),('IT6','DS-ITB4','SLR','Distributed Systems IT LAB'),('IT6','AIT-ITB1','SSD','Advance Internet Technology IT LAB'),('IT6','AIT-ITB2','SSD','Advance Internet Technology IT LAB'),('IT6','AIT-ITB3','SSD','Advance Internet Technology IT LAB'),('IT6','AIT-ITB4','SSD','Advance Internet Technology IT LAB'),('IT8','SNMR-ITB1','NJ','Storage Network Management & Retrival IT LAB'),('IT8','SNMR-ITB2','NJ','Storage Network Management & Retrival IT LAB'),('IT8','SNMR-ITB3','NJ','Storage Network Management & Retrival IT LAB'),('IT8','SNMR-ITB4','NJ','Storage Network Management & Retrival IT LAB'),('IT8','BDA-ITB1','SMR','Big Data Analytics IT LAB'),('IT8','BDA-ITB2','SMR','Big Data Analytics IT LAB'),('IT8','BDA-ITB3','SMR','Big Data Analytics IT LAB'),('IT8','BDA-ITB4','SMR','Big Data Analytics IT LAB'),('IT8','CSM-ITB1','MAK','Computer Simulation & Modelling IT LAB'),('IT8','CSM-ITB2','MAK','Computer Simulation & Modelling IT LAB'),('IT8','CSM-ITB3','SA','Computer Simulation & Modelling IT LAB'),('IT8','CSM-ITB4','SA','Computer Simulation & Modelling IT LAB'),('IT8','EL2-ITB1','SLR','Elective II IT LAB'),('IT8','EL2-ITB2','SLR','Elective II IT LAB'),('IT8','EL2-ITB3','SLR','Elective II IT LAB'),('IT8','EL2-ITB4','SLR','Elective II IT LAB'),('Computer4','AM4-CEB1','MBB','Applied Mathematics IV CE LAB'),('Computer4','AM4-CEB2','MBB','Applied Mathematics IV CE LAB'),('Computer4','AM4-CEB3','MBB','Applied Mathematics IV CE LAB'),('Computer4','AM4-CEB4','MBB','Applied Mathematics IV CE LAB'),('Computer4','AOA-CEB1','UNR','Analysis of Algorithms CE LAB'),('Computer4','AOA-CEB2','DPR','Analysis of Algorithms CE LAB'),('Computer4','AOA-CEB3','DPR','Analysis of Algorithms CE LAB'),('Computer4','COA-CEB1','KNP','Computer Organization and Architecture CE LAB'),('Computer4','COA-CEB2','KNP','Computer Organization and Architecture CE LAB'),('Computer4','COA-CEB3','KNP','Computer Organization and Architecture CE LAB'),('Computer4','DBMS-CEB1','RGM','Data Base Management systems CE LAB'),('Computer4','DBMS-CEB2','KSB','Data Base Management systems CE LAB'),('Computer4','DBMS-CEB3','KSB','Data Base Management systems CE LAB'),('Computer4','CG-CEB1','UNR','Computer Graphics  LAB'),('Computer4','CG-CEB2','UNR','Computer Graphics  LAB'),('Computer4','CG-CEB3','UNR','Computer Graphics  LAB'),('Computer6','SPCC-CEB1','PKS','System Programming and Compiler Construction CE LAB'),('Computer6','SPCC-CEB3','PKS','System Programming and Compiler Construction CE LAB'),('Computer6','SPCC-CEB2','ADS','System Programming and Compiler Construction CE LAB'),('Computer6','SE-CEB1','PYM','Software Engineering CE LAB'),('Computer6','SE-CEB2','SKP','Software Engineering CE LAB'),('Computer6','SE-CEB3','SKP','Software Engineering CE LAB'),('Computer6','DDBS-CEB1','AMB','Distributed Databases CE LAB'),('Computer6','DDBS-CEB2','KSB','Distributed Databases CE LAB'),('Computer6','DDBS-CEB3','AMB','Distributed Databases CE LAB'),('Computer6','MCC-CEB1','SVC','Mobile Communication and Computing CE LAB'),('Computer6','MCC-CEB2','SVC','Mobile Communication and Computing CE LAB'),('Computer6','MCC-CEB3','SVC','Mobile Communication and Computing CE LAB'),('Computer6','NPL-CEB1','RRA','Network Programming Laboratory CE LAB'),('Computer6','NPL-CEB2','RGM','Network Programming Laboratory CE LAB'),('Computer6','NPL-CEB3','RRA','Network Programming Laboratory CE LAB'),('Computer8','DWM-CEB1','PYM','Data Warehouse and Mining CE LAB'),('Computer8','DWM-CEB2','PYM','Data Warehouse and Mining CE LAB'),('Computer8','DWM-CEB3','VAP','Data Warehouse and Mining CE LAB'),('Computer8','HMI-CEB1','ADS','Human Machine Interaction CE LAB'),('Computer8','HMI-CEB2','PKS','Human Machine Interaction CE LAB'),('Computer8','HMI-CEB3','RAS','Human Machine Interaction CE LAB'),('Computer8','PADS-CEB1','RDK','Parallel and distributed Systems CE LAB'),('Computer8','PADS-CEB2','RDK','Parallel and distributed Systems CE LAB'),('Computer8','PADS-CEB3','VAP','Parallel and distributed Systems CE LAB'),('Computer8','EL-III-CEB1','SKP','Elective­III CE LAB'),('Computer8','EL-III-CEB3','SKP','Elective­III CE LAB'),('Computer8','EL-III-CEB2','MAS','Elective­III CE LAB'),('Computer8','CCL-CEB1','MMM','Cloud Computing Laboratory CE LAB'),('Computer8','CCL-CEB2','MMM','Cloud Computing Laboratory CE LAB'),('Computer8','CCL-CEB3','MMM','Cloud Computing Laboratory CE LAB'),('Computer4','AOA-CEB4','DPR','Analysis of Algorithms CE LAB'),('Computer4','COA-CEB4','KNP','Computer Organization and Architecture CE LAB'),('Computer4','DBMS-CEB4','KSB','Data Base Management systems CE LAB'),('Computer4','CG-CEB4','UNR','Computer Graphics  LAB'),('Computer6','SPCC-CEB4','PKS','System Programming and Compiler Construction CE LAB'),('Computer6','SE-CEB4','SKP','Software Engineering CE LAB'),('Computer6','DDBS-CEB4','AMB','Distributed Databases CE LAB'),('Computer6','MCC-CEB4','SVC','Mobile Communication and Computing CE LAB'),('Computer6','NPL-CEB4','RRA','Network Programming Laboratory CE LAB'),('Computer8','DWM-CEB4','PYM','Data Warehouse and Mining CE LAB'),('Computer8','HMI-CEB4','PKS','Human Machine Interaction CE LAB'),('Computer8','PADS-CEB4','RDK','Parallel and distributed Systems CE LAB'),('Computer8','EL-III-CEB4','SKP','Elective­III CE LAB'),('Computer8','CCL-CEB4','MMM','Cloud Computing Laboratory CE LAB');

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

insert  into `time`(`class`,`practical`) values ('IT4','10.30-11.30'),('IT6','2.00-3.00'),('Computer4','9.30-10.30'),('Computer6','1.00-2.00'),('IT8','9.30-10.30'),('Computer8','2.00-3.00');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `type` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`type`) values ('SGL','SGL','teacher'),('LVL','LVL','teacher'),('NJ','NJ','teacher'),('VM','VM','teacher'),('SMR','SMR','teacher'),('SA','SA','teacher'),('SB','SB','teacher'),('MAK','MAK','teacher'),('SLR','SLR','teacher'),('KLS','KLS','teacher'),('SSD','SSD','teacher'),('BS','BS','teacher'),('DPR','DPR','teacher'),('KNP','KNP','teacher'),('KSB','KSB','teacher'),('SVC','SVC','teacher'),('MMM','MMM','teacher'),('RGM','RGM','teacher'),('UNR','UNR','teacher'),('VAP','VAP','teacher'),('RDK','RDK','teacher'),('MAS','MAS','teacher'),('ADS','ADS','teacher'),('PKS','PKS','teacher'),('SKP','SKP','teacher'),('PYM','PYM','teacher'),('AMB','AMB','teacher'),('RRA','RRA','teacher'),('DAI','DAI','teacher'),('admin','admin','admin'),('VPP','VPP','teacher'),('MBB','MBB','teacher'),('RAS','RAS','teacher'),('anshul','anshul','student');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
