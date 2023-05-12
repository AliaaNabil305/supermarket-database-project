-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 01:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_id` int(11) NOT NULL,
  `Branch_address` varchar(30) NOT NULL,
  `Mng_SSN` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_id`, `Branch_address`, `Mng_SSN`) VALUES
(101, '123 Main St', '111111111'),
(102, '456 Park Ave', '123456789'),
(103, '254 Marint St', '301422309'),
(104, '555 Elm St', '349511243'),
(105, '777 5th Ave', '555555555'),
(106, '888 6th St', '567890123'),
(107, '999 7th Ave', '621870315'),
(108, '222 8th St', '768921492'),
(109, '333 9th Ave', '789012345'),
(110, '444 10th St', '789023911');

-- --------------------------------------------------------

--
-- Table structure for table `call_center`
--

CREATE TABLE `call_center` (
  `SSN` char(9) NOT NULL,
  `Languages` varchar(15) NOT NULL,
  `Branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `call_center`
--

INSERT INTO `call_center` (`SSN`, `Languages`, `Branch_id`) VALUES
('321404873', 'English', 101),
('444444444', 'English', 102),
('456789012', 'French', 103),
('492132056', 'German', 104),
('679437820', 'Italian', 105),
('901234567', 'English', 106);

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `SSN` char(9) NOT NULL,
  `NumberofOrders` int(11) NOT NULL,
  `Branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`SSN`, `NumberofOrders`, `Branch_id`) VALUES
('124489354', 35, 101),
('222222222', 50, 102),
('555342556', 65, 104),
('678901234', 80, 105),
('876841090', 45, 106);

-- --------------------------------------------------------

--
-- Table structure for table `contain`
--

