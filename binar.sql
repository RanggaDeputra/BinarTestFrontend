-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Jan 2019 pada 19.29
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `UserID` int(12) NOT NULL,
  `ProductNo` varchar(12) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Price` varchar(15) NOT NULL,
  `ImagePhoto` varchar(100) NOT NULL,
  `CreatedTime` datetime NOT NULL,
  `CreatedBy` varchar(30) NOT NULL,
  `LastModifiedTime` datetime NOT NULL,
  `LastModifiedBy` varchar(30) NOT NULL,
  `RowStatus` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`Product_ID`, `UserID`, `ProductNo`, `ProductName`, `Price`, `ImagePhoto`, `CreatedTime`, `CreatedBy`, `LastModifiedTime`, `LastModifiedBy`, `RowStatus`) VALUES
(1, 1, '2147483647', 'Bicycle TDR 2000', '500', '52231_0.jpg', '2018-04-16 15:11:37', 'RanggaDeputra', '2019-01-23 18:09:59', 'RanggaDeputra', b'1'),
(3, 1, '2147483647', 'Bicycle TDR 20000', '500', '52231_0.jpg', '2018-04-16 15:11:37', 'RanggaDeputra', '2019-01-23 18:12:55', 'RanggaDeputra', b'1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usermaster`
--

CREATE TABLE `usermaster` (
  `ID` int(11) NOT NULL,
  `UserNo` varchar(12) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `CreatedTime` datetime NOT NULL,
  `CreatedBy` varchar(30) NOT NULL,
  `LastModifiedTime` datetime NOT NULL,
  `LastModifiedBy` varchar(30) NOT NULL,
  `RowStatus` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `usermaster`
--

INSERT INTO `usermaster` (`ID`, `UserNo`, `Username`, `Password`, `Email`, `CreatedTime`, `CreatedBy`, `LastModifiedTime`, `LastModifiedBy`, `RowStatus`) VALUES
(1, '2147483647', 'RanggaDeputra', '7488e331b8b64e5794da3fa4eb10ad5d', '', '2018-04-16 15:11:37', 'RanggaDeputra', '2018-04-16 15:11:37', 'RanggaDeputra', b'0'),
(2, '2147483647', 'Rangga', '7488e331b8b64e5794da3fa4eb10ad5d', '', '2018-04-16 15:11:37', 'RanggaDeputra', '2018-04-16 15:11:37', 'RanggaDeputra', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `usermaster`
--
ALTER TABLE `usermaster`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usermaster`
--
ALTER TABLE `usermaster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `usermaster` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
