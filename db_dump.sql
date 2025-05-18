-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2025 at 09:21 AM
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
-- Database: `wattmate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Addresses`
--

CREATE TABLE `Addresses` (
  `AddressID` int(11) NOT NULL,
  `AddressName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Addresses`
--

INSERT INTO `Addresses` (`AddressID`, `AddressName`) VALUES
(1, '123 Main St'),
(2, '456 Oak Ave'),
(3, '789 Pine Rd');

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
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
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`AdminID`, `AddressID`, `Firstname`, `Lastname`, `Phone`, `Email`, `Age`, `Gender`) VALUES
(1, 1, 'Alice', 'Johnson', '555-1234', 'alice@example.com', 35, 'Female'),
(2, 2, 'Bob', 'Smith', '555-5678', 'bob@example.com', 42, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `Bill`
--

CREATE TABLE `Bill` (
  `BillID` int(11) NOT NULL,
  `Rate` decimal(10,2) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `PreviousReading` decimal(10,2) DEFAULT NULL,
  `CurrentReading` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Bill`
--

INSERT INTO `Bill` (`BillID`, `Rate`, `Amount`, `Date`, `DueDate`, `PreviousReading`, `CurrentReading`) VALUES
(1, 1.50, 75.00, '2025-04-01', '2025-04-15', 100.00, 150.00),
(2, 1.50, 60.00, '2025-04-01', '2025-04-15', 200.00, 240.00),
(3, 1.50, 90.00, '2025-04-01', '2025-04-15', 300.00, 360.00);

-- --------------------------------------------------------

--
-- Table structure for table `Request`
--

CREATE TABLE `Request` (
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
-- Dumping data for table `Request`
--

INSERT INTO `Request` (`RequestID`, `AddressID`, `MeterID`, `Firstname`, `Lastname`, `Phone`, `Email`, `Age`, `Gender`, `Password`, `Username`) VALUES
(1, 1, 1004, 'Frank', 'Green', '555-4444', 'frank@example.com', 29, 'Male', 'reqpass1', 'frankg'),
(2, 2, 1005, 'Grace', 'Hall', '555-5555', 'grace@example.com', 27, 'Female', 'reqpass2', 'graceh');

-- --------------------------------------------------------

--
-- Table structure for table `UserBill`
--

CREATE TABLE `UserBill` (
  `BillID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `UserBill`
--

INSERT INTO `UserBill` (`BillID`, `UserID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
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
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserID`, `AddressID`, `MeterID`, `Firstname`, `Lastname`, `Phone`, `Email`, `Age`, `Gender`, `Password`, `Username`) VALUES
(1, 1, 1001, 'Charlie', 'Brown', '555-1111', 'charlie@example.com', 28, 'Male', 'pass123', 'charlieb'),
(2, 2, 1002, 'Dana', 'White', '555-2222', 'dana@example.com', 32, 'Female', 'pass456', 'danaw'),
(3, 3, 1003, 'Evan', 'Lee', '555-3333', 'evan@example.com', 30, 'Male', 'pass789', 'evanl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Addresses`
--
ALTER TABLE `Addresses`
  ADD PRIMARY KEY (`AddressID`);

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indexes for table `Bill`
--
ALTER TABLE `Bill`
  ADD PRIMARY KEY (`BillID`);

--
-- Indexes for table `Request`
--
ALTER TABLE `Request`
  ADD PRIMARY KEY (`RequestID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indexes for table `UserBill`
--
ALTER TABLE `UserBill`
  ADD PRIMARY KEY (`BillID`,`UserID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Addresses`
--
ALTER TABLE `Addresses`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Bill`
--
ALTER TABLE `Bill`
  MODIFY `BillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Request`
--
ALTER TABLE `Request`
  MODIFY `RequestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Admin`
--
ALTER TABLE `Admin`
  ADD CONSTRAINT `Admin_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `Addresses` (`AddressID`);

--
-- Constraints for table `Request`
--
ALTER TABLE `Request`
  ADD CONSTRAINT `Request_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `Addresses` (`AddressID`);

--
-- Constraints for table `UserBill`
--
ALTER TABLE `UserBill`
  ADD CONSTRAINT `UserBill_ibfk_1` FOREIGN KEY (`BillID`) REFERENCES `Bill` (`BillID`),
  ADD CONSTRAINT `UserBill_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `Addresses` (`AddressID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;