-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.45-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_civil
DROP DATABASE IF EXISTS `db_civil`;
CREATE DATABASE IF NOT EXISTS `db_civil` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_civil`;

-- Dumping structure for table db_civil.tbl_birth1
DROP TABLE IF EXISTS `tbl_birth1`;
CREATE TABLE IF NOT EXISTS `tbl_birth1` (
  `birth_id1` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `birth_dob` varchar(50) NOT NULL default '0',
  `birth_gender` varchar(50) NOT NULL default '0',
  `birth_child` varchar(50) NOT NULL default '0',
  `birth_father` varchar(50) NOT NULL default '0',
  `birth_mother` varchar(50) NOT NULL default '0',
  `birth_address` varchar(50) NOT NULL default '0',
  `birth_pob` varchar(50) NOT NULL default '0',
  `birth_hospital` varchar(50) NOT NULL default '0',
  `birth_weight` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`birth_id1`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_birth2
DROP TABLE IF EXISTS `tbl_birth2`;
CREATE TABLE IF NOT EXISTS `tbl_birth2` (
  `birth_id2` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `birth_town` varchar(50) default NULL,
  `district_id` int(11) default NULL,
  `religion_id` varchar(50) default NULL,
  `birth_focc` varchar(50) default NULL,
  `birth_mocc` varchar(50) default NULL,
  `birth_fedu` varchar(50) default NULL,
  `birth_medu` varchar(50) default NULL,
  `birth_mage` varchar(50) default NULL,
  `birth_delivery` varchar(50) default NULL,
  `birth_duration` varchar(50) default NULL,
  PRIMARY KEY  (`birth_id2`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_death
DROP TABLE IF EXISTS `tbl_death`;
CREATE TABLE IF NOT EXISTS `tbl_death` (
  `death_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `death_date` date default NULL,
  `death_dplace` varchar(50) default NULL,
  `death_name` varchar(50) default NULL,
  `death_fhname` varchar(50) default NULL,
  `death_gender` varchar(50) default NULL,
  `death_age` int(11) NOT NULL,
  `death_address` varchar(50) default NULL,
  `death_informer` varchar(50) default NULL,
  `death_infoadd` varchar(50) default NULL,
  `death_place` varchar(50) default NULL,
  `religion_id` int(11) default NULL,
  `death_occ` varchar(50) default NULL,
  `death_treatment` varchar(50) default NULL,
  `death_reason` varchar(50) default NULL,
  `death_disease` varchar(50) default NULL,
  `death_smoking` varchar(50) default NULL,
  `death_alcohol` varchar(50) default NULL,
  PRIMARY KEY  (`death_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_district
DROP TABLE IF EXISTS `tbl_district`;
CREATE TABLE IF NOT EXISTS `tbl_district` (
  `district_id` int(11) NOT NULL auto_increment,
  `state_id` int(11) NOT NULL default '0',
  `district_name` varchar(50) default NULL,
  PRIMARY KEY  (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_login
DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE IF NOT EXISTS `tbl_login` (
  `login_id` int(11) NOT NULL auto_increment,
  `login_aadhar` varchar(50) default NULL,
  `login_pwd` varchar(50) default NULL,
  PRIMARY KEY  (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_marriage
DROP TABLE IF EXISTS `tbl_marriage`;
CREATE TABLE IF NOT EXISTS `tbl_marriage` (
  `m_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `m_mdate` varchar(50) NOT NULL default '0',
  `m_pom` varchar(50) NOT NULL default '0',
  `m_hpic` varchar(50) NOT NULL default '0',
  `m_wpic` varchar(50) NOT NULL default '0',
  `m_hname` varchar(50) NOT NULL default '0',
  `m_wname` varchar(50) NOT NULL default '0',
  `m_hnation` varchar(50) NOT NULL default '0',
  `m_wnation` varchar(50) NOT NULL default '0',
  `m_hage` varchar(50) NOT NULL default '0',
  `m_wage` varchar(50) NOT NULL default '0',
  `m_hdob` varchar(50) NOT NULL default '0',
  `m_wdob` varchar(50) NOT NULL default '0',
  `m_hoccu` varchar(50) NOT NULL default '0',
  `m_woccu` varchar(50) NOT NULL default '0',
  `m_haddress` varchar(50) NOT NULL default '0',
  `m_waddress` varchar(50) NOT NULL default '0',
  `m_hpremstat` varchar(50) NOT NULL default '0',
  `m_wpremstat` varchar(50) NOT NULL default '0',
  `m_hfname` varchar(50) NOT NULL default '0',
  `m_wfname` varchar(50) NOT NULL default '0',
  `m_hmname` varchar(50) NOT NULL default '0',
  `m_wmname` varchar(50) NOT NULL default '0',
  `m_hadhar` varchar(50) NOT NULL default '0',
  `m_wadhar` varchar(50) NOT NULL default '0',
  `m_hreligion` varchar(50) NOT NULL default '0',
  `m_wreligion` varchar(50) NOT NULL default '0',
  `m_witname1` varchar(50) NOT NULL default '0',
  `m_witadd1` varchar(50) NOT NULL default '0',
  `m_witname2` varchar(50) NOT NULL default '0',
  `m_witadd2` varchar(50) NOT NULL default '0',
  `m_proof` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_pancard
DROP TABLE IF EXISTS `tbl_pancard`;
CREATE TABLE IF NOT EXISTS `tbl_pancard` (
  `pan_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `pan_lastname` varchar(50) default NULL,
  `pan_firstname` varchar(50) default NULL,
  `pan_midname` varchar(50) default NULL,
  `pan_gender` varchar(50) default NULL,
  `pan_dob` varchar(50) default NULL,
  `pan_flastname` varchar(50) default NULL,
  `pan_ffirstname` varchar(50) default NULL,
  `pan_address` varchar(50) default NULL,
  `pan_email` varchar(50) default NULL,
  `pan_phno` varchar(50) default NULL,
  `district_id` int(11) default NULL,
  `pan_aadhar` varchar(50) default NULL,
  `pan_incomesource` varchar(50) default NULL,
  `pan_proofid` varchar(50) default NULL,
  `pan_proofaddress` varchar(50) default NULL,
  `pan_proofdob` varchar(50) default NULL,
  PRIMARY KEY  (`pan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_passport1
DROP TABLE IF EXISTS `tbl_passport1`;
CREATE TABLE IF NOT EXISTS `tbl_passport1` (
  `pass_id1` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `pass_applying` varchar(50) default NULL,
  `pass_reason` varchar(50) default NULL,
  `pass_apptype` varchar(50) default NULL,
  `pass_booklet` varchar(50) default NULL,
  `pass_validity` varchar(50) default NULL,
  PRIMARY KEY  (`pass_id1`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_passport2
DROP TABLE IF EXISTS `tbl_passport2`;
CREATE TABLE IF NOT EXISTS `tbl_passport2` (
  `pass_id2` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `pass_name` varchar(50) default NULL,
  `pass_surname` varchar(50) default NULL,
  `pass_dob` varchar(50) default NULL,
  `pass_birthplace` varchar(50) default NULL,
  `district_id` int(11) default NULL,
  `pass_country` varchar(50) default NULL,
  `pass_gender` varchar(50) default NULL,
  `pass_mstatus` varchar(50) default NULL,
  `pass_citizenship` varchar(50) default NULL,
  `pass_panno` varchar(50) default NULL,
  `pass_voterid` varchar(50) default NULL,
  `pass_emptype` varchar(50) default NULL,
  `pass_emporg` varchar(50) default NULL,
  `pass_education` varchar(50) default NULL,
  `pass_aadharno` varchar(50) default NULL,
  `pass_idmarks` varchar(50) default NULL,
  PRIMARY KEY  (`pass_id2`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_passport3
DROP TABLE IF EXISTS `tbl_passport3`;
CREATE TABLE IF NOT EXISTS `tbl_passport3` (
  `pass_id3` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `pass_fname` varchar(50) default NULL,
  `pass_mname` varchar(50) default NULL,
  `pass_gname` varchar(50) default NULL,
  `pass_spousename` varchar(50) default NULL,
  `pass_address` varchar(50) default NULL,
  `pass_police` varchar(50) default NULL,
  `pass_mobno` varchar(50) default NULL,
  `pass_email` varchar(50) default NULL,
  PRIMARY KEY  (`pass_id3`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_passport4
DROP TABLE IF EXISTS `tbl_passport4`;
CREATE TABLE IF NOT EXISTS `tbl_passport4` (
  `pass_id4` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `pass_frefname` varchar(50) default NULL,
  `pass_frefaddress` varchar(50) default NULL,
  `pass_frefmobno` varchar(50) default NULL,
  `pass_srefname` varchar(50) default NULL,
  `pass_srefaddress` varchar(50) default NULL,
  `pass_srefmobno` varchar(50) default NULL,
  PRIMARY KEY  (`pass_id4`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_registration
DROP TABLE IF EXISTS `tbl_registration`;
CREATE TABLE IF NOT EXISTS `tbl_registration` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(50) NOT NULL default '0',
  `user_address` varchar(50) NOT NULL default '0',
  `user_gender` varchar(50) NOT NULL default '0',
  `user_dob` varchar(50) NOT NULL default '0',
  `user_quali` varchar(50) NOT NULL default '0',
  `user_phno` varchar(50) NOT NULL default '0',
  `user_email` varchar(50) NOT NULL default '0',
  `user_aadhar` varchar(50) NOT NULL default '0',
  `user_pwd` varchar(50) NOT NULL default '0',
  `user_cpwd` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_religion
DROP TABLE IF EXISTS `tbl_religion`;
CREATE TABLE IF NOT EXISTS `tbl_religion` (
  `religion_id` int(11) NOT NULL auto_increment,
  `religion_name` varchar(50) default NULL,
  PRIMARY KEY  (`religion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table db_civil.tbl_state
DROP TABLE IF EXISTS `tbl_state`;
CREATE TABLE IF NOT EXISTS `tbl_state` (
  `state_id` int(11) NOT NULL auto_increment,
  `state_name` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
