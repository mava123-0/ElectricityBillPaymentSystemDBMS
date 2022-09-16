-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 05:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricity board payment system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `Admin_Id` int(10) NOT NULL,
  `Phone_No` varchar(10) NOT NULL,
  `Admin_Fname` varchar(30) NOT NULL,
  `Admin_Lname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`Admin_Id`, `Phone_No`, `Admin_Fname`, `Admin_Lname`) VALUES
(111, '9864190316', 'Harish', 'H'),
(112, '9932190316', 'Sura', 'Kuamr'),
(113, '9345190316', 'Govind', 'Singh'),
(114, '9876190316', 'Drinesh', 'Chanchal'),
(115, '9931244316', 'Brimesh', 'B'),
(116, '8442190316', 'Dinesh', 'AB'),
(117, '9937676416', 'Hari', 'Govindan'),
(118, '9932190654', 'Sreya', 'Krishnan'),
(119, '7932190399', 'Binu', 'Shiva'),
(120, '9013219516', 'Gaurav', 'L'),
(121, '9000490316', 'Ravi', 'MM');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_details`
--

CREATE TABLE `announcement_details` (
  `Admin_Id` int(11) NOT NULL,
  `Announcement_Datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `Announcement_Content` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement_details`
--

INSERT INTO `announcement_details` (`Admin_Id`, `Announcement_Datetime`, `Announcement_Content`) VALUES
(112, '2021-12-01 05:42:12', 'Customers can join SPPA to sell Electricity'),
(112, '2021-12-01 05:42:12', 'SPPA members recieve subsidaries'),
(114, '2021-12-10 03:42:11', 'Current Rate has been changed to Rs.3'),
(112, '2021-12-01 05:42:12', 'Customers can join SPPA to sell Electricity'),
(118, '2021-12-20 21:42:12', 'New Customers can join SPPA by filling the form'),
(116, '2021-11-29 01:42:12', 'New mode of Payment'),
(120, '2021-12-14 20:35:12', 'Customers can now do UPI Payment and Card Payment'),
(112, '2021-12-01 05:42:12', 'Customers can join SPPA to sell Electricity'),
(114, '2021-12-10 03:42:11', 'Customers are to dp Bill payment beore  Due Date'),
(121, '0000-00-00 00:00:00', 'Connection  discontinued if bill  passed  due date');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `Bill_Id` int(11) NOT NULL,
  `Cust_Id` int(11) NOT NULL,
  `Units_Utilized` int(11) NOT NULL,
  `Bill_Date` date NOT NULL,
  `Curent_Rate` int(11) NOT NULL,
  `Bill_Due_Date` date NOT NULL,
  `Bill_Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`Bill_Id`, `Cust_Id`, `Units_Utilized`, `Bill_Date`, `Curent_Rate`, `Bill_Due_Date`, `Bill_Status`) VALUES
(11101, 1, 40, '2021-12-02', 3, '2022-01-10', 'Paid'),
(11102, 2, 55, '2021-12-07', 4, '2022-01-10', 'Paid'),
(11103, 3, 44, '2021-12-14', 3, '2022-01-09', 'Not Paid'),
(11104, 4, 29, '2021-12-12', 3, '2022-01-12', 'Paid'),
(11105, 5, 33, '2021-12-05', 3, '2022-01-11', 'Paid'),
(11106, 6, 41, '2021-12-01', 3, '2022-01-14', 'Not Paid'),
(11107, 7, 59, '2021-12-28', 3, '2022-01-05', 'Paid'),
(11108, 8, 23, '2021-12-03', 3, '2022-01-13', 'Paid'),
(11109, 9, 30, '2021-12-04', 3, '2022-01-03', 'Paid'),
(11110, 10, 49, '2021-12-05', 3, '2022-01-17', 'Paid'),
(11111, 11, 12, '2021-12-03', 3, '2022-01-20', 'Paid'),
(11112, 12, 35, '2021-12-10', 3, '2022-01-21', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `Card_No` int(11) NOT NULL,
  `CVV` int(11) NOT NULL,
  `Expiry_Date` date NOT NULL,
  `Cust_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`Card_No`, `CVV`, `Expiry_Date`, `Cust_Id`) VALUES
