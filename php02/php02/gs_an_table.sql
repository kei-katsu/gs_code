-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019 年 1 朁E19 日 09:52
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE IF NOT EXISTS `gs_an_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `naiyou`, `indate`) VALUES
(1, 'かつべ', 'test01@test.jp', 'test1', '2019-01-19 16:21:20'),
(4, 'すずき', 'test02@test.jp', 'test2', '2019-01-19 16:31:14'),
(5, 'やまだ', 'test03@test.jp', 'test3', '2019-01-19 16:31:33'),
(6, 'さとう', 'test04@test.jp', 'test4', '2019-01-19 16:31:55'),
(7, 'かつた', 'test05@test.jp', 'test5', '2019-01-19 16:32:31'),
(8, 'ごとう', 'test06@test.jp', 'test6', '2019-01-19 16:32:31'),
(22, 'えんどう', 'test06@test.jp', 'test6', '2019-01-19 17:43:02'),
(23, 'やまだ', 'test07@test.jp', 'test7\r\n', '2019-01-19 17:50:11'),
(24, 'ごとう', 'test08@test.jp', 'test8', '2019-01-19 17:50:35'),
(25, 'かつもと', 'test09@test.jp', 'test9\r\n', '2019-01-19 17:50:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
