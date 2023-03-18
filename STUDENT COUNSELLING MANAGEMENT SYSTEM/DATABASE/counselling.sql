/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - counselling
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`counselling` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `counselling`;

/*Table structure for table `add_fee` */

DROP TABLE IF EXISTS `add_fee`;

CREATE TABLE `add_fee` (
  `id` int(11) NOT NULL auto_increment,
  `reg_no` varchar(1000) default NULL,
  `year` varchar(1000) default NULL,
  `outstanding` varchar(1000) default NULL,
  `instalment_1` varchar(1000) default NULL,
  `instalment_2` varchar(1000) default NULL,
  `instalment_3` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `add_fee` */

/*Table structure for table `c_form` */

DROP TABLE IF EXISTS `c_form`;

CREATE TABLE `c_form` (
  `id` int(11) NOT NULL auto_increment,
  `student_name` varchar(200) default NULL,
  `reg_no` varchar(200) default NULL,
  `present_address` varchar(200) default NULL,
  `phone_no` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `dob` varchar(200) default NULL,
  `father_name` varchar(200) default NULL,
  `father_mobile` varchar(200) default NULL,
  `mother_name` varchar(200) default NULL,
  `mother_mobile` varchar(200) default NULL,
  `gardian_status` varchar(200) default NULL,
  `present_profession` varchar(200) default NULL,
  `siblings` varchar(200) default NULL,
  `sibling_education` varchar(200) default NULL,
  `sibling_occupation` varchar(200) default NULL,
  `sibling_number` varchar(100) default NULL,
  `financial_status` varchar(1000) default NULL,
  `ssc_marks` varchar(1000) default NULL,
  `inter_marks` varchar(1000) default NULL,
  `cet_rank` varchar(1000) default NULL,
  `stay` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `c_form` */

/*Table structure for table `counselor` */

DROP TABLE IF EXISTS `counselor`;

CREATE TABLE `counselor` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `address` varchar(1000) default NULL,
  `gender` varchar(1000) default NULL,
  `username` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `counselor` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL auto_increment,
  `rollno` varchar(1000) default NULL,
  `feedback` varchar(1000) default NULL,
  `response` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `id` int(11) NOT NULL auto_increment,
  `regno` varchar(1000) default NULL,
  `report` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `report` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `fname` varchar(200) default NULL,
  `lname` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `mobile` varchar(200) default NULL,
  `address` varchar(200) default NULL,
  `gender` varchar(200) default NULL,
  `hobbies` varchar(200) default NULL,
  `pname` varchar(200) default NULL,
  `pemail` varchar(200) default NULL,
  `pmobile` varchar(200) default NULL,
  `occupation` varchar(200) default NULL,
  `username` varchar(200) default NULL,
  `rollno` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

/*Table structure for table `studentdetails` */

DROP TABLE IF EXISTS `studentdetails`;

CREATE TABLE `studentdetails` (
  `id` int(11) NOT NULL auto_increment,
  `counselor` varchar(1000) default NULL,
  `roll_no` varchar(1000) default NULL,
  `inter_marks` varchar(1000) default NULL,
  `sem_marks` varchar(1000) default NULL,
  `attendance` varchar(1000) default NULL,
  `other_details` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `studentdetails` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
