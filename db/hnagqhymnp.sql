-- Database Manager 4.2.5 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `mm_claim_head`;
CREATE TABLE `mm_claim_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head_cd` int(11) NOT NULL,
  `head_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mm_claim_head` (`id`, `head_cd`, `head_desc`) VALUES
(1,	1,	'Auto Fare'),
(2,	2,	'Bus Fare'),
(3,	3,	'Train Fare'),
(4,	4,	'Train Ticket'),
(5,	5,	'Air Ticket'),
(6,	6,	'Food Expenses'),
(7,	7,	'Lodging Expenses'),
(8,	8,	'Vehicle - Petrol'),
(9,	9,	'Vehicle - Diesel'),
(10,	10,	'Vehicle - Maintainance'),
(11,	11,	'Vehicle - Toll & Parking'),
(12,	12,	'Mobile Expenses'),
(13,	13,	'Internet Charges'),
(14,	14,	'Freight'),
(15,	15,	'Courier Charges'),
(16,	16,	'Printing & stationary'),
(17,	17,	'Packing Expenses'),
(18,	18,	'Consumable Store'),
(19,	19,	'Sales Pramotion'),
(20,	20,	'General Expenses');

DROP TABLE IF EXISTS `mm_department`;
CREATE TABLE `mm_department` (
  `sl_no` int(10) NOT NULL AUTO_INCREMENT,
  `department` varchar(50) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mm_department` (`sl_no`, `department`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1,	'Administration',	'32',	'2018-09-21 07:51:48',	NULL,	NULL),
(2,	'Accounts',	'32',	'2018-09-21 07:52:00',	NULL,	NULL),
(3,	'Sales & Marketing',	'32',	'2018-09-21 07:52:39',	NULL,	NULL),
(4,	'Software Technical',	'32',	'2018-09-21 07:53:03',	'32',	'2018-09-21 07:54:03'),
(5,	'Hardware Technical',	'32',	'2018-09-21 07:53:22',	NULL,	NULL),
(6,	'Production',	'32',	'2018-09-21 07:53:40',	NULL,	NULL),
(7,	'Others',	'32',	'2018-09-21 07:53:48',	NULL,	NULL);

DROP TABLE IF EXISTS `mm_designation`;
CREATE TABLE `mm_designation` (
  `sl_no` int(10) NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mm_designation` (`sl_no`, `designation`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1,	'Director',	'32',	'2018-09-21 07:56:26',	NULL,	NULL),
(2,	'Chief Operating Officer(COO)',	'32',	'2018-09-21 07:56:34',	NULL,	NULL),
(3,	'Chief Technical Officer(CTO)',	'32',	'2018-09-21 07:56:54',	NULL,	NULL),
(4,	'Accountant',	'32',	'2018-09-21 07:57:13',	NULL,	NULL),
(5,	'Manager',	'32',	'2018-09-21 07:57:26',	NULL,	NULL),
(6,	'Project Manager',	'32',	'2018-09-21 07:57:51',	NULL,	NULL),
(7,	'Purchase Manager',	'32',	'2018-09-21 07:58:08',	NULL,	NULL),
(8,	'Business Developement Executive(BDE)',	'32',	'2018-09-21 07:58:25',	'32',	'2018-09-21 07:59:48'),
(9,	'Data Entry Operator',	'32',	'2018-09-21 07:59:11',	NULL,	NULL),
(10,	'Office Staff',	'32',	'2018-09-21 08:00:07',	NULL,	NULL),
(11,	'Senior Software Engineer ',	'32',	'2018-09-21 08:00:35',	NULL,	NULL),
(12,	'Senior Accountant',	'32',	'2018-09-21 08:00:54',	NULL,	NULL),
(13,	'Service Engineer',	'32',	'2018-09-21 08:01:15',	NULL,	NULL),
(14,	'Software Engineer',	'32',	'2018-09-21 08:01:29',	NULL,	NULL),
(15,	'Software Trainee Engineer',	'32',	'2018-09-21 08:02:07',	NULL,	NULL),
(16,	'Team Leader',	'32',	'2018-09-21 08:02:24',	NULL,	NULL),
(17,	'Tele Caller',	'32',	'2018-09-21 08:02:35',	NULL,	NULL);

DROP TABLE IF EXISTS `mm_earning_deduction`;
CREATE TABLE `mm_earning_deduction` (
  `sl_no` int(10) NOT NULL AUTO_INCREMENT,
  `ed_type` varchar(5) NOT NULL,
  `ed_desc` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `mm_employee`;
CREATE TABLE `mm_employee` (
  `emp_no` varchar(50) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `sector` varchar(50) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `status_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_of_termination` date DEFAULT NULL,
  `pan_no` varchar(50) DEFAULT NULL,
  `bank_ac_no` varchar(50) DEFAULT NULL,
  `pf_ac_no` varchar(50) DEFAULT NULL,
  `esi_no` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mm_employee` (`emp_no`, `emp_name`, `designation`, `sector`, `date_of_joining`, `status_flag`, `date_of_termination`, `pan_no`, `bank_ac_no`, `pf_ac_no`, `esi_no`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
('PCEPL/MUM/001',	'Sanjeev Barve',	'Managing Director',	'Mumbai',	'1997-02-25',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/002',	'Sachin Mahale',	'Director',	'Mumbai',	'1997-02-25',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/005',	'Sneha Barve',	'Director',	'Mumbai',	'2004-10-01',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/003',	'Dashrath Kolambekar',	'Service Administrator',	'Mumbai',	'2004-09-20',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/004',	'Jitendra Vengurlekar',	'GM - Service',	'Mumbai',	'2004-10-01',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/006',	'Ashish Rokade',	'Technical Co-ordinator',	'Mumbai',	'2005-09-21',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/007',	'Dattaram Dalvi',	'Driver',	'Mumbai',	'2006-04-07',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/008',	'Dattatray Patil',	'Senior Service Engineer',	'Mumbai',	'2006-04-21',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/009',	'Anil Kini',	'Senior Service Engineer',	'Mumbai',	'2006-07-03',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/010',	'Sameer Gurav',	'Service Manager',	'Mumbai',	'2006-08-01',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/011',	'Ganesh Borkar',	'Senior Service Engineer',	'Mumbai',	'2008-05-15',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/012',	'Mahesh Kadam',	'Technical Co-ordinator',	'Mumbai',	'2008-09-15',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/013',	'Vijaya Ramane',	'Manager - Accounts',	'Mumbai',	'2010-08-19',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/014',	'Aditya Keer',	'Senior Service Engineer',	'Mumbai',	'2011-03-08',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/015',	'Prashant Shinde',	'Technical Co-ordinator (Testing)',	'Mumbai',	'2011-03-14',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/016',	'Manish  Sanil',	'Asst. Manager- Account & Admin',	'Mumbai',	'2011-04-25',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/018',	'Praful Jamburgekar',	'Service - Technician',	'Mumbai',	'2012-08-16',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/020',	'Ganesh Bhuvad',	'Senior Service Engineer',	'Mumbai',	'2013-12-31',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/021',	'Gajendra  Rajole',	'Assistant Manager - Embedded Technology',	'Mumbai',	'2014-11-21',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/022',	'Sujan More',	'Junior Software Engineer',	'Mumbai',	'2016-02-03',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/023',	'Amar Gadade',	'Senior Service Engineer',	'Mumbai',	'2016-04-18',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/026',	'Pranit Patil',	'Office Assistance',	'Mumbai',	'2017-04-01',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/027',	'Jagdish Jadhav',	'Driver',	'Mumbai',	'2017-08-01',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/MUM/032',	'Vikas Waghmare',	'Junior Software Engineer',	'Mumbai',	'2018-05-21',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/ROM/001',	'Anant Ghule',	'Branch Manager',	'Pune',	'2007-07-23',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/ROM/004',	'Mangesh Dhore',	'Service Engineer',	'Pune',	'2012-12-10',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/ROM/003',	'Vijay Gonde',	'Service Engineer',	'Pune',	'2012-03-01',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/ROM/010',	'Siddheshwar Ghodke',	'Project Manager',	'Pune',	'2016-09-20',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/ROM/002',	'Nilesh Ghadge',	'Asst. Manager - Embedded Technical',	'Pune',	'2009-01-24',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/ROM/009',	'Shantaram Sadgir',	'Service Enginner',	'Sangamner',	'2016-08-01',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/DEL/001',	'Rashid Akhtar',	'Accountant',	'Accounts',	'2016-07-01',	1,	'0000-00-00',	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'TEST',	'2018-09-05 15:12:00'),
('PCEPL/DEL/002',	'Rahul Singh',	'Service Engineer',	'Delhi',	'2016-08-01',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('PCEPL/DEL/003',	'Satendra Yadav',	'Service Engineer',	'Delhi',	'2016-08-01',	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
('pksss',	'Test',	'None',	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `mm_manager`;
CREATE TABLE `mm_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(50) NOT NULL,
  `manage_no` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mm_manager` (`id`, `emp_no`, `manage_no`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(26,	'PCEPL/MUM/001',	'PCEPL/MUM/004',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(25,	'PCEPL/MUM/001',	'PCEPL/MUM/005',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(11,	'PCEPL/ROM/001',	'PCEPL/ROM/003',	'Vijaya Ramane',	'2018-09-05 16:34:13',	'',	'0000-00-00 00:00:00'),
(12,	'PCEPL/ROM/001',	'PCEPL/ROM/004',	'Vijaya Ramane',	'2018-09-05 16:34:13',	'',	'0000-00-00 00:00:00'),
(22,	'PCEPL/MUM/016',	'PCEPL/MUM/026',	'Sanjeev Barve',	'2018-09-12 12:05:26',	'',	'0000-00-00 00:00:00'),
(21,	'PCEPL/MUM/016',	'PCEPL/MUM/018',	'Sanjeev Barve',	'2018-09-12 12:05:26',	'',	'0000-00-00 00:00:00'),
(27,	'PCEPL/MUM/001',	'PCEPL/MUM/015',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(24,	'PCEPL/MUM/001',	'PCEPL/MUM/002',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(109,	'PCEPL/MUM/013',	'PCEPL/MUM/015',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(108,	'PCEPL/MUM/013',	'PCEPL/MUM/012',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(23,	'PCEPL/MUM/016',	'PCEPL/MUM/015',	'Sanjeev Barve',	'2018-09-12 12:05:26',	'',	'0000-00-00 00:00:00'),
(28,	'PCEPL/MUM/001',	'PCEPL/MUM/003',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(29,	'PCEPL/MUM/001',	'PCEPL/MUM/006',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(30,	'PCEPL/MUM/001',	'PCEPL/MUM/007',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(31,	'PCEPL/MUM/001',	'PCEPL/MUM/008',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(32,	'PCEPL/MUM/001',	'PCEPL/MUM/009',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(33,	'PCEPL/MUM/001',	'PCEPL/MUM/010',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(34,	'PCEPL/MUM/001',	'PCEPL/MUM/011',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(35,	'PCEPL/MUM/001',	'PCEPL/MUM/012',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(36,	'PCEPL/MUM/001',	'PCEPL/MUM/014',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(37,	'PCEPL/MUM/001',	'PCEPL/MUM/016',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(38,	'PCEPL/MUM/001',	'PCEPL/MUM/018',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(39,	'PCEPL/MUM/001',	'PCEPL/MUM/020',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(40,	'PCEPL/MUM/001',	'PCEPL/MUM/021',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(41,	'PCEPL/MUM/001',	'PCEPL/MUM/022',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(42,	'PCEPL/MUM/001',	'PCEPL/MUM/023',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(43,	'PCEPL/MUM/001',	'PCEPL/MUM/027',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(44,	'PCEPL/MUM/001',	'PCEPL/ROM/010',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(45,	'PCEPL/MUM/001',	'PCEPL/ROM/001',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(46,	'PCEPL/MUM/001',	'PCEPL/ROM/004',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(47,	'PCEPL/MUM/001',	'PCEPL/ROM/003',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(48,	'PCEPL/MUM/001',	'PCEPL/ROM/002',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(49,	'PCEPL/MUM/001',	'PCEPL/DEL/001',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(50,	'PCEPL/MUM/001',	'PCEPL/DEL/002',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(51,	'PCEPL/MUM/001',	'PCEPL/DEL/003',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(52,	'PCEPL/MUM/001',	'Select',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(53,	'PCEPL/MUM/001',	'Select',	'Sanjeev Barve',	'2018-09-21 10:17:54',	'',	'0000-00-00 00:00:00'),
(54,	'PCEPL/MUM/002',	'PCEPL/MUM/006',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(55,	'PCEPL/MUM/002',	'PCEPL/MUM/015',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(56,	'PCEPL/MUM/002',	'PCEPL/MUM/021',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(57,	'PCEPL/MUM/002',	'PCEPL/ROM/002',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(58,	'PCEPL/MUM/002',	'PCEPL/MUM/012',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(59,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(60,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(61,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(62,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(63,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(64,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(65,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(66,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(67,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(68,	'PCEPL/MUM/002',	'Select',	'Sanjeev Barve',	'2018-09-21 10:19:11',	'',	'0000-00-00 00:00:00'),
(69,	'PCEPL/MUM/004',	'PCEPL/MUM/003',	'Sanjeev Barve',	'2018-09-21 10:20:52',	'',	'0000-00-00 00:00:00'),
(70,	'PCEPL/MUM/004',	'PCEPL/MUM/009',	'Sanjeev Barve',	'2018-09-21 10:20:52',	'',	'0000-00-00 00:00:00'),
(71,	'PCEPL/MUM/004',	'PCEPL/MUM/010',	'Sanjeev Barve',	'2018-09-21 10:20:52',	'',	'0000-00-00 00:00:00'),
(72,	'PCEPL/MUM/004',	'PCEPL/MUM/011',	'Sanjeev Barve',	'2018-09-21 10:20:52',	'',	'0000-00-00 00:00:00'),
(73,	'PCEPL/MUM/004',	'PCEPL/MUM/008',	'Sanjeev Barve',	'2018-09-21 10:20:52',	'',	'0000-00-00 00:00:00'),
(74,	'PCEPL/MUM/004',	'PCEPL/MUM/020',	'Sanjeev Barve',	'2018-09-21 10:20:52',	'',	'0000-00-00 00:00:00'),
(75,	'PCEPL/MUM/004',	'Select',	'Sanjeev Barve',	'2018-09-21 10:20:52',	'',	'0000-00-00 00:00:00'),
(76,	'PCEPL/MUM/005',	'PCEPL/MUM/003',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(77,	'PCEPL/MUM/005',	'PCEPL/MUM/004',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(78,	'PCEPL/MUM/005',	'PCEPL/MUM/006',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(79,	'PCEPL/MUM/005',	'PCEPL/MUM/007',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(80,	'PCEPL/MUM/005',	'PCEPL/MUM/008',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(81,	'PCEPL/MUM/005',	'PCEPL/MUM/009',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(82,	'PCEPL/MUM/005',	'PCEPL/MUM/010',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(83,	'PCEPL/MUM/005',	'PCEPL/MUM/011',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(84,	'PCEPL/MUM/005',	'PCEPL/MUM/012',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(85,	'PCEPL/MUM/005',	'PCEPL/MUM/018',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(86,	'PCEPL/MUM/005',	'PCEPL/MUM/016',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(87,	'PCEPL/MUM/005',	'PCEPL/MUM/020',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(88,	'PCEPL/MUM/005',	'PCEPL/MUM/013',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(89,	'PCEPL/MUM/005',	'PCEPL/MUM/014',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(90,	'PCEPL/MUM/005',	'PCEPL/MUM/015',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(91,	'PCEPL/MUM/005',	'PCEPL/MUM/021',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(92,	'PCEPL/MUM/005',	'PCEPL/MUM/022',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(93,	'PCEPL/MUM/005',	'PCEPL/MUM/023',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(94,	'PCEPL/MUM/005',	'PCEPL/MUM/026',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(95,	'PCEPL/MUM/005',	'PCEPL/MUM/027',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(96,	'PCEPL/MUM/005',	'PCEPL/MUM/032',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(97,	'PCEPL/MUM/005',	'PCEPL/ROM/001',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(98,	'PCEPL/MUM/005',	'PCEPL/ROM/004',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(99,	'PCEPL/MUM/005',	'PCEPL/ROM/003',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(100,	'PCEPL/MUM/005',	'PCEPL/ROM/010',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(101,	'PCEPL/MUM/005',	'PCEPL/ROM/002',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(102,	'PCEPL/MUM/005',	'PCEPL/ROM/009',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(103,	'PCEPL/MUM/005',	'PCEPL/DEL/001',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(104,	'PCEPL/MUM/005',	'PCEPL/DEL/002',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(105,	'PCEPL/MUM/005',	'PCEPL/DEL/003',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(106,	'PCEPL/MUM/005',	'Select',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(107,	'PCEPL/MUM/005',	'Select',	'Sanjeev Barve',	'2018-09-21 10:23:20',	'',	'0000-00-00 00:00:00'),
(110,	'PCEPL/MUM/013',	'PCEPL/MUM/003',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(111,	'PCEPL/MUM/013',	'PCEPL/MUM/004',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(112,	'PCEPL/MUM/013',	'PCEPL/MUM/006',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(113,	'PCEPL/MUM/013',	'PCEPL/MUM/007',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(114,	'PCEPL/MUM/013',	'PCEPL/MUM/008',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(115,	'PCEPL/MUM/013',	'PCEPL/MUM/009',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(116,	'PCEPL/MUM/013',	'PCEPL/MUM/010',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(117,	'PCEPL/MUM/013',	'PCEPL/MUM/011',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(118,	'PCEPL/MUM/013',	'PCEPL/MUM/014',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(119,	'PCEPL/MUM/013',	'PCEPL/MUM/016',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(120,	'PCEPL/MUM/013',	'PCEPL/MUM/018',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(121,	'PCEPL/MUM/013',	'PCEPL/MUM/020',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(122,	'PCEPL/MUM/013',	'PCEPL/MUM/021',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(123,	'PCEPL/MUM/013',	'PCEPL/MUM/022',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(124,	'PCEPL/MUM/013',	'PCEPL/MUM/023',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(125,	'PCEPL/MUM/013',	'PCEPL/MUM/026',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(126,	'PCEPL/MUM/013',	'PCEPL/MUM/027',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(127,	'PCEPL/MUM/013',	'PCEPL/MUM/032',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(128,	'PCEPL/MUM/013',	'PCEPL/ROM/001',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(129,	'PCEPL/MUM/013',	'PCEPL/ROM/004',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(130,	'PCEPL/MUM/013',	'PCEPL/ROM/003',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(131,	'PCEPL/MUM/013',	'PCEPL/ROM/010',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(132,	'PCEPL/MUM/013',	'PCEPL/ROM/002',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(133,	'PCEPL/MUM/013',	'PCEPL/ROM/009',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(134,	'PCEPL/MUM/013',	'PCEPL/DEL/001',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(135,	'PCEPL/MUM/013',	'PCEPL/DEL/002',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(136,	'PCEPL/MUM/013',	'PCEPL/DEL/003',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(137,	'PCEPL/MUM/013',	'Select',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(138,	'PCEPL/MUM/013',	'Select',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00'),
(139,	'PCEPL/MUM/013',	'Select',	'Sanjeev Barve',	'2018-09-21 10:25:28',	'',	'0000-00-00 00:00:00');

DROP TABLE IF EXISTS `mm_project`;
CREATE TABLE `mm_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_cd` int(11) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `project_type` varchar(50) DEFAULT NULL,
  `dist` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mm_project` (`id`, `project_cd`, `project_name`, `project_type`, `dist`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1,	1,	'Others',	'Others',	NULL,	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `mm_project_type`;
CREATE TABLE `mm_project_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_cd` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mm_project_type` (`id`, `type_cd`, `type_desc`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1,	1,	'Local Petty Expenses ',	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
(2,	2,	'Installation & Servicing',	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00'),
(3,	3,	'Sales ',	'SSS',	'2018-09-05 00:00:00',	'SSS',	'2018-09-05 00:00:00');

DROP TABLE IF EXISTS `mm_purpose`;
CREATE TABLE `mm_purpose` (
  `id` int(11) NOT NULL,
  `purpose_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mm_purpose` (`id`, `purpose_desc`) VALUES
(1,	'Conveyance'),
(2,	'Travelling Expenses'),
(3,	'Vehicle Expenses'),
(4,	'Telephone Expenses'),
(5,	'Freight'),
(6,	'Courier Charges'),
(7,	'Printing & stationary'),
(8,	'Packing Expenses'),
(9,	'Consumable Store'),
(10,	'Sales Pramotion'),
(11,	'General Expenses');

DROP TABLE IF EXISTS `m_user_master`;
CREATE TABLE `m_user_master` (
  `emp_no` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` char(2) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `user_status` char(1) NOT NULL,
  `user_flag` varchar(5) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`emp_no`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `m_user_master` (`emp_no`, `user_id`, `password`, `user_type`, `emp_name`, `user_status`, `user_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
('PCEPL/DEL/001',	'PCEPL/DEL/001',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Rashid Akhtar',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:19:22'),
('PCEPL/DEL/002',	'PCEPL/DEL/002',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Rahul Singh',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:06:40'),
('PCEPL/DEL/003',	'PCEPL/DEL/003',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Satendra Yadav',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:25:21'),
('PCEPL/MUM/001',	'PCEPL/MUM/001',	'$2y$10$I5RflPqwjOrxRneEL0V/ROxvDIgXy9eUkjSiTAnPbBj3LnFSRuwJy',	'A',	'Sanjeev Barve',	'Y',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Sanjeev Barve',	'2018-09-21 10:17:54'),
('PCEPL/MUM/002',	'PCEPL/MUM/002',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'A',	'Sachin Mahale',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Sanjeev Barve',	'2018-09-21 10:19:11'),
('PCEPL/MUM/003',	'PCEPL/MUM/003',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Dashrath Kolambekar',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:25:38'),
('PCEPL/MUM/004',	'PCEPL/MUM/004',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'M',	'Jitendra Vengurlekar',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Sanjeev Barve',	'2018-09-21 10:20:52'),
('PCEPL/MUM/005',	'PCEPL/MUM/005',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'A',	'Sneha Barve',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Sanjeev Barve',	'2018-09-21 10:23:20'),
('PCEPL/MUM/006',	'PCEPL/MUM/006',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Ashish Rokade',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:26:41'),
('PCEPL/MUM/007',	'PCEPL/MUM/007',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Dattaram Dalvi',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:27:05'),
('PCEPL/MUM/008',	'PCEPL/MUM/008',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Dattatray Patil',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:27:35'),
('PCEPL/MUM/009',	'PCEPL/MUM/009',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Anil Kini',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:27:56'),
('PCEPL/MUM/010',	'PCEPL/MUM/010',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Sameer Gurav',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:28:26'),
('PCEPL/MUM/011',	'PCEPL/MUM/011',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Ganesh Borkar',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:28:40'),
('PCEPL/MUM/012',	'PCEPL/MUM/012',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Mahesh Kadam',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:29:15'),
('PCEPL/MUM/013',	'PCEPL/MUM/013',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'AC',	'Vijaya Ramane',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Sanjeev Barve',	'2018-09-21 10:25:28'),
('PCEPL/MUM/014',	'PCEPL/MUM/014',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Aditya Keer',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:30:00'),
('PCEPL/MUM/015',	'PCEPL/MUM/015',	'$2y$10$7ghq4RkuzE28e5PUKZ.yxuAS.M0Kxqs90IUvCsK2XfowW/tR3u.gy',	'E',	'Prashant Shinde',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:30:23'),
('PCEPL/MUM/016',	'PCEPL/MUM/016',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'M',	'Manish  Sanil',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Sanjeev Barve',	'2018-09-12 12:05:26'),
('PCEPL/MUM/018',	'PCEPL/MUM/018',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Praful Jamburgekar',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:31:03'),
('PCEPL/MUM/020',	'PCEPL/MUM/020',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Ganesh Bhuvad',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:31:18'),
('PCEPL/MUM/021',	'PCEPL/MUM/021',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Gajendra  Rajole',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:31:52'),
('PCEPL/MUM/022',	'PCEPL/MUM/022',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Sujan More',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:32:07'),
('PCEPL/MUM/023',	'PCEPL/MUM/023',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Amar Gadade',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:32:22'),
('PCEPL/MUM/026',	'PCEPL/MUM/026',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Pranit Patil',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:32:42'),
('PCEPL/MUM/027',	'PCEPL/MUM/027',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Jagdish Jadhav',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:32:54'),
('PCEPL/MUM/032',	'PCEPL/MUM/032',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Vikas Waghmare',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:33:09'),
('PCEPL/ROM/001',	'PCEPL/ROM/001',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'M',	'Anant Ghule',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:34:13'),
('PCEPL/ROM/002',	'PCEPL/ROM/002',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Nilesh Ghadge',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:34:26'),
('PCEPL/ROM/003',	'PCEPL/ROM/003',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Vijay Gonde',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:34:37'),
('PCEPL/ROM/004',	'PCEPL/ROM/004',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Mangesh Dhore',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:36:19'),
('PCEPL/ROM/009',	'PCEPL/ROM/009',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Shantaram Sadgir',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:36:31'),
('PCEPL/ROM/010',	'PCEPL/ROM/010',	'$2y$10$835Oh.A9aS6PhbVa2zk4yOWx3DrVMiKWX6j/6mE/jZqY8MkzdfG5a',	'E',	'Siddheshwar Ghodke',	'N',	'Y',	'SSS',	'2018-09-05 00:00:00',	'Vijaya Ramane',	'2018-09-05 16:36:44');

DROP TABLE IF EXISTS `tm_audit_trail`;
CREATE TABLE `tm_audit_trail` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `login_dt` varchar(30) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `terminal_name` varchar(100) NOT NULL,
  `logout_dt` varchar(30) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tm_audit_trail` (`sl_no`, `login_dt`, `user_id`, `terminal_name`, `logout_dt`) VALUES
(1,	'2018-08-31 13:25:59pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 13:31:41pm'),
(2,	'2018-08-31 13:41:35pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 13:42:24pm'),
(3,	'2018-08-31 13:42:50pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 13:46:40pm'),
(4,	'2018-08-31 13:48:14pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 13:54:47pm'),
(5,	'2018-08-31 13:55:14pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 14:03:50pm'),
(6,	'2018-08-31 14:04:52pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 14:05:42pm'),
(7,	'2018-08-31 14:42:45pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 14:42:57pm'),
(8,	'2018-08-31 14:43:35pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 14:46:24pm'),
(9,	'2018-08-31 14:45:21pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 14:46:16pm'),
(10,	'2018-08-31 14:54:17pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 14:54:21pm'),
(11,	'2018-08-31 14:56:21pm',	'555',	's104-238-116-98.secureserver.net',	''),
(12,	'2018-08-31 15:06:00pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 15:08:01pm'),
(13,	'2018-08-31 15:47:32pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 16:07:35pm'),
(14,	'2018-08-31 17:06:50pm',	'555',	's104-238-116-98.secureserver.net',	'2018-08-31 17:07:26pm'),
(15,	'2018-09-04 11:12:41am',	'555',	's104-238-116-98.secureserver.net',	'2018-09-04 11:20:06am'),
(16,	'2018-09-04 14:29:04pm',	'555',	's104-238-116-98.secureserver.net',	'2018-09-04 14:29:25pm'),
(17,	'2018-09-05 11:36:21am',	'555',	's104-238-116-98.secureserver.net',	'2018-09-05 11:56:31am'),
(18,	'2018-09-05 11:39:47am',	'555',	's104-238-116-98.secureserver.net',	'2018-09-05 11:48:37am'),
(19,	'2018-09-05 11:49:49am',	'555',	's104-238-116-98.secureserver.net',	''),
(20,	'2018-09-05 15:00:45pm',	'555',	's104-238-116-98.secureserver.net',	'2018-09-05 15:34:38pm'),
(21,	'2018-09-05 15:34:49pm',	'PCEPL/DEL/001',	's104-238-116-98.secureserver.net',	'2018-09-05 15:52:19pm'),
(22,	'2018-09-05 15:53:16pm',	'PCEPL/DEL/001',	's104-238-116-98.secureserver.net',	'2018-09-05 15:53:43pm'),
(23,	'2018-09-05 16:00:05pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-05 16:06:52pm'),
(24,	'2018-09-05 16:06:59pm',	'PCEPL/DEL/002',	's104-238-116-98.secureserver.net',	'2018-09-05 16:07:48pm'),
(25,	'2018-09-05 16:07:58pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-05 16:15:29pm'),
(26,	'2018-09-05 16:14:45pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-05 16:39:15pm'),
(27,	'2018-09-05 16:18:24pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-05 16:19:38pm'),
(28,	'2018-09-05 16:19:59pm',	'PCEPL/DEL/001',	's104-238-116-98.secureserver.net',	'2018-09-05 16:20:38pm'),
(29,	'2018-09-05 16:22:27pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-05 17:07:44pm'),
(30,	'2018-09-05 17:07:58pm',	'PCEPL/MUM/006',	's104-238-116-98.secureserver.net',	'2018-09-05 17:08:21pm'),
(31,	'2018-09-05 17:08:31pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-05 17:10:14pm'),
(32,	'2018-09-05 17:10:51pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-05 17:12:42pm'),
(33,	'2018-09-06 09:33:16am',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-06 09:34:56am'),
(34,	'2018-09-06 09:35:05am',	'PCEPL/MUM/016',	's104-238-116-98.secureserver.net',	'2018-09-06 09:35:29am'),
(35,	'2018-09-06 09:35:44am',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-06 09:37:18am'),
(36,	'2018-09-06 09:37:25am',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-06 09:42:16am'),
(37,	'2018-09-06 09:42:53am',	'PCEPL/MUM/006',	's104-238-116-98.secureserver.net',	'2018-09-06 09:47:41am'),
(38,	'2018-09-08 14:56:48pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-08 15:08:21pm'),
(39,	'2018-09-08 14:57:11pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-08 14:58:00pm'),
(40,	'2018-09-08 14:58:30pm',	'PCEPL/MUM/016',	's104-238-116-98.secureserver.net',	'2018-09-08 15:07:27pm'),
(41,	'2018-09-08 15:07:35pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-08 15:07:49pm'),
(42,	'2018-09-08 15:08:06pm',	'PCEPL/MUM/001',	's104-238-116-98.secureserver.net',	'2018-09-08 15:12:35pm'),
(43,	'2018-09-08 15:08:50pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-08 15:29:08pm'),
(44,	'2018-09-10 22:01:27pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	''),
(45,	'2018-09-11 09:52:31am',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-11 09:53:48am'),
(46,	'2018-09-11 09:53:56am',	'PCEPL/MUM/001',	's104-238-116-98.secureserver.net',	'2018-09-11 09:55:27am'),
(47,	'2018-09-11 09:55:34am',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	''),
(48,	'2018-09-11 21:45:51pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-11 22:03:38pm'),
(49,	'2018-09-12 10:52:26am',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-12 12:02:48pm'),
(50,	'2018-09-12 12:02:59pm',	'PCEPL/MUM/016',	's104-238-116-98.secureserver.net',	'2018-09-12 12:04:19pm'),
(51,	'2018-09-12 12:04:26pm',	'PCEPL/MUM/001',	's104-238-116-98.secureserver.net',	'2018-09-12 12:05:32pm'),
(52,	'2018-09-12 12:05:42pm',	'PCEPL/MUM/016',	's104-238-116-98.secureserver.net',	'2018-09-12 12:06:51pm'),
(53,	'2018-09-13 22:11:05pm',	'1',	's104-238-116-98.secureserver.net',	'2018-09-13 22:18:21pm'),
(54,	'2018-09-14 11:16:47am',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-14 11:19:46am'),
(55,	'2018-09-14 11:31:44am',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-14 13:15:22pm'),
(56,	'2018-09-17 12:45:10pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-17 12:49:13pm'),
(57,	'2018-09-17 12:49:41pm',	'PCEPL/MUM/006',	's104-238-116-98.secureserver.net',	'2018-09-17 12:50:04pm'),
(58,	'2018-09-17 12:50:22pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-17 13:14:16pm'),
(59,	'2018-09-17 14:07:45pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-17 14:49:40pm'),
(60,	'2018-09-17 14:56:31pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-17 15:16:34pm'),
(61,	'2018-09-17 15:21:47pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	''),
(62,	'2018-09-18 15:54:19pm',	'PCEPL/MUM/001',	's104-238-116-98.secureserver.net',	'2018-09-18 15:57:21pm'),
(63,	'2018-09-18 15:57:38pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-18 16:03:59pm'),
(64,	'2018-09-18 16:04:40pm',	'PCEPL/MUM/015',	's104-238-116-98.secureserver.net',	'2018-09-18 16:08:40pm'),
(65,	'2018-09-18 16:08:56pm',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	''),
(66,	'2018-09-19 11:45:11am',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	''),
(67,	'2018-09-21 10:09:33am',	'PCEPL/MUM/001',	's104-238-116-98.secureserver.net',	'2018-09-21 10:25:41am'),
(68,	'2018-09-21 10:27:37am',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-21 10:28:56am'),
(69,	'2018-09-21 10:29:14am',	'PCEPL/MUM/018',	's104-238-116-98.secureserver.net',	'2018-09-21 10:37:18am'),
(70,	'2018-09-21 10:37:40am',	'PCEPL/MUM/016',	's104-238-116-98.secureserver.net',	'2018-09-21 10:38:17am'),
(71,	'2018-09-21 10:38:35am',	'PCEPL/MUM/018',	's104-238-116-98.secureserver.net',	'2018-09-21 10:47:19am'),
(72,	'2018-09-21 10:48:01am',	'PCEPL/MUM/013',	's104-238-116-98.secureserver.net',	'2018-09-21 10:50:31am'),
(73,	'2018-10-05 17:45:59pm',	'PCEPL/MUM/001',	'197979.cloudwaysapps.com',	''),
(74,	'2018-10-05 17:46:10pm',	'PCEPL/MUM/001',	'197979.cloudwaysapps.com',	''),
(75,	'2018-10-05 18:50:14pm',	'PCEPL/MUM/001',	'197979.cloudwaysapps.com',	'2018-10-05 18:57:17pm'),
(76,	'2018-10-23 14:02:04pm',	'PCEPL/MUM/013',	'197979.cloudwaysapps.com',	'2018-10-23 14:05:29pm'),
(77,	'2018-10-23 14:05:35pm',	'PCEPL/MUM/018',	'197979.cloudwaysapps.com',	''),
(78,	'2018-11-13 15:19:55pm',	'PCEPL/MUM/013',	'197979.cloudwaysapps.com',	'2018-11-13 15:44:25pm'),
(79,	'2018-11-13 15:44:34pm',	'PCEPL/MUM/018',	'197979.cloudwaysapps.com',	'2018-11-13 15:49:57pm');

DROP TABLE IF EXISTS `tm_balance_amt`;
CREATE TABLE `tm_balance_amt` (
  `balance_dt` date NOT NULL,
  `emp_no` varchar(50) NOT NULL,
  `claim_amt` decimal(10,2) DEFAULT '0.00',
  `rcvd_amt` decimal(10,2) DEFAULT '0.00',
  `balance_amt` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`balance_dt`,`emp_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tm_balance_amt` (`balance_dt`, `emp_no`, `claim_amt`, `rcvd_amt`, `balance_amt`) VALUES
('2018-09-05',	'PCEPL/MUM/015',	0.00,	5000.00,	-5000.00),
('2018-09-20',	'PCEPL/MUM/018',	712.00,	2000.00,	-1288.00),
('2018-09-18',	'PCEPL/MUM/015',	9643.00,	15000.00,	-10357.00);

DROP TABLE IF EXISTS `tm_claim`;
CREATE TABLE `tm_claim` (
  `claim_cd` bigint(20) NOT NULL,
  `emp_no` varchar(50) NOT NULL,
  `claim_dt` date NOT NULL,
  `project_type` varchar(20) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `from_dt` date NOT NULL,
  `to_dt` date NOT NULL,
  `narration` text NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `approval_status` tinyint(4) NOT NULL DEFAULT '0',
  `approved_by` varchar(50) NOT NULL,
  `approval_dt` datetime NOT NULL,
  `rejection_status` int(11) NOT NULL DEFAULT '0',
  `rejection_remarks` text,
  `rejected_by` varchar(50) DEFAULT NULL,
  `rejected_dt` datetime DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_dt` varchar(50) NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `modified_dt` varchar(50) NOT NULL,
  PRIMARY KEY (`claim_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tm_claim` (`claim_cd`, `emp_no`, `claim_dt`, `project_type`, `project_name`, `purpose`, `from_dt`, `to_dt`, `narration`, `amount`, `approval_status`, `approved_by`, `approval_dt`, `rejection_status`, `rejection_remarks`, `rejected_by`, `rejected_dt`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(20182,	'PCEPL/MUM/015',	'2018-09-10',	'Others',	'Others',	'Travelling Expenses',	'2018-09-10',	'2018-09-10',	'Mumbai - Chennai',	420.00,	1,	'Vijaya Ramane',	'2018-09-18 16:02:19',	0,	NULL,	NULL,	NULL,	'Prashant Shinde',	'2018-09-10 22:21:39pm',	'Prashant Shinde',	'2018-09-17 15:34:36pm'),
(20181,	'PCEPL/MUM/015',	'2018-09-10',	'Others',	'Others',	'Travelling Expenses',	'2018-09-09',	'2018-09-09',	'Mumbai - Chennai',	230.00,	1,	'Vijaya Ramane',	'2018-09-18 16:02:25',	0,	NULL,	NULL,	NULL,	'Prashant Shinde',	'2018-09-10 22:10:53pm',	'Prashant Shinde',	'2018-09-17 15:23:22pm'),
(20183,	'PCEPL/MUM/015',	'2018-09-11',	'Others',	'Others',	'Travelling Expenses',	'2018-09-10',	'2018-09-11',	'Mumbai - Chennai',	7583.00,	1,	'Vijaya Ramane',	'2018-09-18 16:02:13',	0,	NULL,	NULL,	NULL,	'Prashant Shinde',	'2018-09-11 21:49:51pm',	'Prashant Shinde',	'2018-09-17 12:54:14pm'),
(20184,	'PCEPL/MUM/015',	'2018-09-17',	'Others',	'Others',	'Travelling Expenses',	'2018-09-12',	'2018-09-12',	'Mumbai - Chennai',	828.00,	1,	'Vijaya Ramane',	'2018-09-18 16:02:00',	0,	NULL,	NULL,	NULL,	'Prashant Shinde',	'2018-09-17 14:20:04pm',	'',	''),
(20185,	'PCEPL/MUM/015',	'2018-09-17',	'Others',	'Others',	'Travelling Expenses',	'2018-09-13',	'2018-09-13',	'Chennai - Mumbai',	582.00,	1,	'Vijaya Ramane',	'2018-09-18 16:01:50',	0,	NULL,	NULL,	NULL,	'Prashant Shinde',	'2018-09-17 14:25:48pm',	'Prashant Shinde',	'2018-09-17 14:29:39pm'),
(20186,	'PCEPL/MUM/018',	'2018-09-21',	'Others',	'Others',	'Conveyance',	'2018-09-15',	'2018-09-15',	'local   expenses',	462.00,	1,	'Manish  Sanil',	'2018-09-21 10:38:11',	0,	NULL,	NULL,	NULL,	'Praful Jamburgekar',	'2018-09-21 10:32:08am',	'Praful Jamburgekar',	'2018-09-21 10:32:42am'),
(20187,	'PCEPL/MUM/018',	'2018-09-21',	'Others',	'Others',	'Telephone Expenses',	'2018-09-19',	'2018-09-19',	'vodafone recharge',	250.00,	1,	'Manish  Sanil',	'2018-09-21 10:37:54',	0,	NULL,	NULL,	NULL,	'Praful Jamburgekar',	'2018-09-21 10:34:42am',	'',	'');

DELIMITER ;;

CREATE TRIGGER `au_tm_claim` AFTER UPDATE ON `tm_claim` FOR EACH ROW
BEGIN
	 
     DECLARE	ld_count		Integer;
     DECLARE	ldt_bal_dt	    date;
	 DECLARE	ld_bal_amt		decimal(10,2);
     Declare    ldt_dt			date;
     
If old.approval_status = 0 And new.approval_status = 1 Then  

	

	  select count(*)
      into   ld_count
      from   tm_balance_amt
      where  emp_no     = new.emp_no
      and    balance_dt = DATE_FORMAT(sysdate(), "%Y-%m-%d");
      
      If ld_count > 0 THEN
         update tm_balance_amt
         set    balance_amt = balance_amt + new.amount,
         		claim_amt 	= claim_amt + new.amount
         where  emp_no      = new.emp_no
         and    balance_dt  = DATE_FORMAT(sysdate(), "%Y-%m-%d"); 
         
         
      ELSE
          select max(balance_dt)
          into   ldt_bal_dt
          from   tm_balance_amt
          where  emp_no = new.emp_no;
          
          IF ldt_bal_dt <> 0 THEN
          
              select balance_amt
              into   ld_bal_amt
              from   tm_balance_amt
              where  emp_no = new.emp_no
              and    balance_dt = ldt_bal_dt;
          
          	  INSERT into tm_balance_amt
          			           values( DATE_FORMAT(sysdate(), "%Y-%m-%d"),
                                      new.emp_no,
                                      new.amount,
                                      0,
                                      (ld_bal_amt + new.amount));
          ELSE
          	  INSERT into tm_balance_amt
          			           values( DATE_FORMAT(sysdate(), "%Y-%m-%d"),
                                      new.emp_no,
                                      new.amount,
                                      0,
                                      (0 + new.amount));
         END IF;
    end if;
 end if;        					
          
end;;

DELIMITER ;

DROP TABLE IF EXISTS `tm_claim_trans`;
CREATE TABLE `tm_claim_trans` (
  `claim_cd` bigint(20) NOT NULL,
  `emp_no` varchar(50) NOT NULL,
  `claim_dt` date NOT NULL,
  `sl_no` int(11) NOT NULL,
  `claim_hd` varchar(200) NOT NULL,
  `remarks` text NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`claim_cd`,`sl_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tm_claim_trans` (`claim_cd`, `emp_no`, `claim_dt`, `sl_no`, `claim_hd`, `remarks`, `amount`) VALUES
(20181,	'PCEPL/MUM/015',	'2018-09-10',	2,	'Train Fare',	'Mira Road - Dadar',	10.00),
(20181,	'PCEPL/MUM/015',	'2018-09-10',	1,	'Auto Fare',	'Home - Mira Road Station',	40.00),
(20181,	'PCEPL/MUM/015',	'2018-09-10',	3,	'Food Expenses',	'Dinner + Bisleri (Train)',	180.00),
(20182,	'PCEPL/MUM/015',	'2018-09-10',	1,	'Food Expenses',	'Tea + Nasta (Train) - Morning',	60.00),
(20182,	'PCEPL/MUM/015',	'2018-09-10',	2,	'Auto Fare',	'Lunch + Bisleri (Train)',	170.00),
(20182,	'PCEPL/MUM/015',	'2018-09-10',	3,	'Auto Fare',	'Coffee + Nasta(Train) - Evening',	50.00),
(20182,	'PCEPL/MUM/015',	'2018-09-10',	4,	'Auto Fare',	'Chennai Station to Lodge (OLA)',	140.00),
(20183,	'PCEPL/MUM/015',	'2018-09-11',	1,	'Lodging Expenses',	'2 days lodge',	6608.00),
(20183,	'PCEPL/MUM/015',	'2018-09-11',	5,	'Food Expenses',	'DINNER (10 SEP)',	451.00),
(20183,	'PCEPL/MUM/015',	'2018-09-11',	6,	'Auto Fare',	'DINNER (11 SEP)',	325.00),
(20183,	'PCEPL/MUM/015',	'2018-09-11',	7,	'Auto Fare',	'LODGE TO HMS OFFICE (OLA)',	99.00),
(20183,	'PCEPL/MUM/015',	'2018-09-11',	8,	'Auto Fare',	'HMS OFFICE TO ROOM (AUTO)',	100.00),
(20184,	'PCEPL/MUM/015',	'2018-09-17',	1,	'Auto Fare',	'LODGE TO HMS OFFICE',	103.00),
(20184,	'PCEPL/MUM/015',	'2018-09-17',	2,	'Food Expenses',	'LUNCH',	220.00),
(20184,	'PCEPL/MUM/015',	'2018-09-17',	3,	'Select',	'HMS OFFICE TO LODGE',	100.00),
(20184,	'PCEPL/MUM/015',	'2018-09-17',	4,	'Select',	'LODGE TO CENTRAL RAILWAY STATION(AUTO)',	180.00),
(20184,	'PCEPL/MUM/015',	'2018-09-17',	5,	'Select',	'NASTA + BISLERI',	70.00),
(20184,	'PCEPL/MUM/015',	'2018-09-17',	6,	'Select',	'DINNER(TRAIN)',	155.00),
(20185,	'PCEPL/MUM/015',	'2018-09-17',	1,	'Food Expenses',	'NASTA + TEA + BISLERI (MOR)',	70.00),
(20185,	'PCEPL/MUM/015',	'2018-09-17',	2,	'Auto Fare',	'LUNCH',	155.00),
(20185,	'PCEPL/MUM/015',	'2018-09-17',	3,	'Auto Fare',	'COFFEE + BISCUITS(EVE)',	35.00),
(20185,	'PCEPL/MUM/015',	'2018-09-17',	4,	'Train Fare',	'VASAI - MIRA ROAD STATION',	10.00),
(20185,	'PCEPL/MUM/015',	'2018-09-17',	5,	'Auto Fare',	'DINNER',	270.00),
(20185,	'PCEPL/MUM/015',	'2018-09-17',	6,	'Auto Fare',	'STATION - HOME',	42.00),
(20186,	'PCEPL/MUM/018',	'2018-09-21',	1,	'Auto Fare',	'office to konduskar',	37.00),
(20186,	'PCEPL/MUM/018',	'2018-09-21',	2,	'Courier Charges',	'Blue Dart',	350.00),
(20186,	'PCEPL/MUM/018',	'2018-09-21',	3,	'Food Expenses',	'nasta',	75.00),
(20187,	'PCEPL/MUM/018',	'2018-09-21',	1,	'Mobile Expenses',	'Vodafone recharges',	250.00);

DROP TABLE IF EXISTS `tm_payment`;
CREATE TABLE `tm_payment` (
  `trans_dt` date NOT NULL,
  `trans_cd` bigint(20) NOT NULL,
  `emp_no` varchar(50) NOT NULL,
  `payment_mode` varchar(15) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `chq_dt` date DEFAULT NULL,
  `chq_no` int(11) DEFAULT NULL,
  `bank` varchar(15) DEFAULT NULL,
  `paid_amt` int(11) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `modified_dt` date NOT NULL,
  `approval_status` tinyint(4) NOT NULL DEFAULT '0',
  `approved_by` varchar(50) NOT NULL,
  `approval_dt` date NOT NULL,
  PRIMARY KEY (`trans_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tm_payment` (`trans_dt`, `trans_cd`, `emp_no`, `payment_mode`, `payment_type`, `chq_dt`, `chq_no`, `bank`, `paid_amt`, `created_by`, `created_dt`, `modified_by`, `modified_dt`, `approval_status`, `approved_by`, `approval_dt`) VALUES
('2018-09-06',	20181,	'PCEPL/MUM/015',	'CASH',	'ADVANCE',	NULL,	NULL,	'AXIS',	5000,	'Vijaya Ramane',	'2018-09-06 09:38:56',	'Vijaya Ramane',	'2018-09-06',	1,	'Vijaya Ramane',	'2018-09-06'),
('2018-09-08',	20182,	'PCEPL/MUM/015',	'CASH',	'ADVANCE',	NULL,	NULL,	'AXIS',	5000,	'Vijaya Ramane',	'2018-09-08 14:57:35',	'',	'0000-00-00',	1,	'Vijaya Ramane',	'2018-09-18'),
('2018-09-18',	20183,	'PCEPL/MUM/015',	'Net Banking',	'ADVANCE',	NULL,	NULL,	'AXIS',	10000,	'Vijaya Ramane',	'2018-09-18 15:59:08',	'',	'0000-00-00',	1,	'Vijaya Ramane',	'2018-09-18'),
('2018-09-21',	20184,	'PCEPL/MUM/018',	'CASH',	'ADVANCE',	NULL,	NULL,	'AXIS',	2000,	'Vijaya Ramane',	'2018-09-21 10:28:16',	'Vijaya Ramane',	'2018-09-21',	1,	'Vijaya Ramane',	'2018-09-21');

DELIMITER ;;

CREATE TRIGGER `au_tm_payment` AFTER UPDATE ON `tm_payment` FOR EACH ROW
BEGIN
	 
     DECLARE	ld_count		Integer;
     DECLARE	ldt_bal_dt	    date;
	 DECLARE	ld_bal_amt		decimal(10,2);
     Declare    ldt_dt			date;
     
If old.approval_status = 0 And new.approval_status = 1 Then  

	

	  select count(*)
      into   ld_count
      from   tm_balance_amt
      where  emp_no     = new.emp_no
      and    balance_dt = DATE_FORMAT(sysdate(), "%Y-%m-%d");
      
      If ld_count > 0 THEN
         update tm_balance_amt
         set rcvd_amt = new.paid_amt + rcvd_amt,
		 balance_amt  = balance_amt - new.paid_amt
         where  emp_no       = new.emp_no
         and    balance_dt   = DATE_FORMAT(sysdate(), "%Y-%m-%d"); 
         
         
      ELSE
	  select max(balance_dt)
          into   ldt_bal_dt
          from   tm_balance_amt
          where  emp_no = new.emp_no;
          
		IF ldt_bal_dt <> 0 THEN

          	   select balance_amt
          	   into   ld_bal_amt
          	   from   tm_balance_amt
          	   where  emp_no = new.emp_no
          	   and    balance_dt = ldt_bal_dt;
          
          
         	   INSERT into tm_balance_amt
          			           values( DATE_FORMAT(sysdate(), "%Y-%m-%d"),
                                      new.emp_no,
                                      0,
                                      new.paid_amt,
                                      (ld_bal_amt - new.paid_amt));

		ELSE

		    INSERT into tm_balance_amt
          			    	  values( DATE_FORMAT(sysdate(), "%Y-%m-%d" ),
                                      new.emp_no,
                                      0,
                                      new.paid_amt,
                                      (0 - new.paid_amt));
		end IF;    
    end IF;
 end IF;        					
          
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tm_paysheet`;
CREATE TABLE `tm_paysheet` (
  `trans_dt` date NOT NULL,
  `sal_month` int(10) NOT NULL,
  `sal_year` int(10) NOT NULL,
  `emp_no` varchar(20) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `basic_sal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `conv_allow` decimal(10,2) NOT NULL DEFAULT '0.00',
  `da_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `hra_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `inc_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `lta_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `med_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `misc_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `out_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `proj_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `var_amt` decimal(10,2) DEFAULT '0.00',
  `tot_ear` decimal(10,2) NOT NULL DEFAULT '0.00',
  `arr_pf` decimal(10,2) NOT NULL DEFAULT '0.00',
  `epf_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `adv_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `esi_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `med_ins` decimal(10,2) NOT NULL DEFAULT '0.00',
  `mob_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ptax_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tds_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tot_ded` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` date DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` date DEFAULT NULL,
  PRIMARY KEY (`sal_month`,`sal_year`,`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tt`;
CREATE TABLE `tt` (
  `id` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tt` (`id`, `from_date`, `to_date`) VALUES
('555',	'2018-08-01',	'2018-08-01'),
('PCEPL/MUM/015',	'2018-09-08',	'2018-09-17'),
('PCEPL/MUM/001',	'2018-07-06',	'2018-10-05'),
('PCEPL/MUM/013',	'2018-09-06',	'2018-11-13'),
('PCEPL/MUM/018',	'2018-10-23',	'2018-10-23');

-- 2018-11-20 06:18:36
