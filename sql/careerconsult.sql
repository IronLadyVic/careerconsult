-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2014 at 02:59 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `careerconsult`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `title` varchar(5000) NOT NULL,
  `topic_type` varchar(5000) NOT NULL,
  `photo_path` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `avatar` varchar(1000) NOT NULL,
  `editor` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE IF NOT EXISTS `pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(1000) NOT NULL,
  `price` varchar(5000) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(5000) NOT NULL,
  `service_type` varchar(5000) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `avatar` varchar(5000) NOT NULL,
  `client` varchar(5000) NOT NULL,
  `company` varchar(5000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(50000) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `avatar` varchar(5000) NOT NULL,
  `personal_goal` text NOT NULL,
  `experience` text NOT NULL,
  `education` text NOT NULL,
  `acheivement` text NOT NULL,
  `career_history` text NOT NULL,
  `career_type` text NOT NULL,
  `service_type` varchar(5000) NOT NULL,
  `comment` text NOT NULL,
  `remember_token` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `phone`, `avatar`, `personal_goal`, `experience`, `education`, `acheivement`, `career_history`, `career_type`, `service_type`, `comment`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `admin`) VALUES
(1, 'kaz', '1', 'Karyn', 'McDonald', 'karynmcdonald@hotmail.com', '021 123 4567', 'KarynsProfilePic.png', '', '', '', '', '', '', '', '', '', '2014-11-17 01:26:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'timmy', '1', 'Tim', 'Taylor', 'timtaylor@xtra.co.nz', '09 455 1234', 'avatar-1.jpg', 'improve on all the aspects: knowledge, experience and personal in a world class manufacturing environment. My commitment is to perform every requested task with responsibility, honor ability and my best effort. ', 'Mentor\r\nBig Brothers & sisters\r\nAugust 2008 - present\r\n-Act as a big sister to a loving 11 year old and guide her through positive achivements.\r\n-Tutor helped child to strive for excellance at school.\r\n- Engaged in team sports, and activities.\r\n\r\nDay Camp Counsellor\r\nAmbrosia Camp\r\nSummer 2007/2008\r\n- Taught children ages 6-9 the importance of community outreach by volunteering for local hospitals, parks and other charities.\r\n- Conducted workshops to educate kids about the different charities in the world.\r\n\r\nSales Specialist\r\nAmerican Eagle\r\nApril 2007 - December 2007\r\n- Made the 2nd highest number in store sales and became the employee of the month.\r\nTrained new employees on cash registers and sales precedures.\r\nEarned one of the highest numbers of clients to open credit cared applications.', '2003-2005\r\nBachelor of Teaching and Training\r\n\r\n1999 - 2002\r\nHigh School, University Entrance.', '2008\r\nBest all round supporter\r\n\r\n2008\r\n1st in running sports\r\n2nd in Team events', 'Mentor\r\nBig Brothers & sisters\r\nAugust 2008 - present\r\n\r\nDay Camp Counsellor\r\nAmbrosia Camp\r\nSummer 2007/2008\r\n\r\nSales Specialist\r\nAmerican Eagle\r\nApril 2007 - December 2007', 'Counselling & mentoring', 'CV Writing & Cover Letters', 'I currently moved over from the states and need help with my CV and writing letters to future employees.\r\n\r\nThank you\r\nRegards\r\n\r\nTim', '', '2014-11-17 01:59:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'KiKi', '1', 'Kimberley', 'Smith', 'k.smith@yahoo.com', '02 234 21244', '', 'To be able to find a job that will help me find happiness and friendships with in a job. ', 'Intern\r\n2014\r\nJohn Irving Architects\r\n\r\nI only have 6month experience in working as an intern at John Irvine Architects. There I was able to map sketches, plans and liaise with Senior Architects and Business Analysts to produce sound structural plans for both residential and commercial sites.', '2010 - 2013\r\nBachelor of Architecture\r\nUniversity of Auckland\r\n\r\n2006 - 2009\r\nAuckland Girls Grammer School\r\nA University ', '2013 \r\nWinning an internship at John Irving Architects.\r\n\r\n2013 \r\n1st in Bachelor of Architecture, with Honors.\r\n\r\n2009\r\nDux\r\n1st at High School in Design & Architecture\r\n', 'Intern\r\n2014\r\nJohn Irving Architects\r\n\r\n\r\nManager\r\n2004 - 2013\r\nPaper Plus', 'Design & Architecture', 'Interview Preparation', 'I find going to interviews scary, so would like to overcome that by practicing and practicing. Please help me.\r\nRegards\r\n\r\nKiki', '', '2014-11-17 01:59:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
