-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jan 22, 2016 at 04:59 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `restDomaci`
--

-- --------------------------------------------------------

--
-- Table structure for table `rest1`
--

CREATE TABLE `rest1` (
  `id` mediumint(8) unsigned NOT NULL,
  `NazivGitare` varchar(255) DEFAULT NULL,
  `TipGitare_ID` int(8) DEFAULT NULL,
  `StilSviranja` varchar(255) DEFAULT NULL,
  `Komentar` text,
  `dostupnoMitros` int(8) NOT NULL,
  `dostupnoMaric` int(8) NOT NULL,
  `dostupnoMedia` int(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rest1`
--

INSERT INTO `rest1` (`id`, `NazivGitare`, `TipGitare_ID`, `StilSviranja`, `Komentar`, `dostupnoMitros`, `dostupnoMaric`, `dostupnoMedia`) VALUES
(1, 'Fender Stratocaster', 1, 'Fank, rock, pop, blues', 'Ova gitara je sigurno bila prva koju ste ugledali i pozeleli da je imate kada ste videli na tv-u nekog poznatog gitaristu. Iako su godine prosle, Vas ukus se nije promenio. A i zasto bi? Fanki, a u isto vreme slobodan rock, blues zvuk. Verovatno gitara sa najboljim clean zvukom na svetu. Ponosni predstavnik armije single coil gitarist', 15, 2, 3),
(2, 'Gibson Les Paul', 3, 'Rock', 'Verovatno imate isti ukus kao 60%posto gitarista. Najveci brend, najpoznatija marka u industriji, za neke sigurno najbolji model. Ima jakog konkurenta, pa nemamo dovoljnu hrabrost da i sami kazemo da je najbolja. Sve je naravno do stila i preferencije sviranja, ali ravnoteza koju uspostavlja Gibson Les Paul uz prebogat zvuk ucinice da se osecate prijatno dok svirate Vas instrument.', 7, 3, 1),
(3, 'Schecter Damien Elite FR', 5, 'Heavy& thrash Metal', 'Slusate metal? Thrash metal, death metal, heavy metal? Say no more. EMG magneti, Floyd rose tremolo ucinice sve da se i vi sami osecate kao James Hetsfield. Vase komsije su do sada imale miran san, nazalost po njih, to ima izgleda da se promeni u skorije vreme.', 2, 20, 8),
(4, 'Steve Vai Ibanez JEM', 7, 'Rock, metal', 'Volite brze solaze? Ova gitara je pravi izbor za Vas. Signature model jednog od najpoznatijeg gitariste na planeti, za Vas ce biti pun pogodak ukoliko zelite da posedujete nenormalnu slobodu pri sviranju. Gitara tesko ispada iz stima, samim tim, duze moze da se svira, i slobodnije da se solira.', 3, 0, 7),
(5, 'Paul Reed Smith SE Custom Gray', 3, 'rock', 'Komentar nije neophodan!', 1, 0, 0),
(7, 'Epiphone Les Paul!', 5, 'rock', 'Blaza verzija Gibson Les Paul-a', 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `rest2`
--

CREATE TABLE `rest2` (
  `id` mediumint(8) unsigned NOT NULL,
  `TipGitare` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rest2`
--

INSERT INTO `rest2` (`id`, `TipGitare`) VALUES
(1, 'Single-coil'),
(3, 'Humbucker'),
(5, 'Active pickups'),
(7, 'Single-coil&Humbucker'),
(8, 'nepoznato');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rest1`
--
ALTER TABLE `rest1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest2`
--
ALTER TABLE `rest2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rest1`
--
ALTER TABLE `rest1`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rest2`
--
ALTER TABLE `rest2`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;