-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2020 at 03:50 AM
-- Server version: 10.3.16-MariaDB


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `ac_id` int(4) NOT NULL,
  `ac_nm` varchar(200) NOT NULL,
  `ac_time` varchar(200) NOT NULL,
  `ac_tmp` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`ac_id`, `ac_nm`, `ac_time`, `ac_tmp`) VALUES
(101, '48 Seats Booked ', '1564273432', ''),
(102, '48 Ticket Cancellled', '1564273585', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(4) NOT NULL,
  `a_nm` varchar(50) NOT NULL,
  `a_unm` varchar(6) NOT NULL,
  `a_mno` varchar(12) NOT NULL,
  `a_pwd` varchar(40) NOT NULL,
  `a_email` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_nm`, `a_unm`, `a_mno`, `a_pwd`, `a_email`) VALUES
(1, 'Elda Koçi', 'admin', '9714007824', '1111', 'eldakociii@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `b_id` int(4) NOT NULL,
  `b_bookid` varchar(100) NOT NULL,
  `b_theatre` varchar(10) NOT NULL,
  `b_unm` varchar(20) NOT NULL,
  `b_show` varchar(20) NOT NULL,
  `b_screen` varchar(20) NOT NULL,
  `b_seat` int(20) NOT NULL,
  `b_amt` int(40) NOT NULL,
  `b_date` varchar(40) NOT NULL,
  `b_time` bigint(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `co_id` int(4) NOT NULL,
  `co_nm` varchar(20) NOT NULL,
  `co_mno` varchar(12) NOT NULL,
  `co_email` varchar(50) NOT NULL,
  `co_msg` longtext NOT NULL,
  `co_time` bigint(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`co_id`, `co_nm`, `co_mno`, `co_email`, `co_msg`, `co_time`) VALUES
(2, 'Elda', '9714007824', 'eldakoci99@yahoo.com', 'Fhjwjwj', 1559740252);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `m_id` int(4) NOT NULL,
  `m_nm` varchar(40) NOT NULL,
  `m_date` varchar(40) NOT NULL,
  `m_cnm` varchar(200) NOT NULL,
  `m_dnm` varchar(200) NOT NULL,
  `m_des` longtext NOT NULL,
  `m_banner` varchar(200) NOT NULL,
  `m_shw` int(1) NOT NULL DEFAULT 0,
  `m_status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--
INSERT INTO `movies` (`m_id`, `m_nm`, `m_date`, `m_cnm`, `m_dnm`, `m_des`, `m_banner`, `m_shw`, `m_status`) VALUES
(15, 'Dolittle', '2020-01-20', 'Robert Downey Jr Emma Thompson Rami Malek', 'Dan Gregor', 'Dr. John Dolittle lives in solitude behind the high walls of his lush manor in 19th-century England. His only companionship comes from an array of exotic animals that he speaks to on a daily basis. But when young Queen Victoria becomes gravely ill, the eccentric doctor and his furry friends embark on an epic adventure to a mythical island to find the cure.', '1234_dolittle.png', 1, 1),
(16, 'The Lion King', '2020-02-04', 'Amy Sedaris Donald Glover Keegan-Michael Key', 'Jon Favreau ', 'Simba idolizes his father Mufasa and follows his footsteps to achieve his royal destiny with the help of his newfound friends and regain what is rightfully his.', '1563833550_lionking.jpeg', 1, 1),
(17, 'Jumanji The Next Level', '2020-02-05', 'J Dwayne Johnson Jake Kasdan Dany Garcia Hiram Garcia William Teitler Matt Tolmach', 'Jake Kasdan', 'When Spencer goes back into the fantastical world of Jumanji, pals Martha, Fridge and Bethany re-enter the game to bring him home. But the game is now broken and fighting back. Everything the friends know about Jumanji is about to change, as they soon discover there is more obstacles and more danger to overcome. ', '1563833552_movie.jpg', 1, 1),
(18, '1917', '2020-02-21', 'J George MacKay Dean-Charles Chapman  Mark Strong Andrew Scott Richard Madden', ' Sam Mendes ', 'During World War I, two British soldiers  Lance Cpl. Schofield and Lance Cpl. Blake receive seemingly impossible orders. In a race against time, they must cross over into enemy territory to deliver a message that could potentially save 1,600 of their fellow comrades  including Blakes own brother.', '1563833551_movie.jpg', 1, 1),
(19, 'Just Mercy', '2020-02-07', 'Michael B. Jordan Jamie Foxx Rob Morgan Tim Blake Nelson Rafe Spall',' Destin Daniel Cretton ','A powerful and thought-provoking true story, Just Mercy follows young lawyer Bryan Stevenson (Jordan) and his history-making battle for justice. After graduating from Harvard, Bryan had his pick of lucrative jobs. Instead, he heads to Alabama to defend those wrongly condemned or who were not afforded proper representation, with the support of local advocate Eva Ansley (Larson).', '1234_justmercy.jpg', 1, 1),
(20, 'Bad Boys For Life', '2020-01-17', ' Will Smith Jerry Bruckheimer Doug Belgrad', 'Bilall Fallah, Adil El Arbi', 'Set around a modern, highly specialized police unit that collides with the old-school Bad Boys (Smith and Lawrence) when a new threat emerges in Miami. ', '1234_badboysforlife.jpg', 1, 1),
(21, 'Gretel and Hansel', '2020-01-29', 'Charles Babalola Jessica De Gouw  Alice Krige', ' Oz Perkins', 'When their mother descends into madness, siblings Gretel and Hansel must fend for themselves in the dark and unforgiving woods. Hungry and scared, they fortuitously stumble upon a bounty of food left outside an isolated home. Invited inside by the seemingly friendly owner, the children soon suspect that her generous but mysterious behavior is part of a sinister plan to do them harm.', '1234_gretel.jpg', 1, 1),
(22, 'Little Women', '2020-02-08', ' Saoirse Ronan, Emma Watson, Florence Pugh, Eliza Scanlen', 'Greta Gerwig', ' In the years after the Civil War, Jo March lives in New York and makes her living as a writer, while her sister Amy studies painting in Paris. Amy has a chance encounter with Theodore, a childhood crush who proposed to Jo but was ultimately rejected. Their oldest sibling, Meg, is married to a schoolteacher, while shy sister Beth develops a devastating illness that brings the family back together. ', '1234_little.jpg', 1, 1);
-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `r_id` int(4) NOT NULL,
  `r_nm` varchar(30) NOT NULL,
  `r_age` varchar(2) NOT NULL,
  `r_gender` varchar(10) NOT NULL,
  `r_mno` varchar(12) NOT NULL,
  `r_email` varchar(40) NOT NULL,
  `r_pwd` varchar(40) NOT NULL,
  `r_time` bigint(40) NOT NULL,
  `r_status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`r_id`, `r_nm`, `r_age`, `r_gender`, `r_mno`, `r_email`, `r_pwd`, `r_time`, `r_status`) VALUES
(1, 'Elen', '18', 'Female', '9714007824', 'elen123@gmail.com', '74723342', 1558686743, 1),
(2, 'Denis', '18', 'Male', '9714007824', 'koladenis@gmail.com', '74723342', 1558687450, 1),
(3, 'Deon', '28', 'Male', '9714007824', 'deonnn@gmail.com', '747233', 1559047603, 1),
(4, 'Greisi', '20', 'Female', '9714007824', 'greis.shera@gmail.com', '747233', 1559047656, 1),
(5, 'Amelia', '20', 'Female', '1848583818', 'ameliaami@gmail.com', '123123', 1559047757, 1),
(6, 'Ersilda', '40', 'Female', '4727727248', 'eersilda@gmail.com', '123123', 1559047783, 1),
(7, 'Gerald', '40', 'Male', '000000000', 'geraldtriv@gmail.com', '121212', 1559047797, 1),
(8, 'Ada', '22', 'Female', '1482848289', 'adakoceni@gmail.com', '123123', 1559736049, 1),
(9, 'Fiona', '22', 'Female', '9714007824', 'fiona97@gmail.com', '123123', 1559738573, 1),
(10, 'Alonso', '21', 'Male', '9912456789', 'Alonso99@gmail.com', '121212', 1563636916, 1);

-- --------------------------------------------------------

--
-- Table structure for table `screen`
--

CREATE TABLE `screen` (
  `s_id` int(4) NOT NULL,
  `s_nm` varchar(20) NOT NULL,
  `s_theatre` int(2) NOT NULL,
  `s_seats` int(250) NOT NULL DEFAULT 49,
  `s_time` int(40) NOT NULL,
  `s_status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `screen`
--

INSERT INTO `screen` (`s_id`, `s_nm`, `s_theatre`, `s_seats`, `s_time`, `s_status`) VALUES
(16, 'Local', 11, 49, 1564013078, 1),
(15, 'Silver', 8, 49, 1564013069, 1),
(14, 'Gold', 8, 49, 1564013054, 1),
(13, 'Last', 10, 49, 1564013044, 1),
(12, 'First', 10, 49, 1564012964, 1),
(11, 'Red', 6, 49, 1564012935, 1),
(10, 'Blue', 6, 49, 1564012929, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_id` int(5) NOT NULL,
  `seat_row` varchar(5) NOT NULL,
  `seat_col` int(5) NOT NULL,
  `seat_show` int(5) NOT NULL DEFAULT 0,
  `seat_uid` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_id`, `seat_row`, `seat_col`, `seat_show`, `seat_uid`) VALUES
(1, 'A', 1, 48, 0),
(2, 'A', 2, 48, 0),
(3, 'A', 3, 48, 0),
(4, 'A', 4, 48, 0),
(5, 'A', 5, 48, 0),
(6, 'A', 6, 48, 0),
(7, 'B', 1, 48, 0),
(8, 'B', 2, 48, 0),
(9, 'B', 3, 48, 0),
(10, 'B', 4, 48, 0),
(11, 'B', 5, 48, 0),
(12, 'B', 6, 48, 0),
(13, 'C', 1, 48, 0),
(14, 'C', 2, 48, 0),
(15, 'C', 3, 48, 0),
(16, 'C', 4, 48, 0),
(17, 'C', 5, 48, 0),
(18, 'C', 6, 48, 0),
(19, 'D', 1, 48, 0),
(20, 'D', 2, 48, 0),
(21, 'D', 3, 48, 0),
(22, 'D', 4, 48, 0),
(23, 'D', 5, 48, 0),
(24, 'D', 6, 48, 0),
(25, 'E', 1, 48, 0),
(26, 'E', 2, 48, 0),
(27, 'E', 3, 48, 0),
(28, 'E', 4, 48, 0),
(29, 'E', 5, 48, 0),
(30, 'E', 6, 48, 0),
(31, 'F', 1, 48, 0),
(32, 'F', 2, 48, 0),
(33, 'F', 3, 48, 0),
(34, 'F', 4, 48, 0),
(35, 'F', 5, 48, 0),
(36, 'F', 6, 48, 0),
(37, 'G', 1, 48, 0),
(38, 'G', 2, 48, 0),
(39, 'G', 3, 48, 0),
(40, 'G', 4, 48, 0),
(41, 'G', 5, 48, 0),
(42, 'G', 6, 48, 0),
(43, 'H', 1, 48, 0),
(44, 'H', 2, 48, 0),
(45, 'H', 3, 48, 0),
(46, 'H', 4, 48, 0),
(47, 'H', 5, 48, 0),
(48, 'H', 6, 48, 0),
(49, 'A', 1, 49, 0),
(50, 'A', 2, 49, 0),
(51, 'A', 3, 49, 0),
(52, 'A', 4, 49, 0),
(53, 'A', 5, 49, 0),
(54, 'A', 6, 49, 0),
(55, 'B', 1, 49, 0),
(56, 'B', 2, 49, 0),
(57, 'B', 3, 49, 0),
(58, 'B', 4, 49, 0),
(59, 'B', 5, 49, 0),
(60, 'B', 6, 49, 0),
(61, 'C', 1, 49, 0),
(62, 'C', 2, 49, 0),
(63, 'C', 3, 49, 0),
(64, 'C', 4, 49, 0),
(65, 'C', 5, 49, 0),
(66, 'C', 6, 49, 0),
(67, 'D', 1, 49, 0),
(68, 'D', 2, 49, 0),
(69, 'D', 3, 49, 0),
(70, 'D', 4, 49, 0),
(71, 'D', 5, 49, 0),
(72, 'D', 6, 49, 0),
(73, 'E', 1, 49, 0),
(74, 'E', 2, 49, 0),
(75, 'E', 3, 49, 0),
(76, 'E', 4, 49, 0),
(77, 'E', 5, 49, 0),
(78, 'E', 6, 49, 0),
(79, 'F', 1, 49, 0),
(80, 'F', 2, 49, 0),
(81, 'F', 3, 49, 0),
(82, 'F', 4, 49, 0),
(83, 'F', 5, 49, 0),
(84, 'F', 6, 49, 0),
(85, 'G', 1, 49, 0),
(86, 'G', 2, 49, 0),
(87, 'G', 3, 49, 0),
(88, 'G', 4, 49, 0),
(89, 'G', 5, 49, 0),
(90, 'G', 6, 49, 0),
(91, 'H', 1, 49, 0),
(92, 'H', 2, 49, 0),
(93, 'H', 3, 49, 0),
(94, 'H', 4, 49, 0),
(95, 'H', 5, 49, 0),
(96, 'H', 6, 49, 0),
(97, 'A', 1, 50, 0),
(98, 'A', 2, 50, 0),
(99, 'A', 3, 50, 0),
(100, 'A', 4, 50, 0),
(101, 'A', 5, 50, 0),
(102, 'A', 6, 50, 0),
(103, 'B', 1, 50, 0),
(104, 'B', 2, 50, 0),
(105, 'B', 3, 50, 0),
(106, 'B', 4, 50, 0),
(107, 'B', 5, 50, 0),
(108, 'B', 6, 50, 0),
(109, 'C', 1, 50, 0),
(110, 'C', 2, 50, 0),
(111, 'C', 3, 50, 0),
(112, 'C', 4, 50, 0),
(113, 'C', 5, 50, 0),
(114, 'C', 6, 50, 0),
(115, 'D', 1, 50, 0),
(116, 'D', 2, 50, 0),
(117, 'D', 3, 50, 0),
(118, 'D', 4, 50, 0),
(119, 'D', 5, 50, 0),
(120, 'D', 6, 50, 0),
(121, 'E', 1, 50, 0),
(122, 'E', 2, 50, 0),
(123, 'E', 3, 50, 0),
(124, 'E', 4, 50, 0),
(125, 'E', 5, 50, 0),
(126, 'E', 6, 50, 0),
(127, 'F', 1, 50, 0),
(128, 'F', 2, 50, 0),
(129, 'F', 3, 50, 0),
(130, 'F', 4, 50, 0),
(131, 'F', 5, 50, 0),
(132, 'F', 6, 50, 0),
(133, 'G', 1, 50, 0),
(134, 'G', 2, 50, 0),
(135, 'G', 3, 50, 0),
(136, 'G', 4, 50, 0),
(137, 'G', 5, 50, 0),
(138, 'G', 6, 50, 0),
(139, 'H', 1, 50, 0),
(140, 'H', 2, 50, 0),
(141, 'H', 3, 50, 0),
(142, 'H', 4, 50, 0),
(143, 'H', 5, 50, 0),
(144, 'H', 6, 50, 0),
(145, 'A', 1, 51, 0),
(146, 'A', 2, 51, 0),
(147, 'A', 3, 51, 0),
(148, 'A', 4, 51, 0),
(149, 'A', 5, 51, 0),
(150, 'A', 6, 51, 0),
(151, 'B', 1, 51, 0),
(152, 'B', 2, 51, 0),
(153, 'B', 3, 51, 0),
(154, 'B', 4, 51, 0),
(155, 'B', 5, 51, 0),
(156, 'B', 6, 51, 0),
(157, 'C', 1, 51, 0),
(158, 'C', 2, 51, 0),
(159, 'C', 3, 51, 0),
(160, 'C', 4, 51, 0),
(161, 'C', 5, 51, 0),
(162, 'C', 6, 51, 0),
(163, 'D', 1, 51, 0),
(164, 'D', 2, 51, 0),
(165, 'D', 3, 51, 0),
(166, 'D', 4, 51, 0),
(167, 'D', 5, 51, 0),
(168, 'D', 6, 51, 0),
(169, 'E', 1, 51, 0),
(170, 'E', 2, 51, 0),
(171, 'E', 3, 51, 0),
(172, 'E', 4, 51, 0),
(173, 'E', 5, 51, 0),
(174, 'E', 6, 51, 0),
(175, 'F', 1, 51, 0),
(176, 'F', 2, 51, 0),
(177, 'F', 3, 51, 0),
(178, 'F', 4, 51, 0),
(179, 'F', 5, 51, 0),
(180, 'F', 6, 51, 0),
(181, 'G', 1, 51, 0),
(182, 'G', 2, 51, 0),
(183, 'G', 3, 51, 0),
(184, 'G', 4, 51, 0),
(185, 'G', 5, 51, 0),
(186, 'G', 6, 51, 0),
(187, 'H', 1, 51, 0),
(188, 'H', 2, 51, 0),
(189, 'H', 3, 51, 0),
(190, 'H', 4, 51, 0),
(191, 'H', 5, 51, 0),
(192, 'H', 6, 51, 0),
(193, 'A', 1, 52, 0),
(194, 'A', 2, 52, 0),
(195, 'A', 3, 52, 0),
(196, 'A', 4, 52, 0),
(197, 'A', 5, 52, 0),
(198, 'A', 6, 52, 0),
(199, 'B', 1, 52, 0),
(200, 'B', 2, 52, 0);
-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `show_id` int(4) NOT NULL,
  `show_m` int(4) NOT NULL,
  `show_t` int(4) NOT NULL,
  `show_s` int(4) NOT NULL,
  `show_time` varchar(200) NOT NULL,
  `show_date` varchar(20) NOT NULL,
  `show_price` int(4) NOT NULL,
  `show_status` int(1) NOT NULL DEFAULT 1,
  `show_seat` int(3) NOT NULL DEFAULT 48,
  `show_unq` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`show_id`, `show_m`, `show_t`, `show_s`, `show_time`, `show_date`, `show_price`, `show_status`, `show_seat`, `show_unq`) VALUES