CREATE TABLE `contain` (
  `Item_Id` int(11) NOT NULL,
  `Branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contain`
--

INSERT INTO `contain` (`Item_Id`, `Branch_id`) VALUES
(2, 102),
(2, 107),
(3, 103),
(3, 108),
(4, 104),
(4, 109),
(5, 105),
(5, 110),
(6, 101),
(6, 106),
(7, 102),
(7, 107),
(8, 103),
(8, 108),
(9, 104),
(9, 109),
(10, 105),
(10, 110),
(11, 101),
(11, 106),
(12, 102),
(12, 107),
(13, 103),
(13, 108),
(14, 104),
(14, 109),
(15, 105),
(15, 110),
(16, 106),
(19, 109),
(20, 110),
(21, 101),
(22, 102),
(23, 103),
(24, 104),
(25, 105);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `SSN` char(9) NOT NULL,
  `First_Name` varchar(15) NOT NULL,
  `Last_Name` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` char(1) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Job_Type` varchar(15) NOT NULL,
  `Join_Date` date NOT NULL,
  `Phone_Number` char(11) NOT NULL
) ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`SSN`, `First_Name`, `Last_Name`, `Age`, `Sex`, `Salary`, `Address`, `Job_Type`, `Join_Date`, `Phone_Number`) VALUES
('012345678', 'Anna', 'Taylor', 23, 'F', 40000, '777 Oak St', 'Field Worker', '2020-12-01', '01234567890'),
('111111111', 'Sam', 'Johnson', 31, 'M', 95000, '888 Pine St', 'Manager', '2022-04-01', '11111111123'),
('123456789', 'John', 'Doe', 25, 'M', 95000, '123 Main St', 'Manager', '2022-01-01', '12345678901'),
('124489354', 'Lisa', 'Garcia', 23, 'F', 15000, '333 Cherry St', 'Cashier', '2023-02-20', '54741605202'),
('222222222', 'Mary', 'Williams', 26, 'F', 18000, '999 Oak St', 'Cashier', '2021-03-15', '22222222234'),
('234567890', 'Jane', 'Smith', 28, 'F', 15000, '456 Elm St', 'Cashier', '2021-05-02', '23456789012'),
('301422309', 'Peter', 'Lee', 30, 'M', 80000, '444 Cedar St', 'Manager', '2021-09-01', '60467938844'),
('321404873', 'Emily', 'Jones', 24, 'F', 35000, '111 Pine St', 'Call Center', '2022-03-15', '41078309542'),
('333333333', 'Peter', 'Brown', 29, 'M', 32000, '101 Main St', 'Field Worker', '2020-09-01', '33333333345'),
('345678901', 'Bob', 'Johnson', 30, 'M', 35000, '789 Oak St', 'Field Worker', '2020-10-01', '34567890123'),
('349511243', 'Jacob', 'Davis', 35, 'M', 95000, '303 Oak St', 'Manager', '2021-06-01', '24581133882'),
('444444444', 'Rachel', 'Lee', 21, 'F', 25000, '202 Elm St', 'Call Center', '2023-03-01', '44444444456'),
('456789012', 'Sarah', 'Lee', 22, 'F', 25000, '111 Pine St', 'Call Center', '2022-03-15', '45678901234'),
('491223309', 'William', 'Clark', 29, 'M', 35000, '101 Main St', 'Field Worker', '2020-09-01', '25170433544'),
('492132056', 'Mark', 'Taylor', 26, 'M', 22000, '666 Birch St', 'Call Center', '2023-01-15', '52013829833'),
('555342556', 'Samantha', 'Johnson', 31, 'F', 25000, '456 Elm St', 'Cashier', '2021-05-02', '24890754160'),
('555555555', 'Chris', 'Davis', 48, 'M', 95000, '303 Oak St', 'Manager', '2021-06-01', '55555555567'),
('567890123', 'Mike', 'Brown', 45, 'M', 95000, '222 Maple St', 'Manager', '2021-07-04', '56789012345'),
('621870315', 'Samuel', 'Jones', 31, 'M', 95000, '888 Pine St', 'Manager', '2022-04-01', '10947423587'),
('678901234', 'Lisa', 'Davis', 19, 'F', 12000, '333 Cherry St', 'Cashier', '2023-02-20', '67890123456'),
('679437820', 'Elizabeth', 'Gonzalez', 23, 'F', 25000, '202 Elm St', 'Call Center', '2023-03-01', '69823579998'),
('689193415', 'Maria', 'Brown', 22, 'F', 40000, '777 Oak St', 'Field Worker', '2020-12-01', '20295128545'),
('768921492', 'Adam', 'Smith', 29, 'M', 80000, '123 Main St', 'Manager', '2022-02-01', '56821234780'),
('789012345', 'Tom', 'Smith', 50, 'M', 98000, '444 Cedar St', 'Manager', '2021-09-01', '78901234567'),
('789023911', 'Tom', 'Robinson', 47, 'M', 95000, '222 Maple St', 'Manager', '2021-07-04', '86154233891'),
('872947308', 'Sophia', 'Nguyen', 28, 'F', 38000, '555 Walnut St', 'Field Worker', '2022-05-01', '71533095162'),
('876841090', 'Emily', 'Davis', 26, 'F', 20000, '999 Oak St', 'Cashier', '2021-03-15', '73816429804'),
('890123456', 'Emily', 'Wilson', 27, 'F', 35000, '555 Walnut St', 'Field Worker', '2022-05-01', '89012345678'),
('901234567', 'Jack', 'Green', 24, 'M', 22000, '666 Birch St', 'Call Center', '2023-01-15', '90123456789'),
('999331234', 'Caleb', 'Davis', 25, 'M', 40000, '789 Oak St', 'Field Worker', '2020-10-01', '41260701988');

-- --------------------------------------------------------

--
-- Table structure for table `field_worker`
--

