-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2023 at 04:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infotechtu`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '123456789', 'first post', '2023-02-18 13:23:15'),
(2, 'Mostafa Nizam', 'm.nizam754@gmail.com', '01912160480', 'hello', NULL),
(3, 'Mostafa Nizam', 'm.nizam754@gmail.com', '01912160480', 'hello', '2023-02-18 15:29:01'),
(4, 'Nizam', 'nizam@mail.com', '01912160456', 'Hello, This is my test message.', '2023-02-18 15:29:48'),
(5, 'Mostafa Nizam', 'nizam.necit@gmail.com', '01912160456', 'Test mail from flask', '2023-02-18 21:26:05'),
(6, 'Nizzzaaam', 'nizam.necit@gmail.com', '01912160456', 'Test mail from flask', '2023-02-18 21:43:23'),
(7, 'Nizzzaaam', 'nizam.necit@gmail.com', '01912160456', 'Test mail from flask', '2023-02-18 21:45:41'),
(8, 'Nizzzaaam', 'nizam.necit@gmail.com', '01912160456', 'Test mail from flask', '2023-02-18 21:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Information Technology', 'This is first post', 'first-post', 'Information Technology (IT) is a field that involves the use of technology to manage and process information. It is a broad term that encompasses many different technologies and applications, all of which are designed to help businesses and organizations solve problems and improve efficiency. In this blog, we will explore the basic definition and the primary pillars of responsibility for an IT department, the everyday use of IT, and the importance of IT in research and development.\r\n\r\nAccording to [1], the most basic definition of IT is the application of technology to solve business or organizational problems on a broad scale. The three primary pillars of responsibility for an IT department are infrastructure, support, and development. Infrastructure refers to the hardware and software that make up an organization\'s technology systems, while support involves the ongoing maintenance and troubleshooting of those systems. Development involves the creation of new technology solutions to meet the changing needs of an organization.\r\n\r\nIT is an integral part of our daily lives, as highlighted by [2]. We use IT when we connect to the internet, send an email, or print a document. IT has become so ubiquitous that it is easy to take for granted the complex systems that underlie these everyday tasks. However, without IT, our lives would be drastically different.\r\n\r\nFurthermore, IT plays an important role in research and development, as stated in [3]. The innovations that arise from IT research, such as advancements in cognitive science, genetics, or medicine, have the potential to solve some of the world\'s most pressing problems. IT has also allowed for improvements in many industries outside of the sciences, such as finance, marketing, and entertainment.\r\n\r\nIn conclusion, Information Technology is an essential field that helps businesses and organizations solve problems and improve efficiency through the use of technology. IT is also a part of our daily lives and has become indispensable to the functioning of modern society. Finally, IT plays an important role in research and development, and the innovations that arise from IT research have the potential to solve some of the world\'s most pressing problems.', 'about-bg.jpg', '2023-02-18 22:35:08'),
(2, 'This is my second post', 'This second post', 'second-post', 'One thing to note, and this is hopefully becoming apparent, is that we need to spend some time modeling our data so that it\'s easy to work with. This is something you will rarely get right on your first attempt so don\'t be afraid to experiment and iterate.\r\n\r\nFollowing with our example, we can keep data on individual interfaces assigned to keys in interfaces dictionary, instead of having them in a list:', '', '2023-02-19 19:59:48'),
(3, 'Test Blog', 'Test', 'test-b', 'Content is the information contained within communication media. This includes internet, cinema, television, radio, audio CDs, books, magazines, physical art, and live event content. It’s directed at an end-user or audience in the sectors of publishing, art, and communication.\r\nPost Edited.', 'img.png', '2023-02-21 22:55:30'),
(5, 'The best introduction to grownup sci-fi', 'As a teenager, I discovered the novels that Robert Heinlein wrote for adults.', 'sci-fi', 'When my Microsoft co-founder, Paul Allen, and I were kids, we fell in love with computing. But software wasn\'t the first thing we bonded over. It was Robert Heinlein.\r\n\r\nI met Paul around the time I had finished reading all of the science fiction writer’s early books. Those novels were adventure stories with titles like Rocket Ship Galileo and Space Cadet. They weren’t labeled children’s books, but they appealed to kids. The plots were very straightforward. They always had a simple moral and involved a little bit of cool technology and a little bit of romance. I loved them.', 'about-bg.jpg', '2023-02-21 22:20:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
