-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 07:01 AM
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
-- Database: farmmanagement
--

-- --------------------------------------------------------

--
-- Table structure for table bajra
--

CREATE TABLE bajra (
  instrument_id int(11) NOT NULL,
  instrument_name varchar(30) NOT NULL,
  cost int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table bajra
--

INSERT INTO bajra (instrument_id, instrument_name, cost) VALUES
(1, 'plough', 10000),
(2, 'fertilizer', 800),
(3, 'Tractor', 5000),
(4, 'irrigating motor', 10000),
(15, 'manure', 60000);

-- --------------------------------------------------------

--
-- Table structure for table jowar
--

CREATE TABLE jowar (
  instrument_id int(11) NOT NULL,
  instrument_name varchar(30) NOT NULL,
  cost int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table jowar
--

INSERT INTO jowar (instrument_id, instrument_name, cost) VALUES
(1, 'plough', 10000),
(2, 'fertilizer', 800),
(3, 'Tractor', 5000),
(4, 'irrigating motor', 10000),
(15, 'manure', 60000);

-- --------------------------------------------------------

--
-- Table structure for table output
--

CREATE TABLE output (
  crop_name varchar(20) NOT NULL,
  avg_output_per_acre int(11) NOT NULL,
  cost_in_market_per_kg int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table output
--

INSERT INTO output (crop_name, avg_output_per_acre, cost_in_market_per_kg) VALUES
('bajra', 1500, 20),
('soyabean', 1000, 50),
('jowar', 1200, 40),
('paddy', 2800, 33);

-- --------------------------------------------------------

--
-- Table structure for table paddy
--

CREATE TABLE paddy (
  instrument_id int(11) NOT NULL,
  instrument_name varchar(30) NOT NULL,
  cost int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table paddy
--

INSERT INTO paddy (instrument_id, instrument_name, cost) VALUES
(1, 'plough', 10000),
(2, 'fertilizer', 800),
(3, 'Tractor', 5000),
(4, 'irrigating motor', 30000),
(5, 'seed grader', 600),
(15, 'manure', 60000);

-- --------------------------------------------------------

--
-- Table structure for table soyabean
--

CREATE TABLE soyabean (
  instument_id int(11) NOT NULL,
  instrument_name varchar(30) NOT NULL,
  cost int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table soyabean
--

INSERT INTO soyabean (instument_id, instrument_name, cost) VALUES
(1, 'plough', 10000),
(2, 'fertilizer', 1500),
(4, 'irrigation', 5000),
(15, 'manure', 65000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table bajra
--
ALTER TABLE bajra
  ADD PRIMARY KEY (instrument_id);

--
-- Indexes for table jowar
--
ALTER TABLE jowar
  ADD PRIMARY KEY (instrument_id);

--
-- Indexes for table paddy
--
ALTER TABLE paddy
  ADD PRIMARY KEY (instrument_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table bajra
--
ALTER TABLE bajra
  MODIFY instrument_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table jowar
--
ALTER TABLE jowar
  MODIFY instrument_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table paddy
--
ALTER TABLE paddy
  MODIFY instrument_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;