CREATE TABLE `field_worker` (
  `SSN` char(9) NOT NULL,
  `Shift_Time` time NOT NULL,
  `W_ADDRESS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `field_worker`
--

INSERT INTO `field_worker` (`SSN`, `Shift_Time`, `W_ADDRESS`) VALUES
('012345678', '08:00:00', '123 Main St'),
('333333333', '12:00:00', '456 Elm St'),
('345678901', '16:00:00', '789 Oak St'),
('491223309', '08:00:00', '321 Maple Ave'),
('689193415', '12:00:00', '654 Pine St'),
('872947308', '16:00:00', '123 Main St'),
('890123456', '08:00:00', '456 Elm St'),
('999331234', '12:00:00', '789 Oak St');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Invoice_ID` int(11) NOT NULL,
  `Invoice_Date` timestamp NOT NULL DEFAULT curdate(),
  `Invoice_price` decimal(10,2) NOT NULL,
  `Branch_id` int(11) NOT NULL,
  `Sup_PhoneNo` char(11) NOT NULL
) ;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Invoice_ID`, `Invoice_Date`, `Invoice_price`, `Branch_id`, `Sup_PhoneNo`) VALUES
(1, '2023-05-01 07:00:00', 100.50, 101, '01234567890'),
(2, '2023-05-01 08:00:00', 50.75, 102, '09876543210'),
(3, '2023-05-01 09:00:00', 75.25, 103, '12345678901'),
(4, '2023-05-01 10:00:00', 200.00, 104, '23456789012'),
(5, '2023-05-01 11:00:00', 150.00, 105, '34567890123'),
(6, '2023-05-01 12:00:00', 300.00, 106, '45678901234'),
(7, '2023-05-01 13:00:00', 1000.00, 107, '56789012345'),
(8, '2023-05-02 07:00:00', 500.00, 108, '65432109876'),
(9, '2023-05-02 08:00:00', 250.50, 109, '67890123456'),
(10, '2023-05-02 09:00:00', 150.75, 110, '76543210987'),
(11, '2023-05-02 10:00:00', 80.25, 101, '78901234567'),
(12, '2023-05-02 11:00:00', 180.00, 102, '87654321098'),
(13, '2023-05-02 12:00:00', 250.00, 103, '89012345678'),
(14, '2023-05-02 13:00:00', 750.00, 104, '90123456789'),
(15, '2023-05-03 07:00:00', 900.00, 105, '98765432109'),
(16, '2023-05-03 08:00:00', 450.50, 106, '01234567890'),
(17, '2023-05-03 09:00:00', 175.75, 107, '09876543210'),
(18, '2023-05-03 10:00:00', 300.25, 108, '12345678901'),
(19, '2023-05-04 13:00:00', 420.25, 109, '34567890123'),
(20, '2023-05-05 17:00:00', 1500.00, 110, '45678901234');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Item_Id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Item_type` varchar(20) NOT NULL,
  `Grocery_type` varchar(20) DEFAULT NULL,
  `Food_type` varchar(20) DEFAULT NULL,
  `D_TYPE` varchar(20) DEFAULT NULL,
  `Sup_PhoneNo` char(11) NOT NULL,
  `R_serial` char(6) DEFAULT NULL
) ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Item_Id`, `Amount`, `Price`, `Item_type`, `Grocery_type`, `Food_type`, `D_TYPE`, `Sup_PhoneNo`, `R_serial`) VALUES
(2, 5, 2.99, 'Food_type', NULL, 'Dessert', NULL, '78901234567', 'RS016P'),
(3, 2, 7.49, 'Grocery_type', 'Canned Goods', NULL, NULL, '23456789012', NULL),
(4, 3, 0.99, 'D_TYPE', NULL, NULL, 'Persil', '90123456789', 'RS007G'),
(5, 1, 4.49, 'Food_type', NULL, 'Bread', NULL, '34567890123', NULL),
(6, 4, 3.99, 'Grocery_type', 'Snacks', NULL, NULL, '45678901234', 'RS013M'),
(7, 1, 12.99, 'Grocery_type', 'Meat', NULL, NULL, '23456789012', 'RS024X'),
(8, 2, 8.99, 'Food_type', NULL, 'Seafood', NULL, '78901234567', 'RS026Z'),
(9, 6, 1.99, 'Grocery_type', 'Beverages', NULL, NULL, '90123456789', 'RS018R'),
(10, 2, 5.49, 'Grocery_type', 'Produce', NULL, NULL, '01234567890', 'RS004D'),
(11, 1, 3.99, 'Food_type', NULL, 'Snacks', NULL, '56789012345', NULL),
(12, 5, 0.99, 'Grocery_type', 'Dairy', NULL, NULL, '87654321098', 'RS007G'),
(13, 2, 2.99, 'Grocery_type', 'Bakery', NULL, NULL, '65432109876', 'RS013M'),
(14, 3, 4.99, 'Food_type', NULL, 'Protein', NULL, '89012345678', 'RS018R'),
(15, 1, 9.99, 'Grocery_type', 'Produce', NULL, NULL, '34567890123', 'RS027A'),
(16, 2, 2.49, 'Food_type', NULL, 'Dessert', NULL, '23456789012', NULL),
(19, 1, 2.00, 'Grocery_type', 'Snacks', NULL, NULL, '34567890123', 'RS003C'),
(20, 4, 1.25, 'D_TYPE', NULL, NULL, 'Shampoo', '45678901234', 'RS004D'),
(21, 5, 2.99, 'Grocery_type', 'Dairy', NULL, NULL, '56789012345', 'RS005E'),
(22, 1, 8.75, 'Food_type', NULL, 'Steak', NULL, '65432109876', 'RS006F'),
(23, 2, 2.50, 'Grocery_type', 'Snacks', NULL, NULL, '67890123456', 'RS007G'),
(24, 1, 1.99, 'Grocery_type', 'Beverages', NULL, NULL, '76543210987', 'RS008H'),
(25, 3, 4.50, 'Food_type', NULL, 'Burger', NULL, '78901234567', 'RS029W'),
(26, 2, 3.99, 'Grocery_type', 'Dairy', NULL, NULL, '87654321098', 'RS029W'),
(27, 1, 9.99, 'D_TYPE', NULL, NULL, 'Toothpaste', '89012345678', 'RS030B'),
(28, 2, 2.25, 'Grocery_type', 'Snacks', NULL, NULL, '90123456789', 'RS018R'),
(29, 1, 3.75, 'Food_type', NULL, 'Pasta', NULL, '98765432109', 'RS018R');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Mng_email` varchar(30) NOT NULL,
  `Mng_StartDate` date NOT NULL,
  `SSN` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`Mng_email`, `Mng_StartDate`, `SSN`) VALUES
