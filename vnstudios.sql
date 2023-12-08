-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2023 at 11:52 AM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vnstudios`
--

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_changelogs`
--

CREATE TABLE `mkvn_changelogs` (
  `id` int(11) NOT NULL,
  `UpdateVersion` varchar(5) NOT NULL,
  `Text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mkvn_changelogs`
--

INSERT INTO `mkvn_changelogs` (`id`, `UpdateVersion`, `Text`) VALUES
(1, 'NULL', 'Update changelogs are not ready yet, come back later!'),
(2, 'v1.0', 'First release'),
(3, 'v2.0', 'Revamped track listing.<br>\nAdded Random Character+Vehicle Combo For Every Race -Online-.'),
(4, 'v2.1', 'Added 287 tracks.<br>\nFixed Random Character+Vehicle Combo For Every Race -Online-.<br>\nAdded support for CTGP Revolution My Stuff folder.<br>\nChanged River of Dreams\'s music slot to Rainbow Road.\n'),
(5, 'v2.2', 'Added 841 tracks.<br>\nReduced 200cc\'s speed.<br>\nReplaced Mega Cloud with _tZ\'s version.<br>\nUpdated reverse tracks.<br>\nChanged SM64 Castle Grounds\'s music slot to DS Peach Gardens.\n'),
(6, 'v2.3', 'Added 27 tracks.<br>\nUpdated 12 tracks.<br>\nAdded new font icons.<br>\nRemoved Random Character+Vehicle Combo For Every Race -Online-.'),
(7, 'v3.0', 'Fixed the crashing of the font for console.<br>\nRemoved Name Icons.<br>\nUpdated to Le-def.<br>\nUpdated to new track sorting system.<br>\nReplaced Mega Thunder Clouds for Star Thunder Clouds.<br>\nReplaced Mega Mushroom for Wonder Flower.<br>\nUpdated 35 tracks.<br>\nAdded 55 new Tracks.<br>\nReplaced 4 Tracks.'),
(8, 'v3.1', 'Fixed Cup Icon Crash<br>\nReverted Online (Globe) to v2.3 menu <br><i>(due to unstable results in globe menu)</i><br>\nAdded 3 new tracks<br>\nUpdated 2 tracks'),
(9, 'v3.2', '<h1>Features</h1>\nRemoved Mission Mode - This removal is because of the file limitation of Riivolution / MKWii, the missionmode pack will come at a later date as a seperate pack!<br>\nAdded Show Dolphin Cheats Warning [Gabriela]<br>\nAdded Skip Ghost Selection [Gabriela]<br>\n<h1>Ui Edits</h1>\nRemoved GP button in single player<br>\nRemoved Mission Mode Button (due to the removal of mission mode)<br>\n<h1>Item Changes</h1>\nRemoved Star Cloud - Removed it due to it being way too overpowered otherwise.<br>\nRestored Normal Mario Kart Wii Thunder Cloud - I wont make it to the Mega Cloud due to the mega mushroom being swapped with the Wonder Flower<br>\nBuffed Red Shell Speed (og: 75 km/h changed to 105 km/h) - this is due to the 200cc gamemode<br>\nAdded Fast Pow\'s (Fast Super Horn\'s) - Adds another challange to the Pow/Super Horn<br>\n<h1>Tracks (Updates, Added, Removed)</h1>\n<h2>Removed Tracks</h2>\nPlanet Wisp (Mushroom Gorge Texture Hack)<br>\nNeo Bowser Highway (Moonview Highway Texture Hack)<br>\nMelty Molten Galaxy (GCN DK Mountain Texture)<br>\nModernized Mall (Coconut Mall Texture)<br>\n<h2>Updated Tracks</h2>\nGBA Peach Circuit (ISwearChris)<br>\nKAR Celestial Valley<br>\nMountain Road<br>\nMP8 Kartastrophe<br>\nSMS Sirena Beach (Waltz)<br>\nMK8DX Waluigi Stadium (GCN Waluigi Stadium Texture)<br>\nVacay Bay<br>\nOvergrown Stronghold<br>\nCastle in the Sky<br>\nDS DK Pass (ZPL)<br>\nIsland Getaway (GBA Shy Guy Beach Texture)<br>\nTour Style Rainbow Road (Rainbow Road Texture)<br>\nRainbow Raceway<br>\nThwomp Swamp<br>\nPower Strait<br>\nToadette\'s Castle<br>\nGBA Peach Circuit (funkyracer)<br>\nSM64 Shifting sand land (waltz)<br>\nGBA Peach circuit (waltz)<br>\n3DS Rainbow Road (Diego Vapy)<br>\n<br>\n<h2>Added Tracks</h2>\nKingdom Lake<br>\nBowser\'s Lava World<br>\nMK8DX Mushroom Gorge (Texture Hack)<br>\nTour Moonview Highway (Texture Hack)<br>\nSNES Ghost Valley 1 (MilanDK)<br>\nTour DK Mountain (GCN DK Mountain Texture)<br>\nTour Piranha Plant Pipeline (Bruh de la Boi)<br>\nShy Guy\'s Stormy Seaport<br>\nThunder City (Fuffina)<br>\nHearts of the Sea<br>\nYokai Falls<br>\nGP Rainbow Coaster<br>\nShort Circuit<br>\nArt Museum<br>\nPortal in a Painting<br>\nSketchbook Noir<br>\nBullet Bill Bluff<br>\nLife Inside a Frame: Drawn Island<br>\nBig Tree Circuit<br>\nSNES Mario Circuit 3 (TailsCraft)<br>\nRMX Ghost Valley 1 (Bluebatstar)<br>\nMK8DX Coconut Mall (Coconut Mall Texture)<br>\nRMX Vanilla Lake 2 (Bruh de la Boi)<br>\nMonty Mole Valley<br>\nMoonlit Highlands<br>\nBack_RM_Race<br>\nTour Piranha Plant Cove (TheGamingBram)<br>\nTour Piranha Plant Cove 2 (TheGamingBram)<br>\nTour Piranha Plant Cove 3 (TheGamingBram)<br>\nDrift Ridge<br>\nRocky Rocky Loop<br>\nLUDA\'s CT Factory<br>\nPainted Swamp Circuit<br>\nJungle Fortress<br>\nSM64 Rainbow Ride - Route 1<br>\nSM64 Rainbow Ride - Route 2<br>\nCoconut Mall - December 2007<br>\nRuinated Peach\'s Castle'),
(10, 'v3.3', '<h1>MUSIC</h1>\nFixed loop for Toad’s factory music (Thanks @Toadette Hack Fan )<br>\n\n<h1>XML</h1>\nAdded Music only mystuff settings, options for it are for CTGP’s mystuff folder and the MKVN mystuff folder<br>\n\n<h1>CUP ICONS (Dolphin Only)</h1>\nExtended the cup icons DOLPHIN ONLY!<br>\n\n<h1>Track Changes</h1>\n<h2>Added Tracks</h2>\nSM64 Cool, Cool Mountain (Waltz)<br>\nTour Athens Dash 3 (Bruh de la Boi)<br>\nNunavut Route<br>\nThe Arctic Line<br>\nParadise Precipice<br>\nCascade Circuit<br>\nForgotten Isle<br>\nIcy Arctic Isle<br>\nIcering Circuit<br>\nHarihera Research Vessel<br>\nAnt Arctic Ambush<br>\n\n<h2>Updated Tracks</h2>\nWii U Sunshine Airport (Diego Vapy)<br>\nChoco Canyon<br>\nCloudy Courtway<br>\nGender Flyway<br>\nLuigi\'s Ghostly Manor<br>\nRuinated Peach\'s Castle<br>\nLuigi\'s Valley<br>\nSpyro 1 Sunny Flight<br>\nKAR Fantasy Meadows<br>\nSM64 Rainbow Ride - Route 1<br>\nSM64 Rainbow Ride - Route 2<br>\nJungle Fortress<br>\nSCR Fairy-Tale Forest<br>\n\n<h2>Removed Tracks</h2>\nOceanic Islands<br>\n\n<h2>Fixed Tracks</h2>\nTour Athens Dash 2 (Bruh de la Boi)<br>'),
(11, 'v3.4', '<h1>CODES</h1>\r\nUpdated to new Code Handler<br>\r\nRe-added Mega Thunder Clouds<br>\r\nAdded Dynamic Gravity<br>\r\nAdded Author Credits<br>\r\nAdded Riibalanded vehicle stats<br>\r\n\r\n<h1>MUSIC</h1>\r\nActually Fixed loop for Toad\'s factory music<br>\r\nChanged Star man Theme with Metal Cap Theme<br>\r\n\r\n<h1>Track Changes</h1>\r\n<h2>62 Added Tracks</h2>\r\nSNES Mario Circuit 1 (Potatoman44)<br>\r\nSNES Mario Circuit 1T (Slimeserver)<br>\r\nSNES Vanilla Lake 1 (ECD534, Toadette Hack Fan)<br>\r\nN64 Kalimari Desert (Bruh de la Boi)<br>\r\nN64 Rainbow Road (Mr. Brian)<br>\r\nN64 Royal Raceway (Paratroopa3)<br>\r\nGBA Bowser Castle 4T (Bruh de la Boi)<br>\r\nGBA Lakeside Park (Dreacastian-Turnip)<br>\r\nGBA Lakeside Park v2.0 (ZPL)<br>\r\nGBA Rainbow Road (Cats4Life)<br>\r\nDS Waluigi Pinball (TheGamingBram)<br>\r\n3DS Rock Rock Mountain (ZPL)<br>\r\nSwitch N64 Kalimari Desert (Bruh de la Boi)<br>\r\nTour N64 Kalimari Desert 2 (Bruh de la Boi)<br>\r\nRMX Ghost Valley 1 (Kozakura)<br>\r\nCECSG Kart Racing Amateur (Cool20)<br>\r\nCECSG Kart Racing Professional (Cool20)<br>\r\nGDL Haunted Cemetery (Luka)<br>\r\nFGKR Doki-Doki Tunnel (Cool20)<br>\r\nFGKR Fly Highway (Cool20)<br>\r\nFGKR Flower Road (Cool20)<br>\r\nFGKR Happy Up-Down (Cool20)<br>\r\nFGKR Snowy Slopes (Cool20)<br>\r\nFGKR Solid Lake (Cool20)<br>\r\nFK3D Blooming Path (Cool20)<br>\r\nFK3D Flying Highway (Cool20)<br>\r\nFK3D Happy Hills (Cool20)<br>\r\nSCR Full-Course Course (Waltz)<br>\r\nSM64 Lethal Lava Land (Diego Vapy, Waltz)<br>\r\nZelda WW Hyrule Castle (Waltz)<br>\r\nSCR Simple Circuit (King Boo Gaming, Strobenz)<br>\r\nAbandoned Bazaar (Kozakura)<br>\r\nAutumnal Archipelago (bugsy)<br>\r\nBiometal Blitz (P00ks)<br>\r\nBurrita Stadium (LUDAROBE)<br>\r\nCrawlspiral Castle (Rex)<br>\r\nDeserted Oasis (Luigi Story, EpicCrossover)<br>\r\nFlarewood Forest (Slimeserver)<br>\r\nGBA Wendy Raceway 1 (Marianne8559)<br>\r\nGoldleaf Shoreline (MKWahPhil, Atmosphere)<br>\r\nGoomba Grove Circuit (PaperToadette, Toadette Hack Fan)<br>\r\nGoomba\'s Booty Boardwalk (TheGamingBram)<br>\r\nHorrorland Hike (Dreacastian-Turnip)<br>\r\nKoopa\'s Paper Castle (p00ks)<br>\r\nLeaf Leaf Beach (ShouToad, Graciefied)<br>\r\nLuigi\'s Beach Resort (TheGamingBram)<br>\r\nMagma Mine (Chouchintosh)<br>\r\nMagma Caverns (Shorky)<br>\r\nMineshaft Raceway (Diego Vapy)<br>\r\nMoonlight Greens (Potatoman44)<br>\r\nMushroom Peaks (ZPL)<br>\r\nNano Circuit (Dreacastian-Turnip)<br>\r\nPainted Swamp Raceway (TheGamingBram)<br>\r\nSky Islands (Shorky)<br>\r\nStrobenz Desert Illusion (Strobenz)<br>\r\nTau-Cryovolcano (Strobenz)<br>\r\nThe Great Apple War (Many creators)<br>\r\nThe Grand Archives (Metabus)<br>\r\nTrickster Trail (p00ks)<br>\r\nTwilight Jungle (CarryOn, JoeyMK)<br>\r\nWind Fortress (ISwearChris)<br>\r\nWinter Coaster (Potatoman44)<br>\r\n\r\n<h2>38 Updated Tracks</h2>\r\nGBA Bowser Castle 4 (Bruh de la Boi)<br>\r\nGBA Mario Circuit (MysterE99)<br>\r\nGCN Wario Colosseum (Tock)<br>\r\nDS The Star Festival (DarkyBenji)<br>\r\nWii Tour Style Rainbow Road (LTC 91)<br>\r\n3DS Mario Circuit (ZPL, Bri)<br>\r\nSwitch Yoshi\'s Island (SquireTurnbolt, TheGamingBram)<br>\r\nKAR Celestial Valley (ISwearChris)<br>\r\nMSUSA Alaska (Hollend)<br>\r\nSBSPBfBB Downtown Bikini Bottom (Waltz)<br>\r\nSM64 Bob-omb Battlefield (Waltz)<br>\r\nSMS Pianta Village (Waltz)<br>\r\nBlissful Block (Strobenz)<br>\r\nConstellation Cliffs (bugsy)<br>\r\nDeath by Glamour (CarryOn)<br>\r\nDelfino Island (ZPL)<br>\r\nEnd Time (Lovelifeandtpose024)<br>\r\nFiery Factory, Fading Frost (Cotni)<br>\r\nGallant Grotto (ISwearChris)<br>\r\nGothic Castle (SpyKid, Scye)<br>\r\nHaunted Gardens (Hollend)<br>\r\nNightlife Party (WiiLuigi)<br>\r\nPeach\'s Getaway (Waltz)<br>\r\nPhendrana Frostbite (Fuffina, ISwearChris)<br>\r\nPower Strait (MarioPower55, Luigistar)<br>\r\nQuil Island (Rex)<br>\r\nPolychrome Path (Graciefied)<br>\r\nRocky Island Rush (Cats4Life, Comet)<br>\r\nRovio Circuit (LUDAROBE)<br>\r\nSandstone Cliffs (Citrus)<br>\r\nTerra Ursae (Bear)<br>\r\nUnfinished Bowser Castle (Bruh de la Boi)<br>\r\nVile Isle (Citrus)<br>\r\nWispy Caverns (Rex)<br>\r\nSM64 Castle Grounds (Waltz)<br>\r\nKingdom Lake (Waltz)<br>\r\nRuinated Peach\'s Castle (Gabriela_)<br>\r\nForgotten Isle (MapleSabre)<br>');

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_dlcpacks`
--

CREATE TABLE `mkvn_dlcpacks` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `DLC_Type` int(11) NOT NULL DEFAULT 1,
  `DownloadLink` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_dlc_type`
--

CREATE TABLE `mkvn_dlc_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mkvn_dlc_type`
--

INSERT INTO `mkvn_dlc_type` (`ID`, `Name`) VALUES
(1, 'Music Pack DLC'),
(2, 'Character Pack DLC'),
(3, 'Vehicle Pack DLC');

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_missions`
--

CREATE TABLE `mkvn_missions` (
  `ID` int(11) NOT NULL,
  `Level` varchar(11) NOT NULL,
  `M_name` varchar(255) NOT NULL,
  `M_Discription` varchar(255) NOT NULL,
  `M_Type` int(11) NOT NULL,
  `M_Track_WL` varchar(255) NOT NULL,
  `M_icon` varchar(255) NOT NULL,
  `Combo_Char` int(11) NOT NULL,
  `Combo_Veh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_mission_type`
--

CREATE TABLE `mkvn_mission_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_disc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mkvn_mission_type`
--

INSERT INTO `mkvn_mission_type` (`id`, `type_name`, `type_disc`) VALUES
(1, 'Miniturbo', 'Release miniturbos to score points.'),
(2, 'Lap Run', 'VS Mode. Complete 3 laps before time runs out.'),
(3, 'Drift', 'Perform any drift to score. (Faulty, increments score too quickly, Manual drift only)'),
(4, 'ItemBox', 'Break item boxes to score points.'),
(5, 'Destroy enemies', 'Hit enemies with items to score points.'),
(6, 'Boss Battle', 'Attack a boss to score points. (E.g. Spiky Topmen, Big Pokey, etc)'),
(7, 'Coins', 'Gather coins to score points.'),
(8, 'Gates', 'Drive through gates to score points.'),
(9, 'Rocket Start', 'Perform any level of boost start to immediately win the mission. (If you miss the boost start, you can no longer win, at all).'),
(10, 'Hit Cpu\'s with items', 'Hit CPU opponents with certain items to score points. (All projectiles. Stars, Mushrooms, Mega Mushrooms and Bullet Bills do not score).'),
(11, 'Wheelie', 'Perform wheelies to score. (Faulty, increments score too quickly, increments for wheelies on the spot).'),
(12, 'Slipstream', 'Get slipstreams from CPU opponents to score points. (However, the score also increases if they slipstream someone, too).');

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_mkwii_characters`
--

CREATE TABLE `mkvn_mkwii_characters` (
  `id` int(11) NOT NULL,
  `CharacterName` varchar(255) NOT NULL,
  `ChrSize` int(11) NOT NULL COMMENT '0 = Small,\r\n1 = Medium,\r\n2 = Large',
  `CharacterIcon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mkvn_mkwii_characters`
--

INSERT INTO `mkvn_mkwii_characters` (`id`, `CharacterName`, `ChrSize`, `CharacterIcon`) VALUES
(1, 'Baby Mario', 0, ''),
(2, 'Baby Luigi', 0, ''),
(3, 'Baby Peach', 0, ''),
(4, 'Baby Daisy', 0, ''),
(5, 'Toad', 0, ''),
(6, 'Toadette', 0, ''),
(7, 'Koopa Troopa', 0, ''),
(8, 'Dry Bones', 0, ''),
(9, 'Mii A (Small)', 0, ''),
(10, 'Mii B (Small)', 0, ''),
(12, 'Mario', 1, ''),
(13, 'Luigi', 1, ''),
(14, 'Peach', 1, ''),
(15, 'Daisy', 1, ''),
(16, 'Yoshi', 1, ''),
(17, 'Birdo', 1, ''),
(18, 'Diddy Kong', 1, ''),
(19, 'Bowser Jr.', 1, ''),
(20, 'Mii A (Medium)', 1, ''),
(21, 'Mii B (Medium)', 1, ''),
(23, 'Wario', 2, ''),
(24, 'Waluigi', 2, ''),
(25, 'Donkey Kong', 2, ''),
(26, 'Bowser', 2, ''),
(27, 'King Boo', 2, ''),
(28, 'Rosalina', 2, ''),
(29, 'Funky Kong', 2, ''),
(30, 'Dry Bowser', 2, ''),
(31, 'Mii A (Large)', 2, ''),
(32, 'Mii B (Large)', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_mkwii_vehicles`
--

CREATE TABLE `mkvn_mkwii_vehicles` (
  `id` int(11) NOT NULL,
  `VehicleName` varchar(255) NOT NULL,
  `ChrSize` int(11) NOT NULL COMMENT '0 = Small Char,\r\n1 = Medium char,\r\n2 = Large char,',
  `VehicleIcon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mkvn_mkwii_vehicles`
--

INSERT INTO `mkvn_mkwii_vehicles` (`id`, `VehicleName`, `ChrSize`, `VehicleIcon`) VALUES
(1, 'Blue Falcon', 0, ''),
(2, 'Booster Seat / Baby Booster', 0, ''),
(3, 'Cheep Charger', 0, ''),
(4, 'Mini Beast / Concerto', 0, ''),
(5, 'Standard Kart S', 0, ''),
(6, 'Tiny Titan / Rally Romper', 0, ''),
(7, 'Bit Bike / Nanobike', 0, ''),
(8, 'Bullet Bike', 0, ''),
(9, 'Jet Bubble / Bubble Bike', 0, ''),
(10, 'Magikruiser', 0, ''),
(11, 'Quacker', 0, ''),
(12, 'Standard Bike S', 0, ''),
(13, 'Classic Dragster / Nostalgia 1', 1, ''),
(14, 'Daytripper / Royal Racer', 1, ''),
(15, 'Sprinter / B Dasher MK 2', 1, ''),
(16, 'Standard Kart M', 1, ''),
(17, 'Super Blooper / Turbo Blooper', 1, ''),
(18, 'Wild Wing', 1, ''),
(19, 'Dolphin Dasher', 1, ''),
(20, 'Mach Bike', 1, ''),
(21, 'Sneakster / Nitrocycle', 1, ''),
(22, 'Standard Bike M', 1, ''),
(23, 'Sugarscoot / Bon Bon', 1, ''),
(24, 'Zip Zip / Rapide', 1, ''),
(25, 'Flame Flyer', 2, ''),
(26, 'Honey Coupe / Dragonetti', 2, ''),
(27, 'Jetsetter / Aero Glider', 2, ''),
(28, 'Offroader', 2, ''),
(29, 'Piranha Prowler', 2, ''),
(30, 'Standard Kart L', 2, ''),
(31, 'Flame Runner / Bowser Bike', 2, ''),
(32, 'Phantom', 2, ''),
(33, 'Shooting Star / Twinkle Star', 2, ''),
(34, 'Spear / Torpedo', 2, ''),
(35, 'Standard Bike L', 2, ''),
(36, 'Wario Bike', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_timetrail`
--

CREATE TABLE `mkvn_timetrail` (
  `Id` int(11) NOT NULL,
  `TrackID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Time` time(3) NOT NULL,
  `Combo_Char` int(11) NOT NULL,
  `Combo_Vehicle` int(11) NOT NULL,
  `IsVerified` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mkvn_timetrail`
--

INSERT INTO `mkvn_timetrail` (`Id`, `TrackID`, `UserID`, `Time`, `Combo_Char`, `Combo_Vehicle`, `IsVerified`) VALUES
(1, 636, 12, '00:01:32.930', 15, 20, 1),
(2, 637, 12, '00:01:49.352', 15, 20, 1),
(3, 682, 12, '00:01:57.324', 15, 20, 1),
(4, 784, 16, '00:01:12.541', 27, 31, 0),
(5, 1583, 2, '00:01:11.242', 13, 20, 1),
(6, 18, 2, '00:02:04.408', 13, 20, 1),
(7, 472, 2, '00:02:31.006', 13, 20, 1),
(8, 555, 2, '00:02:12.669', 13, 20, 1),
(9, 374, 2, '00:01:41.062', 13, 20, 1),
(10, 375, 2, '00:01:41.062', 13, 20, 1),
(11, 376, 2, '00:01:41.062', 13, 20, 1),
(12, 377, 2, '00:01:41.062', 13, 20, 1),
(13, 378, 2, '00:01:41.062', 13, 20, 1),
(14, 832, 2, '00:01:54.016', 13, 18, 1),
(15, 58, 2, '00:01:36.517', 29, 29, 1),
(16, 59, 2, '00:01:36.517', 29, 29, 1),
(17, 60, 2, '00:01:36.517', 29, 29, 1),
(18, 61, 2, '00:01:36.517', 29, 29, 1),
(19, 62, 2, '00:01:36.517', 29, 29, 1),
(20, 1348, 2, '00:01:31.718', 5, 9, 1),
(21, 1423, 2, '00:02:02.416', 19, 15, 1),
(22, 912, 2, '00:02:40.282', 8, 10, 1),
(23, 1538, 2, '00:01:37.818', 27, 34, 1),
(24, 199, 2, '00:01:58.650', 3, 8, 1),
(25, 1547, 2, '00:02:59.182', 2, 3, 1),
(26, 1455, 2, '00:02:15.200', 14, 19, 1),
(27, 343, 2, '00:02:15.172', 2, 10, 1),
(28, 1210, 2, '00:03:05.728', 2, 12, 1),
(29, 1211, 2, '00:03:05.728', 2, 12, 1),
(30, 1212, 2, '00:03:05.728', 2, 12, 1),
(31, 161, 2, '00:02:33.346', 26, 36, 1),
(32, 138, 2, '00:03:40.034', 5, 7, 1),
(33, 1534, 2, '00:03:22.963', 6, 4, 1),
(34, 1081, 2, '00:03:07.990', 4, 1, 1),
(35, 1512, 13, '00:02:05.598', 21, 24, 0),
(36, 1496, 13, '00:03:21.610', 14, 16, 0),
(37, 939, 13, '00:02:35.933', 2, 12, 0),
(38, 1390, 13, '00:01:25.943', 20, 22, 0),
(39, 186, 13, '00:01:16.459', 14, 22, 0),
(40, 1197, 13, '00:01:41.951', 17, 23, 0),
(41, 1018, 13, '00:01:55.502', 6, 6, 0),
(42, 770, 13, '00:00:55.374', 26, 29, 0),
(43, 1456, 13, '00:02:40.105', 29, 27, 0),
(44, 1046, 13, '00:02:19.720', 18, 13, 0),
(45, 889, 13, '00:02:12.512', 6, 5, 0),
(46, 543, 13, '00:02:13.144', 26, 30, 0),
(47, 1492, 13, '00:02:17.724', 3, 4, 0),
(48, 1448, 13, '00:02:51.873', 6, 5, 0),
(49, 913, 13, '00:00:57.438', 25, 31, 0),
(50, 46, 13, '00:01:16.821', 18, 21, 0),
(51, 876, 13, '00:01:51.498', 2, 10, 1),
(52, 234, 13, '00:01:57.049', 3, 11, 1),
(53, 1572, 13, '00:03:09.436', 19, 13, 1),
(54, 1374, 13, '00:01:33.729', 24, 29, 1),
(55, 379, 13, '00:01:49.599', 20, 15, 1),
(56, 1553, 13, '00:02:00.483', 23, 34, 1),
(57, 1229, 13, '00:02:16.687', 29, 36, 1),
(58, 907, 13, '00:02:17.922', 24, 27, 1),
(59, 489, 13, '00:01:25.064', 12, 24, 1),
(60, 176, 13, '00:02:40.625', 6, 12, 1),
(61, 649, 13, '00:01:32.811', 3, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_tracks`
--

CREATE TABLE `mkvn_tracks` (
  `ID` int(11) NOT NULL,
  `Track_Name` varchar(52) NOT NULL,
  `TrackSort` int(11) NOT NULL,
  `Track_Type` varchar(11) NOT NULL,
  `Track_version` varchar(11) NOT NULL DEFAULT 'v1.0',
  `Track_Creator` varchar(128) NOT NULL,
  `Track_DEC_ID` int(11) NOT NULL,
  `Track_Hex_ID` varchar(3) NOT NULL COMMENT 'example 000',
  `Slot_Type` tinyint(4) NOT NULL COMMENT '0 = Track\r\n1 = Header\r\n2 = SubTrack',
  `SubTrackTo` varchar(3) NOT NULL,
  `NewTrack` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = New Track\r\n2 = Updated Track',
  `Wiki_Link` longtext NOT NULL,
  `DLC_Music_Name` longtext NOT NULL,
  `DLC_Music_YT_EMBED` varchar(11) NOT NULL,
  `DLC_Music_PackID` int(11) DEFAULT NULL,
  `Local_File` varchar(32) NOT NULL,
  `Tprop` varchar(5) NOT NULL,
  `Tmus` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mkvn_tracks`
--

INSERT INTO `mkvn_tracks` (`ID`, `Track_Name`, `TrackSort`, `Track_Type`, `Track_version`, `Track_Creator`, `Track_DEC_ID`, `Track_Hex_ID`, `Slot_Type`, `SubTrackTo`, `NewTrack`, `Wiki_Link`, `DLC_Music_Name`, `DLC_Music_YT_EMBED`, `DLC_Music_PackID`, `Local_File`, `Tprop`, `Tmus`) VALUES
(1, 'Bowser Castle 1', 1, 'SNES', 'v1.85%', 'ChaosShadow23', 0, '000', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_1_(ChaosShadow23)', '', '', 0, '170', 'gBC3', 'gBC3'),
(2, 'Bowser Castle 1', 2, 'SNES', 'v1.2', 'ZPL', 1, '001', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_1_(ZPL)', '', '', 0, '952', 'gBC3', 'gBC3'),
(3, 'Bowser Castle 2', 3, 'SNES', 'v1.0', 'ChaosShadow23', 2, '002', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_2_(ChaosShadow23)', '', '', 0, '220', 'gBC3', 'gBC3'),
(4, 'Bowser Castle 2', 4, 'SNES', 'v1.1', 'Diego Vapy', 3, '003', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_2_(Diego_Vapy)', '', '', 0, '1076', 'nBC', 'nBC'),
(5, 'Bowser Castle 2', 5, 'SNES', 'v1.0', 'KawaiiDawn', 4, '004', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_2_(KawaiiDawn)', '', '', 0, '873', 'nBC', 'nBC'),
(6, 'Bowser Castle 2', 6, 'SNES', 'v2.0', 'Kozakura', 5, '005', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_2_(Kozakura)', '', '', 0, '839', 'gBC3', 'gBC3'),
(7, 'Bowser Castle 2', 7, 'SNES', 'v1.92', 'MKDasher', 6, '006', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_2_(MKDasher)', '', '', 0, '032', 'gBC3', 'gBC3'),
(8, 'Bowser Castle 3', 8, 'SNES', 'v1.0', 'ChaosShadow23', 7, '007', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_3_(ChaosShadow23)', '', '', 0, '300', 'gBC3', 'gBC3'),
(9, 'Bowser Castle 3', 9, 'SNES', 'v1.1', 'Mystora', 8, '008', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_3_(Mystora)', '', '', 0, '832', 'gBC3', 'gBC3'),
(10, 'Bowser Castle 3', 10, 'SNES', 'v1.2', 'Omonimo747', 9, '009', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_3_(Omonimo747)', '', '', 0, '208', 'gBC3', 'gBC3'),
(11, 'Bowser Castle 3', 11, 'SNES', 'v2.1', 'ScyHigh', 10, '00A', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_3_(ScyHigh)', '', '', 0, '901', 'gBC3', 'gBC3'),
(12, 'Bowser Castle 3', 12, 'SNES', 'v1.3', 'ZPL', 11, '00B', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_3_(ZPL)', '', '', 0, '959_1', 'gBC3', 'gBC3'),
(13, 'Bowser Castle 3', 13, 'SNES', 'v2.0', 'ZPL', 12, '00C', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Bowser_Castle_3_(ZPL)', '', '', 0, '959_2', 'BC', 'gBC3'),
(14, 'Choco Island 1', 14, 'SNES', 'v2.1', 'Luca', 13, '00D', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Choco_Island_1_(Luca)', '', '', 0, '517', 'nDKJP', 'nDKJP'),
(15, 'Choco Island 1', 15, 'SNES', 'v1.1', 'ZPL', 14, '00E', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Choco_Island_1_(ZPL)', '', '', 0, '958', 'sMC3', 'sMC3'),
(16, 'Choco Island 2', 16, 'SNES', 'v1.0', 'Cats4Life', 15, '00F', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Choco_Island_2_(Cats4Life)', '', '', 0, '937', 'nDKJP', 'nDKJP'),
(17, 'Choco Island 2 v1.0', 17, 'SNES', 'v1.0', 'Slimeserver', 16, '010', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Choco_Island_2_(Slimeserver)', '', '', 0, '864', 'sMC3', 'sMC3'),
(18, 'Choco Island 2 v2.0', 18, 'SNES', 'v2.0', 'Slimeserver', 17, '011', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Choco_Island_2_(Slimeserver)', '', '', 0, 'SCI2_S_2', 'sMC3', 'sMC3'),
(19, 'Choco Island 2', 19, 'SNES', 'v1.21', 'zilly', 18, '012', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Choco_Island_2_(zilly)', '', '', 0, '083', 'gMC', 'gMC'),
(20, 'Choco Island 2', 20, 'SNES', 'V1.0', 'ZPL', 19, '013', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Choco_Island_2_(ZPL)', '', '', 0, '998', 'sMC3', 'sMC3'),
(21, 'Donut Plains 1', 21, 'SNES', 'v1.0', 'Kino', 20, '014', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_1_(Kino)', '', '', 0, '1161', 'sMC3', 'sMC3'),
(22, 'Donut Plains 1', 22, 'SNES', 'v1.1', 'Luca', 21, '015', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_1_(Luca)', '', '', 0, '679', 'sMC3', 'sMC3'),
(23, 'Donut Plains 1', 23, 'SNES', 'v1.0-beta', 'ZPL', 22, '016', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_1_(ZPL)', '', '', 0, '617', 'sMC3', 'sMC3'),
(24, 'Donut Plains 2', 24, 'SNES', 'v1.2', 'Luca', 23, '017', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_2_(Luca)', '', '', 0, '574', 'sMC3', 'sMC3'),
(25, 'Donut Plains 2', 25, 'SNES', 'v1.1b', 'NiAlBlack', 24, '018', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_2_(NiAlBlack)', '', '', 0, '103', 'sMC3', 'sMC3'),
(26, 'Donut Plains 2', 26, 'SNES', 'v2.01', 'ZPL', 25, '019', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_2_(ZPL)', '', '', 0, '573', 'sMC3', 'sMC3'),
(27, 'Donut Plains 3', 27, 'SNES', 'v2.11', 'Bear, ZPL', 26, '01A', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_3_(Bear_%26_ZPL)', '', '', 0, '439', 'sMC3', 'sMC3'),
(28, 'Donut Plains 3', 28, 'SNES', 'v1.0b', 'Yoshidude4', 27, '01B', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_3_(Yoshidude4)', '', '', 0, '144', 'sMC3', 'sMC3'),
(29, 'Ghost Valley 1', 29, 'SNES', 'v2.1b', 'Kozakura', 28, '01C', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_1_(Kozakura)', '', '', 0, '556', 'sGV2', 'sGV2'),
(30, 'Ghost Valley 1', 30, 'SNES', 'v1.2', 'Slimeserver', 29, '01D', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_1_(Slimeserver)', '', '', 0, '587', 'sGV2', 'sGV2'),
(31, 'Ghost Valley 1', 31, 'SNES', 'v2.0', 'zilly', 30, '01E', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_1_(zilly)', '', '', 0, '095', 'sGV2', 'sGV2'),
(32, 'Ghost Valley 1', 32, 'SNES', 'v1.2', 'ZPL', 31, '01F', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_1_(ZPL)', '', '', 0, '956', 'sGV2', 'sGV2'),
(33, 'Ghost Valley 2', 34, 'SNES', 'X', 'Nintendo', 68, '044', 1, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_2', '', '', 0, '006', 'sGV2', 'sGV2'),
(34, 'Ghost Valley 2', 35, 'SNES', 'v1.0', 'Nintendo', 69, '045', 2, '044', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_2', '', '', 0, '006_1', 'sGV2', 'sGV2'),
(35, 'Abandoned Graveyard', 36, 'SNES', 'v1.0', 'Metaljaripower', 70, '046', 2, '044', 0, 'https://wiki.tockdom.com/wiki/Abandoned_Graveyard_(SNES_Ghost_Valley_2_Texture)', '', '', 0, '006_3', 'sGV2', 'sGV2'),
(36, 'Ghost Valley 2 HD', 37, 'SNES', 'v1.0-hotfix', 'Cats4Life', 71, '047', 2, '044', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_2_HD_(SNES_Ghost_Valley_2_Texture)_(Cats4Life)', '', '', 0, '006_4', 'sGV2', 'sGV2'),
(37, 'Winter Valley 2', 38, 'SNES', 'v1.0.Night', 'xMeap826', 72, '048', 2, '044', 0, 'https://wiki.tockdom.com/wiki/SNES_Winter_Valley_2_(SNES_Ghost_Valley_2_Texture)', '', '', 0, '006_5', 'sGV2', 'sGV2'),
(38, 'Ghost Valley 2R', 39, 'SNES', 'v1.1', 'ZPL', 73, '049', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_2R_(SNES_Ghost_Valley_2_Edit)_(ZPL)', '', '', 0, '006_2', 'sGV2', 'sGV2'),
(39, 'Ghost Valley 3', 40, 'SNES', 'v2.0', 'AltairYoshi', 74, '04A', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_3_(AltairYoshi)', '', '', 0, '412', 'sGV2', 'sGV2'),
(40, 'Ghost Valley 3', 41, 'SNES', 'v1.0-beta', 'Atmosphere, Kozakura', 75, '04B', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_3_(Atmosphere_%26_Kozakura)', '', '', 0, '840', 'sGV2', 'sGV2'),
(41, 'Ghost Valley 3', 42, 'SNES', 'v1.0', 'ZPL', 76, '04C', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_3_(ZPL)', '', '', 0, '1001', 'sGV2', 'sGV2'),
(42, 'Koopa Beach 1', 43, 'SNES', 'v1.ctgp ', 'AndyK', 77, '04D', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Koopa_Beach_1_(AndyK)', '', '', 0, '056', 'gPB', 'gPB'),
(43, 'Koopa Beach 1', 44, 'SNES', 'v1.1', 'Luca', 78, '04E', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Koopa_Beach_1_(Luca)', '', '', 0, '647', 'gPB', 'gSGB'),
(44, 'Koopa Beach 1', 45, 'SNES', 'V1.0', 'ZPL', 79, '04F', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Koopa_Beach_1_(ZPL)', '', '', 0, '997', 'gPB', 'gPB'),
(45, 'Koopa Beach 2', 46, 'SNES', 'v1.3.mkd', 'Luca', 80, '050', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Koopa_Beach_2_(Luca)', '', '', 0, '560_1', 'gPB', 'gPB'),
(46, 'Koopa Beach 2R', 47, 'SNES', 'v1.0', 'Luca, Krummers', 81, '051', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Koopa_Beach_2R_(SNES_Koopa_Beach_2_Edit)', '', '', 0, '560_2', 'gPB', 'gPB'),
(47, 'Koopa Beach 2', 48, 'SNES', 'RC3', 'maczkopeti', 82, '052', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Koopa_Beach_2_(maczkopeti)', '', '', 0, '217', 'sMC3', 'gSGB'),
(48, 'Koopa Beach 2', 49, 'SNES', 'v1.1', 'ZPL', 83, '053', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Koopa_Beach_2_(ZPL)', '', '', 0, '1000', 'gPB', 'gPB'),
(49, 'Mario Circuit 1', 50, 'SNES', 'v1.1', 'Bruh de la Boi', 84, '054', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_1_(Bruh_de_la_Boi)', '', '', 0, '672', 'LC', 'sMC3'),
(50, 'Mario Circuit 1', 51, 'SNES', 'v1.0', 'Cats4Life', 85, '055', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_1_(Cats4Life)', '', '', 0, '1160', 'sMC3', 'sMC3'),
(51, 'Mario Circuit 1', 52, 'SNES', 'v1.1', 'maczkopeti', 86, '056', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_1_(maczkopeti)', '', '', 0, '223', 'sMC3', 'sMC3'),
(52, 'Mario Circuit 1', 55, 'SNES', 'v2.6', 'ZPL, Jasperr', 87, '057', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_1_(ZPL_%26_Jasperr)', '', '', 0, '374', 'sMC3', 'sMC3'),
(53, 'Mario Circuit 1', 56, 'SNES', 'v1.0', 'ZPL', 88, '058', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_1_(ZPL)', '', '', 0, '724', 'sMC3', 'sMC3'),
(54, 'Mario Circuit 2', 57, 'SNES', 'v1.1', 'Bubby64', 89, '059', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_2_(Bubby64)', '', '', 0, '846', 'sMC3', 'sMC3'),
(55, 'Mario Circuit 2', 58, 'SNES', 'V1.1', 'Kozakura', 90, '05A', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_2_(Kozakura)', '', '', 0, '996', 'sMC3', 'sMC3'),
(56, 'Mario Circuit 2', 59, 'SNES', 'v1.4b', 'NiAlBlack', 91, '05B', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_2_(NiAlBlack)', '', '', 0, '097', 'sMC3', 'sMC3'),
(57, 'Mario Circuit 2', 60, 'SNES', 'v2.01', 'ZPL', 92, '05C', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_2_(ZPL)', '', '', 0, '654', 'sMC3', 'sMC3'),
(58, 'Mario Circuit 3', 61, 'SNES', 'X', 'Nintendo', 93, '05D', 1, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_3', '', '', 0, '028', 'sMC3', 'sMC3'),
(59, 'Mario Circuit 3', 62, 'SNES', 'v1.0', 'Nintendo', 94, '05E', 2, '05D', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_3', '', '', 0, '028_1', 'sMC3', 'sMC3'),
(60, 'Mario Circuit 3 HD', 63, 'SNES', 'v1.0', 'Cats4Life', 95, '05F', 2, '05D', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_3_HD_(SNES_Mario_Circuit_3_Texture)_(Cats4Life)', '', '', 0, '028_3', 'sMC3', 'sMC3'),
(61, 'Mario Circuit 3 Winter Edition', 64, 'SNES', 'v1.0', 'ZEROVR', 96, '060', 2, '05D', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_3_Winter_Edition_(SNES_Mario_Circuit_3_Texture)', '', '', 0, '028_4', 'sMC3', 'sMC3'),
(62, 'Skyline Circuit', 65, 'SNES', 'v1.0', 'Jasperr', 97, '061', 2, '05D', 0, 'https://wiki.tockdom.com/wiki/Skyline_Circuit_(SNES_Mario_Circuit_3_Texture)', '', '', 0, '028_5', 'sMC3', 'sMC3'),
(63, 'Mario Circuit 3R', 66, 'SNES', 'v1.1', 'ZPL', 98, '062', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_3R_(SNES_Mario_Circuit_3_Edit)_(ZPL)', '', '', 0, '028_2', 'sMC3', 'sMC3'),
(64, 'Mario Circuit 4', 68, 'SNES', 'v1.0', 'Brawlboxgaming', 99, '063', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_4_(Brawlboxgaming)', '', '', 0, '933', 'sMC3', 'sMC3'),
(65, 'Mario Circuit 4', 69, 'SNES', 'v1.0', 'TheGamingBram', 100, '064', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_4_(TheGamingBram)', '', '', 0, '1123', 'sMC3', 'sMC3'),
(66, 'Mario Circuit 4', 70, 'SNES', 'v1.1', 'ZPL', 101, '065', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_4_(ZPL)', '', '', 0, '853', 'sMC3', 'sMC3'),
(67, 'Rainbow Road', 71, 'SNES', 'v2.1', 'DasFragezeichen, Tock', 102, '066', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Rainbow_Road_(DasFragezeichen_%26_Tock)', '', '', 0, '044', 'RR', 'RR'),
(68, 'Rainbow Road', 72, 'SNES', 'v1.3', 'NiAlBlack', 103, '067', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Rainbow_Road_(NiAlBlack)', '', '', 0, '098_1', 'RR', 'RR'),
(69, 'Rainbow Road', 73, 'SNES', 'v2.0', 'Slimeserver', 104, '068', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Rainbow_Road_(Slimeserver)', '', '', 0, '879', 'gSGB', 'gSGB'),
(70, 'Rainbow Road', 74, 'SNES', 'v1.2.2', 'xBlue98', 105, '069', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Rainbow_Road_(xBlue98)', '', '', 0, '429', 'RR', 'RR'),
(71, 'Rainbow Road', 75, 'SNES', 'v2.8.1', 'ZPL, Bear', 106, '06A', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Rainbow_Road_(ZPL_%26_Bear)', '', '', 0, '456', 'RR', 'RR'),
(72, 'Vanilla Lake 1', 77, 'SNES', 'v1.0.3', 'James', 107, '06B', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Vanilla_Lake_1_(James)', '', '', 0, '101', 'nSL', 'nSL'),
(73, 'Vanilla Lake 1', 78, 'SNES', 'v1.1', 'SquireTurnbolt', 108, '06C', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Vanilla_Lake_1_(SquireTurnbolt)', '', '', 0, '743', 'nSL', 'nSL'),
(74, 'Vanilla Lake 1', 79, 'SNES', 'Beta', 'ZPL', 109, '06D', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Vanilla_Lake_1_(ZPL)', '', '', 0, '999', 'nSL', 'nSL'),
(75, 'Vanilla Lake 2', 80, 'SNES', 'v1.1', 'JadenMKW', 110, '06E', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Vanilla_Lake_2_(JadenMKW)', '', '', 0, '796', 'nSL', 'nSL'),
(76, 'Vanilla Lake 2', 81, 'SNES', 'v1.1b', 'Likesorange', 111, '06F', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Vanilla_Lake_2_(Likesorange)', '', '', 0, '226', 'nSL', 'nSL'),
(77, 'Vanilla Lake 2', 82, 'SNES', 'v1.0', 'Slimeserver', 112, '070', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Vanilla_Lake_2_(Slimeserver)', '', '', 0, 'SVL2_S', 'nSL', 'nSL'),
(78, 'Vanilla Lake 2', 83, 'SNES', 'v1.0', 'ZPL', 113, '071', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Vanilla_Lake_2_(ZPL)', '', '', 0, '1002', 'nSL', 'nSL'),
(79, 'Choco Island 2 Beta', 84, 'SNES Beta', 'v1.0', 'ZPL', 114, '072', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Choco_Island_2_Beta_(ZPL)', '', '', 0, '1051', 'sMC3', 'sMC3'),
(80, 'Choco Island 3', 85, 'SNES Beta', 'v1.0', 'ZPL', 115, '073', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Choco_Island_3_(ZPL)', '', '', 0, '1054', 'MC', 'MC'),
(81, 'Donut Plains 1 Beta', 86, 'SNES Beta', 'v1.0', 'ZPL', 116, '074', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_1_Beta_(ZPL)', '', '', 0, '1049', 'sMC3', 'sMC3'),
(82, 'Donut Plains 2 Beta', 87, 'SNES Beta', 'v1.0', 'ZPL', 117, '075', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_2_Beta_(ZPL)', '', '', 0, '1050', 'nDKJP', 'nDKJP'),
(83, 'Donut Plains 3 Beta', 88, 'SNES Beta', 'v1.0', 'ZPL', 118, '076', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Donut_Plains_3_Beta_(ZPL)', '', '', 0, '1053', 'gMC', 'gMC'),
(84, 'Vanilla Lake 1 Beta', 89, 'SNES Beta', 'v1.0', 'ZPL', 119, '077', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Vanilla_Lake_1_Beta_(ZPL)', '', '', 0, '1052', 'nSL', 'nSL'),
(85, 'Banshee Boardwalk', 90, 'N64', 'v1.11', 'zilly', 120, '078', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Banshee_Boardwalk_(zilly)', '', '', 0, '121', 'sGV2', 'sGV2'),
(86, 'Banshee Boardwalk', 91, 'N64', 'v2.1', 'ZPL', 121, '079', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Banshee_Boardwalk_(ZPL)', '', '', 0, '464', 'sGV2', 'sGV2'),
(87, 'Bowser\'s Castle', 92, 'N64', 'X', 'Nintendo', 122, '07A', 1, '', 0, 'https://wiki.tockdom.com/wiki/N64_Bowser%27s_Castle', '', '', 0, '031', 'nBC', 'nBC'),
(88, 'Bowser\'s Castle', 93, 'N64', 'v1.0', 'Nintendo', 123, '07B', 2, '07A', 0, 'https://wiki.tockdom.com/wiki/N64_Bowser%27s_Castle', '', '', 0, '031_1', 'nBC', 'nBC'),
(89, 'Siberian Manor', 94, 'N64', 'v1.1', 'Dxrk', 124, '07C', 2, '07A', 0, 'https://wiki.tockdom.com/wiki/Siberian_Manor_(N64_Bowser%27s_Castle_Texture)', '', '', 0, '031_3', 'nBC', 'nBC'),
(90, 'Take on the Fallen Kingdom', 95, 'N64', 'v1.0', 'Zeraora', 125, '07D', 2, '07A', 0, 'https://wiki.tockdom.com/wiki/Take_on_the_Fallen_Kingdom_(N64_Bowser%27s_Castle_Texture)', '', '', 0, '031_4', 'nBC', 'nBC'),
(91, 'Twilight Castle', 96, 'N64', 'v1.1', 'Jasperr, Golden RS', 126, '07E', 2, '07A', 0, 'https://wiki.tockdom.com/wiki/Twilight_Castle_(N64_Bowser%27s_Castle_Texture)', '', '', 0, '031_5', 'nBC', 'nBC'),
(92, 'Bowser\'s Castle R', 97, 'N64', 'v1.1', 'Luke Chandler', 127, '07F', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Bowser%27s_Castle_R_(N64_Bowser%27s_Castle_Edit)_(Luke_Chandler)', '', '', 0, '031_2', 'nBC', 'nBC'),
(93, 'Bowser\'s Castle', 98, 'N64', 'Beta 2', 'Elemental', 128, '080', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Bowser%27s_Castle_(Elemental)', '', '', 0, '1188', 'nBC', 'nBC'),
(94, 'Choco Mountain', 99, 'N64', 'v1.1.fix', 'Baoulettes, igorseabra4', 129, '081', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Choco_Mountain_(Baoulettes_%26_igorseabra4)', '', '', 0, '074', 'gDKM', 'gDKM'),
(95, 'Choco Mountain', 100, 'N64', 'v1.11', 'TacoJosh', 130, '082', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Choco_Mountain_(TacoJosh)', '', '', 0, '652', 'gDKM', 'gDKM'),
(96, 'Choco Mountain', 101, 'N64', 'v2.4', 'Yoshidude4, FunkyDude15', 131, '083', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Choco_Mountain_(Yoshidude4_%26_FunkyDude15)', '', '', 0, '138', 'gDKM', 'gDKM'),
(97, 'DK\'s Jungle Parkway', 102, 'N64', 'X', 'Nintendo', 132, '084', 1, '', 0, 'https://wiki.tockdom.com/wiki/N64_DK%27s_Jungle_Parkway', '', '', 0, '022', 'nDKJP', 'nDKJP'),
(98, 'DK\'s Jungle Parkway', 103, 'N64', 'v1.0', 'Nintendo', 133, '085', 2, '084', 0, 'https://wiki.tockdom.com/wiki/N64_DK%27s_Jungle_Parkway', '', '', 0, '022_1', 'nDKJP', 'nDKJP'),
(99, 'DK\'s Snowy Parkway', 104, 'N64', 'v1.0', 'xMeap826', 134, '086', 2, '084', 0, 'https://wiki.tockdom.com/wiki/N64_DK%27s_Snowy_Parkway_(N64_DK%27s_Jungle_Parkway_Texture)', '', '', 0, '022_3', 'nDKJP', 'nDKJP'),
(100, 'Forgotten Isle', 105, 'N64', 'v1.2', 'Dxrk', 135, '087', 2, '084', 0, 'https://wiki.tockdom.com/wiki/Forgotten_Isle_(N64_DK%27s_Jungle_Parkway_Texture)', '', '', 0, '022_4', 'nDKJP', 'nDKJP'),
(101, 'Piranha Creeper Creek', 106, 'N64', 'v1.0', 'CyrusTheYoshi', 136, '088', 2, '084', 0, 'https://wiki.tockdom.com/wiki/Piranha_Creeper_Creek_(N64_DK%27s_Jungle_Parkway_Texture)', '', '', 0, '022_5', 'nDKJP', 'nDKJP'),
(102, 'DK\'s Jungle Parkway R', 107, 'N64', 'v1.1', 'ZPL', 137, '089', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_DK%27s_Jungle_Parkway_R_(N64_DK%27s_Jungle_Parkway_Edit)_(ZPL)', '', '', 0, '022_2', 'nDKJP', 'nDKJP'),
(103, 'Frappe Snowland', 108, 'N64', 'v1.3.1', 'AltairYoshi', 138, '08A', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Frappe_Snowland_(AltairYoshi)', '', '', 0, '631', 'nSL', 'nSL'),
(104, 'Frappe Snowland', 109, 'N64', 'v1.1', 'Cats4Life', 139, '08B', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Frappe_Snowland_(Cats4Life)', '', '', 0, '862', 'DKS', 'nSL'),
(105, 'Frappe Snowland', 110, 'N64', 'v1.alt', 'zilly', 140, '08C', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Frappe_Snowland_(zilly)', '', '', 0, '198', 'nSL', 'nSL'),
(106, 'Kalimari Desert', 112, 'N64', 'v1.ctgp', 'Sniki', 141, '08D', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Kalimari_Desert_(Sniki)', '', '', 0, '398', 'MH', 'dDH'),
(107, 'Kalimari Desert', 113, 'N64', 'v2.0', 'ZPL, Jasperr', 142, '08E', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Kalimari_Desert_(ZPL_%26_Jasperr)', '', '', 0, '375', 'DDR', 'DDR'),
(108, 'Koopa Troopa Beach', 114, 'N64', 'v1.1c', 'zilly', 143, '08F', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Koopa_Troopa_Beach_(zilly)', '', '', 0, '125', 'gPB', 'gPB'),
(109, 'Koopa Troopa Beach', 115, 'N64', 'v1.1', 'ZPL', 144, '090', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Koopa_Troopa_Beach_(ZPL)', '', '', 0, '934', 'gPB', 'gPB'),
(110, 'Luigi Raceway', 116, 'N64', 'v2.01.mkc', 'zilly', 145, '091', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Luigi_Raceway_(zilly)', '', '', 0, '075', 'nMR', 'nMR'),
(111, 'Luigi Raceway', 117, 'N64', 'v1.1', 'ZPL, Skipper93653', 146, '092', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Luigi_Raceway_(ZPL_%26_Skipper93653)', '', '', 0, '472', 'nMR', 'nMR'),
(112, 'Mario Raceway', 118, 'N64', 'X', 'Nintendo', 147, '093', 1, '', 0, 'https://wiki.tockdom.com/wiki/N64_Mario_Raceway', '', '', 0, '007', 'nMR', 'nMR'),
(113, 'Mario Raceway', 119, 'N64', 'v1.0', 'Nintendo', 148, '094', 2, '093', 0, 'https://wiki.tockdom.com/wiki/N64_Mario_Raceway', '', '', 0, '007_1', 'nMR', 'nMR'),
(114, 'Classic Mario Raceway', 120, 'N64', 'v1.0', 'MysterE99', 149, '095', 2, '093', 0, 'https://wiki.tockdom.com/wiki/Classic_N64_Mario_Raceway_(N64_Mario_Raceway_Texture)', '', '', 0, '007_3', 'nMR', 'nMR'),
(115, 'Luma Park Raceway', 121, 'N64', 'v1.0-hotfix', 'Cats4Life', 150, '096', 2, '093', 0, 'https://wiki.tockdom.com/wiki/Luma_Park_Raceway_(N64_Mario_Raceway_Texture)', '', '', 0, '007_4', 'nMR', 'nMR'),
(116, 'Snowy Raceway', 122, 'N64', 'v1.0.Night', 'xMeap826', 151, '097', 2, '093', 0, 'https://wiki.tockdom.com/wiki/N64_Snowy_Raceway_(N64_Mario_Raceway_Texture)', '', '', 0, '007_5', 'nMR', 'nMR'),
(117, 'DS Mario Raceway', 123, 'N64', 'v2.51', 'XenoGD', 152, '098', 2, '093', 0, 'https://wiki.tockdom.com/wiki/DS_Mario_Raceway_(N64_Mario_Raceway_Texture)', '', '', 0, 'NMR_DMR_X', 'nMR', 'nMR'),
(118, 'Mario Raceway R', 124, 'N64', 'v1.1', 'Bladestorm227, ZPL', 153, '099', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Mario_Raceway_R_(N64_Mario_Raceway_Edit)_(Bladestorm227_%26_ZPL)', '', '', 0, '007_2', 'nMR', 'nMR'),
(119, 'Moo Moo Farm', 125, 'N64', 'v1.1.mkd', 'Yoshidude4, Ermelber', 154, '09A', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Moo_Moo_Farm_(Yoshidude4_%26_Ermelber)', '', '', 0, '128', 'MMM', 'MMM'),
(120, 'Moo Moo Farm', 126, 'N64', 'v1.1', 'ZPL', 155, '09B', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Moo_Moo_Farm_(ZPL)', '', '', 0, '798', 'MMM', 'MMM'),
(121, 'Rainbow Road', 127, 'N64', 'v1.2.1', 'cpfusion', 156, '09C', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Rainbow_Road_(cpfusion)', '', '', 0, '820', 'RR', 'RR'),
(122, 'Rainbow Road', 129, 'N64', 'v1.0b', 'Skipper93653', 157, '09D', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Rainbow_Road_(Skipper93653)', '', '', 0, '336', 'RR', 'RR'),
(123, 'Rainbow Road', 130, 'N64', 'v1.2.mkd', 'Torran', 158, '09E', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Rainbow_Road_(Torran)', '', '', 0, '139', 'RR', 'RR'),
(124, 'Rainbow Road', 131, 'N64', 'v1.0', 'ZPL', 159, '09F', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Rainbow_Road_(ZPL)', '', '', 0, '1144', 'RR', 'RR'),
(125, 'Royal Raceway', 132, 'N64', 'v2.4', 'Baoulettes, LuigiM', 160, '0A0', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Royal_Raceway_(Baoulettes_%26_LuigiM)', '', '', 0, '077', 'nMR', 'nMR'),
(126, 'Royal Raceway', 134, 'N64', 'v1.1', 'SquireTurnbolt', 161, '0A1', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Royal_Raceway_(SquireTurnbolt)', '', '', 0, '711', 'nMR', 'nMR'),
(127, 'Royal Raceway', 135, 'N64', 'v1.2', 'ZPL', 162, '0A2', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Royal_Raceway_(ZPL)', '', '', 0, '738', 'nMR', 'nMR'),
(128, 'Sherbet land', 136, 'N64', 'X', 'Nintendo', 163, '0A3', 1, '', 0, 'https://wiki.tockdom.com/wiki/N64_Sherbet_Land', '', '', 0, '012', 'nSL', 'nSL'),
(129, 'Sherbet land', 137, 'N64', 'v1.0', 'Nintendo', 164, '0A4', 2, '0A3', 0, 'https://wiki.tockdom.com/wiki/N64_Sherbet_Land', '', '', 0, '012_1', 'nSL', 'nSL'),
(130, 'Glaceon\'s Ice Rink', 138, 'N64', 'v1.1', 'Jasperr', 165, '0A5', 2, '0A3', 0, 'https://wiki.tockdom.com/wiki/Glaceon%27s_Ice_Rink_(N64_Sherbet_Land_Texture)', '', '', 0, '012_3', 'nSL', 'nSL'),
(131, 'Sherbet Land HD', 139, 'N64', 'v1.0-hotfix', 'Cats4Life', 166, '0A6', 2, '0A3', 0, 'https://wiki.tockdom.com/wiki/N64_Sherbet_Land_HD_(N64_Sherbet_Land_Texture)_(Cats4Life)', '', '', 0, '012_4', 'nSL', 'nSL'),
(132, 'Sherbet Volcano', 140, 'N64', 'v2.0', 'DarkyBenji', 167, '0A7', 2, '0A3', 0, 'https://wiki.tockdom.com/wiki/Sherbet_Volcano_(N64_Sherbet_Land_Texture)', '', '', 0, '012_5', 'nSL', 'nSL'),
(133, 'Rosalina\'s Ice Land', 141, 'N64', 'v1.0', 'PlayersPurity', 168, '0A8', 2, '0A3', 0, 'https://wiki.tockdom.com/wiki/Rosalina%27s_Ice_Land_(N64_Sherbet_Land_Texture)', '', '', 0, 'NSL_RIL_P', 'nSL', 'nSL'),
(134, 'Sherbet Land R', 142, 'N64', 'v1.1', 'Zachruff, ZPL', 169, '0A9', 0, '', 0, 'https://wiki.tockdom.com/wiki/N64_Sherbet_Land_R_(N64_Sherbet_Land_Edit)_(Zachruff_%26_ZPL)', '', '', 0, '012_2', 'nSL', 'nSL'),
(135, 'Toad\'s Turnpike', 143, 'N64', 'v2.3', 'AltairYoshi', 170, '0AA', 1, '', 0, 'https://wiki.tockdom.com/wiki/N64_Toad%27s_Turnpike_(AltairYoshi)', '', '', 0, '434_1', 'MH', 'MH'),
(136, 'Toad\'s Turnpike', 144, 'N64', 'v2.3.Sunset', 'AltairYoshi', 171, '0AB', 2, '0AA', 0, 'https://wiki.tockdom.com/wiki/N64_Toad%27s_Turnpike_(AltairYoshi)', '', '', 0, '434_1', 'MH', 'MH'),
(137, 'Toad\'s Turnpike', 145, 'N64', 'v2.3.Night ', 'AltairYoshi', 172, '0AC', 2, '0AA', 0, 'https://wiki.tockdom.com/wiki/N64_Toad%27s_Turnpike_(AltairYoshi)', '', '', 0, '434_2', 'MH', 'MH'),
(138, 'Toad\'s Turnpike', 146, 'N64', 'RC4', 'Torran', 173, '0AD', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/N64_Toad%27s_Turnpike_(Torran)', '', '', 0, '065', 'MH', 'MH'),
(139, 'Wario Stadium', 147, 'N64', 'v1.1.1', 'bugsy', 174, '0AE', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/N64_Wario_Stadium_(bugsy)', '', '', 0, '1070', 'dDS', 'gWS'),
(140, 'Wario Stadium', 148, 'N64', 'v1.01.hp', 'zilly', 175, '0AF', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/N64_Wario_Stadium_(zilly)', '', '', 0, '477', 'dDS', 'gWS'),
(141, 'Yoshi Valley', 149, 'N64', 'v1.1', 'SquireTurnbolt', 176, '0B0', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/N64_Yoshi_Valley_(SquireTurnbolt)', '', '', 0, '721', 'WGM', 'WGM'),
(142, 'Yoshi Valley', 150, 'N64', 'Beta 3.2', 'zilly', 177, '0B1', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/N64_Yoshi_Valley_(zilly)', '', '', 0, '111', 'dYF', 'dYF'),
(143, 'Yoshi Valley', 151, 'N64', 'v1.5', 'ZPL', 178, '0B2', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/N64_Yoshi_Valley_(ZPL)', '', '', 0, '794', 'MT', 'MT'),
(144, 'Boo Lake', 152, 'GBA', 'v3.3', 'ChaosShadow23', 179, '0B3', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Boo_Lake_(ChaosShadow23)', '', '', 0, '114', 'sGV2', 'sGV2'),
(145, 'Boo Lake', 153, 'GBA', 'v2.3', 'Slimeserver', 180, '0B4', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Boo_Lake_(Slimeserver)', '', '', 0, '759', 'sGV2', 'sGV2'),
(146, 'Boo Lake', 154, 'GBA', 'v1.0', 'ZPL', 181, '0B5', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Boo_Lake_(ZPL)', '', '', 0, '1073', 'sGV2', 'sGV2'),
(147, 'Bowser Castle 1', 155, 'GBA', 'v1.1', 'Bri', 182, '0B6', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_1_(Bri)', '', '', 0, '401', 'gBC3', 'gBC3'),
(148, 'Bowser Castle 1', 156, 'GBA', 'v0.2', 'Cats4Life', 183, '0B7', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_1_(Cats4Life)', '', '', 0, '844', 'gBC3', 'gBC3'),
(149, 'Bowser Castle 1', 157, 'GBA', 'v1.1', 'ChaosShadow23', 184, '0B8', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_1_(ChaosShadow23)', '', '', 0, '162', 'gBC3', 'gBC3'),
(150, 'Bowser Castle 1', 158, 'GBA', 'v2.51', 'ZPL', 185, '0B9', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_1_(ZPL)', '', '', 0, '376', 'gBC3', 'gBC3'),
(151, 'Bowser Castle 2', 159, 'GBA', 'v2.1', 'ChaosShadow23', 186, '0BA', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_2_(ChaosShadow23)', '', '', 0, '161', 'gBC3', 'gBC3'),
(152, 'Bowser Castle 2', 160, 'GBA', 'v1.alt', 'CyrusTheYoshi', 187, '0BB', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_2_(CyrusTheYoshi)', '', '', 0, '581', 'gBC3', 'gBC3'),
(153, 'Bowser Castle 2', 161, 'GBA', 'v1.0', 'Kozakura', 188, '0BC', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_2_(Kozakura)', '', '', 0, '1199', 'gBC3', 'gBC3'),
(154, 'Bowser Castle 2', 162, 'GBA', 'v1.0', 'ZPL', 189, '0BD', 0, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_2_(ZPL)', '', '', 0, '1090', 'gBC3', 'gBC3'),
(155, 'Bowser Castle 3', 163, 'GBA', 'X', 'Nintendo', 190, '0BE', 1, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_3', '', '', 0, '021', 'gBC3', 'gBC3'),
(156, 'Bowser Castle 3', 164, 'GBA', 'v1.0', 'Nintendo', 191, '0BF', 2, '0AA', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_3', '', '', 0, '021_1', 'gBC3', 'gBC3'),
(157, 'Classic Bowser Castle 3', 165, 'GBA', 'v1.0', 'MysterE99', 192, '0C0', 2, '0AA', 0, 'https://wiki.tockdom.com/wiki/Classic_GBA_Bowser_Castle_3_(GBA_Bowser_Castle_3_Texture)', '', '', 0, '021_3', 'gBC3', 'gBC3'),
(158, 'Dark Bowser Castle 3', 166, 'GBA', 'v1.1', 'Dxrk', 193, '0C1', 2, '0AA', 0, 'https://wiki.tockdom.com/wiki/Dark_Bowser_Castle_3_(GBA_Bowser_Castle_3_Texture)_(Dxrk)', '', '', 0, '021_4', 'gBC3', 'gBC3'),
(159, 'Hell Castle', 167, 'GBA', 'v2.0b.mkf', 'Cats4Life', 194, '0C2', 2, '0AA', 0, 'https://wiki.tockdom.com/wiki/Hell_Castle_(GBA_Bowser_Castle_3_Texture)', '', '', 0, '021_5', 'gBC3', 'gBC3'),
(160, 'Bowser Castle 3R', 168, 'GBA', 'v1.1', 'MysterE99', 195, '0C3', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_3R_(GBA_Bowser_Castle_3_Edit)_(MysterE99)', '', '', 0, '021_2', 'gBC3', 'gBC3'),
(161, 'Bowser Castle 4', 169, 'GBA', 'v1.1.1(2 La', 'Bruh de la Boi', 196, '0C4', 0, '', 2, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_4_(Bruh_de_la_Boi)', '', '', 0, '1210', 'gBC3', 'gBC3'),
(162, 'Bowser Castle 4', 170, 'GBA', 'v4.1', 'ChaosShadow23', 197, '0C5', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_4_(ChaosShadow23)', '', '', 0, '127', 'gBC3', 'gBC3'),
(163, 'Bowser Castle 4', 171, 'GBA', 'Beta 2', 'DarkWolf658', 198, '0C6', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_4_(DarkWolf658)', '', '', 0, '446', 'gBC3', 'gBC3'),
(164, 'Broken Pier', 173, 'GBA', 'v4.1.1', 'ChaosShadow23', 199, '0C7', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Broken_Pier_(ChaosShadow23)', '', '', 0, '116', 'sGV2', 'sGV2'),
(165, 'Broken Pier', 174, 'GBA', 'v1.04.7', 'xBlue98', 200, '0C8', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Broken_Pier_(xBlue98)', '', '', 0, '772', 'sGV2', 'sGV2'),
(166, 'Broken Pier', 175, 'GBA', 'v1.0', 'ZPL', 201, '0C9', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Broken_Pier_(ZPL)', '', '', 0, '1085', 'sGV2', 'sGV2'),
(167, 'Cheep-Cheep Island', 176, 'GBA', 'v1.0', 'ChaosShadow23', 202, '0CA', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Cheep-Cheep_Island_(ChaosShadow23)', '', '', 0, '136', 'gPB', 'gPB'),
(168, 'Cheep-Cheep Island', 177, 'GBA', 'v1.0', 'SquireTurnbolt, Kozakura', 203, '0CB', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Cheep-Cheep_Island_(SquireTurnbolt_%26_Kozakura)', '', '', 0, '892', 'DC', 'DC'),
(169, 'Cheep-Cheep Island', 178, 'GBA', 'v1.0', 'ZPL', 204, '0CC', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Cheep-Cheep_Island_(ZPL)', '', '', 0, '747_1', 'gPB', 'gPB'),
(170, 'Cheep-Cheep Island', 179, 'GBA', 'v2.0', 'ZPL', 205, '0CD', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Cheep-Cheep_Island_(ZPL)', '', '', 0, '747_2', 'gPB', 'gSGB'),
(171, 'Cheese Land', 180, 'GBA', 'v3.1', 'ChaosShadow23', 206, '0CE', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Cheese_Land_(ChaosShadow23)', '', '', 0, '131', 'MMM', 'MMM'),
(172, 'Cheese Land', 181, 'GBA', 'v1.0', 'Kozakura', 207, '0CF', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Cheese_Land_(Kozakura)', '', '', 0, 'GCL_K', 'DDR', 'DDR'),
(173, 'Cheese Land', 182, 'GBA', 'v3.0-beta+', 'ZPL', 208, '0D0', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Cheese_Land_(ZPL)', '', '', 0, '570', 'dDH', 'dDH'),
(174, 'Lakeside Park', 184, 'GBA', 'v3.0', 'ChaosShadow23', 209, '0D1', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Lakeside_Park_(ChaosShadow23)', '', '', 0, '146', 'nDKJP', 'LC'),
(175, 'Lakeside Park', 186, 'GBA', 'RC1', 'ECD534, Toadette Hack Fan', 210, '0D2', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Lakeside_Park_(ECD534_%26_Toadette_Hack_Fan)', '', '', 0, 'GLP_ET', 'nDKJP', 'nDKJP'),
(176, 'Lakeside Park', 187, 'GBA', 'v1.1', 'Flint, Hman6516', 211, '0D3', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Lakeside_Park_(Flint_%26_Hman6516)', '', '', 0, '718', 'nDKJP', 'nDKJP'),
(177, 'Lakeside Park v1.0', 188, 'GBA', 'v1.0', 'ZPL', 212, '0D4', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Lakeside_Park_(ZPL)', '', '', 0, '1096', 'nDKJP', 'nDKJP'),
(178, 'Luigi Circuit', 190, 'GBA', 'RC1', 'ECD534, Toadette Hack Fan', 213, '0D5', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Luigi_Circuit_(ECD534_%26_Toadette_Hack_Fan)', '', '', 0, 'GLC_ET', 'MC', 'MC'),
(179, 'Luigi Circuit', 191, 'GBA', 'v2.1', 'Flint', 214, '0D6', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Luigi_Circuit_(Flint)', '', '', 0, '1098', 'LC', 'MC'),
(180, 'Luigi Circuit', 192, 'GBA', 'v1.02', 'zilly', 215, '0D7', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Luigi_Circuit_(zilly)', '', '', 0, '117', 'MC', 'LC'),
(181, 'Luigi Circuit', 193, 'GBA', 'v1.0', 'ZPL', 216, '0D8', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Luigi_Circuit_(ZPL)', '', '', 0, '785', 'nMR', 'nMR'),
(182, 'Mario Circuit', 194, 'GBA', 'v1.2', 'MysterE99', 217, '0D9', 0, '', 2, 'https://wiki.tockdom.com/wiki/GBA_Mario_Circuit_(MysterE99)', '', '', 0, '320', 'DC', 'DC'),
(183, 'Mario Circuit', 195, 'GBA', 'v1.0', 'ZPL', 218, '0DA', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Mario_Circuit_(ZPL)', '', '', 0, '1095', 'nMR', 'nMR'),
(184, 'Peach Circuit', 196, 'GBA', 'v1.0', 'Cats4Life', 219, '0DB', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Peach_Circuit_(Cats4Life)', '', '', 0, '1226', 'nMR', 'nMR'),
(185, 'Peach Circuit', 197, 'GBA', 'v1.1', 'ChaosShadow23', 220, '0DC', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Peach_Circuit_(ChaosShadow23)', '', '', 0, '187', 'dDH', 'dDH'),
(186, 'Peach Circuit', 198, 'GBA', 'v1.2', 'FunkyRacer', 221, '0DD', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Peach_Circuit_(FunkyRacer)', '', '', 0, '1239', 'MC', 'MC'),
(187, 'Peach Circuit', 199, 'GBA', 'v1.2-CTGP', 'ISwearChris', 222, '0DE', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Peach_Circuit_(ISwearChris)', '', '', 0, '1232', 'sMC3', 'sMC3'),
(188, 'Peach Circuit', 200, 'GBA', 'v1.0', 'ScyHigh, KawaiiDawn', 223, '0DF', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Peach_Circuit_(ScyHigh_%26_KawaiiDawn)', '', '', 0, '770', 'gMC', 'gMC'),
(189, 'Peach Circuit', 201, 'GBA', 'v2.0', 'Waltz', 224, '0E0', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Peach_Circuit_(Waltz)', '', '', 0, '1202', 'LC', 'MC'),
(190, 'Peach Circuit', 202, 'GBA', 'v2.0', 'ZPL', 225, '0E1', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Peach_Circuit_(ZPL)', '', '', 0, '675', 'dPG', 'dPG'),
(191, 'Rainbow Road', 204, 'GBA', 'v1.3.2', 'ChaosShadow23', 226, '0E2', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Rainbow_Road_(ChaosShadow23)', '', '', 0, '158', 'RR', 'RR'),
(192, 'Rainbow Road', 205, 'GBA', 'v1.0', 'kHacker35000vr', 227, '0E3', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Rainbow_Road_(kHacker35000vr)', '', '', 0, '537', 'RR', 'RR'),
(193, 'Rainbow Road', 206, 'GBA', 'v2.0', 'Saiveeon', 228, '0E4', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Rainbow_Road_(Saiveeon)', '', '', 0, '662', 'RR', 'RR'),
(194, 'Rainbow Road', 207, 'GBA', 'v1.2', 'SquireTurnbolt', 229, '0E5', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Rainbow_Road_(SquireTurnbolt)', '', '', 0, '725', 'RR', 'RR'),
(195, 'Rainbow Road', 208, 'GBA', 'v1.0', 'ZPL', 230, '0E6', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Rainbow_Road_(ZPL)', '', '', 0, '1145', 'RR', 'RR'),
(196, 'Ribbon Road', 209, 'GBA', 'v1.2.ctgp', 'ChaosShadow23', 231, '0E7', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Ribbon_Road_(ChaosShadow23)', '', '', 0, '154', 'DC', 'DC'),
(197, 'Ribbon Road', 210, 'GBA', 'v2.3r', 'Gabriela_', 232, '0E8', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Ribbon_Road_(Gabriela_)', '', '', 0, '487', 'sMC3', 'sMC3'),
(198, 'Riverside Park', 211, 'GBA', 'v2.2', 'ChaosShadow23', 233, '0E9', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Riverside_Park_(ChaosShadow23)', '', '', 0, '143', 'nDKJP', 'nDKJP'),
(199, 'Riverside Park', 212, 'GBA', 'v1.0.kclfix', 'TheGamingBram, Kozakura', 234, '0EA', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Riverside_Park_(TheGamingBram_%26_Kozakura)', '', '', 0, '1189', 'nDKJP', 'nDKJP'),
(200, 'Riverside Park', 213, 'GBA', 'v1.0', 'ZPL', 235, '0EB', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Riverside_Park_(ZPL)', '', '', 0, '941_1', 'nDKJP', 'nDKJP'),
(201, 'Riverside Park', 214, 'GBA', 'v2.0', 'ZPL', 236, '0EC', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Riverside_Park_(ZPL)', '', '', 0, '941_2', 'nDKJP', 'nDKJP'),
(202, 'Shy Guy Beach', 215, 'GBA', 'X', 'Nintendo', 237, '0ED', 1, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Shy_Guy_Beach', '', '', 0, '013', 'gSGB', 'gSGB'),
(203, 'Shy Guy Beach', 216, 'GBA', 'v1.0', 'Nintendo', 238, '0EE', 2, '0ED', 0, 'https://wiki.tockdom.com/wiki/GBA_Shy_Guy_Beach', '', '', 0, '013_1', 'gSGB', 'gSGB'),
(204, 'Horror Beach', 217, 'GBA', 'v2.0', 'DarkyBenji', 239, '0EF', 2, '0ED', 0, 'https://wiki.tockdom.com/wiki/Horror_Beach_(GBA_Shy_Guy_Beach_Texture)', '', '', 0, '013_3', 'gSGB', 'gSGB'),
(205, 'Island Getaway', 218, 'GBA', 'v2.5', 'GranthamMKW', 240, '0F0', 2, '0ED', 0, 'https://wiki.tockdom.com/wiki/Island_Getaway_(GBA_Shy_Guy_Beach_Texture)', '', '', 0, '013_4', 'gSGB', 'gSGB'),
(206, 'Winter Beach', 219, 'GBA', 'v1.0.Night', 'xMeap826', 241, '0F1', 2, '0ED', 0, 'https://wiki.tockdom.com/wiki/GBA_Winter_Beach_(GBA_Shy_Guy_Beach_Texture)', '', '', 0, '013_5', 'gSGB', 'gSGB'),
(207, 'Shy Guy Beach R', 220, 'GBA', 'v1.1', 'Zachruff', 242, '0F2', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Shy_Guy_Beach_R_(GBA_Shy_Guy_Beach_Edit)_(Zachruff)', '', '', 0, '013_2', 'gSGB', 'gSGB'),
(208, 'Shy Guy Beach', 221, 'GBA', 'v1.0', 'ZPL', 243, '0F3', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Shy_Guy_Beach_(ZPL)', '', '', 0, '954', 'gSGB', 'gSGB'),
(209, 'Sky Garden', 222, 'GBA', 'v1.0', 'acaruso', 244, '0F4', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sky_Garden_(acaruso)', '', '', 0, '469', 'MG', 'MG'),
(210, 'Sky Garden', 223, 'GBA', 'v1.1', 'ChaosShadow23', 245, '0F5', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sky_Garden_(ChaosShadow23)', '', '', 0, '231', 'dPG', 'dPG'),
(211, 'Sky Garden', 224, 'GBA', 'v1.0.3', 'Luca', 246, '0F6', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sky_Garden_(Luca)', '', '', 0, '872', 'dPG', 'dPG'),
(212, 'Sky Garden', 225, 'GBA', 'v1.1', 'Squadaloo', 247, '0F7', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sky_Garden_(Squadaloo)', '', '', 0, '709', 'dPG', 'dPG'),
(213, 'Sky Garden', 226, 'GBA', 'v2.0', 'TheGamingBram', 248, '0F8', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sky_Garden_(TheGamingBram)', '', '', 0, '866', 'MG', 'MG'),
(214, 'Sky Garden', 227, 'GBA', 'v1.0', 'ZPL', 249, '0F9', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sky_Garden_(ZPL)', '', '', 0, '776', 'gMC', 'gMC'),
(215, 'Snow Land', 228, 'GBA', 'v1.2', 'ChaosShadow23', 250, '0FA', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Snow_Land_(ChaosShadow23)', '', '', 0, '203', 'nSL', 'nSL'),
(216, 'Snow Land', 229, 'GBA', 'v2.1.1', 'cpfusion', 251, '0FB', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Snow_Land_(cpfusion)', '', '', 0, '740', 'nSL', 'nSL'),
(217, 'Snow Land', 230, 'GBA', 'v1.0.opt2', 'SquireTurnbolt', 252, '0FC', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Snow_Land_(SquireTurnbolt)', '', '', 0, '980', 'nSL', 'nSL'),
(218, 'Snow Land', 231, 'GBA', 'v2.1', 'ZPL', 253, '0FD', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Snow_Land_(ZPL)', '', '', 0, '561', 'DKS', 'DKS'),
(219, 'Sunset Wilds', 232, 'GBA', 'v1.1b', 'ChaosShadow23', 254, '0FE', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sunset_Wilds_(ChaosShadow23)', '', '', 0, '150', 'dDH', 'dDH'),
(220, 'Sunset Wilds', 233, 'GBA', 'v1.2', 'Flint', 255, '0FF', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sunset_Wilds_(Flint)', '', '', 0, '754', 'MMM', 'MMM'),
(221, 'Sunset Wilds', 234, 'GBA', 'v1.0', 'Luca', 256, '100', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sunset_Wilds_(Luca)', '', '', 0, '1015', 'dDH', 'dDH'),
(222, 'Sunset Wilds', 235, 'GBA', 'v1.1', 'ZPL', 257, '101', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Sunset_Wilds_(ZPL)', '', '', 0, '1091', 'dDH', 'dDH'),
(223, 'Yoshi Desert', 236, 'GBA', 'v1.0', 'ChaosShadow23', 258, '102', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Yoshi_Desert_(ChaosShadow23)', '', '', 0, '216', 'dDH', 'dDH'),
(224, 'Yoshi Desert', 237, 'GBA', 'v1.1', 'ZPL', 259, '103', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Yoshi_Desert_(ZPL)', '', '', 0, '623_1', 'DDR', 'DDR'),
(225, 'Yoshi Desert', 238, 'GBA', 'v2.0', 'ZPL', 260, '104', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Yoshi_Desert_(ZPL)', '', '', 0, '623_2', 'DDR', 'DDR'),
(226, 'Baby Park', 239, 'GCN', 'v1.1', 'Bruh De La Boi', 261, '105', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Baby_Park_(Bruh_de_la_Boi)', '', '', 0, '644_1', 'DC', 'agCL'),
(227, 'Baby Park R', 240, 'GCN', 'v1.0-fix', 'Bruh De La Boi', 262, '106', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Baby_Park_R_(GCN_Baby_Park_Edit)', '', '', 0, '644_2', 'DC', 'agCL'),
(228, 'Baby Park', 241, 'GCN', 'v1.11', 'maczkopeti', 263, '107', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Baby_Park_(maczkopeti)', '', '', 0, '205', 'sMC3', 'agCL'),
(229, 'Baby Park', 242, 'GCN', 'v1.1.ikw', 'Tock', 264, '108', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Baby_Park_(Tock)', '', '', 0, '078', 'MC', 'agCL'),
(230, 'Baby Park', 243, 'GCN', 'v1.0', 'ZPL', 265, '109', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Baby_Park_(ZPL)', '', '', 0, '1087', 'MC', 'MC'),
(231, 'Bowser\'s Castle', 244, 'GCN', 'v1.6.rot (o', 'Tock', 266, '10A', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Bowser%27s_Castle_(Tock)', '', '', 0, '388', 'BC', 'BC'),
(232, 'Bowser\'s Castle', 245, 'GCN', 'v1.0', 'ZPL', 267, '10B', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Bowser%27s_Castle_(ZPL)', '', '', 0, '1148', 'BC', 'BC'),
(233, 'Daisy Cruiser', 246, 'GCN', 'v1.2', 'FunkyDude15, Riidefi & Cotni', 268, '10C', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Daisy_Cruiser_(FunkyDude15,_Riidefi_%26_Cotni)', '', '', 0, '421', 'gPB', 'gPB'),
(234, 'Daisy Cruiser', 247, 'GCN', 'v1.0', 'ZPL', 269, '10D', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Daisy_Cruiser_(ZPL)', '', '', 0, '1092', 'gPB', 'gPB'),
(235, 'Dino Dino Jungle', 248, 'GCN', 'x', 'Tock', 270, '10E', 1, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Dino_Dino_Jungle_(Tock)', '', '', 0, '667', 'gDKM', 'gDKM'),
(236, 'Dino Dino Jungle', 249, 'GCN', 'v1.5', 'Tock', 271, '10F', 2, '10E', 0, 'https://wiki.tockdom.com/wiki/GCN_Dino_Dino_Jungle_(Tock)', '', '', 0, '667_1', 'gDKM', 'gDKM'),
(237, 'Samurai Forest', 250, 'GCN', 'v1.0', 'Tock, Scuder1aSc0tti', 272, '110', 2, '10E', 0, 'https://wiki.tockdom.com/wiki/Samurai_Forest_(GCN_Dino_Dino_Jungle_Edit)', '', '', 0, '667_2', 'BC', 'BC'),
(238, 'Dino Dino Jungle', 251, 'GCN', 'v1.0', 'ZPL', 273, '111', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Dino_Dino_Jungle_(ZPL)', '', '', 0, '993', 'gDKM', 'gDKM'),
(239, 'DK Mountain', 252, 'GCN', 'X', 'Nintendo', 274, '112', 1, '', 0, 'https://wiki.tockdom.com/wiki/GCN_DK_Mountain', '', '', 0, '030', 'gDKM', 'gDKM'),
(240, 'DK Mountain', 253, 'GCN', 'v1.0', 'Nintendo', 275, '113', 2, '112', 0, 'https://wiki.tockdom.com/wiki/GCN_DK_Mountain', '', '', 0, '030_1', 'gDKM', 'gDKM'),
(241, 'Jungle Mountain', 254, 'GCN', 'v1.0', 'ZPL', 276, '114', 2, '112', 0, 'https://wiki.tockdom.com/wiki/Jungle_Mountain_(GCN_DK_Mountain_Texture)', '', '', 0, '030_3', 'gDKM', 'gDKM'),
(242, 'Tour DK Mountain', 255, 'GCN', 'v1.0', 'CamoMKT', 277, '115', 2, '112', 0, 'https://wiki.tockdom.com/wiki/Tour_DK_Mountain_(GCN_DK_Mountain_Texture)', '', '', 0, '030_4', 'gDKM', 'gDKM'),
(243, 'Winter Mountain', 256, 'GCN', 'v1.0.Night', 'xMeap826', 278, '116', 2, '112', 0, 'https://wiki.tockdom.com/wiki/GCN_Winter_Mountain_(GCN_DK_Mountain_Texture)', '', '', 0, '030_5', 'gDKM', 'gDKM'),
(244, 'DK Mountain R', 257, 'GCN', 'v1.0', 'kHacker35000vr', 279, '117', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_DK_Mountain_R_(GCN_DK_Mountain_Edit)_(kHacker35000vr)', '', '', 0, '030_2', 'gDKM', 'gDKM'),
(245, 'Dry Dry Desert', 258, 'GCN', 'Alpha 3-G', 'Riidefi, Hlorenzi', 280, '118', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Dry_Dry_Desert_(Riidefi_%26_Hlorenzi)', '', '', 0, '348', 'MC', 'DDR'),
(246, 'Dry Dry Desert', 259, 'GCN', 'v1.0', 'UltraWario', 281, '119', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Dry_Dry_Desert_(UltraWario)', '', '', 0, 'GDDD_U', 'DDR', 'DDR'),
(247, 'Dry Dry Desert', 260, 'GCN', 'v1.3', 'ZPL', 282, '11A', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Dry_Dry_Desert_(ZPL)', '', '', 0, '744', 'DDR', 'DDR'),
(248, 'Luigi Circuit', 261, 'GCN', 'v1.7', 'Tock', 283, '11B', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Luigi_Circuit_(Tock)', '', '', 0, '344', 'LC', 'LC'),
(249, 'Luigi Circuit', 262, 'GCN', 'v1.1', 'ZPL', 284, '11C', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Luigi_Circuit_(ZPL)', '', '', 0, '1086', 'gMC', 'gMC'),
(250, 'Mario Circuit', 263, 'GCN', 'X', 'Nintendo', 285, '11D', 1, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Mario_Circuit', '', '', 0, '023', 'gMC', 'gMC'),
(251, 'Mario Circuit', 264, 'GCN', 'v1.0', 'Nintendo', 286, '11E', 2, '11D', 0, 'https://wiki.tockdom.com/wiki/GCN_Mario_Circuit', '', '', 0, '023_1', 'gMC', 'gMC'),
(252, 'Misty Road', 265, 'GCN', 'v1.0', 'Cats4Life', 287, '11F', 2, '11D', 0, 'https://wiki.tockdom.com/wiki/Misty_Road_(GCN_Mario_Circuit_Texture)', '', '', 0, '023_3', 'gMC', 'gMC'),
(253, 'Park Circuit', 266, 'GCN', 'v1.0.rain', 'xMeap826', 288, '120', 2, '11D', 0, 'https://wiki.tockdom.com/wiki/GCN_Park_Circuit_(GCN_Mario_Circuit_Texture)', '', '', 0, '023_4', 'gMC', 'gMC'),
(254, 'Snowy Mario Circuit', 267, 'GCN', 'v1.1.Night', 'xMeap826', 289, '121', 2, '11D', 0, 'https://wiki.tockdom.com/wiki/GCN_Snowy_Mario_Circuit_(GCN_Mario_Circuit_Texture)', '', '', 0, '023_5', 'gMC', 'gMC'),
(255, 'Mario Circuit R', 268, 'GCN', 'v1.1', 'ZPL', 290, '122', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Mario_Circuit_R_(GCN_Mario_Circuit_Edit)_(ZPL)', '', '', 0, '023_2', 'gMC', 'gMC'),
(256, 'Mushroom Bridge', 269, 'GCN', 'v1.5', 'Tock', 291, '123', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Mushroom_Bridge_(Tock)', '', '', 0, '338', 'MH', 'MH'),
(257, 'Mushroom Bridge', 270, 'GCN', 'v1.0', 'ZPL', 292, '124', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Mushroom_Bridge_(ZPL)', '', '', 0, '1088', 'sMC3', 'sMC3'),
(258, 'Mushroom City', 271, 'GCN', 'v1.3.le', 'Riidefi, Tock', 293, '125', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Mushroom_City_(Riidefi_%26_Tock)', '', '', 0, '430', 'MH', 'MH'),
(259, 'Mushroom City', 272, 'GCN', 'v1.1', 'ZPL', 294, '126', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Mushroom_City_(ZPL)', '', '', 0, '1146', 'MH', 'MH'),
(260, 'Peach Beach', 273, 'GCN', 'X', 'Nintendo', 295, '127', 1, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Peach_Beach', '', '', 0, '004', 'gPB', 'gPB'),
(261, 'Peach Beach', 274, 'GCN', 'v1.0', 'Nintendo', 296, '128', 2, '127', 0, 'https://wiki.tockdom.com/wiki/GCN_Peach_Beach', '', '', 0, '004_1', 'gPB', 'gPB'),
(262, 'Remastered Peach Beach', 275, 'GCN', 'v1.0', 'FalconXFalcon', 297, '129', 2, '127', 0, 'https://wiki.tockdom.com/wiki/Remastered_Peach_Beach_(GCN_Peach_Beach_Texture)', '', '', 0, '004_3', 'gPB', 'gPB'),
(263, 'Snowy Beach', 276, 'GCN', 'v1.1.Night', 'xMeap826', 298, '12A', 2, '127', 0, 'https://wiki.tockdom.com/wiki/GCN_Snowy_Beach_(GCN_Peach_Beach_Texture)', '', '', 0, '004_4', 'gPB', 'gPB'),
(264, 'Tockdom Beach', 277, 'GCN', 'v1.0.Fix', 'Cats4Life', 299, '12B', 2, '127', 0, 'https://wiki.tockdom.com/wiki/Tockdom_Beach_(GCN_Peach_Beach_Texture)', '', '', 0, '004_5', 'gPB', 'gPB'),
(265, 'Beach Bowl Galaxy', 278, 'GCN', 'v1.0-hotfix', 'DarkyBenji', 300, '12C', 2, '127', 0, 'https://wiki.tockdom.com/wiki/Beach_Bowl_Galaxy_(GCN_Peach_Beach_Texture)', '', '', 0, 'GPB_BBG_D', 'gPB', 'gPB'),
(266, 'Peach Beach R', 279, 'GCN', 'v1.1', 'Zachruff, ZPL', 301, '12D', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Peach_Beach_R_(GCN_Peach_Beach_Edit)_(Zachruff_%26_ZPL)', '', '', 0, '004_2', 'gPB', 'gPB'),
(267, 'Rainbow Road', 280, 'GCN', 'v1.2', 'Riidefi, Tock', 302, '12E', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Rainbow_Road_(Riidefi_%26_Tock)', '', '', 0, '448', 'RR', 'RR'),
(268, 'Rainbow Road', 281, 'GCN', 'v1.0', 'ZPL', 303, '12F', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Rainbow_Road_(ZPL)', '', '', 0, '950', 'RR', 'RR'),
(269, 'Sherbet Land', 282, 'GCN', 'v1.0', 'Brawlboxgaming, ZPL', 304, '130', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Sherbet_Land_(Brawlboxgaming_%26_ZPL)', '', '', 0, '1149', 'DKS', 'DKS'),
(270, 'Sherbet Land', 283, 'GCN', 'v4.68', 'Tock', 305, '131', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Sherbet_Land_(Tock)', '', '', 0, '040', 'nSL', 'nSL'),
(271, 'Waluigi Stadium', 284, 'GCN', 'X', 'Nintendo', 306, '132', 1, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Waluigi_Stadium', '', '', 0, '015', 'gWS', 'gWS'),
(272, 'Waluigi Stadium', 285, 'GCN', 'v1.0', 'Nintendo', 307, '133', 2, '132', 0, 'https://wiki.tockdom.com/wiki/GCN_Waluigi_Stadium', '', '', 0, '015_1', 'gWS', 'gWS'),
(273, 'MK8DX Waluigi Stadium', 286, 'GCN', 'v1.5', 'LTC 91', 308, '134', 2, '132', 0, 'https://wiki.tockdom.com/wiki/MK8DX_Waluigi_Stadium_(GCN_Waluigi_Stadium_Texture)', '', '', 0, '015_3', 'gWS', 'gWS'),
(274, 'Snowy Stadium', 287, 'GCN', 'v1.0.Night', 'xMeap826', 309, '135', 2, '132', 0, 'https://wiki.tockdom.com/wiki/GCN_Snowy_Stadium_(GCN_Waluigi_Stadium_Texture)', '', '', 0, '015_4', 'gWS', 'gWS'),
(275, 'Windy Hill', 288, 'GCN', 'v1.0', 'DarkyBenji', 310, '136', 2, '132', 0, 'https://wiki.tockdom.com/wiki/Windy_Hill_(GCN_Waluigi_Stadium_Texture)', '', '', 0, '015_5', 'gWS', 'gWS'),
(276, 'Waluigi Stadium R', 289, 'GCN', 'v1.1', 'Zachruff,?ZPL', 311, '137', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Waluigi_Stadium_R_(GCN_Waluigi_Stadium_Edit)_(Zachruff_%26_ZPL)', '', '', 0, '015_2', 'gWS', 'gWS'),
(277, 'Wario Colosseum', 290, 'GCN', 'v1.10.ctgp', 'Tock', 312, '138', 0, '', 2, 'https://wiki.tockdom.com/wiki/GCN_Wario_Colosseum_(Tock)', '', '', 0, '367', 'gWS', 'gWS');
INSERT INTO `mkvn_tracks` (`ID`, `Track_Name`, `TrackSort`, `Track_Type`, `Track_version`, `Track_Creator`, `Track_DEC_ID`, `Track_Hex_ID`, `Slot_Type`, `SubTrackTo`, `NewTrack`, `Wiki_Link`, `DLC_Music_Name`, `DLC_Music_YT_EMBED`, `DLC_Music_PackID`, `Local_File`, `Tprop`, `Tmus`) VALUES
(278, 'Wario Colosseum', 291, 'GCN', 'v1.0', 'ZPL', 313, '139', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Wario_Colosseum_(ZPL)', '', '', 0, '1147', 'dDS', 'gWS'),
(279, 'Yoshi Circuit', 292, 'GCN', 'X', 'Ermelber, Yoshidude4', 314, '13A', 1, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Yoshi_Circuit_(Ermelber_%26_Yoshidude4)', '', '', 0, '137_1', 'gMC', 'gMC'),
(280, 'Yoshi Circuit', 293, 'GCN', 'RC1-mkddw', 'Ermelber, Yoshidude4', 315, '13B', 2, '13A', 0, 'https://wiki.tockdom.com/wiki/GCN_Yoshi_Circuit_(Ermelber_%26_Yoshidude4)', '', '', 0, '137_1', 'gMC', 'gMC'),
(281, 'Yoshi Circuit', 294, 'GCN', 'RC1.winter.', 'Ermelber, Yoshidude4', 316, '13C', 2, '13A', 0, 'https://wiki.tockdom.com/wiki/GCN_Yoshi_Circuit_(Ermelber_%26_Yoshidude4)', '', '', 0, '137_2', 'gMC', 'gMC'),
(282, 'Autumn Yoshi Circuit', 295, 'GCN', 'v1.0.mkd', 'PhillyG', 317, '13D', 2, '13A', 0, 'https://wiki.tockdom.com/wiki/Autumn_GCN_Yoshi_Circuit_(GCN_Yoshi_Circuit_Texture)', '', '', 0, '137_4', 'gMC', 'gMC'),
(283, 'Yoshi Circuit at Dusk', 296, 'GCN', 'v1.0', 'YoshTaku', 318, '13E', 2, '13A', 0, 'https://wiki.tockdom.com/wiki/Yoshi_Circuit_at_Dusk_(GCN_Yoshi_Circuit_Texture)', '', '', 0, '137_5', 'gMC', 'gMC'),
(284, 'Yoshi Circuit R', 297, 'GCN', 'RC1.winter.', 'NinYoda1', 319, '13F', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Yoshi_Circuit_R_(GCN_Yoshi_Circuit_Edit)', '', '', 0, '137_3', 'gMC', 'gMC'),
(285, 'Yoshi Circuit', 298, 'GCN', 'v1.0', 'FunkyDude15', 320, '140', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Yoshi_Circuit_(FunkyDude15)', '', '', 0, '112', 'dYF', 'dYF'),
(286, 'Yoshi Circuit', 299, 'GCN', 'v1.1', 'Tock', 321, '141', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Yoshi_Circuit_(Tock)', '', '', 0, '373', 'gMC', 'gMC'),
(287, 'Yoshi Circuit', 300, 'GCN', 'v2.02', 'ZPL', 322, '142', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Yoshi_Circuit_(ZPL)', '', '', 0, '462', 'gMC', 'gMC'),
(288, 'Bananan Ruins', 301, 'GP', 'v1.0', 'Dylanmario', 323, '143', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Bananan_Ruins_(Dylanmario)', '', '', 0, '1029', 'nDKJP', 'nDKJP'),
(289, 'Bowser\'s Castle', 302, 'GP', 'v1.0', 'TheGamingBram', 324, '144', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Bowser%27s_Castle_(TheGamingBram)', '', '', 0, '1142', 'nBC', 'nBC'),
(290, 'Castle Wall', 303, 'GP', 'v1.0', 'TheGamingBram', 325, '145', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Castle_Wall_(TheGamingBram)', '', '', 0, '1194', 'nBC', 'nBC'),
(291, 'Diamond City', 304, 'GP', 'v1.3', 'Atlas', 326, '146', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Diamond_City_(Atlas)', '', '', 0, '247', 'CM', 'CM'),
(292, 'DK Jungle', 305, 'GP', 'RC2b', 'Pointy Pighead Games', 327, '147', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_DK_Jungle_(Pointy_Pighead_Games)', '', '', 0, '257', 'nDKJP', 'nDKJP'),
(293, 'Mario Beach', 306, 'GP', 'v2.0 Alpha ', 'SuperMario64DS, DJ Lowgey', 328, '148', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Mario_Beach_(SuperMario64DS_%26_DJ_Lowgey)', '', '', 0, '1182', 'gMC', 'gMC'),
(294, 'Mario Highway', 307, 'GP', 'v1.0', 'Diego Vapy', 329, '149', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Mario_Highway_(Diego_Vapy)', '', '', 0, '1181', 'MC', 'MC'),
(295, 'Pac Mountain', 308, 'GP', 'Beta 3', 'Riidefi', 330, '14A', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Pac_Mountain_(Riidefi)', '', '', 0, '302', 'nMR', 'nMR'),
(296, 'Rainbow Downhill', 310, 'GP', 'v2.0i', 'Diego Vapy', 331, '14B', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Rainbow_Downhill_(Diego_Vapy)', '', '', 0, '995', 'RR', 'RR'),
(297, 'Stadium Arena', 311, 'GP', 'v1.5', 'Diego Vapy', 332, '14C', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Stadium_Arena_(Diego_Vapy)', '', '', 0, '761', 'MC', 'MC'),
(298, 'Waluigi Stadium', 312, 'GP', 'v1.0', 'Diego Vapy', 333, '14D', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Waluigi_Stadium_(Diego_Vapy)', '', '', 0, '1023', 'LC', 'gWS'),
(299, 'Airship Fortress', 313, 'DS', 'v1.5c', 'Sniki', 334, '14E', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Airship_Fortress_(Sniki)', '', '', 0, '347', 'BC', 'BC'),
(300, 'Airship Fortress', 314, 'DS', 'v1.0', 'ZPL', 335, '14F', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Airship_Fortress_(ZPL)', '', '', 0, '994', 'gBC3', 'gBC3'),
(301, 'Bowser Castle', 315, 'DS', 'v1.2.fireba', 'Sniki', 336, '150', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Bowser_Castle_(Sniki)', '', '', 0, '372', 'gBC3', 'gBC3'),
(302, 'Bowser Castle', 316, 'DS', 'v1.1', 'ZPL', 337, '151', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Bowser_Castle_(ZPL)', '', '', 0, '1009', 'BC', 'BC'),
(303, 'Cheep Cheep Beach', 317, 'DS', 'v2.0', 'Jasperr, ZPL, Golden RS', 338, '152', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Cheep_Cheep_Beach_(Jasperr,_ZPL_%26_Golden_RS)', '', '', 0, '416', 'gPB', 'gPB'),
(304, 'Cheep Cheep Beach', 318, 'DS', 'v2.1', 'SquireTurnbolt', 339, '153', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Cheep_Cheep_Beach_(SquireTurnbolt)', '', '', 0, '741', 'gPB', 'gPB'),
(305, 'Cheep Cheep Beach', 319, 'DS', 'v1.3.1', 'sup3rsmash8', 340, '154', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Cheep_Cheep_Beach_(sup3rsmash8)', '', '', 0, '088', 'gPB', 'gPB'),
(306, 'Delfino Square', 320, 'DS', 'X', 'Nintendo', 341, '155', 1, '', 0, 'https://wiki.tockdom.com/wiki/DS_Delfino_Square', '', '', 0, '014', 'dDS', 'dDS'),
(307, 'Delfino Square', 321, 'DS', 'v1.0', 'Nintendo', 342, '156', 2, '155', 0, 'https://wiki.tockdom.com/wiki/DS_Delfino_Square', '', '', 0, '014_1', 'dDS', 'dDS'),
(308, 'Freedom Town', 322, 'DS', 'v1.0', 'Jasperr', 343, '157', 2, '155', 0, 'https://wiki.tockdom.com/wiki/Freedom_Town_(DS_Delfino_Square_Texture)', '', '', 0, '014_3', 'dDS', 'dDS'),
(309, 'Midnight Square', 323, 'DS', 'v1.0', 'AltairYoshi', 344, '158', 2, '155', 0, 'https://wiki.tockdom.com/wiki/Midnight_Square_(DS_Delfino_Square_Texture)', '', '', 0, '014_4', 'dDS', 'dDS'),
(310, 'Winter Square', 324, 'DS', 'v1.0.night', 'xMeap826', 345, '159', 2, '155', 0, 'https://wiki.tockdom.com/wiki/DS_Winter_Square_(DS_Delfino_Square_Texture)', '', '', 0, '014_5', 'dDS', 'dDS'),
(311, 'Delfino Square R', 325, 'DS', 'v1.1', 'Anoob', 346, '15A', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Delfino_Square_R_(DS_Delfino_Square_Edit)_(ANoob)', '', '', 0, '014_2', 'dDS', 'dDS'),
(312, 'Delfino Square Kiosk', 326, 'DS', 'v1.0', 'ZPL', 347, '15B', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Delfino_Square_Kiosk_(ZPL)', '', '', 0, '1214', 'dDS', 'dDS'),
(313, 'Desert Hills', 327, 'DS', 'X', 'Nintendo', 348, '15C', 1, '', 0, 'https://wiki.tockdom.com/wiki/DS_Desert_Hills', '', '', 0, '020', 'dDH', 'dDH'),
(314, 'Desert Hills', 328, 'DS', 'v1.0', 'Nintendo', 349, '15D', 2, '15C', 0, 'https://wiki.tockdom.com/wiki/DS_Desert_Hills', '', '', 0, '020_1', 'dDH', 'dDH'),
(315, 'Green Desert', 329, 'DS', 'v1.0', 'MrKoeikoei', 350, '15E', 2, '15C', 0, 'https://wiki.tockdom.com/wiki/Green_Desert_(DS_Desert_Hills_Texture)', '', '', 0, '020_3', 'dDH', 'dDH'),
(316, 'Nighttime Hills', 330, 'DS', 'v1.0', 'AltairYoshi', 351, '15F', 2, '15C', 0, 'https://wiki.tockdom.com/wiki/Nighttime_Hills_(DS_Desert_Hills_Texture)', '', '', 0, '020_4', 'dDH', 'dDH'),
(317, 'Snowy Hills', 331, 'DS', 'v1.0.Night', 'xMeap826', 352, '160', 2, '15C', 0, 'https://wiki.tockdom.com/wiki/DS_Snowy_Hills_(DS_Desert_Hills_Texture)', '', '', 0, '020_5', 'dDH', 'dDH'),
(318, 'Desert Hills R', 332, 'DS', 'v1.0', 'Anoob', 353, '161', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Desert_Hills_R_(DS_Desert_Hills_Edit)_(ANoob)', '', '', 0, '020_2', 'dDH', 'dDH'),
(319, 'DK Pass', 333, 'DS', 'v1.01b', 'Skipper93653', 354, '162', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_DK_Pass_(Skipper93653)', '', '', 0, '362', 'DKS', 'DKS'),
(320, 'DK Pass', 334, 'DS', 'v3.1', 'ZPL', 355, '163', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_DK_Pass_(ZPL)', '', '', 0, '437', 'DKS', 'DKS'),
(321, 'Figure-8 Circuit', 335, 'DS', 'RC1', 'maczkopeti', 356, '164', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Figure-8_Circuit_(maczkopeti)', '', '', 0, '213', 'DC', 'DC'),
(322, 'Figure-8 Circuit', 336, 'DS', 'v1.0', 'Quajeek99, Sniki', 357, '165', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Figure-8_Circuit_(Quajeek99_%26_Sniki)', '', '', 0, '395', 'LC', 'MC'),
(323, 'Figure-8 Circuit', 337, 'DS', 'v1.0', 'ZPL', 358, '166', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Figure-8_Circuit_(ZPL)', '', '', 0, '1006', 'LC', 'MC'),
(324, 'Luigi\'s Mansion', 338, 'DS', 'v1.2', 'Tock', 359, '167', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Luigi%27s_Mansion_(Tock)', '', '', 0, '541', 'sGV2', 'sGV2'),
(325, 'Luigi\'s Mansion', 339, 'DS', 'v1.0', 'ZPL', 360, '168', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Luigi%27s_Mansion_(ZPL)', '', '', 0, '1007', 'sGV2', 'sGV2'),
(326, 'Mario Circuit', 340, 'DS', 'v1.0', 'Dreacastian-Turnip', 361, '169', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Mario_Circuit_(Dreacastian-Turnip)', '', '', 0, '1143', 'gMC', 'gMC'),
(327, 'Mario Circuit', 341, 'DS', 'v1.0', 'p00ks', 362, '16A', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Mario_Circuit_(p00ks)', '', '', 0, 'DMC_P', 'gDKM', 'gDKM'),
(328, 'Mario Circuit', 342, 'DS', 'v2.0', 'zilly', 363, '16B', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Mario_Circuit_(zilly)', '', '', 0, '089', 'MC', 'MC'),
(329, 'Mario Circuit v6.2', 343, 'DS', 'v6.2', 'ZPL', 364, '16C', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Mario_Circuit_(ZPL)', '', '', 0, '386_1', 'MC', 'MC'),
(330, 'Mario Circuit v7.1', 344, 'DS', 'v7.1', 'ZPL', 365, '16D', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Mario_Circuit_(ZPL)', '', '', 0, '386_2', 'MC', 'MC'),
(331, 'Peach Gardens', 345, 'DS', 'X', 'Nintendo', 366, '16E', 1, '', 0, 'https://wiki.tockdom.com/wiki/DS_Peach_Gardens', '', '', 0, '029', 'dPG', 'dPG'),
(332, 'Peach Gardens', 346, 'DS', 'v1.0', 'Nintendo', 367, '16F', 2, '16E', 0, 'https://wiki.tockdom.com/wiki/DS_Peach_Gardens', '', '', 0, '029_1', 'dPG', 'dPG'),
(333, 'Gloomy Garden', 347, 'DS', 'v1.0', 'GranthamMKW', 368, '170', 2, '16E', 0, 'https://wiki.tockdom.com/wiki/Gloomy_Garden_(DS_Peach_Gardens_Texture)', '', '', 0, '029_3', 'dPG', 'dPG'),
(334, 'Sakura Garden', 348, 'DS', 'v1.5.hotfix', 'MrLGamer', 369, '171', 2, '16E', 0, 'https://wiki.tockdom.com/wiki/Sakura_Garden_(DS_Peach_Gardens_Texture)', '', '', 0, '029_4', 'dPG', 'dPG'),
(335, 'The Star Festival', 349, 'DS', 'v1.1-hotfix', 'DarkyBenji', 370, '172', 2, '16E', 2, 'https://wiki.tockdom.com/wiki/The_Star_Festival_(DS_Peach_Gardens_Texture)', '', '', 0, '029_5', 'dPG', 'dPG'),
(336, 'Peach Gardens R', 350, 'DS', 'v1.0', 'Zachruff', 371, '173', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Peach_Gardens_R_(DS_Peach_Gardens_Edit)_(Zachruff)', '', '', 0, '029_2', 'dPG', 'dPG'),
(337, 'Peach Gardens', 351, 'DS', 'v1.0', 'Bruh de la Boi & TheGamingBram', 372, '174', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Peach_Gardens_(Bruh_de_la_Boi_%26_TheGamingBram)', '', '', 0, '1115_1', 'dPG', 'dPG'),
(338, 'Peach Gardens R', 352, 'DS', 'v1.1', 'Bruh de la Boi & TheGamingBram', 373, '175', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Peach_Gardens_R_(DS_Peach_Gardens_Edit)_(Bruh_de_la_Boi_%26_TheGamingBram)', '', '', 0, '1115_2', 'dPG', 'dPG'),
(339, 'Rainbow Road', 353, 'DS', 'Beta5.mkd', 'maczkopeti', 374, '176', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Rainbow_Road_(maczkopeti)', '', '', 0, '202', 'RR', 'RR'),
(340, 'Rainbow Road', 354, 'DS', 'v1.4', 'ZPL', 375, '177', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Rainbow_Road_(ZPL)', '', '', 0, '800', 'RR', 'RR'),
(341, 'Shroom Ridge', 355, 'DS', 'v1.1', 'Sniki', 376, '178', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Shroom_Ridge_(Sniki)', '', '', 0, '335', 'MH', 'MH'),
(342, 'Shroom Ridge', 356, 'DS', 'v1.0', 'SquireTurnbolt', 377, '179', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Shroom_Ridge_(SquireTurnbolt)', '', '', 0, '871', 'MH', 'MH'),
(343, 'Shroom Ridge', 357, 'DS', 'v1.1.i.ctt', 'SuperMario64DS', 378, '17A', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Shroom_Ridge_(SuperMario64DS)', '', '', 0, '081', 'MH', 'MH'),
(344, 'Shroom Ridge', 358, 'DS', 'v1.0', 'ZPL', 379, '17B', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Shroom_Ridge_(ZPL)', '', '', 0, '841', 'MC', 'MC'),
(345, 'Tick-Tock Clock', 359, 'DS', 'v1.1', 'Tock', 380, '17C', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Tick-Tock_Clock_(Tock)', '', '', 0, '512', 'TF', 'TF'),
(346, 'Tick-Tock Clock', 360, 'DS', 'v1.0', 'ZPL', 381, '17D', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Tick-Tock_Clock_(ZPL)', '', '', 0, '809', 'TF', 'TF'),
(347, 'Waluigi Pinball', 361, 'DS', 'v1.2', 'Sniki', 382, '17E', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Waluigi_Pinball_(Sniki)', '', '', 0, '562', 'dDS', 'gWS'),
(348, 'Waluigi Pinball', 363, 'DS', 'v1.0', 'ZPL', 383, '17F', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Waluigi_Pinball_(ZPL)', '', '', 0, '1008', 'dDS', 'gWS'),
(349, 'Wario Stadium', 364, 'DS', 'v1.2', 'Numerosity', 384, '180', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Wario_Stadium_(Numerosity)', '', '', 0, '899', 'dDS', 'gWS'),
(350, 'Wario Stadium', 365, 'DS', 'v1.1a', 'Skipper93653', 385, '181', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Wario_Stadium_(Skipper93653)', '', '', 0, '420', 'dDS', 'gWS'),
(351, 'Wario Stadium', 366, 'DS', 'v1.02', 'ZPL', 386, '182', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Wario_Stadium_(ZPL)', '', '', 0, '742', 'dDS', 'gWS'),
(352, 'Yoshi Falls', 367, 'DS', 'X', 'Nintendo', 387, '183', 1, '', 0, 'https://wiki.tockdom.com/wiki/DS_Yoshi_Falls', '', '', 0, '005', 'dYF', 'dYF'),
(353, 'Yoshi Falls', 368, 'DS', 'v1.0', 'Nintendo', 388, '184', 2, '183', 0, 'https://wiki.tockdom.com/wiki/DS_Yoshi_Falls', '', '', 0, '005_1', 'dYF', 'dYF'),
(354, 'Divine Falls', 369, 'DS', 'v1.0', 'ZPL', 389, '185', 2, '183', 0, 'https://wiki.tockdom.com/wiki/Divine_Falls_(DS_Yoshi_Falls_Texture)', '', '', 0, '005_3', 'dYF', 'dYF'),
(355, 'Lush Lagoon', 370, 'DS', 'v1.0', 'Jasperr', 390, '186', 2, '183', 0, 'https://wiki.tockdom.com/wiki/Lush_Lagoon_(DS_Yoshi_Falls_Texture)', '', '', 0, '005_4', 'dYF', 'dYF'),
(356, 'Snowy Falls', 371, 'DS', 'v1.0.Night', 'xMeap826', 391, '187', 2, '183', 0, 'https://wiki.tockdom.com/wiki/DS_Snowy_Falls_(DS_Yoshi_Falls_Texture)', '', '', 0, '005_5', 'dYF', 'dYF'),
(357, 'Yoshi Falls R', 372, 'DS', 'v1.1', 'ZPL', 392, '188', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Yoshi_Falls_R_(DS_Yoshi_Falls_Edit)_(ZPL)', '', '', 0, '005_2', 'dYF', 'dYF'),
(358, 'Dokan Course', 373, 'DS Beta', 'v1.0', 'Keiichi1996', 393, '189', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Dokan_Course_(Keiichi1996)', '', '', 0, '173', 'sMC3', 'MC'),
(359, 'Nokonoko Beach', 374, 'DS Beta', 'v2.2', 'Ermelber, Yoshidude4, Turbo Yoshi', 394, '18A', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Nokonoko_Beach_(Ermelber,_Yoshidude4_%26_Turbo_Yoshi)', '', '', 0, '094', 'gSGB', 'gSGB'),
(360, 'Test Circle', 375, 'DS Beta', 'v1.0', 'Bruh de la Boi', 395, '18B', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Test_Circle_(Bruh_de_la_Boi)', '', '', 0, '735_1', 'sMC3', 'sMC3'),
(361, 'Test Circle R', 376, 'DS Beta', 'v1.0', 'Bruh de la Boi', 396, '18C', 0, '', 0, 'https://wiki.tockdom.com/wiki/DS_Test_Circle_R_(DS_Test_Circle_Edit)', '', '', 0, '735_2', 'sMC3', 'sMC3'),
(362, 'Bowser\'s Castle', 377, 'Wii', 'X', 'Nintendo', 397, '18D', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Bowser%27s_Castle', '', '', 0, '026', 'BC', 'BC'),
(363, 'Bowser\'s Castle', 378, 'Wii', 'v1.0', 'Nintendo', 398, '18E', 2, '18D', 0, 'https://wiki.tockdom.com/wiki/Wii_Bowser%27s_Castle', '', '', 0, '026_1', 'BC', 'BC'),
(364, 'Bowser\'s Galaxy Generator', 379, 'Wii', 'v1.0', 'DarkyBenji', 399, '18F', 2, '18D', 0, 'https://wiki.tockdom.com/wiki/Bowser%27s_Galaxy_Generator_(Bowser%27s_Castle_Texture)', '', '', 0, '026_3', 'BC', 'BC'),
(365, 'Hyrule Castle', 380, 'Wii', 'v1.1.alt', 'JorisMKW', 400, '190', 2, '18D', 0, 'https://wiki.tockdom.com/wiki/Hyrule_Castle_(Bowser%27s_Castle_Texture)', '', '', 0, '026_4', 'BC', 'BC'),
(366, 'Moon Fortress', 381, 'Wii', 'v1.7', 'GranthamMKW', 401, '191', 2, '18D', 0, 'https://wiki.tockdom.com/wiki/Moon_Fortress_(Bowser%27s_Castle_Texture)', '', '', 0, '026_5', 'BC', 'BC'),
(367, 'Bowser\'s Castle R', 382, 'Wii', 'v1.2', 'ZPL', 402, '192', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bowser%27s_Castle_R_(Bowser%27s_Castle_Edit)_(ZPL)', '', '', 0, '026_2', 'BC', 'BC'),
(368, 'Coconut Mall', 383, 'Wii', 'X', 'Nintendo', 403, '193', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Coconut_Mall', '', '', 0, '009', 'CM', 'CM'),
(369, 'Coconut Mall', 384, 'Wii', 'v1.0', 'Nintendo', 404, '194', 2, '193', 0, 'https://wiki.tockdom.com/wiki/Wii_Coconut_Mall', '', '', 0, '009_1', 'CM', 'CM'),
(370, 'Lunar Mall', 385, 'Wii', 'v1.0', 'Cats4Life', 405, '195', 2, '193', 0, 'https://wiki.tockdom.com/wiki/Lunar_Mall_(Coconut_Mall_Texture)', '', '', 0, '009_3', 'CM', 'CM'),
(371, 'MK8DX Coconut Mall', 386, 'Wii', 'v1.0', 'LTC 91', 406, '196', 2, '193', 0, 'https://wiki.tockdom.com/wiki/Modernized_Mall_(Coconut_Mall_Texture)', '', '', 0, '009_4', 'CM', 'CM'),
(372, 'Winter Mall', 387, 'Wii', 'v1.0.Night', 'xMeap826', 407, '197', 2, '193', 0, 'https://wiki.tockdom.com/wiki/Winter_Mall_(Coconut_Mall_Texture)', '', '', 0, '009_5', 'CM', 'CM'),
(373, 'Coconut Mall R', 388, 'Wii', 'v1.0', 'MysterE99', 408, '198', 0, '', 0, 'https://wiki.tockdom.com/wiki/Coconut_Mall_R_(Coconut_Mall_Edit)_(MysterE99)', '', '', 0, '009_2', 'CM', 'CM'),
(374, 'Daisy Circuit', 389, 'Wii', 'X', 'Nintendo', 409, '199', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Daisy_Circuit', '', '', 0, '016', 'DC', 'DC'),
(375, 'Daisy Circuit', 390, 'Wii', 'v1.0', 'Nintendo', 410, '19A', 2, '199', 0, 'https://wiki.tockdom.com/wiki/Wii_Daisy_Circuit', '', '', 0, '016_1', 'DC', 'DC'),
(376, 'Luma Garden', 391, 'Wii', 'v1.0-hotfix', 'Cats4Life', 411, '19B', 2, '199', 0, 'https://wiki.tockdom.com/wiki/Luma_Garden_(Daisy_Circuit_Texture)', '', '', 0, '016_3', 'DC', 'DC'),
(377, 'Luxury Circuit', 392, 'Wii', 'v1.0.bg.Nig', 'xMeap826', 412, '19C', 2, '199', 0, 'https://wiki.tockdom.com/wiki/Luxury_Circuit_(Daisy_Circuit_Texture)', '', '', 0, '016_4', 'DC', 'DC'),
(378, 'Tour Daisy Circuit', 393, 'Wii', 'v1.0', 'LTC 91', 413, '19D', 2, '199', 0, 'https://wiki.tockdom.com/wiki/Tour_Daisy_Circuit_(Daisy_Circuit_Texture)', '', '', 0, '016_5', 'DC', 'DC'),
(379, 'Daisy Circuit R', 394, 'Wii', 'v1.1', 'ZPL', 414, '19E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Daisy_Circuit_R_(Daisy_Circuit_Edit)_(ZPL)', '', '', 0, '016_2', 'DC', 'DC'),
(380, 'DK Summit', 395, 'Wii', 'X', 'Nintendo', 415, '19F', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_DK_Summit', '', '', 0, '010', 'DKS', 'DKS'),
(381, 'DK Summit', 396, 'Wii', 'v1.0', 'Nintendo', 416, '1A0', 2, '19F', 0, 'https://wiki.tockdom.com/wiki/Wii_DK_Summit', '', '', 0, '010_1', 'DKS', 'DKS'),
(382, 'Frozen Peak', 397, 'Wii', 'v1.0', 'ZPL', 417, '1A1', 2, '19F', 0, 'https://wiki.tockdom.com/wiki/Frozen_Peak_(DK_Summit_Texture)', '', '', 0, '010_3', 'DKS', 'DKS'),
(383, 'Night DK Summit', 398, 'Wii', 'v1.0', 'xMeap826', 418, '1A2', 2, '19F', 0, 'https://wiki.tockdom.com/wiki/Night_DK_Summit_(DK_Summit_Texture)', '', '', 0, '010_4', 'DKS', 'DKS'),
(384, 'Sweet Mountain', 399, 'Wii', 'v2.0', 'DarkyBenji', 419, '1A3', 2, '19F', 0, 'https://wiki.tockdom.com/wiki/Sweet_Mountain_(DK_Summit_Texture)', '', '', 0, '010_5', 'DKS', 'DKS'),
(385, 'DK Summit R', 400, 'Wii', 'v1.1', 'MysterE99', 420, '1A4', 0, '', 0, 'https://wiki.tockdom.com/wiki/DK_Summit_R_(DK_Summit_Edit)_(MysterE99)', '', '', 0, '010_2', 'DKS', 'DKS'),
(386, 'DK Summit', 401, 'Wii', 'v1.0', 'SquireTurnbolt', 421, '1A5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_DK_Summit_(SquireTurnbolt)', '', '', 0, '860', 'DKS', 'DKS'),
(387, 'Dry Dry Ruins', 402, 'Wii', 'X', 'Nintendo', 422, '1A6', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Dry_Dry_Ruins', '', '', 0, '024', 'DDR', 'DDR'),
(388, 'Dry Dry Ruins', 403, 'Wii', 'v1.0', 'Nintendo', 423, '1A7', 2, '1A6', 0, 'https://wiki.tockdom.com/wiki/Wii_Dry_Dry_Ruins', '', '', 0, '024_1', 'DDR', 'DDR'),
(389, 'Castle of Time', 404, 'Wii', 'v1.0', 'DarkyBenji', 424, '1A8', 2, '1A6', 0, 'https://wiki.tockdom.com/wiki/Castle_of_Time_(Dry_Dry_Ruins_Texture)', '', '', 0, '024_3', 'DDR', 'DDR'),
(390, 'Grassy Ruins', 405, 'Wii', 'v1.2.rain', 'xMeap826', 425, '1A9', 2, '1A6', 0, 'https://wiki.tockdom.com/wiki/Grassy_Ruins_(Dry_Dry_Ruins_Texture)', '', '', 0, '024_4', 'DDR', 'DDR'),
(391, 'Snowy Ruins', 406, 'Wii', 'v1.2.fix.fo', 'xMeap826', 426, '1AA', 2, '1A6', 0, 'https://wiki.tockdom.com/wiki/Snowy_Ruins_(Dry_Dry_Ruins_Texture)', '', '', 0, '024_5', 'DDR', 'DDR'),
(392, 'Dry Dry Ruins R', 407, 'Wii', 'v1.1', 'ZPL', 427, '1AB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dry_Dry_Ruins_R_(Dry_Dry_Ruins_Edit)_(ZPL)', '', '', 0, '024_2', 'DDR', 'DDR'),
(393, 'Grumble Volcano', 408, 'Wii', 'X', 'Nintendo', 428, '1AC', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Grumble_Volcano', '', '', 0, '019', 'GV', 'GV'),
(394, 'Grumble Volcano', 409, 'Wii', 'v1.0', 'Nintendo', 429, '1AD', 2, '1AC', 0, 'https://wiki.tockdom.com/wiki/Wii_Grumble_Volcano', '', '', 0, '019_1', 'GV', 'GV'),
(395, 'Crumbling Crater', 410, 'Wii', 'v1.0', 'Darkmario957', 430, '1AE', 2, '1AC', 0, 'https://wiki.tockdom.com/wiki/Crumbling_Crater_(Grumble_Volcano_Texture)', '', '', 0, '019_3', 'GV', 'GV'),
(396, 'Grassland Resort', 411, 'Wii', 'v1.0.mkd', 'JorisMKW', 431, '1AF', 2, '1AC', 0, 'https://wiki.tockdom.com/wiki/Grassland_Resort_(Grumble_Volcano_Texture)', '', '', 0, '019_4', 'GV', 'GV'),
(397, 'Grumble Volcano HD', 412, 'Wii', 'v1.0', 'Cats4Life', 432, '1B0', 2, '1AC', 0, 'https://wiki.tockdom.com/wiki/Grumble_Volcano_HD_(Grumble_Volcano_Texture)_(Cats4Life)', '', '', 0, '019_5', 'GV', 'GV'),
(398, 'Grumble Volcano R', 413, 'Wii', 'v1.2', 'Zachruff, ZPL', 433, '1B1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Grumble_Volcano_R_(Grumble_Volcano_Edit)_(Zachruff_%26_ZPL)', '', '', 0, '019_2', 'GV', 'GV'),
(399, 'Koopa Cape', 414, 'Wii', 'X', 'Nintendo', 434, '1B2', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Koopa_Cape', '', '', 0, '017', 'KC', 'KC'),
(400, 'Koopa Cape', 415, 'Wii', 'v1.0', 'Nintendo', 435, '1B3', 2, '1B2', 0, 'https://wiki.tockdom.com/wiki/Wii_Koopa_Cape', '', '', 0, '017_1', 'KC', 'KC'),
(401, 'Cheep Cheep Cape', 416, 'Wii', 'v1.0', 'ZPL', 436, '1B4', 2, '1B2', 0, 'https://wiki.tockdom.com/wiki/Cheep_Cheep_Cape_(Koopa_Cape_Texture)', '', '', 0, '017_3', 'KC', 'KC'),
(402, 'Forgotten Cape', 417, 'Wii', 'v1.0', 'PurpleYoshiFanSpence1998', 437, '1B5', 2, '1B2', 0, 'https://wiki.tockdom.com/wiki/Forgotten_Cape_(Koopa_Cape_Texture)', '', '', 0, '017_4', 'KC', 'KC'),
(403, 'Snowy Cape', 418, 'Wii', 'v1.0.Night', 'xMeap826', 438, '1B6', 2, '1B2', 0, 'https://wiki.tockdom.com/wiki/Snowy_Cape_(Koopa_Cape_Texture)', '', '', 0, '017_5', 'KC', 'KC'),
(404, 'Koopa Cape R', 419, 'Wii', 'v1.1', 'ZPL', 439, '1B7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Koopa_Cape_R_(Koopa_Cape_Edit)_(ZPL)', '', '', 0, '017_2', 'KC', 'KC'),
(405, 'Luigi Circuit', 420, 'Wii', 'X', 'Nintendo', 440, '1B8', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Luigi_Circuit', '', '', 0, '000', 'LC', 'LC'),
(406, 'Luigi Circuit', 421, 'Wii', 'v1,0', 'Nintendo', 441, '1B9', 2, '1B8', 0, 'https://wiki.tockdom.com/wiki/Wii_Luigi_Circuit', '', '', 0, '000_1', 'LC', 'LC'),
(407, 'Luigi Circuit HD', 422, 'Wii', 'v2.1.sunset', 'Cats4Life', 442, '1BA', 2, '1B8', 0, 'https://wiki.tockdom.com/wiki/Luigi_Circuit_HD_(Luigi_Circuit_Texture)_(Cats4Life)', '', '', 0, '000_3', 'LC', 'LC'),
(408, 'Neon Circuit', 423, 'Wii', 'v1.0', 'xMeap826', 443, '1BB', 2, '1B8', 0, 'https://wiki.tockdom.com/wiki/Neon_Circuit_(Luigi_Circuit_Texture)', '', '', 0, '000_4', 'LC', 'LC'),
(409, 'Snowy Luigi Circuit', 424, 'Wii', 'v1.0.Night', 'xMeap826', 444, '1BC', 2, '1B8', 0, 'https://wiki.tockdom.com/wiki/Snowy_Luigi_Circuit_(Luigi_Circuit_Texture)', '', '', 0, '000_5', 'LC', 'LC'),
(410, 'Luigi Circuit R', 425, 'Wii', 'v1.1', 'ZPL', 445, '1BD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luigi_Circuit_R_(Luigi_Circuit_Edit)_(ZPL)', '', '', 0, '000_2', 'LC', 'LC'),
(411, 'Maple Treeway', 426, 'Wii', 'X', 'Nintendo', 446, '1BE', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Maple_Treeway', '', '', 0, '018', 'MT', 'MT'),
(412, 'Maple Treeway', 427, 'Wii', 'v1.0', 'Nintendo', 447, '1BF', 2, '1BE', 0, 'https://wiki.tockdom.com/wiki/Wii_Maple_Treeway', '', '', 0, '018_1', 'MT', 'MT'),
(413, 'Cherry Blossom Treeway', 428, 'Wii', 'v1.0', 'Metaljaripower', 448, '1C0', 2, '1BE', 0, 'https://wiki.tockdom.com/wiki/Cherry_Blossom_Treeway_(Maple_Treeway_Texture)_(Metaljaripower)', '', '', 0, '018_3', 'MT', 'MT'),
(414, 'Tour Maple Treeway', 429, 'Wii', 'v1.0', 'LTC 91', 449, '1C1', 2, '1BE', 0, 'https://wiki.tockdom.com/wiki/Tour_Maple_Treeway_(Maple_Treeway_Texture)', '', '', 0, '018_4', 'MT', 'MT'),
(415, 'Snowy Treeway', 430, 'Wii', 'v1.0-hotfix', 'xMeap826', 450, '1C2', 2, '1BE', 0, 'https://wiki.tockdom.com/wiki/Snowy_Treeway_(Maple_Treeway_Texture)', '', '', 0, '018_5', 'MT', 'MT'),
(416, 'Maple Treeway R', 431, 'Wii', 'v1.1', 'Sniki, Zachruff', 451, '1C3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Maple_Treeway_R_(Maple_Treeway_Edit)_(Sniki_%26_Zachruff)', '', '', 0, '018_2', 'MT', 'MT'),
(417, 'Mario Circuit', 432, 'Wii', 'X', 'Nintendo', 452, '1C4', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Mario_Circuit', '', '', 0, '008', 'MC', 'MC'),
(418, 'Mario Circuit', 433, 'Wii', 'v1.0', 'Nintendo', 453, '1C5', 2, '1C4', 0, 'https://wiki.tockdom.com/wiki/Wii_Mario_Circuit', '', '', 0, '008_1', 'MC', 'MC'),
(419, 'U Mario Circuit', 434, 'Wii', 'v1.0', 'TheGamingBram', 454, '1C6', 2, '1C4', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Mario_Circuit_(Mario_Circuit_Texture)', '', '', 0, '008_4', 'MC', 'MC'),
(420, 'Skyline Mario Circuit', 435, 'Wii', 'v1.0.mkd', 'ZPL', 455, '1C7', 2, '1C4', 0, 'https://wiki.tockdom.com/wiki/Skyline_Mario_Circuit_(Mario_Circuit_Texture)', '', '', 0, '008_5', 'MC', 'MC'),
(421, 'Snowy Mario Circuit', 436, 'Wii', 'v1.0-hotfix', 'xMeap826', 456, '1C8', 2, '1C4', 0, 'https://wiki.tockdom.com/wiki/Snowy_Mario_Circuit_(Mario_Circuit_Texture)', '', '', 0, '008_6', 'MC', 'MC'),
(422, 'Mario Circuit R', 437, 'Wii', 'v1.2', 'Krummers', 457, '1C9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mario_Circuit_R_(Mario_Circuit_Edit)_(Krummers)', '', '', 0, '008_2', 'MC', 'MC'),
(423, 'Mario Circuit R/T', 438, 'Wii', 'v1.0', 'Bruh de la Boi', 458, '1CA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mario_Circuit_R/T_(Mario_Circuit_Edit)', '', '', 0, '008_3', 'MC', 'MC'),
(424, 'Moo Moo Meadows', 439, 'Wii', 'X', 'Nintendo', 459, '1CB', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Moo_Moo_Meadows', '', '', 0, '001', 'MMM', 'MMM'),
(425, 'Moo Moo Meadows', 440, 'Wii', 'V1.0', 'Nintendo', 460, '1CC', 2, '1CB', 0, 'https://wiki.tockdom.com/wiki/Wii_Moo_Moo_Meadows', '', '', 0, '001_1', 'MMM', 'MMM'),
(426, 'Moo Moo Meadows (MK8 Retexture)', 441, 'Wii', 'v1.0.mkd', 'Mr. Brian', 461, '1CD', 2, '1CB', 0, 'https://wiki.tockdom.com/wiki/Moo_Moo_Meadows_(MK8_Retexture)_(Moo_Moo_Meadows_Texture)', '', '', 0, '001_3', 'MMM', 'MMM'),
(427, 'Moo Moo Meadows at Night', 442, 'Wii', 'v1.1.mkd', 'Lorenzo', 462, '1CE', 2, '1CB', 0, 'https://wiki.tockdom.com/wiki/Moo_Moo_Meadows_at_Night_(Moo_Moo_Meadows_Texture)', '', '', 0, '001_4', 'MMM', 'MMM'),
(428, 'Snowy Meadows', 443, 'Wii', 'v1.0.Night', 'xMeap826', 463, '1CF', 2, '1CB', 0, 'https://wiki.tockdom.com/wiki/Snowy_Meadows_(Moo_Moo_Meadows_Texture)', '', '', 0, '001_5', 'MMM', 'MMM'),
(429, 'Moo Moo Meadows R', 444, 'Wii', 'v1.1', 'ZPL', 464, '1D0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Moo_Moo_Meadows_R_(Moo_Moo_Meadows_Edit)_(ZPL)', '', '', 0, '001_2', 'MMM', 'MMM'),
(430, 'Moonview Highway', 445, 'Wii', 'X', 'Nintendo', 465, '1D1', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Moonview_Highway', '', '', 0, '025', 'MH', 'MH'),
(431, 'Moonview Highway', 446, 'Wii', 'v1.0', 'Nintendo', 466, '1D2', 2, '1D1', 0, 'https://wiki.tockdom.com/wiki/Wii_Moonview_Highway', '', '', 0, '025_1', 'MH', 'MH'),
(432, 'Tour Moonview Highway', 447, 'Wii', 'v1.0', 'LTC 91', 467, '1D3', 2, '1D1', 0, 'https://wiki.tockdom.com/wiki/Tour_Moonview_Highway_(Moonview_Highway_Texture)', '', '', 0, '025_3', 'MH', 'MH'),
(433, 'Snowy Highway', 448, 'Wii', 'v1.0.Night', 'xMeap826', 468, '1D4', 2, '1D1', 0, 'https://wiki.tockdom.com/wiki/Snowy_Highway_(Moonview_Highway_Texture)', '', '', 0, '025_4', 'MH', 'MH'),
(434, 'Storm City', 449, 'Wii', 'v3.0', 'GranthamMKW', 469, '1D5', 2, '1D1', 0, 'https://wiki.tockdom.com/wiki/Storm_City_(Moonview_Highway_Texture)', '', '', 0, '025_5', 'MH', 'MH'),
(435, 'Moonview Highway R', 450, 'Wii', 'v1.2', 'Bri', 470, '1D6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Moonview_Highway_R_(Moonview_Highway_Edit)_(Bri)', '', '', 0, '025_2', 'MH', 'MH'),
(436, 'Mushroom Gorge', 451, 'Wii', 'X', 'Nintendo', 471, '1D7', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Mushroom_Gorge', '', '', 0, '002', 'MG', 'MG'),
(437, 'Mushroom Gorge', 452, 'Wii', 'v1.0', 'Nintendo', 472, '1D8', 2, '1D7', 0, 'https://wiki.tockdom.com/wiki/Wii_Mushroom_Gorge', '', '', 0, '002_1', 'MG', 'MG'),
(438, 'MK8DX Mushroom Gorge', 453, 'Wii', 'v1.0', 'LTC 91', 473, '1D9', 2, '1D7', 0, 'https://wiki.tockdom.com/wiki/MK8DX_Mushroom_Gorge_(Mushroom_Gorge_Texture)', '', '', 0, '002_3', 'MG', 'MG'),
(439, 'Sky Mushroom Beach', 454, 'Wii', 'v1.01', 'Dxrk', 474, '1DA', 2, '1D7', 0, 'https://wiki.tockdom.com/wiki/Sky_Mushroom_Beach_(Mushroom_Gorge_Texture)', '', '', 0, '002_4', 'MG', 'MG'),
(440, 'Snowy Gorge', 455, 'Wii', 'v1.3.Northe', 'xMeap826', 475, '1DB', 2, '1D7', 0, 'https://wiki.tockdom.com/wiki/Snowy_Gorge_(Mushroom_Gorge_Texture)_(xMeap826)', '', '', 0, '002_5', 'MG', 'MG'),
(441, 'Mushroom Gorge R', 456, 'Wii', 'v1.2', 'Zachruff, ZPL', 476, '1DC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Gorge_R_(Mushroom_Gorge_Edit)_(Zachruff_%26_ZPL)', '', '', 0, '002_2', 'MG', 'MG'),
(442, 'Rainbow Road', 457, 'Wii', 'X', 'Nintendo', 477, '1DD', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Rainbow_Road', '', '', 0, '027', 'RR', 'RR'),
(443, 'Rainbow Road', 458, 'Wii', 'v1.0', 'Nintendo', 478, '1DE', 2, '1DD', 0, 'https://wiki.tockdom.com/wiki/Wii_Rainbow_Road', '', '', 0, '027_1', 'RR', 'RR'),
(444, 'Galaxy Road in the Toy Time Galaxy', 459, 'Wii', 'v1.0', 'Thed0ra7z', 479, '1DF', 2, '1DD', 0, 'https://wiki.tockdom.com/wiki/Galaxy_Road_in_the_Toy_Time_Galaxy_(Rainbow_Road_Texture)', '', '', 0, '027_3', 'RR', 'RR'),
(445, 'Metaljaripower Road', 460, 'Wii', 'v3.0', 'Metaljaripower', 480, '1E0', 2, '1DD', 0, 'https://wiki.tockdom.com/wiki/Metaljaripower_Road_(Rainbow_Road_Texture)', '', '', 0, '027_4', 'RR', 'RR'),
(446, 'Tour Style Rainbow Road', 461, 'Wii', 'v2.5.1', 'LTC 91', 481, '1E1', 2, '1DD', 2, 'https://wiki.tockdom.com/wiki/Tour_Style_Rainbow_Road_(Rainbow_Road_Texture)', '', '', 0, '027_5', 'RR', 'RR'),
(447, 'Rainbow Road R', 462, 'Wii', 'v1.2', 'ZPL', 482, '1E2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rainbow_Road_R_(Rainbow_Road_Edit)_(ZPL)', '', '', 0, '027_2', 'RR', 'RR'),
(448, 'Toad\'s Factory', 463, 'Wii', 'X', 'Nintendo', 483, '1E3', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Toad%27s_Factory', '', '', 0, '003', 'TF', 'TF'),
(449, 'Toad\'s Factory', 464, 'Wii', 'v1.0', 'Nintendo', 484, '1E4', 2, '1E3', 0, 'https://wiki.tockdom.com/wiki/Wii_Toad%27s_Factory', '', '', 0, '003_1', 'TF', 'TF'),
(450, 'Intergalactic Station', 465, 'Wii', 'v1.0', 'Jasperr', 485, '1E5', 2, '1E3', 0, 'https://wiki.tockdom.com/wiki/Intergalactic_Station_(Toad%27s_Factory_Texture)', '', '', 0, '003_3', 'TF', 'TF'),
(451, 'Luxury Factory', 466, 'Wii', 'v1.0.Pollut', 'xMeap826', 486, '1E6', 2, '1E3', 0, 'https://wiki.tockdom.com/wiki/Luxury_Factory_(Toad%27s_Factory_Texture)', '', '', 0, '003_4', 'TF', 'TF'),
(452, 'Winter Factory', 467, 'Wii', 'v1.0.Night', 'xMeap826', 487, '1E7', 2, '1E3', 0, 'https://wiki.tockdom.com/wiki/Winter_Factory_(Toad%27s_Factory_Texture)', '', '', 0, '003_5', 'TF', 'TF'),
(453, 'Toad\'s Factory R', 468, 'Wii', 'v1.2', 'Zachruff, ZPL', 488, '1E8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toad%27s_Factory_R_(Toad%27s_Factory_Edit)_(Zachruff_%26_ZPL)', '', '', 0, '003_2', 'TF', 'TF'),
(454, 'Wario\'s Gold Mine', 469, 'Wii', 'X', 'Nintendo', 489, '1E9', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Wario%27s_Gold_Mine', '', '', 0, '011', 'WGM', 'WGM'),
(455, 'Wario\'s Gold Mine', 470, 'Wii', 'v1.0', 'Nintendo', 490, '1EA', 2, '1E9', 0, 'https://wiki.tockdom.com/wiki/Wii_Wario%27s_Gold_Mine', '', '', 0, '011_1', 'WGM', 'WGM'),
(456, 'Neon Mine World', 471, 'Wii', 'v1.1', 'Dxrk', 491, '1EB', 2, '1E9', 0, 'https://wiki.tockdom.com/wiki/Neon_Mine_World_(Wario%27s_Gold_Mine_Texture)', '', '', 0, '011_3', 'WGM', 'WGM'),
(457, 'Wario\'s Woodland Mine', 472, 'Wii', 'v1.1.rain', 'xMeap826', 492, '1EC', 2, '1E9', 0, 'https://wiki.tockdom.com/wiki/Wario%27s_Woodland_Mine_(Wario%27s_Gold_Mine_Texture)', '', '', 0, '011_4', 'WGM', 'WGM'),
(458, 'Winter Gold Mine', 473, 'Wii', 'v1.0-hotfix', 'xMeap826', 493, '1ED', 2, '1E9', 0, 'https://wiki.tockdom.com/wiki/Winter_Gold_Mine_(Wario%27s_Gold_Mine_Texture)', '', '', 0, '011_5', 'WGM', 'WGM'),
(459, 'Wario\'s Gold Mine R', 474, 'Wii', 'v1.1', 'Bruh de la Boi', 494, '1EE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wario%27s_Gold_Mine_R_(Wario%27s_Gold_Mine_Edit)_(Bruh_de_la_Boi)', '', '', 0, '011_2', 'WGM', 'WGM'),
(460, 'Bowser\'s Castle', 475, '3DS', 'v1.1c', 'Wexos, Atlas', 495, '1EF', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Bowser%27s_Castle_(Wexos_%26_Atlas)', '', '', 0, '267', 'BC', 'BC'),
(461, 'Bowser\'s Castle', 476, '3DS', 'v1.2.4', 'ZPL', 496, '1F0', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Bowser%27s_Castle_(ZPL)', '', '', 0, '932', 'BC', 'BC'),
(462, 'Cheep Cheep Lagoon', 477, '3DS', 'v1.1', 'Tock', 497, '1F1', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Cheep_Cheep_Lagoon_(Tock)', '', '', 0, '656', 'KC', 'KC'),
(463, 'Cheep Cheep Lagoon', 478, '3DS', 'v2.1', 'ZPL', 498, '1F2', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Cheep_Cheep_Lagoon_(ZPL)', '', '', 0, '486', 'KC', 'KC'),
(464, 'Daisy Hills', 479, '3DS', 'v1.7h', 'Atlas', 499, '1F3', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Daisy_Hills_(Atlas)', '', '', 0, '235', 'MMM', 'MMM'),
(465, 'Daisy Hills', 480, '3DS', 'X', 'ZPL', 500, '1F4', 1, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Daisy_Hills_(ZPL)', '', '', 0, '976', 'MMM', 'MMM'),
(466, 'Daisy Hills', 481, '3DS', 'v1.1', 'ZPL', 501, '1F5', 2, '1F4', 0, 'https://wiki.tockdom.com/wiki/3DS_Daisy_Hills_(ZPL)', '', '', 0, '976_1', 'MMM', 'MMM'),
(467, 'Daisy Hills', 482, '3DS', 'v1.1 (Night', 'ZPL', 502, '1F6', 2, '1F4', 0, 'https://wiki.tockdom.com/wiki/3DS_Daisy_Hills_(ZPL)', '', '', 0, '976_2', 'MMM', 'MMM'),
(468, 'DK Jungle', 483, '3DS', 'v1.1', 'Skipper93653', 503, '1F7', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_DK_Jungle_(Skipper93653)', '', '', 0, '475', 'nDKJP', 'nDKJP'),
(469, 'DK Jungle', 484, '3DS', 'v2.12', 'ZPL', 504, '1F8', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_DK_Jungle_(ZPL)', '', '', 0, '422', 'nDKJP', 'nDKJP'),
(470, 'Maka Wuhu', 485, '3DS', 'Beta 3.1', 'FunkyDude15, Wexos', 505, '1F9', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Maka_Wuhu_(FunkyDude15_%26_Wexos)', '', '', 0, '238', 'dDH', 'dDH'),
(471, 'Mario Circuit', 486, '3DS', 'v1.11', 'ZPL, Bri', 506, '1FA', 0, '', 2, 'https://wiki.tockdom.com/wiki/3DS_Mario_Circuit_(ZPL_%26_Bri)', '', '', 0, '668', 'MC', 'MC'),
(472, 'Music Park', 487, '3DS', 'v2.1.le', 'Atlas', 507, '1FB', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Music_Park_(Atlas)', '', '', 0, '204', 'RR', 'RR'),
(473, 'Neo Bowser City', 488, '3DS', 'v2.1.mkd2', 'Atlas', 508, '1FC', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Neo_Bowser_City_(Atlas)', '', '', 0, '169', 'MC', 'MH'),
(474, 'Neo Bowser City', 489, '3DS', 'v1.0', 'ZPL', 509, '1FD', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Neo_Bowser_City_(ZPL)', '', '', 0, '729', 'MC', 'MC'),
(475, 'Piranha Plant Slide', 490, '3DS', 'v1.3', 'Atlas', 510, '1FE', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Piranha_Plant_Slide_(Atlas)', '', '', 0, '319', 'KC', 'KC'),
(476, 'Rainbow Road', 491, '3DS', 'v1.0+', 'BigOto2', 511, '1FF', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Rainbow_Road_(BigOto2)', '', '', 0, '122', 'RR', 'RR'),
(477, 'Rainbow Road', 492, '3DS', 'v1.41.alt', 'Bladestorm227', 512, '200', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Rainbow_Road_(Bladestorm227)', '', '', 0, '377', 'RR', 'RR'),
(478, 'Rainbow Road', 493, '3DS', 'v1.0', 'Cats4Life', 513, '201', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Rainbow_Road_(Cats4Life)', '', '', 0, '3RR_C', 'RR', 'RR'),
(479, 'Rainbow Road', 494, '3DS', 'v4.0-MKDX', 'Diego Vapy', 514, '202', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Rainbow_Road_(Diego_Vapy)', '', '', 0, '986', 'RR', 'RR'),
(480, 'Rainbow Road', 495, '3DS', 'v3.01', 'ZPL', 515, '203', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Rainbow_Road_(ZPL)', '', '', 0, '929', 'RR', 'RR'),
(481, 'Rock Rock Mountain', 496, '3DS', 'v2.0', 'MrKoeikoei, zilly', 516, '204', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Rock_Rock_Mountain_(MrKoeikoei_%26_zilly)', '', '', 0, '191', 'DC', 'DC'),
(482, 'Rosalina\'s Ice World', 498, '3DS', 'v1.2', 'MysterE99, Skipper93653', 517, '205', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Rosalina%27s_Ice_World_(MysterE99_%26_Skipper93653)', '', '', 0, '340', 'nSL', 'nSL'),
(483, 'Rosalina\'s Ice World', 499, '3DS', 'v1.2', 'SquireTurnbolt', 518, '206', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Rosalina%27s_Ice_World_(SquireTurnbolt)', '', '', 0, '847', 'nSL', 'nSL'),
(484, 'Shy Guy Bazaar', 500, '3DS', 'v2.0c', 'Atlas', 519, '207', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Shy_Guy_Bazaar_(Atlas)', '', '', 0, '201', 'CM', 'CM'),
(485, 'Toad Circuit', 501, '3DS', 'X', 'Bri', 520, '208', 1, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Toad_Circuit_(Bri)', '', '', 0, '461', 'DC', 'DC'),
(486, 'Toad Circuit', 502, '3DS', 'v1.0', 'Bri', 521, '209', 2, '208', 0, 'https://wiki.tockdom.com/wiki/3DS_Toad_Circuit_(Bri)', '', '', 0, '461_1', 'DC', 'DC'),
(487, 'Toad Circuit', 503, '3DS', 'v1.0.Night', 'Bri', 522, '20A', 2, '208', 0, 'https://wiki.tockdom.com/wiki/3DS_Toad_Circuit_(Bri)', '', '', 0, '461_2', 'DC', 'DC'),
(488, 'Toad\'s Spooky Circuit', 504, '3DS', 'v1.1', 'Bri', 523, '20B', 2, '208', 0, 'https://wiki.tockdom.com/wiki/Toad%27s_Spooky_Circuit_(3DS_Toad_Circuit_Texture)', '', '', 0, '461_3', 'DC', 'sGV2'),
(489, 'Toad Circuit', 505, '3DS', 'v1.4', 'Torran', 524, '20C', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Toad_Circuit_(Torran)', '', '', 0, '194', 'DC', 'DC'),
(490, 'Wario Shipyard', 506, '3DS', 'v1.1', 'Skipper93653', 525, '20D', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Wario_Shipyard_(Skipper93653)', '', '', 0, '497', 'KC', 'KC'),
(491, 'Wario Shipyard', 507, '3DS', 'v1.0', 'ZPL', 526, '20E', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Wario_Shipyard_(ZPL)', '', '', 0, '1207', 'KC', 'KC'),
(492, 'Wuhu Loop', 508, '3DS', 'v1.3.2', 'FunkyDude15, Riidefi, Zachruff', 527, '20F', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DS_Wuhu_Loop_(FunkyDude15,_Riidefi_%26_Zachruff)', '', '', 0, '590', 'MH', 'DC'),
(493, 'Kingdom Way', 509, 'GP DX', 'v1.1', 'Diego Vapy', 528, '210', 0, '', 0, 'https://wiki.tockdom.com/wiki/DX_Kingdom_Way_(Diego_Vapy)', '', '', 0, '1014', 'MC', 'MC'),
(494, 'Animal Crossing', 510, 'Wii U', 'X', 'ZPL', 529, '211', 1, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Animal_Crossing_(ZPL)', '', '', 0, '863_2', 'dPG', 'dPG'),
(495, 'Animal Crossing', 511, 'Wii U', 'v1.0(Winter', 'ZPL', 530, '212', 2, '211', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Animal_Crossing_(ZPL)', '', '', 0, '863_1', 'DKS', 'DKS'),
(496, 'Animal Crossing', 512, 'Wii U', 'v1.0(Spring', 'ZPL', 531, '213', 2, '211', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Animal_Crossing_(ZPL)', '', '', 0, '863_2', 'dPG', 'dPG'),
(497, 'Animal Crossing', 513, 'Wii U', 'v1.0(Summer', 'ZPL', 532, '214', 2, '211', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Animal_Crossing_(ZPL)', '', '', 0, '863_3', 'gMC', 'gMC'),
(498, 'Animal Crossing', 514, 'Wii U', 'v1.0(Autumn', 'ZPL', 533, '215', 2, '211', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Animal_Crossing_(ZPL)', '', '', 0, '863_4', 'MT', 'MT'),
(499, 'Big Blue', 515, 'Wii U', 'v2.0.kclfix', 'TheGamingBram', 534, '216', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Big_Blue_(TheGamingBram)', '', '', 0, '876', 'LC', 'RR'),
(500, 'Bone-Dry Dunes', 516, 'Wii U', 'Beta 3', 'Luca', 535, '217', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Bone-Dry_Dunes_(Luca)', '', '', 0, '884', 'MT', 'DDR'),
(501, 'Bowser\'s Castle', 517, 'Wii U', 'v3.0', 'TheGamingBram', 536, '218', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Bowser%27s_Castle_(TheGamingBram)', '', '', 0, '851', 'BC', 'BC'),
(502, 'Cloudtop Cruise', 518, 'Wii U', 'v2.0', 'Diego Vapy', 537, '219', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Cloudtop_Cruise_(Diego_Vapy)', '', '', 0, '831', 'MG', 'MG'),
(503, 'Dolphin Shoals', 519, 'Wii U', 'v1.1', 'MrFluffy', 538, '21A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Dolphin_Shoals_(MrFluffy)', '', '', 0, '529', 'KC', 'KC'),
(504, 'Dragon Driftway', 520, 'Wii U', 'v1.1', 'TheGamingBram', 539, '21B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Dragon_Driftway_(TheGamingBram)', '', '', 0, '861', 'MT', 'MT'),
(505, 'Electrodrome', 521, 'Wii U', 'v1.2', 'SquireTurnbolt', 540, '21C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Electrodrome_(SquireTurnbolt)', '', '', 0, '813', 'DC', 'DC'),
(506, 'Hyrule Circuit', 522, 'Wii U', 'v1.1', 'TheGamingBram', 541, '21D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Hyrule_Circuit_(TheGamingBram)', '', '', 0, '869', 'MC', 'MC'),
(507, 'Hyrule Circuit', 523, 'Wii U', 'v1.0', 'ZPL', 542, '21E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Hyrule_Circuit_(ZPL)', '', '', 0, '1227', 'MC', 'MC'),
(508, 'Ice Ice Outpost', 524, 'Wii U', 'v1.2', 'TheGamingBram', 543, '21F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Ice_Ice_Outpost_(TheGamingBram)', '', '', 0, '868', 'nSL', 'nSL'),
(509, 'Mario Circuit', 525, 'Wii U', 'v2.5', 'TheGamingBram', 544, '220', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Mario_Circuit_(TheGamingBram)', '', '', 0, '739', 'MC', 'MC'),
(510, 'Mario Kart Stadium', 526, 'Wii U', 'v2.5.mkd', 'TheGamingBram', 545, '221', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Mario_Kart_Stadium_(TheGamingBram)', '', '', 0, '723', 'DC', 'DC'),
(511, 'Mount Wario', 527, 'Wii U', 'v2.0', 'TheGamingBram', 546, '222', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Mount_Wario_(TheGamingBram)', '', '', 0, '850', 'DKS', 'DKS'),
(512, 'Mute City', 528, 'Wii U', 'v1.1', 'TheGamingBram', 547, '223', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Mute_City_(TheGamingBram)', '', '', 0, '865', 'nMR', 'nMR'),
(513, 'Rainbow Road', 529, 'Wii U', 'v1.1.1', 'Squadaloo', 548, '224', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Rainbow_Road_(Squadaloo)', '', '', 0, '760', 'RR', 'RR'),
(514, 'Shy Guy Falls', 530, 'Wii U', 'v1.0', 'Bruh de la Boi', 549, '225', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Shy_Guy_Falls_(Bruh_de_la_Boi)', '', '', 0, 'WUSGF_B', 'WGM', 'WGM'),
(515, 'Sunshine Airport', 531, 'Wii U', 'v2.1b', 'Diego Vapy', 550, '226', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Sunshine_Airport_(Diego_Vapy)', '', '', 0, '753', 'MC', 'MC'),
(516, 'Super Bell Subway', 532, 'Wii U', 'v2.0', 'TheGamingBram', 551, '227', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Super_Bell_Subway_(TheGamingBram)', '', '', 0, '874', 'CM', 'CM'),
(517, 'Sweet Sweet Canyon', 533, 'Wii U', 'v1.2', 'TheGamingBram', 552, '228', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Sweet_Sweet_Canyon_(TheGamingBram)', '', '', 0, '727', 'DKS', 'DKS'),
(518, 'Thwomp Ruins', 534, 'Wii U', 'v1.2', 'SquireTurnbolt', 553, '229', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Thwomp_Ruins_(SquireTurnbolt)', '', '', 0, '714', 'DKS', 'DKS'),
(519, 'Toad Harbor', 535, 'Wii U', 'v1.1', 'TheGamingBram', 554, '22A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Toad_Harbor_(TheGamingBram)', '', '', 0, '752', 'DC', 'DC'),
(520, 'Twisted Mansion', 536, 'Wii U', 'v2.5', 'TheGamingBram', 555, '22B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Twisted_Mansion_(TheGamingBram)', '', '', 0, '833', 'sGV2', 'sGV2'),
(521, 'Water Park', 537, 'Wii U', 'v2.0', 'TheGamingBram', 556, '22C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Water_Park_(TheGamingBram)', '', '', 0, '726', 'KC', 'KC'),
(522, 'Wild Woods', 538, 'Wii U', 'v2.0', 'TheGamingBram', 557, '22D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_U_Wild_Woods_(TheGamingBram)', '', '', 0, '870', 'MT', 'MT'),
(523, 'Athens Dash', 539, 'Switch', 'v1.0.mk8d', 'Bruh de la Boi', 558, '22E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Athens_Dash_(Bruh_de_la_Boi)', '', '', 0, 'T_AD_B_8DX', 'gDKM', 'gDKM'),
(524, 'London Loop', 540, 'Switch', 'RC2', 'Toadette Hack Fan', 559, '22F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_London_Loop_(MK8_Route)', '', '', 0, '1196', 'dDS', 'dDS'),
(525, 'Paris Promenade', 542, 'Switch', 'v1.1.MK8D', 'Bruh de la Boi', 560, '230', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Paris_Promenade_(Bruh_de_la_Boi)', '', '', 0, '967_1', 'dPG', 'dPG'),
(526, 'Sky-High Sundae', 543, 'Switch', 'v1.2', 'Wacker, tasrhys', 561, '231', 0, '', 0, 'https://wiki.tockdom.com/wiki/SW_Sky-High_Sundae_(Wacker_%26_tasrhys)', '', '', 0, '972', 'CM', 'CM'),
(527, 'Sky-High Sundae', 544, 'Switch', 'v1.0', 'ZPL', 562, '232', 0, '', 0, 'https://wiki.tockdom.com/wiki/SW_Sky-High_Sundae_(ZPL)', '', '', 0, '1218', 'CM', 'CM'),
(528, 'Tokyo Blur', 545, 'Switch', 'v1.1.MK8D', 'Bruh de la Boi', 563, '233', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Tokyo_Blur_(Bruh_de_la_Boi)', '', '', 0, '1079_1', 'MH', 'MH'),
(529, 'Yoshi\'s Island', 546, 'Switch', 'v1.1', 'SquireTurnbolt, TheGamingBram', 564, '234', 0, '', 2, 'https://wiki.tockdom.com/wiki/SW_Yoshi%27s_Island_(SquireTurnbolt_%26_TheGamingBram)', '', '', 0, '1167', 'dYF', 'dYF'),
(530, 'Amsterdam Drift', 547, 'Tour', 'v3.1', 'TheGamingBram', 565, '235', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Amsterdam_Drift_(TheGamingBram)', '', '', 0, '902', 'MMM', 'MMM'),
(531, 'Amsterdam Drift 2', 548, 'Tour', 'Beta 2', 'Bruh de la Boi', 566, '236', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Amsterdam_Drift_2_(Bruh_de_la_Boi)', '', '', 0, '1056', 'MMM', 'MMM'),
(532, 'Amsterdam Drift 3', 549, 'Tour', 'v1.1.fix', 'TheGamingBram', 567, '237', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Amsterdam_Drift_3_(TheGamingBram)', '', '', 0, '1084', 'MMM', 'MMM'),
(533, 'Athens Dash', 550, 'Tour', 'v1.0.mkt', 'Bruh de la Boi', 568, '238', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Athens_Dash_(Bruh_de_la_Boi)', '', '', 0, 'T_AD_B_Tour', 'gDKM', 'gDKM'),
(534, 'Athens Dash 2', 551, 'Tour', 'v1.0', 'Bruh de la Boi', 569, '239', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Athens_Dash_(Bruh_de_la_Boi)', '', '', 0, 'T_AD2_B_Tour', 'gDKM', 'gDKM'),
(535, 'Bangkok Rush', 553, 'Tour', 'v0.92', 'Numerosity, Toadette Hack Fan', 570, '23A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Bangkok_Rush_(Numerosity_%26_Toadette_Hack_Fan)', '', '', 0, '953', 'DC', 'DC'),
(536, 'Berlin Byways', 554, 'Tour', 'v1.0', 'TheGamingBram', 571, '23B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Berlin_Byways_(TheGamingBram)', '', '', 0, '1118', 'MC', 'MC'),
(537, 'Berlin Byways 2', 555, 'Tour', 'v1.0', 'TheGamingBram', 572, '23C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Berlin_Byways_2_(TheGamingBram)', '', '', 0, '1119', 'MC', 'MC'),
(538, 'Berlin Byways 3', 556, 'Tour', 'v1.0', 'TheGamingBram', 573, '23D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Berlin_Byways_3_(TheGamingBram)', '', '', 0, '1120', 'MC', 'MC'),
(539, 'London Loop', 557, 'Tour', 'v1.0a', 'Luigids, Toadette Hack Fan', 574, '23E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_London_Loop_(Luigids_%26_Toadette_Hack_Fan)', '', '', 0, '1064', 'dDS', 'dDS'),
(540, 'London Loop 2', 558, 'Tour', 'v1.0a', 'Luigids, Toadette Hack Fan', 575, '23F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_London_Loop_2_(Luigids_%26_Toadette_Hack_Fan)', '', '', 0, '1065', 'dDS', 'dDS'),
(541, 'London Loop 3', 559, 'Tour', 'v1.0a', 'Luigids, Toadette Hack Fan', 576, '240', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_London_Loop_3_(Luigids_%26_Toadette_Hack_Fan)', '', '', 0, '1066', 'dDS', 'dDS'),
(542, 'Los Angeles Laps', 560, 'Tour', 'v1.1', 'TheGamingBram', 577, '241', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Los_Angeles_Laps_(TheGamingBram)', '', '', 0, '1102', 'DC', 'DC'),
(543, 'Los Angeles Laps 2', 561, 'Tour', 'v1.0', 'TheGamingBram', 578, '242', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Los_Angeles_Laps_2_(TheGamingBram)', '', '', 0, '1103', 'DC', 'DC'),
(544, 'Los Angeles Laps 3', 562, 'Tour', 'v1.0', 'TheGamingBram', 579, '243', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Los_Angeles_Laps_3_(TheGamingBram)', '', '', 0, '1104', 'DC', 'DC'),
(545, 'Merry Mountain', 563, 'Tour', 'v1.0', 'Luca, AltairYoshi', 580, '244', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Merry_Mountain_(Luca_%26_AltairYoshi)', '', '', 0, '670', 'DKS', 'DKS'),
(546, 'N64 Kalimari Desert 2', 564, 'Tour', 'RC2', 'Bri', 581, '245', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_N64_Kalimari_Desert_2_(Bri)', '', '', 0, '651', 'DDR', 'DDR'),
(547, 'New York Minute', 566, 'Tour', 'v1.2', 'TheGamingBram', 582, '246', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_New_York_Minute_(TheGamingBram)', '', '', 0, '915', 'LC', 'MH'),
(548, 'New York Minute 2', 567, 'Tour', 'v1.2', 'TheGamingBram', 583, '247', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_New_York_Minute_2_(TheGamingBram)', '', '', 0, '916', 'LC', 'MH'),
(549, 'New York Minute 3', 568, 'Tour', 'v1.2', 'TheGamingBram', 584, '248', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_New_York_Minute_3_(TheGamingBram)', '', '', 0, '917', 'LC', 'MH'),
(550, 'New York Minute 4', 569, 'Tour', 'v1.2', 'TheGamingBram', 585, '249', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_New_York_Minute_4_(TheGamingBram)', '', '', 0, '918', 'LC', 'MH'),
(551, 'Ninja Hideaway', 570, 'Tour', 'v1.6', 'TheGamingBram', 586, '24A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Ninja_Hideaway_(TheGamingBram)', '', '', 0, '925', 'MT', 'MT');
INSERT INTO `mkvn_tracks` (`ID`, `Track_Name`, `TrackSort`, `Track_Type`, `Track_version`, `Track_Creator`, `Track_DEC_ID`, `Track_Hex_ID`, `Slot_Type`, `SubTrackTo`, `NewTrack`, `Wiki_Link`, `DLC_Music_Name`, `DLC_Music_YT_EMBED`, `DLC_Music_PackID`, `Local_File`, `Tprop`, `Tmus`) VALUES
(552, 'Paris Promenade', 571, 'Tour', 'v1.1.MKT', 'Bruh de la Boi', 587, '24B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Paris_Promenade_(Bruh_de_la_Boi)', '', '', 0, '967_2', 'DC', 'DC'),
(553, 'Paris Promenade R', 572, 'Tour', 'v1.0', 'Bruh de la Boi', 588, '24C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Paris_Promenade_(Bruh_de_la_Boi)', '', '', 0, '967_3', 'dPG', 'dPG'),
(554, 'Paris Promenade 2', 573, 'Tour', 'v1.0', 'Bruh de la Boi', 589, '24D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Paris_Promenade_2_(Bruh_de_la_Boi)', '', '', 0, '968', 'dPG', 'dPG'),
(555, 'Paris Promenade 3', 574, 'Tour', 'v1.0', 'Bruh de la Boi', 590, '24E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Paris_Promenade_3_(Bruh_de_la_Boi)', '', '', 0, '969', 'DC', 'DC'),
(556, 'Singapore Speedway', 579, 'Tour', 'v1.3', 'FunkyRacer', 591, '24F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Singapore_Speedway_(FunkyRacer)', '', '', 0, '1093', 'DC', 'DC'),
(557, 'Singapore Speedway 2', 580, 'Tour', 'v1.1', 'FunkyRacer', 592, '250', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Singapore_Speedway_2_(FunkyRacer)', '', '', 0, '1094', 'DC', 'DC'),
(558, 'Singapore Speedway 3', 581, 'Tour', 'v1.0', 'FunkyRacer', 593, '251', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Singapore_Speedway_3_(FunkyRacer)', '', '', 0, '1107', 'DC', 'DC'),
(559, 'Sydney Sprint', 582, 'Tour', 'X', 'Bruh de la Boi', 594, '252', 1, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Sydney_Sprint_(Bruh_de_la_Boi)', '', '', 0, '764_1', 'DC', 'DC'),
(560, 'Sydney Sprint', 583, 'Tour', 'v1.1.1', 'Bruh de la Boi', 595, '253', 2, '252', 0, 'https://wiki.tockdom.com/wiki/Tour_Sydney_Sprint_(Bruh_de_la_Boi)', '', '', 0, '764_1', 'DC', 'DC'),
(561, 'Sydney Sprint Alt', 584, 'Tour', 'v1.1.1 (ALT', 'Bruh de la Boi', 596, '254', 2, '252', 0, 'https://wiki.tockdom.com/wiki/Tour_Sydney_Sprint_(Bruh_de_la_Boi)', '', '', 0, '764_2', 'DC', 'DC'),
(562, 'Sydney Sprint R', 585, 'Tour', 'v1.0', 'Super the Oshawott, Bruh de la Boi', 597, '255', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Sydney_Sprint_R_(Tour_Sydney_Sprint_Edit)', '', '', 0, '764_3', 'DC', 'DC'),
(563, 'Sydney Sprint 2', 586, 'Tour', 'v1.1.1', 'Bruh de la Boi', 598, '256', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Sydney_Sprint_2_(Bruh_de_la_Boi)', '', '', 0, '765', 'DC', 'DC'),
(564, 'Sydney Sprint 3', 587, 'Tour', 'v1.0', 'Bruh de la Boi', 599, '257', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Sydney_Sprint_3_(Bruh_de_la_Boi)', '', '', 0, '1011', 'DC', 'DC'),
(565, 'Tokyo Blur', 588, 'Tour', 'v1.1.MKT', 'Bruh de la Boi', 600, '258', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Tokyo_Blur_(Bruh_de_la_Boi)', '', '', 0, '1079_2', 'MH', 'MH'),
(566, 'Tokyo Blur 2', 589, 'Tour', 'v1.1', 'Bruh de la Boi', 601, '259', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Tokyo_Blur_2_(Bruh_de_la_Boi)', '', '', 0, '1080', 'MH', 'MH'),
(567, 'Tokyo Blur 3', 590, 'Tour', 'v1.1', 'Bruh de la Boi', 602, '25A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Tokyo_Blur_3_(Bruh_de_la_Boi)', '', '', 0, '1081', 'MH', 'MH'),
(568, 'Tokyo Blur 4', 591, 'Tour', 'v1.1', 'Bruh de la Boi', 603, '25B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Tokyo_Blur_4_(Bruh_de_la_Boi)', '', '', 0, '1082', 'MH', 'MH'),
(569, 'Vancouver Velocity', 592, 'Tour', 'v2.0', 'TheGamingBram', 604, '25C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Vancouver_Velocity_(TheGamingBram)', '', '', 0, '897', 'DKS', 'DKS'),
(570, 'Vancouver Velocity', 593, 'Tour', 'v1.0', 'ZPL', 605, '25D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Vancouver_Velocity_(ZPL)', '', '', 0, '981', 'nMR', 'nMR'),
(571, 'Vancouver Velocity 2', 594, 'Tour', 'v2.0', 'TheGamingBram', 606, '25E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Vancouver_Velocity_2_(TheGamingBram)', '', '', 0, '898', 'DKS', 'DKS'),
(572, 'Vancouver Velocity 3', 595, 'Tour', 'v1.0', 'TheGamingBram', 607, '25F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Vancouver_Velocity_3_(TheGamingBram)', '', '', 0, '1230', 'DKS', 'DKS'),
(573, 'Bowser\'s Castle 1', 596, 'RMX', 'v1.1-hotfix', 'Bruh de la Boi', 608, '260', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Bowser%27s_Castle_1_(Bruh_de_la_Boi)', '', '', 0, '989', 'gBC3', 'gBC3'),
(574, 'Choco Island 1', 597, 'RMX', 'v3.0', 'Luca', 609, '261', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Choco_Island_1_(Luca)', '', '', 0, '522', 'nDKJP', 'nDKJP'),
(575, 'Choco Island 2', 598, 'RMX', 'v1.7', 'Kozakura', 610, '262', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Choco_Island_2_(Kozakura)', '', '', 0, '650', 'gDKM', 'gDKM'),
(576, 'Donut Plains 1', 599, 'RMX', 'v1.1', 'Luca', 611, '263', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Donut_Plains_1_(Luca)', '', '', 0, '1028', 'sMC3', 'sMC3'),
(577, 'Ghost Valley 1', 601, 'RMX', 'v1.2', 'Bruh de la Boi', 612, '264', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Ghost_Valley_1_(Bruh_de_la_Boi)', '', '', 0, '748', 'sGV2', 'sGV2'),
(578, 'Mario Circuit 1', 603, 'RMX', 'v1.0', 'Atlas', 613, '265', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Mario_Circuit_1_(Atlas)', '', '', 0, '502', 'sMC3', 'sMC3'),
(579, 'Mario Circuit 1', 604, 'RMX', 'v1.0', 'ZPL', 614, '266', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Mario_Circuit_1_(ZPL)', '', '', 0, 'RMC1_Z', 'sMC3', 'sMC3'),
(580, 'Rainbow Road 1', 605, 'RMX', 'v1.1', 'Luca, Kozakura', 615, '267', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Rainbow_Road_1_(Luca_%26_Kozakura)', '', '', 0, '585', 'RR', 'RR'),
(581, 'Rainbow Road 2', 606, 'RMX', 'v1.02', 'Bruh de la Boi', 616, '268', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Rainbow_Road_2_(Bruh_de_la_Boi)', '', '', 0, '622', 'RR', 'RR'),
(582, 'Vanilla Lake 1', 607, 'RMX', 'v1.1', 'Luca', 617, '269', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Vanilla_Lake_1_(Luca)', '', '', 0, '788', 'nSL', 'nSL'),
(583, '3DURCR Backyard Garden', 609, 'Other', 'v1.0', 'ZPL', 618, '26A', 0, '', 0, 'https://wiki.tockdom.com/wiki/3DURCR_Backyard_Garden', '', '', 0, '949', 'MT', 'MT'),
(584, 'AEPP F Boats', 610, 'Other', 'RC2', 'igorseabra4', 619, '26B', 0, '', 0, 'https://wiki.tockdom.com/wiki/AEPP_F_Boats', '', '', 0, '263', 'KC', 'KC'),
(585, 'CS Dust II', 613, 'Other', 'v1.2', 'SpartaYoshi', 620, '26C', 0, '', 0, 'https://wiki.tockdom.com/wiki/CS_Dust_II', '', '', 0, '287', 'dDH', 'dDH'),
(586, 'CTR Blizzard Bluff', 614, 'Other', 'v1.0', 'MysterE99', 621, '26D', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTR_Blizzard_Bluff', '', '', 0, '403', 'DKS', 'DKS'),
(587, 'CTR Coco Park', 615, 'Other', 'Beta 3', 'Bruh de la Boi', 622, '26E', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTR_Coco_Park', '', '', 0, '665', 'LC', 'MC'),
(588, 'CTR Cortex Castle', 616, 'Other', 'v1.1', 'MysterE99', 623, '26F', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTR_Cortex_Castle', '', '', 0, '243', 'nBC', 'nBC'),
(589, 'CTR Crash Cove', 617, 'Other', 'v1.0', 'tasrhys', 624, '270', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTR_Crash_Cove', '', '', 0, '807', 'nDKJP', 'nDKJP'),
(590, 'CTR Hot Air Skyway', 618, 'Other', 'v1.0', 'MysterE99', 625, '271', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTR_Hot_Air_Skyway', '', '', 0, '297', 'MG', 'gMC'),
(591, 'CTR N. Gin Labs', 619, 'Other', 'v1.5.3', 'MysterE99', 626, '272', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTR_N._Gin_Labs', '', '', 0, '324', 'gBC3', 'TF'),
(592, 'CTR Roo\'s Tubes', 620, 'Other', 'v1.0', 'tasrhys', 627, '273', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTR_Roo%27s_Tubes', '', '', 0, '926', 'KC', 'KC'),
(593, 'CTR Slide Coliseum', 621, 'Other', 'v1.1', 'MysterE99', 628, '274', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTR_Slide_Coliseum', '', '', 0, '333', 'dDS', 'gWS'),
(594, 'CTR Tiny Arena', 622, 'Other', 'v1.0.mkd', 'MysterE99', 629, '275', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTR_Tiny_Arena', '', '', 0, '334', 'dDS', 'gWS'),
(595, 'CTTR Evilocity', 623, 'Other', 'v1.0', 'MysterE99', 630, '276', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTTR_Evilocity', '', '', 0, '768', 'BC', 'BC'),
(596, 'CTTR Rings of Uranus', 624, 'Other', 'v1.0', 'LucioWins', 631, '277', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTTR_Rings_of_Uranus', '', '', 0, '1016', 'RR', 'RR'),
(597, 'CTTR Track and the Beanstalk', 625, 'Other', 'v1.3', 'razero', 632, '278', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTTR_Track_and_the_Beanstalk', '', '', 0, '538', 'LC', 'MC'),
(598, 'DKR Ancient Lake', 627, 'Other', 'v2.2', 'DJ Lowgey, Mewtwo2000', 633, '279', 0, '', 0, 'https://wiki.tockdom.com/wiki/DKR_Ancient_Lake_(DJ_Lowgey_%26_Mewtwo2000)', '', '', 0, '060', 'gDKM', 'dYF'),
(599, 'DKR Ancient Lake', 628, 'Other', 'v1.0', 'Squadaloo', 634, '27A', 0, '', 0, 'https://wiki.tockdom.com/wiki/DKR_Ancient_Lake_(Squadaloo)', '', '', 0, '895', 'sMC3', 'sMC3'),
(600, 'DKR Darkmoon Caverns', 629, 'Other', 'v1.2', 'Kronos', 635, '27B', 0, '', 0, 'https://wiki.tockdom.com/wiki/DKR_Darkmoon_Caverns', '', '', 0, '745', 'RR', 'RR'),
(601, 'DKR Frosty Village', 630, 'Other', 'v1.2', 'Squadaloo', 636, '27C', 0, '', 0, 'https://wiki.tockdom.com/wiki/DKR_Frosty_Village', '', '', 0, '783', 'DKS', 'DKS'),
(602, 'DKR Jungle Falls', 631, 'Other', 'v3.0.mkd', 'MrKoeikoei, Mewtwo2000, Billy', 637, '27D', 0, '', 0, 'https://wiki.tockdom.com/wiki/DKR_Jungle_Falls', '', '', 0, '084', 'nDKJP', 'nDKJP'),
(603, 'DKR Spaceport Alpha', 632, 'Other', 'Beta 3', 'MrMartley64', 638, '27E', 0, '', 0, 'https://wiki.tockdom.com/wiki/DKR_Spaceport_Alpha', '', '', 0, '613', 'RR', 'RR'),
(604, 'DKR Star City', 633, 'Other', 'v1.1', 'Mewtwo2000', 639, '27F', 0, '', 0, 'https://wiki.tockdom.com/wiki/DKR_Star_City', '', '', 0, '104', 'DC', 'DC'),
(605, 'FGKR Downhill River', 635, 'Other', 'v1.0', 'Questorian', 640, '280', 0, '', 0, 'https://wiki.tockdom.com/wiki/FGKR_Downhill_River', '', '', 0, '810', 'gDKM', 'gDKM'),
(606, 'F-Zero Big Blue', 644, 'Other', 'v1.0', 'JorisMKW', 641, '281', 0, '', 0, 'https://wiki.tockdom.com/wiki/F-Zero_Big_Blue_(JorisMKW)', '', '', 0, '337', 'sMC3', 'sMC3'),
(607, 'F-Zero Mute City I', 645, 'Other', 'v2.2', 'Retrostyle12', 642, '282', 0, '', 0, 'https://wiki.tockdom.com/wiki/F-Zero_Mute_City_I', '', '', 0, '382', 'sMC3', 'sMC3'),
(608, 'F-Zero Port Town I', 646, 'Other', 'v1.0b', 'Retrostyle12', 643, '283', 0, '', 0, 'https://wiki.tockdom.com/wiki/F-Zero_Port_Town_I_(Retrostyle12)', '', '', 0, '669', 'LC', 'MC'),
(609, 'F-Zero Port Town II', 647, 'Other', 'v1.1', 'Retrostyle12', 644, '284', 0, '', 0, 'https://wiki.tockdom.com/wiki/F-Zero_Port_Town_II', '', '', 0, '671', 'sMC3', 'sMC3'),
(610, 'F-Zero White Land I', 648, 'Other', 'v2.0', 'Kozakura', 645, '285', 0, '', 0, 'https://wiki.tockdom.com/wiki/F-Zero_White_Land_I_(Kozakura)', '', '', 0, '399', 'DKS', 'DKS'),
(611, 'F-Zero White Land II', 649, 'Other', 'v2.1', 'Retrostyle12', 646, '286', 0, '', 0, 'https://wiki.tockdom.com/wiki/F-Zero_White_Land_II', '', '', 0, '288', 'nSL', 'LC'),
(612, 'FZMV Cloud Carpet', 650, 'Other', 'v1.2', 'TacoJosh', 647, '287', 0, '', 0, 'https://wiki.tockdom.com/wiki/FZMV_Cloud_Carpet_(TacoJosh)', '', '', 0, '301', 'sMC3', 'sMC3'),
(613, 'KAR Celestial Valley', 651, 'Other', 'v1.0-CTGP', 'ISwearChris', 648, '288', 0, '', 2, 'https://wiki.tockdom.com/wiki/KAR_Celestial_Valley', '', '', 0, 'KCV_I', 'sGV2', 'sGV2'),
(614, 'KAR Fantasy Meadows', 652, 'Other', 'v2.0', 'Waltz', 649, '289', 0, '', 0, 'https://wiki.tockdom.com/wiki/KAR_Fantasy_Meadows', '', '', 0, '1219', 'dPG', 'dPG'),
(615, 'KAR Top Ride Grass', 653, 'Other', 'v1.0', 'Waltz', 650, '28A', 0, '', 0, 'https://wiki.tockdom.com/wiki/KAR_Top_Ride_Grass_(Waltz)', '', '', 0, 'KTRG_W', 'BC', 'MH'),
(616, 'LBPK Garden Grip', 654, 'Other', 'v1.0', 'Potatoman44', 651, '28B', 0, '', 0, 'https://wiki.tockdom.com/wiki/LBPK_Garden_Grip', '', '', 0, '1165', 'LC', 'MC'),
(617, 'LEGO Racers Imperial Grand Prix', 655, 'Other', 'RC2.mkf2', 'Segatendo', 652, '28C', 0, '', 0, 'https://wiki.tockdom.com/wiki/LEGO_Racers_Imperial_Grand_Prix', '', '', 0, '108', 'LC', 'MC'),
(618, 'M&SOWG Mario Circuit', 656, 'Other', 'v1.0', 'LQwerty', 653, '28D', 0, '', 0, 'https://wiki.tockdom.com/wiki/M%26SOWG_Mario_Circuit', '', '', 0, '1127', 'MC', 'MC'),
(619, 'MP5 Mini-Game Circuit', 657, 'Other', 'v1.0', 'King Boo Gaming', 654, '28E', 0, '', 0, 'https://wiki.tockdom.com/wiki/MP5_Mini-Game_Circuit', '', '', 0, '1173', 'sMC3', 'sMC3'),
(620, 'MP7 Kart Wheeled', 658, 'Other', 'v1.0', 'Hollend', 655, '28F', 0, '', 0, 'https://wiki.tockdom.com/wiki/MP7_Kart_Wheeled', '', '', 0, '1083', 'LC', 'asBC4'),
(621, 'MP8 Kartastrophe', 659, 'Other', 'v1.1', 'Hollend', 656, '290', 0, '', 0, 'https://wiki.tockdom.com/wiki/MP8_Kartastrophe', '', '', 0, '946', 'LC', 'MC'),
(622, 'MP9 Snow Go', 660, 'Other', 'v1.0', 'JorisMKW', 657, '291', 0, '', 0, 'https://wiki.tockdom.com/wiki/MP9_Snow_Go', '', '', 0, '484', 'DKS', 'DKS'),
(623, 'MPDS Pedal Pushers', 661, 'Other', 'v1.1', 'Dylanmario', 658, '292', 0, '', 0, 'https://wiki.tockdom.com/wiki/MPDS_Pedal_Pushers', '', '', 0, '948', 'LC', 'MC'),
(624, 'MSRDS Greenwoods Park', 662, 'Other', 'v1.0', 'razero', 659, '293', 0, '', 0, 'https://wiki.tockdom.com/wiki/MSRDS_Greenwoods_Park', '', '', 0, '539', 'MT', 'MT'),
(625, 'MSUSA Alaska', 663, 'Other', 'v1.4', 'Hollend', 660, '294', 0, '', 2, 'https://wiki.tockdom.com/wiki/MSUSA_Alaska', '', '', 0, '445', 'DKS', 'DKS'),
(626, 'MSUSA Chicago', 664, 'Other', 'v1.5', 'Hollend', 661, '295', 0, '', 0, 'https://wiki.tockdom.com/wiki/MSUSA_Chicago', '', '', 0, '606', 'nBC', 'nBC'),
(627, 'MSUSA Colorado', 665, 'Other', 'v1.3', 'Hollend', 662, '296', 0, '', 0, 'https://wiki.tockdom.com/wiki/MSUSA_Colorado', '', '', 0, '501', 'nSL', 'nSL'),
(628, 'MSUSA Grand Canyon', 666, 'Other', 'v1.1b', 'Hollend', 663, '297', 0, '', 0, 'https://wiki.tockdom.com/wiki/MSUSA_Grand_Canyon', '', '', 0, '483', 'dDH', 'dDH'),
(629, 'MSUSA Indianapolis', 667, 'Other', 'v1.1.mkd', 'Hollend', 664, '298', 0, '', 0, 'https://wiki.tockdom.com/wiki/MSUSA_Indianapolis', '', '', 0, '491', 'LC', 'MC'),
(630, 'MSUSA Philadelphia', 668, 'Other', 'v1.4', 'Hollend', 665, '299', 0, '', 0, 'https://wiki.tockdom.com/wiki/MSUSA_Philadelphia', '', '', 0, '452', 'gPB', 'gPB'),
(631, 'PMWR Cloud Garden', 669, 'Other', 'v1.08', 'Atlas', 666, '29A', 0, '', 0, 'https://wiki.tockdom.com/wiki/PMWR_Cloud_Garden', '', '', 0, '246', 'nDKJP', 'MG'),
(632, 'PMWR King\'s Kourse', 670, 'Other', 'Beta 2', 'Oh ok', 667, '29B', 0, '', 0, 'https://wiki.tockdom.com/wiki/PMWR_King%27s_Kourse', '', '', 0, '419', 'sMC3', 'sMC3'),
(633, 'Re-Volt Botanical Garden', 671, 'Other', 'v1.2', 'MK Mier', 668, '29C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Re-Volt_Botanical_Garden', '', '', 0, '379_1', 'gMC', 'gMC'),
(634, 'Re-Volt Botanical Garden R', 672, 'Other', 'v1.2', 'MK Mier', 669, '29D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Re-Volt_Botanical_Garden_R_(Re-Volt_Botanical_Garden_Edit)', '', '', 0, '379_2', 'gMC', 'gMC'),
(635, 'Re-Volt Rooftops', 673, 'Other', 'Alpha 3.1', 'MK Mier', 670, '29E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Re-Volt_Rooftops', '', '', 0, '428', 'MC', 'MC'),
(636, 'Re-Volt SuperMarket 2', 674, 'Other', 'v1.0', 'Waltz', 671, '29F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Re-Volt_SuperMarket_2_(Waltz)', '', '', 0, 'RVS2_W', 'CM', 'CM'),
(637, 'Re-Volt Toy World 2', 675, 'Other', 'v1.0', 'Waltz', 672, '2A0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Re-Volt_Toy_World_2', '', '', 0, 'RVTW2_W', 'sMC3', 'sMC3'),
(638, 'SADX Twinkle Circuit', 676, 'Other', 'v3.3', 'igorseabra4', 673, '2A1', 0, '', 0, 'https://wiki.tockdom.com/wiki/SADX_Twinkle_Circuit', '', '', 0, '052', 'TF', 'RR'),
(639, 'SADX Twinkle Circuit 2', 677, 'Other', 'v1.0', 'igorseabra4', 674, '2A2', 0, '', 0, 'https://wiki.tockdom.com/wiki/SADX_Twinkle_Circuit_2', '', '', 0, '271', 'sMC3', 'aBP'),
(640, 'SADX Twinkle Circuit 3', 678, 'Other', 'v1.0', 'igorseabra4', 675, '2A3', 0, '', 0, 'https://wiki.tockdom.com/wiki/SADX_Twinkle_Circuit_3', '', '', 0, '272', 'sMC3', 'aBP'),
(641, 'SADX Twinkle Circuit 4', 679, 'Other', 'v1.0', 'igorseabra4', 676, '2A4', 0, '', 0, 'https://wiki.tockdom.com/wiki/SADX_Twinkle_Circuit_4', '', '', 0, '273', 'sMC3', 'aBP'),
(642, 'SADX Twinkle Circuit 5', 680, 'Other', 'v1.0', 'igorseabra4', 677, '2A5', 0, '', 0, 'https://wiki.tockdom.com/wiki/SADX_Twinkle_Circuit_5', '', '', 0, '274', 'sMC3', 'aBP'),
(643, 'SADX Twinkle Circuit 6', 681, 'Other', 'v1.0', 'igorseabra4', 678, '2A6', 0, '', 0, 'https://wiki.tockdom.com/wiki/SADX_Twinkle_Circuit_6', '', '', 0, '275', 'sMC3', 'aBP'),
(644, 'SBSPBfBB Downtown Bikini Bottom', 682, 'Other', 'v2.0', 'Waltz', 679, '2A7', 0, '', 2, 'https://wiki.tockdom.com/wiki/SBSPBfBB_Downtown_Bikini_Bottom_(Waltz)', '', '', 0, '1195', 'KC', 'KC'),
(645, 'SBSPLCP Floor It 1', 683, 'Other', 'v1.1', 'Rex', 680, '2A8', 0, '', 0, 'https://wiki.tockdom.com/wiki/SBSPLCP_Floor_It_1', '', '', 0, '425', 'sMC3', 'sMC3'),
(646, 'SBSPLCP Floor It 3', 684, 'Other', 'Beta', 'Rex', 681, '2A9', 0, '', 0, 'https://wiki.tockdom.com/wiki/SBSPLCP_Floor_It_3', '', '', 0, '531', 'sMC3', 'sMC3'),
(647, 'SCD Special Stage 1', 685, 'Other', 'Beta', 'Villain', 682, '2AA', 0, '', 0, 'https://wiki.tockdom.com/wiki/SCD_Special_Stage_1', '', '', 0, '945', 'RR', 'RR'),
(648, 'SCR Fairy-Tale Forest', 686, 'Other', 'v2.0', 'Waltz', 683, '2AB', 0, '', 0, 'https://wiki.tockdom.com/wiki/SCR_Fairy-Tale_Forest', '', '', 0, '1200', 'MC', 'MC'),
(649, 'SCR Mountain Coaster', 688, 'Other', 'v0.4', 'alexth 91', 684, '2AC', 0, '', 0, 'https://wiki.tockdom.com/wiki/SCR_Mountain_Coaster', '', '', 0, '470', 'LC', 'MC'),
(650, 'SCR Simple Circuit', 689, 'Other', 'v1.0', 'razero', 685, '2AD', 0, '', 0, 'https://wiki.tockdom.com/wiki/SCR_Simple_Circuit_(razero)', '', '', 0, '528', 'MC', 'MC'),
(651, 'SD1 Green Hill G', 690, 'Other', 'v1.0', 'Retrostyle12', 686, '2AE', 0, '', 0, 'https://wiki.tockdom.com/wiki/SD1_Green_Hill_G', '', '', 0, '450', 'gDKM', 'gDKM'),
(652, 'SD1 Green Hill R', 691, 'Other', 'v1.0', 'Retrostyle12', 687, '2AF', 0, '', 0, 'https://wiki.tockdom.com/wiki/SD1_Green_Hill_R', '', '', 0, '457', 'gDKM', 'gDKM'),
(653, 'SD1 Green Hill Y', 692, 'Other', 'v1.0', 'Retrostyle12', 688, '2B0', 0, '', 0, 'https://wiki.tockdom.com/wiki/SD1_Green_Hill_Y', '', '', 0, '455', 'gDKM', 'gDKM'),
(654, 'SH Casino Park', 693, 'Other', 'RC6', 'igorseabra4', 689, '2B1', 0, '', 0, 'https://wiki.tockdom.com/wiki/SH_Casino_Park', '', '', 0, '253', 'CM', 'aCCW'),
(655, 'SH Grand Metropolis', 694, 'Other', 'v1.1', 'igorseabra4', 690, '2B2', 0, '', 0, 'https://wiki.tockdom.com/wiki/SH_Grand_Metropolis', '', '', 0, '265', 'dDS', 'MH'),
(656, 'SHR Level 1 Bonus', 695, 'Other', 'v1.0', 'Razero', 691, '2B3', 0, '', 0, 'https://wiki.tockdom.com/wiki/SHR_Level_1_Bonus', '', '', 0, '584', 'dDH', 'dDH'),
(657, 'SM64 Bob-omb Battlefield', 696, 'Other', 'v2.0', 'Waltz', 692, '2B4', 0, '', 2, 'https://wiki.tockdom.com/wiki/SM64_Bob-omb_Battlefield_(Waltz)', '', '', 0, '1212', 'dDS', 'gMC'),
(658, 'SM64 Bowser in the Dark World', 697, 'Other', 'v1.3', 'Waltz', 693, '2B5', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Bowser_in_the_Dark_World_(Waltz)', '', '', 0, '1213', 'BC', 'BC'),
(659, 'SM64 Castle Grounds', 698, 'Other', 'Beta 2', 'zilly', 694, '2B6', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Castle_Grounds_(zilly)', '', '', 0, '079', 'gDKM', 'dPG'),
(660, 'SM64 Cool, Cool Mountain Slide', 701, 'Other', 'v1.3', 'YellowYoshi', 695, '2B7', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Cool,_Cool_Mountain_Slide', '', '', 0, '155', 'DKS', 'DKS'),
(661, 'SM64 Inside the Ancient Pyramid', 702, 'Other', 'v1.0', 'Waltz', 696, '2B8', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Inside_the_Ancient_Pyramid_(Waltz)', '', '', 0, 'SITAP_W', 'DDR', 'DDR'),
(662, 'SM64 Lethal Lava Land', 703, 'Other', 'v1.0', 'Diego Vapy', 697, '2B9', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Lethal_Lava_Land', '', '', 0, '955', 'gSGB', 'gSGB'),
(663, 'SM64 Shifting Sand Land', 707, 'Other', 'v1.0', 'Waltz', 698, '2BA', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Shifting_Sand_Land_(Waltz)', '', '', 0, '1197', 'DDR', 'DDR'),
(664, 'SM64 The Princess\'s Secret Slide', 708, 'Other', 'v1.0', 'Diego Vapy', 699, '2BB', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_The_Princess%27s_Secret_Slide', '', '', 0, '806', 'LC', 'MC'),
(665, 'SM64 Wing Mario Over the Rainbow', 709, 'Other', 'v2.0', 'Waltz', 700, '2BC', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Wing_Mario_Over_the_Rainbow', '', '', 0, '1168', 'LC', 'RR'),
(666, 'SMG Comet Observatory', 710, 'Other', 'v1.01', 'Wraith Hopper', 701, '2BD', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMG_Comet_Observatory_(Wraith_Hopper)', '', '', 0, '1042', 'RR', 'RR'),
(667, 'SMG Honeyhive Galaxy', 711, 'Other', 'v1.0-hotfix', 'Thevayl', 702, '2BE', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMG_Honeyhive_Galaxy', '', '', 0, '856', 'KC', 'KC'),
(668, 'SMG Sea Slide Galaxy', 712, 'Other', 'Alpha', 'Torran, Sword0fSeals', 703, '2BF', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMG_Sea_Slide_Galaxy', '', '', 0, '163', 'KC', 'KC'),
(669, 'SMG Star Festival', 713, 'Other', 'v2.0', 'TheGamingBram', 704, '2C0', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMG_Star_Festival', '', '', 0, '322', 'RR', 'RR'),
(670, 'SMO RC Car Circuit', 714, 'Other', 'v1.hp', 'Atlas', 705, '2C1', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMO_RC_Car_Circuit', '', '', 0, '346', 'sMC3', 'sMC3'),
(671, 'SMS Blooper Surfing Safari', 715, 'Other', 'Alpha ', 'Atlas', 706, '2C2', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMS_Blooper_Surfing_Safari', '', '', 0, '270', 'KC', 'KC'),
(672, 'SMS Delfino Plaza', 717, 'Other', 'v1.5.1.opt', 'Waltz', 707, '2C3', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMS_Delfino_Plaza_(Waltz)', '', '', 0, '1183', 'dDS', 'dDS'),
(673, 'SMS Pianta Village', 718, 'Other', 'v2.0', 'Waltz', 708, '2C4', 0, '', 2, 'https://wiki.tockdom.com/wiki/SMS_Pianta_Village', '', '', 0, 'SPV_W', 'nDKJP', 'nDKJP'),
(674, 'SMS Sirena Beach', 719, 'Other', 'v2.5', 'Waltz', 709, '2C5', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMS_Sirena_Beach_(Waltz)', '', '', 0, '1150', 'DC', 'DC'),
(675, 'Spyro 1 Gnasty Gnorc\'s Lair', 720, 'Other', 'v1.0', 'MysterE99', 710, '2C6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Spyro_1_Gnasty_Gnorc%27s_Lair', '', '', 0, '295', 'WGM', 'WGM'),
(676, 'Spyro 1 Sunny Flight', 721, 'Other', 'v1.5', 'Waltz', 711, '2C7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Spyro_1_Sunny_Flight', '', '', 0, 'S1SF_W', 'nMR', 'nMR'),
(677, 'Spyro 1 Toasty', 722, 'Other', 'v1.0', 'Waltz', 712, '2C8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Spyro_1_Toasty_(Waltz)', '', '', 0, 'S1T_W', 'CM', 'CM'),
(678, 'SSBB Port Town Aero Dive', 723, 'Other', 'Beta 2', 'Sucht93a', 713, '2C9', 0, '', 0, 'https://wiki.tockdom.com/wiki/SSBB_Port_Town_Aero_Dive', '', '', 0, '309', 'RR', 'RR'),
(679, 'WF Wuhu Island', 724, 'Other', 'v1.2', 'lgmb', 714, '2CA', 0, '', 0, 'https://wiki.tockdom.com/wiki/WF_Wuhu_Island_(lgmb)', '', '', 0, '280', 'CM', 'CM'),
(680, 'WP Tanks! v2.1', 725, 'Other', 'v2.1', 'Brawlboxgaming', 715, '2CB', 0, '', 0, 'https://wiki.tockdom.com/wiki/WP_Tanks!', '', '', 0, '572_1', 'MH', 'MH'),
(681, 'WP Tanks! v3.0.1', 726, 'Other', 'v3.0.1', 'Brawlboxgaming', 716, '2CC', 0, '', 0, 'https://wiki.tockdom.com/wiki/WP_Tanks!', '', '', 0, '572_2', 'MH', 'MH'),
(682, 'Zelda WW Forest of Fairies', 727, 'Other', 'v1.0', 'Waltz', 717, '2CD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Zelda_WW_Forest_of_Fairies_(Waltz)', '', '', 0, 'ZWFOF_W', 'MG', 'MG'),
(683, 'Zelda WW Outset Island', 729, 'Other', 'v1', 'Waltz', 718, '2CE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Zelda_WW_Outset_Island_(Waltz)', '', '', 0, 'ZWWOI_W', 'gPB', 'gPB'),
(684, 'Zelda WW Windfall Island', 730, 'Other', 'Alpha', 'Waltz', 719, '2CF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Zelda_WW_Windfall_Island', '', '', 0, '1225', 'gMC', 'gMC'),
(685, '123456', 732, 'Custom', 'Alpha 1', 'G-Force', 720, '2D0', 0, '', 0, 'https://wiki.tockdom.com/wiki/123456', '', '', 0, '1169', 'sMC3', 'sMC3'),
(686, '4IT?Clown\'s Road', 733, 'Custom', 'v1.2', '4IT?Lecce, 4IT?Clown', 721, '2D1', 0, '', 0, 'https://wiki.tockdom.com/wiki/4IT%E2%98%85Clown%27s_Road', '', '', 0, '261', 'dPG', 'dPG'),
(687, '5-lap Falls', 734, 'Custom', 'v1.0', 'Wacker', 722, '2D2', 0, '', 0, 'https://wiki.tockdom.com/wiki/5-lap_Falls', '', '', 0, '1062', 'MG', 'MG'),
(688, '8-Bit Road', 735, 'Custom', 'v1.3', 'Nuke, SpyKid', 723, '2D3', 0, '', 0, 'https://wiki.tockdom.com/wiki/8-Bit_Road', '', '', 0, '120', 'sMC3', 'sMC3'),
(689, '8-Bit Way', 736, 'Custom', 'v1.0', 'CarryOn, Whipinsnapper', 724, '2D4', 0, '', 0, 'https://wiki.tockdom.com/wiki/8-Bit_Way_(CarryOn_%26_Whipinsnapper)', '', '', 0, '603', 'MC', 'MC'),
(690, 'A.S.D.F. City', 737, 'Custom', 'v1.0', 'Bruh de la Boi', 725, '2D5', 0, '', 0, 'https://wiki.tockdom.com/wiki/A.S.D.F._City', '', '', 0, '661', 'nMR', 'nMR'),
(691, 'Abandoned Boardwalk', 739, 'Custom', 'v1.1', 'ChaosShadow23, Renegade Ciara', 726, '2D6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Abandoned_Boardwalk', '', '', 0, '471', 'sGV2', 'sGV2'),
(692, 'Abyssal Ruins', 740, 'Custom', 'v2.2.1', 'ChaosShadow23', 727, '2D7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Abyssal_Ruins', '', '', 0, '109', 'nBC', 'nBC'),
(693, 'Academic Raceway', 741, 'Custom', 'v1.03', 'smeeno', 728, '2D8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Academic_Raceway', '', '', 0, '503', 'LC', 'MC'),
(694, 'Acid Cliffs', 742, 'Custom', 'v2.0', 'Cats4Life', 729, '2D9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Acid_Cliffs', '', '', 0, '928', 'RR', 'RR'),
(695, 'Acid Terrene', 743, 'Custom', 'v1.1', 'Kozakura', 730, '2DA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Acid_Terrene', '', '', 0, '595', 'sMC3', 'sMC3'),
(696, 'Acidic Area', 744, 'Custom', 'Beta', 'Atmosphere', 731, '2DB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Acidic_Area', '', '', 0, '857', 'TF', 'TF'),
(697, 'Acrobatic Airway', 745, 'Custom', 'Beta 3', 'bugsy', 732, '2DC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Acrobatic_Airway', '', '', 0, '756', 'KC', 'KC'),
(698, 'Across Surreal Skies', 746, 'Custom', 'v1.1', 'Kozakura', 733, '2DD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Across_Surreal_Skies', '', '', 0, '835', 'dPG', 'dPG'),
(699, 'Adrastea Station', 747, 'Custom', 'Alpha', 'Riidefi, zatchi', 734, '2DE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Adrastea_Station', '', '', 0, '649', 'RR', 'RR'),
(700, 'Aegean Acropolis', 748, 'Custom', 'v1.0', 'Elemental', 735, '2DF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Aegean_Acropolis', '', '', 0, '1174', 'dYF', 'dYF'),
(701, 'Akina Pass', 749, 'Custom', 'Beta 1-fix', 'Skipper93653, Ermelber', 736, '2E0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Akina_Pass', '', '', 0, '351', 'MG', 'MG'),
(702, 'Albero Bello', 751, 'Custom', 'v1.2', 'Shorky', 737, '2E1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Albero_Bello', '', '', 0, '751', 'dDS', 'dDS'),
(703, 'Aliens Built the Pyramids', 752, 'Custom', 'v1.0', 'CarryOn', 738, '2E2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Aliens_Built_the_Pyramids', '', '', 0, '771', 'RR', 'RR'),
(704, 'Alone and Incomplete', 753, 'Custom', 'v1.7', 'ISwearChris', 739, '2E3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Alone_and_Incomplete_(The_Journey_to_Fix_a_Broken_Heart)', '', '', 0, '1024', 'DKS', 'DKS'),
(705, 'Alpine Circuit', 754, 'Custom', 'RC3', 'Black Rose 67', 740, '2E4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Alpine_Circuit_(Black_Rose_67)', '', '', 0, '050', 'DKS', 'DKS'),
(706, 'Alpine Circuit', 755, 'Custom', 'v2.0', 'TheGamingBram', 741, '2E5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Alpine_Circuit_(TheGamingBram)', '', '', 0, '323', 'nSL', 'nSL'),
(707, 'Alpine Mountain', 756, 'Custom', 'v1.6', 'MrApple35000VR, Wiimm', 742, '2E6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Alpine_Mountain', '', '', 0, '071', 'gDKM', 'gDKM'),
(708, 'Alpine Peak', 757, 'Custom', 'v1.4', 'MysterE99', 743, '2E7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Alpine_Peak', '', '', 0, '175', 'DKS', 'DKS'),
(709, 'Alpine Skyway', 758, 'Custom', 'v1.6.2', 'Luca', 744, '2E8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Alpine_Skyway_(Luca)', '', '', 0, '826', 'DKS', 'DKS'),
(710, 'Alternative GBA Shy Guy Beach', 759, 'Custom', 'v1.1', 'Wraith Hopper', 745, '2E9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Alternative_GBA_Shy_Guy_Beach_(GBA_Shy_Guy_Beach_Edit)', '', '', 0, '1047', 'gSGB', 'gSGB'),
(711, 'Alternative N64 Bowser\'s Castle', 760, 'Custom', 'v2.0.1', 'Jiyuu', 746, '2EA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Alternative_N64_Bowser%27s_Castle', '', '', 0, '424', 'nBC', 'nBC'),
(712, 'Amanita Abyss', 761, 'Custom', 'v1.2', 'Brawlboxgaming, SquireTurnbolt', 747, '2EB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Amanita_Abyss', '', '', 0, '992', 'MG', 'MG'),
(713, 'Anatomical Excursion', 762, 'Custom', 'v1.mkd', 'Questorian', 748, '2EC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Anatomical_Excursion', '', '', 0, '719', 'gBC3', 'gBC3'),
(714, 'Ancient Fields', 763, 'Custom', 'v1.0', 'LUDAROBE, Diego Vapy', 749, '2ED', 0, '', 0, 'https://wiki.tockdom.com/wiki/Ancient_Fields', '', '', 0, '1203', 'sGV2', 'sGV2'),
(715, 'Andorra Alleyway', 764, 'Custom', 'v1.0', 'Mystora', 750, '2EE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Andorra_Alleyway', '', '', 0, '1038', 'gDKM', 'gDKM'),
(716, 'Angry Video Game Circuit', 765, 'Custom', 'Alpha 2', 'Nomatix', 751, '2EF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Angry_Video_Game_Circuit', '', '', 0, '1017', 'sMC3', 'sMC3'),
(717, 'Aperture Laboratories', 767, 'Custom', 'v1.3', 'Yoshivert99', 752, '2F0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Aperture_Laboratories', '', '', 0, '449', 'TF', 'TF'),
(718, 'Aqua Dungeon', 768, 'Custom', 'v2.1', 'ZPL', 753, '2F1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Aqua_Dungeon', '', '', 0, '773', 'nBC', 'nBC'),
(719, 'Aquadrom Stage', 769, 'Custom', 'v3.3.mkd', 'SpyKid', 754, '2F2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Aquadrom_Stage', '', '', 0, '058', 'gPB', 'gPB'),
(720, 'Aquania', 770, 'Custom', 'v1.61', 'SpyKid', 755, '2F3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Aquania', '', '', 0, '200', 'KC', 'KC'),
(721, 'Arctic Chill', 771, 'Custom', 'v1.1', 'Kozakura, Sheale', 756, '2F4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Arctic_Chill', '', '', 0, '530', 'nSL', 'nSL'),
(722, 'Area 28', 772, 'Custom', 'v1.3.1', 'Keiichi1996', 757, '2F5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Area_28', '', '', 0, '159', 'sMC3', 'RR'),
(723, 'Area 64', 773, 'Custom', 'v1.0', 'SquireTurnbolt', 758, '2F6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Area_64', '', '', 0, '887', 'nBC', 'nBC'),
(724, 'Artificial Arboretum', 775, 'Custom', 'v1.0', 'Atmosphere', 759, '2F7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Artificial_Arboretum', '', '', 0, '1204', 'RR', 'RR'),
(725, 'Aspertia City', 776, 'Custom', 'v2.3', 'razero', 760, '2F8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Aspertia_City', '', '', 0, '527', 'dPG', 'dPG'),
(726, 'Assault on Isle Delfino', 777, 'Custom', 'v1.0', 'Slimeserver', 761, '2F9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Assault_on_Isle_Delfino_(DS_Delfino_Square_Edit)', '', '', 0, '1159', 'dDS', 'dDS'),
(727, 'Astronomical Overdrive', 778, 'Custom', 'v1.0', 'Jasperr', 762, '2FA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Astronomical_Overdrive', '', '', 0, '507', 'RR', 'RR'),
(728, 'Athletic Raceway', 779, 'Custom', 'v1.03.mkd', 'SpyKid', 763, '2FB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Athletic_Raceway', '', '', 0, '051', 'nMR', 'nMR'),
(729, 'Aura Metropolis', 780, 'Custom', 'v1.2b', 'SpyKid', 764, '2FC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Aura_Metropolis', '', '', 0, '219', 'sMC3', 'MH'),
(730, 'Aurora Area', 781, 'Custom', 'v1.6', 'Kozakura', 765, '2FD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Aurora_Area', '', '', 0, '784', 'gSGB', 'nSL'),
(731, 'Autumn Forest', 782, 'Custom', 'v1.2', 'JorisMKW', 766, '2FE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Autumn_Forest', '', '', 0, '188', 'MT', 'MT'),
(732, 'Autumn Leavesway II', 783, 'Custom', 'v2.2.mkd', 'SpyKid, Riidefi', 767, '2FF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Autumn_Leavesway_II', '', '', 0, '332', 'MT', 'MT'),
(733, 'Autumn Path', 784, 'Custom', 'v1.05', 'Okin', 768, '300', 0, '', 0, 'https://wiki.tockdom.com/wiki/Autumn_Path', '', '', 0, '596', 'MT', 'MT'),
(734, 'Autumn Raceway', 785, 'Custom', 'v1.0.beta2', 'iNelom', 769, '301', 0, '', 0, 'https://wiki.tockdom.com/wiki/Autumn_Raceway', '', '', 0, '126', 'MT', 'MT'),
(735, 'Autumn Treeway', 786, 'Custom', 'v1.0', 'Odie5776, Maximiliano', 770, '302', 0, '', 0, 'https://wiki.tockdom.com/wiki/Autumn_Treeway', '', '', 0, '218', 'MT', 'MT'),
(736, 'Azria Temple', 788, 'Custom', 'v2.1', 'Jasperr, Terron', 771, '303', 0, '', 0, 'https://wiki.tockdom.com/wiki/Azria_Temple_(Jasperr_%26_Terron)', '', '', 0, '525', 'nDKJP', 'nDKJP'),
(737, 'Back to the 80s', 789, 'Custom', 'v1.1', 'WiiLuigi', 772, '304', 0, '', 0, 'https://wiki.tockdom.com/wiki/Back_to_the_80s', '', '', 0, '467', 'RR', 'RR'),
(738, 'Banished Keep', 791, 'Custom', 'X', 'Metabus', 773, '305', 1, '', 0, 'https://wiki.tockdom.com/wiki/Banished_Keep', '', '', 0, '777_1', 'nBC', 'nBC'),
(739, 'Banished Keep', 792, 'Custom', 'v1.4.1.1.1', 'Metabus', 774, '306', 2, '305', 0, 'https://wiki.tockdom.com/wiki/Banished_Keep', '', '', 0, '777_1', 'nBC', 'nBC'),
(740, 'Edge of Infinity', 793, 'Custom', 'v1.0', 'ISwearChris', 775, '307', 2, '305', 0, 'https://wiki.tockdom.com/wiki/Edge_of_Infinity_(Banished_Keep_Texture)', '', '', 0, '777_2', 'nBC', 'nBC'),
(741, 'Banished Courtyard', 794, 'Custom', 'v1.0', 'ZPL', 776, '308', 2, '305', 0, 'https://wiki.tockdom.com/wiki/Banished_Courtyard_(Banished_Keep_Texture)', '', '', 0, 'BK_BC_Z', 'dPG', 'dPG'),
(742, 'Sabulous Sandcastle', 795, 'Custom', 'v1.0', 'Krummers', 777, '309', 2, '305', 0, 'https://wiki.tockdom.com/wiki/Sabulous_Sandcastle_(Banished_Keep_Texture)', '', '', 0, 'BK_SS_K', 'KC', 'KC'),
(743, 'Banshee Boardwalk 2', 796, 'Custom', 'Beta 1', 'Luke Chandler', 778, '30A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Banshee_Boardwalk_2', '', '', 0, '389', 'sGV2', 'sGV2'),
(744, 'Bash \'n\' Dash \'n\' Bash', 797, 'Custom', 'v1.3', 'Sucht93a', 779, '30B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bash_%27n%27_Dash_%27n%27_Bash', '', '', 0, '210', 'dDS', 'aFS'),
(745, 'BassBasher City', 798, 'Custom', 'v1.1', 'Scye, SpyKid', 780, '30C', 0, '', 0, 'https://wiki.tockdom.com/wiki/BassBasher_City', '', '', 0, '197', 'GV', 'GV'),
(746, 'Bayside Boulevard', 799, 'Custom', 'v1.2', 'SpyKid', 781, '30D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bayside_Boulevard', '', '', 0, '145', 'KC', 'CM'),
(747, 'Beach Tunnel Maze', 800, 'Custom', 'v1.1', 'NBKevin98x', 782, '30E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Beach_Tunnel_Maze', '', '', 0, '102', 'DDR', 'DDR'),
(748, 'Beagle Plains', 801, 'Custom', 'v2.2', 'Lovelifeandtpose024', 783, '30F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Beagle_Plains_(Lovelifeandtpose024)', '', '', 0, '447', 'dPG', 'dPG'),
(749, 'Beanstalk Castle', 802, 'Custom', 'v1.0', 'Lovelifeandtpose024', 784, '310', 0, '', 0, 'https://wiki.tockdom.com/wiki/Beanstalk_Castle', '', '', 0, '757', 'MG', 'MG'),
(750, 'Beginner Circuit', 803, 'Custom', 'v1.1', 'MrDark35000vr', 785, '311', 0, '', 0, 'https://wiki.tockdom.com/wiki/Beginner_Circuit', '', '', 0, '506', 'MC', 'MC'),
(751, 'Behind the Curtain', 804, 'Custom', 'v1.0', 'LucioWins', 786, '312', 0, '', 0, 'https://wiki.tockdom.com/wiki/Behind_the_Curtain', '', '', 0, '886', 'nBC', 'nBC'),
(752, 'Beware of Bouldergeist', 805, 'Custom', 'v1.0', 'CarryOn', 787, '313', 0, '', 0, 'https://wiki.tockdom.com/wiki/Beware_of_Bouldergeist', '', '', 0, '640', 'sGV2', 'sGV2'),
(753, 'Bi Skies', 806, 'Custom', 'v2.0', 'Dreacastian-Turnip', 788, '314', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bi_Skies', '', '', 0, '1031', 'MG', 'MG'),
(754, 'Big Express City', 807, 'Custom', 'X', 'lgmb', 789, '315', 1, '', 0, 'https://wiki.tockdom.com/wiki/Big_Express_City', '', '', 0, '330_1', 'MC', 'MC'),
(755, 'Big Express City', 808, 'Custom', 'v1.7.mornin', 'lgmb', 790, '316', 2, '315', 0, 'https://wiki.tockdom.com/wiki/Big_Express_City', '', '', 0, '330_1', 'MC', 'MC'),
(756, 'Big Express City', 809, 'Custom', 'v1.7.night', 'lgmb', 791, '317', 2, '315', 0, 'https://wiki.tockdom.com/wiki/Big_Express_City', '', '', 0, '330_2', 'MC', 'MH'),
(757, 'Big Nature City', 810, 'Custom', 'v2.6', 'lgmb', 792, '318', 0, '', 0, 'https://wiki.tockdom.com/wiki/Big_Nature_City', '', '', 0, '242', 'MH', 'dDS'),
(758, 'BIG SHOT', 811, 'Custom', 'v1.0', 'Saiveeon', 793, '319', 0, '', 0, 'https://wiki.tockdom.com/wiki/BIG_SHOT', '', '', 0, '880', 'MH', 'MH'),
(759, 'Big World Way', 813, 'Custom', 'v1.8', 'lgmb', 794, '31A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Big_World_Way', '', '', 0, '179', 'RR', 'RR'),
(760, 'Bigmouth Bay', 814, 'Custom', 'Beta', 'Questorian', 795, '31B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bigmouth_Bay', '', '', 0, '638', 'KC', 'KC'),
(761, 'Binary Highway', 815, 'Custom', 'v1.0', 'Dreacastian-Turnip', 796, '31C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Binary_Highway', '', '', 0, '1228', 'RR', 'RR'),
(762, 'Bioluminescent Lab', 816, 'Custom', 'v1.0', 'LucioWins', 797, '31D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bioluminescent_Lab', '', '', 0, 'BL_L', 'TF', 'TF'),
(763, 'Birdo Circuit', 818, 'Custom', 'v1.2b', 'Fuffina', 798, '31E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Birdo_Circuit', '', '', 0, '957', 'MC', 'MC'),
(764, 'Birdo Island', 819, 'Custom', 'v1.0-hotfix', 'Kozakura', 799, '31F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Birdo_Island_(Kozakura)', '', '', 0, '1136', 'dYF', 'dYF'),
(765, 'Birthday Park', 820, 'Custom', 'v1.0.1', 'BlueSky', 800, '320', 0, '', 0, 'https://wiki.tockdom.com/wiki/Birthday_Park', '', '', 0, '212', 'MC', 'MC'),
(766, 'Birthday Party', 821, 'Custom', 'v2.0', 'JorisMKW', 801, '321', 0, '', 0, 'https://wiki.tockdom.com/wiki/Birthday_Party', '', '', 0, '189', 'dDS', 'gWS'),
(767, 'Bitland Bash', 822, 'Custom', 'v1.1', 'Kozakura', 802, '322', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bitland_Bash', '', '', 0, '827', 'sMC3', 'sMC3'),
(768, 'Blackrose Castle', 823, 'Custom', 'v1.0.hp', 'SpyKid', 803, '323', 0, '', 0, 'https://wiki.tockdom.com/wiki/Blackrose_Castle', '', '', 0, '168', 'MG', 'nBC'),
(769, 'Blazing Subterrane', 824, 'Custom', 'v1.0', 'KevinVG207', 804, '324', 0, '', 0, 'https://wiki.tockdom.com/wiki/Blazing_Subterrane', '', '', 0, '551', 'GV', 'GV'),
(770, 'Blender', 825, 'Custom', 'v2.92', 'MysterE99', 805, '325', 0, '', 0, 'https://wiki.tockdom.com/wiki/Blender_(Custom_Track)', '', '', 0, '663', 'RR', 'RR'),
(771, 'Blissful Block', 826, 'Custom', 'X', 'Strobenz', 806, '326', 1, '', 2, 'https://wiki.tockdom.com/wiki/Blissful_Block', '', '', 0, '1141', 'MH', 'MH'),
(772, 'Blissful Block', 827, 'Custom', 'v2.2', 'Strobenz', 807, '327', 2, '326', 2, 'https://wiki.tockdom.com/wiki/Blissful_Block', '', '', 0, '1141', 'MH', 'MH'),
(773, 'Blissful Block', 828, 'Custom', 'v2.2 (Dawn)', 'Strobenz', 808, '328', 2, '326', 2, 'https://wiki.tockdom.com/wiki/Blissful_Block', '', '', 0, 'BB_S_Dawn', 'MH', 'MH'),
(774, 'Blizzard\'s Rise', 829, 'Custom', 'v1.5', 'Metabus', 809, '329', 0, '', 0, 'https://wiki.tockdom.com/wiki/Blizzard%27s_Rise', '', '', 0, '854', 'DKS', 'DKS'),
(775, 'Blood Fire Sky', 830, 'Custom', 'v1.0', 'Thed0ra7z', 810, '32A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Blood_Fire_Sky', '', '', 0, '148', 'GV', 'GV'),
(776, 'Bloodstone', 831, 'Custom', 'v1.0', 'Doffed Tay', 811, '32B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bloodstone', '', '', 0, '1048', 'nBC', 'nBC'),
(777, 'Blossoming Ruins', 832, 'Custom', 'Beta', 'Birj, ISwearChris, Yoshii', 812, '32C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Blossoming_Ruins', '', '', 0, '1043', 'MT', 'MT'),
(778, 'Blowy Breezeway', 833, 'Custom', 'v1.0', 'Bri911', 813, '32D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Blowy_Breezeway', '', '', 0, '634', 'MG', 'MG'),
(779, 'Blue Loop', 834, 'Custom', 'v2.1', 'Kozakura', 814, '32E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Blue_Loop_(Kozakura)', '', '', 0, '763', 'nSL', 'nSL'),
(780, 'Bob-omb Raceway', 835, 'Custom', 'v1.12', 'FunkyRacer', 815, '32F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bob-omb_Raceway', '', '', 0, '882', 'gDKM', 'gDKM'),
(781, 'Bonita Harbor', 836, 'Custom', 'Beta', 'AltairYoshi', 816, '330', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bonita_Harbor', '', '', 0, '628', 'DC', 'DC'),
(782, 'Bonneton Raceway', 837, 'Custom', 'v2.1', 'TheGamingBram', 817, '331', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bonneton_Raceway', '', '', 0, '931', 'RR', 'RR'),
(783, 'Boo York Park', 838, 'Custom', 'v1.0', 'Bruh de la Boi', 818, '332', 0, '', 0, 'https://wiki.tockdom.com/wiki/Boo_York_Park', '', '', 0, '635', 'sGV2', 'sGV2'),
(784, 'Boos\' Hideout', 839, 'Custom', 'v1.0', 'Wraith Hopper', 819, '333', 0, '', 0, 'https://wiki.tockdom.com/wiki/Boos%27_Hideout', '', '', 0, '1089', 'sGV2', 'sGV2'),
(785, 'Boshi Skatepark', 840, 'Custom', 'v1.3', 'Luke Chandler', 820, '334', 0, '', 0, 'https://wiki.tockdom.com/wiki/Boshi_Skatepark', '', '', 0, '369', 'dPG', 'dPG'),
(786, 'Botania', 841, 'Custom', 'v2.0', 'SpyKid', 821, '335', 0, '', 0, 'https://wiki.tockdom.com/wiki/Botania', '', '', 0, '294', 'MMM', 'MMM'),
(787, 'Boulder Crossing', 842, 'Custom', 'v1.1', 'Lovelifeandtpose024', 822, '336', 0, '', 0, 'https://wiki.tockdom.com/wiki/Boulder_Crossing', '', '', 0, '701', 'gDKM', 'gDKM'),
(788, 'Bouncy Cheddar Raceway', 843, 'Custom', 'v1.0 Hotfix', '._.', 823, '337', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bouncy_Cheddar_Raceway', '', '', 0, '920', 'gMC', 'gMC'),
(789, 'Bouncy Farm II', 844, 'Custom', 'v2.2', '4TLPati', 824, '338', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bouncy_Farm_II', '', '', 0, '110', 'MMM', 'MMM'),
(790, 'Bowser Jr.\'s Crafty Castle', 845, 'Custom', 'Beta+++', 'Fuffina, Shorky', 825, '339', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bowser_Jr.%27s_Crafty_Castle', '', '', 0, '1045', 'dDS', 'dDS'),
(791, 'Bowser Jr.\'s Fort', 846, 'Custom', 'v1.2', 'MrFluffy', 826, '33A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bowser_Jr.%27s_Fort_(MrFluffy)', '', '', 0, '911', 'nBC', 'nBC'),
(792, 'Bowser\'s Dark Castle', 847, 'Custom', 'v1.0', 'Justin', 827, '33B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bowser%27s_Dark_Castle_(Justin)', '', '', 0, '681', 'nBC', 'nBC'),
(793, 'Bowser\'s Flooded Castle', 848, 'Custom', 'v1.0.opt', 'ZPL', 828, '33C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bowser%27s_Flooded_Castle_(ZPL)', '', '', 0, '802', 'gBC3', 'gBC3'),
(794, 'Bowser\'s Lava Lair', 849, 'Custom', 'v1.7', 'Anoob', 829, '33D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bowser%27s_Lava_Lair', '', '', 0, '345', 'BC', 'BC'),
(795, 'Bowser\'s Termination Station', 851, 'Custom', 'v1.2', 'SquireTurnbolt, TL, bugsy', 830, '33E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bowser%27s_Termination_Station', '', '', 0, '836', 'gBC3', 'gBC3'),
(796, 'Brain Age Circuit', 852, 'Custom', 'v1.2b', 'Joe', 831, '33F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Brain_Age_Circuit', '', '', 0, '440', 'sGV2', 'sGV2'),
(797, 'Bram Circuit', 853, 'Custom', 'v1.1', 'TheGamingBram', 832, '340', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bram_Circuit', '', '', 0, '540', 'MC', 'MC'),
(798, 'Bram\'s Digital Raceway', 854, 'Custom', 'v1.1', 'TheGamingBram', 833, '341', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bram%27s_Digital_Raceway', '', '', 0, '906', 'RR', 'RR'),
(799, 'Bram\'s Trick Stadium', 855, 'Custom', 'v1.2', 'TheGamingBram', 834, '342', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bram%27s_Trick_Stadium', '', '', 0, '1077', 'dDS', 'gWS'),
(800, 'Broken Circuit', 856, 'Custom', 'v1.0', 'Toadette Hack Fan', 835, '343', 0, '', 0, 'https://wiki.tockdom.com/wiki/Broken_Circuit', '', '', 0, '1224', 'MC', 'MC'),
(801, 'Bullet Bill Chill', 858, 'Custom', 'v1.0', 'Shorky', 836, '344', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bullet_Bill_Chill', '', '', 0, '973', 'DKS', 'DKS'),
(802, 'Caliginous Valley', 860, 'Custom', 'v1.0.ctj', 'Questorian, Trainiax', 837, '345', 0, '', 0, 'https://wiki.tockdom.com/wiki/Caliginous_Valley', '', '', 0, '730', 'MT', 'MT'),
(803, 'Camp Kartigan', 861, 'Custom', 'v1.3', 'MrFluffy', 838, '346', 0, '', 0, 'https://wiki.tockdom.com/wiki/Camp_Kartigan', '', '', 0, '519', 'MH', 'MT'),
(804, 'Canary Bay', 862, 'Custom', 'v3.2 ', 'NinYoda1', 839, '347', 0, '', 0, 'https://wiki.tockdom.com/wiki/Canary_Bay', '', '', 0, '132', 'DC', 'DC'),
(805, 'Candy Bay', 863, 'Custom', 'Beta-Hotfix', 'ChisSilver64, Anoob', 840, '348', 0, '', 0, 'https://wiki.tockdom.com/wiki/Candy_Bay', '', '', 0, '549', 'dDS', 'gWS'),
(806, 'Candy Coaster', 864, 'Custom', 'v3.12.mkd', 'SpyKid', 841, '349', 0, '', 0, 'https://wiki.tockdom.com/wiki/Candy_Coaster', '', '', 0, '099', 'MT', 'DC'),
(807, 'Candy Mountains', 865, 'Custom', 'v1b', 'DJ Lowgey, Mewtwo2000, MrKoeikoei', 842, '34A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Candy_Mountains', '', '', 0, '129', 'dYF', 'dYF'),
(808, 'CandyCorp Canyon', 866, 'Custom', 'Beta 2', 'Atmosphere, Shorky', 843, '34B', 0, '', 0, 'https://wiki.tockdom.com/wiki/CandyCorp_Canyon', '', '', 0, '803', 'TF', 'TF'),
(809, 'Cannon City III', 867, 'Custom', 'v1.0', 'Jasperr, ZPL', 844, '34C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cannon_City_III', '', '', 0, '485', 'MH', 'MH'),
(810, 'Canyon Arena', 868, 'Custom', 'v1.1', 'Bri911', 845, '34D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Canyon_Arena', '', '', 0, '641', 'dDS', 'gWS'),
(811, 'Canyon Craft', 869, 'Custom', 'v1.1', 'CarryOn', 846, '34E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Canyon_Craft', '', '', 0, '646', 'MMM', 'MMM'),
(812, 'Canyon Run', 870, 'Custom', 'v1.0.mkd', 'GredMega', 847, '34F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Canyon_Run', '', '', 0, '164', 'gDKM', 'gDKM'),
(813, 'Captains\' Shore', 871, 'Custom', 'v1.0-RC1', 'baral', 848, '350', 0, '', 0, 'https://wiki.tockdom.com/wiki/Captains%27_Shore', '', '', 0, '1069', 'KC', 'KC'),
(814, 'Cargo Bay', 872, 'Custom', 'v1.0', 'Shorky', 849, '351', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cargo_Bay', '', '', 0, '858', 'KC', 'KC'),
(815, 'Carnival Cliff', 873, 'Custom', 'v1.0', 'Maximumsonic', 850, '352', 0, '', 0, 'https://wiki.tockdom.com/wiki/Carnival_Cliff', '', '', 0, '624', 'LC', 'MC'),
(816, 'Carrington Cove', 874, 'Custom', 'RC1', 'JDS, Kozakura', 851, '353', 0, '', 0, 'https://wiki.tockdom.com/wiki/Carrington_Cove', '', '', 0, '563', 'nSL', 'nSL'),
(817, 'Cascade Jungle', 876, 'Custom', 'v2.mkd2', 'JDS', 852, '354', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cascade_Jungle', '', '', 0, '406', 'nDKJP', 'nDKJP'),
(818, 'Cascade Kingdom', 877, 'Custom', 'v2.0', 'SpyKid, ZPL', 853, '355', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cascade_Kingdom', '', '', 0, '495', 'gDKM', 'gDKM'),
(819, 'Castaway Isle', 878, 'Custom', 'Beta 2', 'cpfusion', 854, '356', 0, '', 0, 'https://wiki.tockdom.com/wiki/Castaway_Isle', '', '', 0, '704', 'nDKJP', 'nDKJP'),
(820, 'Castle Adventure', 879, 'Custom', 'v1.3', 'tasrhys', 855, '357', 0, '', 0, 'https://wiki.tockdom.com/wiki/Castle_Adventure', '', '', 0, '521', 'dPG', 'dPG'),
(821, 'Castle in the Sky', 880, 'Custom', 'v1.22', 'Multimariokartds', 856, '358', 0, '', 0, 'https://wiki.tockdom.com/wiki/Castle_in_the_Sky', '', '', 0, '1156', 'MT', 'MT'),
(822, 'Castle of Darkness', 881, 'Custom', 'v2.23', 'MEGAKart69', 857, '359', 0, '', 0, 'https://wiki.tockdom.com/wiki/Castle_of_Darkness', '', '', 0, '195', 'nBC', 'nBC'),
(823, 'Castle of Hope', 882, 'Custom', 'v1.5.03', 'Lovelifeandtpose024', 858, '35A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Castle_of_Hope', '', '', 0, '465', 'dPG', 'dPG'),
(824, 'Castle of Time', 883, 'Custom', 'v2.12', 'MEGAKart69', 859, '35B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Castle_of_Time', '', '', 0, '234', 'gBC3', 'gBC3'),
(825, 'Cataquack Beach', 884, 'Custom', 'v2.1.evenin', 'ishiyama263', 860, '35C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cataquack_Beach', '', '', 0, '459', 'KC', 'KC'),
(826, 'Cave Island', 885, 'Custom', 'v2.4.mkd', 'WiiLuigi, Sniki, SpyKid', 861, '35D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cave_Island', '', '', 0, '076', 'KC', 'KC'),
(827, 'Cave Race', 886, 'Custom', 'v1.3', 'Okin', 862, '35E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cave_Race', '', '', 0, '1137', 'GV', 'GV'),
(828, 'Celestial Ruins', 887, 'Custom', 'v2.4.1', 'ChaosShadow23', 863, '35F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Celestial_Ruins', '', '', 0, '141', 'MG', 'MG'),
(829, 'Celestial Speedway', 888, 'Custom', 'v1.5', 'bugsy', 864, '360', 0, '', 0, 'https://wiki.tockdom.com/wiki/Celestial_Speedway', '', '', 0, '659', 'RR', 'RR'),
(830, 'Chargestone Caves', 889, 'Custom', 'v1.1', 'Cats4Life, Stanza', 865, '361', 0, '', 0, 'https://wiki.tockdom.com/wiki/Chargestone_Caves', '', '', 0, '1198', 'DKS', 'DKS'),
(831, 'Checkout Route', 890, 'Custom', 'v2.0', 'JadenMKW', 866, '362', 0, '', 0, 'https://wiki.tockdom.com/wiki/Checkout_Route', '', '', 0, '554', 'CM', 'CM'),
(832, 'Cheep Cheep Resort', 891, 'Custom', 'Beta 2', 'G-Force', 867, '363', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cheep_Cheep_Resort', '', '', 0, '974', 'gPB', 'gPB'),
(833, 'Cheese Moon Fortress', 892, 'Custom', 'Beta', 'CarryOn, Kozakura', 868, '364', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cheese_Moon_Fortress', '', '', 0, '828', 'DC', 'DC'),
(834, 'Cheesebow Road', 893, 'Custom', 'v1.1', 'acaruso', 869, '365', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cheesebow_Road', '', '', 0, '508', 'RR', 'RR'),
(835, 'Cherry Blossom Garden', 894, 'Custom', 'v2.3', 'Renegade Ciara, ChaosShadow23', 870, '366', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cherry_Blossom_Garden', '', '', 0, '404', 'dPG', 'dPG'),
(836, 'Cherry Grove', 895, 'Custom', 'v1.0', 'Kozakura', 871, '367', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cherry_Grove', '', '', 0, '696', 'MT', 'MT'),
(837, 'Choco Canyon', 896, 'Custom', 'v1.1', 'Dreacastian-Turnip', 872, '368', 0, '', 0, 'https://wiki.tockdom.com/wiki/Choco_Canyon', '', '', 0, '939', 'sMC3', 'sMC3'),
(838, 'Choco River', 897, 'Custom', 'Beta 2', 'i\'m Zappg, ._.', 873, '369', 0, '', 0, 'https://wiki.tockdom.com/wiki/Choco_River', '', '', 0, '804', 'gMC', 'gMC'),
(839, 'Chomp Around', 898, 'Custom', 'Beta', 'Slimeserver', 874, '36A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Chomp_Around', '', '', 0, '722', 'TF', 'TF'),
(840, 'Chomp Canyon', 899, 'Custom', 'v0.1', 'Questorian', 875, '36B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Chomp_Canyon_(Questorian)', '', '', 0, '685', 'dYF', 'dYF');
INSERT INTO `mkvn_tracks` (`ID`, `Track_Name`, `TrackSort`, `Track_Type`, `Track_version`, `Track_Creator`, `Track_DEC_ID`, `Track_Hex_ID`, `Slot_Type`, `SubTrackTo`, `NewTrack`, `Wiki_Link`, `DLC_Music_Name`, `DLC_Music_YT_EMBED`, `DLC_Music_PackID`, `Local_File`, `Tprop`, `Tmus`) VALUES
(841, 'Chomp Valley', 900, 'Custom', 'v1.6.2', 'Skipper93653, TheGamingBram', 876, '36C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Chomp_Valley_(Skipper93653_%26_TheGamingBram)', '', '', 0, '314', 'gPB', 'gPB'),
(842, 'Chomplabs', 901, 'Custom', 'v1.1', 'Bruh de la Boi, Lovelifeandtpose024', 877, '36D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Chomplabs', '', '', 0, '604', 'TF', 'TF'),
(843, 'Christmas Coast', 902, 'Custom', 'v1.0', 'Kozakura', 878, '36E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Christmas_Coast', '', '', 0, '815', 'DKS', 'DKS'),
(844, 'Christmas Factory', 903, 'Custom', 'v1.0', 'ZPL', 879, '36F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Christmas_Factory', '', '', 0, '818', 'DKS', 'DKS'),
(845, 'Christmas Wish', 904, 'Custom', 'v1.1', 'Jiyuu', 880, '370', 0, '', 0, 'https://wiki.tockdom.com/wiki/Christmas_Wish_(Jiyuu)', '', '', 0, '402', 'DKS', 'DKS'),
(846, 'Circuit Raceway', 905, 'Custom', 'v2.0', 'Questorian', 881, '371', 0, '', 0, 'https://wiki.tockdom.com/wiki/Circuit_Raceway', '', '', 0, '534', 'sMC3', 'sMC3'),
(847, 'Circuit Speedway', 906, 'Custom', 'v1.2.mkd2 ', 'EdwardJW', 882, '372', 0, '', 0, 'https://wiki.tockdom.com/wiki/Circuit_Speedway', '', '', 0, '292', 'LC', 'MC'),
(848, 'Citro\'s Wedding Altar', 907, 'Custom', 'v2.2', 'SpyKid', 883, '373', 0, '', 0, 'https://wiki.tockdom.com/wiki/Citro%27s_Wedding_Altar', '', '', 0, '055', 'dPG', 'dPG'),
(849, 'Citrusland', 908, 'Custom', 'Beta 2', 'Atmosphere', 884, '374', 0, '', 0, 'https://wiki.tockdom.com/wiki/Citrusland', '', '', 0, '837', 'sMC3', 'sMC3'),
(850, 'Citrus\'s Overgrown Lemon Garden', 909, 'Custom', 'v1.0', 'Lovelifeandtpose024', 885, '375', 0, '', 0, 'https://wiki.tockdom.com/wiki/Citrus%27s_Overgrown_Lemon_Garden', '', '', 0, '834', 'MG', 'MG'),
(851, 'Cityside Nature', 910, 'Custom', 'Beta 2.4-da', 'Rz', 886, '376', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cityside_Nature', '', '', 0, '229', 'dPG', 'dPG'),
(852, 'Cliff Village', 911, 'Custom', 'v3.2', 'SpyKid', 887, '377', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cliff_Village', '', '', 0, '061', 'DC', 'DC'),
(853, 'Cliffside Circuit', 912, 'Custom', 'X', 'AltairYoshi', 888, '378', 1, '', 0, 'https://wiki.tockdom.com/wiki/Cliffside_Circuit', '', '', 0, '368_1', 'MG', 'MG'),
(854, 'Cliffside Circuit', 913, 'Custom', 'v2.3.day', 'AltairYoshi', 889, '379', 2, '378', 0, 'https://wiki.tockdom.com/wiki/Cliffside_Circuit', '', '', 0, '368_1', 'MG', 'MG'),
(855, 'Cliffside Circuit', 914, 'Custom', 'v2.3.night ', 'AltairYoshi', 890, '37A', 2, '378', 0, 'https://wiki.tockdom.com/wiki/Cliffside_Circuit', '', '', 0, '368_2', 'MG', 'MG'),
(856, 'Cliffside Circuit', 915, 'Custom', 'v2.3.sunset', 'AltairYoshi', 891, '37B', 2, '378', 0, 'https://wiki.tockdom.com/wiki/Cliffside_Circuit', '', '', 0, '368_3', 'MG', 'MG'),
(857, 'Cliffside Court', 916, 'Custom', 'v1.23', 'Luke Chandler', 892, '37C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cliffside_Court', '', '', 0, '358', 'nBC', 'nBC'),
(858, 'Cliffside Falls', 917, 'Custom', 'v1.1', 'Jasperr, ZPL, Fatality94', 893, '37D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cliffside_Falls', '', '', 0, '409', 'MG', 'MG'),
(859, 'Cloud Mist Castle', 918, 'Custom', 'v1.0.opt', 'BroOFun', 894, '37E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cloud_Mist_Castle', '', '', 0, '1193', 'DKS', 'DKS'),
(860, 'Cloudy Climb', 919, 'Custom', 'v1.0', 'Shorky', 895, '37F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cloudy_Climb', '', '', 0, '1162', 'MMM', 'anSS'),
(861, 'Cloudy Courtway', 920, 'Custom', 'v1.2', 'Shorky', 896, '380', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cloudy_Courtway', '', '', 0, '787', 'gPB', 'gPB'),
(862, 'Codename: BIGBOX', 922, 'Custom', 'v2.8 (5LAP)', 'Guilmon', 897, '381', 0, '', 0, 'https://wiki.tockdom.com/wiki/Codename:_BIGBOX', '', '', 0, '033', 'dDH', 'dDH'),
(863, 'Codename: WARIO\'', 923, 'Custom', 'v2.0', 'Questorian, JadenMKW', 898, '382', 0, '', 0, 'https://wiki.tockdom.com/wiki/Codename:_WARIO%27', '', '', 0, '552', 'WGM', 'WGM'),
(864, 'Cogwheel Chasm', 924, 'Custom', 'Beta', 'Bri911', 899, '383', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cogwheel_Chasm', '', '', 0, '859', 'sMC3', 'sMC3'),
(865, 'Coin Heaven', 925, 'Custom', 'v2.2', 'TacoJosh', 900, '384', 0, '', 0, 'https://wiki.tockdom.com/wiki/Coin_Heaven', '', '', 0, '520', 'MC', 'MC'),
(866, 'Cold Red', 926, 'Custom', 'Beta 1.1', 'G-Force', 901, '385', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cold_Red', '', '', 0, '1058', 'DKS', 'DKS'),
(867, 'Color Circuit', 927, 'Custom', 'v1.2c', 'Okin, Rinorocks', 902, '386', 0, '', 0, 'https://wiki.tockdom.com/wiki/Color_Circuit', '', '', 0, '405', 'RR', 'RR'),
(868, 'Color Wonderland', 928, 'Custom', 'v2.04', 'SpyKid', 903, '387', 0, '', 0, 'https://wiki.tockdom.com/wiki/Color_Wonderland', '', '', 0, '167', 'RR', 'RR'),
(869, 'Colorful Cathedral', 929, 'Custom', 'v1.1', 'Fuffina, Atmosphere', 904, '388', 0, '', 0, 'https://wiki.tockdom.com/wiki/Colorful_Cathedral', '', '', 0, '1139', 'LC', 'MC'),
(870, 'Comfort Food Circuit', 930, 'Custom', 'v1.1 Hotfix', 'Flooferdog', 905, '389', 0, '', 0, 'https://wiki.tockdom.com/wiki/Comfort_Food_Circuit', '', '', 0, 'CFC_F', 'CM', 'CM'),
(871, 'Compact Highway', 931, 'Custom', 'v2.6', 'MKWLH1000', 906, '38A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Compact_Highway', '', '', 0, '118', 'sMC3', 'sMC3'),
(872, 'Concord Cape', 932, 'Custom', 'v1.0', 'Kozakura', 907, '38B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Concord_Cape', '', '', 0, '896', 'MT', 'MT'),
(873, 'Concord Town', 933, 'Custom', 'v4.0.1', 'RemyInTheSky', 908, '38C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Concord_Town', '', '', 0, '086', 'dDS', 'dDS'),
(874, 'Confectionery Cliffs', 934, 'Custom', 'v1.0', 'Bear, ZPL', 909, '38D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Confectionery_Cliffs', '', '', 0, '814', 'gMC', 'gMC'),
(875, 'Constellation Cliffs', 935, 'Custom', 'v1.2', 'bugsy', 910, '38E', 0, '', 2, 'https://wiki.tockdom.com/wiki/Constellation_Cliffs', '', '', 0, '642', 'RR', 'RR'),
(876, 'Containers Raceway', 936, 'Custom', 'v2.3-hotfix', 'Hollend', 911, '38F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Containers_Raceway', '', '', 0, '384', 'DC', 'DC'),
(877, 'Conveyor Conundrum', 937, 'Custom', 'v2.0-hotfix', 'Bri911', 912, '390', 0, '', 0, 'https://wiki.tockdom.com/wiki/Conveyor_Conundrum', '', '', 0, '392_1', 'TF', 'TF'),
(878, 'Cookie Village', 938, 'Custom', 'v1.3', 'WiiLuigi, SpyKid', 913, '391', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cookie_Village', '', '', 0, '149', 'dYF', 'dYF'),
(879, 'Cool Castle Canyon', 939, 'Custom', 'v1.0', 'Sniki', 914, '392', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cool_Castle_Canyon', '', '', 0, '249', 'KC', 'KC'),
(880, 'Coral Cape', 940, 'Custom', 'v1.0', 'Terron', 915, '393', 0, '', 0, 'https://wiki.tockdom.com/wiki/Coral_Cape_(Terron)', '', '', 0, '677', 'KC', 'KC'),
(881, 'Cosmic Grove', 941, 'Custom', 'v1.1', 'TL', 916, '394', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cosmic_Grove', '', '', 0, '1231', 'LC', 'MT'),
(882, 'Cosmo Garden', 942, 'Custom', 'v2.1', 'YoshTaku, JadenMKW', 917, '395', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cosmo_Garden', '', '', 0, '515', 'RR', 'RR'),
(883, 'Cottonplant Forest', 943, 'Custom', 'X', 'Rz', 918, '396', 1, '', 0, 'https://wiki.tockdom.com/wiki/Cottonplant_Forest', '', '', 0, '329', 'MT', 'MT'),
(884, 'Cottonplant Forest', 944, 'Custom', 'v1.0', 'Rz', 919, '397', 2, '396', 0, 'https://wiki.tockdom.com/wiki/Cottonplant_Forest', '', '', 0, '329_1', 'MT', 'MT'),
(885, 'Sakura Forest', 945, 'Custom', 'v1.0', 'Rz', 920, '398', 2, '396', 0, 'https://wiki.tockdom.com/wiki/Sakura_Forest_(Cottonplant_Forest_Texture)', '', '', 0, '329_3', 'MT', 'MT'),
(886, 'Winter Forest', 946, 'Custom', 'v1.0', 'Rz', 921, '399', 2, '396', 0, 'https://wiki.tockdom.com/wiki/Winter_Forest_(Cottonplant_Forest_Texture)', '', '', 0, '329_2', 'MT', 'MT'),
(887, 'Counterstrike Circuit', 947, 'Custom', 'v1.0', 'Dreacastian-Turnip', 922, '39A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Counterstrike_Circuit', '', '', 0, '1025', 'RR', 'adTH'),
(888, 'Crazy-8 Circuit', 949, 'Custom', 'Alpha 2', 'Cotni', 923, '39B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Crazy-8_Circuit', '', '', 0, '970', 'LC', 'MC'),
(889, 'Criss Cross Canyon', 950, 'Custom', 'Beta', 'Slimeserver', 924, '39C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Criss_Cross_Canyon', '', '', 0, '712', 'WGM', 'WGM'),
(890, 'Crossingville', 951, 'Custom', 'v1.0a', 'xBlue98', 925, '39D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Crossingville', '', '', 0, '177', 'MMM', 'MMM'),
(891, 'Crossway Summit', 952, 'Custom', 'v1.0', 'Questorian', 926, '39E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Crossway_Summit', '', '', 0, '728', 'DKS', 'DKS'),
(892, 'Crystal Caverns', 953, 'Custom', 'Beta 0.1-ho', 'Kolli40000', 927, '39F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Crystal_Caverns', '', '', 0, '1099', 'MG', 'MG'),
(893, 'Crystal Cove', 954, 'Custom', 'v1.0', 'NakDak, Jasperr', 928, '3A0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Crystal_Cove', '', '', 0, '505', 'WGM', 'WGM'),
(894, 'Crystal Dungeon', 955, 'Custom', 'v3.42', 'SpyKid', 929, '3A1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Crystal_Dungeon', '', '', 0, '066', 'MT', 'MT'),
(895, 'Crystal Plains', 956, 'Custom', 'v1.2', 'Sniki', 930, '3A2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Crystal_Plains', '', '', 0, '284', 'MMM', 'MMM'),
(896, 'Crystals Have Power', 957, 'Custom', 'Beta', 'Chouchintosh', 931, '3A3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Crystals_Have_Power', '', '', 0, '1106', 'KC', 'KC'),
(897, 'CT Cemetery', 958, 'Custom', 'Alpha', 'Riidefi', 932, '3A4', 0, '', 0, 'https://wiki.tockdom.com/wiki/CT_Cemetery', '', '', 0, '648', 'nBC', 'nBC'),
(898, 'CTRR 2: Capital at Risk', 959, 'Custom', 'v1.0', 'Lovelifeandtpose024', 933, '3A5', 0, '', 0, 'https://wiki.tockdom.com/wiki/CTRR_2:_Capital_at_Risk', '', '', 0, '1170', 'gSGB', 'gSGB'),
(899, 'Custom Track Russian Roulette', 960, 'Custom', 'v1.1', 'Lovelifeandtpose024', 934, '3A6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Custom_Track_Russian_Roulette', '', '', 0, '888', 'gSGB', 'aCCW'),
(900, 'Cyber Island', 961, 'Custom', 'v1.0', 'AlexTG4517', 935, '3A7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cyber_Island', '', '', 0, '1234', 'LC', 'MC'),
(901, 'Cyberstate', 962, 'Custom', 'v2.0', 'Scye, SpyKid', 936, '3A8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cyberstate', '', '', 0, '153', 'gBC3', 'gBC3'),
(902, 'Daisy Gardens', 963, 'Custom', 'v2.2e.mkd', 'xBlue98', 937, '3A9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Daisy_Gardens', '', '', 0, '156', 'dPG', 'dPG'),
(903, 'Daisy\'s Palace', 964, 'Custom', 'v1.4', 'JorisMKW', 938, '3AA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Daisy%27s_Palace_(JorisMKW)', '', '', 0, '476', 'nDKJP', 'MT'),
(904, 'Dark Matter Fortress', 965, 'Custom', 'v1.7.3', 'Justin', 939, '3AB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dark_Matter_Fortress', '', '', 0, '566', 'nBC', 'nBC'),
(905, 'Dark Matter Shrine', 966, 'Custom', 'v1.2', 'Sniki', 940, '3AC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dark_Matter_Shrine', '', '', 0, '255', 'RR', 'RR'),
(906, 'Dawn Township', 967, 'Custom', 'v2.6.1', 'Jiyuu', 941, '3AD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dawn_Township', '', '', 0, '353', 'RR', 'RR'),
(907, 'Death by Glamour', 968, 'Custom', 'v1.5', 'CarryOn', 942, '3AE', 0, '', 2, 'https://wiki.tockdom.com/wiki/Death_by_Glamour', '', '', 0, '1003', 'MC', 'MC'),
(908, 'Deciduous Grounds', 969, 'Custom', 'v1.2', 'Antares', 943, '3AF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Deciduous_Grounds', '', '', 0, '811', 'DC', 'DC'),
(909, 'Delfino Bay', 970, 'Custom', 'v1.2c', 'BillyNoodles', 944, '3B0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Delfino_Bay', '', '', 0, '352', 'dDS', 'dDS'),
(910, 'Delfino Island', 971, 'Custom', 'v3.5.4', 'Vulcanus2', 945, '3B1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Delfino_Island_(Vulcanus2)', '', '', 0, '034', 'dDS', 'dDS'),
(911, 'Delfino Island', 972, 'Custom', 'v1.1.1', 'ZPL', 946, '3B2', 0, '', 2, 'https://wiki.tockdom.com/wiki/Delfino_Island_(ZPL)', '', '', 0, '1175', 'dDS', 'dDS'),
(912, 'Delfino Isle', 973, 'Custom', 'Beta 3', '._.', 947, '3B3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Delfino_Isle', '', '', 0, '789', 'dDS', 'dDS'),
(913, 'Delfino Township', 974, 'Custom', 'Beta', 'ZPL', 948, '3B4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Delfino_Township', '', '', 0, '698', 'dDS', 'dDS'),
(914, 'Den-Z', 975, 'Custom', 'v1.0', 'Metabus', 949, '3B5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Den-Z', '', '', 0, '890', 'RR', 'RR'),
(915, 'Desert Badlands', 976, 'Custom', 'v1.0.Waltz', 'ishiyama263', 950, '3B6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Desert_Badlands', '', '', 0, '453', 'dDH', 'dDH'),
(916, 'Desert Bone', 977, 'Custom', 'v1.1', 'Putinas, AndyK', 951, '3B7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Desert_Bone', '', '', 0, '038', 'DDR', 'DDR'),
(917, 'Desert Creek', 978, 'Custom', 'v1.5', 'Okin', 952, '3B8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Desert_Creek', '', '', 0, '567', 'DDR', 'DDR'),
(918, 'Desert Cross', 979, 'Custom', 'v1.2', 'FunkyDude15', 953, '3B9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Desert_Cross_(FunkyDude15)', '', '', 0, '245', 'DDR', 'DDR'),
(919, 'Desert Fort', 980, 'Custom', 'v3.0a', 'JorisMKW', 954, '3BA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Desert_Fort', '', '', 0, '185', 'DDR', 'DDR'),
(920, 'Desert Mushroom Ruins', 981, 'Custom', 'v1.3', 'MysterE99', 955, '3BB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Desert_Mushroom_Ruins_(MysterE99)', '', '', 0, '250_1', 'DDR', 'DDR'),
(921, 'Desert Strip', 982, 'Custom', 'v1.0', 'Kozakura', 956, '3BC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Desert_Strip_(Kozakura)', '', '', 0, '779', 'DDR', 'DDR'),
(922, 'Desktop Dash', 984, 'Custom', 'v1.3', 'MysterE99', 957, '3BD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Desktop_Dash', '', '', 0, '286', 'CM', 'CM'),
(923, 'Diddy Kong\'s Summit', 985, 'Custom', 'v1.0', 'LucioWins', 958, '3BE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Diddy_Kong%27s_Summit', '', '', 0, '965', 'DKS', 'DKS'),
(924, 'Digitally Enhanced', 986, 'Custom', 'v1.0', 'Kozakura', 959, '3BF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Digitally_Enhanced_(Kozakura)', '', '', 0, '682', 'sMC3', 'sMC3'),
(925, 'Disco Fever', 987, 'Custom', 'v3.4 {ctgp}', 'xBlue98', 960, '3C0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Disco_Fever', '', '', 0, '140', 'RR', 'RR'),
(926, 'Disconnected Docks', 988, 'Custom', 'v1.0', 'Fuffina', 961, '3C1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Disconnected_Docks', '', '', 0, 'DD_F', 'gPB', 'gPB'),
(927, 'Discord Track', 989, 'Custom', 'v1.0', 'TheGamingBram', 962, '3C2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Discord_Track', '', '', 0, '1132', 'LC', 'MC'),
(928, 'Disney World Mayhem', 990, 'Custom', 'v1.1', 'Lovelifeandtpose024', 963, '3C3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Disney_World_Mayhem', '', '', 0, '707', 'gPB', 'gPB'),
(929, 'Distant Dimension', 991, 'Custom', 'v1.1', 'ZPL', 964, '3C4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Distant_Dimension', '', '', 0, '692', 'nBC', 'nBC'),
(930, 'District 65', 992, 'Custom', 'v1.5', 'Strobenz', 965, '3C5', 0, '', 0, 'https://wiki.tockdom.com/wiki/District_65', '', '', 0, '090', 'sMC3', 'MH'),
(931, 'Divine Paradise', 993, 'Custom', 'v2.2', 'ZPL', 966, '3C6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Divine_Paradise', '', '', 0, '577', 'KC', 'KC'),
(932, 'Divine Temple', 994, 'Custom', 'v3.0', 'SpyKid, Scye, Filizia', 967, '3C7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Divine_Temple', '', '', 0, '184', 'MG', 'RR'),
(933, 'DK Jungle Run', 995, 'Custom', 'v1.0', 'HackerCop', 968, '3C8', 0, '', 0, 'https://wiki.tockdom.com/wiki/DK_Jungle_Run', '', '', 0, '616', 'nDKJP', 'nDKJP'),
(934, 'Dolphin Harbor', 996, 'Custom', 'v1.0', 'SpyKid', 969, '3C9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dolphin_Harbor', '', '', 0, '683', 'dDS', 'dDS'),
(935, 'Dom Dom Islands', 997, 'Custom', 'v1.0', 'Maximiliano', 970, '3CA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dom_Dom_Islands_(Maximiliano)', '', '', 0, '363', 'MG', 'MG'),
(936, 'Donkey Kong Circuit', 998, 'Custom', 'v1.0.mkd', 'Bruh de la Boi', 971, '3CB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Donkey_Kong_Circuit', '', '', 0, '855', 'LC', 'MC'),
(937, 'Downtown Underground', 999, 'Custom', 'v1.1', 'Sucht93a', 972, '3CC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Downtown_Underground_(Sucht93a)', '', '', 0, '311', 'dDS', 'gWS'),
(938, 'Dragon Burying Grounds', 1000, 'Custom', 'v2.4', 'Multimariokartds', 973, '3CD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dragon_Burying_Grounds', '', '', 0, '342', 'nBC', 'nBC'),
(939, 'Dragonite\'s Island', 1001, 'Custom', 'Beta', 'Sucht93a, Riidefi', 974, '3CE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dragonite%27s_Island', '', '', 0, '328', 'MMM', 'MMM'),
(940, 'Dream Island', 1002, 'Custom', 'v1.0', 'Elemental', 975, '3CF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dream_Island', '', '', 0, '1223', 'DC', 'DC'),
(941, 'Dreamland Drive', 1003, 'Custom', 'v1.0', 'Squadaloo', 976, '3D0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dreamland_Drive', '', '', 0, '889', 'MMM', 'MMM'),
(942, 'Dreamworld Cloudway', 1004, 'Custom', 'v2.3', 'SpyKid', 977, '3D1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dreamworld_Cloudway', '', '', 0, '080', 'RR', 'RR'),
(943, 'Drift Brake Circuit', 1005, 'Custom', 'v1.2', 'Bri911', 978, '3D2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Drift_Brake_Circuit', '', '', 0, '441', 'gMC', 'gMC'),
(944, 'Drillbit Mine', 1007, 'Custom', 'v1.0', 'LucioWins', 979, '3D3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Drillbit_Mine', '', '', 0, '1246', 'WGM', 'WGM'),
(945, 'Drip-Drop Cavern', 1008, 'Custom', 'Beta 2', 'zatchi', 980, '3D4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Drip-Drop_Cavern', '', '', 0, '575', 'KC', 'KC'),
(946, 'Drip-Drop Den', 1009, 'Custom', 'Beta', 'Shorky', 981, '3D5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Drip-Drop_Den', '', '', 0, '904', 'gPB', 'gPB'),
(947, 'Dry Bones Drilling Co.', 1010, 'Custom', 'Beta', 'Mickeyman713', 982, '3D6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dry_Bones_Drilling_Co.', '', '', 0, 'DBDC_M', 'WGM', 'WGM'),
(948, 'Dusty Desert', 1011, 'Custom', 'v1.0', 'Kozakura', 983, '3D7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Dusty_Desert', '', '', 0, '1071', 'DDR', 'DDR'),
(949, 'Eagle\'s Nest', 1012, 'Custom', 'v1.1', 'Warwick92xD', 984, '3D8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Eagle%27s_Nest', '', '', 0, '499', 'LC', 'MC'),
(950, 'Earthview Highway', 1013, 'Custom', 'v1.0', 'Mickeyman713', 985, '3D9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Earthview_Highway', '', '', 0, 'EH_M', 'RR', 'RR'),
(951, 'E-Boom\'s Desk', 1014, 'Custom', 'v5.0', 'razero', 986, '3DA', 0, '', 0, 'https://wiki.tockdom.com/wiki/E-Boom%27s_Desk', '', '', 0, '478', 'LC', 'MC'),
(952, 'Electric Avenue', 1015, 'Custom', 'v1.0b', 'Questorian, Hman6516', 987, '3DB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Electric_Avenue', '', '', 0, '600', 'dDS', 'gWS'),
(953, 'Electric Shredder', 1016, 'Custom', 'v1.3', 'Sucht93a', 988, '3DC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Electric_Shredder', '', '', 0, '227', 'GV', 'GV'),
(954, 'Elemental Solstice', 1017, 'Custom', 'v1.0', 'Bear, Birj, ._., LucioWins, Shorky, Hamborgor, Mystora, Elemental', 989, '3DD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Elemental_Solstice', '', '', 0, '924', 'nSL', 'nSL'),
(955, 'Emerald Coast', 1018, 'Custom', 'v1.0.1', 'Squadaloo', 990, '3DE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Emerald_Coast', '', '', 0, '819', 'dYF', 'dYF'),
(956, 'Emerald Isle', 1019, 'Custom', 'v1.0', 'Slimeserver', 991, '3DF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Emerald_Isle', '', '', 0, '592_1', 'gDKM', 'gDKM'),
(957, 'Emotion Journey', 1020, 'Custom', 'RC3', 'SpyKid', 992, '3E0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Emotion_Journey', '', '', 0, '360', 'dPG', 'dPG'),
(958, 'Empty Space', 1021, 'Custom', 'v0.0', 'Questorian', 993, '3E1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Empty_Space', '', '', 0, '845', 'RR', 'RR'),
(959, 'End of the Line', 1022, 'Custom', 'v1.0', 'LUDAROBE', 994, '3E2', 0, '', 0, 'https://wiki.tockdom.com/wiki/End_of_the_Line', '', '', 0, 'EotL_L', 'RR', 'RR'),
(960, 'End Time', 1023, 'Custom', 'v1.0b', 'Lovelifeandtpose024', 995, '3E3', 0, '', 2, 'https://wiki.tockdom.com/wiki/End_Time', '', '', 0, '700', 'nBC', 'nBC'),
(961, 'Entr?e Driftway', 1024, 'Custom', 'v1.1', 'Mickeyman713', 996, '3E4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Entr%C3%A9e_Driftway', '', '', 0, 'ED_M', 'CM', 'CM'),
(962, 'Envenom Snowstorm', 1025, 'Custom', 'RC3', 'Luca', 997, '3E5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Envenom_Snowstorm', '', '', 0, '599', 'nSL', 'nSL'),
(963, 'Ermelber Circuit Deluxe', 1026, 'Custom', 'v1.0', 'Rocoloco321', 998, '3E6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Ermelber_Circuit_Deluxe', '', '', 0, '678', 'nMR', 'nMR'),
(964, 'Ermelber City', 1027, 'Custom', 'RC1', 'Ermelber, SpyKid', 999, '3E7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Ermelber_City', '', '', 0, '214', 'dDS', 'dDS'),
(965, 'Eugene Express', 1028, 'Custom', 'v1.0', 'Kozakura', 1000, '3E8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Eugene_Express', '', '', 0, '1059', 'gMC', 'gMC'),
(966, 'Evening Harbor', 1029, 'Custom', 'v4.6', 'Jiyuu', 1001, '3E9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Evening_Harbor', '', '', 0, '343', 'DC', 'DC'),
(967, 'Excitebike Adventure', 1030, 'Custom', 'v1.3', 'Seeky', 1002, '3EA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Excitebike_Adventure', '', '', 0, '411', 'dDS', 'gWS'),
(968, 'Factory Island', 1031, 'Custom', 'v1.0', 'Chouchintosh', 1003, '3EB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Factory_Island_(Chouchintosh)', '', '', 0, '1238', 'LC', 'MC'),
(969, 'Factory Island', 1032, 'Custom', 'v1.0', 'Atmosphere', 1004, '3EC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Factory_Island_(Atmosphere)', '', '', 0, '1026', 'TF', 'TF'),
(970, 'Fall Mountain Slide', 1033, 'Custom', 'Beta', 'SlipperyMac', 1005, '3ED', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fall_Mountain_Slide', '', '', 0, '513', 'MT', 'MT'),
(971, 'Farfalle Falls', 1034, 'Custom', 'v1.0', 'Elemental', 1006, '3EE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Farfalle_Falls', '', '', 0, '1110', 'dYF', 'dYF'),
(972, 'Farm Road', 1035, 'Custom', 'v1c.mkf', 'EdwardJW', 1007, '3EF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Farm_Road', '', '', 0, '298', 'MMM', 'MMM'),
(973, 'Fast-Flowing Waterworks', 1036, 'Custom', 'Beta', 'Mickeyman713', 1008, '3F0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fast-Flowing_Waterworks', '', '', 0, '1208', 'KC', 'KC'),
(974, 'Festival Town', 1037, 'Custom', 'v2.2.mkd', 'WiiLuigi', 1009, '3F1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Festival_Town', '', '', 0, '303', 'dDS', 'dDS'),
(975, 'Fettuccine Falls', 1038, 'Custom', 'v1.0', 'Shorky', 1010, '3F2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fettuccine_Falls', '', '', 0, '1113', 'gPB', 'gPB'),
(976, 'Fiery Factory, Fading Frost', 1039, 'Custom', 'v1.0', 'Cotni', 1011, '3F3', 0, '', 2, 'https://wiki.tockdom.com/wiki/Fiery_Factory,_Fading_Frost', '', '', 0, '1125', 'GV', 'GV'),
(977, 'Fiery Path', 1041, 'Custom', 'Beta', 'Anoob', 1012, '3F4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fiery_Path', '', '', 0, '460', 'LC', 'MC'),
(978, 'Final Grounds', 1042, 'Custom', 'v2.43', 'MEGAKart69', 1013, '3F5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Final_Grounds', '', '', 0, '262', 'BC', 'BC'),
(979, 'Fishdom Island', 1043, 'Custom', 'v1.01', 'Jasperr', 1014, '3F6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fishdom_Island_(Jasperr)', '', '', 0, '548', 'KC', 'KC'),
(980, 'Flash Black Forest', 1045, 'Custom', 'Beta+', 'AltairYoshi', 1015, '3F7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Flash_Black_Forest', '', '', 0, '637', 'sGV2', 'sGV2'),
(981, 'Flashing Flood', 1046, 'Custom', 'v1.0', 'Chouchintosh', 1016, '3F8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Flashing_Flood', '', '', 0, '1229', 'KC', 'KC'),
(982, 'Flooded Cavern', 1047, 'Custom', 'v1.3', 'Teamuge', 1017, '3F9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Flooded_Cavern', '', '', 0, '433', 'nDKJP', 'nDKJP'),
(983, 'Flooded Mario Circuit', 1048, 'Custom', 'v1.1', 'acaruso', 1018, '3FA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Flooded_Mario_Circuit', '', '', 0, '578', 'sMC3', 'sMC3'),
(984, 'Flooded Rainbow Road', 1049, 'Custom', 'v1.0', 'Toadette Hack Fan', 1019, '3FB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Flooded_Rainbow_Road', '', '', 0, '1184', 'RR', 'RR'),
(985, 'Flowery Greenhouse', 1050, 'Custom', 'v1.0', 'Sniki', 1020, '3FC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Flowery_Greenhouse', '', '', 0, '260', 'dPG', 'MMM'),
(986, 'Flying Colors', 1051, 'Custom', 'v2.0', 'Cats4Life', 1021, '3FD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Flying_Colors', '', '', 0, '1152', 'RR', 'RR'),
(987, 'Flying Kingdom', 1052, 'Custom', 'v1.2', 'SpyKid', 1022, '3FE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Flying_Kingdom', '', '', 0, '278', 'RR', 'dDS'),
(988, 'Foggy Forest', 1053, 'Custom', 'v1.0', 'UmbreonTurtle', 1023, '3FF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Foggy_Forest', '', '', 0, '1063', 'dYF', 'dYF'),
(989, 'Forest Creek', 1054, 'Custom', 'v1.0.5', 'Okin', 1024, '400', 0, '', 0, 'https://wiki.tockdom.com/wiki/Forest_Creek', '', '', 0, '385', 'nDKJP', 'nDKJP'),
(990, 'Forest Island', 1055, 'Custom', 'v1.2', 'lgmb', 1025, '401', 0, '', 0, 'https://wiki.tockdom.com/wiki/Forest_Island', '', '', 0, '279', 'gDKM', 'gDKM'),
(991, 'Forest of Magic', 1056, 'Custom', 'Beta', 'zatchi', 1026, '402', 0, '', 0, 'https://wiki.tockdom.com/wiki/Forest_of_Magic', '', '', 0, '582', 'MG', 'MG'),
(992, 'Forsaken Mansion', 1058, 'Custom', 'v2.0', 'SpyKid', 1027, '403', 0, '', 0, 'https://wiki.tockdom.com/wiki/Forsaken_Mansion', '', '', 0, '072', 'sGV2', 'sGV2'),
(993, 'Forsaken Paradise', 1059, 'Custom', 'Beta 4', '._., pokey-424', 1028, '404', 0, '', 0, 'https://wiki.tockdom.com/wiki/Forsaken_Paradise', '', '', 0, '942', 'nDKJP', 'nDKJP'),
(994, 'Fort Francis', 1060, 'Custom', 'v2.2', 'JadenMKW', 1029, '405', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fort_Francis', '', '', 0, '775', 'MT', 'MT'),
(995, 'Frantic Funyard', 1061, 'Custom', 'v1.1', 'Sniki', 1030, '406', 0, '', 0, 'https://wiki.tockdom.com/wiki/Frantic_Funyard', '', '', 0, '799', 'MH', 'MT'),
(996, 'Frigid Freezeway', 1062, 'Custom', 'v2.0', 'ZPL', 1031, '407', 0, '', 0, 'https://wiki.tockdom.com/wiki/Frigid_Freezeway', '', '', 0, '458', 'nSL', 'nSL'),
(997, 'Frigid Furnace', 1063, 'Custom', 'Beta', 'Atmosphere, Nozzly', 1032, '408', 0, '', 0, 'https://wiki.tockdom.com/wiki/Frigid_Furnace', '', '', 0, '1129', 'LC', 'MC'),
(998, 'Frostburn Falls', 1064, 'Custom', 'v1.1', 'AltairYoshi', 1033, '409', 0, '', 0, 'https://wiki.tockdom.com/wiki/Frostburn_Falls', '', '', 0, '734', 'DKS', 'DKS'),
(999, 'Frosty Mountains', 1065, 'Custom', 'v1.5', 'Kozakura', 1034, '40A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Frosty_Mountains_(Kozakura)', '', '', 0, '619', 'DKS', 'DKS'),
(1000, 'Frosty Volcano Town', 1066, 'Custom', 'v1.0', 'Waltz, Diego Vapy', 1035, '40B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Frosty_Volcano_Town', '', '', 0, '1130', 'nSL', 'nSL'),
(1001, 'Frozen Festival', 1067, 'Custom', 'v1.0', 'Jasperr', 1036, '40C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Frozen_Festival', '', '', 0, '621', 'nSL', 'nSL'),
(1002, 'Fruity Folly', 1068, 'Custom', 'v1.0', 'Fuffina', 1037, '40D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fruity_Folly', '', '', 0, '1180', 'DKS', 'DKS'),
(1003, 'Full Moon Facility', 1069, 'Custom', 'Beta', 'Atmosphere', 1038, '40E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Full_Moon_Facility', '', '', 0, 'FMF_A', 'TF', 'TF'),
(1004, 'Fungal Jungle', 1070, 'Custom', 'v1.21', 'TacoJosh', 1039, '40F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fungal_Jungle', '', '', 0, '579', 'nDKJP', 'nDKJP'),
(1005, 'Fungi Falls', 1071, 'Custom', 'v1.0', 'Bear, DdAr', 1040, '410', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fungi_Falls', '', '', 0, '975', 'gDKM', 'gDKM'),
(1006, 'Galactic Cathedral Garden', 1072, 'Custom', 'v1.0', 'Atmosphere', 1041, '411', 0, '', 0, 'https://wiki.tockdom.com/wiki/Galactic_Cathedral_Garden', '', '', 0, '780', 'RR', 'RR'),
(1007, 'Galaxy Garden', 1073, 'Custom', 'RC1', 'ECD534, Toadette Hack Fan', 1042, '412', 0, '', 0, 'https://wiki.tockdom.com/wiki/Galaxy_Garden', '', '', 0, 'GG_ET', 'RR', 'RR'),
(1008, 'Gallant Grotto', 1074, 'Custom', 'v1.31-CTGP', 'ISwearChris', 1043, '413', 0, '', 2, 'https://wiki.tockdom.com/wiki/Gallant_Grotto', '', '', 0, '1117', 'MMM', 'MMM'),
(1009, 'Galvarny Falls', 1075, 'Custom', 'v2.5', 'wiimaster35000vr', 1044, '414', 0, '', 0, 'https://wiki.tockdom.com/wiki/Galvarny_Falls', '', '', 0, '436', 'gDKM', 'gDKM'),
(1010, 'GameBoy Hills', 1076, 'Custom', 'v1.0', 'MilanDK', 1045, '415', 0, '', 0, 'https://wiki.tockdom.com/wiki/GameBoy_Hills', '', '', 0, '1157', 'LC', 'MC'),
(1011, 'Garden Island', 1077, 'Custom', 'Alpha', 'Atmosphere, Anonymous', 1046, '416', 0, '', 0, 'https://wiki.tockdom.com/wiki/Garden_Island', '', '', 0, '1233', 'LC', 'MC'),
(1012, 'Garden of Dreams', 1078, 'Custom', 'v1.2', 'Jiyuu', 1047, '417', 0, '', 0, 'https://wiki.tockdom.com/wiki/Garden_of_Dreams', '', '', 0, '526', 'dPG', 'dPG'),
(1013, 'GCN Peach Beach High Tide', 1080, 'Custom', 'v1.1', 'Slimeserver', 1048, '418', 0, '', 0, 'https://wiki.tockdom.com/wiki/GCN_Peach_Beach_High_Tide_(GCN_Peach_Beach_Edit)', '', '', 0, '1061', 'gPB', 'gPB'),
(1014, 'Gender Flyway', 1081, 'Custom', 'v2.1', 'Dreacastian-Turnip', 1049, '419', 0, '', 0, 'https://wiki.tockdom.com/wiki/Gender_Flyway', '', '', 0, '1013', 'dPG', 'dPG'),
(1015, 'Gingivitis is Bad', 1082, 'Custom', 'v2.3', 'BillyNoodles,?KartoffelKorps,?SlipperyMac,?Hman6516,?acaruso', 1050, '41A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Gingivitis_is_Bad_(BillyNoodles,_KartoffelKorps,_SlipperyMac,_Hman6516,_%26_acaruso)', '', '', 0, '258', 'WGM', 'WGM'),
(1016, 'Glacial Lake', 1083, 'Custom', 'Beta', '._.', 1051, '41B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Glacial_Lake', '', '', 0, '812', 'nSL', 'nSL'),
(1017, 'Glacier Mine', 1084, 'Custom', 'v1.0-CTGP', 'ishiyama263', 1052, '41C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Glacier_Mine', '', '', 0, '482', 'nSL', 'nSL'),
(1018, 'Gleaming Gorge', 1085, 'Custom', 'v1.0', 'Cats4Life, EpicCrossover', 1053, '41D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Gleaming_Gorge', '', '', 0, '1128', 'MG', 'MG'),
(1019, 'Glimmer Express Trains', 1086, 'Custom', 'v1.3', 'Sniki', 1054, '41E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Glimmer_Express_Trains', '', '', 0, '259', 'WGM', 'WGM'),
(1020, 'Glistening Highway', 1087, 'Custom', 'v2.0', 'ZPL', 1055, '41F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Glistening_Highway', '', '', 0, '468', 'RR', 'RR'),
(1021, 'Global Raceway', 1088, 'Custom', 'v1.3', 'FunkyRacer', 1056, '420', 0, '', 0, 'https://wiki.tockdom.com/wiki/Global_Raceway_(FunkyRacer)', '', '', 0, '961', 'DC', 'DC'),
(1022, 'Gloomy Castle', 1089, 'Custom', 'RC2.1', 'Bri911', 1057, '421', 0, '', 0, 'https://wiki.tockdom.com/wiki/Gloomy_Castle', '', '', 0, '492', 'nBC', 'nBC'),
(1023, 'Gloomy Glade', 1090, 'Custom', 'v1.0-beta', 'Kozakura', 1058, '422', 0, '', 0, 'https://wiki.tockdom.com/wiki/Gloomy_Glade', '', '', 0, '769', 'sGV2', 'sGV2'),
(1024, 'Gnd course', 1091, 'Custom', 'Beta 1', 'G-Force', 1059, '423', 0, '', 0, 'https://wiki.tockdom.com/wiki/Gnd_course', '', '', 0, '1222', 'MC', 'MC'),
(1025, 'Golden Grove', 1092, 'Custom', 'v1.0', 'Questorian', 1060, '424', 0, '', 0, 'https://wiki.tockdom.com/wiki/Golden_Grove', '', '', 0, '790', 'dDS', 'dDS'),
(1026, 'Golden Mountain Road', 1093, 'Custom', 'RC2 Beta 2', 'ISwearChris', 1061, '425', 0, '', 0, 'https://wiki.tockdom.com/wiki/Golden_Mountain_Road', '', '', 0, '966', 'MC', 'MC'),
(1027, 'Golf Getaway', 1095, 'Custom', 'v1.0', 'Questorian', 1062, '426', 0, '', 0, 'https://wiki.tockdom.com/wiki/Golf_Getaway', '', '', 0, '708', 'DC', 'DC'),
(1028, 'Good Egg Drive', 1096, 'Custom', 'v1.11', 'Wraith Hopper', 1063, '427', 0, '', 0, 'https://wiki.tockdom.com/wiki/Good_Egg_Drive', '', '', 0, '1109', 'RR', 'RR'),
(1029, 'Good Egg Stadium', 1097, 'Custom', 'v1.0', 'Mickeyman713', 1064, '428', 0, '', 0, 'https://wiki.tockdom.com/wiki/Good_Egg_Stadium', '', '', 0, '1177', 'dDS', 'gWS'),
(1030, 'Gothic Castle', 1100, 'Custom', 'v1.3.3', 'SpyKid, Scye', 1065, '429', 0, '', 2, 'https://wiki.tockdom.com/wiki/Gothic_Castle', '', '', 0, '281', 'BC', 'BC'),
(1031, 'Gracie Raceway', 1101, 'Custom', 'v1.0.1', 'Graciefied', 1066, '42A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Gracie_Raceway', '', '', 0, 'GR_G', 'LC', 'MC'),
(1032, 'Grandfather Tower', 1102, 'Custom', 'v1.0', 'LucioWins', 1067, '42B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Grandfather_Tower', '', '', 0, '1248', 'RR', 'RR'),
(1033, 'Grassy Plains', 1103, 'Custom', 'v4.0', 'ZPL, Jasperr', 1068, '42C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Grassy_Plains_(ZPL_%26_Jasperr)', '', '', 0, '371', 'KC', 'KC'),
(1034, 'Green Hill Zone', 1104, 'Custom', 'v1.0', 'ZPL', 1069, '42D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Green_Hill_Zone_(ZPL)', '', '', 0, '518', 'MC', 'MC'),
(1035, 'Green Hills', 1105, 'Custom', 'v1.0', 'Cats4Life', 1070, '42E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Green_Hills', '', '', 0, '1022', 'CM', 'CM'),
(1036, 'Green Loop', 1106, 'Custom', 'v1.9.2', 'YellowYoshi', 1071, '42F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Green_Loop_(YellowYoshi)', '', '', 0, '048', 'gDKM', 'gDKM'),
(1037, 'Green Park', 1107, 'Custom', 'v2.8b', 'Caron', 1072, '430', 0, '', 0, 'https://wiki.tockdom.com/wiki/Green_Park', '', '', 0, '057', 'dPG', 'dPG'),
(1038, 'Greenway Circuit', 1108, 'Custom', 'v1.01', 'Questorian', 1073, '431', 0, '', 0, 'https://wiki.tockdom.com/wiki/Greenway_Circuit_(Questorian)', '', '', 0, '710', 'gPB', 'gPB'),
(1039, 'Greenwood Park', 1109, 'Custom', 'Beta 2', 'BroOFun', 1074, '432', 0, '', 0, 'https://wiki.tockdom.com/wiki/Greenwood_Park', '', '', 0, '988', 'KC', 'KC'),
(1040, 'Halogen Highway', 1110, 'Custom', 'v1.1b.mkd', 'BigOto2', 1075, '433', 0, '', 0, 'https://wiki.tockdom.com/wiki/Halogen_Highway', '', '', 0, '091', 'MH', 'MH'),
(1041, 'Harmony Island', 1111, 'Custom', 'v1.0', 'Mickeyman713', 1076, '434', 0, '', 0, 'https://wiki.tockdom.com/wiki/Harmony_Island', '', '', 0, '1236', 'DC', 'DC'),
(1042, 'Harvest Harbor', 1113, 'Custom', 'v1.1', 'JadenMKW', 1077, '435', 0, '', 0, 'https://wiki.tockdom.com/wiki/Harvest_Harbor', '', '', 0, '930', 'MT', 'MT'),
(1043, 'Haunted Gardens', 1114, 'Custom', 'v2.1', 'Hollend', 1078, '436', 0, '', 2, 'https://wiki.tockdom.com/wiki/Haunted_Gardens', '', '', 0, '597', 'dPG', 'sGV2'),
(1044, 'Haunted Hideaway 1', 1115, 'Custom', 'v1.0', 'Potatoman44', 1079, '437', 0, '', 0, 'https://wiki.tockdom.com/wiki/Haunted_Hideaway_1', '', '', 0, 'HH1_P', 'BC', 'BC'),
(1045, 'Haunted Hideaway 2', 1116, 'Custom', 'v1.0', 'Potatoman44', 1080, '438', 0, '', 0, 'https://wiki.tockdom.com/wiki/Haunted_Hideaway_2', '', '', 0, 'HH2_P', 'BC', 'BC'),
(1046, 'Haunted Hideaway 3', 1117, 'Custom', 'v1.0', 'Potatoman44', 1081, '439', 0, '', 0, 'https://wiki.tockdom.com/wiki/Haunted_Hideaway_3', '', '', 0, 'HH3_P', 'BC', 'BC'),
(1047, 'Haunted Library', 1118, 'Custom', 'Beta', 'zatchi', 1082, '43A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Haunted_Library', '', '', 0, '593', 'sGV2', 'sGV2'),
(1048, 'Haunted Woods', 1119, 'Custom', 'v1.01', 'ChaosShadow23', 1083, '43B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Haunted_Woods_(ChaosShadow23)', '', '', 0, '703', 'sGV2', 'sGV2'),
(1049, 'Heart of China', 1120, 'Custom', 'v2.0.3.mkf', 'Wingcapman', 1084, '43C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Heart_of_China', '', '', 0, '092', 'MG', 'MG'),
(1050, 'Hell Pyramid', 1122, 'Custom', 'v2.31', 'SpyKid', 1085, '43D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Hell_Pyramid', '', '', 0, '166', 'GV', 'GV'),
(1051, 'Hellado Mountain', 1123, 'Custom', 'v1.3', 'ChaosShadow23, Renegade Ciara', 1086, '43E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Hellado_Mountain', '', '', 0, '408', 'GV', 'GV'),
(1052, 'Hidden Cove', 1124, 'Custom', 'v1.2', 'zatchi', 1087, '43F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Hidden_Cove', '', '', 0, '565', 'gPB', 'gPB'),
(1053, 'Hillside Circuit', 1125, 'Custom', 'X', 'MysterE99, Quajeek99', 1088, '440', 1, '', 0, 'https://wiki.tockdom.com/wiki/Hillside_Circuit', '', '', 0, '152_1', 'DC', 'nMR'),
(1054, 'Hillside Circuit', 1126, 'Custom', 'v3.1', 'MysterE99, Quajeek99', 1089, '441', 2, '440', 0, 'https://wiki.tockdom.com/wiki/Hillside_Circuit', '', '', 0, '152_1', 'DC', 'nMR'),
(1055, 'Hillside Circuit', 1127, 'Custom', 'v3.1.Winter', 'MysterE99, Quajeek99', 1090, '442', 2, '440', 0, 'https://wiki.tockdom.com/wiki/Hillside_Circuit', '', '', 0, '152_2', 'DC', 'nMR'),
(1056, 'Honeybee Hideout', 1128, 'Custom', 'v1.3.1', 'TacoJosh, Riidefi', 1091, '443', 0, '', 0, 'https://wiki.tockdom.com/wiki/Honeybee_Hideout', '', '', 0, '451', 'MT', 'MT'),
(1057, 'Honeyhive Drive', 1129, 'Custom', 'Beta', 'Slimeserver', 1092, '444', 0, '', 0, 'https://wiki.tockdom.com/wiki/Honeyhive_Drive', '', '', 0, '731', 'MMM', 'MMM'),
(1058, 'Honeymoon Lune', 1130, 'Custom', 'v2.1', 'SquireTurnbolt', 1093, '445', 0, '', 0, 'https://wiki.tockdom.com/wiki/Honeymoon_Lune', '', '', 0, '838', 'RR', 'RR'),
(1059, 'Hooktail Castle', 1131, 'Custom', 'v1.0', 'Questorian', 1094, '446', 0, '', 0, 'https://wiki.tockdom.com/wiki/Hooktail_Castle', '', '', 0, '766', 'MG', 'MG'),
(1060, 'Horror Mansion', 1132, 'Custom', 'v2.4.1b', 'xBlue98', 1095, '447', 0, '', 0, 'https://wiki.tockdom.com/wiki/Horror_Mansion', '', '', 0, '135', 'sGV2', 'sGV2'),
(1061, 'Coconut Mall - December 2007', 921, 'Custom', 'v1.0.ikw', 'Mystora', 1096, '448', 0, '', 0, 'https://wiki.tockdom.com/wiki/Coconut_Mall_-_December_2007', '', '', 0, 'CMD_M', 'DKS', 'CM'),
(1062, 'Ice Cream Fortress', 1134, 'Custom', 'v1.2', 'Citrus', 1097, '449', 0, '', 0, 'https://wiki.tockdom.com/wiki/Ice_Cream_Fortress', '', '', 0, '914_1', 'nSL', 'nSL'),
(1063, 'Icecream Sweetland', 1135, 'Custom', 'v2.1.mkd2', 'SpyKid, Ermelber', 1098, '44A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Icecream_Sweetland', '', '', 0, '119', 'DKS', 'DKS'),
(1064, 'Icepeak Mountain', 1136, 'Custom', 'v1.3', '4TLPati, FloMaster35000vr', 1099, '44B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Icepeak_Mountain', '', '', 0, '206', 'DKS', 'DKS'),
(1065, 'Icestone Shaft', 1138, 'Custom', 'v1.5.4', 'Rinorocks', 1100, '44C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Icestone_Shaft', '', '', 0, '390', 'DKS', 'DKS'),
(1066, 'Iceway', 1139, 'Custom', 'RC2', 'BroOFun', 1101, '44D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Iceway_(BroOFun)', '', '', 0, '684', 'DKS', 'DKS'),
(1067, 'Illuminati Track Thing', 1141, 'Custom', 'v1.1.1', 'Maximiliano, Rz', 1102, '44E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Illuminati_Track_Thing', '', '', 0, '251', 'WGM', 'WGM'),
(1068, 'Impossible Road', 1142, 'Custom', 'v1.0-ikw', 'Ro', 1103, '44F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Impossible_Road_(Rainbow_Road_Edit)', '', '', 0, '1250', 'RR', 'RR'),
(1069, 'In a Days', 1143, 'Custom', 'v1.3', 'Hman6516', 1104, '450', 0, '', 0, 'https://wiki.tockdom.com/wiki/In_a_Days', '', '', 0, '689', 'TF', 'TF'),
(1070, 'Infernal Pipeyard', 1144, 'Custom', 'v1.0', 'ChaosShadow23', 1105, '451', 0, '', 0, 'https://wiki.tockdom.com/wiki/Infernal_Pipeyard', '', '', 0, '190', 'GV', 'GV'),
(1071, 'Intergalactic Lair', 1145, 'Custom', 'Beta 2.1', 'Atmosphere, Sniki', 1106, '452', 0, '', 0, 'https://wiki.tockdom.com/wiki/Intergalactic_Lair', '', '', 0, '825', 'RR', 'RR'),
(1072, 'Interstellar Laboratory', 1146, 'Custom', 'v2.0-beta', 'BroOFun, ._.', 1107, '453', 0, '', 0, 'https://wiki.tockdom.com/wiki/Interstellar_Laboratory', '', '', 0, '829', 'RR', 'RR'),
(1073, 'Interstellar War', 1147, 'Custom', 'v1.0', 'Lovelifeandtpose024', 1108, '454', 0, '', 0, 'https://wiki.tockdom.com/wiki/Interstellar_War', '', '', 0, '720', 'GV', 'GV'),
(1074, 'Into the Matrix', 1148, 'Custom', 'v1.0', 'ZPL', 1109, '455', 0, '', 0, 'https://wiki.tockdom.com/wiki/Into_the_Matrix', '', '', 0, '523', 'RR', 'RR'),
(1075, 'Item Fireland', 1149, 'Custom', 'v1.1a', 'Keiichi1996', 1110, '456', 0, '', 0, 'https://wiki.tockdom.com/wiki/Item_Fireland', '', '', 0, '151', 'GV', 'GV'),
(1076, 'Jewel Temple Robbery', 1150, 'Custom', 'Beta', 'Questorian', 1111, '457', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jewel_Temple_Robbery', '', '', 0, '791', 'dDH', 'dDH'),
(1077, 'Jigsaw Circuit', 1151, 'Custom', 'v1.21', 'Cal', 1112, '458', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jigsaw_Circuit', '', '', 0, '1185', 'MC', 'MC'),
(1078, 'Jiyuu Village', 1152, 'Custom', 'v1.2.1', 'Jiyuu', 1113, '459', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jiyuu_Village', '', '', 0, '1186', 'dDS', 'dDS'),
(1079, 'Jungle Beach', 1153, 'Custom', 'v1.01', 'bugsy', 1114, '45A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jungle_Beach', '', '', 0, '576', 'KC', 'KC'),
(1080, 'Jungle Caverns', 1154, 'Custom', 'Beta 4', '._.', 1115, '45B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jungle_Caverns', '', '', 0, '905', 'dYF', 'dYF'),
(1081, 'Jungle Cliff', 1155, 'Custom', 'v1.5', 'Wine, Keiichi1996', 1116, '45C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jungle_Cliff', '', '', 0, '172', 'nDKJP', 'nDKJP'),
(1082, 'Jungle Glade', 1157, 'Custom', 'v1.4.1', 'Citrus', 1117, '45D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jungle_Glade', '', '', 0, '580', 'nDKJP', 'nDKJP'),
(1083, 'Jungle Jamble', 1158, 'Custom', 'v1.5+', 'Torran, Yoshi86UP', 1118, '45E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jungle_Jamble', '', '', 0, '282', 'nSL', 'nSL'),
(1084, 'Jungle Ruins', 1159, 'Custom', 'v2.1', 'MysterE99', 1119, '45F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jungle_Ruins', '', '', 0, '157', 'nDKJP', 'nDKJP'),
(1085, 'Jungle Safari', 1160, 'Custom', 'v2.5b', 'Questorian', 1120, '460', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jungle_Safari_(Questorian)', '', '', 0, '598', 'MG', 'MG'),
(1086, 'Junk Food Wonderland', 1161, 'Custom', 'v1.0', 'MysterE99', 1121, '461', 0, '', 0, 'https://wiki.tockdom.com/wiki/Junk_Food_Wonderland', '', '', 0, '317', 'gDKM', 'gDKM'),
(1087, 'Kairos Town', 1162, 'Custom', 'v1.0', 'LucioWins', 1122, '462', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kairos_Town', '', '', 0, '1247', 'dDH', 'dDH'),
(1088, 'Kamek\'s Library', 1163, 'Custom', 'v2.1.4', 'MysterE99', 1123, '463', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kamek%27s_Library_(MysterE99)', '', '', 0, '315', 'nBC', 'adTH'),
(1089, 'Karts & Crafts', 1164, 'Custom', 'Beta', 'Bruh de la Boi', 1124, '464', 0, '', 0, 'https://wiki.tockdom.com/wiki/Karts_%26_Crafts', '', '', 0, '588', 'gMC', 'gMC'),
(1090, 'Kartwood Creek', 1165, 'Custom', 'v1.0b', 'Kozakura', 1125, '465', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kartwood_Creek_(Kozakura)', '', '', 0, '608', 'MMM', 'MMM'),
(1091, 'Kiddie Park', 1166, 'Custom', 'v1.1', 'Cats4Life, Normaliv', 1126, '466', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kiddie_Park', '', '', 0, '944', 'gDKM', 'gDKM'),
(1092, 'King Boo\'s Library', 1167, 'Custom', 'v1.1', 'TheGamingBram', 1127, '467', 0, '', 0, 'https://wiki.tockdom.com/wiki/King_Boo%27s_Library', '', '', 0, '960', 'sGV2', 'sGV2'),
(1093, 'King Dedede\'s Castle', 1168, 'Custom', 'v3.1', 'ishiyama263', 1128, '468', 0, '', 0, 'https://wiki.tockdom.com/wiki/King_Dedede%27s_Castle', '', '', 0, '463', 'TF', 'TF'),
(1094, 'Kingdom of Ghosts', 1170, 'Custom', 'v3.0', 'Jasperr,?ZPL', 1129, '469', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kingdom_of_Ghosts_(Jasperr_%26_ZPL)', '', '', 0, '396', 'sGV2', 'sGV2'),
(1095, 'Kinoko Canyon', 1171, 'Custom', 'v1.0', 'Jasperr, zilly', 1130, '46A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kinoko_Canyon', '', '', 0, '473', 'KC', 'KC'),
(1096, 'Kinoko Cave', 1172, 'Custom', 'v1.1.mkd', 'Sucht93a, Wingcapman', 1131, '46B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kinoko_Cave_(Sucht93a_%26_Wingcapman)', '', '', 0, '236_1', 'MG', 'MG'),
(1097, 'Fiery Kinoko Cave R', 1040, 'Custom', 'v1.0.R.le.i', 'marionose1', 1132, '46C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Fiery_Kinoko_Cave_R_(Kinoko_Cave_Edit)', '', '', 0, '236_2', 'MG', 'MG'),
(1098, 'Kinoko Cave T', 1173, 'Custom', 'v1.0', 'Bruh de la Boi', 1133, '46D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kinoko_Cave_T_(Kinoko_Cave_Edit)', '', '', 0, '236_3', 'MG', 'MG'),
(1099, 'Kirio Raceway', 1174, 'Custom', 'v4.2', 'Super blooper kirio', 1134, '46E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kirio_Raceway', '', '', 0, '064', 'LC', 'MC'),
(1100, 'Koopa Cape: Apocalypse', 1175, 'Custom', 'v1.1', 'Slimeserver', 1135, '46F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Koopa_Cape:_Apocalypse_(Koopa_Cape_Edit)', '', '', 0, '1068', 'GV', 'GV'),
(1101, 'Koopa Shell Pipeland', 1176, 'Custom', 'v1.1', 'MysterE99', 1136, '470', 0, '', 0, 'https://wiki.tockdom.com/wiki/Koopa_Shell_Pipeland', '', '', 0, '380', 'KC', 'KC'),
(1102, 'Kremling Kreek', 1178, 'Custom', 'Beta', 'Bruh de la Boi', 1137, '471', 0, '', 0, 'https://wiki.tockdom.com/wiki/Kremling_Kreek', '', '', 0, '1241', 'gDKM', 'gDKM'),
(1103, 'Lakeside Grove', 1179, 'Custom', 'v1.2-hotfix', 'Ferv', 1138, '472', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lakeside_Grove', '', '', 0, '407', 'LC', 'MC'),
(1104, 'Lakeside Pier', 1180, 'Custom', 'v1.1', 'Potatoman44', 1139, '473', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lakeside_Pier', '', '', 0, '878', 'dDS', 'dDS'),
(1105, 'Lakeside Skyway', 1181, 'Custom', 'v1.0.alpha', 'Maximiliano', 1140, '474', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lakeside_Skyway', '', '', 0, '349', 'LC', 'MC'),
(1106, 'Land\'s End Festival', 1182, 'Custom', 'v1.1', 'Lovelifeandtpose024', 1141, '475', 0, '', 0, 'https://wiki.tockdom.com/wiki/Land%27s_End_Festival', '', '', 0, '699', 'gPB', 'gPB'),
(1107, 'Lantern Light Terrace', 1183, 'Custom', 'Beta', 'Atmosphere, Birj', 1142, '476', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lantern_Light_Terrace', '', '', 0, 'LLT_AB', 'MT', 'MT'),
(1108, 'Laser Field Arcade', 1184, 'Custom', 'RC1', 'Shorky', 1143, '477', 0, '', 0, 'https://wiki.tockdom.com/wiki/Laser_Field_Arcade', '', '', 0, '774', 'dDS', 'gWS'),
(1109, 'Last World', 1185, 'Custom', 'v1.hp', 'Sniki', 1144, '478', 0, '', 0, 'https://wiki.tockdom.com/wiki/Last_World', '', '', 0, '244', 'nBC', 'nBC'),
(1110, 'Lava Lake', 1186, 'Custom', 'v2.3', 'JorisMKW', 1145, '479', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lava_Lake', '', '', 0, '304', 'GV', 'GV'),
(1111, 'Lava Road', 1187, 'Custom', 'v3.2', 'Renegade Ciara', 1146, '47A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lava_Road_(Renegade_Ciara)', '', '', 0, '479', 'BC', 'BC'),
(1112, 'Lava Rocks', 1188, 'Custom', 'v1.7.2', 'Jiyuu', 1147, '47B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lava_Rocks', '', '', 0, '359', 'GV', 'GV'),
(1113, 'Lavaflow Volcano', 1189, 'Custom', 'v2.0', 'Jasperr, ZPL', 1148, '47C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lavaflow_Volcano_(Jasperr_%26_ZPL)', '', '', 0, '426', 'GV', 'GV'),
(1114, 'Lilypad Leapway', 1192, 'Custom', 'v1.0', 'ZPL, Royal Crown', 1149, '47D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lilypad_Leapway', '', '', 0, '947', 'gDKM', 'gDKM'),
(1115, 'Living Caverns', 1193, 'Custom', 'v1.0', 'Chouchintosh', 1150, '47E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Living_Caverns', '', '', 0, 'LC_C', 'dPG', 'dPG'),
(1116, 'Lonely Desert', 1194, 'Custom', 'v1.1', 'Okin', 1151, '47F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lonely_Desert', '', '', 0, '370', 'dDH', 'dDH'),
(1117, 'Loop Mountain', 1195, 'Custom', 'v1.1', 'EdwardJW', 1152, '480', 0, '', 0, 'https://wiki.tockdom.com/wiki/Loop_Mountain', '', '', 0, '350', 'dDS', 'dDS'),
(1118, 'Los Pollos Hermanos', 1196, 'Custom', 'v1.1', 'CarryOn', 1153, '481', 0, '', 0, 'https://wiki.tockdom.com/wiki/Los_Pollos_Hermanos', '', '', 0, '1074', 'DDR', 'DDR'),
(1119, 'Lost Fortress', 1197, 'Custom', 'v4.1', 'MEGAKart69', 1154, '482', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lost_Fortress', '', '', 0, '182', 'BC', 'BC'),
(1120, 'Lost Ruins', 1198, 'Custom', 'v1.1', 'JorisMKW', 1155, '483', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lost_Ruins', '', '', 0, '990', 'nBC', 'nBC'),
(1121, 'Love Beach', 1199, 'Custom', 'v3.0.opt', 'SpyKid', 1156, '484', 0, '', 0, 'https://wiki.tockdom.com/wiki/Love_Beach', '', '', 0, '070', 'DC', 'DC'),
(1122, 'Luigi Paradise', 1202, 'Custom', 'v1.0', 'Kozakura', 1157, '485', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luigi_Paradise', '', '', 0, '1211', 'gPB', 'gPB'),
(1123, 'Luigi\'s Ghostly Manor', 1203, 'Custom', 'v1.1', 'Shorky', 1158, '486', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luigi%27s_Ghostly_Manor', '', '', 0, '782', 'sGV2', 'sGV2'),
(1124, 'Luigi\'s Halls of Horror', 1204, 'Custom', 'Beta', 'Bruh de la Boi', 1159, '487', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luigi%27s_Halls_of_Horror', '', '', 0, '1240', 'sGV2', 'sGV2'),
(1125, 'Luigi\'s Island', 1205, 'Custom', 'v5.1', 'ZPL', 1160, '488', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luigi%27s_Island_(ZPL)', '', '', 0, '410_1', 'nMR', 'nMR'),
(1126, 'Luigi\'s Valley', 1206, 'Custom', 'v2.1', 'JoeyMK', 1161, '489', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luigi%27s_Valley_(JoeyMK)', '', '', 0, '610', 'DC', 'DC'),
(1127, 'Luma Park', 1207, 'Custom', 'v1.0', 'ChaosShadow23, Renegade Ciara', 1162, '48A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luma_Park', '', '', 0, '545', 'dPG', 'dPG'),
(1128, 'Luminous Clouds', 1208, 'Custom', 'v1.1', '._., Kozakura', 1163, '48B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luminous_Clouds', '', '', 0, '991', 'gBC3', 'gBC3'),
(1129, 'Luminous Level', 1209, 'Custom', 'v1.0', 'AlexTG4517', 1164, '48C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luminous_Level', '', '', 0, 'LL_A', 'LC', 'MC'),
(1130, 'Lumpy\'s Lively Lair', 1210, 'Custom', 'v1.0', 'MrFluffy', 1165, '48D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lumpy%27s_Lively_Lair', '', '', 0, '1004', 'RR', 'adTH'),
(1131, 'Lunar Biodomes', 1211, 'Custom', 'v1.1', 'TheGamingBram', 1166, '48E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lunar_Biodomes', '', '', 0, '1220', 'RR', 'RR'),
(1132, 'Lunar Lantern Festival', 1212, 'Custom', 'v1.1', 'SquireTurnbolt', 1167, '48F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lunar_Lantern_Festival', '', '', 0, '821', 'GV', 'GV'),
(1133, 'Lunar Lights', 1213, 'Custom', 'v1.2', 'Sniki', 1168, '490', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lunar_Lights', '', '', 0, '305', 'RR', 'RR');
INSERT INTO `mkvn_tracks` (`ID`, `Track_Name`, `TrackSort`, `Track_Type`, `Track_version`, `Track_Creator`, `Track_DEC_ID`, `Track_Hex_ID`, `Slot_Type`, `SubTrackTo`, `NewTrack`, `Wiki_Link`, `DLC_Music_Name`, `DLC_Music_YT_EMBED`, `DLC_Music_PackID`, `Local_File`, `Tprop`, `Tmus`) VALUES
(1134, 'Lunar Spaceway', 1214, 'Custom', 'v1.11-hotfi', 'BigOto2', 1169, '491', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lunar_Spaceway', '', '', 0, '068', 'RR', 'RR'),
(1135, 'Lunar Speedway', 1215, 'Custom', 'v2.6', 'Jasperr, ZPL', 1170, '492', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lunar_Speedway_(Jasperr_%26_ZPL)', '', '', 0, '413', 'RR', 'RR'),
(1136, 'Luncheon Tour', 1216, 'Custom', 'v1.16', 'Luke Chandler', 1171, '493', 0, '', 0, 'https://wiki.tockdom.com/wiki/Luncheon_Tour', '', '', 0, '381', 'LC', 'MG'),
(1137, 'Lyncho Lair 2', 1217, 'Custom', 'Beta 2', 'Slimeserver', 1172, '494', 0, '', 0, 'https://wiki.tockdom.com/wiki/Lyncho_Lair_2', '', '', 0, '629', 'BC', 'BC'),
(1138, 'Magmafall Skies', 1220, 'Custom', 'v1.1', 'Shorky', 1173, '495', 0, '', 0, 'https://wiki.tockdom.com/wiki/Magmafall_Skies', '', '', 0, '1019', 'MMM', 'MMM'),
(1139, 'Magmatic Sanctuary', 1221, 'Custom', 'v1.44', 'ZPL, Jasperr, acaruso', 1174, '496', 0, '', 0, 'https://wiki.tockdom.com/wiki/Magmatic_Sanctuary', '', '', 0, '454', 'nBC', 'nBC'),
(1140, 'Mangrove Caverns', 1222, 'Custom', 'v1.1', 'Flint', 1175, '497', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mangrove_Caverns', '', '', 0, '795', 'nDKJP', 'nDKJP'),
(1141, 'Mansion of Madness', 1223, 'Custom', 'v1.3 (p)', 'Sucht93a', 1176, '498', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mansion_of_Madness', '', '', 0, '209', 'GV', 'adTH'),
(1142, 'Maple Realm', 1224, 'Custom', 'Alpha', 'FunkyDude15', 1177, '499', 0, '', 0, 'https://wiki.tockdom.com/wiki/Maple_Realm', '', '', 0, '514', 'MT', 'MT'),
(1143, 'Marble Towers', 1225, 'Custom', 'v1.5', 'Sniki', 1178, '49A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Marble_Towers', '', '', 0, '276', 'MT', 'MT'),
(1144, 'Mario Circuit 5', 1226, 'Custom', 'v3.0', 'Retrostyle12', 1179, '49B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mario_Circuit_5', '', '', 0, '387', 'sMC3', 'sMC3'),
(1145, 'Mario Kart Wii Super Quiz with Lakitu', 1227, 'Custom', 'v1.1', 'LucioWins', 1180, '49C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mario_Kart_Wii_Super_Quiz_with_Lakitu', '', '', 0, '1251', 'dDS', 'gWS'),
(1146, 'Mario Park', 1228, 'Custom', 'v1.0', 'Dreacastian-Turnip', 1181, '49D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mario_Park', '', '', 0, '1176', 'dPG', 'dPG'),
(1147, 'Mario Speedway', 1229, 'Custom', 'v1.0', 'Kozakura', 1182, '49E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mario_Speedway_(Kozakura)', '', '', 0, '1215', 'nMR', 'nMR'),
(1148, 'Mario\'s Rainbow Castle', 1230, 'Custom', 'Beta', 'Bruh de la Boi, Cats4Life, Nomatix', 1183, '49F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mario%27s_Rainbow_Castle', '', '', 0, '1046', 'RR', 'RR'),
(1149, 'Meadow in a Lake', 1231, 'Custom', 'RC1', 'ECD534, Toadette Hack Fan', 1184, '4A0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Meadow_in_a_Lake', '', '', 0, 'MiaL_ET', 'LC', 'MC'),
(1150, 'Meatball Mountain', 1232, 'Custom', 'Beta 2', 'Atmosphere', 1185, '4A1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Meatball_Mountain', '', '', 0, '1116', 'gDKM', 'gDKM'),
(1151, 'Mech Factory', 1233, 'Custom', 'v1.31', 'TL, Coffee Toffee', 1186, '4A2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mech_Factory', '', '', 0, '1067', 'TF', 'TF'),
(1152, 'Medieval Castlegrounds', 1234, 'Custom', 'v1.1b', 'JorisMKW, kHacker35000vr', 1187, '4A3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Medieval_Castlegrounds', '', '', 0, '620', 'dPG', 'dPG'),
(1153, 'Melody Sanctum', 1235, 'Custom', 'v1.5', 'SpyKid', 1188, '4A4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Melody_Sanctum', '', '', 0, '232', 'DDR', 'DDR'),
(1154, 'Melting Magma Melee', 1236, 'Custom', 'v1.6', 'Sucht93a', 1189, '4A5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Melting_Magma_Melee', '', '', 0, '192', 'GV', 'GV'),
(1155, 'Meteor Metropolis 1', 1237, 'Custom', 'v1.0', 'CrystalMoonKittyCat', 1190, '4A6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Meteor_Metropolis_1', '', '', 0, '908', 'MH', 'MH'),
(1156, 'Meteor Metropolis 2', 1238, 'Custom', 'v1.0', 'CrystalMoonKittyCat', 1191, '4A7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Meteor_Metropolis_2', '', '', 0, '909', 'MH', 'MH'),
(1157, 'Meteor Metropolis 3', 1239, 'Custom', 'v1.0', 'CrystalMoonKittyCat', 1192, '4A8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Meteor_Metropolis_3', '', '', 0, '910', 'MH', 'MH'),
(1158, 'Meteor Shower', 1240, 'Custom', 'Beta 3.1', 'ISwearChris', 1193, '4A9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Meteor_Shower_(Crystallic_Dream)', '', '', 0, 'MS-CD_I', 'gBC3', 'gBC3'),
(1159, 'Midnight Forest', 1241, 'Custom', 'Beta 2', 'Slippy12', 1194, '4AA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Midnight_Forest', '', '', 0, '591', 'sGV2', 'sGV2'),
(1160, 'Midnight Museum', 1242, 'Custom', 'v1.2', 'SquireTurnbolt', 1195, '4AB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Midnight_Museum', '', '', 0, '913', 'nDKJP', 'nDKJP'),
(1161, 'Midnight Trench', 1243, 'Custom', 'v1.0b', 'Potatoman44', 1196, '4AC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Midnight_Trench', '', '', 0, '1164', 'LC', 'MC'),
(1162, 'Mine Shaft', 1244, 'Custom', 'v1.2', 'Rinorocks, Riidefi', 1197, '4AD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mine_Shaft', '', '', 0, '444', 'LC', 'MC'),
(1163, 'Minecraft Kart', 1245, 'Custom', 'v2.2', 'Mystora', 1198, '4AE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Minecraft_Kart', '', '', 0, '632', 'MG', 'MG'),
(1164, 'Mini Arena', 1247, 'Custom', 'v1.0', 'ChisSilver64, Anoob', 1199, '4AF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mini_Arena', '', '', 0, '364', 'dDS', 'gWS'),
(1165, 'Misty Downtown', 1248, 'Custom', 'v1.0', 'tari', 1200, '4B0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Misty_Downtown', '', '', 0, '921', 'LC', 'MH'),
(1166, 'Misty Lavalands', 1249, 'Custom', 'v1.0', 'Cats4Life', 1201, '4B1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Misty_Lavalands', '', '', 0, '1055', 'sMC3', 'sMC3'),
(1167, 'MK8S Mushroom Festival', 1250, 'Custom', 'v1.0', 'Bluebatstar', 1202, '4B2', 0, '', 0, 'https://wiki.tockdom.com/wiki/MK8S_Mushroom_Festival', '', '', 0, '1209', 'MC', 'MC'),
(1168, 'Molten Desert', 1251, 'Custom', 'v1.0', 'EdwardJW', 1203, '4B3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Molten_Desert', '', '', 0, '438', 'GV', 'GV'),
(1169, 'Molten Mountainway', 1252, 'Custom', 'v3.2+', 'kHacker35000vr', 1204, '4B4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Molten_Mountainway', '', '', 0, '124', 'gDKM', 'gDKM'),
(1170, 'Monaco GP', 1253, 'Custom', 'Beta 2', 'Jelle Westra', 1205, '4B5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Monaco_GP', '', '', 0, '607', 'KC', 'KC'),
(1171, 'Monkey Monkey Farm', 1254, 'Custom', 'v1.0c', 'Fuffina', 1206, '4B6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Monkey_Monkey_Farm', '', '', 0, '1140', 'MMM', 'MMM'),
(1172, 'Moonlight Lake', 1257, 'Custom', 'v1.0.mkf', 'AltairYoshi', 1207, '4B7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Moonlight_Lake', '', '', 0, '555', 'dPG', 'dPG'),
(1173, 'Moonlit Grounds', 1258, 'Custom', 'v1.0', 'bugsy', 1208, '4B8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Moonlit_Grounds', '', '', 0, '1191', 'gMC', 'gMC'),
(1174, 'Moonrock Raceway', 1260, 'Custom', 'v1.0', 'Potatoman44', 1209, '4B9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Moonrock_Raceway', '', '', 0, '907', 'RR', 'RR'),
(1175, 'Morphing Wilderness', 1261, 'Custom', 'v1.1', 'Kozakura', 1210, '4BA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Morphing_Wilderness', '', '', 0, '943', 'nSL', 'nSL'),
(1176, 'Motorcat\'s Dirt Derby', 1262, 'Custom', 'v1.1', 'bugsy', 1211, '4BB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Motorcat%27s_Dirt_Derby', '', '', 0, '848', 'dDS', 'gWS'),
(1177, 'Mount Yoshi', 1263, 'Custom', 'v1.1', 'Cats4Life, Waltz', 1212, '4BC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mount_Yoshi', '', '', 0, '1105', 'KC', 'KC'),
(1178, 'Mountain Adventure', 1264, 'Custom', 'v2.2', 'TheGamingBram', 1213, '4BD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mountain_Adventure', '', '', 0, '313', 'gDKM', 'gDKM'),
(1179, 'Mountain Intersection', 1265, 'Custom', 'v2.0.fix', 'TheGamingBram', 1214, '4BE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mountain_Intersection', '', '', 0, '1133', 'MMM', 'MMM'),
(1180, 'Mountain Path', 1266, 'Custom', 'v1.0', 'Questorian', 1215, '4BF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mountain_Path_(Questorian)', '', '', 0, '697', 'MG', 'MG'),
(1181, 'Mountain Road', 1267, 'Custom', 'v1.3', 'TheGamingBram', 1216, '4C0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mountain_Road', '', '', 0, '312', 'DKS', 'DKS'),
(1182, 'Mountain Town', 1268, 'Custom', 'v3.1', 'TheGamingBram', 1217, '4C1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mountain_Town', '', '', 0, '310', 'MG', 'MG'),
(1183, 'Mountain Valley Town', 1269, 'Custom', 'v1.0', 'TheGamingBram', 1218, '4C2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mountain_Valley_Town', '', '', 0, '1134', 'MMM', 'MMM'),
(1184, 'Mouse Hole Mania', 1270, 'Custom', 'v1.2', 'Hman6516', 1219, '4C3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mouse_Hole_Mania', '', '', 0, '509', 'nDKJP', 'nDKJP'),
(1185, 'Muck Stadium', 1271, 'Custom', 'v1.4', 'EdwardJW', 1220, '4C4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Muck_Stadium', '', '', 0, '291', 'dDS', 'gWS'),
(1186, 'Mushlight Forest', 1272, 'Custom', 'v1.02', 'Fuffina', 1221, '4C5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushlight_Forest', '', '', 0, '843', 'MG', 'MG'),
(1187, 'Mushroom Fort', 1273, 'Custom', 'RC4.02', 'Conner', 1222, '4C6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Fort', '', '', 0, '053', 'MG', 'MG'),
(1188, 'Mushroom Grove', 1274, 'Custom', 'v1.1', 'Lovelifeandtpose024', 1223, '4C7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Grove', '', '', 0, '693', 'MG', 'MG'),
(1189, 'Mushroom Hideaway', 1275, 'Custom', 'Beta 2', 'Yoshii', 1224, '4C8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Hideaway', '', '', 0, '987', 'MG', 'MG'),
(1190, 'Mushroom Island', 1276, 'Custom', 'v1.3', 'Inkling35000vr, Sniki', 1225, '4C9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Island_(Inkling35000vr_%26_Sniki)', '', '', 0, '268', 'MG', 'MG'),
(1191, 'Mushroom Lagoon', 1277, 'Custom', 'v1.0', 'ZPL', 1226, '4CA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Lagoon', '', '', 0, '977', 'KC', 'KC'),
(1192, 'Mushroom Marsh', 1278, 'Custom', 'Beta 1', 'G-Force, Birj', 1227, '4CB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Marsh', '', '', 0, '1171', 'MG', 'MG'),
(1193, 'Mushroom Mountain', 1279, 'Custom', 'v1.1', 'Ferv', 1228, '4CC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Mountain', '', '', 0, '431', 'MG', 'MG'),
(1194, 'Mushroom Neighborhood', 1280, 'Custom', 'v1.0', 'NinJack', 1229, '4CD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Neighborhood', '', '', 0, 'MN_N', 'LC', 'MC'),
(1195, 'Mushroom Park', 1281, 'Custom', 'v2.04', 'NikoPlays', 1230, '4CE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Park', '', '', 0, '285', 'DC', 'DC'),
(1196, 'Mushroom Peaks', 1282, 'Custom', 'RC6', 'MrBean35000vr, Chadderz', 1231, '4CF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Peaks_(MrBean35000vr_%26_Chadderz)', '', '', 0, '1249', 'MG', 'MG'),
(1197, 'Mushroom University', 1284, 'Custom', 'Beta', 'Bruh de la Boi', 1232, '4D0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_University', '', '', 0, '982', 'MMM', 'MMM'),
(1198, 'Mushroom Valley', 1285, 'Custom', 'v1.7', 'ZPL', 1233, '4D1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroom_Valley_(ZPL)', '', '', 0, '614', 'MG', 'MG'),
(1199, 'Mushroomless Gorge', 1286, 'Custom', 'v1.0', 'Slimeserver', 1234, '4D2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mushroomless_Gorge_(Mushroom_Gorge_Edit)', '', '', 0, '1101', 'MG', 'MG'),
(1200, 'Musical Cliff', 1287, 'Custom', 'v1.3', 'Luca', 1235, '4D3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Musical_Cliff', '', '', 0, '558', 'MT', 'MT'),
(1201, 'Mystic Tangle', 1288, 'Custom', 'v1.1', 'ZPL', 1236, '4D4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mystic_Tangle', '', '', 0, '822', 'nDKJP', 'nDKJP'),
(1202, 'Mystical Marsh', 1289, 'Custom', 'v1.0', 'Jasperr', 1237, '4D5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mystical_Marsh', '', '', 0, '586', 'MT', 'MT'),
(1203, 'Mystical Mushroom Mine', 1290, 'Custom', 'v1.0', 'Shorky', 1238, '4D6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Mystical_Mushroom_Mine', '', '', 0, 'MMM_S', 'WGM', 'WGM'),
(1204, 'N.I.S.W.O.E. Desert', 1291, 'Custom', 'v1.3', 'Multimariokartds', 1239, '4D7', 0, '', 0, 'https://wiki.tockdom.com/wiki/N.I.S.W.O.E._Desert', '', '', 0, '106', 'DDR', 'DDR'),
(1205, 'Nabbit\'s Secret Island', 1292, 'Custom', 'v1.0', 'TheGamingBram', 1240, '4D8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nabbit%27s_Secret_Island', '', '', 0, 'NSI_T', 'nDKJP', 'nDKJP'),
(1206, 'Nameless Grounds', 1294, 'Custom', 'v1.0', 'LUDAROBE', 1241, '4D9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nameless_Grounds', '', '', 0, '1039', 'MG', 'MG'),
(1207, 'Nature Creek Pass', 1295, 'Custom', 'x', 'lgmb', 1242, '4DA', 1, '', 0, 'https://wiki.tockdom.com/wiki/Nature_Creek_Pass', '', '', 0, '511_1', 'gMC', 'gMC'),
(1208, 'Nature Creek Pass', 1296, 'Custom', 'v1.day', 'lgmb', 1243, '4DB', 2, '4DA', 0, 'https://wiki.tockdom.com/wiki/Nature_Creek_Pass', '', '', 0, '511_1', 'gMC', 'gMC'),
(1209, 'Nature Creek Pass', 1297, 'Custom', 'v1.Night', 'lgmb', 1244, '4DC', 2, '4DA', 0, 'https://wiki.tockdom.com/wiki/Nature_Creek_Pass', '', '', 0, '511_3', 'gMC', 'gMC'),
(1210, 'Nature Creek Pass R', 1298, 'Custom', 'x', 'lgmb', 1245, '4DD', 1, '', 0, 'https://wiki.tockdom.com/wiki/Nature_Creek_Pass', '', '', 0, '511_2', 'gMC', 'gMC'),
(1211, 'Nature Creek Pass R', 1299, 'Custom', 'v1.day.R', 'lgmb', 1246, '4DE', 2, '4DD', 0, 'https://wiki.tockdom.com/wiki/Nature_Creek_Pass', '', '', 0, '511_2', 'gMC', 'gMC'),
(1212, 'Nature Creek Pass R', 1300, 'Custom', 'v1.Night.R', 'lgmb', 1247, '4DF', 2, '4DD', 0, 'https://wiki.tockdom.com/wiki/Nature_Creek_Pass', '', '', 0, '511_4', 'gMC', 'gMC'),
(1213, 'Nazrin Circuit', 1301, 'Custom', 'v1.0', 'Atmosphere, YoshTaku', 1248, '4E0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nazrin_Circuit', '', '', 0, 'NC_AY', 'DC', 'DC'),
(1214, 'Nebula Lava Factory', 1302, 'Custom', 'v3 ', 'SpyKid, WiiLuigi, FloMaster35000vr', 1249, '4E1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nebula_Lava_Factory', '', '', 0, '133', 'BC', 'BC'),
(1215, 'Nelsonside Valley', 1303, 'Custom', 'v1.2b', 'ZPL', 1250, '4E2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nelsonside_Valley', '', '', 0, '568', 'gDKM', 'gDKM'),
(1216, 'Neon Dimension', 1304, 'Custom', 'v0.1.hp', 'Caron', 1251, '4E3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Neon_Dimension', '', '', 0, '427', 'RR', 'RR'),
(1217, 'New Moon Manor', 1305, 'Custom', 'v1.1', 'Sniki', 1252, '4E4', 0, '', 0, 'https://wiki.tockdom.com/wiki/New_Moon_Manor', '', '', 0, '391', 'nBC', 'nBC'),
(1218, 'Night Factory', 1306, 'Custom', 'v1.4', 'Gito', 1253, '4E5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Night_Factory_(Gito)', '', '', 0, '207', 'TF', 'TF'),
(1219, 'Nightlife Party', 1307, 'Custom', 'v2.2', 'WiiLuigi', 1254, '4E6', 0, '', 2, 'https://wiki.tockdom.com/wiki/Nightlife_Party', '', '', 0, '239', 'MC', 'MC'),
(1220, 'Nightmare Cliff', 1308, 'Custom', 'v2.01', 'Rz', 1255, '4E7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nightmare_Cliff', '', '', 0, '318', 'nBC', 'nBC'),
(1221, 'Nivurbia', 1309, 'Custom', 'v1.31', 'SpyKid', 1256, '4E8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nivurbia', '', '', 0, '174', 'DKS', 'DKS'),
(1222, 'Northern Heights', 1310, 'Custom', 'v2.3.1', 'Lovelifeandtpose024', 1257, '4E9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Northern_Heights', '', '', 0, '797', 'DKS', 'DKS'),
(1223, 'Nostalgic Bowser\'s Castle', 1311, 'Custom', 'v3.1', 'Omonimo747', 1258, '4EA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nostalgic_Bowser%27s_Castle', '', '', 0, '165', 'nBC', 'nBC'),
(1224, 'Nuclear Power', 1312, 'Custom', 'RC3b', 'wabajeffy', 1259, '4EB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nuclear_Power', '', '', 0, '222', 'nDKJP', 'gBC3'),
(1225, 'Obstagoon\'s Palace', 1314, 'Custom', 'v1.04', 'SpyKid', 1260, '4EC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Obstagoon%27s_Palace', '', '', 0, '885', 'BC', 'dPG'),
(1226, 'SM64 Cool, Cool Mountain', 700, 'Other', 'v1.2', 'Waltz', 1634, '662', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Cool,_Cool_Mountain_(Waltz)', '', '', 0, 'S_CCM_W', 'DKS', 'DKS'),
(1227, 'Old Churches', 1315, 'Custom', 'v1.6', 'Kozakura', 1262, '4EE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Old_Churches', '', '', 0, '557', 'dPG', 'dPG'),
(1228, 'Old York Minute', 1316, 'Custom', 'v1.5', 'Kozakura', 1263, '4EF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Old_York_Minute', '', '', 0, '749', 'dDS', 'dDS'),
(1229, 'Oodles of Noodles', 1317, 'Custom', 'Beta', 'Chouchintosh', 1264, '4F0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Oodles_of_Noodles', '', '', 0, '1114', 'GV', 'GV'),
(1230, 'Orange Junction', 1318, 'Custom', 'v1.0', 'Dreacastian-Turnip', 1265, '4F1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Orange_Junction', '', '', 0, '1242', 'DC', 'DC'),
(1231, 'Orbital Outpost', 1319, 'Custom', 'Beta', 'Ferv, TacoJosh', 1266, '4F2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Orbital_Outpost', '', '', 0, '601', 'RR', 'RR'),
(1232, 'Overgrown Stronghold', 1320, 'Custom', 'v1.2', 'Nwt', 1267, '4F3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Overgrown_Stronghold', '', '', 0, 'OS_N', 'DDR', 'DDR'),
(1233, 'Overgrown Temple', 1321, 'Custom', 'v1.12', 'JoeyMK', 1268, '4F4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Overgrown_Temple', '', '', 0, '605', 'nDKJP', 'nDKJP'),
(1234, 'Pac-Track', 1322, 'Custom', 'v1.0', 'Anoob', 1269, '4F5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pac-Track', '', '', 0, '415', 'KC', 'KC'),
(1235, 'Pandora Palace', 1325, 'Custom', 'Beta', 'Shorky', 1270, '4F6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pandora_Palace', '', '', 0, '630', 'LC', 'MC'),
(1236, 'Parallel Paradise', 1327, 'Custom', 'v1.0', 'Kozakura', 1271, '4F7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Parallel_Paradise', '', '', 0, '1243', 'sGV2', 'sGV2'),
(1237, 'Park Cruise', 1328, 'Custom', 'v1.1', 'EdwardJW', 1272, '4F8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Park_Cruise', '', '', 0, '394', 'dPG', 'dPG'),
(1238, 'Parkway Boogie', 1329, 'Custom', 'v1.0', 'ZPL', 1273, '4F9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Parkway_Boogie', '', '', 0, '849', 'gMC', 'gMC'),
(1239, 'Pauline Circuit', 1330, 'Custom', 'v0.9b', 'SquireTurnbolt', 1274, '4FA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pauline_Circuit', '', '', 0, '713', 'DC', 'MH'),
(1240, 'Peach\'s Getaway', 1331, 'Custom', 'v2.0', 'Waltz', 1275, '4FB', 0, '', 2, 'https://wiki.tockdom.com/wiki/Peach%27s_Getaway', '', '', 0, 'PG_W', 'LC', 'MC'),
(1241, 'Peach\'s Ruined Castle', 1332, 'Custom', 'v1.0a', 'Oh ok', 1276, '4FC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Peach%27s_Ruined_Castle_(Oh_ok)', '', '', 0, '432', 'nBC', 'nBC'),
(1242, 'Petite Park', 1333, 'Custom', 'v1.3', 'Baoulettes, WorldsBoss, Tock', 1277, '4FD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Petite_Park', '', '', 0, '049', 'LC', 'MC'),
(1243, 'Phendrana Frostbite', 1334, 'Custom', 'v1.3.3', 'Fuffina, ISwearChris', 1278, '4FE', 0, '', 2, 'https://wiki.tockdom.com/wiki/Phendrana_Frostbite', '', '', 0, '1131', 'TF', 'TF'),
(1244, 'Pianta Plaza', 1335, 'Custom', 'v2.3', 'JadenMKW', 1279, '4FF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pianta_Plaza', '', '', 0, '660', 'dDS', 'dDS'),
(1245, 'Pianta Shore', 1336, 'Custom', 'v1.2.5', 'NateFox', 1280, '500', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pianta_Shore', '', '', 0, '615', 'gPB', 'gPB'),
(1246, 'Pinewood Path', 1337, 'Custom', 'v1.7.1', 'Hollend', 1281, '501', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pinewood_Path', '', '', 0, '533', 'dDS', 'dDS'),
(1247, 'Pipe Underworld', 1338, 'Custom', 'v2.3.le', 'ChaosShadow23', 1282, '502', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pipe_Underworld_(ChaosShadow23)', '', '', 0, '211', 'GV', 'GV'),
(1248, 'Pipe Underworld', 1339, 'Custom', 'v2.09', 'MEGAKart69', 1283, '503', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pipe_Underworld_(MEGAKart69)', '', '', 0, '327', 'nBC', 'nBC'),
(1249, 'Piracy Warning', 1340, 'Custom', 'v1.0', 'Shorky', 1284, '504', 0, '', 0, 'https://wiki.tockdom.com/wiki/Piracy_Warning', '', '', 0, '1020', 'gBC3', 'gBC3'),
(1250, 'Piranha Tropica', 1341, 'Custom', 'v1.0', 'Dreacastian-Turnip', 1285, '505', 0, '', 0, 'https://wiki.tockdom.com/wiki/Piranha_Tropica', '', '', 0, '1205', 'nDKJP', 'nDKJP'),
(1251, 'Pirate Bay Town', 1342, 'Custom', 'Beta', 'Bruh de la Boi, Kozakura, Olivia', 1286, '506', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pirate_Bay_Town', '', '', 0, '912', 'gSGB', 'gSGB'),
(1252, 'Pirate Storm', 1343, 'Custom', 'v1.0', 'ZPL', 1287, '507', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pirate_Storm', '', '', 0, '978', 'gSGB', 'gSGB'),
(1253, 'Planet Pathway', 1344, 'Custom', 'v1.0', 'Cats4Life', 1288, '508', 0, '', 0, 'https://wiki.tockdom.com/wiki/Planet_Pathway', '', '', 0, '1057', 'RR', 'RR'),
(1254, 'Planet Wisp', 1345, 'Custom', 'v1.0', 'Potatoman44', 1289, '509', 0, '', 0, 'https://wiki.tockdom.com/wiki/Planet_Wisp', '', '', 0, '1108', 'dPG', 'dPG'),
(1255, 'Planetary Function', 1346, 'Custom', 'Beta', 'Atmosphere', 1290, '50A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Planetary_Function', '', '', 0, '919', 'RR', 'RR'),
(1256, 'Poisonous Pass', 1347, 'Custom', 'v1.1', 'Atmosphere, Shorky', 1291, '50B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Poisonous_Pass', '', '', 0, '983', 'nDKJP', 'nDKJP'),
(1257, 'Poke Floats', 1348, 'Custom', 'Beta 2', 'G-Force', 1292, '50C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Pok%C3%A9_Floats_(G-Force)', '', '', 0, '1034', 'MT', 'MT'),
(1258, 'Polluted City Shore', 1349, 'Custom', 'v1.0', 'Questorian', 1293, '50D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Polluted_City_Shore', '', '', 0, '746', 'gBC3', 'gBC3'),
(1259, 'Power Strait', 1352, 'Custom', 'v1.0', 'MarioPower55, Luigistar', 1294, '50E', 0, '', 2, 'https://wiki.tockdom.com/wiki/Power_Strait', '', '', 0, 'PS_ML', 'dDS', 'dDS'),
(1260, 'Power Yard', 1353, 'Custom', 'v1.1', 'ZPL, MarioPower55', 1295, '50F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Power_Yard', '', '', 0, '1010', 'TF', 'TF'),
(1261, 'Propeller Paradise', 1354, 'Custom', 'v1.0.opt', 'Mickeyman713', 1296, '510', 0, '', 0, 'https://wiki.tockdom.com/wiki/Propeller_Paradise', '', '', 0, '1158', 'MT', 'MT'),
(1262, 'Puzzle Plank Pass', 1355, 'Custom', 'v2.1', 'AltairYoshi', 1297, '511', 0, '', 0, 'https://wiki.tockdom.com/wiki/Puzzle_Plank_Pass', '', '', 0, '442', 'MC', 'MC'),
(1263, 'Quag Beach', 1356, 'Custom', 'X', 'ZPL', 1298, '512', 1, '', 0, 'https://wiki.tockdom.com/wiki/Quag_Beach', '', '', 0, '633_1', 'KC', 'KC'),
(1264, 'Quag Beach', 1357, 'Custom', 'v1.mkd2', 'ZPL', 1299, '513', 2, '512', 0, 'https://wiki.tockdom.com/wiki/Quag_Beach', '', '', 0, '633_1', 'KC', 'KC'),
(1265, 'Boo Jersey Island', 1358, 'Custom', 'v1.0', 'Bruh de la Boi', 1300, '514', 2, '512', 0, 'https://wiki.tockdom.com/wiki/Boo_Jersey_Island_(Quag_Beach_Texture)', '', '', 0, '633_4', 'KC', 'KC'),
(1266, 'Flooded Quag Beach', 1359, 'Custom', 'v1.0', 'Saiveeon', 1301, '515', 2, '512', 0, 'https://wiki.tockdom.com/wiki/Flooded_Quag_Beach_(Quag_Beach_Texture)', '', '', 0, '633_5', 'KC', 'KC'),
(1267, 'Quag Wilds', 1360, 'Custom', 'v1.0', 'Kozakura', 1302, '516', 2, '512', 0, 'https://wiki.tockdom.com/wiki/Quag_Wilds_(Quag_Beach_Texture)', '', '', 0, '633_6', 'KC', 'KC'),
(1268, 'Quag Beach R', 1361, 'Custom', 'v1.0', 'Bruh de la Boi, Krummers', 1303, '517', 0, '', 0, 'https://wiki.tockdom.com/wiki/Quag_Beach_R_(Quag_Beach_Edit)', '', '', 0, '633_2', 'KC', 'KC'),
(1269, 'Shiny Quag Beach R/T', 1428, 'Custom', 'v1.0', 'MysterE99', 1304, '518', 0, '', 0, 'https://wiki.tockdom.com/wiki/Shiny_Quag_Beach_R/T_(Quag_Beach_Edit)', '', '', 0, '633_3', 'KC', 'KC'),
(1270, 'Quaking Mad Cliffs', 1362, 'Custom', 'v1.1', 'MrFluffy', 1305, '519', 0, '', 0, 'https://wiki.tockdom.com/wiki/Quaking_Mad_Cliffs', '', '', 0, '589', 'gDKM', 'gDKM'),
(1271, 'Quicksand Trail', 1363, 'Custom', 'v1.0', 'Hollend', 1306, '51A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Quicksand_Trail', '', '', 0, '612', 'DDR', 'DDR'),
(1272, 'Quil Island', 1364, 'Custom', 'v1.1', 'Rex', 1307, '51B', 0, '', 2, 'https://wiki.tockdom.com/wiki/Quil_Island', '', '', 0, '1237', 'gBC3', 'gBC3'),
(1273, 'Racer\'s Retreat', 1365, 'Custom', 'v1.0', 'Citrus, Hman6516, Questorian', 1308, '51C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Racer%27s_Retreat', '', '', 0, 'RR_CHQ', 'DC', 'DC'),
(1274, 'Rainbow Dash Road', 1366, 'Custom', 'RC2', 'Guilmon', 1309, '51D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rainbow_Dash_Road', '', '', 0, '042', 'RR', 'RR'),
(1275, 'Rainbow Float Land', 1367, 'Custom', 'v1.11', 'lgmb', 1310, '51E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rainbow_Float_Land', '', '', 0, '341', 'RR', 'RR'),
(1276, 'Rainbow Galaxy Road', 1368, 'Custom', 'v1.1', 'TheGamingBram', 1311, '51F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rainbow_Galaxy_Road', '', '', 0, '1124', 'RR', 'RR'),
(1277, 'Polychrome Path', 1350, 'Custom', 'v2.0', 'Graciefied', 1312, '520', 0, '', 2, 'https://wiki.tockdom.com/wiki/Rainbow_Raceway', '', '', 0, '1179', 'RR', 'RR'),
(1278, 'Rainbow Road DX', 1369, 'Custom', 'v1.0-beta2.', 'Saiveeon', 1313, '521', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rainbow_Road_DX', '', '', 0, '571', 'RR', 'RR'),
(1279, 'Rainbow Road Revolution', 1370, 'Custom', 'v4.4', 'Toadette Hack Fan', 1314, '522', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rainbow_Road_Revolution', '', '', 0, '717', 'RR', 'RR'),
(1280, 'Rainbow Village', 1371, 'Custom', 'v1.0', 'Dreacastian-Turnip', 1315, '523', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rainbow_Village', '', '', 0, 'RV_D', 'dDS', 'dDS'),
(1281, 'Rainfall Ridge', 1372, 'Custom', 'v1.0', 'ZPL', 1316, '524', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rainfall_Ridge', '', '', 0, '801', 'dDS', 'dDS'),
(1282, 'Ramen Village: Food Apocalypse', 1373, 'Custom', 'v2.0.hotfix', 'BroOFun', 1317, '525', 0, '', 0, 'https://wiki.tockdom.com/wiki/Ramen_Village:_Food_Apocalypse', '', '', 0, '1111', 'nDKJP', 'nDKJP'),
(1283, 'Red Loop', 1374, 'Custom', 'v1.92.pro', 'YellowYoshi', 1318, '526', 0, '', 0, 'https://wiki.tockdom.com/wiki/Red_Loop', '', '', 0, '054', 'GV', 'GV'),
(1284, 'Red Rooms', 1375, 'Custom', 'v2.0', 'Jasperr', 1319, '527', 0, '', 0, 'https://wiki.tockdom.com/wiki/Red_Rooms', '', '', 0, '510', 'nBC', 'nBC'),
(1285, 'Red Sector A', 1376, 'Custom', 'v1.2', 'BillyNoodles', 1320, '528', 0, '', 0, 'https://wiki.tockdom.com/wiki/Red_Sector_A_(BillyNoodles)', '', '', 0, '680', 'RR', 'RR'),
(1286, 'Redwood Village', 1377, 'Custom', 'v1.1', 'LucioWins', 1321, '529', 0, '', 0, 'https://wiki.tockdom.com/wiki/Redwood_Village', '', '', 0, '936', 'MT', 'MT'),
(1287, 'Retro Raceway', 1378, 'Custom', 'v1.1', 'ScyHigh', 1322, '52A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Retro_Raceway_(ScyHigh)', '', '', 0, '755', 'nMR', 'nMR'),
(1288, 'Revolutionary Village', 1379, 'Custom', 'Beta', 'Kozakura', 1323, '52B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Revolutionary_Village', '', '', 0, '891', 'DC', 'DC'),
(1289, 'Rezway II', 1380, 'Custom', 'v2.2', 'Trent Rez, Jefe', 1324, '52C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rezway_II', '', '', 0, '045', 'MC', 'MC'),
(1290, 'Rich House', 1381, 'Custom', 'v1.0', 'Flohrianmkw', 1325, '52D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rich_House', '', '', 0, '524', 'CM', 'CM'),
(1291, 'Ring of Fire', 1382, 'Custom', 'v1.0', 'Hman6516, Sheale', 1326, '52E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Ring_of_Fire', '', '', 0, '564', 'GV', 'GV'),
(1292, 'Rio Resort', 1383, 'Custom', 'v1.0', 'Fuffina', 1327, '52F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rio_Resort', '', '', 0, '922', 'gPB', 'gPB'),
(1293, 'Riparian Paradise', 1384, 'Custom', 'v2.1', 'SPT', 1328, '530', 0, '', 0, 'https://wiki.tockdom.com/wiki/Riparian_Paradise', '', '', 0, '658', 'LC', 'nDKJP'),
(1294, 'River of Dreams', 1385, 'Custom', 'v1.3.6', 'xBlue98', 1329, '531', 0, '', 0, 'https://wiki.tockdom.com/wiki/River_of_Dreams', '', '', 0, '147', 'gPB', 'RR'),
(1295, 'Riverside City', 1386, 'Custom', 'v1.0', 'MysterE99', 1330, '532', 0, '', 0, 'https://wiki.tockdom.com/wiki/Riverside_City', '', '', 0, '277', 'MH', 'MH'),
(1296, 'Riverview Square', 1387, 'Custom', 'v1.3', 'FloMaster35000vr, 4TLPati', 1331, '533', 0, '', 0, 'https://wiki.tockdom.com/wiki/Riverview_Square', '', '', 0, '123', 'dDS', 'dDS'),
(1297, 'Rockside River', 1388, 'Custom', 'v2.3', 'Ermelber', 1332, '534', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rockside_River', '', '', 0, '096', 'dPG', 'dPG'),
(1298, 'Rocky Island Rush', 1389, 'Custom', 'v1.1', 'Cats4Life, Comet', 1333, '535', 0, '', 2, 'https://wiki.tockdom.com/wiki/Rocky_Island_Rush', '', '', 0, '1221', 'gSGB', 'gSGB'),
(1299, 'Rocky River Frenzy', 1390, 'Custom', 'v1.0', 'AltairYoshi', 1334, '536', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rocky_River_Frenzy', '', '', 0, '611', 'gDKM', 'gDKM'),
(1300, 'Rocky River Run', 1391, 'Custom', 'v1.3', 'Okin', 1335, '537', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rocky_River_Run', '', '', 0, '1122', 'LC', 'MC'),
(1301, 'Rolling Bowling Wonderland', 1393, 'Custom', 'v1.1', 'Cats4Life', 1336, '538', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rolling_Bowling_Wonderland', '', '', 0, '940', 'DC', 'DC'),
(1302, 'Rooster Island', 1394, 'Custom', 'x', 'Jefe', 1337, '539', 1, '', 0, 'https://wiki.tockdom.com/wiki/Rooster_Island', '', '', 0, '043', 'gPB', 'gPB'),
(1303, 'Rooster Island', 1395, 'Custom', 'v2b.Day', 'Jefe', 1338, '53A', 2, '539', 0, 'https://wiki.tockdom.com/wiki/Rooster_Island', '', '', 0, '043_1', 'gPB', 'gPB'),
(1304, 'Rooster Island', 1396, 'Custom', 'v2b.Night', 'Jefe', 1339, '53B', 2, '539', 0, 'https://wiki.tockdom.com/wiki/Rooster_Island', '', '', 0, '043_2', 'gPB', 'gPB'),
(1305, 'Rosalina\'s Starlight Coaster', 1397, 'Custom', 'v1.5', 'xBlue98', 1340, '53C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rosalina%27s_Starlight_Coaster', '', '', 0, '160', 'RR', 'RR'),
(1306, 'Route 46', 1398, 'Custom', 'v1.1', 'Atmosphere', 1341, '53D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Route_46_(Atmosphere)', '', '', 0, '1078', 'LC', 'MC'),
(1307, 'Rovio Circuit', 1399, 'Custom', 'v1.2', 'LUDAROBE', 1342, '53E', 0, '', 2, 'https://wiki.tockdom.com/wiki/Rovio_Circuit', '', '', 0, '1060', 'nMR', 'nMR'),
(1308, 'Royal Rainbow', 1400, 'Custom', 'v2.4', 'Brawlboxgaming', 1343, '53F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Royal_Rainbow', '', '', 0, '664', 'RR', 'RR'),
(1309, 'Rush City Run', 1402, 'Custom', 'Beta 5.opt', 'GredMega', 1344, '540', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rush_City_Run', '', '', 0, '093', 'dDS', 'dDS'),
(1310, 'Sacred Abyss', 1403, 'Custom', 'Beta 2', 'ZPL', 1345, '541', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sacred_Abyss', '', '', 0, '643', 'dYF', 'dYF'),
(1311, 'Sacred Fogcoast', 1404, 'Custom', 'v1.4', 'YellowYoshi', 1346, '542', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sacred_Fogcoast', '', '', 0, '073', 'MG', 'MG'),
(1312, 'Safari Zone', 1405, 'Custom', 'v1.0', 'Mystora', 1347, '543', 0, '', 0, 'https://wiki.tockdom.com/wiki/Safari_Zone', '', '', 0, '900', 'gDKM', 'gDKM'),
(1313, 'Sahara Hideout', 1406, 'Custom', 'v2.19 Nethe', 'ZPL, Jasperr, Golden RS', 1348, '544', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sahara_Hideout', '', '', 0, '397', 'GV', 'GV'),
(1314, 'Sakura Sanctuary', 1407, 'Custom', 'v1.02', 'Terron, Jasperr', 1349, '545', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sakura_Sanctuary', '', '', 0, '547', 'dPG', 'dPG'),
(1315, 'Saltwater Lake', 1408, 'Custom', 'v1.11', 'Bear', 1350, '546', 0, '', 0, 'https://wiki.tockdom.com/wiki/Saltwater_Lake', '', '', 0, '481', 'nDKJP', 'nDKJP'),
(1316, 'Sandstone Cliffs', 1409, 'Custom', 'v1.3.5', 'Citrus', 1351, '547', 0, '', 2, 'https://wiki.tockdom.com/wiki/Sandstone_Cliffs', '', '', 0, '626', 'MG', 'MG'),
(1317, 'Sandy Citadel', 1410, 'Custom', 'v1.0', 'JDS, SlipperyMac', 1352, '548', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sandy_Citadel', '', '', 0, '553', 'gPB', 'gPB'),
(1318, 'Sandy Clocktower', 1411, 'Custom', 'v1.0', 'Shorky', 1353, '549', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sandy_Clocktower', '', '', 0, '1166', 'dDH', 'dDH'),
(1319, 'Sarasa Kingdom', 1412, 'Custom', 'v1.8', 'AltairYoshi', 1354, '54A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sarasa_Kingdom', '', '', 0, '544', 'DC', 'DC'),
(1320, 'Sea Stadium', 1413, 'Custom', 'v2.16.3', 'zatchi', 1355, '54B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sea_Stadium', '', '', 0, '230', 'KC', 'KC'),
(1321, 'Seaside Circuit', 1414, 'Custom', 'X', 'Super blooper kirio', 1356, '54C', 1, '', 0, 'https://wiki.tockdom.com/wiki/Seaside_Circuit', '', '', 0, '087_1', 'DC', 'DC'),
(1322, 'Seaside Circuit', 1415, 'Custom', 'Beta3 ', 'Super blooper kirio', 1357, '54D', 2, '54C', 0, 'https://wiki.tockdom.com/wiki/Seaside_Circuit', '', '', 0, '087_1', 'DC', 'DC'),
(1323, 'Seaside Circuit', 1416, 'Custom', 'Beta3.Night', 'Super blooper kirio', 1358, '54E', 2, '54C', 0, 'https://wiki.tockdom.com/wiki/Seaside_Circuit', '', '', 0, '087_2', 'DC', 'DC'),
(1324, 'Seaside Resort', 1417, 'Custom', 'v1.5', 'LuigiM', 1359, '54F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Seaside_Resort', '', '', 0, '069', 'KC', 'KC'),
(1325, 'Seasonal Circuit', 1418, 'Custom', 'v3.02', 'Bear, Lovelifeandtpose024', 1360, '550', 0, '', 0, 'https://wiki.tockdom.com/wiki/Seasonal_Circuit_(Bear_%26_Lovelifeandtpose024)', '', '', 0, '417', 'DC', 'DC'),
(1326, 'Seasonal Planet', 1419, 'Custom', 'Beta', 'ZPL', 1361, '551', 0, '', 0, 'https://wiki.tockdom.com/wiki/Seasonal_Planet', '', '', 0, '674', 'RR', 'RR'),
(1327, 'Seaway', 1420, 'Custom', 'v1.02', 'Okin', 1362, '552', 0, '', 0, 'https://wiki.tockdom.com/wiki/Seaway', '', '', 0, '583', 'KC', 'KC'),
(1328, 'Secluded Island', 1421, 'Custom', 'v1.01', 'Caron', 1363, '553', 0, '', 0, 'https://wiki.tockdom.com/wiki/Secluded_Island', '', '', 0, '474', 'KC', 'KC'),
(1329, 'Serene Swampland', 1422, 'Custom', 'v1.2', 'SPT', 1364, '554', 0, '', 0, 'https://wiki.tockdom.com/wiki/Serene_Swampland', '', '', 0, '786', 'MT', 'MT'),
(1330, 'Sewer Passage', 1423, 'Custom', 'v1.0', 'EdwardJW', 1365, '555', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sewer_Passage', '', '', 0, '516', 'KC', 'KC'),
(1331, 'Shadow Woods', 1424, 'Custom', 'v1.2', 'Sniki', 1366, '556', 0, '', 0, 'https://wiki.tockdom.com/wiki/Shadow_Woods', '', '', 0, '331', 'DC', 'DC'),
(1332, 'Sheet Cake Quarry', 1425, 'Custom', 'v1.0', 'Lovelifeandtpose024, CarryOn', 1367, '557', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sheet_Cake_Quarry', '', '', 0, '805', 'nMR', 'nMR'),
(1333, 'Sherbet Ocean', 1426, 'Custom', 'v2.0', 'SpyKid', 1368, '558', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sherbet_Ocean', '', '', 0, '062', 'DKS', 'nSL'),
(1334, 'Shining Caverns', 1427, 'Custom', 'v1.0', 'ZPL', 1369, '559', 0, '', 0, 'https://wiki.tockdom.com/wiki/Shining_Caverns', '', '', 0, '609', 'WGM', 'WGM'),
(1335, 'Shroom Shores', 1430, 'Custom', 'v1.1', 'Questorian', 1370, '55A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Shroom_Shores', '', '', 0, '938', 'KC', 'KC'),
(1336, 'Shroom Skybridge', 1431, 'Custom', 'X', 'Fuffina', 1371, '55B', 1, '', 0, 'https://wiki.tockdom.com/wiki/Shroom_Skybridge', '', '', 0, '979_1', 'MG', 'MG'),
(1337, 'Shroom Skybridge', 1432, 'Custom', 'v1.0', 'Fuffina', 1372, '55C', 2, '55B', 0, 'https://wiki.tockdom.com/wiki/Shroom_Skybridge', '', '', 0, '979_1', 'MG', 'MG'),
(1338, 'Ice Snowbridge', 1433, 'Custom', 'v1.0', 'Atmosphere', 1373, '55D', 2, '55B', 0, 'https://wiki.tockdom.com/wiki/Ice_Snowbridge_(Shroom_Skybridge_Texture)', '', '', 0, '979_2', 'MG', 'MG'),
(1339, 'Verdant Vista', 1434, 'Custom', 'v1.0', 'ISwearChris', 1374, '55E', 2, '55B', 0, 'https://wiki.tockdom.com/wiki/Verdant_Vista_(Shroom_Skybridge_Texture)', '', '', 0, '979_3', 'MG', 'MG'),
(1340, 'Shy Guy Archipelago', 1435, 'Custom', 'v1.2', 'Omonimo747', 1375, '55F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Shy_Guy_Archipelago', '', '', 0, '215', 'gSGB', 'gSGB'),
(1341, 'Shy Guy Circus', 1436, 'Custom', 'v1.0', 'FunkyRacer', 1376, '560', 0, '', 0, 'https://wiki.tockdom.com/wiki/Shy_Guy_Circus', '', '', 0, '1040', 'RR', 'RR'),
(1342, 'Shy Guy Lumber Co.', 1437, 'Custom', 'v1.2.5', 'Metabus', 1377, '561', 0, '', 0, 'https://wiki.tockdom.com/wiki/Shy_Guy_Lumber_Co.', '', '', 0, '1126', 'DKS', 'MT'),
(1343, 'Shy Guy Skies', 1438, 'Custom', 'v1.1.1', 'SquireTurnbolt, Atmosphere', 1378, '562', 0, '', 0, 'https://wiki.tockdom.com/wiki/Shy_Guy_Skies', '', '', 0, '927', 'gBC3', 'gBC3'),
(1344, 'Siberian Chateau', 1440, 'Custom', 'v1.0', 'Jasperr, Golden RS, Terron, NakDak', 1379, '563', 0, '', 0, 'https://wiki.tockdom.com/wiki/Siberian_Chateau', '', '', 0, '559', 'nSL', 'nSL'),
(1345, 'Siege on Shore', 1441, 'Custom', 'Beta 2', 'Chouchintosh', 1380, '564', 0, '', 0, 'https://wiki.tockdom.com/wiki/Siege_on_Shore', '', '', 0, '1036', 'gSGB', 'gSGB'),
(1346, 'Sinister Vault', 1442, 'Custom', 'v1.11', 'SpyKid, Amk528', 1381, '565', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sinister_Vault', '', '', 0, '256', 'sGV2', 'sGV2'),
(1347, 'Six King Labyrinth', 1443, 'Custom', 'v1.3', 'MrBean35000vr, Chadderz', 1382, '566', 0, '', 0, 'https://wiki.tockdom.com/wiki/Six_King_Labyrinth', '', '', 0, '036', 'RR', 'nBC'),
(1348, 'Skirt Circuit', 1445, 'Custom', 'v1.0', 'Graciefied', 1383, '567', 0, '', 0, 'https://wiki.tockdom.com/wiki/Skirt_Circuit', '', '', 0, 'SC_G', 'LC', 'MC'),
(1349, 'Sky Beach', 1446, 'Custom', 'v2.0.mkd', 'Caron', 1384, '568', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sky_Beach', '', '', 0, '063', 'KC', 'KC'),
(1350, 'Sky Courtyard', 1447, 'Custom', 'v1.5', 'Strobenz', 1385, '569', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sky_Courtyard', '', '', 0, '039', 'dYF', 'dYF'),
(1351, 'Sky Grove', 1448, 'Custom', 'v1.3', 'Sniki', 1386, '56A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sky_Grove', '', '', 0, '254', 'MG', 'MG'),
(1352, 'Sky High Island', 1449, 'Custom', 'v1.04', 'Jasperr', 1387, '56B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sky_High_Island', '', '', 0, '488', 'KC', 'KC'),
(1353, 'Sky Shrine', 1451, 'Custom', 'v1.1', 'ChaosShadow23', 1388, '56C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sky_Shrine', '', '', 0, '233', 'MG', 'MG'),
(1354, 'Skybound Cloudscape', 1452, 'Custom', 'v1.2', 'Atmosphere', 1389, '56D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Skybound_Cloudscape', '', '', 0, '1032', 'LC', 'MC'),
(1355, 'Skyline Avenue', 1453, 'Custom', 'v2.1', 'SpyKid', 1390, '56E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Skyline_Avenue', '', '', 0, '171', 'MH', 'MH'),
(1356, 'Skyloft Slope', 1454, 'Custom', 'Beta', 'Atmosphere', 1391, '56F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Skyloft_Slope', '', '', 0, '1153', 'MG', 'MG'),
(1357, 'Slot Circuit', 1455, 'Custom', 'v1.3', 'Jefe', 1392, '570', 0, '', 0, 'https://wiki.tockdom.com/wiki/Slot_Circuit', '', '', 0, '100', 'CM', 'CM'),
(1358, 'Slot Kart Derby', 1456, 'Custom', 'v1.0.mkd2', 'EdwardJW', 1393, '571', 0, '', 0, 'https://wiki.tockdom.com/wiki/Slot_Kart_Derby', '', '', 0, '378', 'sMC3', 'sMC3'),
(1359, 'SMK Speedway', 1457, 'Custom', 'v1.1', 'Flint, I\'m Zappg', 1394, '572', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMK_Speedway', '', '', 0, '687', 'sMC3', 'sMC3'),
(1360, 'SNES Mint Forest 2', 1458, 'Custom', 'v1.0', 'EdwardJW', 1395, '573', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mint_Forest_2', '', '', 0, '1041', 'dYF', 'dYF'),
(1361, 'Snifit Station', 1459, 'Custom', 'v1.0', 'Shorky, Bruh de la Boi', 1396, '574', 0, '', 0, 'https://wiki.tockdom.com/wiki/Snifit_Station', '', '', 0, '823', 'RR', 'RR'),
(1362, 'Snow Halation', 1460, 'Custom', 'v1.0', 'Kozakura', 1397, '575', 0, '', 0, 'https://wiki.tockdom.com/wiki/Snow_Halation', '', '', 0, '490', 'DKS', 'DKS'),
(1363, 'Snowbound Slopes', 1461, 'Custom', 'Beta', 'TacoJosh', 1398, '576', 0, '', 0, 'https://wiki.tockdom.com/wiki/Snowbound_Slopes', '', '', 0, '248', 'DKS', 'DKS'),
(1364, 'Snowflake City', 1462, 'Custom', 'v1.7', 'Sniki', 1399, '577', 0, '', 0, 'https://wiki.tockdom.com/wiki/Snowflake_City', '', '', 0, '1192', 'MH', 'DKS'),
(1365, 'Snowpoint Valley', 1463, 'Custom', 'v1.0', 'Multimariokartds', 1400, '578', 0, '', 0, 'https://wiki.tockdom.com/wiki/Snowpoint_Valley', '', '', 0, '852', 'DKS', 'DKS'),
(1366, 'Snowy Circuit', 1464, 'Custom', 'v1.0', 'Kozakura', 1401, '579', 0, '', 0, 'https://wiki.tockdom.com/wiki/Snowy_Circuit_(Kozakura)', '', '', 0, '1178', 'DKS', 'DKS'),
(1367, 'Snowy Circuit', 1465, 'Custom', 'v1.6', 'Putinas', 1402, '57A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Snowy_Circuit_(Putinas)', '', '', 0, '041', 'DKS', 'DKS'),
(1368, 'Snowy Circuit 2', 1466, 'Custom', 'v2.7', 'Putinas', 1403, '57B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Snowy_Circuit_2', '', '', 0, '047', 'DKS', 'DKS'),
(1369, 'Snowy Drive', 1467, 'Custom', 'v1.2', 'EdwardJW', 1404, '57C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Snowy_Drive', '', '', 0, '306', 'nSL', 'nSL'),
(1370, 'Solstice Tundra', 1468, 'Custom', 'v1.0b', 'Kozakura', 1405, '57D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Solstice_Tundra', '', '', 0, '618', 'MT', 'MT'),
(1371, 'Sonoran Canyon', 1469, 'Custom', 'Alpha', 'FunkyDude15', 1406, '57E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sonoran_Canyon', '', '', 0, '645', 'DDR', 'DDR'),
(1372, 'Sootopolis Reef', 1470, 'Custom', 'v1.0', 'Cats4Life, Mystora', 1407, '57F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sootopolis_Reef', '', '', 0, '867', 'KC', 'KC'),
(1373, 'Soulja Boy Circuit', 1471, 'Custom', 'v1.0', 'G-Force', 1408, '580', 0, '', 0, 'https://wiki.tockdom.com/wiki/Soulja_Boy_Circuit', '', '', 0, 'SBC_G', 'dDS', 'gWS'),
(1374, 'Space Jam Stadium', 1472, 'Custom', 'v1.0', 'Lovelifeandtpose024, KartoffelKorps', 1409, '581', 0, '', 0, 'https://wiki.tockdom.com/wiki/Space_Jam_Stadium', '', '', 0, '824', 'DC', 'DC'),
(1375, 'Space Race Castle', 1473, 'Custom', 'v1.0', 'MysterE99', 1410, '582', 0, '', 0, 'https://wiki.tockdom.com/wiki/Space_Race_Castle_(MysterE99)', '', '', 0, '264', 'RR', 'RR'),
(1376, 'Space Road', 1474, 'Custom', 'v3.0', 'Maximiliano', 1411, '583', 0, '', 0, 'https://wiki.tockdom.com/wiki/Space_Road_(Maximiliano)', '', '', 0, '237', 'RR', 'RR'),
(1377, 'Sparkling Cavern', 1475, 'Custom', 'v1.0', 'Rosalina Speedruns, Bear', 1412, '584', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sparkling_Cavern', '', '', 0, '466', 'WGM', 'WGM'),
(1378, 'Sparkly Road', 1476, 'Custom', 'v2.2', 'BrawlerJesse, LuigiM, Renegade Ciara, wiimaster35000vr', 1413, '585', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sparkly_Road', '', '', 0, '035', 'RR', 'RR'),
(1379, 'Spectral Station', 1477, 'Custom', 'v1.1', 'MrFluffy', 1414, '586', 0, '', 0, 'https://wiki.tockdom.com/wiki/Spectral_Station', '', '', 0, '550', 'MH', 'MH'),
(1380, 'Spectral University', 1478, 'Custom', 'v1.0', 'Mystic, tasrhys', 1415, '587', 0, '', 0, 'https://wiki.tockdom.com/wiki/Spectral_University', '', '', 0, '625', 'sGV2', 'sGV2'),
(1381, 'Spike Desert', 1479, 'Custom', 'v2.1', 'Sniki', 1416, '588', 0, '', 0, 'https://wiki.tockdom.com/wiki/Spike_Desert_(Sniki)', '', '', 0, '307', 'dDH', 'dDH'),
(1382, 'Spooky Skeleton Spaghetti', 1480, 'Custom', 'v1.0', 'CarryOn', 1417, '589', 0, '', 0, 'https://wiki.tockdom.com/wiki/Spooky_Skeleton_Spaghetti', '', '', 0, '1037', 'DC', 'DC'),
(1383, 'Spooky Swamp', 1481, 'Custom', 'v2.1', 'EdwardJW', 1418, '58A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Spooky_Swamp', '', '', 0, '325', 'sGV2', 'sGV2'),
(1384, 'Stadium Scramble', 1482, 'Custom', 'v1.0', 'Questorian', 1419, '58B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Stadium_Scramble', '', '', 0, '504', 'dDS', 'gWS'),
(1385, 'Star Slope', 1483, 'Custom', 'v1.2+', 'Torran', 1420, '58C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Star_Slope_(Torran)', '', '', 0, '180', 'MC', 'RR'),
(1386, 'Starbit Station', 1484, 'Custom', 'v1.0', 'Kozakura', 1421, '58D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Starbit_Station', '', '', 0, '627', 'dPG', 'dPG'),
(1387, 'Stardust Pathway', 1485, 'Custom', 'v1.0', 'AltairYoshi', 1422, '58E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Stardust_Pathway', '', '', 0, '676', 'RR', 'RR'),
(1388, 'Stargaze Summit', 1486, 'Custom', 'v1.2b', 'Ferv', 1423, '58F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Stargaze_Summit', '', '', 0, '493', 'DKS', 'DKS'),
(1389, 'Starlit District', 1487, 'Custom', 'v2.0', 'Fuffina', 1424, '590', 0, '', 0, 'https://wiki.tockdom.com/wiki/Starlit_District', '', '', 0, '883', 'MC', 'MC'),
(1390, 'Starlit Sanctuary', 1488, 'Custom', 'v2.0', 'Kozakura', 1425, '591', 0, '', 0, 'https://wiki.tockdom.com/wiki/Starlit_Sanctuary', '', '', 0, '542', 'GV', 'GV'),
(1391, 'Starry Cityscape', 1489, 'Custom', 'v0.5', 'bugsy', 1426, '592', 0, '', 0, 'https://wiki.tockdom.com/wiki/Starry_Cityscape', '', '', 0, '1005', 'RR', 'RR'),
(1392, 'Starshine Atoll', 1490, 'Custom', 'v1.1', 'ZPL', 1427, '593', 0, '', 0, 'https://wiki.tockdom.com/wiki/Starshine_Atoll', '', '', 0, '494', 'KC', 'KC'),
(1393, 'Stereo Madness', 1491, 'Custom', 'Beta 1.2', 'G-Force', 1428, '594', 0, '', 0, 'https://wiki.tockdom.com/wiki/Stereo_Madness', '', '', 0, '1018', 'sMC3', 'sMC3'),
(1394, 'Stickerbush Serenity', 1492, 'Custom', 'v2.1', 'Fuffina', 1429, '595', 0, '', 0, 'https://wiki.tockdom.com/wiki/Stickerbush_Serenity', '', '', 0, '1021', 'MG', 'MG'),
(1395, 'Storm after the Calm', 1493, 'Custom', 'v1.0', 'LucioWins', 1430, '596', 0, '', 0, 'https://wiki.tockdom.com/wiki/Storm_after_the_Calm', '', '', 0, '903', 'gDKM', 'gDKM'),
(1396, 'Strange Frontier', 1494, 'Custom', 'v1.mkd', 'TL', 1431, '597', 0, '', 0, 'https://wiki.tockdom.com/wiki/Strange_Frontier', '', '', 0, '750', 'RR', 'RR'),
(1397, 'Subspace Factory', 1496, 'Custom', 'v1.3.mkd', 'Caron', 1432, '598', 0, '', 0, 'https://wiki.tockdom.com/wiki/Subspace_Factory', '', '', 0, '085', 'gBC3', 'gBC3'),
(1398, 'Summer Starville', 1497, 'Custom', 'v2.1', 'SpyKid', 1433, '599', 0, '', 0, 'https://wiki.tockdom.com/wiki/Summer_Starville', '', '', 0, '107', 'MH', 'dDS'),
(1399, 'Sundown Streets', 1498, 'Custom', 'v1.03-ctgp', 'SpyKid', 1434, '59A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sundown_Streets', '', '', 0, '543', 'MH', 'DC'),
(1400, 'Sunset Circuit', 1499, 'Custom', 'v3.1', 'CyrusTheYoshi', 1435, '59B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Circuit_(CyrusTheYoshi)', '', '', 0, '354', 'dYF', 'dYF'),
(1401, 'Sunset Desert', 1500, 'Custom', 'Beta 1.2', 'G-Force', 1436, '59C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Desert_(G-Force)', '', '', 0, '1201', 'dDH', 'dDH'),
(1402, 'Sunset Forest', 1501, 'Custom', 'v1.0', 'KevinVG207, Riidefi', 1437, '59D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Forest_(KevinVG207_%26_Riidefi)', '', '', 0, '339', 'MG', 'MG'),
(1403, 'Sunset Forest', 1502, 'Custom', 'v1.0', 'ZPL', 1438, '59E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Forest_(ZPL)', '', '', 0, '781', 'MG', 'MG'),
(1404, 'Sunset Highway', 1503, 'Custom', 'RC1', 'Diego Vapy', 1439, '59F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Highway', '', '', 0, 'SH_D', 'MH', 'MH'),
(1405, 'Sunset Island', 1504, 'Custom', 'v1.0', 'Questorian', 1440, '5A0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Island_(Questorian)', '', '', 0, '792', 'gPB', 'gPB'),
(1406, 'Sunset Pass', 1505, 'Custom', 'v1.1', 'pokey-424', 1441, '5A1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Pass_(pokey-424)', '', '', 0, '778', 'nMR', 'nMR'),
(1407, 'Sunset Raceway', 1506, 'Custom', 'v3.1.mkd2', 'Ermelber', 1442, '5A2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Raceway', '', '', 0, '105', 'DC', 'DC'),
(1408, 'Sunset Resort', 1507, 'Custom', 'v1.1', 'Wraith Hopper', 1443, '5A3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Resort', '', '', 0, '1044', 'DC', 'DC'),
(1409, 'Sunset Ridge', 1508, 'Custom', 'RC5.mkd', 'Vulcanus2, BigOto2', 1444, '5A4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Ridge_(Vulcanus2_%26_BigOto2)', '', '', 0, '046', 'MG', 'MG'),
(1410, 'Sunset Ridge', 1509, 'Custom', 'v1.21', 'ZPL', 1445, '5A5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Ridge_(ZPL)', '', '', 0, '686', 'MG', 'MG'),
(1411, 'Sunset Sewer', 1510, 'Custom', 'v1.1', 'Aidan190903, Oh ok', 1446, '5A6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunset_Sewer', '', '', 0, '694', 'KC', 'KC'),
(1412, 'Sunshine Island', 1511, 'Custom', 'v1.0', 'NakDak, Jasperr', 1447, '5A7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sunshine_Island', '', '', 0, '500', 'KC', 'KC'),
(1413, 'Super Bell Circuit', 1512, 'Custom', 'v2.0', 'Squadaloo', 1448, '5A8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Super_Bell_Circuit', '', '', 0, '706', 'nMR', 'nMR'),
(1414, 'Super Blooper Circuit', 1513, 'Custom', 'v1.0', 'ZPL', 1449, '5A9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Super_Blooper_Circuit', '', '', 0, '962', 'gPB', 'gPB'),
(1415, 'Super Hexagon', 1514, 'Custom', 'v1.0.alt', 'Metabus', 1450, '5AA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Super_Hexagon', '', '', 0, '1187', 'gSGB', 'gSGB'),
(1416, 'Super Marine World', 1515, 'Custom', 'v1.1', 'MrFluffy', 1451, '5AB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Super_Marine_World', '', '', 0, '716', 'nSL', 'KC'),
(1417, 'Super Sky Courtyard', 1516, 'Custom', 'RC4', 'Strobenz', 1452, '5AC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Super_Sky_Courtyard', '', '', 0, '199', 'dYF', 'dYF'),
(1418, 'Superstar Dystopia', 1517, 'Custom', 'v1.0', 'SpyKid', 1453, '5AD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Superstar_Dystopia', '', '', 0, '762', 'BC', 'MH'),
(1419, 'Suzuka Circuit', 1518, 'Custom', 'v1.3', 'lgmb', 1454, '5AE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Suzuka_Circuit', '', '', 0, '418', 'DC', 'nMR'),
(1420, 'Sweet Galaxy Canyon', 1519, 'Custom', 'Beta.mkf', 'Mystora', 1455, '5AF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sweet_Galaxy_Canyon', '', '', 0, '639', 'sMC3', 'sMC3'),
(1421, 'Sweet Galaxy Canyon 2', 1520, 'Custom', 'v1.0', 'Mystora', 1456, '5B0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sweet_Galaxy_Canyon_2', '', '', 0, '1206', 'sMC3', 'sMC3'),
(1422, 'Sweet Garden', 1521, 'Custom', 'RC5', 'ishiyama263', 1457, '5B1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sweet_Garden', '', '', 0, '266', 'dPG', 'dPG'),
(1423, 'Sweet Retreat', 1522, 'Custom', 'v1.0', 'Kozakura', 1458, '5B2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sweet_Retreat', '', '', 0, '935', 'MH', 'MH'),
(1424, 'Sweet Sweet Universe', 1523, 'Custom', 'Beta 2.ctja', 'Zai', 1459, '5B3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sweet_Sweet_Universe', '', '', 0, '636', 'MT', 'MT');
INSERT INTO `mkvn_tracks` (`ID`, `Track_Name`, `TrackSort`, `Track_Type`, `Track_version`, `Track_Creator`, `Track_DEC_ID`, `Track_Hex_ID`, `Slot_Type`, `SubTrackTo`, `NewTrack`, `Wiki_Link`, `DLC_Music_Name`, `DLC_Music_YT_EMBED`, `DLC_Music_PackID`, `Local_File`, `Tprop`, `Tmus`) VALUES
(1425, 'Taiga Base', 1524, 'Custom', 'Beta', 'Bruh de la Boi', 1460, '5B4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Taiga_Base', '', '', 0, '830', 'dPG', 'dPG'),
(1426, 'Talicid Falls', 1525, 'Custom', 'v1.1', 'Shorky', 1461, '5B5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Talicid_Falls', '', '', 0, '1097', 'gDKM', 'gDKM'),
(1427, 'Techno Factory Island Traverse', 1527, 'Custom', 'v1.0', 'Coffee Toffee', 1462, '5B6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Techno_Factory_Island_Traverse', '', '', 0, '1235', 'TF', 'TF'),
(1428, 'Temple Bay', 1528, 'Custom', 'v1.0', 'Kozakura', 1463, '5B7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Temple_Bay_(Kozakura)', '', '', 0, 'TB_K', 'WGM', 'WGM'),
(1429, 'Terra Ursae', 1529, 'Custom', 'v1.2.2b', 'Bear', 1464, '5B8', 0, '', 2, 'https://wiki.tockdom.com/wiki/Terra_Ursae', '', '', 0, '1112', 'nDKJP', 'nDKJP'),
(1430, 'Test Environment', 1530, 'Custom', 'v1.0', 'Elemental', 1465, '5B9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Test_Environment', '', '', 0, '1100', 'LC', 'MC'),
(1431, 'Thameside Promenade', 1531, 'Custom', 'v1.0-hotfix', 'Bear', 1466, '5BA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Thameside_Promenade', '', '', 0, '736', 'DC', 'DC'),
(1432, 'The Backrooms', 1533, 'Custom', 'v1.0b', 'SpartaYoshi, Lovelifeandtpose024', 1467, '5BB', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Backrooms', '', '', 0, '877', 'LC', 'aBP'),
(1433, 'The Best Custom Track of 2019', 1534, 'Custom', 'v1.0', 'Riidefi', 1468, '5BC', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Best_Custom_Track_of_2019', '', '', 0, '489', 'LC', 'MC'),
(1434, 'The Big Bad Bog', 1535, 'Custom', 'v1.0', 'Questorian', 1469, '5BD', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Big_Bad_Bog', '', '', 0, '793', 'dDH', 'dDH'),
(1435, 'The Castle of Broken Promises', 1536, 'Custom', 'v1.6', 'ISwearChris', 1470, '5BE', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Castle_of_Broken_Promises', '', '', 0, '1151', 'gBC3', 'gBC3'),
(1436, 'The Chamber', 1537, 'Custom', 'v1.3.2.ikw', 'Sucht93a', 1471, '5BF', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Chamber', '', '', 0, '186', 'MG', 'RR'),
(1437, 'The Nether', 1540, 'Custom', 'X', 'JorisMKW', 1472, '5C0', 1, '', 0, 'https://wiki.tockdom.com/wiki/The_Nether', '', '', 0, '183_1', 'gBC3', 'gBC3'),
(1438, 'The Nether', 1541, 'Custom', 'v1.2', 'JorisMKW', 1473, '5C1', 2, '5C0', 0, 'https://wiki.tockdom.com/wiki/The_Nether', '', '', 0, '183_1', 'gBC3', 'gBC3'),
(1439, 'The End', 1542, 'Custom', 'v1.4', 'wg93589', 1474, '5C2', 2, '5C0', 0, 'https://wiki.tockdom.com/wiki/The_End_(The_Nether_Texture)', '', '', 0, '183_2', 'gBC3', 'gBC3'),
(1440, 'The Overworld', 1543, 'Custom', 'v1.0', 'Mystora', 1475, '5C3', 2, '5C0', 0, 'https://wiki.tockdom.com/wiki/The_Overworld_(The_Nether_Texture)', '', '', 0, '183_3', 'gBC3', 'gBC3'),
(1441, 'The Plain of Atlantis', 1544, 'Custom', 'v1.1', 'Jiyuu', 1476, '5C4', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Plain_of_Atlantis', '', '', 0, '393', 'KC', 'KC'),
(1442, 'The Rabbit Hole', 1545, 'Custom', 'v1.0', 'Sucht93a', 1477, '5C5', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Rabbit_Hole', '', '', 0, '225', 'gDKM', 'MT'),
(1443, 'The Seamlands', 1546, 'Custom', 'v1.0', 'Metabus, Fuffina, ._.', 1478, '5C6', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Seamlands', '', '', 0, '1163', 'RR', 'RR'),
(1444, 'The Windmill Peak', 1547, 'Custom', 'v1.2', 'Shorky', 1479, '5C7', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Windmill_Peak', '', '', 0, '1035', 'DC', 'DC'),
(1445, 'The World of Two-Color', 1548, 'Custom', 'X', 'tari', 1480, '5C8', 1, '', 0, 'https://wiki.tockdom.com/wiki/The_World_of_Two-Color', '', '', 0, '808_1', 'LC', 'MC'),
(1446, 'The World of Two-Color', 1549, 'Custom', 'v1.0(Color ', 'tari', 1481, '5C9', 2, '5C8', 0, 'https://wiki.tockdom.com/wiki/The_World_of_Two-Color', '', '', 0, '808_1', 'LC', 'MC'),
(1447, 'The World of Two-Color', 1550, 'Custom', 'v1.0(Color ', 'tari', 1482, '5CA', 2, '5C8', 0, 'https://wiki.tockdom.com/wiki/The_World_of_Two-Color', '', '', 0, '808_2', 'LC', 'MC'),
(1448, 'The World of Two-Color', 1551, 'Custom', 'v1.0(Color ', 'tari', 1483, '5CB', 2, '5C8', 0, 'https://wiki.tockdom.com/wiki/The_World_of_Two-Color', '', '', 0, '808_3', 'LC', 'MC'),
(1449, 'Thump Bump Forest', 1552, 'Custom', 'v2.1.1', 'SquireTurnbolt', 1484, '5CC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Thump_Bump_Forest', '', '', 0, '758', 'sGV2', 'sGV2'),
(1450, 'Thunder Canyon', 1553, 'Custom', 'v2.0', 'bugsy', 1485, '5CD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Thunder_Canyon', '', '', 0, '546', 'gBC3', 'gBC3'),
(1451, 'Thwomp Factory', 1555, 'Custom', 'v1.3', 'Mystora, Kozakura', 1486, '5CE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Thwomp_Factory_(Mystora_%26_Kozakura)', '', '', 0, '702', 'gBC3', 'gBC3'),
(1452, 'Thwomp Swamp', 1556, 'Custom', 'v1.1', 'MysterE99', 1487, '5CF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Thwomp_Swamp', '', '', 0, '299', 'sGV2', 'sGV2'),
(1453, 'Ticking Sands', 1557, 'Custom', 'v1.0', 'LucioWins', 1488, '5D0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Ticking_Sands', '', '', 0, '1245', 'DDR', 'DDR'),
(1454, 'Tideshift Town', 1558, 'Custom', 'v1.1', 'Bladestorm227', 1489, '5D1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tideshift_Town', '', '', 0, '1012', 'dDS', 'dDS'),
(1455, 'Timber Rapids', 1559, 'Custom', 'Beta', 'ZPL, Kozakura', 1490, '5D2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Timber_Rapids', '', '', 0, '732', 'nDKJP', 'nDKJP'),
(1456, 'Time Entanglement', 1560, 'Custom', 'v1.0', 'Der Der, Kozakura', 1491, '5D3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Time_Entanglement', '', '', 0, '690', 'gDKM', 'gDKM'),
(1457, 'Timeshift Temple', 1561, 'Custom', 'Beta', 'Citrus, Riidefi', 1492, '5D4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Timeshift_Temple', '', '', 0, '691', 'DDR', 'DDR'),
(1458, 'Tiny Town Route', 1562, 'Custom', 'v1.0', 'ZPL', 1493, '5D5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tiny_Town_Route', '', '', 0, '498', 'DC', 'DC'),
(1459, 'Toad Town', 1563, 'Custom', 'v1.1', 'Anoob', 1494, '5D6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toad_Town_(ANoob)', '', '', 0, '357', 'MH', 'MH'),
(1460, 'Toadette Circuit', 1564, 'Custom', 'v1.1', 'Toadette Hack Fan', 1495, '5D7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toadette_Circuit', '', '', 0, '1030', 'LC', 'MC'),
(1461, 'Toadette\'s Castle', 1565, 'Custom', 'v2.0', 'FunkyRacer', 1496, '5D8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toadette%27s_Castle_(FunkyRacer)', '', '', 0, '1154', 'BC', 'BC'),
(1462, 'Toadette\'s Garden', 1566, 'Custom', 'v1.0', 'Toadette Hack Fan', 1497, '5D9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toadette%27s_Garden', '', '', 0, '1121', 'dPG', 'dPG'),
(1463, 'Toad\'s Ridge', 1567, 'Custom', 'v1.0', 'Potatoman44', 1498, '5DA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toad%27s_Ridge', '', '', 0, 'TR_P', 'LC', 'MC'),
(1464, 'Toad\'s Temple', 1568, 'Custom', 'v1.4', 'LucioWins', 1499, '5DB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toad%27s_Temple', '', '', 0, '984', 'WGM', 'WGM'),
(1465, 'Torrential Flood Lake', 1569, 'Custom', 'v2.3', 'Bri911', 1500, '5DC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Torrential_Flood_Lake', '', '', 0, '361', 'gPB', 'gPB'),
(1466, 'Torrential Treetops', 1570, 'Custom', 'v1.0', 'Lovelifeandtpose024', 1501, '5DD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Torrential_Treetops', '', '', 0, '496', 'nDKJP', 'nDKJP'),
(1467, 'Toxic Mushroom Falls', 1571, 'Custom', 'v1.0', 'ZPL', 1502, '5DE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toxic_Mushroom_Falls', '', '', 0, '816', 'MG', 'MG'),
(1468, 'Toxic Neon', 1572, 'Custom', 'Beta', 'BroOFun', 1503, '5DF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toxic_Neon', '', '', 0, 'TN_B', 'BC', 'BC'),
(1469, 'Toy Story', 1573, 'Custom', 'Beta', 'Anoob', 1504, '5E0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Toy_Story', '', '', 0, '414', 'LC', 'MC'),
(1470, 'Trainbow Road', 1574, 'Custom', 'v1a', 'MysterE99', 1505, '5E1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Trainbow_Road_(MysterE99)', '', '', 0, '321', 'RR', 'RR'),
(1471, 'Tranquility Temple', 1575, 'Custom', 'v1.0.1', 'Metabus', 1506, '5E2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tranquility_Temple', '', '', 0, '1138', 'MT', 'MT'),
(1472, 'Treetop Run', 1576, 'Custom', 'v1.0', '._.', 1507, '5E3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Treetop_Run', '', '', 0, '893', 'MT', 'MT'),
(1473, 'Trick Mountain', 1577, 'Custom', 'v1.0', 'Questorian', 1508, '5E4', 0, '', 0, 'https://wiki.tockdom.com/wiki/Trick_Mountain_(Questorian)', '', '', 0, '569', 'nDKJP', 'nDKJP'),
(1474, 'Triple Trouble Temple', 1579, 'Custom', 'v1.0', 'CarryOn, KantoEpic', 1509, '5E5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Triple_Trouble_Temple', '', '', 0, '985', 'nBC', 'nBC'),
(1475, 'Tropical Cloudway', 1580, 'Custom', 'v1.2', 'AltairYoshi, Kozakura', 1510, '5E6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tropical_Cloudway', '', '', 0, '653', 'MG', 'MG'),
(1476, 'Tropical Factory', 1581, 'Custom', 'v1.4', 'Sniki', 1511, '5E7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tropical_Factory', '', '', 0, '240', 'MH', 'TF'),
(1477, 'Tsukuba Circuit', 1582, 'Custom', 'v1.1 (fun,r', 'lgmb', 1512, '5E8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tsukuba_Circuit', '', '', 0, '480', 'nMR', 'nMR'),
(1478, 'Tumbleweed Traverse', 1583, 'Custom', 'RC1.beta', 'Questorian', 1513, '5E9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tumbleweed_Traverse', '', '', 0, '666', 'WGM', 'WGM'),
(1479, 'Turbulence', 1584, 'Custom', 'v1.1', 'LucioWins', 1514, '5EA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Turbulence', '', '', 0, '1072', 'nSL', 'nSL'),
(1480, 'Turtwig Circuit', 1585, 'Custom', 'Beta', 'Blaze ok', 1515, '5EB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Turtwig_Circuit', '', '', 0, 'TC_Bo', 'LC', 'MC'),
(1481, 'Twilight Highway', 1586, 'Custom', 'v2.0', 'SpyKid', 1516, '5EC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Twilight_Highway', '', '', 0, '067', 'MH', 'MH'),
(1482, 'Twilight Valley', 1588, 'Custom', 'Beta 2', 'Atmosphere', 1517, '5ED', 0, '', 0, 'https://wiki.tockdom.com/wiki/Twilight_Valley', '', '', 0, '1075', 'LC', 'MC'),
(1483, 'Twin Peaks', 1589, 'Custom', 'v1.6', 'Sucht93a', 1518, '5EE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Twin_Peaks', '', '', 0, '193', 'MT', 'MT'),
(1484, 'Umbreon\'s Final Rollercoaster', 1590, 'Custom', 'v1.0', 'CarryOn', 1519, '5EF', 0, '', 0, 'https://wiki.tockdom.com/wiki/Umbreon%27s_Final_Rollercoaster', '', '', 0, '1244', 'dDS', 'gWS'),
(1485, 'Under Construction Circuit', 1591, 'Custom', 'v1.5', 'Atmosphere', 1520, '5F0', 0, '', 0, 'https://wiki.tockdom.com/wiki/Under_Construction_Circuit', '', '', 0, '894', 'TF', 'TF'),
(1486, 'Underground Sky', 1592, 'Custom', 'v1.5', 'Caron', 1521, '5F1', 0, '', 0, 'https://wiki.tockdom.com/wiki/Underground_Sky_(Caron)', '', '', 0, '326', 'gMC', 'gMC'),
(1487, 'Underpass & Highway', 1593, 'Custom', 'Beta 2', 'Skipper93653, SMG2', 1522, '5F2', 0, '', 0, 'https://wiki.tockdom.com/wiki/Underpass_%26_Highway', '', '', 0, '355', 'dDS', 'dDS'),
(1488, 'Undiscovered Offlimit', 1594, 'Custom', 'v1.8', 'Keiichi1996', 1523, '5F3', 0, '', 0, 'https://wiki.tockdom.com/wiki/Undiscovered_Offlimit', '', '', 0, '178', 'BC', 'BC'),
(1489, 'Unfinished Bowser Castle', 1595, 'Custom', 'Beta 2', 'Bruh de la Boi', 1524, '5F4', 0, '', 2, 'https://wiki.tockdom.com/wiki/Unfinished_Bowser_Castle', '', '', 0, '1027', 'gBC3', 'gBC3'),
(1490, 'Unfinished Mario Circuit', 1596, 'Custom', 'v2.0-hotfix', 'Jiyuu', 1525, '5F5', 0, '', 0, 'https://wiki.tockdom.com/wiki/Unfinished_Mario_Circuit', '', '', 0, '383', 'sMC3', 'sMC3'),
(1491, 'Unnamed Town', 1597, 'Custom', 'v1.5.5', 'Bladestorm227', 1526, '5F6', 0, '', 0, 'https://wiki.tockdom.com/wiki/Unnamed_Town', '', '', 0, '252', 'MH', 'dDS'),
(1492, 'Unnamed Valley', 1598, 'Custom', 'v2.1b', 'Sucht93a', 1527, '5F7', 0, '', 0, 'https://wiki.tockdom.com/wiki/Unnamed_Valley_(Sucht93a)', '', '', 0, '365', 'nBC', 'nBC'),
(1493, 'Urban Gallery', 1599, 'Custom', 'v1.0-beta', 'SpyKid', 1528, '5F8', 0, '', 0, 'https://wiki.tockdom.com/wiki/Urban_Gallery', '', '', 0, '535', 'MC', 'MC'),
(1494, 'Utopian Fantasia', 1600, 'Custom', 'v1.1', 'Kozakura', 1529, '5F9', 0, '', 0, 'https://wiki.tockdom.com/wiki/Utopian_Fantasia', '', '', 0, '673', 'sMC3', 'sMC3'),
(1495, 'Vacation Cruise', 1601, 'Custom', 'Beta', 'acaruso', 1530, '5FA', 0, '', 0, 'https://wiki.tockdom.com/wiki/Vacation_Cruise', '', '', 0, '963', 'gPB', 'gPB'),
(1496, 'Vacay Bay', 1602, 'Custom', 'v2.0', 'SquireTurnbolt', 1531, '5FB', 0, '', 0, 'https://wiki.tockdom.com/wiki/Vacay_Bay', '', '', 0, '951', 'gPB', 'gPB'),
(1497, 'Variety Pack Circuit', 1603, 'Custom', 'v1.0', 'ZPL, Brawlboxgaming', 1532, '5FC', 0, '', 0, 'https://wiki.tockdom.com/wiki/Variety_Pack_Circuit', '', '', 0, '964', 'gMC', 'gMC'),
(1498, 'Venus Mountain', 1604, 'Custom', 'Beta 1.2', 'G-Force', 1533, '5FD', 0, '', 0, 'https://wiki.tockdom.com/wiki/Venus_Mountain', '', '', 0, '1172', 'GV', 'GV'),
(1499, 'Verdant Wilds', 1605, 'Custom', 'v1.0-hotfix', 'Bear, Lovelifeandtpose024', 1534, '5FE', 0, '', 0, 'https://wiki.tockdom.com/wiki/Verdant_Wilds', '', '', 0, '737', 'KC', 'KC'),
(1500, 'Vile Isle', 1606, 'Custom', 'v1.4.1', 'Citrus', 1535, '5FF', 0, '', 2, 'https://wiki.tockdom.com/wiki/Vile_Isle', '', '', 0, '715', 'nBC', 'nBC'),
(1501, 'Violin Route', 1607, 'Custom', 'v1.0', 'Lovelifeandtpose024', 1536, '600', 0, '', 0, 'https://wiki.tockdom.com/wiki/Violin_Route', '', '', 0, '695', 'CM', 'CM'),
(1502, 'Volador Castle', 1608, 'Custom', 'v1.4.2', 'Okin', 1537, '601', 0, '', 0, 'https://wiki.tockdom.com/wiki/Volador_Castle', '', '', 0, '366', 'gBC3', 'gBC3'),
(1503, 'Volcanic Pipeyard', 1609, 'Custom', 'v3.1', 'ChaosShadow23', 1538, '602', 0, '', 0, 'https://wiki.tockdom.com/wiki/Volcanic_Pipeyard', '', '', 0, '113', 'GV', 'GV'),
(1504, 'Volcanic Skyway', 1610, 'Custom', 'v1.1', 'ZPL', 1539, '603', 0, '', 0, 'https://wiki.tockdom.com/wiki/Volcanic_Skyway_(ZPL)', '', '', 0, '655', 'gDKM', 'gDKM'),
(1505, 'Volcanic Skyway II', 1611, 'Custom', 'v4.0', 'BigOto2', 1540, '604', 0, '', 0, 'https://wiki.tockdom.com/wiki/Volcanic_Skyway_II', '', '', 0, '037', 'GV', 'GV'),
(1506, 'Volcanic Valley', 1612, 'Custom', 'v2.6.1.le', 'MEGAKart69', 1541, '605', 0, '', 0, 'https://wiki.tockdom.com/wiki/Volcanic_Valley', '', '', 0, '289', 'BC', 'BC'),
(1507, 'Volcano Beach 3', 1613, 'Custom', 'v1.5', 'Ermelber', 1542, '606', 0, '', 0, 'https://wiki.tockdom.com/wiki/Volcano_Beach_3', '', '', 0, '115', 'gPB', 'gPB'),
(1508, 'Volcano Canyon', 1614, 'Custom', 'v2.2', 'Multimariokartds', 1543, '607', 0, '', 0, 'https://wiki.tockdom.com/wiki/Volcano_Canyon', '', '', 0, '130', 'GV', 'GV'),
(1509, 'Volcano Valley', 1615, 'Custom', 'v1.5', 'NikoPlays', 1544, '608', 0, '', 0, 'https://wiki.tockdom.com/wiki/Volcano_Valley_(NikoPlays)', '', '', 0, '532', 'BC', 'BC'),
(1510, 'VVVVVV Circuit', 1616, 'Custom', 'v1.7', 'TheZACAtac', 1545, '609', 0, '', 0, 'https://wiki.tockdom.com/wiki/VVVVVV_Circuit', '', '', 0, '269', 'gBC3', 'gBC3'),
(1511, 'VVVVVV Circuit 2', 1617, 'Custom', 'v1.3', 'TheZACAtac', 1546, '60A', 0, '', 0, 'https://wiki.tockdom.com/wiki/VVVVVV_Circuit_2', '', '', 0, '283', 'gBC3', 'gBC3'),
(1512, 'VVVVVV Circuit 3', 1618, 'Custom', 'v1.1', 'TheZACAtac', 1547, '60B', 0, '', 0, 'https://wiki.tockdom.com/wiki/VVVVVV_Circuit_3', '', '', 0, '296', 'gBC3', 'gBC3'),
(1513, 'Wacky Waterworks', 1619, 'Custom', 'v0.9b', 'Bri911', 1548, '60C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wacky_Waterworks', '', '', 0, '705', 'KC', 'KC'),
(1514, 'Waluigi\'s Choco Factory', 1620, 'Custom', 'v1.1', 'MysterE99', 1549, '60D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Waluigi%27s_Choco_Factory', '', '', 0, '228', 'MC', 'TF'),
(1515, 'Waluigi\'s Motocross', 1621, 'Custom', 'v1.9.alt', 'wiimaster35000vr', 1550, '60E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Waluigi%27s_Motocross', '', '', 0, '356', 'dDS', 'gWS'),
(1516, 'Waluigi\'s Taco Stand', 1622, 'Custom', 'v1.0b', 'cpfusion', 1551, '60F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Waluigi%27s_Taco_Stand', '', '', 0, '881', 'dDH', 'dDH'),
(1517, 'Wario Circuit', 1623, 'Custom', 'v3.11', 'MysterE99', 1552, '610', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wario_Circuit_(MysterE99)', '', '', 0, '224', 'MC', 'MC'),
(1518, 'Wario\'s Abandoned Casino', 1624, 'Custom', 'v1.0', 'Shorky', 1553, '611', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wario%27s_Abandoned_Casino', '', '', 0, '875', 'WGM', 'WGM'),
(1519, 'Wario\'s Climate Cataclysm', 1625, 'Custom', 'v1.0', 'Yoshii, Shorky', 1554, '612', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wario%27s_Climate_Cataclysm', '', '', 0, '1135', 'GV', 'GV'),
(1520, 'Wario\'s Collapsing Castle', 1626, 'Custom', 'v1.1', 'CarryOn, Questorian', 1555, '613', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wario%27s_Collapsing_Castle', '', '', 0, '688', 'BC', 'BC'),
(1521, 'Wario\'s Cosmic Construction', 1627, 'Custom', 'v1.4', 'AltairYoshi, JadenMKW', 1556, '614', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wario%27s_Cosmic_Construction', '', '', 0, '602', 'RR', 'RR'),
(1522, 'Wario\'s Crumbled Colosseum', 1628, 'Custom', 'v1.0', 'Justin', 1557, '615', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wario%27s_Crumbled_Colosseum', '', '', 0, '594', 'sGV2', 'sGV2'),
(1523, 'Wario\'s Lair', 1629, 'Custom', 'v2.mkd', 'LuigiM', 1558, '616', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wario%27s_Lair_(LuigiM)', '', '', 0, '241', 'KC', 'KC'),
(1524, 'Wario\'s Motor Speedway', 1630, 'Custom', 'v1.0', 'bugsy', 1559, '617', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wario%27s_Motor_Speedway_(N64_Wario_Stadium_Edit)', '', '', 0, 'WMS_B', 'dDS', 'gWS'),
(1525, 'Warp Pipe Island', 1631, 'Custom', 'v1.04', 'Wingcapman, Luke Chandler', 1560, '618', 0, '', 0, 'https://wiki.tockdom.com/wiki/Warp_Pipe_Island', '', '', 0, '176', 'KC', 'KC'),
(1526, 'Water Circuit', 1632, 'Custom', 'v5.0b', 'CoolTAFTime', 1561, '619', 0, '', 0, 'https://wiki.tockdom.com/wiki/Water_Circuit', '', '', 0, '293', 'KC', 'KC'),
(1527, 'Water Fall, Water Rise', 1633, 'Custom', 'v1.0', 'Slimeserver', 1562, '61A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Water_Fall,_Water_Rise', '', '', 0, '733_1', 'KC', 'KC'),
(1528, 'Water Island', 1634, 'Custom', 'v1.1', 'Cats4Life', 1563, '61B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Water_Island_(Cats4Life)', '', '', 0, '923', 'KC', 'KC'),
(1529, 'Water Village', 1635, 'Custom', 'v3.71', 'Bear', 1564, '61C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Water_Village_(Bear)', '', '', 0, '435', 'dDS', 'dDS'),
(1530, 'Waterway', 1636, 'Custom', 'v1.0', 'MysterE99', 1565, '61D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Waterway_(MysterE99)', '', '', 0, '316', 'gSGB', 'gSGB'),
(1531, 'Wetland Woods', 1637, 'Custom', 'v1.1', 'Vulcanus2', 1566, '61E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wetland_Woods', '', '', 0, '082', 'KC', 'KC'),
(1532, 'Weymouth Whirl', 1638, 'Custom', 'v1.0', 'Bluebatstar', 1567, '61F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Weymouth_Whirl', '', '', 0, 'WW_B', 'CM', 'CM'),
(1533, 'Weymouth Whirl 2', 1639, 'Custom', 'v1.0', 'Bluebatstar', 1568, '620', 0, '', 0, 'https://wiki.tockdom.com/wiki/Weymouth_Whirl_2', '', '', 0, 'WW2_B', 'KC', 'KC'),
(1534, 'Weymouth Whirl 3', 1640, 'Custom', 'v1.0', 'Bluebatstar', 1569, '621', 0, '', 0, 'https://wiki.tockdom.com/wiki/Weymouth_Whirl_3', '', '', 0, 'WW3_B', 'dDS', 'dDS'),
(1535, 'White Garden', 1641, 'Custom', 'v2.5.mkd', 'SpyKid, Blockmann, LuigiM, Riidefi', 1570, '622', 0, '', 0, 'https://wiki.tockdom.com/wiki/White_Garden', '', '', 0, '059', 'dPG', 'dPG'),
(1536, 'Wicked Woods', 1642, 'Custom', 'v1.0', 'KevinVG207', 1571, '623', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wicked_Woods', '', '', 0, '657', 'MT', 'MT'),
(1537, 'Wiggler Wetlands', 1643, 'Custom', 'v1.2', 'BillyNoodles', 1572, '624', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wiggler_Wetlands', '', '', 0, '767', 'sGV2', 'sGV2'),
(1538, 'WIGGLERDOME', 1644, 'Custom', 'v1.0', 'Slimeserver', 1573, '625', 0, '', 0, 'https://wiki.tockdom.com/wiki/WIGGLERDOME', '', '', 0, 'WIGL_S', 'RR', 'RR'),
(1539, 'Wii Shop Raceway', 1645, 'Custom', 'v1.0', 'Justin', 1574, '626', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wii_Shop_Raceway', '', '', 0, '536', 'DC', 'DC'),
(1540, 'Wiimmfi Station', 1646, 'Custom', 'v1.0', 'Sniki', 1575, '627', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wiimmfi_Station', '', '', 0, '290', 'TF', 'TF'),
(1541, 'Wiimmfi Wonder World', 1647, 'Custom', 'v1.0', 'Sniki', 1576, '628', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wiimmfi_Wonder_World', '', '', 0, '1033', 'KC', 'aFS'),
(1542, 'Windmill Village', 1649, 'Custom', 'v3.2 ', 'ChaosShadow23', 1577, '629', 0, '', 0, 'https://wiki.tockdom.com/wiki/Windmill_Village', '', '', 0, '134', 'dDS', 'dDS'),
(1543, 'Windy Whirl', 1650, 'Custom', 'v1.3.1c.mkd', 'Syst3ms', 1578, '62A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Windy_Whirl', '', '', 0, '443', 'LC', 'MC'),
(1544, 'Winter Paradise', 1652, 'Custom', 'v1.3.hp', 'SpyKid, WiiLuigi', 1579, '62B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Winter_Paradise', '', '', 0, '142', 'nSL', 'nSL'),
(1545, 'Wispy Caverns', 1653, 'Custom', 'v1.2', 'Rex', 1580, '62C', 0, '', 2, 'https://wiki.tockdom.com/wiki/Wispy_Caverns', '', '', 0, 'WC_R', 'KC', 'KC'),
(1546, 'Wolf Castlegrounds', 1654, 'Custom', 'v1.12', 'SpyKid', 1581, '62D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Wolf_Castlegrounds', '', '', 0, '181', 'nBC', 'nBC'),
(1547, 'Yellow Brick Road', 1655, 'Custom', 'v2.3', 'Anoob', 1582, '62E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Yellow_Brick_Road', '', '', 0, '400', 'LC', 'MC'),
(1548, 'Yellow Loop', 1656, 'Custom', 'v1.0', 'Kozakura', 1583, '62F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Yellow_Loop_(Kozakura)', '', '', 0, '1190', 'MT', 'MT'),
(1549, 'Yoshi Lagoon', 1658, 'Custom', 'v1.4.3', 'Sucht93a', 1584, '630', 0, '', 0, 'https://wiki.tockdom.com/wiki/Yoshi_Lagoon_(Sucht93a)', '', '', 0, '221', 'gSGB', 'gSGB'),
(1550, 'Yoshi Mountain', 1659, 'Custom', 'v1.3', 'lgmb', 1585, '631', 0, '', 0, 'https://wiki.tockdom.com/wiki/Yoshi_Mountain', '', '', 0, '196', 'dYF', 'dYF'),
(1551, 'Yoshi\'s Floating Island', 1660, 'Custom', 'v1.0', 'Kozakura', 1586, '632', 0, '', 0, 'https://wiki.tockdom.com/wiki/Yoshi%27s_Floating_Island', '', '', 0, '1155', 'dYF', 'dYF'),
(1552, 'Yoshi\'s Islet', 1661, 'Custom', 'v1.3', 'Yoshivert99', 1587, '633', 0, '', 0, 'https://wiki.tockdom.com/wiki/Yoshi%27s_Islet', '', '', 0, '308', 'dYF', 'dYF'),
(1553, 'Yoshi\'s Waterfall Sanctuary', 1662, 'Custom', 'v1.0-hotfix', 'CarryOn', 1588, '634', 0, '', 0, 'https://wiki.tockdom.com/wiki/Yoshi%27s_Waterfall_Sanctuary', '', '', 0, '971', 'dYF', 'dYF'),
(1554, 'Yoshi\'s Woolly Raceway', 1663, 'Custom', 'v1.1.1', 'Aidan190903, Anoob', 1589, '635', 0, '', 0, 'https://wiki.tockdom.com/wiki/Yoshi%27s_Woolly_Raceway', '', '', 0, '423', 'dPG', 'dPG'),
(1555, 'Akina Pass', 750, 'Custom', 'v1.0', 'Waltz', 1590, '636', 0, '', 0, 'https://wiki.tockdom.com/wiki/Akina_Pass_(Waltz)', '', '', 0, 'AP_W', 'nDKJP', 'nDKJP'),
(1556, 'Cheese Land', 183, 'GBA', 'Beta 2', 'ISwearChris', 1591, '637', 0, '', 0, 'https://wiki.tockdom.com/wiki/GBA_Cheese_Land_(ISwearChris)', '', '', 0, 'GCL_I', 'MMM', 'MMM'),
(1557, 'SM64 Castle Grounds', 699, 'Other', 'v2.0', 'Waltz', 1592, '638', 0, '', 2, 'https://wiki.tockdom.com/wiki/SM64_Castle_Grounds_(Waltz)', '', '', 0, 'SCC_W', 'dPG', 'dPG'),
(1558, 'SMS Blooper Surfing Safari', 716, 'Other', 'v1.0', 'Waltz', 1593, '639', 0, '', 0, 'https://wiki.tockdom.com/wiki/SMS_Blooper_Surfing_Safari_(Waltz)', '', '', 0, 'SBSS_W', 'WGM', 'WGM'),
(1559, 'Kingdom Lake', 1169, 'Custom', 'v1.5', 'Waltz', 1594, '63A', 0, '', 2, 'https://wiki.tockdom.com/wiki/Kingdom_Lake', '', '', 0, 'KL_W', 'gMC', 'gMC'),
(1560, 'Bowser\'s Lava World', 850, 'Custom', 'v1.0', 'Waltz', 1595, '63B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bowser%27s_Lava_World', '', '', 0, 'BLW_W', 'GV', 'gBC3'),
(1561, 'Ghost Valley 1', 33, 'SNES', 'v1.01', 'MilanDK', 1596, '63C', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Ghost_Valley_1_(MilanDK)', '', '', 0, 'SGV1_M', 'sGV2', 'sGV2'),
(1562, 'Piranha Plant Pipeline', 578, 'Tour', 'v1.0.1', 'Bruh de la Boi', 1597, '63D', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Piranha_Plant_Pipeline_(Bruh_de_la_Boi)', '', '', 0, 'TPPP_B', 'KC', 'KC'),
(1563, 'Shy Guy\'s Stormy Seaport', 1439, 'Custom', 'Beta', 'Atmosphere', 1598, '63E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Shy_Guy%27s_Stormy_Seaport', '', '', 0, 'SGSS_A', 'dDS', 'dDS'),
(1564, 'Thunder City', 1554, 'Custom', 'v1.0', 'Fuffina', 1599, '63F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Thunder_City_(The_World_That_Never_Was)', '', '', 0, 'TC_TWTNW_F', 'MH', 'MH'),
(1565, 'Hearts of the Sea', 1121, 'Custom', 'v1.0', 'Graciefied', 1600, '640', 0, '', 0, 'https://wiki.tockdom.com/wiki/Hearts_of_the_Sea', '', '', 0, 'HOTS_G', 'KC', 'KC'),
(1566, 'Yokai Falls', 1657, 'Custom', 'v1.0', 'Dreacastian-Turnip', 1601, '641', 0, '', 0, 'https://wiki.tockdom.com/wiki/Yokai_Falls', '', '', 0, 'YF_D', 'dYF', 'dYF'),
(1567, 'Rainbow Coaster', 309, 'GP', 'v1.0', 'Diego Vapy', 1602, '642', 0, '', 0, 'https://wiki.tockdom.com/wiki/GP_Rainbow_Coaster_(Diego_Vapy)', '', '', 0, 'GRC_D', 'RR', 'RR'),
(1568, 'Short Circuit', 1429, 'Custom', 'Beta', 'Mickeyman713', 1603, '643', 0, '', 0, 'https://wiki.tockdom.com/wiki/Short_Circuit', '', '', 0, 'SC_M', 'gBC3', 'gBC3'),
(1569, 'Art Museum', 774, 'Custom', 'v1.0', 'Bryceplayer108', 1604, '644', 0, '', 0, 'https://wiki.tockdom.com/wiki/Art_Museum', '', '', 0, 'AM_B', 'CM', 'CM'),
(1570, 'Portal in a Painting', 1351, 'Custom', 'v1.0', 'Kozakura', 1605, '645', 0, '', 0, 'https://wiki.tockdom.com/wiki/Portal_in_a_Painting', '', '', 0, 'PIAP_K', 'KC', 'KC'),
(1571, 'Ruinated Peach\'s Castle', 1401, 'Custom', 'v1.02.1', 'Gabriela_', 1606, '646', 0, '', 2, 'https://wiki.tockdom.com/wiki/Ruinated_Peach%27s_Castle', '', '', 0, 'RPC_G', 'BC', 'BC'),
(1572, 'Sketchbook Noir', 1444, 'Custom', 'Beta', 'Dreacastian-Turnip', 1607, '647', 0, '', 0, 'https://wiki.tockdom.com/wiki/Sketchbook_Noir', '', '', 0, 'SN_D', 'sGV2', 'sGV2'),
(1573, 'Bullet Bill Bluff', 857, 'Custom', 'v1.0', 'Atmosphere, Chouchintosh, Mickeyman713', 1608, '648', 0, '', 0, 'https://wiki.tockdom.com/wiki/Bullet_Bill_Bluff', '', '', 0, 'BBB_ACM', 'MC', 'MG'),
(1574, 'Life Inside a Frame: Drawn Island', 1191, 'Custom', 'Beta', 'Prellit', 1609, '649', 0, '', 0, 'https://wiki.tockdom.com/wiki/Life_Inside_a_Frame:_Drawn_Island', '', '', 0, 'LIAF_P', 'dDS', 'dDS'),
(1575, 'Big Tree Circuit', 812, 'Custom', 'v1.0', 'TailsCraft', 1610, '64A', 0, '', 0, 'https://wiki.tockdom.com/wiki/Big_Tree_Circuit', '', '', 0, 'BTC_T', 'MC', 'MC'),
(1576, 'Mario Circuit 3', 67, 'SNES', 'v1.0', 'TailsCraft', 1611, '64B', 0, '', 0, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_3_(TailsCraft)', '', '', 0, 'SMC3_T', 'sMC3', 'sMC3'),
(1577, 'Ghost Valley 1', 600, 'RMX', 'v1.0', 'Bluebatstar', 1612, '64C', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Ghost_Valley_1_(Bluebatstar)', '', '', 0, 'RGV1_B', 'sGV2', 'sGV2'),
(1578, 'Vanilla Lake 2', 608, 'RMX', 'v1.0', 'Bruh de la Boi', 1613, '64D', 0, '', 0, 'https://wiki.tockdom.com/wiki/RMX_Vanilla_Lake_2_(Bruh_de_la_Boi)', '', '', 0, 'RVL2_B', 'nSL', 'nSL'),
(1579, 'Monty Mole Valley', 1255, 'Custom', 'v1.0', 'MKWahPhil', 1614, '64E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Monty_Mole_Valley', '', '', 0, 'MMV_M', 'gDKM', 'gDKM'),
(1580, 'Moonlit Highlands', 1259, 'Custom', 'v1.0', 'Kozakura', 1615, '64F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Moonlit_Highlands', '', '', 0, 'MH_K', 'gDKM', 'gDKM'),
(1581, 'Painted Swamp Circuit', 1323, 'Custom', 'v1.0', 'TheGamingBram', 1616, '650', 0, '', 0, 'https://wiki.tockdom.com/wiki/Painted_Swamp_Circuit', '', '', 0, 'PSC_T', 'sGV2', 'sGV2'),
(1582, 'Rocky Rocky Loop', 1392, 'Custom', 'v1.0', 'TheGamingBram', 1617, '651', 0, '', 0, 'https://wiki.tockdom.com/wiki/Rocky_Rocky_Loop', '', '', 0, 'RRL_T', 'gDKM', 'gDKM'),
(1583, 'Drift Ridge', 1006, 'Custom', 'v1.0', 'TheGamingBram', 1618, '652', 0, '', 0, 'https://wiki.tockdom.com/wiki/Drift_Ridge', '', '', 0, 'DR_T', 'WGM', 'WGM'),
(1584, 'Piranha Plant Cove', 575, 'Tour', 'v1.0', 'TheGamingBram', 1619, '653', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Piranha_Plant_Cove_(TheGamingBram)', '', '', 0, 'TPPC_T', 'KC', 'KC'),
(1585, 'Piranha Plant Cove 2', 576, 'Tour', 'v1.0', 'TheGamingBram', 1620, '654', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Piranha_Plant_Cove_2_(TheGamingBram)', '', '', 0, 'TPPC2_T', 'KC', 'KC'),
(1586, 'Piranha Plant Cove 3', 577, 'Tour', 'v1.0', 'TheGamingBram', 1621, '655', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Piranha_Plant_Cove_3_(TheGamingBram)', '', '', 0, 'TPPC3_T', 'KC', 'KC'),
(1587, 'Back_RM_Race', 790, 'Custom', 'v1.0', 'TheGamingBram, Obi 1', 1622, '656', 0, '', 0, 'https://wiki.tockdom.com/wiki/Back_RM_Race', '', '', 0, 'BRMR_TO', 'sGV2', 'sGV2'),
(1588, 'LUDA\'s CT Factory', 1200, 'Custom', 'v1.0', 'LUDAROBE', 1623, '657', 0, '', 0, 'https://wiki.tockdom.com/wiki/LUDA%27s_CT_Factory', '', '', 0, 'LCTF_L', 'TF', 'TF'),
(1589, 'Jungle Fortress', 1156, 'Custom', 'v1.1', 'Chouchintosh', 1624, '658', 0, '', 0, 'https://wiki.tockdom.com/wiki/Jungle_Fortress', '', '', 0, 'JF_C', 'dDS', 'gDKM'),
(1590, 'SM64 Rainbow Ride - Route 1', 705, 'Other', 'v1.1', 'Kratzean', 1625, '659', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Rainbow_Ride_-_Route_1', '', '', 0, 'SRRR1_K', 'RR', 'RR'),
(1591, 'SM64 Rainbow Ride - Route 2', 706, 'Other', 'v1.1', 'Kratzean', 1626, '65A', 0, '', 0, 'https://wiki.tockdom.com/wiki/SM64_Rainbow_Ride_-_Route_2', '', '', 0, 'SRRR2_K', 'RR', 'RR'),
(1592, 'Athens Dash 3', 552, 'Tour', 'v1.0', 'Bruh de la Boi', 1627, '65B', 0, '', 0, 'https://wiki.tockdom.com/wiki/Tour_Athens_Dash_3_(Bruh_de_la_Boi)', '', '', 0, 'T_AD3_B', 'gDKM', 'gDKM'),
(1593, 'Nunavut Route', 1313, 'Custom', 'Beta', 'Bruh de la Boi', 1628, '65C', 0, '', 0, 'https://wiki.tockdom.com/wiki/Nunavut_Route', '', '', 0, 'NR_B', 'DKS', 'DKS'),
(1594, 'The Arctic Line', 1532, 'Custom', 'v1.0', 'Chouchintosh', 1629, '65D', 0, '', 0, 'https://wiki.tockdom.com/wiki/The_Arctic_Line', '', '', 0, 'TAL_C', 'RR', 'RR'),
(1595, 'Paradise Precipice', 1326, 'Custom', 'v1.0', 'Birj', 1630, '65E', 0, '', 0, 'https://wiki.tockdom.com/wiki/Paradise_Precipice', '', '', 0, 'PP_BR', 'dYF', 'dYF'),
(1596, 'Cascade Circuit', 875, 'Custom', 'v2.0', 'MapleSabre', 1631, '65F', 0, '', 0, 'https://wiki.tockdom.com/wiki/Cascade_Circuit', '', '', 0, 'CC_M', 'nDKJP', 'nDKJP'),
(1597, 'Forgotten Isle', 1057, 'Custom', 'v1.1', 'MapleSabre', 1632, '660', 0, '', 2, 'https://wiki.tockdom.com/wiki/Forgotten_Isle', '', '', 0, 'FF_M', 'nDKJP', 'nDKJP'),
(1598, 'Icy Arctic Isle', 1140, 'Custom', 'v1.0', 'TheGamingBram', 1633, '661', 0, '', 0, 'https://wiki.tockdom.com/wiki/Icy_Arctic_Isle', '', '', 0, 'ICI_TGB', 'nSL', 'nSL'),
(1599, 'Icering Circuit', 1137, 'Custom', 'v1.0', 'MKWahPhil', 1635, '663', 0, '', 0, 'https://wiki.tockdom.com/wiki/Icering_Circuit', '', '', 0, 'IC_MK', 'DKS', 'DKS'),
(1600, 'Harihera Research Vessel', 1112, 'Custom', 'v1.0', 'Bluebatstar', 1636, '664', 0, '', 0, 'https://wiki.tockdom.com/wiki/Harihera_Research_Vessel', '', '', 0, 'HRV_B', 'DKS', 'nSL'),
(1601, 'Ant Arctic Ambush', 766, 'Custom', 'Beta', 'Mickeyman713', 1637, '665', 0, '', 0, 'https://wiki.tockdom.com/wiki/Ant_Arctic_Ambush', '', '', 0, 'AAA_M', 'nSL', 'nSL'),
(1602, 'Flarewood Forest', 1044, 'Custom', 'v1.1b', 'Slimeserver', 1638, '666', 0, '', 1, 'https://wiki.tockdom.com/wiki/Flarewood_Forest', '', '', 0, 'FF_S', 'GV', 'GV'),
(1603, 'Lakeside Park v2.0', 189, 'GBA', 'v2.0-beta', 'ZPL', 1639, '667', 0, '', 1, 'https://wiki.tockdom.com/wiki/GBA_Lakeside_Park_(ZPL)', '', '', 0, 'G_LP_Z', 'nDKJP', 'nDKJP'),
(1604, 'FK3D Blooming Path', 641, 'Other', 'v1.0.1', 'Cool20', 1640, '668', 0, '', 1, 'https://wiki.tockdom.com/wiki/FK3D_Blooming_Path', '', '', 0, 'F_BP_C', 'dPG', 'dPG'),
(1605, 'Rainbow Road', 203, 'GBA', 'v1.0', 'Cats4Life', 1641, '669', 0, '', 1, 'https://wiki.tockdom.com/wiki/GBA_Rainbow_Road_(Cats4Life)', '', '', 0, 'G_RR_C', 'RR', 'RR'),
(1606, 'FK3D Happy Hills', 643, 'Other', 'v1.0', 'Cool20', 1642, '66A', 0, '', 1, 'https://wiki.tockdom.com/wiki/FK3D_Happy_Hills', '', '', 0, 'F_HH_C', 'dPG', 'dPG'),
(1607, 'FK3D Flying Highway', 642, 'Other', 'v1.0', 'Cool20', 1643, '66B', 0, '', 1, 'https://wiki.tockdom.com/wiki/FK3D_Flying_Highway', '', '', 0, 'F_FH_C', 'dPG', 'dPG'),
(1608, 'Wind Fortress', 1648, 'Custom', 'Beta 3', 'ISwearChris', 1644, '66C', 0, '', 1, 'https://wiki.tockdom.com/wiki/Wind_Fortress', '', '', 0, 'WW_I', 'LC', 'LC'),
(1609, 'Rainbow Road', 128, 'N64', 'v1.0', 'Mr. Brian', 1645, '66D', 0, '', 1, 'https://wiki.tockdom.com/wiki/N64_Rainbow_Road_(Mr._Brian)', '', '', 0, 'N_RR_MB', 'RR', 'RR'),
(1610, 'Trickster Trail', 1578, 'Custom', 'v1.0', 'p00ks', 1646, '66E', 0, '', 1, 'https://wiki.tockdom.com/wiki/Trickster_Trail', '', '', 0, 'TT_P', 'MG', 'MG'),
(1611, 'Waluigi Pinball', 362, 'DS', 'v2.0', 'TheGamingBram', 1647, '66F', 0, '', 1, 'https://wiki.tockdom.com/wiki/DS_Waluigi_Pinball_(TheGamingBram)', '', '', 0, 'D_WP_TGB', 'gDKM', 'gDKM'),
(1612, 'Nano Circuit', 1293, 'Custom', 'v1.0', 'Dreacastian-Turnip', 1648, '670', 0, '', 1, 'https://wiki.tockdom.com/wiki/Nano_Circuit', '', '', 0, 'NC_DT', 'sMC3', 'sMC3'),
(1613, 'SCR Full-Course Course', 687, 'Other', 'v1.0', 'Waltz', 1649, '671', 0, '', 1, 'https://wiki.tockdom.com/wiki/SCR_Full-Course_Course_(Waltz)', '', '', 0, 'S_FCC_W', 'CM', 'CM'),
(1614, 'Ghost Valley 1', 602, 'RMX', 'v1.0', 'Kozakura', 1650, '672', 0, '', 1, 'https://wiki.tockdom.com/wiki/RMX_Ghost_Valley_1_(Kozakura)', '', '', 0, 'R_GV1_K', 'sGV2', 'sGV2'),
(1615, 'Mario Circuit 1T', 54, 'SNES', 'v1.0', 'Slimeserver', 1651, '673', 0, '', 1, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_1T', '', '', 0, 'S_MC1T_S', 'sMC3', 'sMC3'),
(1616, 'Rock Rock Mountain', 497, '3DS', 'v1.0', 'ZPL', 1652, '674', 0, '', 1, 'https://wiki.tockdom.com/wiki/3DS_Rock_Rock_Mountain_(ZPL)', '', '', 0, '3DS_RRM_Z', 'DC', 'gDKM'),
(1617, 'Mario Circuit 1', 53, 'SNES', 'v1.0', 'Potatoman44', 1653, '675', 0, '', 1, 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_1_(Potatoman44)', '', '', 0, 'S_MC1_P', 'sMC3', 'sMC3'),
(1618, 'Leaf Leaf Beach', 1190, 'Custom', 'v1.0', 'ShouToad, Graciefied', 1654, '676', 0, '', 1, 'https://wiki.tockdom.com/wiki/Leaf_Leaf_Beach', '', '', 0, 'LLB_SG', 'KC', 'KC'),
(1619, 'Goldleaf Shoreline', 1094, 'Custom', 'v1.0', 'MKWahPhil, Atmosphere', 1655, '677', 0, '', 1, 'https://wiki.tockdom.com/wiki/Goldleaf_Shoreline', '', '', 0, 'GS_MKWA', 'DC', 'DC'),
(1620, 'Luigi\'s Beach Resort', 1201, 'Custom', 'v1.0', 'TheGamingBram', 1656, '678', 0, '', 1, 'https://wiki.tockdom.com/wiki/Luigi%27s_Beach_Resort', '', '', 0, 'LBR_TGB', 'gPB', 'gPB'),
(1621, 'Goomba Grove Circuit', 1098, 'Custom', 'Beta', 'PaperToadette, Toadette Hack Fan', 1657, '679', 0, '', 1, 'https://wiki.tockdom.com/wiki/Goomba_Grove_Circuit', '', '', 0, 'GGC_PTHF', 'MT', 'MT'),
(1622, 'Deserted Oasis', 983, 'Custom', 'v1.0', 'Luigi Story, EpicCrossover', 1658, '67A', 0, '', 1, 'https://wiki.tockdom.com/wiki/Deserted_Oasis', '', '', 0, 'DO_LE', 'DDR', 'DDR'),
(1623, 'Horrorland Hike', 1133, 'Custom', 'v1.0', 'Dreacastian-Turnip', 1659, '67B', 0, '', 1, 'https://wiki.tockdom.com/wiki/Horrorland_Hike', '', '', 0, 'HH_DT', 'sGV2', 'sGV2'),
(1624, 'Moonlight Greens', 1256, 'Custom', 'v1.0', 'Potatoman44', 1660, '67C', 0, '', 1, 'https://wiki.tockdom.com/wiki/Moonlight_Greens', '', '', 0, 'MG_Pot', 'MC', 'MC'),
(1625, 'Goomba\'s Booty Boardwalk', 1099, 'Custom', 'v1.0', 'TheGamingBram', 1661, '67D', 0, '', 1, 'https://wiki.tockdom.com/wiki/Goomba%27s_Booty_Boardwalk', '', '', 0, 'GBB_TGB', 'gSGB', 'gSGB'),
(1626, 'Winter Coaster', 1651, 'Custom', 'v1.0', 'Potatoman44', 1662, '67E', 0, '', 1, 'https://wiki.tockdom.com/wiki/Winter_Coaster', '', '', 0, 'WC_Po', 'DKS', 'DKS'),
(1627, 'Biometal Blitz', 817, 'Custom', 'v1.0', 'P00ks', 1663, '67F', 0, '', 1, 'https://wiki.tockdom.com/wiki/Biometal_Blitz', '', '', 0, 'BB_P0', 'MC', 'MC'),
(1628, 'Royal Raceway', 133, 'N64', 'v1.1', 'Paratroopa3', 1664, '680', 0, '', 1, 'https://wiki.tockdom.com/wiki/N64_Royal_Raceway_(Paratroopa3)', '', '', 0, 'N64_RR_Pa', 'DKS', 'nMR'),
(1629, 'Painted Swamp Raceway', 1324, 'Custom', 'v1.0', 'TheGamingBram', 1665, '681', 0, '', 1, 'https://wiki.tockdom.com/wiki/Painted_Swamp_Raceway', '', '', 0, 'PSR_TGB', 'sGV2', 'sGV2'),
(1630, 'Tau-Cryovolcano', 1526, 'Custom', 'v1.2', 'Strobenz', 1666, '682', 0, '', 1, 'https://wiki.tockdom.com/wiki/?-Cryovolcano', '', '', 0, 'TC_Str', 'GV', 'GV'),
(1631, 'Strobenz Desert Illusion', 1495, 'Custom', 'v1.2', 'Strobenz', 1667, '683', 0, '', 1, 'https://wiki.tockdom.com/wiki/Strobenz_Desert_Illusion', '', '', 0, 'SDI_Str', 'DDR', 'DDR'),
(1632, 'SM64 Lethal Lava Land', 704, 'Other', 'v1.0', 'Diego Vapy, Waltz', 1668, '684', 0, '', 1, 'https://wiki.tockdom.com/wiki/SM64_Lethal_Lava_Land_(Diego_Vapy_%26_Waltz)', '', '', 0, 'SM64_LLL_DW', 'GV', 'GV'),
(1633, 'Abandoned Bazaar', 738, 'Custom', 'v1.0', 'Kozakura', 1669, '685', 0, '', 1, 'https://wiki.tockdom.com/wiki/Abandoned_Bazaar', '', '', 0, 'SB_Koz', 'gBC3', 'gBC3'),
(1634, 'FGKR Fly Highway', 636, 'Other', 'v1.0.1', 'Cool20', 1670, '686', 0, '', 1, 'https://wiki.tockdom.com/wiki/FGKR_Fly_Highway', '', '', 0, 'FGKR_FH_C', 'dPG', 'dPG'),
(1635, 'FGKR Happy Up-Down', 638, 'Other', 'v2.0', 'Cool20', 1671, '687', 0, '', 1, 'https://wiki.tockdom.com/wiki/FGKR_Happy_Up-Down', '', '', 0, 'FGKR_HUD_C', 'dPG', 'dPG'),
(1636, 'FGKR Flower Road', 637, 'Other', 'v2.0', 'Cool20', 1672, '688', 0, '', 1, 'https://wiki.tockdom.com/wiki/FGKR_Flower_Road', '', '', 0, 'FGKR_FR_C', 'dPG', 'dPG'),
(1637, 'Sky Islands', 1450, 'Custom', 'v1.0', 'Shorky', 1673, '689', 0, '', 1, 'https://wiki.tockdom.com/wiki/Sky_Islands', '', '', 0, 'SkIs_Sh', 'MT', 'MT'),
(1638, 'Burrita Stadium', 859, 'Custom', 'v1.0', 'LUDAROBE', 1674, '68A', 0, '', 1, 'https://wiki.tockdom.com/wiki/Burrita_Stadium', '', '', 0, 'BuSt_Lu', 'gWS', 'gWS'),
(1639, 'Kalimari Desert', 111, 'N64', 'v1.0', 'Bruh de la Boi', 1675, '68B', 0, '', 1, 'https://wiki.tockdom.com/wiki/N64_Kalimari_Desert_(Bruh_de_la_Boi)', '', '', 0, 'N64_KD_BdlB', 'MH', 'dDH'),
(1640, 'N64 Kalimari Desert', 541, 'Switch', 'v1.0', 'Bruh de la Boi', 1676, '68C', 0, '', 1, 'https://wiki.tockdom.com/wiki/N64_Kalimari_Desert_(Bruh_de_la_Boi)', '', '', 0, 'N64_KD8D_BdlB', 'MH', 'dDH'),
(1641, 'N64 Kalimari Desert 2', 565, 'Tour', 'v2.0', 'Bruh de la Boi', 1677, '68D', 0, '', 1, 'https://wiki.tockdom.com/wiki/Tour_N64_Kalimari_Desert_2_(Bruh_de_la_Boi)', '', '', 0, 'TN64_KD2_BdlB', 'MH', 'dDH'),
(1642, 'Mushroom Peaks', 1283, 'Custom', 'v1.0', 'ZPL', 1678, '68E', 0, '', 1, 'https://wiki.tockdom.com/wiki/Mushroom_Peaks_(ZPL)', '', '', 0, 'MP_ZPL', 'MG', 'MG'),
(1643, 'GDL Haunted Cemetery', 626, 'Other', 'v1.0', 'Luka', 1679, '68F', 0, '', 1, 'https://wiki.tockdom.com/wiki/GDL_Haunted_Cemetery', '', '', 0, 'GDL_HC_L', 'DC', 'sGV2'),
(1644, 'SCR Simple Circuit', 731, 'Other', 'v1.0', 'King Boo Gaming, Strobenz', 1261, '4ED', 0, '', 1, 'https://wiki.tockdom.com/wiki/SCR_Simple_Circuit_(King_Boo_Gaming_%26_Strobenz)', '', '', 0, 'SCR_SC_KS', 'MH', 'MH'),
(1645, 'Lakeside Park', 185, 'GBA', 'v1.0', 'Dreacastian-Turnip', 1680, '690', 0, '', 1, 'https://wiki.tockdom.com/wiki/GBA_Lakeside_Park_(Dreacastian-Turnip)', '', '', 0, 'GBA_LP_DT', 'gDKM', 'gDKM'),
(1646, 'Vanilla Lake 1', 76, 'SNES', 'v1.0', 'ECD534, Toadette Hack Fan', 1681, '691', 0, '', 1, 'https://wiki.tockdom.com/wiki/SNES_Vanilla_Lake_1_(ECD534_%26_Toadette_Hack_Fan)', '', '', 0, 'SNES_VL1_ET', 'nSL', 'nSL'),
(1647, 'CECSG Kart Racing Amateur', 611, 'Other', 'v2.0', 'Cool20', 1682, '692', 0, '', 1, 'https://wiki.tockdom.com/wiki/CECSG_Kart_Racing_Amateur', '', '', 0, 'CECSG_KRA_C', 'MC', 'MC'),
(1648, 'CECSG Kart Racing Professional', 612, 'Other', 'v2.0', 'Cool20', 1683, '693', 0, '', 1, 'https://wiki.tockdom.com/wiki/CECSG_Kart_Racing_Professional', '', '', 0, 'CECSG_KRP_C', 'MC', 'MC'),
(1649, 'The Great Apple War', 1538, 'Custom', 'v1.0.apple', 'A.B.B.B.B.C.C.C.G.G.J.M.M.M.R.S.S.T.T.Y', 1684, '694', 0, '', 1, 'https://wiki.tockdom.com/wiki/The_Great_Apple_War', '', '', 0, 'TGAW_MANY', 'gSGB', 'gSGB'),
(1650, 'The Grand Archives', 1539, 'Custom', 'v1.0', 'Metabus', 1685, '695', 0, '', 1, 'https://wiki.tockdom.com/wiki/The_Grand_Archives', '', '', 0, 'TGA_Metab', 'CM', 'CM'),
(1651, 'Bowser Castle 4T', 172, 'GBA', 'v1.0', 'Bruh de la Boi', 1686, '696', 0, '', 1, 'https://wiki.tockdom.com/wiki/GBA_Bowser_Castle_4T_(GBA_Bowser_Castle_4_Edit)', '', '', 0, 'GBA_BC4T_BDLB', 'gBC3', 'gBC3'),
(1652, 'Autumnal Archipelago', 787, 'Custom', 'v1.0', 'bugsy', 1687, '697', 0, '', 1, 'https://wiki.tockdom.com/wiki/Autumnal_Archipelago', '', '', 0, 'AA_Bugsy', 'MT', 'MT'),
(1653, 'Twilight Jungle', 1587, 'Custom', 'v1.1', 'CarryOn, JoeyMK', 1688, '698', 0, '', 1, 'https://wiki.tockdom.com/wiki/Twilight_Jungle_(CarryOn_%26_JoeyMK)', '', '', 0, 'TJ_CarJoe', 'KC', 'KC'),
(1654, 'Magma Mine', 1218, 'Custom', 'v1.0', 'Chouchintosh', 1689, '699', 0, '', 1, 'https://wiki.tockdom.com/wiki/Magma_Mine', '', '', 0, 'MagMine_CHOU', 'GV', 'GV'),
(1655, 'Magma Caverns', 1219, 'Custom', 'v1.0', 'Shorky', 1690, '69A', 0, '', 1, 'https://wiki.tockdom.com/wiki/Magma_Caverns', '', '', 0, 'MagCave_Shork', 'WGM', 'WGM'),
(1656, 'Mineshaft Raceway', 1246, 'Custom', 'v1.0', 'Diego Vapy', 1691, '69B', 0, '', 1, 'https://wiki.tockdom.com/wiki/Mineshaft_Raceway', '', '', 0, 'Mineshaft_Diego', 'MC', 'WGM'),
(1657, 'Zelda WW Hyrule Castle', 728, 'Other', 'v1.0', 'Waltz', 1692, '69C', 0, '', 1, 'https://wiki.tockdom.com/wiki/Zelda_WW_Hyrule_Castle_(Waltz)', '', '', 0, 'ZeldaWW_HC_W', 'sGV2', 'sGV2'),
(1658, 'GBA Wendy Raceway 1', 1079, 'Custom', 'v1.1.1.1', 'Marianne8559', 1693, '69D', 0, '', 1, 'https://wiki.tockdom.com/wiki/GBA_Wendy_Raceway_1_(Marianne8559)', '', '', 0, 'GBA_WR1_Mar', 'gSGB', 'gSGB'),
(1659, 'Crawlspiral Castle', 948, 'Custom', 'v1.0', 'Rex', 1694, '69E', 0, '', 1, 'https://wiki.tockdom.com/wiki/Crawlspiral_Castle', '', '', 0, 'CC_Rex', 'nBC', 'nBC'),
(1660, 'Koopa\'s Paper Castle', 1177, 'Custom', 'v1.0', 'p00ks', 1695, '69F', 0, '', 1, 'https://wiki.tockdom.com/wiki/Koopa%27s_Paper_Castle', '', '', 0, 'KPC_K00ps', 'dPG', 'dPG'),
(1661, 'FGKR Solid Lake', 640, 'Other', 'v1.0', 'Cool20', 1696, '6A0', 0, '', 1, 'https://wiki.tockdom.com/wiki/FGKR_Solid_Lake', '', '', 0, 'FGJR_SL_Cool', 'nSL', 'nSL'),
(1662, 'FGKR Doki-Doki Tunnel', 634, 'Other', 'v1.0', 'Cool20', 1697, '6A1', 0, '', 1, 'https://wiki.tockdom.com/wiki/FGKR_Doki-Doki_Tunnel', '', '', 0, 'FGJR_DDT_Cool', 'nSL', 'nSL'),
(1663, 'FGKR Snowy Slopes', 639, 'Other', 'v1.0', 'Cool20', 1698, '6A2', 0, '', 1, 'https://wiki.tockdom.com/wiki/FGKR_Snowy_Slopes', '', '', 0, 'FGJR_SS_Cool', 'nSL', 'nSL');

-- --------------------------------------------------------

--
-- Table structure for table `mkvn_versions`
--

CREATE TABLE `mkvn_versions` (
  `ID` int(11) NOT NULL,
  `Version` varchar(5) NOT NULL,
  `LocalFile` varchar(255) NOT NULL,
  `LocalFilePatch` varchar(255) NOT NULL,
  `Bool_Loc_DL` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = Local, 1 = Outside',
  `NamePatch` varchar(255) NOT NULL,
  `ReleaseDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ChangelogID` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mkvn_versions`
--

INSERT INTO `mkvn_versions` (`ID`, `Version`, `LocalFile`, `LocalFilePatch`, `Bool_Loc_DL`, `NamePatch`, `ReleaseDate`, `ChangelogID`) VALUES
(1, 'v1.0', 'https://drive.google.com/file/d/1nDvUtEzUkZxvvhYrdU2uCyVgDFUz7YRN', '', 1, '', '2023-05-14 00:00:00', 2),
(2, 'v2.0', 'https://drive.google.com/file/d/1rsN0WwI7BEnvo9a4tG71wQIxGGfKjZ5Y', '', 1, '', '2023-05-21 21:06:56', 3),
(3, 'v2.1', 'https://drive.google.com/file/d/1I_yqKAru1VA306fGpjGWtyvhCu3h1Uhe', '', 1, '', '2023-05-23 18:41:08', 4),
(4, 'v2.2', 'https://drive.google.com/file/d/1lHpqt18gil_qjFCOKVS6ixzKARGnGV2z', '', 1, '', '2023-05-30 18:41:08', 5),
(6, 'v2.3', 'https://drive.google.com/file/d/10z6APnXKU8h_t4Ifad4Hy78KIrZfd20X', '', 1, '', '2023-06-14 18:42:42', 6),
(7, 'v3.0', 'https://drive.google.com/file/d/1gt3fKBvGLT1QEyTwD3DzB4fHfPH7B80N', '', 1, '', '2023-06-14 18:42:42', 7),
(8, 'v3.1', 'https://drive.google.com/file/d/1DXjraWA0uzYnMSSh1dpG2Vzaf5Sas-MW', 'https://drive.google.com/file/d/10aBT5K_-QEfx2aoLvNT9TibVgn4qd8w5', 1, 'v3.0 to v3.1 update patch', '2023-08-20 09:44:57', 8),
(9, 'v3.2', 'https://drive.google.com/file/d/1HcIgNUeRuR0SJOQw9mU4ehR_JwKJyi9e', 'https://drive.google.com/file/d/1KzabIf-PXbjr2ZtCAFF8FiLdtmQmxByz', 1, 'v3.1 to v3.2 update patch', '2023-09-22 11:11:37', 9),
(10, 'v3.3', 'https://drive.google.com/file/d/1vuuH7S5Ib08vUEP9DBi-Lq8MVswoJ-T9', 'https://drive.google.com/file/d/1MakZD8OAjOmc2JSNTIeiIu6zNPKcLqNK', 1, 'v3.2 to v3.3 update patch', '2023-10-08 11:11:37', 10),
(11, 'v3.4', 'https://drive.google.com/file/d/11C1Izn-ptmwnpejb__EYzJTBLs7ETlYP', 'https://drive.google.com/file/d/1dcIqdzIJnNlP4Nb1oT_8mQkfGG7porHf', 1, 'v3.3 to v3.4 update patch', '2023-11-30 16:12:55', 11);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` longtext NOT NULL,
  `Version` varchar(11) NOT NULL DEFAULT 'v1.0',
  `Type` int(11) NOT NULL DEFAULT 7 COMMENT 'Mostly game or animation',
  `PreviewImage` varchar(255) NOT NULL,
  `Locked` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = locked,\r\n0 = Unlocked',
  `Created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `Creator` int(11) NOT NULL DEFAULT 1,
  `Download` varchar(255) NOT NULL,
  `ExtraLinks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ID`, `Name`, `Description`, `Version`, `Type`, `PreviewImage`, `Locked`, `Created_at`, `Creator`, `Download`, `ExtraLinks`) VALUES
(1, 'Mario Kart Virtual Night', 'This is the first Custom Track pack made by TheGamingBram!', 'v3.1', 4, 'MarioKartVnightLogo.png', 1, '2023-08-20 00:00:00', 2, '', 'https://vnight-studios.xyz/MarioKartVirtualNight/'),
(3, 'Mountain Town', 'Mountain Town is a custom track created by TheGamingBram. It was created within two weeks.', 'v3.1', 4, '', 1, '2022-06-05 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Mountain_Town'),
(4, 'Mountain Road', 'Mountain Road is a custom track created by TheGamingBram. It is a continuation of Mountain Town.', 'v1.1', 4, '', 1, '2022-06-05 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Mountain_Road'),
(5, 'Mountain Adventure', 'Mountain Adventure is a custom track created by TheGamingBram. It is a combination of Mountain Road and Mountain Town with a few changes.', 'v2.2', 4, '', 1, '2022-06-28 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Mountain_Adventure'),
(6, 'Bram Circuit', 'Bram Circuit is a custom track created by TheGamingBram. It was created within three days. This is the author\'s first track with shadows.', 'v1.1', 4, '', 1, '2022-06-05 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Bram_Circuit'),
(7, 'Bram\'s Digital Raceway', 'Bram\'s Digital Raceway is a custom track created by TheGamingBram. The track is based on the author\'s room and his old projects.', 'v1.1', 4, '', 1, '2022-06-05 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Bram%27s_Digital_Raceway'),
(8, 'Bonneton Raceway', 'Bonneton Raceway is a custom track created by TheGamingBram. The track takes place in the Cap Kingdom from Super Mario Odyssey.', 'v2.1', 4, '', 1, '2023-01-18 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Bonneton_Raceway'),
(9, 'King Boo\'s Library', 'King Boo\'s Library is a custom track created by TheGamingBram. The track was created for the second edition of SpearX5544\'s \"Spin the Wheel CTs\" competition.', 'v1.1', 4, '', 1, '2023-01-17 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/King_Boo%27s_Library'),
(10, 'Bram\'s Trick Stadium', 'Bram\'s Trick Stadium is a custom track created by TheGamingBram.', 'v1.2', 4, '', 1, '2023-03-11 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Bram%27s_Trick_Stadium'),
(11, 'Rainbow Galaxy Road', 'Rainbow Galaxy Road is a custom track created by TheGamingBram. It is themed around 3DS Rainbow Road and Wii U Rainbow Road.', 'v1.1', 4, '', 1, '2023-04-27 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Rainbow_Galaxy_Road'),
(12, 'Discord Track', 'Discord Track is a custom track created by TheGamingBram.', 'v1.0', 4, '', 1, '2023-02-26 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Discord_Track'),
(13, 'Mountain Intersection', 'Mountain Intersection is a custom track created by TheGamingBram.', 'v2.0.fix', 4, '', 1, '2023-04-23 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Mountain_Intersection'),
(14, 'Mountain Valley Town', 'Mountain Valley Town is a (MKWII) custom track created by TheGamingBram.', 'v1.0', 4, '', 1, '2023-02-26 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/Mountain_Valley_Town'),
(15, 'Mountain Valley Town', 'This is my first ever Mario Kart 8 Deluxe custom track!\r\n\r\nThis track is based off some of my own Mario Kart Wii custom tracks, mostly my Mountain series.\r\n\r\nThis track goes over Wii Moo Moo Meadows.\r\n\r\n', 'v1.0', 5, '', 1, '2022-08-20 00:00:00', 2, '', 'https://gamebanana.com/mods/397168'),
(16, 'SNES Mario Circuit 2', 'This is my 2nd Custom track for Mario Kart 8 Deluxe.\r\nThis time its a port from Mario Kart Tour.\r\nThis track goes over SNES Mario Circuit 3 (DLC Track)\r\n\r\nHappy Racing!', 'v1.0', 5, '', 1, '2022-08-23 00:00:00', 2, '', 'https://gamebanana.com/mods/397784'),
(17, 'N64 Frappe Snowland', 'Next up is the frozen land of Frappe Snowland.\r\nThis model is from Mario Kart Tour and uses some textures from GCN Sherbet Land.\r\nThis track goes over GCN Sherbet Land.\r\n\r\nHappy Racing!', 'v1.1', 5, '', 1, '2022-08-26 00:00:00', 2, '', 'https://gamebanana.com/mods/398150'),
(18, 'N64 Wario Stadium', 'Heya Everyone!\r\n\r\nThis is a port of  FunkyRacer\'s N64 Wario Stadium, All credit goes to them for making the original Mario Kart 8 Custom Track.', 'v1.1', 5, '', 1, '2022-08-30 00:00:00', 2, '', 'https://gamebanana.com/mods/398877'),
(19, 'Luminous Clouds', 'Heya All,\r\n\r\nThis is a port of a MKWII CT Named Luminous Clouds made by Dot and Kozakura,', 'v1.0', 5, '', 1, '2022-09-07 00:00:00', 2, '', 'https://gamebanana.com/mods/400602'),
(20, 'Birdo Circuit', 'Heya you all!\r\n\r\nThis is Birdo Circuit from a Mario Kart Wii custom track originally made by Fuffina!', 'v1.1', 5, '', 1, '2022-10-08 00:00:00', 2, '', 'https://gamebanana.com/mods/404234'),
(21, 'Vacay Bay', 'This is a port of a MKWii Custom Track by SquireTurnbolt. TheGamingBram did a great job when porting the model and the kcl, so I was able to do the byaml and all the other things that were left to do.', 'v1.0', 5, '', 1, '2023-01-26 00:00:00', 2, '', 'https://gamebanana.com/mods/424295'),
(22, 'SNES Mario Circuit 4', 'This is a remake created by TheGamingBram. It was completely modeled from scratch in Blender. The track was created for an edition of SpearX5544\'s \"Spin the Wheel CTs\" competition which was canceled due to a lack of submissions.', 'v1.0', 4, '', 1, '2023-02-12 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/SNES_Mario_Circuit_4_(TheGamingBram)'),
(23, 'GBA Riverside Park', 'This is a remake created by TheGamingBram and Kozakura. It is based on the Mario Kart 8 Deluxe version.', 'v1.0.kclfix', 4, '', 1, '2023-04-23 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/GBA_Riverside_Park_(TheGamingBram_%26_Kozakura)'),
(24, 'GBA Sky Garden', 'This port is created by TheGamingBram. While this was initially based on the Mario Kart Tour version, v2.0 is based on the original version.', 'v2.0', 4, '', 1, '2023-05-18 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/GBA_Sky_Garden_(TheGamingBram)'),
(25, 'GP Bowser\'s Castle', 'This is a port created by TheGamingBram.', 'v1.0', 4, '', 1, '2023-03-13 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/GP_Bowser%27s_Castle_(TheGamingBram)'),
(26, 'GP Castle Wall', 'This is a port created by TheGamingBram.', 'v1.0', 4, '', 1, '2023-04-26 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/GP_Castle_Wall_(TheGamingBram)'),
(27, 'DS Waluigi Pinball', 'This port is created by TheGamingBram. It uses the original model from Mario Kart Tour.', 'v1.4', 4, '', 1, '2023-01-15 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/DS_Waluigi_Pinball_(TheGamingBram)'),
(28, 'DS Peach Gardens', 'This is a remake created by Bruh de la Boi and TheGamingBram. It is based on the Mario Kart 8 Deluxe version of the track.', 'v1.0', 4, '', 1, '2023-02-05 00:00:00', 2, '', 'https://wiki.tockdom.com/wiki/DS_Peach_Gardens_(Bruh_de_la_Boi_%26_TheGamingBram)'),
(29, 'Lunar Biodomes', 'A Custom track set on the moon with biodomes where you race trough.', 'v1.1', 4, 'Lunar_Biodones_v1.0_(rainbow_course).png', 1, '2023-05-28 10:25:05', 2, 'Lunar_Biodones_v1.1_(rainbow_course).szs', 'https://wiki.tockdom.com/wiki/Lunar_Biodomes'),
(30, 'Tour Vancouver Velocity', '', 'v2.0', 4, 'MKT_VANCOUVER_CT.png', 1, '2023-06-08 21:01:29', 2, 'TourVancouver1_v2.0_(boardcross_course).szs', 'https://wiki.tockdom.com/wiki/Tour_Vancouver_Velocity_(TheGamingBram)'),
(31, 'Tour Vancouver Velocity 2', '', 'v2.0', 4, 'MKT_VANCOUVER_CT.png', 1, '2023-06-08 21:01:29', 2, 'TourVancouver2_v2.0_(boardcross_course).szs', 'https://wiki.tockdom.com/wiki/Tour_Vancouver_Velocity_2_(TheGamingBram)'),
(32, 'Tour Vancouver Velocity 3', '', 'v1.0', 4, 'MKT_VANCOUVER_CT.png', 1, '2023-06-08 21:01:29', 2, 'TourVancouver3_v1.0_(boardcross_course).szs', 'https://wiki.tockdom.com/wiki/Tour_Vancouver_Velocity_3_(TheGamingBram)'),
(33, 'Nabbit\'s Secret Island', 'This track is an port of an Mario Kart 8 Deluxe track from <b>Rimea</b>, with the same name, <a style=\"color: white\" href=\"https://gamebanana.com/mods/400852\">Link to the game banana page</a>', 'v1.0', 4, 'Nabbits_Secret_Island.png', 1, '2023-07-24 19:15:19', 2, 'Nabbit_s_Secret_Island_(old_donkey_64).szs', 'https://wiki.tockdom.com/wiki/Nabbit%27s_Secret_Island'),
(34, 'Wii U Mario Circuit', 'This is a Texture hack of Wii Mario Circuit to make it look like Wii U Mario Circuit', 'v1.0', 4, 'WiiUMC_WiiMCTEX.png', 1, '2023-08-02 19:29:11', 2, 'WiiU_Mario_Circuit_(TextureHack)_castle_course.szs', ''),
(35, 'Wii U Water Park', 'This update is made by the Mario Kart Wii Deluxe Team (by Mr. Brian)', 'v2.0', 4, 'WIIU_WP_v2.0.png', 1, '2023-08-04 13:50:44', 2, 'WiiU_Water_Park_V2.0_(water_course).szs', 'https://wiki.tockdom.com/wiki/Wii_U_Water_Park_(TheGamingBram)'),
(36, 'Back_RM_Race', '', 'v1.0', 4, 'Back_RM_Race_(old_obake_sfc).png', 1, '2023-09-10 11:05:13', 1, 'Back_RM_Race_(old_obake_sfc).szs', ''),
(37, 'Drift Ridge', '', 'v1.0', 4, 'Drift_Ridge_(truck_course).png', 1, '2023-09-10 11:05:13', 2, 'Drift_Ridge_(truck_course).szs', ''),
(38, 'Painted Swamp Circuit', '', 'v1.0', 4, 'Painted_Swamp_Circuit_(old_obake_sfc).png', 1, '2023-09-10 11:05:13', 2, 'Painted_Swamp_Circuit_(old_obake_sfc).szs', ''),
(39, 'Piranha Plant Cove 1', '', 'v1.0', 4, 'Piranha_Plant_Cove_1_(water_course).png', 1, '2023-09-10 11:05:13', 2, 'Piranha_Plant_Cove_1_(water_course).szs', ''),
(40, 'Piranha Plant Cove 2', '', 'v1.0', 4, 'Piranha_Plant_Cove_2_(water_course).png', 1, '2023-09-10 11:05:13', 2, 'Piranha_Plant_Cove_2_(water_course).szs', ''),
(41, 'Piranha Plant Cove 3', '', 'v1.0', 4, 'Piranha_Plant_Cove_3_(water_course).png', 1, '2023-09-10 11:05:13', 2, 'Piranha_Plant_Cove_3_(water_course).szs', ''),
(42, 'Rocky Rocky Loop', '', 'v1.0', 4, 'Rocky_Rocky_Loop_(old_donkey_gc).png', 1, '2023-09-10 11:05:13', 2, 'Rocky_Rocky_Loop_(old_donkey_gc).szs', '')
-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_type`
--

INSERT INTO `project_type` (`ID`, `Name`) VALUES
(1, 'Program'),
(2, 'Model'),
(3, 'Animation'),
(4, 'Mario Kart Wii Mod'),
(5, 'Mario Kart 8 Deluxe Mod'),
(6, 'ChilloutVR Mod'),
(7, 'Game Mod');

-- --------------------------------------------------------

--
-- Table structure for table `tgbhistory`
--

CREATE TABLE `tgbhistory` (
  `ID` int(11) NOT NULL,
  `Track_name` varchar(47) NOT NULL,
  `Release_date` datetime NOT NULL DEFAULT current_timestamp(),
  `Info_Tekst` longtext NOT NULL,
  `Wiki_Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`ID`, `Name`) VALUES
(1, 'User'),
(2, 'Mod'),
(3, 'Verified Creator'),
(4, 'Virtual Night Creator');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` int(11) NOT NULL DEFAULT 1,
  `Discord` varchar(255) NOT NULL,
  `UserIcon` varchar(255) NOT NULL DEFAULT 'UNKNOWN.png',
  `Verified` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = True (verified)\r\n0 = False (Not Verified)\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `UserName`, `Email`, `Password`, `Role`, `Discord`, `UserIcon`, `Verified`) VALUES
(1, 'Virtual Night Studio\'', 'vnightst@vnight-studios.xyz', '', 4, 'a', 'UNKNOWN.png', 1),
(2, 'TheGamingBram', 'thegamingbram@vnight-studios.xyz', '', 4, '@thegamingbram', 'UNKNOWN.png', 1),
(3, 'Obi1.', 'obi@vnight-studios.xyz', '', 4, '@obi1', 'Obi1..png', 1),
--
-- Indexes for dumped tables
--

--
-- Indexes for table `mkvn_changelogs`
--
ALTER TABLE `mkvn_changelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mkvn_dlcpacks`
--
ALTER TABLE `mkvn_dlcpacks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DLC_Type` (`DLC_Type`);

--
-- Indexes for table `mkvn_dlc_type`
--
ALTER TABLE `mkvn_dlc_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mkvn_missions`
--
ALTER TABLE `mkvn_missions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Level` (`Level`),
  ADD KEY `Combo_Char` (`Combo_Char`),
  ADD KEY `Combo_Veh` (`Combo_Veh`),
  ADD KEY `M_Type` (`M_Type`);

--
-- Indexes for table `mkvn_mission_type`
--
ALTER TABLE `mkvn_mission_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mkvn_mkwii_characters`
--
ALTER TABLE `mkvn_mkwii_characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mkvn_mkwii_vehicles`
--
ALTER TABLE `mkvn_mkwii_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mkvn_timetrail`
--
ALTER TABLE `mkvn_timetrail`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `TrackID` (`TrackID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `Combo_Char` (`Combo_Char`),
  ADD KEY `Combo_Vehicle` (`Combo_Vehicle`);

--
-- Indexes for table `mkvn_tracks`
--
ALTER TABLE `mkvn_tracks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DLC_Music_PackID` (`DLC_Music_PackID`);

--
-- Indexes for table `mkvn_versions`
--
ALTER TABLE `mkvn_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ChangelogID` (`ChangelogID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Type` (`Type`),
  ADD KEY `Creator` (`Creator`);

--
-- Indexes for table `project_type`
--
ALTER TABLE `project_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tgbhistory`
--
ALTER TABLE `tgbhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Role` (`Role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mkvn_changelogs`
--
ALTER TABLE `mkvn_changelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mkvn_dlcpacks`
--
ALTER TABLE `mkvn_dlcpacks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mkvn_dlc_type`
--
ALTER TABLE `mkvn_dlc_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mkvn_missions`
--
ALTER TABLE `mkvn_missions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mkvn_mission_type`
--
ALTER TABLE `mkvn_mission_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mkvn_mkwii_characters`
--
ALTER TABLE `mkvn_mkwii_characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `mkvn_mkwii_vehicles`
--
ALTER TABLE `mkvn_mkwii_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `mkvn_timetrail`
--
ALTER TABLE `mkvn_timetrail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `mkvn_tracks`
--
ALTER TABLE `mkvn_tracks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1664;

--
-- AUTO_INCREMENT for table `mkvn_versions`
--
ALTER TABLE `mkvn_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `project_type`
--
ALTER TABLE `project_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tgbhistory`
--
ALTER TABLE `tgbhistory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mkvn_dlcpacks`
--
ALTER TABLE `mkvn_dlcpacks`
  ADD CONSTRAINT `mkvn_dlcpacks_ibfk_1` FOREIGN KEY (`DLC_Type`) REFERENCES `mkvn_dlc_type` (`ID`);

--
-- Constraints for table `mkvn_missions`
--
ALTER TABLE `mkvn_missions`
  ADD CONSTRAINT `mkvn_missions_ibfk_1` FOREIGN KEY (`M_Type`) REFERENCES `mkvn_mission_type` (`id`),
  ADD CONSTRAINT `mkvn_missions_ibfk_2` FOREIGN KEY (`Combo_Char`) REFERENCES `mkvn_mkwii_characters` (`id`),
  ADD CONSTRAINT `mkvn_missions_ibfk_3` FOREIGN KEY (`Combo_Veh`) REFERENCES `mkvn_mkwii_vehicles` (`id`);

--
-- Constraints for table `mkvn_timetrail`
--
ALTER TABLE `mkvn_timetrail`
  ADD CONSTRAINT `mkvn_timetrail_ibfk_1` FOREIGN KEY (`TrackID`) REFERENCES `mkvn_tracks` (`ID`),
  ADD CONSTRAINT `mkvn_timetrail_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `mkvn_timetrail_ibfk_3` FOREIGN KEY (`Combo_Char`) REFERENCES `mkvn_mkwii_characters` (`id`),
  ADD CONSTRAINT `mkvn_timetrail_ibfk_4` FOREIGN KEY (`Combo_Vehicle`) REFERENCES `mkvn_mkwii_vehicles` (`id`);

--
-- Constraints for table `mkvn_versions`
--
ALTER TABLE `mkvn_versions`
  ADD CONSTRAINT `mkvn_versions_ibfk_1` FOREIGN KEY (`ChangelogID`) REFERENCES `mkvn_changelogs` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`Creator`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`Type`) REFERENCES `project_type` (`ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`Role`) REFERENCES `userroles` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
