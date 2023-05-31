以下是创建的数据库，有点懒，没写表之间的连接：


Create Table

CREATE TABLE `workday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) DEFAULT NULL,
  `workTime` date DEFAULT NULL,
  `ampm` varchar(20) DEFAULT NULL,
  `nsnum` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8



Create Table

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8



CREATE TABLE `patients` (
  `id` varchar(20) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `con` varchar(20) DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8



CREATE TABLE `orders` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  `pid` varchar(20) DEFAULT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `doc_id` int(20) DEFAULT NULL,
  `doc_name` varchar(20) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `visitDate` date DEFAULT NULL,
  `visitNoon` varchar(20) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `state` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8


CREATE TABLE `operationrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hosStay_id` int(11) DEFAULT NULL,
  `doc_id` int(11) DEFAULT NULL,
  `operationTime` datetime DEFAULT NULL,
  `applyTime` datetime DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8

CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `or_id` int(11) DEFAULT NULL,
  `operationTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8

CREATE TABLE `hospitalstay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_id` int(11) DEFAULT NULL,
  `room` varchar(50) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `admissionDate` date DEFAULT NULL,
  `dischargeTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8


Create Table

CREATE TABLE `hosapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) DEFAULT NULL,
  `hosStay_id` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `applyTime` datetime DEFAULT NULL,
  `dischargeTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8


Create Table

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `doc_name` varchar(20) DEFAULT NULL,
  `doctor_gender` varchar(20) DEFAULT NULL,
  `doctor_title` varchar(20) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `doctor_career` varchar(50) DEFAULT NULL,
  `doctor_about` text,
  `deptid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8


Create Table

CREATE TABLE `department` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(20) DEFAULT NULL,
  `doctor_num` int(11) DEFAULT NULL,
  `dept_about` text,
  `dept_diagnosis_scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8


Create Table

CREATE TABLE `apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(20) DEFAULT NULL,
  `doc_name` varchar(20) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `applyTime` date DEFAULT NULL,
  `request` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8


Create Table

CREATE TABLE `admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(20) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `doc_id` int(11) DEFAULT NULL,
  `reason` varchar(20) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `applyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8


Create Table

CREATE TABLE `admin` (
  `account` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