('Sam.Johnson@company.com', '2022-10-01', '111111111'),
('John.Doe@company.com', '2022-07-01', '123456789'),
('Peter.Lee@company.com', '2022-03-01', '301422309'),
('Jacob.Davis@company.com', '2021-12-01', '349511243'),
('Chris.Davis@company.com', '2021-12-01', '555555555'),
('Mike.Brown@company.com', '2022-01-04', '567890123'),
('Samuel.Jones@company.com', '2022-10-01', '621870315'),
('Adam.Smith@company.com', '2022-08-01', '768921492'),
('Tom.Smith@company.com', '2022-03-01', '789012345'),
('Tom.Robinson@company.com', '2022-01-04', '789023911');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `R_serial` char(6) NOT NULL,
  `Total_Price` decimal(10,2) NOT NULL,
  `Taxes` decimal(2,2) NOT NULL,
  `R_Time` time NOT NULL,
  `Branch_id` int(11) NOT NULL
) ;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`R_serial`, `Total_Price`, `Taxes`, `R_Time`, `Branch_id`) VALUES
('RS003C', 85.00, 0.10, '11:45:00', 103),
('RS004D', 70.75, 0.05, '16:30:00', 104),
('RS005E', 12.99, 0.00, '13:20:00', 105),
('RS006F', 43.20, 0.15, '19:00:00', 106),
('RS007G', 5.00, 0.00, '10:10:00', 107),
('RS008H', 60.00, 0.20, '12:30:00', 108),
('RS009I', 20.25, 0.00, '15:15:00', 109),
('RS010J', 39.99, 0.10, '18:00:00', 110),
('RS013M', 75.00, 0.00, '08:30:00', 103),
('RS014N', 27.90, 0.08, '13:10:00', 104),
('RS015O', 10.99, 0.00, '16:00:00', 105),
('RS016P', 45.60, 0.15, '11:20:00', 106),
('RS017Q', 2.50, 0.00, '14:10:00', 107),
('RS018R', 90.00, 0.20, '09:30:00', 108),
('RS019S', 18.75, 0.00, '12:15:00', 109),
('RS020T', 75.99, 0.10, '15:00:00', 110),
('RS023W', 115.00, 0.00, '12:00:00', 103),
('RS024X', 15.90, 0.08, '14:40:00', 104),
('RS025Y', 8.99, 0.00, '17:30:00', 105),
('RS026Z', 32.60, 0.15, '11:10:00', 106),
('RS027A', 3.50, 0.00, '13:50:00', 107),
('RS028B', 50.00, 0.20, '08:00:00', 108),
('RS029W', 350.20, 0.25, '12:00:00', 105),
('RS030B', 435.50, 0.30, '11:00:00', 103);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `W_ADDRESS` varchar(30) NOT NULL,
  `Item_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`W_ADDRESS`, `Item_Id`) VALUES
('123 Main St', 2),
('123 Main St', 4),
('123 Main St', 7),
('123 Main St', 8),
('123 Main St', 10),
('123 Main St', 11),
('123 Main St', 16),
('123 Main St', 20),
('123 Main St', 22),
('321 Maple Ave', 3),
('321 Maple Ave', 5),
('321 Maple Ave', 6),
('321 Maple Ave', 8),
('321 Maple Ave', 9),
('321 Maple Ave', 11),
('321 Maple Ave', 15),
('321 Maple Ave', 16),
('321 Maple Ave', 25),
('456 Elm St', 5),
('456 Elm St', 6),
('456 Elm St', 9),
('456 Elm St', 10),
('456 Elm St', 12),
('456 Elm St', 15),
('456 Elm St', 19),
('456 Elm St', 21),
('456 Elm St', 22),
('654 Pine St', 2),
('654 Pine St', 4),
('654 Pine St', 11),
('654 Pine St', 12),
('654 Pine St', 14),
('654 Pine St', 19),
('654 Pine St', 21),
('654 Pine St', 24),
('654 Pine St', 25),
('789 Oak St', 2),
('789 Oak St', 3),
('789 Oak St', 13),
('789 Oak St', 14),
('789 Oak St', 24);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Sup_PhoneNo` char(11) NOT NULL,
  `Sup_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Sup_PhoneNo`, `Sup_name`) VALUES
