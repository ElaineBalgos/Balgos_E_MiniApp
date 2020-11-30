-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 24, 2020 at 09:58 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniCooper`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cars`
--

CREATE TABLE `tbl_cars` (
  `ID` tinyint(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` text NOT NULL,
  `Included` text NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cars`
--

INSERT INTO `tbl_cars` (`ID`, `Name`, `Description`, `Included`, `Price`, `Video`) VALUES
(1, '2021 Mini Cooper 3 Door', 'It’s the original icon, reborn and reimagined for modern motoring. The MINI 3 door builds on 60+ years of timeless MINI design but comes equipped with a whole host of 21st-century tech features and practical touches to cater to your every need. Distinct by design and urban by nature, it’s made to stand out as you explore new corners of your city. And with its ultra-nimble go-kart feel, you’re sure to find something exciting around every turn.', 'CLASSIC\r\n16\" LOOP SPOKE SILVER\r\nAUTO-DIMMING REARVIEW MIRROR\r\nPANORAMIC SUNROOF\r\nHEATED FRONT SEATS\r\nSIRIUSXM SATELLITE RADIO TUNER*\r\nMOONWALK GREY METALLIC\r\nDUAL-ZONE AUTOMATIC CLIMATE CONTROL\r\nCARBON BLACK LEATHERETTE\r\nCOMFORT ACCESS KEYLESS ENTRY', 'CAD$26,456', 'https://youtu.be/ajO9OuBt8go'),
(2, '2021 Mini Cooper 3 Door', 'It’s the iconic MINI hatch, with two extra doors and a bit more room for passengers and cargo. Featuring our hallmark wheels-pushed stance and a low center of gravity, the MINI 5 door is designed to deliver the same level of corner-carving agility as its 3-door brother. But thanks to a surprisingly spacious interior equipped with added legroom and up to 941 Litres of cargo space, it’s as functional to own as it is fun to drive.', 'CLASSIC with\r\nPREMIER\r\n7-SPEED DOUBLE CLUTCH TRANSMISSION\r\nCONNECTED NAVIGATION\r\nMINI CONNECTED DRIVE SERVICES\r\nMINI NAVIGATION SYSTEM\r\nADVANCED REAL-TIME TRAFFIC INFORMATION\r\nREMOTE SERVICES\r\nAPPLE CARPLAY PREPARATION', 'CAD$27,756', 'https://youtu.be/zG7enBI4tFQ'),
(3, '2021 Mini Convertible', 'Open top. Open road. Open-ended possibilities. The MINI Convertible brings together three generations of MINI design, but boasts a personality that is all its own. With comfortable seating for four and a 3-in-1 Soft Top that can function as a sunroof or a full-fledged drop-top, it’s always ready for your next open-air adventure. And with a lively Twin Power Turbo Engine capable of hitting 100 km/h in a blistering 6.6 seconds (in the John Cooper Works variant), it’s sure to offer a few hair-raising thrills along the way.', 'CLASSIC, PREMIER with\r\nPREMIER+\r\n17\" COSMOS SPOKE SILVER\r\nLED FOG LIGHTS\r\nLED HEADLIGHTS WITH CORNERING FUNCTION\r\nCONNECTED NAVIGATION PLUS\r\nMINI CONNECTED DRIVE SERVICES\r\nMINI NAVIGATION SYSTEM\r\nADVANCED REAL-TIME TRAFFIC INFORMATION\r\nWIRELESS CHARGING WITH EXTENDED BLUETOOTH AND USB\r\nREMOTE SERVICES\r\nAPPLE CARPLAY PREPARATION\r\nMINI CONNECTED XL APP INTEGRATION\r\n8.8\" FULL-COLOUR TOUCHSCREEN\r\nFULL DIGITAL INSTRUMENT DISPLAY', 'CAD$33,056', 'https://youtu.be/GMtG5HEn5-E');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  MODIFY `ID` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
