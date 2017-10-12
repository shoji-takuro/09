-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017 年 10 朁E12 日 20:45
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pro_bb`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bb_user_table`
--

CREATE TABLE IF NOT EXISTS `bb_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `bb_user_table`
--

INSERT INTO `bb_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(7, 'test', 'test', '$2y$10$mZByrr2qxR1J3d.Pr/Bswu7XdSq5mmQ3j5PCL2WSb7nLOOYrZi76y', 1, 0),
(8, 'test1', 'test1', '$2y$10$guuEUW6cnNRfP1vI11Uvpe2uyMl0ZYFAUzEXmik3DKUfzq2zood3S', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `central_league`
--

CREATE TABLE IF NOT EXISTS `central_league` (
`id` int(12) NOT NULL,
  `commentator` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `indate` date NOT NULL,
  `source` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `first` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `second` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `third` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `fourth` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `fifth` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `sixth` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `central_league`
--

INSERT INTO `central_league` (`id`, `commentator`, `indate`, `source`, `first`, `second`, `third`, `fourth`, `fifth`, `sixth`, `remarks`) VALUES
(7, '中畑清', '2017-01-09', 'BS11', '巨人', '広島', 'DeNA', '阪神', '中日', 'ヤクルト', '無し'),
(8, '安仁屋宗八', '2016-12-31', '週刊ポスト', '広島', '阪神', '巨人', 'DeNA', 'ヤクルト', '中日', '広島の黒田の穴は、大瀬良、福井、岡田で埋まる。野手は盤石で自信も付けた。連覇は間違いない。'),
(9, '村上雅則', '2016-12-31', '週刊ポスト', '巨人', '広島', '阪神', 'DeNA', 'ヤクルト', '中日', '巨人が一歩リード。ただ大型補強はチーム内に亀裂を生みかねない。由伸監督が強いリーダーシップでチームをまとめられるかが鍵。'),
(10, '広澤克実', '2016-12-31', '週刊ポスト', '阪神', '広島', '巨人', 'DeNA', 'ヤクルト', '中日', '阪神金本監督が、FA糸井に頼り過ぎず、1年目同様に若手を積極的に起用し続ける采配ができるかが鍵。巨人の大型補強は失敗に終わる。'),
(11, '平松政次', '2016-12-31', '週刊ポスト', '巨人', '阪神', '中日', '広島', 'ヤクルト', 'DeNA', '巨人は森福の加入で15～20勝、山口で10勝の上積み。実力通りに働けば独走するだろう。計算が多少外れても優勝は揺るぎなし。'),
(12, '篠塚和典', '2016-12-31', '週刊ポスト', '巨人', '広島', '阪神', 'ヤクルト', 'DeNA', '中日', '戦力的に優勝は巨人。最大の弱点はキャッチャーで、小林をどう育てるかがチーム最大の課題。であれば、小林のライバルになるバッティングのいい捕手を補強すべき。');

-- --------------------------------------------------------

--
-- テーブルの構造 `pacific_league`
--

CREATE TABLE IF NOT EXISTS `pacific_league` (
`id` int(12) NOT NULL,
  `commentator` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `indate` date NOT NULL,
  `source` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `first` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `second` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `third` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `fourth` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `fifth` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `sixth` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `pacific_league`
--

INSERT INTO `pacific_league` (`id`, `commentator`, `indate`, `source`, `first`, `second`, `third`, `fourth`, `fifth`, `sixth`, `remarks`) VALUES
(5, '中畑清', '2017-01-09', 'BS11', '日ハム', 'ソフトバンク', '西武', 'ロッテ', '楽天', 'オリックス', '無し'),
(6, '安仁屋宗八', '2016-12-31', '週刊ポスト', 'ソフトバンク', '日ハム', '西武', 'ロッテ', 'オリックス', '楽天', 'SBの戦力は他球団に比べ1枚も2枚も上。最大の関心は、解説者時代に試合展開の読みを外していた達川がヘッドコーチになり作戦の読みが当たるのか？'),
(7, '村上雅則', '2016-12-31', '週刊ポスト', '日ハム', 'ソフトバンク', '楽天', 'ロッテ', '西武', 'オリックス', '外野陣に熾烈なレギュラー争いが勃発する日本ハムは昨シーズンよりさらに強くなる。陽の抜けた穴埋めも問題なし。'),
(8, '広澤克実', '2016-12-31', '週刊ポスト', 'ソフトバンク', '日ハム', 'ロッテ', '西武', '楽天', 'オリックス', '戦力的にはSBが断トツ。問題は巨人と同じく技術指導できるコーチがいないこと。選手が不振に陥ると短期間で戻す術がない。'),
(9, '平松政次', '2016-12-31', '週刊ポスト', 'ソフトバンク', '日ハム', '楽天', 'ロッテ', '西武', 'オリックス', '選手層の厚さでSB。昨季は油断があった。森福が抜け日ハムとの実力は更に拮抗するが、それでもクビ差でSBが上。'),
(10, '篠塚和典', '2016-12-31', '週刊ポスト', 'ソフトバンク', '日ハム', 'ロッテ', '西武', '楽天', 'オリックス', 'SBが頭ひとつ抜けている。昨季の柳田のケガの様なアクシデントが無ければ、独走するのでは。ドラ1の田中は即戦力になるかも。');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bb_user_table`
--
ALTER TABLE `bb_user_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `central_league`
--
ALTER TABLE `central_league`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacific_league`
--
ALTER TABLE `pacific_league`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bb_user_table`
--
ALTER TABLE `bb_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `central_league`
--
ALTER TABLE `central_league`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pacific_league`
--
ALTER TABLE `pacific_league`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