(51, 17, 8, 14, '06:00', '2020-01-25', 240, 1, 48, '5d3c9b00e6b49'),
(50, 18, 6, 11, '09:30', '2020-02-15', 250, 1, 48, '5d3c9aedcce51'),
(49, 15, 11, 16, '09:00', '2019-08-20', 190, 1, 48, '5d3c96eb1c822'),
(48, 16, 11, 16, '09:00', '2019-08-20', 150, 1, 48, '5d3c94555c068'),
(52, 19, 10, 13, '08:00', '2019-08-10', 190, 1, 48, '5d3c9b154ca42'),
(53, 16, 11, 16, '06:00', '2019-08-20', 100, 1, 48, '5d3c9b35e85e9');

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `t_id` int(4) NOT NULL,
  `t_nm` varchar(30) NOT NULL,
  `t_city` varchar(30) NOT NULL,
  `t_time` bigint(40) NOT NULL,
  `t_status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`t_id`, `t_nm`, `t_city`, `t_time`, `t_status`) VALUES
(6, 'Cosmoplex', 'Tirane', 1558695729, 1),
(8, 'Angel', 'Tirane      ', 1559134151, 1),
(9, 'Galaxy ', 'Tirane', 1559548986, 1),
(10, 'R World', 'Tirane', 1559549005, 1),
(11, 'Rajeshri', 'Tirane', 1559549033, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upmovies`
--

