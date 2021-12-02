-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 08:22 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_reservations`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `addressID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `line1` varchar(60) NOT NULL,
  `line2` varchar(60) DEFAULT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zipCode` varchar(10) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`addressID`, `customerID`, `line1`, `line2`, `city`, `state`, `zipCode`, `phone`, `disabled`) VALUES
(1, 1, '100 East Ridgewood Ave.', '', 'Paramus', 'NJ', '07652', '201-653-4472', 0),
(2, 1, '21 Rosewood Rd.', '', 'Woodcliff Lake', 'NJ', '07677', '201-653-4472', 0),
(3, 2, '16285 Wendell St.', '', 'Omaha', 'NE', '68135', '402-896-2576', 0),
(4, 2, '16285 Wendell St.', '', 'Omaha', 'NE', '68135', '402-896-2576', 0),
(5, 3, '19270 NW Cornell Rd.', '', 'Beaverton', 'OR', '97006', '503-654-1291', 0),
(6, 3, '19270 NW Cornell Rd.', '', 'Beaverton', 'OR', '97006', '503-654-1291', 0),
(7, 4, '203 S Love Chapel Rd.', '', 'Stanfield', 'NC', '28163', '704-888-1747', 0),
(8, 4, '203 S Love Chapel Rd.', '', 'Stanfield', 'NC', '28163', '704-888-1747', 0),
(9, 5, '203 S. Love Chapel Rd.', '', 'Stanfield', 'NC', '28163', '704-888-1747', 0),
(10, 5, '203 S. Love Chapel Rd.', '', 'Stanfield', 'NC', '28163', '704-888-1747', 0),
(11, 6, '123 Main St.', '', 'Auburn', 'AL', '37507', '704-888-2727', 0),
(12, 6, '123 Main St.', '', 'Auburn', 'AL', '37507', '704-888-2727', 0),
(13, 7, '123 Piazza', '', 'Charlotte', 'NC', '28227', '704-545-9911', 0),
(14, 7, '123 Piazza', '', 'Charlotte', 'NC', '28227', '704-545-9911', 0);

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `adminID` int(11) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`adminID`, `emailAddress`, `password`, `firstName`, `lastName`) VALUES
(1, 'admin@myguitarshop.com', '6a718fbd768c2378b511f8249b54897f940e9022', 'Admin', 'User'),
(4, 'mlittle67@gmail.com', 'f428260ce4ab2f189735f9736b51446ade93d894', 'Mark', 'Little');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'Large Rooms'),
(2, 'Medium/Small Rooms'),
(3, 'Outdoor Rooms');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `shipAddressID` int(11) DEFAULT NULL,
  `billingAddressID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `emailAddress`, `password`, `firstName`, `lastName`, `shipAddressID`, `billingAddressID`) VALUES
(1, 'allan.sherwood@yahoo.com', '650215acec746f0e32bdfff387439eefc1358737', 'Allan', 'Sherwood', 1, 2),
(2, 'barryz@gmail.com', '3f563468d42a448cb1e56924529f6e7bbe529cc7', 'Barry', 'Zimmer', 3, 4),
(3, 'christineb@solarone.com', 'ed19f5c0833094026a2f1e9e6f08a35d26037066', 'Christine', 'Brown', 5, 6),
(5, 'mark.little@outlook.com', '6263de3db63f6fa04dd3f0c11983d71c96fbbb03', 'Mark', 'Little', 9, 10),
(6, 'JBlow@jblow.com', '3abe3bff866f45baf9aa9818bbb7ffbfcbbb5c05', 'Joe', 'Blow', 11, 12),
(7, 'Mona@monalisa.com', '87d3aa8462dfd6ea52d9971bee85bdce95b9046c', 'Mona', 'Lisa', 13, 14);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `itemID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `itemPrice` decimal(10,2) NOT NULL,
  `discountAmount` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`itemID`, `orderID`, `productID`, `itemPrice`, `discountAmount`, `quantity`) VALUES
(1, 1, 2, '399.00', '39.90', 1),
(2, 2, 4, '699.00', '69.90', 1),
(3, 3, 3, '499.00', '49.90', 1),
(4, 3, 6, '549.99', '0.00', 1),
(5, 4, 1, '699.00', '209.70', 1),
(6, 5, 1, '699.00', '209.70', 1),
(7, 6, 2, '200.00', '20.00', 1),
(8, 7, 4, '125.00', '12.50', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `shipAmount` decimal(10,2) NOT NULL,
  `taxAmount` decimal(10,2) NOT NULL,
  `shipDate` datetime DEFAULT NULL,
  `shipAddressID` int(11) NOT NULL,
  `cardType` int(11) NOT NULL,
  `cardNumber` char(16) NOT NULL,
  `cardExpires` char(7) NOT NULL,
  `billingAddressID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `orderDate`, `shipAmount`, `taxAmount`, `shipDate`, `shipAddressID`, `cardType`, `cardNumber`, `cardExpires`, `billingAddressID`) VALUES
