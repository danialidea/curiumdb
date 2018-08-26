-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 10:24 AM
-- Server version: 5.6.38
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_accountdetails`
--

CREATE TABLE `acc_accountdetails` (
  `accountdetailsid` int(11) NOT NULL,
  `accountsubgroupmasterid` int(11) DEFAULT NULL,
  `accountname` varchar(100) NOT NULL,
  `accountgroupid` int(11) NOT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acc_accountdetailsbalance`
--

CREATE TABLE `acc_accountdetailsbalance` (
  `accountdetailsbalanceid` int(11) NOT NULL,
  `accountdetailsid` int(11) DEFAULT NULL,
  `openingbalance` decimal(20,4) DEFAULT NULL,
  `currentbalance` decimal(20,4) DEFAULT NULL,
  `financialid` int(11) DEFAULT NULL,
  `crdr` varchar(40) DEFAULT NULL,
  `enteredon` date DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acc_accountgroupmaster`
--

CREATE TABLE `acc_accountgroupmaster` (
  `accountgroupid` int(11) NOT NULL,
  `accountgroupname` varchar(150) NOT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_accountgroupmaster`
--

INSERT INTO `acc_accountgroupmaster` (`accountgroupid`, `accountgroupname`, `branchid`) VALUES
(1, 'Capital', 1),
(2, 'Current Assets', 1),
(3, 'Current Liabilities', 1),
(4, 'Direct Expense', 1),
(5, 'Direct Income', 1),
(6, 'Fixed Assets', 1),
(7, 'Indirect Expense', 1),
(8, 'Indirect Income', 1),
(9, 'Investments', 1),
(10, 'Loans(Asset)', 1),
(11, 'Loans(Liability)', 1),
(12, 'Miscellaneous Expenses(Assets)', 1),
(13, 'Reserves', 1),
(14, 'Capital', 2),
(15, 'Current Assets', 2),
(16, 'Current Liabilities', 2),
(17, 'Direct Expense', 2),
(18, 'Direct Income', 2),
(19, 'Fixed Assets', 2),
(20, 'Indirect Expense', 2),
(21, 'Indirect Income', 2),
(22, 'Investments', 2),
(23, 'Loans(Asset)', 2),
(24, 'Loans(Liability)', 2),
(25, 'Miscellaneous Expenses(Assets)', 2),
(26, 'Reserves', 2),
(27, 'Capital', 3),
(28, 'Current Assets', 3),
(29, 'Current Liabilities', 3),
(30, 'Direct Expense', 3),
(31, 'Direct Income', 3),
(32, 'Fixed Assets', 3),
(33, 'Indirect Expense', 3),
(34, 'Indirect Income', 3),
(35, 'Investments', 3),
(36, 'Loans(Asset)', 3),
(37, 'Loans(Liability)', 3),
(38, 'Miscellaneous Expenses(Assets)', 3),
(39, 'Reserves', 3),
(40, 'Capital', 3),
(41, 'Current Assets', 3),
(42, 'Current Liabilities', 3),
(43, 'Direct Expense', 3),
(44, 'Direct Income', 3),
(45, 'Fixed Assets', 3),
(46, 'Indirect Expense', 3),
(47, 'Indirect Income', 3),
(48, 'Investments', 3),
(49, 'Loans(Asset)', 3),
(50, 'Loans(Liability)', 3),
(51, 'Miscellaneous Expenses(Assets)', 3),
(52, 'Reserves', 3),
(53, 'Capital', 4),
(54, 'Current Assets', 4),
(55, 'Current Liabilities', 4),
(56, 'Direct Expense', 4),
(57, 'Direct Income', 4),
(58, 'Fixed Assets', 4),
(59, 'Indirect Expense', 4),
(60, 'Indirect Income', 4),
(61, 'Investments', 4),
(62, 'Loans(Asset)', 4),
(63, 'Loans(Liability)', 4),
(64, 'Miscellaneous Expenses(Assets)', 4),
(65, 'Reserves', 4),
(66, 'Capital', 5),
(67, 'Current Assets', 5),
(68, 'Current Liabilities', 5),
(69, 'Direct Expense', 5),
(70, 'Direct Income', 5),
(71, 'Fixed Assets', 5),
(72, 'Indirect Expense', 5),
(73, 'Indirect Income', 5),
(74, 'Investments', 5),
(75, 'Loans(Asset)', 5),
(76, 'Loans(Liability)', 5),
(77, 'Miscellaneous Expenses(Assets)', 5),
(78, 'Reserves', 5);

-- --------------------------------------------------------

--
-- Table structure for table `acc_accountsubgroupmaster`
--

CREATE TABLE `acc_accountsubgroupmaster` (
  `accountsubgroupmasterid` int(11) NOT NULL,
  `accountsubgroupname` varchar(100) DEFAULT NULL,
  `accountgroupid` int(11) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_accountsubgroupmaster`
--

INSERT INTO `acc_accountsubgroupmaster` (`accountsubgroupmasterid`, `accountsubgroupname`, `accountgroupid`, `branchid`) VALUES
(1, 'Bank', 2, 1),
(2, 'Cash', 2, 1),
(3, 'Inventory', 2, 1),
(4, 'Loans and Advances', 2, 1),
(5, 'Sundry Debtors', 2, 1),
(6, 'Provisions', 3, 1),
(7, 'Sundry Creditors for Expenses', 3, 1),
(8, 'Sundry Creditors for Purchases', 3, 1),
(9, 'Building', 6, 1),
(10, 'Furniture', 6, 1),
(11, 'Land', 6, 1),
(12, 'Plant & Machinery', 6, 1),
(13, 'Bank Fixed Deposits', 9, 1),
(14, 'Shares & Debentures', 9, 1),
(15, 'Secured', 11, 1),
(16, 'Unsecured', 11, 1),
(17, '', 1, 1),
(18, '', 10, 1),
(19, '', 12, 1),
(20, '', 13, 1),
(21, '', 4, 1),
(22, '', 5, 1),
(23, '', 7, 1),
(24, '', 8, 1),
(25, 'Bank', 2, 2),
(26, 'Cash', 2, 2),
(27, 'Inventory', 2, 2),
(28, 'Loans and Advances', 2, 2),
(29, 'Sundry Debtors', 2, 2),
(30, 'Provisions', 3, 2),
(31, 'Sundry Creditors for Expenses', 3, 2),
(32, 'Sundry Creditors for Purchases', 3, 2),
(33, 'Building', 6, 2),
(34, 'Furniture', 6, 2),
(35, 'Land', 6, 2),
(36, 'Plant & Machinery', 6, 2),
(37, 'Bank Fixed Deposits', 9, 2),
(38, 'Shares & Debentures', 9, 2),
(39, 'Secured', 11, 2),
(40, 'Unsecured', 11, 2),
(41, '', 1, 2),
(42, '', 10, 2),
(43, '', 12, 2),
(44, '', 13, 2),
(45, '', 4, 2),
(46, '', 5, 2),
(47, '', 7, 2),
(48, '', 8, 2),
(49, 'Bank', 2, 3),
(50, 'Cash', 2, 3),
(51, 'Inventory', 2, 3),
(52, 'Loans and Advances', 2, 3),
(53, 'Sundry Debtors', 2, 3),
(54, 'Provisions', 3, 3),
(55, 'Sundry Creditors for Expenses', 3, 3),
(56, 'Sundry Creditors for Purchases', 3, 3),
(57, 'Building', 6, 3),
(58, 'Furniture', 6, 3),
(59, 'Land', 6, 3),
(60, 'Plant & Machinery', 6, 3),
(61, 'Bank Fixed Deposits', 9, 3),
(62, 'Shares & Debentures', 9, 3),
(63, 'Secured', 11, 3),
(64, 'Unsecured', 11, 3),
(65, '', 1, 3),
(66, '', 10, 3),
(67, '', 12, 3),
(68, '', 13, 3),
(69, '', 4, 3),
(70, '', 5, 3),
(71, '', 7, 3),
(72, '', 8, 3),
(73, 'Bank', 2, 4),
(74, 'Cash', 2, 4),
(75, 'Inventory', 2, 4),
(76, 'Loans and Advances', 2, 4),
(77, 'Sundry Debtors', 2, 4),
(78, 'Provisions', 3, 4),
(79, 'Sundry Creditors for Expenses', 3, 4),
(80, 'Sundry Creditors for Purchases', 3, 4),
(81, 'Building', 6, 4),
(82, 'Furniture', 6, 4),
(83, 'Land', 6, 4),
(84, 'Plant & Machinery', 6, 4),
(85, 'Bank Fixed Deposits', 9, 4),
(86, 'Shares & Debentures', 9, 4),
(87, 'Secured', 11, 4),
(88, 'Unsecured', 11, 4),
(89, '', 1, 4),
(90, '', 10, 4),
(91, '', 12, 4),
(92, '', 13, 4),
(93, '', 4, 4),
(94, '', 5, 4),
(95, '', 7, 4),
(96, '', 8, 4),
(97, 'Bank', 2, 5),
(98, 'Cash', 2, 5),
(99, 'Inventory', 2, 5),
(100, 'Loans and Advances', 2, 5),
(101, 'Sundry Debtors', 2, 5),
(102, 'Provisions', 3, 5),
(103, 'Sundry Creditors for Expenses', 3, 5),
(104, 'Sundry Creditors for Purchases', 3, 5),
(105, 'Building', 6, 5),
(106, 'Furniture', 6, 5),
(107, 'Land', 6, 5),
(108, 'Plant & Machinery', 6, 5),
(109, 'Bank Fixed Deposits', 9, 5),
(110, 'Shares & Debentures', 9, 5),
(111, 'Secured', 11, 5),
(112, 'Unsecured', 11, 5),
(113, '', 1, 5),
(114, '', 10, 5),
(115, '', 12, 5),
(116, '', 13, 5),
(117, '', 4, 5),
(118, '', 5, 5),
(119, '', 7, 5),
(120, '', 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `acc_contratransactions`
--

CREATE TABLE `acc_contratransactions` (
  `transactionsid` int(11) NOT NULL,
  `draccountid` int(11) DEFAULT NULL,
  `craccountid` int(11) DEFAULT NULL,
  `dramount` decimal(10,5) DEFAULT NULL,
  `cramount` decimal(10,5) DEFAULT NULL,
  `vouchertype` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `narration` varchar(500) DEFAULT NULL,
  `financialyear` int(11) NOT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acc_financialaccountingyear`
--

CREATE TABLE `acc_financialaccountingyear` (
  `financialid` int(11) NOT NULL,
  `financialstartdate` date NOT NULL,
  `financialenddate` date NOT NULL,
  `active` varchar(10) NOT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acc_journaltransactions`
--

CREATE TABLE `acc_journaltransactions` (
  `transactionsid` int(11) NOT NULL,
  `draccountid` int(11) DEFAULT NULL,
  `craccountid` int(11) DEFAULT NULL,
  `dramount` decimal(10,5) DEFAULT NULL,
  `cramount` decimal(10,5) DEFAULT NULL,
  `vouchertype` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `narration` varchar(500) DEFAULT NULL,
  `financialyear` int(11) NOT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acc_paymenttransactions`
--

CREATE TABLE `acc_paymenttransactions` (
  `transactionsid` int(11) NOT NULL,
  `draccountid` int(11) DEFAULT NULL,
  `craccountid` int(11) DEFAULT NULL,
  `dramount` decimal(10,5) DEFAULT NULL,
  `cramount` decimal(10,5) DEFAULT NULL,
  `vouchertype` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `narration` varchar(500) DEFAULT NULL,
  `financialyear` int(11) NOT NULL,
  `cancelvoucher` varchar(5) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acc_receipttransactions`
--

CREATE TABLE `acc_receipttransactions` (
  `transactionsid` int(11) NOT NULL,
  `draccountid` int(11) DEFAULT NULL,
  `craccountid` int(11) DEFAULT NULL,
  `dramount` decimal(10,5) DEFAULT NULL,
  `cramount` decimal(10,5) DEFAULT NULL,
  `vouchertype` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `narration` varchar(500) DEFAULT NULL,
  `financialyear` int(11) NOT NULL,
  `cancelvoucher` varchar(5) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adminexpenses`
--

CREATE TABLE `adminexpenses` (
  `idAdminExpenses` int(11) NOT NULL,
  `item description` varchar(500) DEFAULT NULL,
  `priceofitem` int(11) DEFAULT NULL,
  `entrydate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int(11) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `att_attendancemaster`
--

CREATE TABLE `att_attendancemaster` (
  `idattendancemaster` int(11) NOT NULL,
  `attendeeid` varchar(10) NOT NULL,
  `intime` varchar(10) DEFAULT NULL,
  `outtime` varchar(10) DEFAULT NULL,
  `weeklyoff` varchar(50) DEFAULT NULL,
  `holidayname` varchar(200) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `att_holidaysmaster`
--

CREATE TABLE `att_holidaysmaster` (
  `shid` int(11) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `holidayname` varchar(40) NOT NULL,
  `academicyear` varchar(10) NOT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `att_staffdailyattendance`
--

CREATE TABLE `att_staffdailyattendance` (
  `attendanceid` int(11) NOT NULL,
  `attendeeid` varchar(45) NOT NULL,
  `intime` varchar(15) DEFAULT NULL,
  `outtime` varchar(15) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendancestatus` varchar(45) DEFAULT NULL,
  `academicyear` varchar(10) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `att_studentdailyattendance`
--

CREATE TABLE `att_studentdailyattendance` (
  `attendanceid` int(11) NOT NULL,
  `attendeeid` varchar(45) NOT NULL,
  `intime` varchar(45) DEFAULT NULL,
  `outtime` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendancestatus` varchar(15) DEFAULT NULL,
  `academicyear` varchar(10) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `att_weeklyoff`
--

CREATE TABLE `att_weeklyoff` (
  `wid` int(11) NOT NULL,
  `weeklyoffday` varchar(100) NOT NULL,
  `academicyear` varchar(10) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `idbranch` int(11) NOT NULL,
  `branchname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`idbranch`, `branchname`) VALUES
(1, 'Head Office'),
(2, 'Boys High School'),
(3, 'Girls High School'),
(4, 'P.U. College'),
(5, 'Degree College'),
(6, 'superadmin'),
(7, 'feescollector');

-- --------------------------------------------------------

--
-- Table structure for table `classsec`
--

CREATE TABLE `classsec` (
  `stdrdid` int(11) NOT NULL,
  `classdetails` varchar(45) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currentacademicyear`
--

CREATE TABLE `currentacademicyear` (
  `cayid` int(11) NOT NULL,
  `currentacademicyear` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currentacademicyear`
--

INSERT INTO `currentacademicyear` (`cayid`, `currentacademicyear`) VALUES
(1, '2018/19');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depid` int(11) NOT NULL,
  `departmentname` varchar(100) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exid` int(11) NOT NULL,
  `examname` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `examschedule`
--

CREATE TABLE `examschedule` (
  `idexamschedule` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `starttime` varchar(20) DEFAULT NULL,
  `endtime` varchar(20) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `examname` varchar(30) DEFAULT NULL,
  `classes` varchar(45) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_academicfeesstructure`
--

CREATE TABLE `fee_academicfeesstructure` (
  `feesstructureid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `totalfees` varchar(45) DEFAULT NULL,
  `paidfees` varchar(45) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_feescategory`
--

CREATE TABLE `fee_feescategory` (
  `idfeescategory` int(11) NOT NULL,
  `feescategoryname` varchar(150) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `particularname` varchar(150) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_feescollection`
--

CREATE TABLE `fee_feescollection` (
  `feecollectionid` int(11) NOT NULL,
  `sfsid` int(11) NOT NULL,
  `amountpaid` decimal(10,0) DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `fine` decimal(10,0) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `receiptnumber` int(11) NOT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_feesdetails`
--

CREATE TABLE `fee_feesdetails` (
  `feesdetailsid` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `dateoffees` varchar(100) DEFAULT NULL,
  `grandtotal` varchar(45) DEFAULT NULL,
  `miscamount` varchar(45) DEFAULT NULL,
  `balamount` varchar(45) DEFAULT NULL,
  `amountpercat` varchar(45) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='				';

-- --------------------------------------------------------

--
-- Table structure for table `fee_receiptinfo`
--

CREATE TABLE `fee_receiptinfo` (
  `receiptnumber` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `totalamount` decimal(10,0) DEFAULT NULL,
  `academicyear` varchar(15) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_studentfeesstructure`
--

CREATE TABLE `fee_studentfeesstructure` (
  `sfsid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `idfeescategory` int(11) NOT NULL,
  `feesamount` decimal(10,0) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL,
  `concession` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fileuploaddetails`
--

CREATE TABLE `fileuploaddetails` (
  `fudid` int(11) NOT NULL,
  `date` date NOT NULL,
  `uploadstatus` varchar(10) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_leaveapplication`
--

CREATE TABLE `hr_leaveapplication` (
  `idleaveapplication` int(11) NOT NULL,
  `idteacher` int(11) DEFAULT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `leavetype` varchar(45) DEFAULT NULL,
  `totalleaves` int(11) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `dateofapply` date DEFAULT NULL,
  `dateofapproval` date DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_leavedetails`
--

CREATE TABLE `hr_leavedetails` (
  `idleavedetails` int(11) NOT NULL,
  `idleavetypemaster` int(11) DEFAULT NULL,
  `idteacher` int(11) DEFAULT NULL,
  `numberofleaves` int(11) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='		';

-- --------------------------------------------------------

--
-- Table structure for table `hr_leavetypemaster`
--

CREATE TABLE `hr_leavetypemaster` (
  `idleavetypemaster` int(11) NOT NULL,
  `leavetypename` varchar(100) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_payadvancesalary`
--

CREATE TABLE `hr_payadvancesalary` (
  `idpayadvancesalary` int(11) NOT NULL,
  `idteacher` int(11) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `salaryfordays` int(11) DEFAULT NULL,
  `deductionpermonth` decimal(20,4) DEFAULT NULL,
  `amount` decimal(20,4) DEFAULT NULL,
  `deductionstartmonth` varchar(45) DEFAULT NULL,
  `deductionstartyear` varchar(45) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_paybasic`
--

CREATE TABLE `hr_paybasic` (
  `idpaybasic` int(11) NOT NULL,
  `idteacher` int(11) NOT NULL,
  `basicpay` decimal(20,4) DEFAULT NULL,
  `paymenttype` varchar(45) DEFAULT NULL,
  `accountno` varchar(40) DEFAULT NULL,
  `overtime` varchar(10) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_payhead`
--

CREATE TABLE `hr_payhead` (
  `idpayhead` int(11) NOT NULL,
  `payheadname` varchar(200) DEFAULT NULL,
  `payheadtype` varchar(40) DEFAULT NULL,
  `validatory` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_payheadstaffdetails`
--

CREATE TABLE `hr_payheadstaffdetails` (
  `idpayheadstaffdetails` int(11) NOT NULL,
  `idteacher` int(11) NOT NULL,
  `value` decimal(20,4) DEFAULT NULL,
  `amountperc` varchar(20) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `payheadid` int(11) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_pf`
--

CREATE TABLE `hr_pf` (
  `idpf` int(11) NOT NULL,
  `paidbymanagement` int(11) DEFAULT NULL,
  `paidbyemployee` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='		';

-- --------------------------------------------------------

--
-- Table structure for table `hr_processsalarydetails`
--

CREATE TABLE `hr_processsalarydetails` (
  `idprocesssalarydetails` int(11) NOT NULL,
  `teacherid` int(11) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `netpayment` decimal(20,0) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `processeddate` date DEFAULT NULL,
  `issueddate` date DEFAULT NULL,
  `paymenttype` varchar(20) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_processsalarydetailsheads`
--

CREATE TABLE `hr_processsalarydetailsheads` (
  `idprocesssalarydetailsheads` int(11) NOT NULL,
  `idprocesssalary` int(11) DEFAULT NULL,
  `payheadname` varchar(45) DEFAULT NULL,
  `payheadtype` varchar(45) DEFAULT NULL,
  `amount` decimal(20,0) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `lid` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `usertype` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lid`, `username`, `password`, `usertype`, `branchid`) VALUES
(1, 'superuser', 'super@123#', 'superadmin', 6),
(2, 'feescollector', 'fees@123#', 'feescollector', 7),
(3, 'puadmin', 'pu@123#', 'admin', 4);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `marksid` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `examid` int(11) DEFAULT NULL,
  `marksobtained` int(11) DEFAULT NULL,
  `academicyear` varchar(20) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `pid` int(11) NOT NULL,
  `fathersname` varchar(100) DEFAULT NULL,
  `mothersname` varchar(100) DEFAULT NULL,
  `addresspermanent` varchar(500) DEFAULT NULL,
  `addresstemporary` varchar(500) DEFAULT NULL,
  `professsion` varchar(100) DEFAULT NULL,
  `parentsannualincome` varchar(100) DEFAULT NULL,
  `noofdependents` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `contactnumber` varchar(50) DEFAULT NULL,
  `cocontactnumber` varchar(50) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='		';

-- --------------------------------------------------------

--
-- Table structure for table `perioddetails`
--

CREATE TABLE `perioddetails` (
  `idperioddetails` int(11) NOT NULL,
  `periodmasterid` int(11) DEFAULT NULL,
  `periods` varchar(45) DEFAULT NULL,
  `timings` varchar(100) DEFAULT NULL,
  `days` varchar(60) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `staff` varchar(200) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `periodmaster`
--

CREATE TABLE `periodmaster` (
  `idperiodmaster` int(11) NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  `totalperiods` int(11) DEFAULT NULL,
  `totalbreaks` int(11) DEFAULT NULL,
  `daystart` varchar(45) DEFAULT NULL,
  `dayend` varchar(45) DEFAULT NULL,
  `durationofperiod` varchar(45) DEFAULT NULL,
  `academicyear` varchar(45) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `positionid` int(11) NOT NULL,
  `positionname` varchar(100) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pudetails`
--

CREATE TABLE `pudetails` (
  `idpudetails` int(11) NOT NULL,
  `exampassedappearance` int(11) DEFAULT NULL,
  `exampassedyear` varchar(45) DEFAULT NULL,
  `exampassedregno` varchar(45) DEFAULT NULL,
  `exampassedresultwithclass` varchar(100) DEFAULT NULL,
  `secondlanguage` varchar(45) DEFAULT NULL,
  `aggregatemarkssslc` varchar(45) DEFAULT NULL,
  `optionalsubjects` varchar(200) DEFAULT NULL,
  `compulsorysubjects` varchar(500) DEFAULT NULL,
  `sslcmediuminstruction` varchar(45) DEFAULT NULL,
  `pumediuminstruction` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `classstudying` varchar(45) DEFAULT NULL,
  `classadmittedin` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `bloodgroup` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `caste` varchar(45) DEFAULT NULL,
  `admissiondate` date DEFAULT NULL,
  `admissionnumber` varchar(20) DEFAULT NULL,
  `mothertongue` varchar(45) DEFAULT NULL,
  `Remarks` varchar(500) DEFAULT NULL,
  `schoollastattended` varchar(100) DEFAULT NULL,
  `stdlaststudied` varchar(45) DEFAULT NULL,
  `createddate` date DEFAULT NULL,
  `archive` int(11) DEFAULT NULL,
  `studentpic` longtext,
  `studentexternalid` varchar(45) NOT NULL,
  `crecord` varchar(45) DEFAULT NULL,
  `crecorddate` date DEFAULT NULL,
  `placeofbirth` varchar(100) DEFAULT NULL,
  `nooftc` int(11) DEFAULT NULL,
  `dateoftc` date DEFAULT NULL,
  `classonleaving` varchar(45) DEFAULT NULL,
  `dateleaving` date DEFAULT NULL,
  `reasonleaving` varchar(500) DEFAULT NULL,
  `notcissued` int(11) DEFAULT NULL,
  `datetcissued` date DEFAULT NULL,
  `guardiandetails` varchar(200) DEFAULT NULL,
  `subsequentprogress` varchar(500) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL,
  `pudetailsid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_documents`
--

CREATE TABLE `student_documents` (
  `studdocid` int(11) NOT NULL,
  `tcoriginal` int(11) DEFAULT NULL,
  `tcoriginalissuedate` date DEFAULT NULL,
  `tcduplicateno` int(11) DEFAULT NULL,
  `tcduplicateissuedate` date DEFAULT NULL,
  `fksidstudent` int(11) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subid` int(11) NOT NULL,
  `subjectname` varchar(45) DEFAULT NULL,
  `minmarks` int(11) DEFAULT NULL,
  `maxmarks` int(11) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `teachername` varchar(100) NOT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `subjectsteaching` varchar(500) DEFAULT NULL,
  `dateofjoining` date DEFAULT NULL,
  `classesteaching` varchar(200) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `qualification` varchar(45) DEFAULT NULL,
  `totalexperience` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contactnumber` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `remarks` varchar(400) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `teacherexternalid` varchar(45) NOT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transfercertificate`
--

CREATE TABLE `transfercertificate` (
  `tcid` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `applicationstatus` varchar(20) DEFAULT NULL,
  `noofissues` int(11) DEFAULT NULL,
  `dateofissues` date DEFAULT NULL,
  `generalconduct` varchar(500) DEFAULT NULL,
  `progress` varchar(100) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vouchermaster`
--

CREATE TABLE `vouchermaster` (
  `vouchermasterid` int(11) NOT NULL,
  `vouchername` varchar(100) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_accountdetails`
--
ALTER TABLE `acc_accountdetails`
  ADD PRIMARY KEY (`accountdetailsid`),
  ADD KEY `accountdetailsfk_idx` (`accountsubgroupmasterid`);

--
-- Indexes for table `acc_accountdetailsbalance`
--
ALTER TABLE `acc_accountdetailsbalance`
  ADD PRIMARY KEY (`accountdetailsbalanceid`),
  ADD KEY `accoutdetailsid_idx` (`accountdetailsid`),
  ADD KEY `financialidfk_idx` (`financialid`);

--
-- Indexes for table `acc_accountgroupmaster`
--
ALTER TABLE `acc_accountgroupmaster`
  ADD PRIMARY KEY (`accountgroupid`);

--
-- Indexes for table `acc_accountsubgroupmaster`
--
ALTER TABLE `acc_accountsubgroupmaster`
  ADD PRIMARY KEY (`accountsubgroupmasterid`),
  ADD KEY `accountgroupid_idx` (`accountgroupid`);

--
-- Indexes for table `acc_contratransactions`
--
ALTER TABLE `acc_contratransactions`
  ADD PRIMARY KEY (`transactionsid`);

--
-- Indexes for table `acc_financialaccountingyear`
--
ALTER TABLE `acc_financialaccountingyear`
  ADD PRIMARY KEY (`financialid`);

--
-- Indexes for table `acc_journaltransactions`
--
ALTER TABLE `acc_journaltransactions`
  ADD PRIMARY KEY (`transactionsid`);

--
-- Indexes for table `acc_paymenttransactions`
--
ALTER TABLE `acc_paymenttransactions`
  ADD PRIMARY KEY (`transactionsid`);

--
-- Indexes for table `acc_receipttransactions`
--
ALTER TABLE `acc_receipttransactions`
  ADD PRIMARY KEY (`transactionsid`);

--
-- Indexes for table `adminexpenses`
--
ALTER TABLE `adminexpenses`
  ADD PRIMARY KEY (`idAdminExpenses`);

--
-- Indexes for table `att_attendancemaster`
--
ALTER TABLE `att_attendancemaster`
  ADD PRIMARY KEY (`idattendancemaster`);

--
-- Indexes for table `att_holidaysmaster`
--
ALTER TABLE `att_holidaysmaster`
  ADD PRIMARY KEY (`shid`);

--
-- Indexes for table `att_staffdailyattendance`
--
ALTER TABLE `att_staffdailyattendance`
  ADD PRIMARY KEY (`attendanceid`);

--
-- Indexes for table `att_studentdailyattendance`
--
ALTER TABLE `att_studentdailyattendance`
  ADD PRIMARY KEY (`attendanceid`),
  ADD KEY `stdfk_idx` (`attendeeid`);

--
-- Indexes for table `att_weeklyoff`
--
ALTER TABLE `att_weeklyoff`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`idbranch`);

--
-- Indexes for table `classsec`
--
ALTER TABLE `classsec`
  ADD PRIMARY KEY (`stdrdid`);

--
-- Indexes for table `currentacademicyear`
--
ALTER TABLE `currentacademicyear`
  ADD PRIMARY KEY (`cayid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depid`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `examschedule`
--
ALTER TABLE `examschedule`
  ADD PRIMARY KEY (`idexamschedule`);

--
-- Indexes for table `fee_academicfeesstructure`
--
ALTER TABLE `fee_academicfeesstructure`
  ADD PRIMARY KEY (`feesstructureid`);

--
-- Indexes for table `fee_feescategory`
--
ALTER TABLE `fee_feescategory`
  ADD PRIMARY KEY (`idfeescategory`);

--
-- Indexes for table `fee_feescollection`
--
ALTER TABLE `fee_feescollection`
  ADD PRIMARY KEY (`feecollectionid`),
  ADD KEY `sid_idx` (`sid`),
  ADD KEY `sfsid_idx` (`sfsid`),
  ADD KEY `receiptnumber_idx` (`receiptnumber`);

--
-- Indexes for table `fee_feesdetails`
--
ALTER TABLE `fee_feesdetails`
  ADD PRIMARY KEY (`feesdetailsid`),
  ADD KEY `fk_idx` (`sid`);

--
-- Indexes for table `fee_receiptinfo`
--
ALTER TABLE `fee_receiptinfo`
  ADD PRIMARY KEY (`receiptnumber`),
  ADD KEY `studentid_idx` (`sid`);

--
-- Indexes for table `fee_studentfeesstructure`
--
ALTER TABLE `fee_studentfeesstructure`
  ADD PRIMARY KEY (`sfsid`),
  ADD KEY `fk_sfs_idx` (`sid`),
  ADD KEY `feescategoryid_idx` (`idfeescategory`);

--
-- Indexes for table `fileuploaddetails`
--
ALTER TABLE `fileuploaddetails`
  ADD PRIMARY KEY (`fudid`);

--
-- Indexes for table `hr_leaveapplication`
--
ALTER TABLE `hr_leaveapplication`
  ADD PRIMARY KEY (`idleaveapplication`),
  ADD KEY `idteacherleaveapp_idx` (`idteacher`);

--
-- Indexes for table `hr_leavedetails`
--
ALTER TABLE `hr_leavedetails`
  ADD PRIMARY KEY (`idleavedetails`),
  ADD KEY `leavetype_idx` (`idleavetypemaster`),
  ADD KEY `teacherid_idx` (`idteacher`);

--
-- Indexes for table `hr_leavetypemaster`
--
ALTER TABLE `hr_leavetypemaster`
  ADD PRIMARY KEY (`idleavetypemaster`);

--
-- Indexes for table `hr_payadvancesalary`
--
ALTER TABLE `hr_payadvancesalary`
  ADD PRIMARY KEY (`idpayadvancesalary`),
  ADD KEY `idteacheradv_idx` (`idteacher`);

--
-- Indexes for table `hr_paybasic`
--
ALTER TABLE `hr_paybasic`
  ADD PRIMARY KEY (`idpaybasic`),
  ADD KEY `idteacher_idx` (`idteacher`);

--
-- Indexes for table `hr_payhead`
--
ALTER TABLE `hr_payhead`
  ADD PRIMARY KEY (`idpayhead`);

--
-- Indexes for table `hr_payheadstaffdetails`
--
ALTER TABLE `hr_payheadstaffdetails`
  ADD PRIMARY KEY (`idpayheadstaffdetails`),
  ADD KEY `teacherid_idx` (`idteacher`),
  ADD KEY `payheadid_idx` (`payheadid`);

--
-- Indexes for table `hr_pf`
--
ALTER TABLE `hr_pf`
  ADD PRIMARY KEY (`idpf`);

--
-- Indexes for table `hr_processsalarydetails`
--
ALTER TABLE `hr_processsalarydetails`
  ADD PRIMARY KEY (`idprocesssalarydetails`),
  ADD KEY `processteacherid_idx` (`teacherid`);

--
-- Indexes for table `hr_processsalarydetailsheads`
--
ALTER TABLE `hr_processsalarydetailsheads`
  ADD PRIMARY KEY (`idprocesssalarydetailsheads`),
  ADD KEY `idprocesssalary_idx` (`idprocesssalary`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `branchid_idx` (`branchid`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`marksid`),
  ADD UNIQUE KEY `sid` (`sid`,`subid`,`examid`,`academicyear`),
  ADD KEY `sid_idx` (`sid`),
  ADD KEY `subid_idx` (`subid`),
  ADD KEY `examid_idx` (`examid`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `sid_idx` (`sid`),
  ADD KEY `tid_idx` (`tid`);

--
-- Indexes for table `perioddetails`
--
ALTER TABLE `perioddetails`
  ADD PRIMARY KEY (`idperioddetails`),
  ADD KEY `periodd_idx` (`periodmasterid`);

--
-- Indexes for table `periodmaster`
--
ALTER TABLE `periodmaster`
  ADD PRIMARY KEY (`idperiodmaster`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`positionid`);

--
-- Indexes for table `pudetails`
--
ALTER TABLE `pudetails`
  ADD PRIMARY KEY (`idpudetails`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `studentexternalid_UNIQUE` (`studentexternalid`),
  ADD KEY `pudetailsid_idx` (`pudetailsid`);

--
-- Indexes for table `student_documents`
--
ALTER TABLE `student_documents`
  ADD PRIMARY KEY (`studdocid`),
  ADD KEY `sid_idx` (`fksidstudent`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `teacherexternalid_UNIQUE` (`teacherexternalid`);

--
-- Indexes for table `transfercertificate`
--
ALTER TABLE `transfercertificate`
  ADD PRIMARY KEY (`tcid`);

--
-- Indexes for table `vouchermaster`
--
ALTER TABLE `vouchermaster`
  ADD PRIMARY KEY (`vouchermasterid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_accountdetails`
--
ALTER TABLE `acc_accountdetails`
  MODIFY `accountdetailsid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acc_accountdetailsbalance`
--
ALTER TABLE `acc_accountdetailsbalance`
  MODIFY `accountdetailsbalanceid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acc_accountgroupmaster`
--
ALTER TABLE `acc_accountgroupmaster`
  MODIFY `accountgroupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `acc_accountsubgroupmaster`
--
ALTER TABLE `acc_accountsubgroupmaster`
  MODIFY `accountsubgroupmasterid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `acc_contratransactions`
--
ALTER TABLE `acc_contratransactions`
  MODIFY `transactionsid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acc_financialaccountingyear`
--
ALTER TABLE `acc_financialaccountingyear`
  MODIFY `financialid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acc_journaltransactions`
--
ALTER TABLE `acc_journaltransactions`
  MODIFY `transactionsid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acc_paymenttransactions`
--
ALTER TABLE `acc_paymenttransactions`
  MODIFY `transactionsid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acc_receipttransactions`
--
ALTER TABLE `acc_receipttransactions`
  MODIFY `transactionsid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adminexpenses`
--
ALTER TABLE `adminexpenses`
  MODIFY `idAdminExpenses` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `att_attendancemaster`
--
ALTER TABLE `att_attendancemaster`
  MODIFY `idattendancemaster` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `att_holidaysmaster`
--
ALTER TABLE `att_holidaysmaster`
  MODIFY `shid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `att_staffdailyattendance`
--
ALTER TABLE `att_staffdailyattendance`
  MODIFY `attendanceid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `att_studentdailyattendance`
--
ALTER TABLE `att_studentdailyattendance`
  MODIFY `attendanceid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `att_weeklyoff`
--
ALTER TABLE `att_weeklyoff`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `idbranch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `classsec`
--
ALTER TABLE `classsec`
  MODIFY `stdrdid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currentacademicyear`
--
ALTER TABLE `currentacademicyear`
  MODIFY `cayid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `depid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `examschedule`
--
ALTER TABLE `examschedule`
  MODIFY `idexamschedule` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_academicfeesstructure`
--
ALTER TABLE `fee_academicfeesstructure`
  MODIFY `feesstructureid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_feescategory`
--
ALTER TABLE `fee_feescategory`
  MODIFY `idfeescategory` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_feescollection`
--
ALTER TABLE `fee_feescollection`
  MODIFY `feecollectionid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_feesdetails`
--
ALTER TABLE `fee_feesdetails`
  MODIFY `feesdetailsid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_receiptinfo`
--
ALTER TABLE `fee_receiptinfo`
  MODIFY `receiptnumber` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_studentfeesstructure`
--
ALTER TABLE `fee_studentfeesstructure`
  MODIFY `sfsid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fileuploaddetails`
--
ALTER TABLE `fileuploaddetails`
  MODIFY `fudid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_leaveapplication`
--
ALTER TABLE `hr_leaveapplication`
  MODIFY `idleaveapplication` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_leavedetails`
--
ALTER TABLE `hr_leavedetails`
  MODIFY `idleavedetails` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_leavetypemaster`
--
ALTER TABLE `hr_leavetypemaster`
  MODIFY `idleavetypemaster` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_payadvancesalary`
--
ALTER TABLE `hr_payadvancesalary`
  MODIFY `idpayadvancesalary` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_paybasic`
--
ALTER TABLE `hr_paybasic`
  MODIFY `idpaybasic` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_payhead`
--
ALTER TABLE `hr_payhead`
  MODIFY `idpayhead` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_payheadstaffdetails`
--
ALTER TABLE `hr_payheadstaffdetails`
  MODIFY `idpayheadstaffdetails` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_pf`
--
ALTER TABLE `hr_pf`
  MODIFY `idpf` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_processsalarydetails`
--
ALTER TABLE `hr_processsalarydetails`
  MODIFY `idprocesssalarydetails` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_processsalarydetailsheads`
--
ALTER TABLE `hr_processsalarydetailsheads`
  MODIFY `idprocesssalarydetailsheads` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `marksid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `perioddetails`
--
ALTER TABLE `perioddetails`
  MODIFY `idperioddetails` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `periodmaster`
--
ALTER TABLE `periodmaster`
  MODIFY `idperiodmaster` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `positionid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pudetails`
--
ALTER TABLE `pudetails`
  MODIFY `idpudetails` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_documents`
--
ALTER TABLE `student_documents`
  MODIFY `studdocid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfercertificate`
--
ALTER TABLE `transfercertificate`
  MODIFY `tcid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vouchermaster`
--
ALTER TABLE `vouchermaster`
  MODIFY `vouchermasterid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `acc_accountdetails`
--
ALTER TABLE `acc_accountdetails`
  ADD CONSTRAINT `accountdetailsfk` FOREIGN KEY (`accountsubgroupmasterid`) REFERENCES `acc_accountsubgroupmaster` (`accountsubgroupmasterid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `acc_accountdetailsbalance`
--
ALTER TABLE `acc_accountdetailsbalance`
  ADD CONSTRAINT `accoutdetailsidfk` FOREIGN KEY (`accountdetailsid`) REFERENCES `acc_accountdetails` (`accountdetailsid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `financialidfk` FOREIGN KEY (`financialid`) REFERENCES `acc_financialaccountingyear` (`financialid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `acc_accountsubgroupmaster`
--
ALTER TABLE `acc_accountsubgroupmaster`
  ADD CONSTRAINT `accountgroupid` FOREIGN KEY (`accountgroupid`) REFERENCES `acc_accountgroupmaster` (`accountgroupid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `att_studentdailyattendance`
--
ALTER TABLE `att_studentdailyattendance`
  ADD CONSTRAINT `stdfk` FOREIGN KEY (`attendeeid`) REFERENCES `student` (`studentexternalid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fee_feescollection`
--
ALTER TABLE `fee_feescollection`
  ADD CONSTRAINT `fk` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receiptnumber` FOREIGN KEY (`receiptnumber`) REFERENCES `fee_receiptinfo` (`receiptnumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sfsid` FOREIGN KEY (`sfsid`) REFERENCES `fee_studentfeesstructure` (`sfsid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fee_feesdetails`
--
ALTER TABLE `fee_feesdetails`
  ADD CONSTRAINT `fk_fees` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fee_receiptinfo`
--
ALTER TABLE `fee_receiptinfo`
  ADD CONSTRAINT `studentidreceipt` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fee_studentfeesstructure`
--
ALTER TABLE `fee_studentfeesstructure`
  ADD CONSTRAINT `feescategoryid` FOREIGN KEY (`idfeescategory`) REFERENCES `fee_feescategory` (`idfeescategory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sfs` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hr_leaveapplication`
--
ALTER TABLE `hr_leaveapplication`
  ADD CONSTRAINT `idteacherleaveapp` FOREIGN KEY (`idteacher`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `hr_leavedetails`
--
ALTER TABLE `hr_leavedetails`
  ADD CONSTRAINT `leavetype` FOREIGN KEY (`idleavetypemaster`) REFERENCES `hr_leavetypemaster` (`idleavetypemaster`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `teacherid` FOREIGN KEY (`idteacher`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `hr_payadvancesalary`
--
ALTER TABLE `hr_payadvancesalary`
  ADD CONSTRAINT `idteacheradv` FOREIGN KEY (`idteacher`) REFERENCES `teacher` (`tid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hr_paybasic`
--
ALTER TABLE `hr_paybasic`
  ADD CONSTRAINT `teachersid` FOREIGN KEY (`idteacher`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `hr_payheadstaffdetails`
--
ALTER TABLE `hr_payheadstaffdetails`
  ADD CONSTRAINT `idteacher` FOREIGN KEY (`idteacher`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `payheadid` FOREIGN KEY (`payheadid`) REFERENCES `hr_payhead` (`idpayhead`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `hr_processsalarydetails`
--
ALTER TABLE `hr_processsalarydetails`
  ADD CONSTRAINT `processteacherid` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`tid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `hr_processsalarydetailsheads`
--
ALTER TABLE `hr_processsalarydetailsheads`
  ADD CONSTRAINT `idprocesssalary` FOREIGN KEY (`idprocesssalary`) REFERENCES `hr_processsalarydetails` (`idprocesssalarydetails`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `branchid` FOREIGN KEY (`branchid`) REFERENCES `branch` (`idbranch`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `examinationid` FOREIGN KEY (`examid`) REFERENCES `exams` (`exid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `studentid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subjectid` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `sid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tid` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `perioddetails`
--
ALTER TABLE `perioddetails`
  ADD CONSTRAINT `periodd` FOREIGN KEY (`periodmasterid`) REFERENCES `periodmaster` (`idperiodmaster`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `pudetailsid` FOREIGN KEY (`pudetailsid`) REFERENCES `pudetails` (`idpudetails`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `student_documents`
--
ALTER TABLE `student_documents`
  ADD CONSTRAINT `fksidstudent` FOREIGN KEY (`fksidstudent`) REFERENCES `student` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
