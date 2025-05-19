-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2025 at 09:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wattmate`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `AddressID` int(11) NOT NULL,
  `AddressName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`AddressID`, `AddressName`) VALUES
(4, '234 Maple Drive'),
(5, '567 Elm Street'),
(6, '890 Cedar Lane'),
(7, '1234 Birch Boulevard'),
(8, '5678 Walnut Avenue'),
(9, '321 Willow Way'),
(10, '654 Spruce Street'),
(11, '987 Cherry Circle'),
(12, '135 Juniper Avenue'),
(13, '246 Sycamore Boulevard'),
(14, '579 Aspen Court'),
(15, '802 Redwood Drive'),
(16, '913 Magnolia Street'),
(17, '624 Dogwood Lane'),
(18, '775 Beech Road'),
(69, 'Daraga, Albay'),
(123, 'Santo Domingo, Albay'),
(321, 'Tabaco City, Albay'),
(420, 'Legazpi City, Albay');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `AddressID` int(11) DEFAULT NULL,
  `Firstname` varchar(100) DEFAULT NULL,
  `Lastname` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `AddressID`, `Firstname`, `Lastname`, `Phone`, `Email`, `Age`, `Gender`) VALUES
(3, 4, 'Carol', 'Davis', '555-9876', 'carol@example.com', 38, 'Female'),
(4, 5, 'David', 'Wilson', '555-6543', 'david@example.com', 45, 'Male'),
(5, 6, 'Emily', 'Martinez', '555-3210', 'emily@example.com', 32, 'Female'),
(6, 7, 'Frank', 'Anderson', '555-7890', 'frank@example.com', 41, 'Male'),
(7, 8, 'Gloria', 'Thomas', '555-4567', 'gloria@example.com', 36, 'Female'),
(8, 9, 'Henry', 'Jackson', '555-1238', 'henry@example.com', 29, 'Male'),
(9, 10, 'Isabel', 'White', '555-8901', 'isabel@example.com', 34, 'Female'),
(10, 11, 'Jack', 'Harris', '555-5678', 'jack@example.com', 39, 'Male'),
(11, 12, 'Karen', 'Martin', '555-2345', 'karen@example.com', 43, 'Female'),
(12, 13, 'Leo', 'Thompson', '555-9012', 'leo@example.com', 31, 'Male'),
(13, 14, 'Mary', 'Garcia', '555-6789', 'mary@example.com', 37, 'Female'),
(14, 15, 'Nathan', 'Rodriguez', '555-3456', 'nathan@example.com', 40, 'Male'),
(15, 16, 'Olivia', 'Lewis', '555-0123', 'olivia@example.com', 30, 'Female'),
(16, 17, 'Peter', 'Walker', '555-7830', 'peter@example.com', 35, 'Male'),
(17, 18, 'Quinn', 'Allen', '555-4598', 'quinn@example.com', 33, 'Female'),
(67, 420, 'John Airo', 'Abion', '09423741166', 'johnairoabion@gmail.com', 20, 'Male'),
(68, 69, 'Alejandro', 'Beato', '099234155', 'alejandrobeato@gmail.com', 20, 'Male'),
(420, 420, 'Rein Allen', 'Capitulo', '09615217787', 'reinallencapitulo@gmail.com', 19, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillID` int(11) NOT NULL,
  `Rate` decimal(10,2) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `PreviousReading` decimal(10,2) DEFAULT NULL,
  `CurrentReading` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillID`, `Rate`, `Amount`, `Date`, `DueDate`, `PreviousReading`, `CurrentReading`) VALUES
(1, 6.90, 42000.00, '2025-05-06', '2025-05-20', 4.20, 1.23),
(4, 1.55, 85.25, '2025-01-01', '2025-01-15', 360.00, 415.00),
(5, 1.55, 93.00, '2025-02-01', '2025-02-15', 240.00, 300.00),
(6, 1.55, 77.50, '2025-03-01', '2025-03-15', 150.00, 200.00),
(7, 1.60, 80.00, '2025-04-01', '2025-04-15', 415.00, 465.00),
(8, 1.60, 96.00, '2025-05-01', '2025-05-15', 300.00, 360.00),
(9, 1.60, 70.40, '2025-06-01', '2025-06-15', 200.00, 244.00),
(10, 1.60, 88.00, '2025-07-01', '2025-07-15', 465.00, 520.00),
(11, 1.65, 99.00, '2025-08-01', '2025-08-15', 360.00, 420.00),
(12, 1.65, 82.50, '2025-09-01', '2025-09-15', 244.00, 294.00),
(13, 1.65, 107.25, '2025-10-01', '2025-10-15', 520.00, 585.00),
(14, 1.70, 102.00, '2025-11-01', '2025-11-15', 420.00, 480.00),
(15, 1.70, 85.00, '2025-12-01', '2025-12-15', 294.00, 344.00),
(16, 1.70, 110.50, '2025-01-01', '2025-01-15', 585.00, 650.00),
(17, 1.75, 105.00, '2025-02-01', '2025-02-15', 480.00, 540.00),
(18, 1.75, 91.00, '2025-03-01', '2025-03-15', 344.00, 396.00);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `RequestID` int(11) NOT NULL,
  `AddressID` int(11) DEFAULT NULL,
  `MeterID` int(11) DEFAULT NULL,
  `Firstname` varchar(100) DEFAULT NULL,
  `Lastname` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`RequestID`, `AddressID`, `MeterID`, `Firstname`, `Lastname`, `Phone`, `Email`, `Age`, `Gender`, `Password`, `Username`) VALUES
