-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： sql301.unaux.com
-- 產生時間： 2021 年 07 月 10 日 11:45
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
-- 資料庫： `unaux_21450381_sglory`
--

-- --------------------------------------------------------

--
-- 資料表結構 `GameVersion`
--

CREATE TABLE `GameVersion` (
  `versionID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upDate` date NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `ReplayShare`
--

CREATE TABLE `ReplayShare` (
  `ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTime` datetime NOT NULL,
  `sharer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gameVersion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `combination` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `ReplayShare`
--

INSERT INTO `ReplayShare` (`ID`, `dateTime`, `sharer`, `gameVersion`, `combination`, `title`, `memo`, `privacy`) VALUES
('RP-20180428123915155', '2018-04-28 12:39:15', '山林', '4.3.0', 'TvP', '4/25 TvP   TBTL聯賽 一槍兩胖速VF開局對閃追', '<p>1:20 &nbsp;</p><p>判斷是BG偵查&nbsp; &nbsp;</p><p>因為慢瓦開兵營比較快不會被咬死&nbsp; &nbsp;</p><p>就放給他A</p><br><p>2:00 &nbsp;</p><p>看到二礦半血多一點</p><p>正常的BG開礦</p><p>二礦有水晶所以不是野水晶</p><p>預想之後3:30前壓二礦可能會有電池</p><br><p>2:40 </p><p>偵查回來的工兵剛好蓋第三兵營</p><br><p>2:47</p><p>停兵(胖胖)</p><p>按打針和星軌</p><br><p>3:02</p><p>沒控到被教士逃走</p><p>第二兵營好開二瓦</p><br><p>3:20 </p><p>家裡補電機跟補給站</p><br><p>3:30</p><p>看到有電池，退</p><br><p>4:10</p><p>接著走速VF的開局</p><p>否則可以存錢到430先開三</p><p>而VF等五分鐘再下</p><br><p>4:30雙防空守隱刀</p><br><p>5:00 </p><p>兩槍兵控圖</p><p>+偵查對面是否有開三礦</p><p>正常4:40左右就要出門找三礦</p><p>這場晚了</p><br><p>5:38 看到三礦，出門壓他</p><br><p>5:55 一攻好了提一防</p><br><p>6:11 </p><p>速VF所以前線要等兩醫療到再打</p><p>兩醫療應該要加速到戰場&nbsp; &nbsp;</p><p>這場忘記做</p><br><p>6:20</p><p>灑雷達看對面配兵</p><p>有機會就偷吃兵</p><p>別被騙打針</p><p>心理構想開戰控兵的藍圖</p><br><p>6:25騙到開盾就退</p><p>別被立場切到 &nbsp;</p><p>等醫療</p><br><p>6:33 </p><p>醫療挺到了</p><p>廣口他立場不能切</p><p>可以衝了</p><p>不朽要吃掉</p><br><p>6:42</p><p>這個位置其實最容易被切</p><p>但對面已經開過1盾+2立場</p><p>能量不夠了 &nbsp;</p><p>所以還是猛衝</p><br><p>6:50 &nbsp;</p><p>吃完主力，心想這場贏了</p><br><p>7:06 </p><p>補個VA，別讓二攻慢了</p><p>四船接兩解放</p><p>正面或雙線三線都好用</p><br><p>7:16 </p><p>以為對面刷大量衝狂，被騙針</p><p>但有四醫療挺其實奶得回來</p><br><p>7:30</p><p>對面沒消耗掉我的兵才卡人口</p><p>下兩補給站跟一個空頭補給站</p><br><p>7:39 &nbsp;</p><p>確認對面剩餘兵力決定要不要衝</p><p>如果對面有巨象或電兵</p><p>可以考慮回去開三礦或者投主礦</p><p>有立場就要小心</p><p>都沒有就衝了</p>', 0),
('RP-20180501105600123', '2018-05-01 10:56:00', '小白', '4.3.0', 'ZvP', 'zvp 蟲洞一波(針對vs轉vc主流開局)', '<p>重點:前面狗速完留一農民採氣 二礦滿營運後復採<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4:00二本 4:30蟑螂巢&amp;2 3氣<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;二 三礦后蟲不停產<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;下蟑螂巢後停46農 爆20條狗繞三礦&amp;分一小批狗準備衝上對手二礦開視野<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;蟲洞開在二礦後優先點掉對面水晶&nbsp; 外面那批狗可以咬三基地或是進二礦跟主力一起A</p>', 0),
('RP-20180501110236497', '2018-05-01 11:02:36', '小白', '4.3.0', 'ZvZ', 'zvz一防狗開局', '<p>流程:正常裸雙開 76~80瓦時下bv 先不提狗速 bv好後會剛好150瓦提一防<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;再看到對面裸雙後前四條狗可以站斜坡h封偵查<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;主礦后蟲出來以後拖到二礦 再產一隻后蟲<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;一防後有100瓦提狗速<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;提完狗速後有50瓦可以下毒暴巢保底(這把看到對面打堵口蟑螂所以取消毒爆巢)<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;二礦捕到16農後開三 準備爆狗<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;狗出門下蟑螂巢和開二氣<br>&nbsp; &nbsp; &nbsp; &nbsp; 一防好後提遠程一攻 再有100瓦升二本<br>*重點:如果對面再一防好前爆狗要配合建築學堵口插地刺防守<br><br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0),
('RP-20180502225736827', '2018-05-02 22:57:36', '沾砸拉蚊子(宇智波紗羅妲)', '4.3.0', 'ZvT', '蚊子 VS Mvp', '', 0),
('RP-20180503010548957', '2018-05-03 01:05:48', '羅爸', '4.3.0', 'TvP', '神族蓋中間電池', '前面一槍兩胖賺到，但是對手放電池在中途。', 0),
('RP-20180503232455810', '2018-05-03 23:24:55', '山林', '4.3.0', 'TvZ', 'TVZ 兩船接四船對多媽狗', '<p>速兩船接四船簡易流程</p><p>補給站-&gt;兵營-&gt;1瓦-&gt;死神星軌-&gt;二礦-&gt;2兵營-&gt;反應爐-&gt;2補給站2瓦-&gt;二兵營好了蓋VF，VF好接蓋VS-&gt;第3、4補給站-&gt;交換按兩船-&gt;2電機-&gt;第56補給站-&gt;提11-&gt;提盾牌-&gt;下三礦-&gt;34瓦7補給站-&gt;有兩百瓦再按兩船-&gt;有100瓦下VA，VF掛科技出坦克-&gt;345BB</p><p>2:40操作一下殺兩農</p><p>3:15 看一下三礦跟二礦農，有，營運!很好!</p><p>3:40抓王蟲，判斷主礦抓不掉，拉兩隻出去撿尾，別拉太多隻，小心毒報一波死去</p><p>3:50補給站蓋歪，不要學</p><p>4:50出門小遲到</p><p>5:00請跟著我視野，拉近視窗確定是不是有狗，有狗!判斷他會去守三礦，所以我決定去外面清蟲台。同時忘記提一防@@</p><p>5:30 在按34船，前面沒控的很好</p><p>6:00不小心炸太多礦羅，甩一點狗就載起來，戰損400:0，不賺也沒太虧，沒送兵為四船一波做準備。忘記下VA導致22慢。</p><p>6:20 拉死神SHIFT去清狗</p><p>6:30 34船編第二隊SHIFT出去，走一個他王蟲+監視塔應該看不到的路徑</p><p>6:54 用編隊2再加速一次</p><p>6:50 清蟲台，吸引他把兵放正面</p><p>7:00 快投下去的時候，如果34瓦有採，營運順暢，可以按22。</p><p>7:13 兩邊同時投下去，編隊121212切換控</p><p>7:18 看到大量狗毒在三礦&nbsp; 判斷他沒看到主礦那兩船，全部兵都在這裡，打一下狗，快被炸到就載起來，假裝被炸光，假裝要走，SHIFT回頭，投在邊邊。</p><p>7:26 看到主礦如此，判斷蟲族大概要掛了，蟲族勝大量狗跟少量毒爆，毒爆還很遠，卡口就可以打很多狗，判斷先打離卡口比較近的狗池，</p><p>7:30 錯誤示範，有一對機槍兵在A狗池沒有在A狗，利用走A讓他去打狗。控不來，所以家裡面三兵營沒掛掛件就開始產兵。</p><p>7:59 錯誤示範，把槍兵放到無法卡口的地方被大量農民包，槍兵很軟，卡口才能堅挺住，被農A的不要不要的；正確應該是退到礦後卡口按H，媽媽如果設醫療挺一樣加速拉到槍兵後面H。如果農民不拉走或者農民A上來會送光，如果農民拉走，再走A出去殺媽媽。</p><p>8:30 打掉毒爆槽，沒得卡口而且蟲族次蛇或者毒爆快來了，載走。判斷已經打傷而且沒滾速的蟲族可以一波打死，全家出門A。</p><p>8:40 把最前線的蟲台打掉，別太早讓對方發現我出門。</p><p>9:00 騙出門 ，後面兵自然接上，讓他以為對面只是一船兵在清蟲台，先送一波給大部隊。</p>', 0),
('RP-20180506101600816', '2018-05-06 10:16:00', '小白', '4.3.0', 'ZvZ', 'zvz 13d狗毒爆', '<p>開局按一隻工兵</p><p>工兵出來蓋瓦斯場 有200塊狗池<br></p><p>補農民到14/14按王蟲<br>王蟲好按2條狗+一后蟲<br>提狗速後繼續按狗<br>50瓦下毒爆巢(同時瓦斯只留二農民採氣)</p><p>前八條狗繞出去<br>(二礦后蟲2:43左右會出來 這張圖2:25第一隻王蟲就會看到二礦 所以2:25八條狗就可以進去 同時家裡狗出門)<br>抓掉二礦后蟲(為了不讓對手有兩后蟲卡斜坡)同時變毒爆 再來就是看情況A 控毒爆 狗稍微操作 有地刺毒爆至少變5顆以上炸掉地刺以後繼續吃農民&amp;后蟲</p>', 0),
('RP-20180508231248829', '2018-05-08 23:12:48', '鳥王', '4.3.0', 'ZvP', '[鳥王]Z V P', '', 0),
('RP-20180517011317458', '2018-05-17 01:13:17', '山林', '4.3.0', 'TvP', '0516 TVP 一槍兩胖對雙礦閃追開', '<p>1:21 沒偵查，可能是狗逼一波，或者很強....或很弱<br></p><p>3:00 送追獵，沒有第一時間拉回去，應該不是很強</p><p>5:00 還是沒三礦，自己下三礦準備防守</p><p>5:27 沒看到科技，雙BF才剛下，營運可能性++</p><p>6:03閃追到臉，看TIMING就知道應該是菜，但累了沒有手速分一半的兵繞右下角回去賭追獵，其實可以完吃</p><p>7:09 掃雷達看部隊位置，\"發現對面發現我的動向\"=&gt;她有小眼睛在我部隊上。</p><p>此時四醫療快出來了，正面有立場不好打=&gt;主礦空投四船</p><p>空投前先抓調小眼睛，無論如何...</p><p>7:53 神族沒視野慌了，出來解外面，準備雙線的預備部隊F2後退別送</p><p>8:10 神族RECALL，瞬間判斷沒有狂戰，白球，神族打進站肉搏很廢=&gt;不載走繼續打，果然打出一個1650的戰損，</p><p>而且對面四少尉一不朽都掉了，快打完的時候，醫療挺其實可以逃就逃沒控到。後面屌虐。</p>', 0),
('RP-20180714092209045', '2018-07-14 09:22:09', '山林', '', '', 'maru 兩船接兩坦前壓', '', 1),
('RP-20180822200823001', '2018-08-22 20:08:23', '山林', '', 'TvP', '0821 TVP 一槍兩胖對先知開轉衝狂', '<p>LJK上一場快贏 together 時部隊跳舞挑釁</p><p>我警告他別這樣做後跟他打一場<br>ljk 46xx<br></p><p>300 前巡一下有沒有被野水晶<br>抓到一教士&nbsp; 8成後面有先知 (跟上一場一樣)&nbsp; 殘血槍兵回家 <br></p><p>330 2胖換他4農+先知能量&nbsp; 賺!<br>家裡趁先知沒能量 趕快補防空</p><p>忘記下補給站&nbsp; 不要學</p><br><p>450 前面卡人口vf也慢下</p><p>不然照理講要420下3瓦的<br></p><br><p>530 偵查到三礦位置跟三礦進度</p><p>知道他沒有很偷</p><p><br>600 醫療挺快出來了&nbsp;&nbsp; 槍兵先走<br>先補5bb&nbsp; 因為覺得他很菜</p><p>不用開三可以直接打死他&nbsp; <br></p><br><p>630 真的太久沒練人類</p><p>卡人口卡到兵很少= =</p><p>二礦打不死他就開始打拉扯</p><p>忙前線家裡沒掛科技實踐室沒出胖子不要學</p><p>胖子正強</p><br><p>655 他會點醫療挺....還蠻強的耶</p><br><p>740&nbsp; 爆錢趕快下三礦</p><br><p>814 把三礦農屠了大半+水晶塔</p><p>保守一點撤退&nbsp; 回家營運&nbsp; (下va、掛建)</p><br><p>830 被詭雷炸死一堆槍兵不要學</p><br><p>850 看到兵量有起來&nbsp; 不打正面<br>醫療挺有三台&nbsp; 投主礦&nbsp; <br></p><p>解放繞三礦去架二礦</p><p>接上來的兵[右鍵+shift A]去打三礦&nbsp;&nbsp;&nbsp; (你要是用A的就會在路上打那根水晶了.....)<br></p><p>這三線天天都在用&nbsp;&nbsp; 所以我一下子判斷+執行完了<br></p><br><p>這裡有一個細節&nbsp; 如果你覺得對面有小眼睛</p><p>先掃描完之後再開始多線<br>我判斷他vs開、bg兵量多&nbsp; 應該vr沒那麼快下</p><br><p>900&nbsp; 再次確認他的部隊位置</p><p>三線通通繞過他<br><br>916 SHIFT打水晶塔&nbsp; <br>不讓他傳兵<br><br>930 狗屎運炸到8農&nbsp; 實戰沒發現</p><p>詭雷IMBA</p><br><p>946 神族剩一礦農+5狂+2哨 +3BG傳兵</p><p>二礦農持續被解放屠殺中<br></p>', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `ReplayShareDoc`
--

CREATE TABLE `ReplayShareDoc` (
  `docID` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `replayshareID` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `upDateTime` datetime NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fileNameExtension` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `memo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `ReplayShareDoc`
--

INSERT INTO `ReplayShareDoc` (`docID`, `replayshareID`, `upDateTime`, `title`, `fileNameExtension`, `memo`) VALUES
('RP-20180517011317458_1', 'RP-20180517011317458', '2018-05-17 01:13:17', '戰意高昂之境 - 天梯版 (395).SC2Replay', 'SC2Replay', ''),
('RP-20180428123915155_1', 'RP-20180428123915155', '2018-04-28 12:39:15', '紅粉不夜城 (189).SC2Replay', 'SC2Replay', ''),
('RP-20180501105600123_1', 'RP-20180501105600123', '2018-05-01 10:56:00', 'zvp蟲洞(針對vs轉vc).SC2Replay', 'SC2Replay', ''),
('RP-20180501110236497_1', 'RP-20180501110236497', '2018-05-01 11:02:36', 'zvz 一防狗開局.SC2Replay', 'SC2Replay', ''),
('RP-20180502225736827_1', 'RP-20180502225736827', '2018-05-02 22:57:36', '蚊子 VS MVP.SC2Replay', 'SC2Replay', ''),
('RP-20180503010548957_1', 'RP-20180503010548957', '2018-05-03 01:05:48', '電池蓋中間的神族(羅爸).SC2Replay', 'SC2Replay', ''),
('RP-20180503232455810_1', 'RP-20180503232455810', '2018-05-03 23:24:55', '截流窪地 - 天梯版 (158).SC2Replay', 'SC2Replay', ''),
('RP-20180508231248829_1', 'RP-20180508231248829', '2018-05-08 23:12:48', 'ZVP.SC2Replay', 'SC2Replay', ''),
('RP-20180506101600816_1', 'RP-20180506101600816', '2018-05-06 10:16:00', 'zvz 13d狗毒爆.SC2Replay', 'SC2Replay', ''),
('RP-20180714092209045_1', 'RP-20180714092209045', '2018-07-14 09:22:09', '強酸工廠 - 天梯版 (439).SC2Replay', 'SC2Replay', ''),
('RP-20180822200823001_1', 'RP-20180822200823001', '2018-08-22 20:08:23', '強酸工廠 - 天梯版 (505).SC2Replay', 'SC2Replay', '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `GameVersion`
--
ALTER TABLE `GameVersion`
  ADD PRIMARY KEY (`versionID`);

--
-- 資料表索引 `ReplayShare`
--
ALTER TABLE `ReplayShare`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `ReplayShareDoc`
--
ALTER TABLE `ReplayShareDoc`
  ADD PRIMARY KEY (`docID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
