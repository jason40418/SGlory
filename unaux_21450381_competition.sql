-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： sql301.unaux.com
-- 產生時間： 2021 年 07 月 10 日 11:46
-- 伺服器版本： 5.6.48-88.0
-- PHP 版本： 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `unaux_21450381_competition`
--

-- --------------------------------------------------------

--
-- 資料表結構 `broadcastSetting`
--

CREATE TABLE `broadcastSetting` (
  `No` int(11) NOT NULL,
  `cupID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `broadcastSetting`
--

INSERT INTO `broadcastSetting` (`No`, `cupID`, `key`, `value`, `memo`) VALUES
(1, '2018-01-SG-inTeam', 'caster', '小烈', ''),
(2, '2018-01-SG-inTeam', 'observer', '夏夜星雨', '');

-- --------------------------------------------------------

--
-- 資料表結構 `clan`
--

CREATE TABLE `clan` (
  `ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_EN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_TC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `clan`
--

INSERT INTO `clan` (`ID`, `country`, `name_EN`, `name_TC`, `memo`) VALUES
('SGlory', 'TWN', 'Supreme Glory', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `cup`
--

CREATE TABLE `cup` (
  `cupID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cupName_EN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cupName_TC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapSeason` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qfSystem` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tournament` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostClan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoster` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `cup`
--

INSERT INTO `cup` (`cupID`, `cupName_EN`, `cupName_TC`, `mapSeason`, `qfSystem`, `tournament`, `hostClan`, `hoster`) VALUES
('2018-01-SG-inTeam', '', '2018年第一屆SGlory戰隊對內交流賽', '2018S02', '3BO5A', 'round-robin', 'SGlory', ''),
('2018-S1-outTeam', '', '2018年第一賽季戰隊交流賽', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `game`
--

CREATE TABLE `game` (
  `ID` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matchID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gameNo` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redTeam` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redRace` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redRandomRace` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blueTeam` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blueRace` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blueRandomRace` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `game`
--

INSERT INTO `game` (`ID`, `matchID`, `gameNo`, `redTeam`, `redRace`, `redRandomRace`, `blueTeam`, `blueRace`, `blueRandomRace`, `map`, `result`) VALUES
('2018-01-SG-inTeam-round-1-BB_1', '2018-01-SG-inTeam-round-1', 'BB_1', '', '', '', '', '', '', '2018S01-06', 'BB_1'),
('2018-01-SG-inTeam-round-1-BR_1', '2018-01-SG-inTeam-round-1', 'BR_1', '', '', '', '', '', '', '2018S01-01', 'BR_1'),
('2018-01-SG-inTeam-round-1-GP_1', '2018-01-SG-inTeam-round-1', 'GP_1', '已完成', 'T', '', '小蟲', 'T', '', '2018S01-05', '0_1'),
('2018-01-SG-inTeam-round-1-GP_2', '2018-01-SG-inTeam-round-1', 'GP_2', '宇智波止水', 'Z', '', '宇智波滑', 'Z', '', '2018S01-02', '0_1'),
('2018-01-SG-inTeam-round-1-GP_3', '2018-01-SG-inTeam-round-1', 'GP_3', '宇智波紗羅妲', 'R', 'T', '宇智波神鳥', 'Z', '', '2018S01-04', '0_1'),
('2018-01-SG-inTeam-round-1-GP_4', '2018-01-SG-inTeam-round-1', 'GP_4', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-1-GP_5', '2018-01-SG-inTeam-round-1', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-2-BB_1', '2018-01-SG-inTeam-round-2', 'BB_1', '', '', '', '', '', '', '2018S01-06', 'BB_1'),
('2018-01-SG-inTeam-round-2-BR_1', '2018-01-SG-inTeam-round-2', 'BR_1', '', '', '', '', '', '', '2018S01-01', 'BR_1'),
('2018-01-SG-inTeam-round-2-GP_1', '2018-01-SG-inTeam-round-2', 'GP_1', '宇智波小槍', 'T', '', '黑子哲也', 'T', '', '2018S01-05', '0_1'),
('2018-01-SG-inTeam-round-2-GP_2', '2018-01-SG-inTeam-round-2', 'GP_2', '家可可', 'Z', '', '宇智波多野結衣', 'T', '', '2018S01-02', '0_1'),
('2018-01-SG-inTeam-round-2-GP_3', '2018-01-SG-inTeam-round-2', 'GP_3', '隱山林', 'T', '', '見面一秒就', 'T', '', '2018S01-04', '0_1'),
('2018-01-SG-inTeam-round-2-GP_4', '2018-01-SG-inTeam-round-2', 'GP_4', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-2-GP_5', '2018-01-SG-inTeam-round-2', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-3-BB_1', '2018-01-SG-inTeam-round-3', 'BB_1', '', '', '', '', '', '', '2018S01-06', 'BB_1'),
('2018-01-SG-inTeam-round-3-BR_1', '2018-01-SG-inTeam-round-3', 'BR_1', '', '', '', '', '', '', '2018S01-01', 'BR_1'),
('2018-01-SG-inTeam-round-3-GP_1', '2018-01-SG-inTeam-round-3', 'GP_1', 'Chen', 'P', '', '宇智波小槍', 'T', '', '2018S01-05', '0_1'),
('2018-01-SG-inTeam-round-3-GP_2', '2018-01-SG-inTeam-round-3', 'GP_2', 'MoonLightz', 'T', '', '隱山林', 'Z', '', '2018S01-02', '1_0'),
('2018-01-SG-inTeam-round-3-GP_3', '2018-01-SG-inTeam-round-3', 'GP_3', '宇智波止水', 'Z', '', 'MMA', 'T', '', '2018S01-04', '1_0'),
('2018-01-SG-inTeam-round-3-GP_4', '2018-01-SG-inTeam-round-3', 'GP_4', '宇智波止水', 'Z', '', '宇智波斑', 'T', '', '2018S01-07', '0_1'),
('2018-01-SG-inTeam-round-3-GP_5', '2018-01-SG-inTeam-round-3', 'GP_5', 'MoonLightz', 'T', '', '隱山林', 'Z', '', '2018S01-03', '0_1'),
('2018-01-SG-inTeam-round-4-BB_1', '2018-01-SG-inTeam-round-4', 'BB_1', '', '', '', '', '', '', '2018S01-01', 'BB_1'),
('2018-01-SG-inTeam-round-4-BR_1', '2018-01-SG-inTeam-round-4', 'BR_1', '', '', '', '', '', '', '2018S01-03', 'BR_1'),
('2018-01-SG-inTeam-round-4-GP_1', '2018-01-SG-inTeam-round-4', 'GP_1', '宇智波鼬', 'P', '', '宇智波多野結衣', 'T', '', '2018S01-05', '1_0'),
('2018-01-SG-inTeam-round-4-GP_2', '2018-01-SG-inTeam-round-4', 'GP_2', '宇智波滑', 'Z', '', 'dream', 'T', '', '2018S01-04', '1_0'),
('2018-01-SG-inTeam-round-4-GP_3', '2018-01-SG-inTeam-round-4', 'GP_3', '宇智波神鳥', 'Z', '', '見面一秒就', 'T', '', '2018S01-02', '0_1'),
('2018-01-SG-inTeam-round-4-GP_4', '2018-01-SG-inTeam-round-4', 'GP_4', '宇智波滑', 'Z', '', 'dream', 'T', '', '2018S01-07', '1_0'),
('2018-01-SG-inTeam-round-4-GP_5', '2018-01-SG-inTeam-round-4', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-6-GP_4', '2018-01-SG-inTeam-round-6', 'GP_4', '宇智波熱', 'T', '', 'Aiur', 'P', '', '2018S01-03', '0_1'),
('2018-01-SG-inTeam-round-6-GP_3', '2018-01-SG-inTeam-round-6', 'GP_3', '宇智波熱', 'T', '', '宇智波斑', 'Z', '', '2018S01-06', '0_1'),
('2018-01-SG-inTeam-round-6-GP_2', '2018-01-SG-inTeam-round-6', 'GP_2', '宇智波滑', 'Z', '', '家可可', 'Z', '', '2018S01-04', '1_0'),
('2018-01-SG-inTeam-round-6-GP_1', '2018-01-SG-inTeam-round-6', 'GP_1', '小蟲', 'T', '', '宇智波小槍', 'T', '', '2018S01-05', '1_0'),
('2018-01-SG-inTeam-round-5-GP_1', '2018-01-SG-inTeam-round-5', 'GP_1', 'MoonLightz', 'T', '', '宇智波多野結衣', 'T', '', '2018S01-05', '0_1'),
('2018-01-SG-inTeam-round-5-GP_2', '2018-01-SG-inTeam-round-5', 'GP_2', '宇智波止水', 'Z', '', '黑子哲也', 'T', '', '2018S01-04', '1_0'),
('2018-01-SG-inTeam-round-5-GP_3', '2018-01-SG-inTeam-round-5', 'GP_3', '宇智波鏡', 'Z', '', 'Fsix', 'Z', '', '2018S01-03', '1_0'),
('2018-01-SG-inTeam-round-5-GP_4', '2018-01-SG-inTeam-round-5', 'GP_4', '宇智波鏡', 'Z', '', '宇智波多野結衣', 'P', '', '2018S01-02', '0_1'),
('2018-01-SG-inTeam-round-5-GP_5', '2018-01-SG-inTeam-round-5', 'GP_5', '宇智波紗羅妲', 'R', 'Z', 'Fsix', 'Z', '', '2018S01-07', '1_0'),
('2018-01-SG-inTeam-round-6-BR_1', '2018-01-SG-inTeam-round-6', 'BR_1', '', '', '', '', '', '', '2018S01-01', 'BR_1'),
('2018-01-SG-inTeam-round-6-BB_1', '2018-01-SG-inTeam-round-6', 'BB_1', '', '', '', '', '', '', '2018S01-02', 'BB_1'),
('2018-01-SG-inTeam-round-5-BR_1', '2018-01-SG-inTeam-round-5', 'BR_1', '', '', '', '', '', '', '2018S01-06', 'BR_1'),
('2018-01-SG-inTeam-round-5-BB_1', '2018-01-SG-inTeam-round-5', 'BB_1', '', '', '', '', '', '', '2018S01-01', 'BB_1'),
('2018-01-SG-inTeam-round-6-GP_5', '2018-01-SG-inTeam-round-6', 'GP_5', '宇智波滑', 'Z', '', '隱山林', 'T', '', '2018S01-07', '1_0'),
('2018-01-SG-inTeam-round-7-GP_4', '2018-01-SG-inTeam-round-7', 'GP_4', '哇阿災', 'T', '', '宇智波滑', 'Z', '', '2018S01-04', '0_1'),
('2018-01-SG-inTeam-round-7-GP_5', '2018-01-SG-inTeam-round-7', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-7-BB_1', '2018-01-SG-inTeam-round-7', 'BB_1', '', '', '', '', '', '', '2018S01-01', 'BB_1'),
('2018-01-SG-inTeam-round-7-GP_2', '2018-01-SG-inTeam-round-7', 'GP_2', 'MoonLightz', 'T', '', '宇智波滑', 'Z', '', '2018S01-02', '0_1'),
('2018-01-SG-inTeam-round-7-GP_3', '2018-01-SG-inTeam-round-7', 'GP_3', '宇智波鏡', 'Z', '', '宇智波神鳥', 'Z', '', '2018S01-07', '1_0'),
('2018-01-SG-inTeam-round-7-GP_1', '2018-01-SG-inTeam-round-7', 'GP_1', 'Chen', 'P', '', 'MarineKing', 'T', '', '2018S01-05', '0_1'),
('2018-01-SG-inTeam-round-7-BR_1', '2018-01-SG-inTeam-round-7', 'BR_1', '', '', '', '', '', '', '2018S01-06', 'BR_1'),
('2018-01-SG-inTeam-round-8-BR_1', '2018-01-SG-inTeam-round-8', 'BR_1', '', '', '', '', '', '', '2018S01-06', 'BR_1'),
('2018-01-SG-inTeam-round-8-BB_1', '2018-01-SG-inTeam-round-8', 'BB_1', '', '', '', '', '', '', '2018S01-01', 'BB_1'),
('2018-01-SG-inTeam-round-8-GP_1', '2018-01-SG-inTeam-round-8', 'GP_1', '家可可', 'Z', '', 'DySjoKEr', 'Z', '', '2018S01-05', '0_1'),
('2018-01-SG-inTeam-round-8-GP_2', '2018-01-SG-inTeam-round-8', 'GP_2', '宇智波斑', 'T', '', '黑子哲也', 'T', '', '2018S01-04', '0_1'),
('2018-01-SG-inTeam-round-8-GP_3', '2018-01-SG-inTeam-round-8', 'GP_3', '隱山林', 'T', '', '宇智波多野結衣', 'P', '', '2018S01-03', '0_1'),
('2018-01-SG-inTeam-round-8-GP_4', '2018-01-SG-inTeam-round-8', 'GP_4', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-8-GP_5', '2018-01-SG-inTeam-round-8', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-9-BR_1', '2018-01-SG-inTeam-round-9', 'BR_1', '', '', '', '', '', '', '2018S01-06', 'BR_1'),
('2018-01-SG-inTeam-round-9-BB_1', '2018-01-SG-inTeam-round-9', 'BB_1', '', '', '', '', '', '', '2018S01-01', 'BB_1'),
('2018-01-SG-inTeam-round-9-GP_1', '2018-01-SG-inTeam-round-9', 'GP_1', '黑子哲也', 'T', '', '宇智波鼬', 'P', '', '2018S01-05', '0_1'),
('2018-01-SG-inTeam-round-9-GP_2', '2018-01-SG-inTeam-round-9', 'GP_2', 'Fsix', 'T', '', '小蟲', 'T', '', '2018S01-03', '1_0'),
('2018-01-SG-inTeam-round-9-GP_3', '2018-01-SG-inTeam-round-9', 'GP_3', '見面一秒就', 'T', '', '宇智波熱', 'T', '', '2018S01-04', '0_1'),
('2018-01-SG-inTeam-round-9-GP_4', '2018-01-SG-inTeam-round-9', 'GP_4', 'Fsix', 'Z', '', '宇智波神鳥', 'Z', '', '2018S01-02', '0_1'),
('2018-01-SG-inTeam-round-9-GP_5', '2018-01-SG-inTeam-round-9', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-10-BR_1', '2018-01-SG-inTeam-round-10', 'BR_1', '', '', '', '', '', '', '2018S01-06', 'BR_1'),
('2018-01-SG-inTeam-round-10-BB_1', '2018-01-SG-inTeam-round-10', 'BB_1', '', '', '', '', '', '', '2018S01-01', 'BB_1'),
('2018-01-SG-inTeam-round-10-GP_1', '2018-01-SG-inTeam-round-10', 'GP_1', '宇智波止水', 'Z', '', '宇智波小槍', 'T', '', '2018S01-05', '1_0'),
('2018-01-SG-inTeam-round-10-GP_2', '2018-01-SG-inTeam-round-10', 'GP_2', '哇阿災', 'T', '', '宇智波帶土', 'T', '', '2018S01-04', '1_0'),
('2018-01-SG-inTeam-round-10-GP_3', '2018-01-SG-inTeam-round-10', 'GP_3', '宇智波紗羅妲', 'R', '', '宇智波斑', 'Z', '', '2018S01-07', '0_1'),
('2018-01-SG-inTeam-round-10-GP_4', '2018-01-SG-inTeam-round-10', 'GP_4', '哇阿災', 'T', '', '隱山林', 'T', '', '2018S01-02', '0_1'),
('2018-01-SG-inTeam-round-10-GP_5', '2018-01-SG-inTeam-round-10', 'GP_5', '宇智波紗羅妲', 'R', '', 'Aiur', 'P', '', '2018S01-03', '0_1'),
('2018-01-SG-inTeam-round-11-BR_1', '2018-01-SG-inTeam-round-11', 'BR_1', '', '', '', '', '', '', '2018S01-01', 'BR_1'),
('2018-01-SG-inTeam-round-11-BB_1', '2018-01-SG-inTeam-round-11', 'BB_1', '', '', '', '', '', '', '2018S01-06', 'BB_1'),
('2018-01-SG-inTeam-round-11-GP_1', '2018-01-SG-inTeam-round-11', 'GP_1', 'MoonLightz', 'T', '', '黑子哲也', 'T', '', '2018S01-05', '0_1'),
('2018-01-SG-inTeam-round-11-GP_2', '2018-01-SG-inTeam-round-11', 'GP_2', '宇智波止水', 'Z', '', 'dream', 'T', '', '2018S01-04', '1_0'),
('2018-01-SG-inTeam-round-11-GP_3', '2018-01-SG-inTeam-round-11', 'GP_3', '哇阿災', 'T', '', '宇智波多野結衣', 'P', '', '2018S01-03', '1_0'),
('2018-01-SG-inTeam-round-11-GP_4', '2018-01-SG-inTeam-round-11', 'GP_4', '宇智波鏡', 'Z', '', '宇智波多野結衣', 'P', '', '2018S01-02', '1_0'),
('2018-01-SG-inTeam-round-11-GP_5', '2018-01-SG-inTeam-round-11', 'GP_5', '', '', '', '', '', '', '2018S01-07', ''),
('2018-01-SG-inTeam-round-12-BR_1', '2018-01-SG-inTeam-round-12', 'BR_1', '', '', '', '', '', '', '2018S01-03', 'BR_1'),
('2018-01-SG-inTeam-round-12-BB_1', '2018-01-SG-inTeam-round-12', 'BB_1', '', '', '', '', '', '', '2018S01-01', 'BB_1'),
('2018-01-SG-inTeam-round-12-GP_1', '2018-01-SG-inTeam-round-12', 'GP_1', '宇智波帶土', 'T', '', 'MarineKing', 'T', '', '2018S01-05', '1_0'),
('2018-01-SG-inTeam-round-12-GP_2', '2018-01-SG-inTeam-round-12', 'GP_2', '隱山林', 'T', '', '宇智波滑', 'Z', '', '2018S01-04', '1_0'),
('2018-01-SG-inTeam-round-12-GP_3', '2018-01-SG-inTeam-round-12', 'GP_3', '宇智波斑', 'Z', '', '宇智波神鳥', 'Z', '', '2018S01-02', '1_0'),
('2018-01-SG-inTeam-round-12-GP_4', '2018-01-SG-inTeam-round-12', 'GP_4', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-12-GP_5', '2018-01-SG-inTeam-round-12', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-19-BR_1', '2018-01-SG-inTeam-round-19', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-13-BR_1', '2018-01-SG-inTeam-round-13', 'BR_1', '', '', '', '', '', '', '2018S02-04', 'BR_1'),
('2018-01-SG-inTeam-round-13-BB_1', '2018-01-SG-inTeam-round-13', 'BB_1', '', '', '', '', '', '', '2018S02-07', 'BB_1'),
('2018-01-SG-inTeam-round-13-GP_1', '2018-01-SG-inTeam-round-13', 'GP_1', '宇智波止水', 'Z', '', '小蟲', 'T', '', '2018S02-03', '1_0'),
('2018-01-SG-inTeam-round-13-GP_2', '2018-01-SG-inTeam-round-13', 'GP_2', '哇阿災', 'T', '', '宇智波熱', 'T', '', '2018S02-01', '1_0'),
('2018-01-SG-inTeam-round-13-GP_3', '2018-01-SG-inTeam-round-13', 'GP_3', '宇智波鏡', 'Z', '', '宇智波神鳥', 'Z', '', '2018S02-05', '0_1'),
('2018-01-SG-inTeam-round-13-GP_4', '2018-01-SG-inTeam-round-13', 'GP_4', '宇智波鏡', 'Z', '', '宇智波神鳥', 'Z', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-13-GP_5', '2018-01-SG-inTeam-round-13', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-14-BR_1', '2018-01-SG-inTeam-round-14', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-14-BB_1', '2018-01-SG-inTeam-round-14', 'BB_1', '', '', '', '', '', '', '2018S02-04', 'BB_1'),
('2018-01-SG-inTeam-round-14-GP_1', '2018-01-SG-inTeam-round-14', 'GP_1', '宇智波小槍', 'T', '', '黑子哲也', 'T', '', '2018S02-03', '0_1'),
('2018-01-SG-inTeam-round-14-GP_2', '2018-01-SG-inTeam-round-14', 'GP_2', '宇智波帶土', 'T', '', 'Fsix', 'T', '', '2018S02-02', '1_0'),
('2018-01-SG-inTeam-round-14-GP_3', '2018-01-SG-inTeam-round-14', 'GP_3', '宇智波斑', 'Z', '', '見面一秒就', 'T', '', '2018S02-01', '1_0'),
('2018-01-SG-inTeam-round-14-GP_4', '2018-01-SG-inTeam-round-14', 'GP_4', 'Aiur', 'P', '', '宇智波多野結衣', 'P', '', '2018S02-05', '0_1'),
('2018-01-SG-inTeam-round-14-GP_5', '2018-01-SG-inTeam-round-14', 'GP_5', '宇智波斑', 'Z', '', 'Fsix', 'Z', '', '2018S02-06', '0_1'),
('2018-01-SG-inTeam-round-15-BR_1', '2018-01-SG-inTeam-round-15', 'BR_1', '', '', '', '', '', '', '2018S02-04', 'BR_1'),
('2018-01-SG-inTeam-round-15-BB_1', '2018-01-SG-inTeam-round-15', 'BB_1', '', '', '', '', '', '', '2018S02-07', 'BB_1'),
('2018-01-SG-inTeam-round-15-GP_1', '2018-01-SG-inTeam-round-15', 'GP_1', 'MoonLightz', 'T', '', '山井壽', 'Z', '', '2018S02-03', '1_0'),
('2018-01-SG-inTeam-round-15-GP_2', '2018-01-SG-inTeam-round-15', 'GP_2', 'OverLord', 'Z', '', 'AkoideN', 'T', '', '2018S02-02', '0_1'),
('2018-01-SG-inTeam-round-15-GP_3', '2018-01-SG-inTeam-round-15', 'GP_3', '綠間真太郎', 'T', '', 'Aiur', 'P', '', '2018S02-06', '0_1'),
('2018-01-SG-inTeam-round-15-GP_4', '2018-01-SG-inTeam-round-15', 'GP_4', '絕望少年年少絕望', 'Z', '', '青峰大輝', 'Z', '', '2018S02-01', '1_0'),
('2018-01-SG-inTeam-round-15-GP_5', '2018-01-SG-inTeam-round-15', 'GP_5', '絕望少年年少絕望', 'Z', '', 'Aiur', 'P', '', '2018S02-05', '1_0'),
('2018-01-SG-inTeam-round-16-BR_1', '2018-01-SG-inTeam-round-16', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-16-BB_1', '2018-01-SG-inTeam-round-16', 'BB_1', '', '', '', '', '', '', '2018S02-01', 'BB_1'),
('2018-01-SG-inTeam-round-16-GP_1', '2018-01-SG-inTeam-round-16', 'GP_1', 'DySjoKEr', 'Z', '', '小蟲', 'T', '', '2018S02-03', '0_1'),
('2018-01-SG-inTeam-round-16-GP_2', '2018-01-SG-inTeam-round-16', 'GP_2', 'dream', 'Z', '', '桃井五月', 'Z', '', '2018S02-02', '1_0'),
('2018-01-SG-inTeam-round-16-GP_3', '2018-01-SG-inTeam-round-16', 'GP_3', 'Fsix', 'Z', '', '紫原敦', 'T', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-16-GP_4', '2018-01-SG-inTeam-round-16', 'GP_4', 'dream', 'Z', '', '桃井五月', 'Z', '', '2018S02-05', '1_0'),
('2018-01-SG-inTeam-round-16-GP_5', '2018-01-SG-inTeam-round-16', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-23-BR_1', '2018-01-SG-inTeam-round-23', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-17-BR_1', '2018-01-SG-inTeam-round-17', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-17-BB_1', '2018-01-SG-inTeam-round-17', 'BB_1', '', '', '', '', '', '', '2018S02-04', 'BB_1'),
('2018-01-SG-inTeam-round-17-GP_1', '2018-01-SG-inTeam-round-17', 'GP_1', '騷與他的八七隊友', 'T', '', '冰室辰也', 'P', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-17-GP_2', '2018-01-SG-inTeam-round-17', 'GP_2', 'Fsix', 'Z', '', 'OverLord', 'Z', '', '2018S02-03', '0_1'),
('2018-01-SG-inTeam-round-17-GP_3', '2018-01-SG-inTeam-round-17', 'GP_3', '見面一秒就', 'T', '', '綠間真太郎', 'T', '', '2018S02-02', '1_0'),
('2018-01-SG-inTeam-round-17-GP_4', '2018-01-SG-inTeam-round-17', 'GP_4', 'Fsix', 'Z', '', '黃瀨涼太', 'Z', '', '2018S02-05', '0_1'),
('2018-01-SG-inTeam-round-17-GP_5', '2018-01-SG-inTeam-round-17', 'GP_5', '見面一秒就', 'T', '', '黃瀨涼太', 'Z', '', '2018S02-01', '1_0'),
('2018-01-SG-inTeam-round-18-BR_1', '2018-01-SG-inTeam-round-18', 'BR_1', '', '', '', '', '', '', '2018S02-04', 'BR_1'),
('2018-01-SG-inTeam-round-18-BB_1', '2018-01-SG-inTeam-round-18', 'BB_1', '', '', '', '', '', '', '2018S02-01', 'BB_1'),
('2018-01-SG-inTeam-round-18-GP_1', '2018-01-SG-inTeam-round-18', 'GP_1', '木吉鐵平', 'T', '', '降旗光樹', 'P', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-18-GP_2', '2018-01-SG-inTeam-round-18', 'GP_2', 'AkoideN', 'T', '', '小蟲', 'T', '', '2018S02-02', '0_1'),
('2018-01-SG-inTeam-round-18-GP_3', '2018-01-SG-inTeam-round-18', 'GP_3', '青峰大輝', 'Z', '', '桃井五月', 'Z', '', '2018S02-07', '0_1'),
('2018-01-SG-inTeam-round-18-GP_4', '2018-01-SG-inTeam-round-18', 'GP_4', '青峰大輝', 'Z', '', '不動遊星', 'T', '', '2018S02-03', '1_0'),
('2018-01-SG-inTeam-round-18-GP_5', '2018-01-SG-inTeam-round-18', 'GP_5', '木吉鐵平', 'T', '', '日向順平', 'P', '', '2018S02-05', '0_1'),
('2018-01-SG-inTeam-round-19-BB_1', '2018-01-SG-inTeam-round-19', 'BB_1', '', '', '', '', '', '', '2018S02-04', 'BB_1'),
('2018-01-SG-inTeam-round-19-GP_1', '2018-01-SG-inTeam-round-19', 'GP_1', '古橋康次郎', 'Z', '', 'DySjoKEr', 'Z', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-19-GP_2', '2018-01-SG-inTeam-round-19', 'GP_2', 'AkoideN', 'T', '', 'Fsix', 'P', '', '2018S02-03', '1_0'),
('2018-01-SG-inTeam-round-19-GP_3', '2018-01-SG-inTeam-round-19', 'GP_3', '山井壽', 'T', '', '騷與他的八七隊友', 'P', '', '2018S02-02', '0_1'),
('2018-01-SG-inTeam-round-19-GP_4', '2018-01-SG-inTeam-round-19', 'GP_4', '古橋康次郎', 'Z', '', '騷與他的八七隊友', 'P', '', '2018S02-05', '0_1'),
('2018-01-SG-inTeam-round-19-GP_5', '2018-01-SG-inTeam-round-19', 'GP_5', '山井壽', 'T', '', 'Fsix', 'Z', '', '2018S02-01', '0_1'),
('2018-01-SG-inTeam-round-20-BR_1', '2018-01-SG-inTeam-round-20', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-20-BB_1', '2018-01-SG-inTeam-round-20', 'BB_1', '', '', '', '', '', '', '2018S02-01', 'BB_1'),
('2018-01-SG-inTeam-round-20-GP_1', '2018-01-SG-inTeam-round-20', 'GP_1', 'MoonLightz', 'T', '', 'TonyMontana', 'Z', '', '2018S02-06', '0_1'),
('2018-01-SG-inTeam-round-20-GP_2', '2018-01-SG-inTeam-round-20', 'GP_2', '黃瀨涼太', 'P', '', '不動遊星', 'T', '', '2018S02-02', '1_0'),
('2018-01-SG-inTeam-round-20-GP_3', '2018-01-SG-inTeam-round-20', 'GP_3', '黃瀨涼太', 'P', '', 'BirdKinG', 'Z', '', '2018S02-04', '0_1'),
('2018-01-SG-inTeam-round-20-GP_4', '2018-01-SG-inTeam-round-20', 'GP_4', '黃瀨涼太', 'Z', '', 'BirdKinG', 'Z', '', '2018S02-03', '1_0'),
('2018-01-SG-inTeam-round-20-GP_5', '2018-01-SG-inTeam-round-20', 'GP_5', '黃瀨涼太', 'Z', '', '桃井五月', 'Z', '', '2018S02-05', '1_0'),
('2018-01-SG-inTeam-round-21-BR_1', '2018-01-SG-inTeam-round-21', 'BR_1', '', '', '', '', '', '', '2018S02-01', 'BR_1'),
('2018-01-SG-inTeam-round-21-BB_1', '2018-01-SG-inTeam-round-21', 'BB_1', '', '', '', '', '', '', '2018S02-07', 'BB_1'),
('2018-01-SG-inTeam-round-21-GP_1', '2018-01-SG-inTeam-round-21', 'GP_1', '古橋康次郎', 'Z', '', 'MoonLightz', 'T', '', '2018S02-06', '0_1'),
('2018-01-SG-inTeam-round-21-GP_2', '2018-01-SG-inTeam-round-21', 'GP_2', '台北邱董', 'P', '', '肥宅帝國', 'Z', '', '2018S02-05', '0_1'),
('2018-01-SG-inTeam-round-21-GP_3', '2018-01-SG-inTeam-round-21', 'GP_3', 'AkoideN', 'T', '', '綠間真太郎', 'T', '', '2018S02-03', '0_1'),
('2018-01-SG-inTeam-round-21-GP_4', '2018-01-SG-inTeam-round-21', 'GP_4', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-21-GP_5', '2018-01-SG-inTeam-round-21', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-22-BR_1', '2018-01-SG-inTeam-round-22', 'BR_1', '', '', '', '', '', '', '2018S02-04', 'BR_1'),
('2018-01-SG-inTeam-round-22-BB_1', '2018-01-SG-inTeam-round-22', 'BB_1', '', '', '', '', '', '', '2018S02-01', 'BB_1'),
('2018-01-SG-inTeam-round-22-GP_1', '2018-01-SG-inTeam-round-22', 'GP_1', '騷與他的八七隊友', 'T', '', 'BirdKinG', 'P', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-22-GP_2', '2018-01-SG-inTeam-round-22', 'GP_2', '黑子哲也', 'T', '', '鴨王', 'Z', '', '2018S02-02', '1_0'),
('2018-01-SG-inTeam-round-22-GP_3', '2018-01-SG-inTeam-round-22', 'GP_3', 'dream', 'Z', '', '紫原敦', 'T', '', '2018S02-05', '1_0'),
('2018-01-SG-inTeam-round-22-GP_4', '2018-01-SG-inTeam-round-22', 'GP_4', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-22-GP_5', '2018-01-SG-inTeam-round-22', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-23-BB_1', '2018-01-SG-inTeam-round-23', 'BB_1', '', '', '', '', '', '', '2018S02-01', 'BB_1'),
('2018-01-SG-inTeam-round-23-GP_1', '2018-01-SG-inTeam-round-23', 'GP_1', '台北邱董', 'P', '', '鴨王', 'Z', '', '2018S02-06', '0_1'),
('2018-01-SG-inTeam-round-23-GP_2', '2018-01-SG-inTeam-round-23', 'GP_2', '木吉鐵平', 'T', '', '小蟲', 'T', '', '2018S02-02', '0_1'),
('2018-01-SG-inTeam-round-23-GP_3', '2018-01-SG-inTeam-round-23', 'GP_3', 'Aiur', 'P', '', '桃井五月', 'Z', '', '2018S02-03', '0_1'),
('2018-01-SG-inTeam-round-23-GP_4', '2018-01-SG-inTeam-round-23', 'GP_4', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-23-GP_5', '2018-01-SG-inTeam-round-23', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-24-BR_1', '2018-01-SG-inTeam-round-24', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-24-BB_1', '2018-01-SG-inTeam-round-24', 'BB_1', '', '', '', '', '', '', '2018S02-04', 'BB_1'),
('2018-01-SG-inTeam-round-24-GP_1', '2018-01-SG-inTeam-round-24', 'GP_1', '冰室辰也', 'P', '', '黑子哲也', 'T', '', '2018S02-06', '0_1'),
('2018-01-SG-inTeam-round-24-GP_2', '2018-01-SG-inTeam-round-24', 'GP_2', 'MoonLightz', 'T', '', '騷與他的八七隊友', 'Z', '', '2018S02-03', '0_1'),
('2018-01-SG-inTeam-round-24-GP_3', '2018-01-SG-inTeam-round-24', 'GP_3', '綠間真太郎', 'T', '', 'dream', 'Z', '', '2018S02-01', '1_0'),
('2018-01-SG-inTeam-round-24-GP_4', '2018-01-SG-inTeam-round-24', 'GP_4', '綠間真太郎', 'T', '', 'dream', 'Z', '', '2018S02-02', '0_1'),
('2018-01-SG-inTeam-round-24-GP_5', '2018-01-SG-inTeam-round-24', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-25-BR_1', '2018-01-SG-inTeam-round-25', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-25-BB_1', '2018-01-SG-inTeam-round-25', 'BB_1', '', '', '', '', '', '', '2018S02-01', 'BB_1'),
('2018-01-SG-inTeam-round-25-GP_1', '2018-01-SG-inTeam-round-25', 'GP_1', '黃瀨涼太', 'P', '', '桃井五月', 'Z', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-25-GP_2', '2018-01-SG-inTeam-round-25', 'GP_2', '黃瀨涼太', 'P', '', '火神大我', 'T', '', '2018S02-03', '0_1'),
('2018-01-SG-inTeam-round-25-GP_3', '2018-01-SG-inTeam-round-25', 'GP_3', '綠間真太郎', 'T', '', '不動遊星', 'T', '', '2018S02-02', '1_0'),
('2018-01-SG-inTeam-round-25-GP_4', '2018-01-SG-inTeam-round-25', 'GP_4', '黃瀨涼太', 'Z', '', '桃井五月', 'Z', '', '2018S02-05', '1_0'),
('2018-01-SG-inTeam-round-25-GP_5', '2018-01-SG-inTeam-round-25', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-26-BR_1', '2018-01-SG-inTeam-round-26', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-26-BB_1', '2018-01-SG-inTeam-round-26', 'BB_1', '', '', '', '', '', '', '2018S02-04', 'BB_1'),
('2018-01-SG-inTeam-round-26-GP_1', '2018-01-SG-inTeam-round-26', 'GP_1', '台北邱董', 'P', '', '西索莫羅', 'Z', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-26-GP_2', '2018-01-SG-inTeam-round-26', 'GP_2', '台北邱董', 'P', '', '黑子哲也', 'T', '', '2018S02-02', '0_1'),
('2018-01-SG-inTeam-round-26-GP_3', '2018-01-SG-inTeam-round-26', 'GP_3', '古橋康次郎', 'Z', '', 'dream', 'Z', '', '2018S02-05', '0_1'),
('2018-01-SG-inTeam-round-26-GP_4', '2018-01-SG-inTeam-round-26', 'GP_4', '古橋康次郎', 'Z', '', 'dream', 'P', '', '2018S01-05', '1_0'),
('2018-01-SG-inTeam-round-26-GP_5', '2018-01-SG-inTeam-round-26', 'GP_5', 'Aiur', 'P', '', 'Fsix', 'Z', '', '2018S02-01', '0_1'),
('2018-01-SG-inTeam-round-27-BR_1', '2018-01-SG-inTeam-round-27', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-27-BB_1', '2018-01-SG-inTeam-round-27', 'BB_1', '', '', '', '', '', '', '2018S02-04', 'BB_1'),
('2018-01-SG-inTeam-round-27-GP_1', '2018-01-SG-inTeam-round-27', 'GP_1', '台北邱董', 'P', '', '冰室辰也', 'P', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-27-GP_2', '2018-01-SG-inTeam-round-27', 'GP_2', '古橋康次郎', 'Z', '', '黃瀨涼太', 'P', '', '2018S02-05', '0_1'),
('2018-01-SG-inTeam-round-27-GP_3', '2018-01-SG-inTeam-round-27', 'GP_3', '山井壽', 'T', '', '黃瀨涼太', 'Z', '', '2018S02-03', '0_1'),
('2018-01-SG-inTeam-round-27-GP_4', '2018-01-SG-inTeam-round-27', 'GP_4', '山井壽', 'Z', '', '黃瀨涼太', 'P', '', '2018S02-02', '1_0'),
('2018-01-SG-inTeam-round-27-GP_5', '2018-01-SG-inTeam-round-27', 'GP_5', '古橋康次郎', 'Z', '', '黃瀨涼太', 'P', '', '2018S02-01', '0_1'),
('2018-01-SG-inTeam-round-28-BR_1', '2018-01-SG-inTeam-round-28', 'BR_1', '', '', '', '', '', '', '2018S02-04', 'BR_1'),
('2018-01-SG-inTeam-round-28-BB_1', '2018-01-SG-inTeam-round-28', 'BB_1', '', '', '', '', '', '', '2018S02-07', 'BB_1'),
('2018-01-SG-inTeam-round-28-GP_1', '2018-01-SG-inTeam-round-28', 'GP_1', '騷與他的八七隊友', 'T', '', '鴨王', 'Z', '', '2018S02-06', '0_1'),
('2018-01-SG-inTeam-round-28-GP_2', '2018-01-SG-inTeam-round-28', 'GP_2', '黑子哲也', 'T', '', 'BirdKinG', 'P', '', '2018S02-03', '0_1'),
('2018-01-SG-inTeam-round-28-GP_3', '2018-01-SG-inTeam-round-28', 'GP_3', 'dream', 'Z', '', '紫原敦', 'T', '', '2018S02-02', '1_0'),
('2018-01-SG-inTeam-round-28-GP_4', '2018-01-SG-inTeam-round-28', 'GP_4', 'dream', 'Z', '', '桃井五月', 'Z', '', '2018S02-01', '1_0'),
('2018-01-SG-inTeam-round-28-GP_5', '2018-01-SG-inTeam-round-28', 'GP_5', 'Fsix', 'Z', '', 'BirdKinG', 'Z', '', '2018S02-05', '1_0'),
('2018-01-SG-inTeam-round-31-BR_1', '2018-01-SG-inTeam-round-31', 'BR_1', '', '', '', '', '', '', '2018S02-04', 'BR_1'),
('2018-01-SG-inTeam-round-31-BB_1', '2018-01-SG-inTeam-round-31', 'BB_1', '', '', '', '', '', '', '2018S02-07', 'BB_1'),
('2018-01-SG-inTeam-round-31-GP_1', '2018-01-SG-inTeam-round-31', 'GP_1', '騷與他的八七隊友', 'Z', '', 'MoonLightz', 'T', '', '2018S02-06', '1_0'),
('2018-01-SG-inTeam-round-31-GP_2', '2018-01-SG-inTeam-round-31', 'GP_2', '西索莫羅', 'Z', '', 'Alex', 'T', '', '2018S02-01', '0_1'),
('2018-01-SG-inTeam-round-31-GP_3', '2018-01-SG-inTeam-round-31', 'GP_3', 'LSC', 'T', '', '綠間真太郎', 'T', '', '2018S01-05', '1_0'),
('2018-01-SG-inTeam-round-31-GP_4', '2018-01-SG-inTeam-round-31', 'GP_4', 'LSC', 'T', '', 'Alex', 'T', '', '2018S01-02', '1_0'),
('2018-01-SG-inTeam-round-31-GP_5', '2018-01-SG-inTeam-round-31', 'GP_5', '', '', '', '', '', '', '', ''),
('2018-01-SG-inTeam-round-32-BR_1', '2018-01-SG-inTeam-round-32', 'BR_1', '', '', '', '', '', '', '2018S02-07', 'BR_1'),
('2018-01-SG-inTeam-round-32-BB_1', '2018-01-SG-inTeam-round-32', 'BB_1', '', '', '', '', '', '', '2018S02-01', 'BB_1'),
('2018-01-SG-inTeam-round-32-GP_1', '2018-01-SG-inTeam-round-32', 'GP_1', '台北邱董', 'P', '', '鴨王', 'Z', '', '2018S02-06', '0_1'),
('2018-01-SG-inTeam-round-32-GP_2', '2018-01-SG-inTeam-round-32', 'GP_2', '古橋康次郎', 'Z', '', '桃井五月', 'P', '', '2018S01-02', '0_1'),
('2018-01-SG-inTeam-round-32-GP_3', '2018-01-SG-inTeam-round-32', 'GP_3', 'Aiur', 'P', '', 'BirdKinG', 'Z', '', '2018S02-04', '0_1'),
('2018-01-SG-inTeam-round-32-GP_4', '2018-01-SG-inTeam-round-32', 'GP_4', '', 'T', '', '', 'T', '', '', '1_0'),
('2018-01-SG-inTeam-round-32-GP_5', '2018-01-SG-inTeam-round-32', 'GP_5', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `ladderMap`
--

CREATE TABLE `ladderMap` (
  `ID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seasonID` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_TC` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_EN` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `ladderMap`
--

INSERT INTO `ladderMap` (`ID`, `seasonID`, `type`, `name_TC`, `name_EN`) VALUES
('2018S01-01', '2018S01', '1v1', '生命之源', 'Abiogenesis'),
('2018S01-02', '2018S01', '1v1', '強酸工廠', 'Acid Plant'),
('2018S01-03', '2018S01', '1v1', '截流窪地', 'Backwater'),
('2018S01-04', '2018S01', '1v1', '紅粉不夜城', 'Blackpink'),
('2018S01-05', '2018S01', '1v1', '戰意高昂之境', 'Catalyst'),
('2018S01-06', '2018S01', '1v1', '東方守望', 'Eastwatch'),
('2018S01-07', '2018S01', '1v1', '霓虹紫羅蘭廣場', 'Neon Violet Square'),
('2018S02-01', '2018S02', '1v1', '16位元', '16 Bit'),
('2018S02-02', '2018S02', '1v1', '強酸工廠', 'Acid Plant'),
('2018S02-03', '2018S02', '1v1', '戰意高昂之境', 'Catalyst'),
('2018S02-04', '2018S02', '1v1', '黑暗聖殿', 'Darkness Sanctuary'),
('2018S02-05', '2018S02', '1v1', '捕夢網', 'Dreamcatcher'),
('2018S02-06', '2018S02', '1v1', '失物招領', 'Lost and Found'),
('2018S02-07', '2018S02', '1v1', '紅移', 'Redshift');

-- --------------------------------------------------------

--
-- 資料表結構 `ladderSeason`
--

CREATE TABLE `ladderSeason` (
  `key` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_tc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `ladderSeason`
--

INSERT INTO `ladderSeason` (`key`, `name_tc`, `name_en`) VALUES
('2018S01', '2018年第一賽季', '2018 Season 1');

-- --------------------------------------------------------

--
-- 資料表結構 `match`
--

CREATE TABLE `match` (
  `ID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phaseID` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matchNo` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redTeam` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blueTeam` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTime` datetime NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `match`
--

INSERT INTO `match` (`ID`, `phaseID`, `matchNo`, `redTeam`, `blueTeam`, `dateTime`, `status`) VALUES
('2018-01-SG-inTeam-round-1', '2018-01-SG-inTeam-round', '1', 'victory', 'dragon', '2018-03-31 20:00:00', 'final'),
('2018-01-SG-inTeam-round-2', '2018-01-SG-inTeam-round', '2', 'family', 'profession', '2018-03-31 21:00:00', 'final'),
('2018-01-SG-inTeam-round-3', '2018-01-SG-inTeam-round', '3', 'victory', 'family', '2018-04-08 20:00:00', 'final'),
('2018-01-SG-inTeam-round-4', '2018-01-SG-inTeam-round', '4', 'dragon', 'profession', '2018-04-08 21:00:00', 'final'),
('2018-01-SG-inTeam-round-6', '2018-01-SG-inTeam-round', '6', 'dragon', 'family', '2018-04-14 21:00:00', 'final'),
('2018-01-SG-inTeam-round-5', '2018-01-SG-inTeam-round', '5', 'victory', 'profession', '2018-04-14 20:00:00', 'final'),
('2018-01-SG-inTeam-round-7', '2018-01-SG-inTeam-round', '7', 'victory', 'dragon', '2018-04-22 20:00:00', 'final'),
('2018-01-SG-inTeam-round-8', '2018-01-SG-inTeam-round', '8', 'family', 'profession', '2018-04-22 21:00:00', 'final'),
('2018-01-SG-inTeam-round-9', '2018-01-SG-inTeam-round', '9', 'profession', 'dragon', '2018-04-28 20:00:00', 'final'),
('2018-01-SG-inTeam-round-10', '2018-01-SG-inTeam-round', '10', 'victory', 'family', '2018-04-28 21:00:00', 'final'),
('2018-01-SG-inTeam-round-11', '2018-01-SG-inTeam-round', '11', 'victory', 'profession', '2018-05-06 20:00:00', 'final'),
('2018-01-SG-inTeam-round-12', '2018-01-SG-inTeam-round', '12', 'family', 'dragon', '2018-05-06 21:00:00', 'final'),
('2018-01-SG-inTeam-round-13', '2018-01-SG-inTeam-round', '13', 'victory', 'dragon', '2018-05-12 20:00:00', 'final'),
('2018-01-SG-inTeam-round-14', '2018-01-SG-inTeam-round', '14', 'family', 'profession', '2018-05-12 21:00:00', 'final'),
('2018-01-SG-inTeam-round-15', '2018-01-SG-inTeam-round', '15', 'victory', 'family', '2018-05-20 20:00:00', 'final'),
('2018-01-SG-inTeam-round-16', '2018-01-SG-inTeam-round', '16', 'profession', 'dragon', '2018-05-20 21:00:00', 'final'),
('2018-01-SG-inTeam-round-17', '2018-01-SG-inTeam-round', '17', 'profession', 'victory', '2018-05-26 20:00:00', 'final'),
('2018-01-SG-inTeam-round-18', '2018-01-SG-inTeam-round', '18', 'family', 'dragon', '2018-05-26 21:00:00', 'final'),
('2018-01-SG-inTeam-round-19', '2018-01-SG-inTeam-round', '19', 'family', 'profession', '2018-06-03 20:30:00', 'final'),
('2018-01-SG-inTeam-round-20', '2018-01-SG-inTeam-round', '20', 'victory', 'dragon', '2018-06-03 21:30:00', 'final'),
('2018-01-SG-inTeam-round-21', '2018-01-SG-inTeam-round', '21', 'family', 'victory', '2018-06-10 20:30:00', 'final'),
('2018-01-SG-inTeam-round-22', '2018-01-SG-inTeam-round', '22', 'profession', 'dragon', '2018-06-10 21:30:00', 'final'),
('2018-01-SG-inTeam-round-23', '2018-01-SG-inTeam-round', '23', 'family', 'dragon', '2018-06-16 20:30:00', 'final'),
('2018-01-SG-inTeam-round-24', '2018-01-SG-inTeam-round', '24', 'victory', 'profession', '2018-06-16 21:30:00', 'final'),
('2018-01-SG-inTeam-round-25', '2018-01-SG-inTeam-round', '25', 'victory', 'dragon', '2018-06-24 20:00:00', 'final'),
('2018-01-SG-inTeam-round-26', '2018-01-SG-inTeam-round', '26', 'family', 'profession', '2018-06-24 21:00:00', 'final'),
('2018-01-SG-inTeam-round-27', '2018-01-SG-inTeam-round', '27', 'family', 'victory', '2018-06-30 20:00:00', 'final'),
('2018-01-SG-inTeam-round-28', '2018-01-SG-inTeam-round', '28', 'profession', 'dragon', '2018-06-30 21:00:00', 'final'),
('2018-01-SG-inTeam-round-31', '2018-01-SG-inTeam-round', '31', 'profession', 'victory', '2018-07-08 20:00:00', 'final'),
('2018-01-SG-inTeam-round-32', '2018-01-SG-inTeam-round', '32', 'family', 'dragon', '2018-07-08 21:00:00', 'final');

-- --------------------------------------------------------

--
-- 資料表結構 `phase`
--

CREATE TABLE `phase` (
  `ID` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cupID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phaseID` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teamlimit` int(11) NOT NULL,
  `peoplelimit` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `host` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `phase`
--

INSERT INTO `phase` (`ID`, `cupID`, `phaseID`, `teamlimit`, `peoplelimit`, `startDate`, `endDate`, `host`, `memo`) VALUES
('2018-01-SG-inTeam-round', '2018-01-SG-inTeam', 'round', 0, 0, '2018-03-31', '0000-00-00', 'SGlory', ''),
('2018-S1-outTeam-round', '2018-S1-outTeam', 'round', 0, 0, '2018-03-30', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `player`
--

CREATE TABLE `player` (
  `cupID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `playerID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `playerClan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `playerName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `playerSName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `battleTag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `league` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tier` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buildDateTime` datetime NOT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `player`
--

INSERT INTO `player` (`cupID`, `playerID`, `playerClan`, `playerName`, `playerSName`, `battleTag`, `national`, `race`, `league`, `tier`, `buildDateTime`, `memo`, `state`) VALUES
('2018-01-SG-inTeam', '1', 'dragon', '日向順平', '', '', '', 'P', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '2', 'dragon', 'BirdKinG', '', '', '', 'Z', '', '', '2018-03-29 23:00:00', '', 'retired'),
('2018-01-SG-inTeam', '3', 'dragon', '紫原敦', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'retired'),
('2018-01-SG-inTeam', '4', 'dragon', '桃井五月', '', '', '', 'Z', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '5', 'dragon', '降旗光樹', '', '', '', 'P', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '6', 'dragon', '小蟲', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '7', 'family', '青峰大輝', '', '', '', 'Z', '', '', '2018-03-29 23:00:00', '', 'retired'),
('2018-01-SG-inTeam', '8', 'family', '山井壽', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '9', 'family', 'Aiur', '', '', '', 'P', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '10', 'family', '木吉鐵平', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '11', 'family', '家可可', '', '', '', 'Z', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '12', 'family', 'MMA', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '13', 'profession', '騷與他的八七隊友', '', '', '', 'P', '', '', '2018-03-30 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '14', 'profession', 'LSC', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '15', 'profession', 'dream', '', '', '', 'Z', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '16', 'profession', 'Fsix', '', '', '', 'Z', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '17', 'profession', '黑子哲也', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '18', 'profession', '西索莫羅', '', '', '', 'Z', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '19', 'victory', '黃瀨涼太', '', '', '', 'Z', '', '', '2018-03-29 23:00:00', '', 'retired'),
('2018-01-SG-inTeam', '20', 'victory', 'OverLord', '', '', '', 'Z', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '21', 'victory', '絕望少年年少絕望', '', '', '', 'R', '', '', '2018-03-29 23:00:00', '', 'retired'),
('2018-01-SG-inTeam', '22', 'victory', 'MoonLightz', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '23', 'victory', '冰室辰也', '', '', '', 'P', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '24', 'victory', '已完成', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '25', 'victory', '綠間真太郎', '', '', '', 'T', '', '', '2018-03-29 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '26', 'dragon', '火神大我', '', '', '', 'T', '', '', '2018-04-16 22:00:00', '', 'retired'),
('2018-01-SG-inTeam', '27', 'family', 'AkoideN', '', '', '', 'T', '', '', '2018-04-25 17:40:00', '', 'active'),
('2018-01-SG-inTeam', '28', 'dragon', '鴨王', '', '', '', 'Z', '', '', '2018-05-27 23:00:00', '', 'retired'),
('2018-01-SG-inTeam', '29', 'dragon', '不動遊星', '', '', '', 'T', '', '', '2018-05-27 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '30', 'victory', '肥宅帝國', '', '', '', 'Z', '', '', '2018-05-27 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '31', 'victory', '森山由孝', '', '', '', 'P', '', '', '2018-05-27 23:00:00', '', 'active'),
('2018-01-SG-inTeam', '32', 'family', '古橋康次郎', '', '', '', 'Z', '', '', '2018-05-31 22:41:35', '', 'active'),
('2018-01-SG-inTeam', '33', 'family', '台北邱董', '', '', '', 'P', '', '', '2018-06-07 22:22:00', '', 'active'),
('2018-01-SG-inTeam', '34', 'victory', 'Alex', '', '', '', 'T', '', '', '2018-07-08 10:09:00', '', 'active');

-- --------------------------------------------------------

--
-- 資料表結構 `qualifyingSystem`
--

CREATE TABLE `qualifyingSystem` (
  `ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_EN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_TC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `qualifyingSystem`
--

INSERT INTO `qualifyingSystem` (`ID`, `type`, `name_EN`, `name_TC`, `memo`) VALUES
('3BO5A', 'Multiple', 'Three Player Best of 5 with Ace Match', '3人BO5 含 Ace 戰', '三人BO5，且平手時需加賽 Ace 戰');

-- --------------------------------------------------------

--
-- 資料表結構 `rename`
--

CREATE TABLE `rename` (
  `No` int(11) NOT NULL,
  `cupID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `playerID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oldName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `rename`
--

INSERT INTO `rename` (`No`, `cupID`, `playerID`, `oldName`, `newName`, `date`) VALUES
(1, '2018-01-SG-inTeam', '1', '宇智波鼬', '日向順平', '2018-05-19'),
(2, '2018-01-SG-inTeam', '2', '宇智波神鳥', 'BirdKinG', '2018-05-19'),
(3, '2018-01-SG-inTeam', '3', '宇智波熱', '紫原敦', '2018-05-19'),
(4, '2018-01-SG-inTeam', '4', '宇智波滑', '桃井五月', '2018-05-19'),
(5, '2018-01-SG-inTeam', '5', '宇智波不朽', '降旗光樹', '2018-05-19'),
(6, '2018-01-SG-inTeam', '19', '宇智波鏡', '黃瀨涼太', '2018-05-19'),
(7, '2018-01-SG-inTeam', '20', '宇智波止水', 'OverLord', '2018-05-19'),
(8, '2018-01-SG-inTeam', '21', '宇智波紗羅妲', '絕望少年年少絕望', '2018-05-19'),
(9, '2018-01-SG-inTeam', '23', 'Chen', '冰室辰也', '2018-05-19'),
(10, '2018-01-SG-inTeam', '26', 'MarineKing', '火神大我', '2018-05-19'),
(11, '2018-01-SG-inTeam', '27', '宇智波帶土', 'AkoideN', '2018-05-19'),
(12, '2018-01-SG-inTeam', '7', '宇智波斑', '青峰大輝', '2018-05-19'),
(13, '2018-01-SG-inTeam', '8', '隱山林', '山井壽', '2018-05-19'),
(14, '2018-01-SG-inTeam', '10', '宇智波小槍', '木吉鐵平', '2018-05-20'),
(15, '2018-01-SG-inTeam', '25', '哇阿災', '綠間真太郎', '2018-05-20'),
(16, '2018-01-SG-inTeam', '13', '宇智波多野結衣', '騷與他的八七隊友', '2018-05-26'),
(17, '2018-01-SG-inTeam', '14', '見面一秒就', 'LSC', '2018-05-29'),
(18, '2018-01-SG-inTeam', '28', 'TonyMontana', '鴨王', '2018-06-09'),
(19, '2018-01-SG-inTeam', '18', 'DySjoKEr', '西索莫羅', '2018-06-10');

-- --------------------------------------------------------

--
-- 資料表結構 `team`
--

CREATE TABLE `team` (
  `ID` int(11) NOT NULL,
  `cupID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teamID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teamName_EN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teamName_TC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leader` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `team`
--

INSERT INTO `team` (`ID`, `cupID`, `teamID`, `teamName_EN`, `teamName_TC`, `leader`, `memo`) VALUES
(1, '2018-01-SG-inTeam', 'dragon', '', '飛龍在天', '宇智波鼬', ''),
(2, '2018-01-SG-inTeam', 'victory', '', '勝利bang不見', '宇智波鏡', ''),
(3, '2018-01-SG-inTeam', 'profession', '', '內行人復興', '宇智波多野結衣', ''),
(4, '2018-01-SG-inTeam', 'family', '', '你家就是我家', '宇智波斑', ''),
(5, '2018-S1-outTeam', 'SPTS&xTMDx', 'Super Times & Toxic Milk Daily', 'SPTS & xTMDx', '', ''),
(6, '2018-S1-outTeam', 'SGlory', 'Supreme Glory', 'SGlory', '', '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `broadcastSetting`
--
ALTER TABLE `broadcastSetting`
  ADD PRIMARY KEY (`No`);

--
-- 資料表索引 `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `ladderMap`
--
ALTER TABLE `ladderMap`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`cupID`,`playerID`);

--
-- 資料表索引 `qualifyingSystem`
--
ALTER TABLE `qualifyingSystem`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `rename`
--
ALTER TABLE `rename`
  ADD PRIMARY KEY (`No`);

--
-- 資料表索引 `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `broadcastSetting`
--
ALTER TABLE `broadcastSetting`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rename`
--
ALTER TABLE `rename`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `team`
--
ALTER TABLE `team`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