CREATE TABLE `upmovies` (
  `um_id` int(4) NOT NULL,
  `um_nm` varchar(40) NOT NULL,
  `um_date` varchar(40) NOT NULL,
  `um_cnm` varchar(200) NOT NULL,
  `um_dnm` varchar(30) NOT NULL,
  `um_des` longtext NOT NULL,
  `um_banner` varchar(200) NOT NULL,
  `um_status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upmovies`
--

INSERT INTO `upmovies` (`um_id`, `um_nm`, `um_date`, `um_cnm`, `um_dnm`, `um_des`, `um_banner`, `um_status`) VALUES
(16, 'Mulan', '2020-03-05', ' Donnie Yen, Jason Scott Lee, Yoson An, Gong Li', 'Niki Caro', 'Mulan is an upcoming American epic action drama film directed by Niki Caro, with the screenplay by Rick Jaffa, Amanda Silver, Lauren Hynek and Elizabeth Martin, and produced by Walt Disney Pictures.', 'mulan.jpeg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `upmovies`
--
ALTER TABLE `upmovies`
  ADD PRIMARY KEY (`um_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `ac_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `co_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `m_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `r_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `screen`
--
ALTER TABLE `screen`
  MODIFY `s_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `show_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `theatre`
--
ALTER TABLE `theatre`
  MODIFY `t_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `upmovies`
--
ALTER TABLE `upmovies`
  MODIFY `um_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