(6, 6, '2021-11-27 07:12:19', '5.00', '0.00', '2021-11-27 07:15:49', 11, 1, '0863973512457890', '08/2023', 12);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `listPrice` decimal(10,2) NOT NULL,
  `discountPercent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dateAdded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `productCode`, `productName`, `description`, `listPrice`, `discountPercent`, `dateAdded`) VALUES
(1, 2, 'strat', 'Halter Meeting Room', 'The Halter Meeting Room has dedicated access to our surface parking, which makes catering options convenient. This flexibility also makes it a good choice for booth exhibits, fundraisers, and community gatherings. \r\n\r\nRoom details:<br>\r\n* Dimensions: 100\' x 150\'<br>\r\n* Seating capacity: 50 classroom-style, or 40 in a boardroom or horseshoe arrangement <br>\r\n* Furnishings: 15 round tables; 10 rectangular tables; 50 chairs <br>\r\n* Other equipment: Podium with VGA and HDMI connections to overhead projector and audio jack to overhead speakers; pull-down projector screen <br>\r\n* Internet access: Wi-Fi and wired <br>\r\n* Daily rental rate: $150 <br>', '150.00', '10.00', '2016-10-30 09:32:40'),
(2, 1, 'les_paul', 'Eastside Room', 'The Eastside Room is our largest indoor multi-purpose space, and is suitable for weddings, fundraisers, businesses conferences, and other community events.\r\n\r\nRoom details:<br>\r\n\r\n* Dimensions: 150\' x 150\'<br>\r\n* Seating capacity: 100 classroom-style, or 75 in a boardroom or horseshoe arrangement <br>\r\n* Furnishings: 20 round tables; 10 rectangular tables; 100 chairs <br>\r\n* Other equipment: Podium with VGA and HDMI connections to overhead projector and audio jack to overhead speakers; pull-down projector screen <br>\r\n* Internet access: Wi-Fi and wired <br>\r\n* Daily rental rate: $200 <br>', '200.00', '10.00', '2016-12-05 16:33:13'),
(3, 2, 'sg', 'Prisma Health Room', 'The Prisma Health Room is a flexible space that can accommodate up to 50 seated guests for a comfortable meeting or dining experience.\r\n\r\nRoom details:<br>\r\n\r\n* Dimensions: 50\' x 75\'\r\n* Seating capacity: 50 classroom-style, or 40 in a boardroom or horseshoe arrangement\r\n* Furnishings: 10 round tables; 10 rectangular tables; 50 chairs\r\n* Other equipment: Podium with VGA and HDMI connections to overhead projector and audio jack to overhead speakers; pull-down projector screen\r\n* Internet access: Wi-Fi and wired\r\n* Daily rental rate: $130\r\n', '130.00', '10.00', '2017-02-04 11:04:31'),
(4, 3, 'fg700s', 'Symmes Terrace', 'The Symmes Terrace provide an informal location with natural lighting where guests can gather and enjoy each other\'s company. The terrace is easily accessed via a path from the Center parking lot, and has water, restroom, and electrical access.\r\n\r\nRoom details:<br>\r\n* Dimensions: 50\' x 150\'<br>\r\n* Seating capacity: 50 in a staggered arrangement <br>\r\n* Furnishings: 15 round tables; 50 chairs <br>\r\n* Other equipment: None <br>\r\n* Internet access: Wi-Fi <br>\r\n* Daily rental rate: $125 <br>', '125.00', '10.00', '2017-06-01 11:12:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`addressID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `emailAddress` (`emailAddress`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD UNIQUE KEY `productCode` (`productCode`),
  ADD KEY `categoryID` (`categoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `addressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