(234892089, 477, '0000-00-00', 1),
(466551245, 827, '0000-00-00', 11),
(561899023, 544, '0000-00-00', 5),
(778194455, 728, '0000-00-00', 10),
(778361520, 890, '0000-00-00', 9),
(782655412, 764, '0000-00-00', 7),
(876901224, 477, '0000-00-00', 1),
(882638821, 532, '0000-00-00', 12),
(987421156, 699, '0000-00-00', 3),
(998716645, 721, '0000-00-00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cust_Id` int(3) NOT NULL,
  `Phone_No` varchar(10) NOT NULL,
  `Aadhar_No` varchar(12) NOT NULL,
  `Meter_No` int(11) NOT NULL,
  `Supply_No` int(11) DEFAULT NULL,
  `User_Category` varchar(20) NOT NULL,
  `Connection_Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_Id`, `Phone_No`, `Aadhar_No`, `Meter_No`, `Supply_No`, `User_Category`, `Connection_Status`) VALUES
(1, '9932190315', '213445678091', 18486877, 400231, 'Domestic', 'Active'),
(2, '9939869012', '213445418091', 18483477, 356451, 'Domestic', 'Active'),
(3, '8513420323', '235344567801', 15486877, 371491, 'Domestic', 'Active'),
(4, '9157077517', '211556780961', 18481517, 978124, 'Domestic', 'Active'),
(5, '9881407571', '113445678091', 24486877, 300825, 'Domestic', 'Active'),
(6, '7193216723', '262656780691', 6586877, NULL, 'Domestic', 'Active'),
(7, '7119085153', '534456780191', 1755877, 396423, 'Industry', 'Active'),
(8, '7775728515', '613445678091', 18487435, 300124, 'Domestic', 'Active'),
(9, '7775774425', '213445678052', 18486824, 539024, 'Domestic', 'Active'),
(10, '9117840661', '525555678091', 67486877, 396671, 'Industry', 'Active'),
(11, '9726616164', '213445789091', 91486877, 391584, 'Domestic', 'Active'),
(12, '8912455160', '662341168231', 48486862, NULL, 'Domestic', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `Aadhar_No` varchar(12) NOT NULL,
  `Cust_Fname` varchar(30) NOT NULL,
  `Cust_Lname` varchar(30) NOT NULL,
  `Dob` date NOT NULL,
  `House_No` int(11) NOT NULL,
  `Street_Name` varchar(20) NOT NULL,
  `Pincode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`Aadhar_No`, `Cust_Fname`, `Cust_Lname`, `Dob`, `House_No`, `Street_Name`, `Pincode`) VALUES
('113445678091', 'Koshi', 'Krishna', '0000-00-00', 987, 'Lance Nagar', 641106),
('211556780961', 'Josh', 'Sankar', '0000-00-00', 37, 'Chance Gardens', 695134),
('213445418091', 'Harsh', 'Kumar', '0000-00-00', 532, 'Vrinda Nagar', 641106),
('213445678052', 'Vignesh', 'Sankar', '0000-00-00', 8, 'Pettah Nagar', 682001),
('213445678091', 'Abhinav', 'Krishna', '0000-00-00', 12, 'Amba Nagar', 695024),
('213445789091', 'Vignesh', 'Krishna', '0000-00-00', 11, 'Sree Nagar', 641106),
('235344567801', 'Harish', 'C', '0000-00-00', 7, 'Shell Road', 682001),
('262656780691', 'Joshi', 'Kumar', '0000-00-00', 15, 'Next Road', 500095),
('525555678091', 'Abhinav', 'Kumar', '0000-00-00', 23, 'Turn Gardens', 695024),
('534456780191', 'Kiran', 'B', '0000-00-00', 96, 'Artech Nagar', 695024),
('613445678091', 'Siva', 'A', '0000-00-00', 3, 'Sree Road', 500095),
('662341168231', 'Amrit', 'V', '0000-00-00', 33, 'Amba Lane', 500095);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Cust_Id` int(11) NOT NULL,
  `Feedback_Datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `Feedback_Content` varchar(50) NOT NULL,
  `Feedback_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Cust_Id`, `Feedback_Datetime`, `Feedback_Content`, `Feedback_Type`) VALUES
(3, '0000-00-00 00:00:00', 'Website Working', 'About Website'),
(4, '0000-00-00 00:00:00', 'I have paid the Bill', 'About Bill'),
(10, '0000-00-00 00:00:00', 'Receipt Recieved', 'About Receipt'),
(5, '0000-00-00 00:00:00', 'Bill Amount Paid', 'About Bill'),
(3, '0000-00-00 00:00:00', 'Paid Bill', 'About Bill'),
(6, '0000-00-00 00:00:00', 'Logged in.', 'Others'),
(2, '0000-00-00 00:00:00', 'Receipt got in 1 hour', 'About Receipt'),
(9, '0000-00-00 00:00:00', 'Works Well', 'Others'),
(6, '0000-00-00 00:00:00', 'New Customer', 'Others'),
(5, '0000-00-00 00:00:00', 'Bill has been paid. Connection returned', 'Others'),
(11, '0000-00-00 00:00:00', 'How to join SPPA?', 'Others'),
(3, '0000-00-00 00:00:00', 'Website Working', 'About Website'),
(4, '0000-00-00 00:00:00', 'I have paid the Bill', 'About Bill'),
(10, '0000-00-00 00:00:00', 'Receipt Recieved', 'About Receipt'),
(5, '0000-00-00 00:00:00', 'Bill Amount Paid', 'About Bill'),
(3, '0000-00-00 00:00:00', 'Paid Bill', 'About Bill'),
(6, '0000-00-00 00:00:00', 'Logged in.', 'Others'),
(2, '0000-00-00 00:00:00', 'Receipt got in 1 hour', 'About Receipt'),
(9, '0000-00-00 00:00:00', 'Works Well', 'Others'),
(6, '0000-00-00 00:00:00', 'New Customer', 'Others'),
(5, '0000-00-00 00:00:00', 'Bill has been paid. Connection returned', 'Others'),
(11, '0000-00-00 00:00:00', 'How to join SPPA?', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `meter_details`
--

CREATE TABLE `meter_details` (
  `Meter_No` int(11) NOT NULL,
  `Meter_Reading` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meter_details`
--

INSERT INTO `meter_details` (`Meter_No`, `Meter_Reading`) VALUES
(0, 0),
(1755877, 101),
(6586877, 90),
(15486877, 290),
(18481517, 482),
(18483477, 311),
(18486824, 421),
(18486877, 471),
(18487435, 241),
(24486877, 415),
(48486862, 261),
(67486877, 653),
(91486877, 271);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `Receipt_Id` int(11) NOT NULL,
  `Receipt_Date` date NOT NULL,
  `Receipt_Amount_Paid` int(11) DEFAULT NULL,
  `Bill_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`Receipt_Id`, `Receipt_Date`, `Receipt_Amount_Paid`, `Bill_Id`) VALUES
(32201, '0000-00-00', 120, 11101),
(32202, '0000-00-00', 220, 11102),
(32204, '0000-00-00', 87, 11104),
(32205, '0000-00-00', 99, 11105),
(32207, '0000-00-00', 177, 11107),
(32208, '0000-00-00', 69, 11108),
(32209, '0000-00-00', 90, 11109),
(32210, '0000-00-00', 147, 11110),
(32211, '0000-00-00', 36, 11111),
(32212, '0000-00-00', 105, 11112);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `Pincode` int(6) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`Pincode`, `City`, `State`) VALUES
(500095, 'Hydrabad', 'Telengana'),
(506095, 'Warangal', 'Telengana'),
(591095, 'Khammam', 'Telengana'),
(641106, 'Coimbatore', 'Tamil Nadu'),
(650106, 'Vellore', 'Tamil Nadu'),
(680143, 'Kollam', 'Kerala'),
(682001, 'Cochin', 'Kerala'),
(695024, 'Trivandrum', 'Kerala'),
(695134, 'Trivandrum', 'Kerala'),
(781106, 'Salem', 'Tamil Nadu');

-- --------------------------------------------------------

--
-- Table structure for table `sppa_details`
--

CREATE TABLE `sppa_details` (
  `Supply_No` int(10) NOT NULL,
  `Supply_Date` date NOT NULL DEFAULT current_timestamp(),
  `Units_Generated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sppa_details`
--

INSERT INTO `sppa_details` (`Supply_No`, `Supply_Date`, `Units_Generated`) VALUES
(0, '2022-01-12', 0),
(300124, '0000-00-00', 31),
(300825, '0000-00-00', 2),
(356451, '0000-00-00', 45),
(371491, '0000-00-00', 50),
(391584, '0000-00-00', 19),
(396423, '0000-00-00', 21),
(396671, '0000-00-00', 52),
(400231, '0000-00-00', 87),
(539024, '0000-00-00', 12),
(978124, '0000-00-00', 45);

-- --------------------------------------------------------

--
-- Table structure for table `upi_details`
--

CREATE TABLE `upi_details` (
  `Upi_Id` varchar(11) NOT NULL,
  `Mobile_No` int(10) NOT NULL,
  `Cust_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upi_details`
--

INSERT INTO `upi_details` (`Upi_Id`, `Mobile_No`, `Cust_Id`) VALUES
('0', 2147483647, 1),
('Abhin68812@', 2147483647, 10),
('Abhiv242934', 2147483647, 1),
('Abhiv2934@y', 2147483647, 1),
('Amrit7943@s', 2147483647, 12),
('Amrit9271@p', 2147483647, 12),
('Harshh4624@', 2147483647, 2),
('Josh99104@p', 2147483647, 4),
('Koshi00142@', 2147483647, 6),
('Koshi9914@g', 2147483647, 6),
('Siva88235@s', 2147483647, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `Phone_No` varchar(10) NOT NULL,
  `Password` text NOT NULL,
  `SecQn1` varchar(20) NOT NULL,
  `SecQn2` varchar(20) NOT NULL,
  `SecQn3` varchar(20) NOT NULL,
  `User_Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`Phone_No`, `Password`, `SecQn1`, `SecQn2`, `SecQn3`, `User_Type`) VALUES
