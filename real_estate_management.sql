-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 04:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `AgentID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Agency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`AgentID`, `Name`, `Email`, `Phone`, `Agency`) VALUES
(1, 'Alice Brown', 'alice.brown@example.com', '234-567-8901', 'Brown Realty'),
(2, 'Bob White', 'bob.white@example.com', '345-678-9012', 'White Realty'),
(3, 'Charlie Green', 'charlie.green@example.com', '456-789-0123', 'Green Realty'),
(4, 'Daisy Black', 'daisy.black@example.com', '567-890-1234', 'Black Realty'),
(5, 'Eve Grey', 'eve.grey@example.com', '678-901-2345', 'Grey Realty'),
(6, 'Frank Blue', 'frank.blue@example.com', '789-012-3456', 'Blue Realty'),
(7, 'Grace Red', 'grace.red@example.com', '890-123-4567', 'Red Realty'),
(8, 'Henry Yellow', 'henry.yellow@example.com', '901-234-5678', 'Yellow Realty'),
(9, 'Ivy Violet', 'ivy.violet@example.com', '012-345-6789', 'Violet Realty'),
(10, 'Jack Pink', 'jack.pink@example.com', '123-456-7891', 'Pink Realty'),
(11, 'Kelly Brown', 'kelly.brown@example.com', '234-567-8902', 'Brown Realty'),
(12, 'Liam White', 'liam.white@example.com', '345-678-9013', 'White Realty'),
(13, 'Mia Green', 'mia.green@example.com', '456-789-0124', 'Green Realty'),
(14, 'Nina Black', 'nina.black@example.com', '567-890-1235', 'Black Realty'),
(15, 'Oscar Grey', 'oscar.grey@example.com', '678-901-2346', 'Grey Realty'),
(16, 'Paul Blue', 'paul.blue@example.com', '789-012-3457', 'Blue Realty'),
(17, 'Quincy Red', 'quincy.red@example.com', '890-123-4568', 'Red Realty'),
(18, 'Rita Yellow', 'rita.yellow@example.com', '901-234-5679', 'Yellow Realty'),
(19, 'Sam Violet', 'sam.violet@example.com', '012-345-6790', 'Violet Realty'),
(20, 'Tina Pink', 'tina.pink@example.com', '123-456-7892', 'Pink Realty'),
(21, 'Uma Brown', 'uma.brown@example.com', '234-567-8903', 'Brown Realty'),
(22, 'Victor White', 'victor.white@example.com', '345-678-9014', 'White Realty');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientID`, `Name`, `Email`, `Phone`) VALUES
(1, 'Emma Watson', 'emma.watson@example.com', '111-111-1111'),
(2, 'Liam Neeson', 'liam.neeson@example.com', '222-222-2222'),
(3, 'Olivia Brown', 'olivia.brown@example.com', '333-333-3333'),
(4, 'Noah Wilson', 'noah.wilson@example.com', '444-444-4444'),
(5, 'Ava Smith', 'ava.smith@example.com', '555-555-5555'),
(6, 'James Johnson', 'james.johnson@example.com', '666-666-6666'),
(7, 'Isabella Garcia', 'isabella.garcia@example.com', '777-777-7777'),
(8, 'Mason Lee', 'mason.lee@example.com', '888-888-8888'),
(9, 'Sophia Martinez', 'sophia.martinez@example.com', '999-999-9999'),
(10, 'Jacob Anderson', 'jacob.anderson@example.com', '101-010-1010'),
(11, 'Mia Hernandez', 'mia.hernandez@example.com', '202-020-2020'),
(12, 'William Miller', 'william.miller@example.com', '303-030-3030'),
(13, 'Emily Davis', 'emily.davis@example.com', '404-040-4040'),
(14, 'Lucas Rodriguez', 'lucas.rodriguez@example.com', '505-050-5050'),
(15, 'Amelia Martinez', 'amelia.martinez@example.com', '606-060-6060'),
(16, 'Benjamin Wilson', 'benjamin.wilson@example.com', '707-070-7070'),
(17, 'Charlotte Garcia', 'charlotte.garcia@example.com', '808-080-8080'),
(18, 'Elijah Brown', 'elijah.brown@example.com', '909-090-9090'),
(19, 'Harper Thomas', 'harper.thomas@example.com', '111-111-1212'),
(20, 'Aiden Jones', 'aiden.jones@example.com', '212-212-2121'),
(21, 'Abigail White', 'abigail.white@example.com', '313-313-3131');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `InquiryID` int(11) NOT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `PropertyID` int(11) DEFAULT NULL,
  `InquiryDate` date NOT NULL,
  `Message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`InquiryID`, `ClientID`, `PropertyID`, `InquiryDate`, `Message`) VALUES
(1, 1, 1, '2023-01-10', 'Interested in scheduling a visit for this property.'),
(2, 2, 2, '2023-01-12', 'Would like more details about the neighborhood.'),
(3, 3, 3, '2023-02-15', 'Is the property still available for sale?'),
(4, 4, 4, '2023-03-20', 'Can you provide more photos of the interior?'),
(5, 5, 5, '2023-03-25', 'Looking for information on local schools.'),
(6, 6, 6, '2023-04-05', 'Is there any room for negotiation on the price?'),
(7, 7, 7, '2023-04-10', 'What are the estimated property taxes?'),
(8, 8, 8, '2023-05-15', 'Is there a virtual tour available?'),
(9, 9, 9, '2023-06-01', 'Interested in making an offer.'),
(10, 10, 10, '2023-06-20', 'What is the age of the property?'),
(11, 11, 11, '2023-07-10', 'Are there any recent renovations?'),
(12, 12, 12, '2023-08-15', 'What are the HOA fees, if any?'),
(13, 13, 13, '2023-09-01', 'Can you arrange a viewing this weekend?'),
(14, 14, 14, '2023-09-10', 'Does the property have a backyard?'),
(15, 15, 15, '2023-10-05', 'Is the property pet-friendly?'),
(16, 16, 16, '2023-10-20', 'Are there any plans for local development?'),
(17, 17, 17, '2023-11-05', 'Can you send me the floor plan?'),
(18, 18, 18, '2023-11-15', 'What is the condition of the roof?'),
(19, 19, 19, '2023-12-01', 'Is the property close to public transport?'),
(20, 20, 20, '2023-12-10', 'What is the parking situation at the property?');

-- --------------------------------------------------------

--
-- Table structure for table `leases`
--

CREATE TABLE `leases` (
  `LeaseID` int(11) NOT NULL,
  `PropertyID` int(11) DEFAULT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `LeaseStartDate` date NOT NULL,
  `LeaseEndDate` date NOT NULL,
  `RentAmount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leases`
--

INSERT INTO `leases` (`LeaseID`, `PropertyID`, `ClientID`, `LeaseStartDate`, `LeaseEndDate`, `RentAmount`) VALUES
(1, 1, 1, '2023-01-01', '2023-12-31', 1500.00),
(2, 2, 2, '2023-02-01', '2024-01-31', 1600.00),
(3, 3, 3, '2023-03-01', '2024-02-29', 1700.00),
(4, 4, 4, '2023-04-01', '2024-03-31', 1800.00),
(5, 5, 5, '2023-05-01', '2024-04-30', 1900.00),
(6, 6, 6, '2023-06-01', '2024-05-31', 2000.00),
(7, 7, 7, '2023-07-01', '2024-06-30', 2100.00),
(8, 8, 8, '2023-08-01', '2024-07-31', 2200.00),
(9, 9, 9, '2023-09-01', '2024-08-31', 2300.00),
(10, 10, 10, '2023-10-01', '2024-09-30', 2400.00),
(11, 11, 11, '2023-11-01', '2024-10-31', 2500.00),
(12, 12, 12, '2023-12-01', '2024-11-30', 2600.00),
(13, 13, 13, '2024-01-01', '2024-12-31', 2700.00),
(14, 14, 14, '2024-02-01', '2025-01-31', 2800.00),
(15, 15, 15, '2024-03-01', '2025-02-28', 2900.00),
(16, 16, 16, '2024-04-01', '2025-03-31', 3000.00),
(17, 17, 17, '2024-05-01', '2025-04-30', 3100.00),
(18, 18, 18, '2024-06-01', '2025-05-31', 3200.00),
(19, 19, 19, '2024-07-01', '2025-06-30', 3300.00),
(20, 20, 20, '2024-08-01', '2025-07-31', 3400.00);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `PropertyID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZIP` varchar(10) DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `AgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`PropertyID`, `Address`, `City`, `State`, `ZIP`, `Price`, `AgentID`) VALUES
(1, '101 Elm Street', 'Springfield', 'IL', '62701', 250000.00, 1),
(2, '202 Maple Avenue', 'Springfield', 'IL', '62702', 275000.00, 2),
(3, '303 Oak Drive', 'Lincoln', 'NE', '68501', 300000.00, 3),
(4, '404 Pine Road', 'Omaha', 'NE', '68102', 320000.00, 4),
(5, '505 Cedar Lane', 'Madison', 'WI', '53703', 350000.00, 5),
(6, '606 Birch Boulevard', 'Madison', 'WI', '53704', 275000.00, 6),
(7, '707 Spruce Circle', 'Chicago', 'IL', '60601', 450000.00, 7),
(8, '808 Redwood Way', 'Chicago', 'IL', '60602', 500000.00, 8),
(9, '909 Ash Street', 'Detroit', 'MI', '48201', 150000.00, 9),
(10, '1010 Chestnut Avenue', 'Detroit', 'MI', '48202', 175000.00, 10),
(11, '1111 Cypress Drive', 'Columbus', 'OH', '43201', 325000.00, 11),
(12, '1212 Fir Road', 'Columbus', 'OH', '43202', 290000.00, 12),
(13, '1313 Hemlock Lane', 'Austin', 'TX', '73301', 600000.00, 13),
(14, '1414 Juniper Circle', 'Austin', 'TX', '73302', 640000.00, 14),
(15, '1515 Laurel Way', 'Phoenix', 'AZ', '85001', 400000.00, 15),
(16, '1616 Magnolia Street', 'Phoenix', 'AZ', '85002', 420000.00, 16),
(17, '1717 Palm Avenue', 'Tampa', 'FL', '33601', 450000.00, 17),
(18, '1818 Willow Boulevard', 'Tampa', 'FL', '33602', 475000.00, 18),
(19, '1919 Poplar Drive', 'Atlanta', 'GA', '30301', 375000.00, 19),
(20, '2020 Sycamore Road', 'Atlanta', 'GA', '30302', 390000.00, 20);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SaleID` int(11) NOT NULL,
  `PropertyID` int(11) DEFAULT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `SaleDate` date NOT NULL,
  `SalePrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SaleID`, `PropertyID`, `ClientID`, `SaleDate`, `SalePrice`) VALUES
(1, 1, 1, '2023-01-10', 245000.00),
(2, 2, 2, '2023-01-20', 270000.00),
(3, 3, 3, '2023-02-05', 295000.00),
(4, 4, 4, '2023-03-15', 310000.00),
(5, 5, 5, '2023-03-25', 340000.00),
(6, 6, 6, '2023-04-05', 260000.00),
(7, 7, 7, '2023-04-15', 445000.00),
(8, 8, 8, '2023-05-10', 490000.00),
(9, 9, 9, '2023-06-01', 145000.00),
(10, 10, 10, '2023-06-20', 170000.00),
(11, 11, 11, '2023-07-10', 320000.00),
(12, 12, 12, '2023-08-15', 285000.00),
(13, 13, 13, '2023-09-01', 590000.00),
(14, 14, 14, '2023-09-20', 630000.00),
(15, 15, 15, '2023-10-10', 390000.00),
(16, 16, 16, '2023-10-25', 410000.00),
(17, 17, 17, '2023-11-05', 440000.00),
(18, 18, 18, '2023-11-20', 470000.00),
(19, 19, 19, '2023-12-01', 365000.00),
(20, 20, 20, '2023-12-10', 380000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`AgentID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`InquiryID`),
  ADD KEY `ClientID` (`ClientID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `leases`
--
ALTER TABLE `leases`
  ADD PRIMARY KEY (`LeaseID`),
  ADD KEY `PropertyID` (`PropertyID`),
  ADD KEY `ClientID` (`ClientID`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`PropertyID`),
  ADD KEY `AgentID` (`AgentID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SaleID`),
  ADD KEY `PropertyID` (`PropertyID`),
  ADD KEY `ClientID` (`ClientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `AgentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `InquiryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `leases`
--
ALTER TABLE `leases`
  MODIFY `LeaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `PropertyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `SaleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD CONSTRAINT `inquiries_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `clients` (`ClientID`),
  ADD CONSTRAINT `inquiries_ibfk_2` FOREIGN KEY (`PropertyID`) REFERENCES `properties` (`PropertyID`);

--
-- Constraints for table `leases`
--
ALTER TABLE `leases`
  ADD CONSTRAINT `leases_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `properties` (`PropertyID`),
  ADD CONSTRAINT `leases_ibfk_2` FOREIGN KEY (`ClientID`) REFERENCES `clients` (`ClientID`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`AgentID`) REFERENCES `agents` (`AgentID`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `properties` (`PropertyID`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`ClientID`) REFERENCES `clients` (`ClientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