('01234567890', 'Sirius Cybernetics Corporation'),
('09876543210', 'MomCorp'),
('12345678901', 'Acme Corporation'),
('23456789012', 'Globex Corporation'),
('34567890123', 'Umbrella Corporation'),
('45678901234', 'Wayne Enterprises'),
('56789012345', 'Stark Industries'),
('65432109876', 'Aperture Science'),
('67890123456', 'LexCorp'),
('76543210987', 'Cyberdyne Systems'),
('78901234567', 'Oscorp Industries'),
('87654321098', 'Weyland-Yutani Corporation'),
('89012345678', 'Spacely Sprockets'),
('90123456789', 'Initech Corporation'),
('98765432109', 'Tyrell Corporation');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `W_ADDRESS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`W_ADDRESS`) VALUES
('123 Main St'),
('321 Maple Ave'),
('456 Elm St'),
('654 Pine St'),
('789 Oak St');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_id`),
  ADD UNIQUE KEY `Branch_address` (`Branch_address`),
  ADD KEY `Mng_SSN` (`Mng_SSN`);

--
-- Indexes for table `call_center`
--
ALTER TABLE `call_center`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `contain`
--
ALTER TABLE `contain`
  ADD PRIMARY KEY (`Item_Id`,`Branch_id`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SSN`),
  ADD UNIQUE KEY `Phone_Number` (`Phone_Number`);

--
-- Indexes for table `field_worker`
--
ALTER TABLE `field_worker`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `W_ADDRESS` (`W_ADDRESS`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Invoice_ID`),
  ADD KEY `Sup_PhoneNo` (`Sup_PhoneNo`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Item_Id`),
  ADD KEY `Sup_PhoneNo` (`Sup_PhoneNo`),
  ADD KEY `R_serial` (`R_serial`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`R_serial`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`W_ADDRESS`,`Item_Id`),
  ADD KEY `Item_Id` (`Item_Id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Sup_PhoneNo`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`W_ADDRESS`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`Mng_SSN`) REFERENCES `manager` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `call_center`
--
ALTER TABLE `call_center`
  ADD CONSTRAINT `call_center_ibfk_1` FOREIGN KEY (`Branch_id`) REFERENCES `branch` (`Branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `call_center_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cashier`
--
ALTER TABLE `cashier`
  ADD CONSTRAINT `cashier_ibfk_1` FOREIGN KEY (`Branch_id`) REFERENCES `branch` (`Branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cashier_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contain`
--
ALTER TABLE `contain`
  ADD CONSTRAINT `contain_ibfk_1` FOREIGN KEY (`Item_Id`) REFERENCES `item` (`Item_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contain_ibfk_2` FOREIGN KEY (`Branch_id`) REFERENCES `branch` (`Branch_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `field_worker`
--
ALTER TABLE `field_worker`
  ADD CONSTRAINT `field_worker_ibfk_1` FOREIGN KEY (`W_ADDRESS`) REFERENCES `warehouse` (`W_ADDRESS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `field_worker_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`Sup_PhoneNo`) REFERENCES `supplier` (`Sup_PhoneNo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`Branch_id`) REFERENCES `branch` (`Branch_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`Sup_PhoneNo`) REFERENCES `supplier` (`Sup_PhoneNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`R_serial`) REFERENCES `receipt` (`R_serial`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`Branch_id`) REFERENCES `branch` (`Branch_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`W_ADDRESS`) REFERENCES `warehouse` (`W_ADDRESS`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_ibfk_2` FOREIGN KEY (`Item_Id`) REFERENCES `item` (`Item_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