('7119085153', 'Hello102', 'Steel', 'i10', 'Govind', 'Customer'),
('7193216723', '74Haello', 'Black', 'SR4000', 'Pooja', 'Customer'),
('7775728515', 'Change2222', 'Flame', 'i20', 'Haresh', 'Customer'),
('7775774425', 'Change2222', 'Dog', 'i20', 'Pramesh', 'Customer'),
('7932190399', 'Pass123', 'Zilo', 'M5', 'Lal', 'Admin'),
('8442190316', 'Ant141', 'Zoomer', 'Toyota', 'Darsh', 'Admin'),
('8513420323', 'Swim881', 'Sting', 'SUV', 'Dinesh', 'Customer'),
('8912455160', '680isBen', 'Show', 'GTR', 'Nanthan', 'Customer'),
('9000490316', 'Gates123', 'Oscar', 'Alto', 'Raj', 'Admin'),
('9013219516', 'Race143', 'Blaze', 'Nano', 'Saj', 'Admin'),
('9117840661', 'Fixed15', 'Catty', 'Nissan', 'Pranesh', 'Customer'),
('9157077517', 'Action123', 'Nard', 'Safari', 'Suja', 'Customer'),
('9345190316', 'Hey123', 'Max', 'Maruti', 'Aakav', 'Admin'),
('9726616164', 'Iron991', 'Look', 'Micra', 'Arjun', 'Customer'),
('9864190316', 'Password123', 'Ching', '800', 'Lal', 'Admin'),
('9864190317', 'Password123', 'Ching', '800', 'Lal', 'Customer'),
('9876190316', 'Windows123', 'Luky', 'Alto', 'Advik', 'Admin'),
('9881407571', '3722552', 'Jim', 'XUV 400', 'Leta', 'Customer'),
('9931244316', 'Fork444', 'Boomer', 'Alto', 'Aakav', 'Admin'),
('9932190315', 'Jobs225', 'Cash', 'E30 M3', 'Sofia', 'Customer'),
('9932190316', 'Pass123', 'Milo', 'Alto', 'Raj', 'Admin'),
('9932190654', 'Lap123', 'Loomer', 'M4', 'Lalu', 'Admin'),
('9937676416', 'Song0kk', 'Kilo', 'M3', 'Harsh', 'Admin'),
('9939869012', 'Tree123', 'Boo', 'Honda', 'Miller', 'Customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`Admin_Id`),
  ADD KEY `Phone_No` (`Phone_No`);

--
-- Indexes for table `announcement_details`
--
ALTER TABLE `announcement_details`
  ADD KEY `Admin_Id` (`Admin_Id`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`Bill_Id`),
  ADD KEY `Cust_Id` (`Cust_Id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`Card_No`),
  ADD KEY `Cust_Id` (`Cust_Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_Id`),
  ADD KEY `Meter_No` (`Meter_No`),
  ADD KEY `Supply_No` (`Supply_No`),
  ADD KEY `Phone_No` (`Phone_No`),
  ADD KEY `Aadhar_No` (`Aadhar_No`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`Aadhar_No`),
  ADD KEY `Pincode` (`Pincode`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `Cust_Id` (`Cust_Id`);

--
-- Indexes for table `meter_details`
--
ALTER TABLE `meter_details`
  ADD PRIMARY KEY (`Meter_No`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`Receipt_Id`),
  ADD KEY `Bill_Id` (`Bill_Id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`Pincode`);

--
-- Indexes for table `sppa_details`
--
ALTER TABLE `sppa_details`
  ADD PRIMARY KEY (`Supply_No`);

--
-- Indexes for table `upi_details`
--
ALTER TABLE `upi_details`
  ADD PRIMARY KEY (`Upi_Id`),
  ADD KEY `Cust_Id` (`Cust_Id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`Phone_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cust_Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD CONSTRAINT `admin_details_ibfk_1` FOREIGN KEY (`Phone_No`) REFERENCES `user_login` (`Phone_No`);

--
-- Constraints for table `announcement_details`
--
ALTER TABLE `announcement_details`
  ADD CONSTRAINT `announcement_details_ibfk_1` FOREIGN KEY (`Admin_Id`) REFERENCES `admin_details` (`Admin_Id`);

--
-- Constraints for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `bill_details_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customer` (`Cust_Id`);

--
-- Constraints for table `card_details`
--
ALTER TABLE `card_details`
  ADD CONSTRAINT `card_details_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customer` (`Cust_Id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`Meter_No`) REFERENCES `meter_details` (`Meter_No`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`Supply_No`) REFERENCES `sppa_details` (`Supply_No`),
  ADD CONSTRAINT `customer_ibfk_4` FOREIGN KEY (`Phone_No`) REFERENCES `user_login` (`Phone_No`),
  ADD CONSTRAINT `customer_ibfk_5` FOREIGN KEY (`Aadhar_No`) REFERENCES `customer_details` (`Aadhar_No`);

--
-- Constraints for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD CONSTRAINT `customer_details_ibfk_1` FOREIGN KEY (`Pincode`) REFERENCES `region` (`Pincode`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customer` (`Cust_Id`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_2` FOREIGN KEY (`Bill_Id`) REFERENCES `bill_details` (`Bill_Id`);

--
-- Constraints for table `upi_details`
--
ALTER TABLE `upi_details`
  ADD CONSTRAINT `upi_details_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customer` (`Cust_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
