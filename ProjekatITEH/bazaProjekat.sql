-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jun 30, 2016 at 03:52 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `projekatITEH`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `mejl` varchar(30) NOT NULL,
  `sifra` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`mejl`, `sifra`) VALUES
('Jovan@gmail.com', 'sifraAdmina123');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(10) NOT NULL,
  `start` varchar(50) DEFAULT NULL,
  `korisnikID` int(30) NOT NULL,
  `treningID` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `start`, `korisnikID`, `treningID`) VALUES
(105, '2016-05-06T08:00:00-05:00', 4, 3),
(106, '2016-05-05T21:30:00-05:00', 4, 1),
(111, '2016-06-30T08:00:00-05:00', 4, 3),
(112, '2016-06-01T08:00:00-05:00', 89, 1),
(113, '2016-06-14T08:00:00-05:00', 89, 2),
(114, '2016-07-01T10:30:00-05:00', 4, 2),
(115, '2016-07-06T13:00:00-05:00', 4, 2),
(116, '2016-07-06T08:00:00-05:00', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fejsbuk`
--

CREATE TABLE `fejsbuk` (
  `id` int(20) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fejsbuk`
--

INSERT INTO `fejsbuk` (`id`, `ime`, `prezime`) VALUES
(2147483647, 'Radomir', 'Popovic');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(10) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `mejl` varchar(30) NOT NULL,
  `pol` varchar(10) NOT NULL,
  `sifra` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `mejl`, `pol`, `sifra`) VALUES
(4, 'Radomir', 'Popovic', 'racke1993bg@gmail.com', 'option2', '123'),
(87, 'Luka', 'Lukovic', 'fa@fa.com', 'm', '4321467'),
(89, 'Milovan', 'Milovanovic', 'milovan@gmail.com', 'm', '1'),
(90, 'Milos', 'Maksimovic', 'milos@gmail.com', 'm', '1'),
(91, 'Milos', 'Maksimovic', 'milos@gmail.com', 'm', '1');

-- --------------------------------------------------------

--
-- Table structure for table `lokacija`
--

CREATE TABLE `lokacija` (
  `id` int(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `webpage` varchar(30) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `tipID` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokacija`
--

INSERT INTO `lokacija` (`id`, `description`, `webpage`, `longitude`, `latitude`, `tipID`) VALUES
(1, 'deskripcija', 'sdfsf', 20.4681, 44.8186, 1),
(3, 'Deskripcija', 'www.tasmajdanskiBazen.com', 20.4732, 44.809, 2);

-- --------------------------------------------------------

--
-- Table structure for table `trening`
--

CREATE TABLE `trening` (
  `id` int(10) NOT NULL,
  `title` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trening`
--

INSERT INTO `trening` (`id`, `title`) VALUES
(1, 'Trcanje-Setnja-Street Workout'),
(2, 'Plivanje'),
(3, 'Teretana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `sifra` (`sifra`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korisnikID` (`korisnikID`),
  ADD KEY `treningID` (`treningID`);

--
-- Indexes for table `fejsbuk`
--
ALTER TABLE `fejsbuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipID` (`tipID`);

--
-- Indexes for table `trening`
--
ALTER TABLE `trening`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `lokacija`
--
ALTER TABLE `lokacija`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `trening`
--
ALTER TABLE `trening`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `calendar_ibfk_1` FOREIGN KEY (`korisnikID`) REFERENCES `korisnik` (`id`),
  ADD CONSTRAINT `calendar_ibfk_2` FOREIGN KEY (`treningID`) REFERENCES `trening` (`id`);

--
-- Constraints for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD CONSTRAINT `lokacija_ibfk_1` FOREIGN KEY (`tipID`) REFERENCES `trening` (`id`);
