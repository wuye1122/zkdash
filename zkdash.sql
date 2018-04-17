/*
SQLyog Enterprise - MySQL GUI v7.12 
MySQL - 5.1.73-log : Database - zkdash
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`zkdash` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zkdash`;

/*Table structure for table `zd_qconf_agent` */

DROP TABLE IF EXISTS `zd_qconf_agent`;

CREATE TABLE `zd_qconf_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) DEFAULT NULL,
  `hostname` varchar(32) DEFAULT NULL,
  `cluster_name` varchar(32) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `zd_qconf_agent` */

/*Table structure for table `zd_qconf_feedback` */

DROP TABLE IF EXISTS `zd_qconf_feedback`;

CREATE TABLE `zd_qconf_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(32) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  `md5_value` varchar(128) DEFAULT NULL,
  `idc` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `execute_status` enum('0','1','2') NOT NULL DEFAULT '0',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `zd_qconf_feedback` */

/*Table structure for table `zd_snapshot` */

DROP TABLE IF EXISTS `zd_snapshot`;

CREATE TABLE `zd_snapshot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_name` varchar(64) DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  `data` longtext,
  `create_time` datetime DEFAULT NULL,
  `commit` varchar(64) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `zd_snapshot` */

/*Table structure for table `zd_snapshot_tree` */

DROP TABLE IF EXISTS `zd_snapshot_tree`;

CREATE TABLE `zd_snapshot_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_name` varchar(64) DEFAULT NULL,
  `node_path` varchar(512) DEFAULT NULL,
  `left` int(11) DEFAULT NULL,
  `right` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `zd_snapshot_tree` */

/*Table structure for table `zd_znode` */

DROP TABLE IF EXISTS `zd_znode`;

CREATE TABLE `zd_znode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_name` varchar(64) DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  `type` enum('0','1') NOT NULL DEFAULT '0',
  `business` varchar(64) DEFAULT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `zd_znode` */

/*Table structure for table `zd_zookeeper` */

DROP TABLE IF EXISTS `zd_zookeeper`;

CREATE TABLE `zd_zookeeper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_name` varchar(32) NOT NULL,
  `hosts` varchar(128) NOT NULL,
  `business` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `zd_zookeeper` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