(1, 123, 2, 'Test', 'Customer', '092134512', 'testcustomer@gmail.com', 23, 'Female', 'testpass123', 'testcustomer1'),
(3, 4, 1021, 'Michael', 'Parker', '555-2323', 'michael@example.com', 30, 'Male', 'reqpass3', 'michaelp'),
(4, 5, 1022, 'Nancy', 'Roberts', '555-2424', 'nancy@example.com', 28, 'Female', 'reqpass4', 'nancyr'),
(5, 6, 1023, 'Oliver', 'Thompson', '555-2525', 'oliver@example.com', 32, 'Male', 'reqpass5', 'olivert'),
(6, 7, 1024, 'Paula', 'Sanders', '555-2626', 'paula@example.com', 31, 'Female', 'reqpass6', 'paulas'),
(7, 8, 1025, 'Quincy', 'Phillips', '555-2727', 'quincy@example.com', 33, 'Male', 'reqpass7', 'quincyp'),
(8, 9, 1026, 'Rebecca', 'Torres', '555-2828', 'rebecca@example.com', 29, 'Female', 'reqpass8', 'rebeccat'),
(9, 10, 1027, 'Samuel', 'Butler', '555-2929', 'samuel@example.com', 34, 'Male', 'reqpass9', 'samuelb'),
(10, 11, 1028, 'Tracy', 'Barnes', '555-3030', 'tracy@example.com', 30, 'Female', 'reqpass10', 'tracyb'),
(11, 12, 1029, 'Ulrich', 'Foster', '555-3131', 'ulrich@example.com', 35, 'Male', 'reqpass11', 'ulrichf'),
(12, 13, 1030, 'Violet', 'Powell', '555-3232', 'violet@example.com', 27, 'Female', 'reqpass12', 'violetp'),
(13, 14, 1031, 'Walter', 'Long', '555-3333', 'walter@example.com', 32, 'Male', 'reqpass13', 'walterl'),
(14, 15, 1032, 'Xena', 'Hughes', '555-3434', 'xena@example.com', 28, 'Female', 'reqpass14', 'xenah'),
(15, 16, 1033, 'Yosef', 'Price', '555-3535', 'yosef@example.com', 31, 'Male', 'reqpass15', 'yosefp'),
(16, 17, 1034, 'Zoe', 'Coleman', '555-3636', 'zoe@example.com', 29, 'Female', 'reqpass16', 'zoec'),
(17, 18, 1035, 'Adam', 'Wood', '555-3737', 'adam@example.com', 33, 'Male', 'reqpass17', 'adamw');

-- --------------------------------------------------------

--
-- Table structure for table `userbill`
--

CREATE TABLE `userbill` (
  `BillID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userbill`
--

INSERT INTO `userbill` (`BillID`, `UserID`) VALUES
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `AddressID` int(11) DEFAULT NULL,
  `MeterID` int(11) DEFAULT NULL,
  `Firstname` varchar(100) DEFAULT NULL,
  `Lastname` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `AddressID`, `MeterID`, `Firstname`, `Lastname`, `Phone`, `Email`, `Age`, `Gender`, `Password`, `Username`) VALUES
(4, 4, 1006, 'Hannah', 'Miller', '555-7777', 'hannah@example.com', 29, 'Female', 'secure123', 'hannahm'),
(5, 5, 1007, 'Ian', 'Taylor', '555-8888', 'ian@example.com', 34, 'Male', 'secure456', 'iant'),
(6, 6, 1008, 'Jessica', 'Clark', '555-9999', 'jessica@example.com', 31, 'Female', 'secure789', 'jessicac'),
(7, 7, 1009, 'Kevin', 'Adams', '555-1010', 'kevin@example.com', 36, 'Male', 'secure101', 'kevina'),
(8, 8, 1010, 'Laura', 'Evans', '555-1212', 'laura@example.com', 33, 'Female', 'secure202', 'laurae'),
(9, 9, 1011, 'Mark', 'Peterson', '555-1313', 'mark@example.com', 27, 'Male', 'secure303', 'markp'),
(10, 10, 1012, 'Nina', 'Cooper', '555-1414', 'nina@example.com', 30, 'Female', 'secure404', 'ninac'),
(11, 11, 1013, 'Oscar', 'Reed', '555-1515', 'oscar@example.com', 35, 'Male', 'secure505', 'oscarr'),
(12, 12, 1014, 'Pamela', 'Bailey', '555-1616', 'pamela@example.com', 28, 'Female', 'secure606', 'pamelab'),
(13, 13, 1015, 'Quentin', 'Bell', '555-1717', 'quentin@example.com', 32, 'Male', 'secure707', 'quentinb'),
(14, 14, 1016, 'Rachel', 'Murphy', '555-1818', 'rachel@example.com', 29, 'Female', 'secure808', 'rachelm'),
(15, 15, 1017, 'Steve', 'Rivera', '555-1919', 'steve@example.com', 34, 'Male', 'secure909', 'stever'),
(16, 16, 1018, 'Tina', 'Rogers', '555-2020', 'tina@example.com', 31, 'Female', 'secure010', 'tinar'),
(17, 17, 1019, 'Ulysses', 'Cook', '555-2121', 'ulysses@example.com', 33, 'Male', 'secure121', 'ulyssesc'),
(18, 18, 1020, 'Victoria', 'Morgan', '555-2222', 'victoria@example.com', 30, 'Female', 'secure232', 'victoriam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`AddressID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`RequestID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indexes for table `userbill`
--
ALTER TABLE `userbill`
  ADD PRIMARY KEY (`BillID`,`UserID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `addresses` (`AddressID`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `addresses` (`AddressID`);

--
-- Constraints for table `userbill`
--
ALTER TABLE `userbill`
  ADD CONSTRAINT `userbill_ibfk_1` FOREIGN KEY (`BillID`) REFERENCES `bill` (`BillID`),
  ADD CONSTRAINT `userbill_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `addresses` (`AddressID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
