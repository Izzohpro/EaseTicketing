-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 03:49 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zino`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('username', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingid` int(12) NOT NULL,
  `bookingdate` date NOT NULL,
  `customerfk` int(6) NOT NULL,
  `performancefk` int(5) NOT NULL,
  `seatfk` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingid`, `bookingdate`, `customerfk`, `performancefk`, `seatfk`) VALUES
(1, '2024-03-22', 1, 18, 'A1'),
(2, '2024-03-22', 2, 42, 'A1'),
(3, '2024-03-22', 2, 13, 'B6'),
(4, '2024-03-22', 3, 35, 'C4'),
(5, '2024-03-22', 4, 68, 'B3'),
(6, '2024-05-04', 5, 68, 'B2'),
(7, '2024-05-08', 6, 16, 'A2'),
(8, '2024-05-08', 6, 68, 'A4'),
(9, '2024-05-08', 6, 20, 'B4'),
(10, '2024-05-08', 7, 37, 'A1'),
(11, '2024-05-18', 8, 44, 'A2'),
(12, '2024-05-18', 9, 18, 'B1'),
(13, '2024-05-18', 10, 68, 'A5'),
(14, '2024-05-18', 11, 67, 'A1'),
(15, '2024-05-19', 12, 12, 'A1'),
(16, '2024-05-21', 13, 21, 'A6'),
(17, '2024-05-21', 13, 30, 'A1'),
(18, '2024-05-21', 14, 15, 'A4'),
(19, '2024-05-21', 15, 15, 'A6');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(6) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `town` varchar(30) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `phonenumber` varchar(13) DEFAULT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `firstname`, `lastname`, `street`, `town`, `postcode`, `phonenumber`, `email`) VALUES
(12, 'Olabo', 'okpara', 'no 5 c & I leasing drive', 'Lekki', '+234 66', '08111668811', 'jamiekyle096@gmail.com'),
(15, 'Mimo', 'Banjo', 'no 5 c & I leasing drive', 'Lekki', '+234 66', '08111668811', 'okparafrankline@gmail.com'),
(14, 'izzoh', 'Banjo', 'no 5 c & I leasing drive', 'Lekki', '+234 66', '08034603015', 'okparafrankline@ygmail.com'),
(13, 'izzoh', 'okpara', 'no 5 c & I leasing drive', 'Lekki', '+234 66', '08111668811', 'jamiekyle096@gmail.com'),
(11, 'izzoh', 'okpara', 'no 5 c & I leasing drive', 'Lekki', '+234 66', '08034603015', 'okparafrankline@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `performanceid` int(5) NOT NULL,
  `performancedate` date NOT NULL,
  `productionfk` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`performanceid`, `performancedate`, `productionfk`) VALUES
(9, '2024-03-02', 1),
(8, '2024-02-11', 1),
(324, '2024-05-06', 14),
(7, '2024-03-27', 1),
(5, '2024-03-30', 2),
(6, '2024-03-31', 6),
(11, '2024-05-08', 1),
(12, '2024-03-25', 2),
(13, '2024-04-29', 3),
(14, '2024-04-09', 4),
(15, '2024-03-24', 4),
(16, '2024-04-19', 5),
(17, '2024-03-01', 5),
(18, '2024-03-20', 6),
(19, '2024-03-26', 6),
(20, '2024-04-09', 6),
(21, '2024-03-24', 7),
(22, '2024-03-20', 7),
(23, '2024-03-27', 7),
(24, '2024-04-16', 7),
(29, '2024-03-31', 8),
(30, '2024-03-02', 8),
(31, '2024-04-17', 8),
(32, '2024-03-25', 9),
(35, '2024-04-16', 9),
(36, '2015-03-08', 10),
(37, '2015-03-31', 10),
(323, '2015-04-03', 10),
(40, '2015-05-22', 10),
(41, '2015-05-16', 11),
(42, '2015-05-16', 11),
(43, '2015-06-10', 13),
(44, '2015-03-06', 13),
(45, '2015-07-10', 14),
(46, '2015-09-18', 14),
(47, '2015-03-01', 14),
(50, '2015-09-10', 15),
(51, '2015-03-21', 15),
(53, '2015-08-06', 15),
(60, '2015-10-23', 15),
(61, '2015-03-19', 16),
(62, '2015-12-09', 16),
(63, '2015-05-25', 16),
(64, '2015-12-15', 17),
(65, '2016-01-14', 17),
(66, '2015-05-15', 18),
(67, '2015-03-23', 18),
(68, '2015-07-09', 20),
(69, '2015-06-06', 20),
(70, '2015-03-23', 20),
(71, '2015-09-22', 21),
(72, '2015-08-15', 21);

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `productionid` int(5) NOT NULL,
  `productiontypefk` varchar(20) NOT NULL,
  `productionname` varchar(50) NOT NULL,
  `productiondate` date NOT NULL,
  `productionprice` float NOT NULL,
  `productionimage` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`productionid`, `productiontypefk`, `productionname`, `productiondate`, `productionprice`, `productionimage`) VALUES
(3, 'AfroBeat Music', 'Davido-Timeless', '2024-03-18', 60.8, 'https://www.the360mag.com/wp-content/uploads/2023/04/wp-1682445164166.jpg'),
(20, 'Comedy', 'Alibaba', '2024-03-16', 30, 'https://www.nigeriagalleria.com/Nigeria/Personality-Profiles/Comedians/Images/Alibaba.jpg'),
(17, 'Comedy', 'Basket Mouth', '2024-05-10', 30, 'https://cdn.pmnewsnigeria.com/2015/12/BASKETMOUTH1.jpg'),
(18, 'Comedy', 'Gordons', '2024-04-18', 15, 'https://www.nigeriagalleria.com/Nigeria/Personality-Profiles/Comedians/Images/Gordons.jpg'),
(5, 'Drama', 'American Buffalo', '2024-03-19', 45.5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnjxuVV_u0OlYUzu-WrjT-2Z8hvl_dMenNkFtsVWaBZGFoi9pxmtEkgIqJo3O1hlj5cpM&usqp=CAU'),
(6, 'Drama', 'Closer', '2024-04-09', 39, 'http://www.jayrecords.com/base/covers/CloserThanEverCover%20250.jpg'),
(4, 'AfroBeat Music', 'Burna Boy I Told Them', '2024-03-01', 55.4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3_-iQ35Jc0gDV_lZ46UY3TsdENSQhHqR-YXlZKUJb0uDpmZ0Y8DZdTMTi5uQFF-rgXJg&usqp=CAU'),
(14, 'Ballet', 'The Nutcracker ', '2024-03-21', 36, 'https://i.guim.co.uk/img/media/0da9745a8960738de472ddcbd651a581fc7a9357/0_115_3000_1800/master/3000.jpg?width=700&quality=85&auto=format&fit=max&s=5e825f9d69ca77e851fa2b78e67749ea'),
(13, 'Ballet', 'The Swan Lake', '2024-03-19', 50.7, 'https://detroitopera.org/app/uploads/2020/08/Swan-Lake.jpg'),
(9, 'Highlife Music', 'Ebenezer Obey', '2024-03-18', 51.3, 'https://i.pinimg.com/originals/4a/75/b7/4a75b749b6984bf8f394daf4d9164919.jpg'),
(10, 'Highlife Music', 'Olive De Coque', '2024-03-03', 45, 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/f5/79/43/f5794390-6536-a417-c4a2-ec6db4f90c44/mzi.zntmvdsk.tif/486x486bb.png'),
(12, 'Drama', 'Behind the beautiful forever', '2024-03-03', 37.6, 'http://2.bp.blogspot.com/--cB-6qPXmdo/Tzm6zylJ_II/AAAAAAAABOc/MvT5phqS9tk/s1600/behind-the-beautiful-forevers.jpg'),
(7, 'Drama', 'The railway children', '2024-05-01', 25, 'http://s21.postimg.org/6dfesow7b/ndice.jpg'),
(16, 'Ballet', 'Cinderella', '2024-03-09', 30, 'https://www.monroenews.com/gcdn/presto/2023/04/24/NMNN/16cdd838-fb7d-411c-a106-745c108f5356-042623-Cinderella-04jpg.jpg?crop=2399,1350,x0,y91&width=2399&height=1350&format=pjpg&auto=webp'),
(11, 'Highlife Music', 'Sir Victor Uwaifo', '2024-03-09', 50, 'https://lh3.googleusercontent.com/znzZL_gyaEHCyTQpLNBj9QQjMJEaEdeo0e72gg_Sdae89TuMxKY1FWOHVcLV3KTVFbbEwrUZckDBgHun=w544-h544-l90-rj'),
(15, 'Ballet', 'Romeo and Juliet', '2024-03-03', 50.3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMFMRS9lqypqHnAdEZ7XDPZ1mUEY3mPEDsfcVUDLia3RUuunYTTDLG_Uf0hzgkITrUqk8&usqp=CAU'),
(8, 'Highlife Music', 'Chief Stephen Osita Osadebe', '2024-03-18', 48.9, 'https://source.boomplaymusic.com/group1/M00/05/4A/rBEeMlf9KV2AM5tnAACfnoM1HZE269.jpg'),
(2, 'AfroBeat Music', 'Wizkid-Made in Lagos', '2024-03-09', 50, 'https://cdn.pmnewsnigeria.com/wp-content/uploads/2023/06/Wizkid.jpg'),
(21, 'Comedy', 'Klint Da Drunk', '2024-03-09', 27, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE0GZRf3O6wkC8FlmrT4gFj0gz55VPvfFrW-ZPUnIqx0RK-WMbAzkfA_x1hHGFF9SC3ts&usqp=CAU'),
(12132, 'Drama', 'Checkmate', '2024-05-18', 50, 'https://resizing.flixster.com/0CeJZj1ORx5Zyhb0aay5qBq5H5I=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p26572724_k_h8_aa.jpg'),
(12133, 'Drama', 'Deadpool-wolverine-2024', '2024-03-18', 50, 'https://images.thedirect.com/media/article_full/marvel-2024-mcu.jpg'),
(12134, 'Drama', 'Mad-Max Furiosa', '2024-03-16', 50, 'https://variety.com/wp-content/uploads/2023/11/furiosa-trailer.jpg?w=1000'),
(12135, 'AfroBeat Music', 'Rema Calm', '2024-03-03', 50, 'https://assets-global.website-files.com/61f2696058147e73e592e4d7/644aeb5b0e63b41704acbc5c_643735a5c26b45517b27b756_selenarema-calmdown-min.png'),
(12136, 'AfroBeat Music', 'Kiss Daniel ', '2024-03-03', 50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSshr6WyZz55C-vmtLNZ8fL7m-vjAmUHqccW2LbJ0nQJ6dZumOh1T9TsLQwZAkekdcuN1Q&usqp=CAU'),
(12137, 'AfroBeat Music', 'Tiwa Salvage', '2024-03-03', 50, 'https://cdn.pmnewsnigeria.com/2020/08/Tiwa-Savagert-e1602162228995.jpg'),
(12138, 'AfroBeat Music', 'Olamide', '2024-03-18', 50, 'https://source.boomplaymusic.com/hotgroup1/M00/00/76/rBEenF6qdgOAPzupAACJWAjuJN4009.jpg'),
(12139, 'AfroBeat Music', 'Flavour ', '2024-03-19', 50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsoezAMY6LPEfxM-maS88bYTv2tfLiHHzQojZsjCu5GqlQ5Ziq2f9zofZkSsQQHmnangA&usqp=CAU'),
(12140, 'Highlife Music', 'King Sunny Ade', '2024-03-19', 48.9, 'https://cdns-images.dzcdn.net/images/cover/82f4eb9bd83fc214506aa87be890b0a2/264x264.jpg'),
(12141, 'Highlife Music', 'Prince Nico Mbarga', '2024-03-18', 50, 'https://source.boomplaymusic.com/group10/M00/09/02/0adc2524adf74b2d9cafa43087df9988_464_464.jpg'),
(12142, 'Comedy', 'Okey Bakassi', '2024-05-20', 50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Bq4w45oVziE3jp1vwiQtXpudGJM0FImuHbTfaGdjUZu3_J2spzcrvpswjVXmXBI24_o&usqp=CAU'),
(12143, 'Comedy', 'Tegu Babyface', '2024-03-09', 50, 'https://www.thecityceleb.com/wp-content/uploads/2021/07/Teju-Babyface-Bio-Show-Age-Wife-Net-Worth-House-Twins-Phone-Number-Book-Child-Wikipedia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seatid` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seatid`) VALUES
('A1'),
('A2'),
('A3'),
('A4'),
('A5'),
('A6'),
('B1'),
('B2'),
('B3'),
('B4'),
('B5'),
('B6'),
('C1'),
('C2'),
('C3'),
('C4'),
('C5'),
('C6');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketid` int(5) NOT NULL,
  `performancefk` int(5) NOT NULL,
  `seatfk` varchar(2) NOT NULL,
  `bookingfk` int(12) NOT NULL,
  `ticketreference` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticketid`, `performancefk`, `seatfk`, `bookingfk`, `ticketreference`) VALUES
(1, 18, 'A1', 1, '18A1'),
(2, 42, 'A1', 2, '42A1'),
(3, 13, 'B6', 3, '13B6'),
(4, 35, 'C4', 4, '35C4'),
(5, 68, 'B3', 5, '68B3'),
(6, 68, 'B2', 6, '68B2'),
(7, 16, 'A2', 7, '16A2'),
(8, 68, 'A4', 8, '68A4'),
(9, 20, 'B4', 9, '20B4'),
(10, 37, 'A1', 10, '37A1'),
(11, 44, 'A2', 11, '44A2'),
(12, 18, 'B1', 12, '18B1'),
(13, 68, 'A5', 13, '68A5'),
(14, 67, 'A1', 14, '67A1'),
(15, 12, 'A1', 15, '12A1'),
(16, 21, 'A6', 16, '21A6'),
(17, 30, 'A1', 17, '30A1'),
(18, 15, 'A4', 18, '15A4'),
(19, 15, 'A6', 19, '15A6');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `productiontypeid` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`productiontypeid`) VALUES
('AfroBeat Music'),
('Ballet'),
('Comedy'),
('Drama'),
('Highlife Music');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `customerfk` (`customerfk`),
  ADD KEY `performancefk` (`performancefk`),
  ADD KEY `seatfk` (`seatfk`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`performanceid`),
  ADD KEY `productionfk` (`productionfk`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`productionid`),
  ADD KEY `productiontypefk` (`productiontypefk`);
ALTER TABLE `production` ADD FULLTEXT KEY `productionname` (`productionname`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seatid`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `performancefk` (`performancefk`),
  ADD KEY `seatfk` (`seatfk`),
  ADD KEY `bookingfk` (`bookingfk`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`productiontypeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `performanceid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;
--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `productionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12144;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
