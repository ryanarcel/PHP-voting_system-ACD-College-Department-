-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 10:29 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `type`) VALUES
(1, 'college', 'c0llege2019', 'Administrator', 'College'),
(2, 'sradmin', 'sHs2018', 'admins', 'Senior High'),
(3, 'hsadmin', 'Hs2018', 'admini', 'High School');

-- --------------------------------------------------------

--
-- Table structure for table `chika`
--

CREATE TABLE `chika` (
  `id` int(10) NOT NULL,
  `org` varchar(60) NOT NULL,
  `voter` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `department_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`) VALUES
(1, 'College'),
(2, 'Senior High'),
(3, 'High School'),
(4, 'Elementary');

-- --------------------------------------------------------

--
-- Table structure for table `flyers`
--

CREATE TABLE `flyers` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `stud_id` int(100) NOT NULL,
  `course` varchar(10) NOT NULL,
  `year` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nominees`
--

CREATE TABLE `nominees` (
  `id` int(11) NOT NULL,
  `org` varchar(60) NOT NULL,
  `pos` varchar(60) NOT NULL,
  `posId` int(255) NOT NULL,
  `party` varchar(65) NOT NULL,
  `name` varchar(60) NOT NULL,
  `level` varchar(80) NOT NULL,
  `course` varchar(60) NOT NULL,
  `year` varchar(3) NOT NULL,
  `stud_id` varchar(60) NOT NULL,
  `stat` varchar(20) NOT NULL,
  `close_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nominees`
--

INSERT INTO `nominees` (`id`, `org`, `pos`, `posId`, `party`, `name`, `level`, `course`, `year`, `stud_id`, `stat`, `close_date`) VALUES
(1, 'KASAMA Election 2019', 'Local Day Governor', 8, 'ANAK ACD PARTY', 'OMBAO, JULIE JANE PASCIOLES', 'College', 'BSSW', '1', 'user313', 'Active', '2019-06-16'),
(2, 'KASAMA Election 2019', 'Local Day Governor', 8, 'SULONG PARTY', 'TI-IN, APRIL WAYNE MARGEN', 'College', 'BSED-Eng', '1', 'user142', 'Active', '2019-06-16'),
(3, 'KASAMA Election 2019', 'Local Day Vice Governor', 9, 'ANAK ACD PARTY', 'ELEGINO, RUFFA MAE SEBIOS', 'College', 'BSSW', '1', 'user304', 'Active', '2019-06-16'),
(4, 'KASAMA Election 2019', 'Local Day Secretary', 10, 'ANAK ACD PARTY', 'PERIN, AMITES BOLOY', 'College', 'BSSW', '1', 'user315', 'Active', '2019-06-16'),
(5, 'KASAMA Election 2019', 'Local Day Secretary', 10, 'SULONG PARTY', 'MANGMANG, CHERRY MAE RESTIFICAR', 'College', 'BSBA-Fin', '2', 'user47', 'Active', '2019-06-16'),
(6, 'KASAMA Election 2019', 'Local Day Treasurer', 11, 'ANAK ACD PARTY', 'MALLEN, HAZEL ALBINO', 'College', 'BSSW', '1', 'user311', 'Active', '2019-06-16'),
(7, 'KASAMA Election 2019', 'Local Day Auditor', 12, 'ANAK ACD PARTY', 'GALLARDO, ANGELIE KATE', 'College', 'BSED-ValEd', '2', 'user204', 'Active', '2019-06-16'),
(8, 'KASAMA Election 2019', 'Local Day Auditor', 12, 'SULONG PARTY', 'FUERTES, ROSELYN PECOLADOS', 'College', 'BSBA-Fin', '2', 'user45', 'Active', '2019-06-16'),
(9, 'KASAMA Election 2019', 'Local Day PIO', 13, 'ANAK ACD PARTY', 'DEATRAS, LORAINE PENIERO', 'College', 'BSSW', '2', 'user332', 'Active', '2019-06-16'),
(10, 'KASAMA Election 2019', 'Executive President', 1, 'ANAK ACD PARTY', 'MACARIMBANG, AMERAH GANDA', 'College', 'BSSW', '2', 'user340', 'Active', '2019-06-16'),
(11, 'KASAMA Election 2019', 'Executive President', 1, 'SULONG PARTY', 'CANOY, MELVIN JAY MONTER', 'College', 'BSBA-MaR', '4', 'user623', 'Active', '2019-06-16'),
(12, 'KASAMA Election 2019', 'Executive Vice President', 2, 'ANAK ACD PARTY', 'PERALTA, DANICA CABILAO', 'College', 'BSSW', '2', 'user344', 'Active', '2019-06-16'),
(13, 'KASAMA Election 2019', 'Executive Secretary', 3, 'ANAK ACD PARTY', 'LAYAO, FARRAH BANDERA', 'College', 'BSED-ValEd', '2', 'user207', 'Active', '2019-06-16'),
(14, 'KASAMA Election 2019', 'Executive Secretary', 3, 'SULONG PARTY', 'PONO, JINKY MAKIG-ANGAY', 'College', 'BSBA-Fin', '2', 'user53', 'Active', '2019-06-16'),
(15, 'KASAMA Election 2019', 'Executive Treasurer', 4, 'ANAK ACD PARTY', 'POGOY, CHARLYNE BAUTISTALLA', 'College', 'BSED-Eng', '2', 'user147', 'Active', '2019-06-16'),
(16, 'KASAMA Election 2019', 'Executive Treasurer', 4, 'SULONG PARTY', 'ROTURAS, JOBERT JOHN CANTONAO', 'College', 'BSBA-MaR', '4', 'user648', 'Active', '2019-06-16'),
(17, 'KASAMA Election 2019', 'Executive Auditor', 5, 'ANAK ACD PARTY', 'MASADOG, MELCHORA MONTEFALCON', 'College', 'BSBA-Fin', '4', 'user510', 'Active', '2019-06-16'),
(18, 'KASAMA Election 2019', 'Executive Auditor', 5, 'SULONG PARTY', 'GALAPIN, MICHAEL MADARANG', 'College', 'BSBA-Fin', '4', 'user506', 'Active', '2019-06-16'),
(19, 'KASAMA Election 2019', 'Executive PIO', 6, 'SULONG PARTY', 'COSTELO, JAPETH BUCALING', 'College', 'BSBA-HR', '2', 'user76', 'Active', '2019-06-16'),
(20, 'KASAMA Election 2019', 'Executive Business Manager', 7, 'SULONG PARTY', 'VILLAMIL, JULIE MAE BATILO', 'College', 'BSBA-MaR', '2', 'user603', 'Active', '2019-06-16'),
(21, 'KASAMA Election 2019', 'Local Evening Governor', 14, 'ANAK ACD PARTY', 'GILTURA, GRACE ANNE', 'College', '', '', '', 'Active', '2019-06-16'),
(22, 'KASAMA Election 2019', 'Local Evening Vice Governor', 15, 'ANAK ACD PARTY', 'VILLAMOR, ALDRINE', 'College', 'BSSW', '2', 'user909', 'Active', '2019-06-16'),
(23, 'KASAMA Election 2019', 'Local Evening Secretary', 16, 'ANAK ACD PARTY', 'MANALO, JOAN AMISTAD', 'College', 'BSSW', '2', 'user904', 'Active', '2019-06-16'),
(24, 'KASAMA Election 2019', 'Local Evening Secretary', 16, 'SULONG PARTY', 'TANO, RONALYN CASIPE', 'College', 'BSBA-MaR', '2', 'user602', 'Active', '2019-06-16'),
(25, 'KASAMA Election 2019', 'Local Evening Treasurer', 17, 'ANAK ACD PARTY', 'ORDANEZA, KAREN GRACE LEGADA', 'College', 'BSBA-MaR', '1', 'user576', 'Active', '2019-06-16'),
(26, 'KASAMA Election 2019', 'Local Evening Auditor', 18, 'ANAK ACD PARTY', 'TANAYA, MARLOU YUSON', 'College', 'BSBA-MaR', '1', 'user581', 'Active', '2019-06-16'),
(27, 'KASAMA Election 2019', 'Local Evening PIO', 19, 'ANAK ACD PARTY', 'ALIBIANO, MA. ELAIZA ANAJAO', 'College', 'BSED-Eng', '2', 'user686', 'Active', '2019-06-16'),
(28, 'KASAMA Election 2019', 'Local Evening PIO', 19, 'SULONG PARTY', 'MANATAS, HAZEL KATE FULVADORA', 'College', 'BSBA-Fin', '1', 'user484', 'Active', '2019-06-16'),
(29, 'KASAMA Election 2019', 'Executive PIO', 6, 'ANAK ACD PARTY', 'BARROCA, RALPH ETHAN', 'College', '', '', '', 'Active', '2019-06-16'),
(30, 'KASAMA Election 2019', 'Executive Business Manager', 7, 'ANAK ACD PARTY', 'SANTILLAN, DAVID SHARLES', 'College', '', '', '', 'Active', '2019-06-16'),
(31, 'KASAMA Election 2019', 'Local Evening Governor', 14, 'SULONG PARTY', 'CAMBALON, ANGELA BOLIVAR', 'College', 'BSED-Sci', '2', 'user735', 'Active', '2019-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `org` varchar(60) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `stat` varchar(50) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `org`, `dept`, `stat`, `course`) VALUES
(5, 'KASAMA Election 2019', 'College', 'Active', 'Everyone');

-- --------------------------------------------------------

--
-- Table structure for table `partylist`
--

CREATE TABLE `partylist` (
  `id` int(10) NOT NULL,
  `party_name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `stat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partylist`
--

INSERT INTO `partylist` (`id`, `party_name`, `type`, `stat`) VALUES
(1, 'ANAK ACD PARTY', 'College', 'Active'),
(2, 'SULONG PARTY', 'College', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `org` varchar(60) NOT NULL,
  `pos` varchar(60) NOT NULL,
  `level` varchar(50) NOT NULL,
  `stat` varchar(20) NOT NULL,
  `hierarchy` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `org`, `pos`, `level`, `stat`, `hierarchy`) VALUES
(1, 'KASAMA Election 2019', 'Executive President', 'College', 'Active', 'Executive'),
(2, 'KASAMA Election 2019', 'Executive Vice President', 'College', 'Active', 'Executive'),
(3, 'KASAMA Election 2019', 'Executive Secretary', 'College', 'Active', 'Executive'),
(4, 'KASAMA Election 2019', 'Executive Treasurer', 'College', 'Active', 'Executive'),
(5, 'KASAMA Election 2019', 'Executive Auditor', 'College', 'Active', 'Executive'),
(6, 'KASAMA Election 2019', 'Executive PIO', 'College', 'Active', 'Executive'),
(7, 'KASAMA Election 2019', 'Executive Business Manager', 'College', 'Active', 'Executive'),
(8, 'KASAMA Election 2019', 'Local Day Governor', 'College', 'Active', 'Local Day'),
(9, 'KASAMA Election 2019', 'Local Day Vice Governor', 'College', 'Active', 'Local Day'),
(10, 'KASAMA Election 2019', 'Local Day Secretary', 'College', 'Active', 'Local Day'),
(11, 'KASAMA Election 2019', 'Local Day Treasurer', 'College', 'Active', 'Local Day'),
(12, 'KASAMA Election 2019', 'Local Day Auditor', 'College', 'Active', 'Local Day'),
(13, 'KASAMA Election 2019', 'Local Day PIO', 'College', 'Active', 'Local Day'),
(14, 'KASAMA Election 2019', 'Local Evening Governor', 'College', 'Active', 'Local Evening'),
(15, 'KASAMA Election 2019', 'Local Evening Vice Governor', 'College', 'Active', 'Local Evening'),
(16, 'KASAMA Election 2019', 'Local Evening Secretary', 'College', 'Active', 'Local Evening'),
(17, 'KASAMA Election 2019', 'Local Evening Treasurer', 'College', 'Active', 'Local Evening'),
(18, 'KASAMA Election 2019', 'Local Evening Auditor', 'College', 'Active', 'Local Evening'),
(19, 'KASAMA Election 2019', 'Local Evening PIO', 'College', 'Active', 'Local Evening');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `course` varchar(60) NOT NULL,
  `year` varchar(2) NOT NULL,
  `Level` varchar(50) NOT NULL,
  `stud_id` varchar(30) NOT NULL,
  `class` varchar(10) NOT NULL,
  `stud_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `name`, `course`, `year`, `Level`, `stud_id`, `class`, `stud_pass`) VALUES
(1, 'AGLAS, JOSALYN EMBARABAY', 'BEEd', '1', 'College', 'user1', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(2, 'ALBARRACIN, LEO GACUS', 'BEEd', '1', 'College', 'user2', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(3, 'ALSOLA, HONEY LIBRANDO', 'BEEd', '1', 'College', 'user3', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(4, 'APOSTOL, ERIECEL SUHAYON', 'BEEd', '1', 'College', 'user4', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(5, 'BACORDO, CHARLYN SERONDO', 'BEEd', '1', 'College', 'user5', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(6, 'BISARES, JHEMICO SON', 'BEEd', '1', 'College', 'user6', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(7, 'GILLO, GLENN, JR. RASONABLE', 'BEEd', '1', 'College', 'user7', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(8, 'LAHOYLAHOY, JERRELYNE ALBERCA', 'BEEd', '1', 'College', 'user8', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(9, 'LEON, JEROME MAMUSOG', 'BEEd', '1', 'College', 'user9', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(10, 'LIMOT, DINAVEL GULTIANO', 'BEEd', '1', 'College', 'user10', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(11, 'MACAN, MAICAH', 'BEEd', '1', 'College', 'user11', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(12, 'MANUEL, IRENE LUMAGASON', 'BEEd', '1', 'College', 'user12', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(13, 'NUGAS, RINAH KILAYCO', 'BEEd', '1', 'College', 'user13', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(14, 'ODUYAN, JOCEL BUDTA', 'BEEd', '1', 'College', 'user14', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(15, 'PANDA, ASLIMA PANDA', 'BEEd', '1', 'College', 'user15', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(16, 'PANUTCHOL, JOELIE PEARL FERNANDEZ', 'BEEd', '1', 'College', 'user16', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(17, 'PASTERA, ZEN AUDREE SANICO', 'BEEd', '1', 'College', 'user17', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(18, 'PELIÑO, LEAH MAE PACQUIAO', 'BEEd', '1', 'College', 'user18', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(19, 'TEO, MARYJANE JALJONI', 'BEEd', '1', 'College', 'user19', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(20, 'VARELA, KRIS ELLA MUNARES', 'BEEd', '1', 'College', 'user20', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(21, 'VILLANEL, ROSE ANN TANJAY', 'BEEd', '1', 'College', 'user21', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(22, 'WENCESLAO, NHOELA JEAN GARCES', 'BEEd', '1', 'College', 'user22', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(23, 'YUTIG, CHARIZA AYALA', 'BEEd', '1', 'College', 'user23', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(24, 'ALI, DIVINA ALIBO', 'BEEd', '2', 'College', 'user24', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(25, 'ANDE, JHAIRA MAY TALISAN', 'BEEd', '2', 'College', 'user25', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(26, 'BAGUIO, ROCHELLE CALIMPITAN', 'BEEd', '2', 'College', 'user26', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(27, 'LOZADA, CHEZA LAZAGA', 'BEEd', '2', 'College', 'user27', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(28, 'LUNGAN, CHERRY JANE KALAN', 'BEEd', '2', 'College', 'user28', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(29, 'MAPALO, IVY MAE PABIO', 'BEEd', '2', 'College', 'user29', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(30, 'MAPANSA, ELLA MEA DE CASTRO', 'BEEd', '2', 'College', 'user30', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(31, 'RABACA, JERALDINE MATA', 'BEEd', '2', 'College', 'user31', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(32, 'SALAHAG, MIKIE MADRONERO', 'BEEd', '2', 'College', 'user32', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(33, 'SAMON, DARLET MAMONONG', 'BEEd', '2', 'College', 'user33', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(34, 'BAGAMASPAD, FEBBIE CONEJOS', 'BSBA-Fin', '1', 'College', 'user34', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(35, 'CEMPRON, GLORY MAE LIMBOY', 'BSBA-Fin', '1', 'College', 'user35', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(36, 'CONDEZ, LYCA LORZANO', 'BSBA-Fin', '1', 'College', 'user36', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(37, 'DIVINAGRACIA, CARREN ALAGAO', 'BSBA-Fin', '1', 'College', 'user37', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(38, 'DONATO, MARICEL BENTAYAO', 'BSBA-Fin', '1', 'College', 'user38', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(39, 'JABALLA, MARY ROSE DELGADO', 'BSBA-Fin', '1', 'College', 'user39', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(40, 'LABIAGA, JAIME ESPARAGOSA', 'BSBA-Fin', '1', 'College', 'user40', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(41, 'PAUNILLAN, JASON MUAÑA', 'BSBA-Fin', '1', 'College', 'user41', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(42, 'ALIGANGA, LEA MAE MOSQUERA', 'BSBA-Fin', '2', 'College', 'user42', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(43, 'EBERO, BEVERLY VALENZONA', 'BSBA-Fin', '2', 'College', 'user43', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(44, 'FERIANILA, MARIEL  AGAN', 'BSBA-Fin', '2', 'College', 'user44', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(45, 'FUERTES, ROSELYN PECOLADOS', 'BSBA-Fin', '2', 'College', 'user45', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(46, 'LORO, ANGELICA LIMORENAS', 'BSBA-Fin', '2', 'College', 'user46', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(47, 'MANGMANG, CHERRY MAE RESTIFICAR', 'BSBA-Fin', '2', 'College', 'user47', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(48, 'MONARES, CHERRY ROSE LANOTAN', 'BSBA-Fin', '2', 'College', 'user48', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(49, 'NABONG, JELLY MACABENTA', 'BSBA-Fin', '2', 'College', 'user49', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(50, 'ONOD, CHARISSA MAE BACQUIAL', 'BSBA-Fin', '2', 'College', 'user50', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(51, 'ORCULLO, JOMARIE LIBOON', 'BSBA-Fin', '2', 'College', 'user51', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(52, 'PANINSORO, JOHN ALLEN', 'BSBA-Fin', '2', 'College', 'user52', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(53, 'PONO, JINKY MAKIG-ANGAY', 'BSBA-Fin', '2', 'College', 'user53', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(54, 'REGODON, HAZEL POLINGA', 'BSBA-Fin', '2', 'College', 'user54', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(55, 'SOLIVA, MIGUEL LUIGI MAHILUM', 'BSBA-Fin', '2', 'College', 'user55', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(56, 'SY, ETHELDRIDA ZAMORA', 'BSBA-Fin', '2', 'College', 'user56', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(57, 'ABAO, IVY GRACE AY-AY', 'BSBA-HR', '1', 'College', 'user57', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(58, 'AMACNA, ZIERA GAY NUDALO', 'BSBA-HR', '1', 'College', 'user58', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(59, 'ASARES, JEANGLEMAE CARORO', 'BSBA-HR', '1', 'College', 'user59', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(60, 'BALBIN, NEIL LLOYD DILAG', 'BSBA-HR', '1', 'College', 'user60', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(61, 'CASTRO, FIDEL BINANGON', 'BSBA-HR', '1', 'College', 'user61', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(62, 'CURTINA, CRISTINA MAAGHOP', 'BSBA-HR', '1', 'College', 'user62', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(63, 'DU, ALEXANDER JUMAMIL', 'BSBA-HR', '1', 'College', 'user63', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(64, 'ETAC, REY EVANGEL MONTILDE', 'BSBA-HR', '1', 'College', 'user64', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(65, 'LAUDA, JACQUELYN', 'BSBA-HR', '1', 'College', 'user65', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(66, 'MIOLE, MARKWIL JHON MALINAO', 'BSBA-HR', '1', 'College', 'user66', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(67, 'OBON, LYCA', 'BSBA-HR', '1', 'College', 'user67', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(68, 'POLINGA, JELLIA MANLANGIT', 'BSBA-HR', '1', 'College', 'user68', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(69, 'QUIDATO, ERICA', 'BSBA-HR', '1', 'College', 'user69', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(70, 'QUIPANES, MARIA PAMELA PLAZA', 'BSBA-HR', '1', 'College', 'user70', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(71, 'RAPAS, ANGELIE QUILATON', 'BSBA-HR', '1', 'College', 'user71', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(72, 'REMOROZA, JAYSON PANLILIO', 'BSBA-HR', '1', 'College', 'user72', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(73, 'SAGAYNO, JOMAR SUMANDAC', 'BSBA-HR', '1', 'College', 'user73', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(74, 'AH, KEN JOEL SUMATRA', 'BSBA-HR', '2', 'College', 'user74', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(75, 'BANDALAN, LOVELY ANN MANGAO', 'BSBA-HR', '2', 'College', 'user75', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(76, 'COSTELO, JAPETH BUCALING', 'BSBA-HR', '2', 'College', 'user76', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(77, 'DUGADUGA, JAY CARTIN', 'BSBA-HR', '2', 'College', 'user77', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(78, 'DURO, JOHN LOIS PEPITO', 'BSBA-HR', '2', 'College', 'user78', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(79, 'MELENCION, JENNY ALGONES', 'BSBA-HR', '2', 'College', 'user79', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(80, 'PAWAKIL, NORMIA CAMAMA', 'BSBA-HR', '2', 'College', 'user80', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(81, 'SUMAYO, VANSQUEINNE LAPIDEZ', 'BSBA-HR', '2', 'College', 'user81', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(82, 'VILLAGONZALO, LAURENCE OMAÑA', 'BSBA-HR', '2', 'College', 'user82', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(83, 'ANCOG, JHONA LAICAH LUMANTAS', 'BSBA-MaR', '1', 'College', 'user83', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(84, 'ARDON, GLADDY BLESS FRANCISCO', 'BSBA-MaR', '1', 'College', 'user84', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(85, 'BAGOHIN, DAPHNY MARIE UNTAL', 'BSBA-MaR', '1', 'College', 'user85', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(86, 'BRAGA, ROLLY JR. SILVANO', 'BSBA-MaR', '1', 'College', 'user86', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(87, 'CABATAÑA, ROSALINDA ANCAJAS', 'BSBA-MaR', '1', 'College', 'user87', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(88, 'CALANDA, ANGELINE ENANTAY', 'BSBA-MaR', '1', 'College', 'user88', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(89, 'CAMUS, CRISTINA AGUSTIN', 'BSBA-MaR', '1', 'College', 'user89', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(90, 'DEIPARINE, KYLA CABIGAS', 'BSBA-MaR', '1', 'College', 'user90', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(91, 'DUMANDAN, MARJUN ORTEZ', 'BSBA-MaR', '1', 'College', 'user91', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(92, 'EDIG, JASON AIVANNE CUDAL', 'BSBA-MaR', '1', 'College', 'user92', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(93, 'GAYO, LOVELY MAE NARO', 'BSBA-MaR', '1', 'College', 'user93', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(94, 'GELSANO, LYKA-MAE COMPRA', 'BSBA-MaR', '1', 'College', 'user94', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(95, 'GONZAGA, RICHELL MAE CUBAY', 'BSBA-MaR', '1', 'College', 'user95', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(96, 'LATUMBO, JENEVEB BESA', 'BSBA-MaR', '1', 'College', 'user96', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(97, 'MANUAT, HIBRIAZIE SINAMAO', 'BSBA-MaR', '1', 'College', 'user97', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(98, 'MERCADER, GRAESHIA MHAYE PATOC', 'BSBA-MaR', '1', 'College', 'user98', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(99, 'NANOY, DANNIELLE ROIE CHIONG', 'BSBA-MaR', '1', 'College', 'user99', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(100, 'PACIFICADOR, JUBERT DOLING', 'BSBA-MaR', '1', 'College', 'user100', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(101, 'PODPOD, IAN-JAY PAMA', 'BSBA-MaR', '1', 'College', 'user101', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(102, 'SUMAYANG, GEORGIE LIQUIT', 'BSBA-MaR', '1', 'College', 'user102', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(103, 'TORDIL, PETER PAUL BERNALES', 'BSBA-MaR', '1', 'College', 'user103', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(104, 'BASACA, JOED SORIA', 'BSBA-MaR', '2', 'College', 'user104', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(105, 'BAURA, FRINCES ANN FABORADA', 'BSBA-MaR', '2', 'College', 'user105', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(106, 'CONGAYO, MELISSA MAPUTOL', 'BSBA-MaR', '2', 'College', 'user106', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(107, 'DALISAY, JANELLE MAE CONCHA', 'BSBA-MaR', '2', 'College', 'user107', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(108, 'LAPING, NIA NICOLE JABILLO', 'BSBA-MaR', '2', 'College', 'user108', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(109, 'MABAYAO, LAE ANNE CALIG-ONAN', 'BSBA-MaR', '2', 'College', 'user109', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(110, 'MADIJANON, IMEE TEJARES', 'BSBA-MaR', '2', 'College', 'user110', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(111, 'PEREA, PATRICIA MAE CAMBRONERO', 'BSBA-MaR', '2', 'College', 'user111', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(112, 'QUIBOL, ANGEL MAE PUNO', 'BSBA-MaR', '2', 'College', 'user112', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(113, 'TABORADA, AIZA MAY LUBANG', 'BSBA-MaR', '2', 'College', 'user113', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(114, 'TAÑO, KENNETH BUTASLAC', 'BSBA-MaR', '2', 'College', 'user114', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(115, 'TAÑO, KENT JAY BUTASLAC', 'BSBA-MaR', '2', 'College', 'user115', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(116, 'WENCESLAO, ROSEMARY RIVAS', 'BSBA-MaR', '2', 'College', 'user116', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(117, 'ALCANTARA, KRISTINE MAE CASTARITAS', 'BSED-Eng', '1', 'College', 'user117', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(118, 'ALINGASA, ELLA JANE JABAGAT', 'BSED-Eng', '1', 'College', 'user118', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(119, 'AROYLA, ROSALIE MAMBATAK', 'BSED-Eng', '1', 'College', 'user119', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(120, 'BARLAS, AMIE JADE VILLARASA', 'BSED-Eng', '1', 'College', 'user120', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(121, 'BUTANAS, ELAIZA MIÑOZA', 'BSED-Eng', '1', 'College', 'user121', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(122, 'CARILLO, RACHEL JOYCE DAUD', 'BSED-Eng', '1', 'College', 'user122', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(123, 'COLANDOG, RONNEL CHESTER CULANO', 'BSED-Eng', '1', 'College', 'user123', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(124, 'DAGATAN, LADY KENN ZAMBRANO', 'BSED-Eng', '1', 'College', 'user124', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(125, 'DUMALAGA, REGINA GRACE MARTIN', 'BSED-Eng', '1', 'College', 'user125', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(126, 'FERNANDEZ, HANNA GABRIELLE AHI', 'BSED-Eng', '1', 'College', 'user126', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(127, 'GANAS, VINCE JASPER SEVILLANO', 'BSED-Eng', '1', 'College', 'user127', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(128, 'GUITORBUS, KATHLENE CHARIS MABANAG', 'BSED-Eng', '1', 'College', 'user128', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(129, 'HORTEL, LOLITO, JR. SACAL', 'BSED-Eng', '1', 'College', 'user129', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(130, 'LAVEGA, NORMAN BURLASA', 'BSED-Eng', '1', 'College', 'user130', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(131, 'LIBANDO, FELY ANNE CABIZA', 'BSED-Eng', '1', 'College', 'user131', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(132, 'MALICDEM, CINDY TRONGCO', 'BSED-Eng', '1', 'College', 'user132', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(133, 'MARCO, ESMAEL II VADAL', 'BSED-Eng', '1', 'College', 'user133', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(134, 'MIAO, LORIGEN DABUCOL', 'BSED-Eng', '1', 'College', 'user134', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(135, 'NEPOMUCENO, JEFFANY SANTOS', 'BSED-Eng', '1', 'College', 'user135', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(136, 'OSANI, NORHEMA ASI', 'BSED-Eng', '1', 'College', 'user136', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(137, 'RAMOS, RECHELL ATAMOSA', 'BSED-Eng', '1', 'College', 'user137', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(138, 'SERENIO, HANEY CABINGATAN', 'BSED-Eng', '1', 'College', 'user138', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(139, 'SUMALINOG, RAYDIN ABAYON', 'BSED-Eng', '1', 'College', 'user139', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(140, 'TAN, MARC ALLEN MAGLUNSOD', 'BSED-Eng', '1', 'College', 'user140', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(141, 'TAYONG, MARK DAVE TORMIS', 'BSED-Eng', '1', 'College', 'user141', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(142, 'TI-IN, APRIL WAYNE MARGEN', 'BSED-Eng', '1', 'College', 'user142', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(143, 'AMAGAN, CHELSIE MACARAYAN', 'BSED-Eng', '2', 'College', 'user143', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(144, 'BALINGAN, ADMER SOTTO', 'BSED-Eng', '2', 'College', 'user144', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(145, 'DEPOROS, JONELYN LINSAG', 'BSED-Eng', '2', 'College', 'user145', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(146, 'GEYROZAGA, JEZREEL CAÑETE', 'BSED-Eng', '2', 'College', 'user146', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(147, 'POGOY, CHARLYNE BAUTISTALLA', 'BSED-Eng', '2', 'College', 'user147', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(148, 'RUELES, MICHELLE ARCILLA', 'BSED-Eng', '2', 'College', 'user148', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(149, 'ARNAIZ, CLAUDINE TUMANGDAY', 'BSED-Math', '1', 'College', 'user149', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(150, 'BODIONGAN, JELA MARIE SERVANDE', 'BSED-Math', '1', 'College', 'user150', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(151, 'BULALOC, LAIZA ALCASIN', 'BSED-Math', '1', 'College', 'user151', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(152, 'DELUNA, LADY JEAN', 'BSED-Math', '1', 'College', 'user152', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(153, 'EMBAC, VANESSA TOMBALOY', 'BSED-Math', '1', 'College', 'user153', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(154, 'MIBULOS, EMMANUEL BAQUIAL', 'BSED-Math', '1', 'College', 'user154', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(155, 'MONDEJAR, ROXAN CALO', 'BSED-Math', '1', 'College', 'user155', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(156, 'OMBAOGAN, JENIC BUTULAN', 'BSED-Math', '1', 'College', 'user156', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(157, 'PANTALITA, DIMPLE MAHINAY', 'BSED-Math', '1', 'College', 'user157', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(158, 'SILLOTE, ELVIE RECTA', 'BSED-Math', '1', 'College', 'user158', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(159, 'ANG, JESSE CRIS LOUIS LILOC', 'BSED-Math', '2', 'College', 'user159', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(160, 'DIADULA, MARY GRACE MANEZE', 'BSED-Math', '2', 'College', 'user160', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(161, 'DUARTE, EZRA JOY BUENSALIDA', 'BSED-Math', '2', 'College', 'user161', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(162, 'MALIDAS, JOAN RODICOL', 'BSED-Math', '2', 'College', 'user162', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(163, 'TABOADA, MARIE GRACE SEBOG', 'BSED-Math', '2', 'College', 'user163', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(164, 'TAMALON, MERRY ANN LANGOY', 'BSED-Math', '2', 'College', 'user164', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(165, 'TORRES, LEONEBELLE LAPUZ', 'BSED-Math', '2', 'College', 'user165', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(166, 'CAMORO, MARIO, JR. MONTES', 'BSED-Sci', '1', 'College', 'user166', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(167, 'CORONICA, EZRAEL BORBON', 'BSED-Sci', '1', 'College', 'user167', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(168, 'GANLOY, RAZEL LATIBAN', 'BSED-Sci', '1', 'College', 'user168', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(169, 'MANIQUEZ, ANNE LOUISE ARBOLERAS', 'BSED-Sci', '1', 'College', 'user169', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(170, 'MARCELLONES, KIMBERLY GIANGAN', 'BSED-Sci', '1', 'College', 'user170', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(171, 'ABENOJAR, SAM STACK GIANGAN', 'BSED-Sci', '2', 'College', 'user171', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(172, 'ALGABRE, BERLYN AGUANTA', 'BSED-Sci', '2', 'College', 'user172', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(173, 'CAMARILLO, DIANNE CANSINO', 'BSED-Sci', '2', 'College', 'user173', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(174, 'DAPOSALA, IRISH KIM DALLEN', 'BSED-Sci', '2', 'College', 'user174', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(175, 'MACEDA, JASON', 'BSED-Sci', '2', 'College', 'user175', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(176, 'MANZANILLO, JORGE JR. DACILLO', 'BSED-Sci', '2', 'College', 'user176', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(177, 'BALILI, CRIS JOHN ABAD', 'BSED-ValEd', '1', 'College', 'user177', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(178, 'BARDE, JASTIEL MECAYLAS', 'BSED-ValEd', '1', 'College', 'user178', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(179, 'BUCALING, GLADELLE MAY NGAP', 'BSED-ValEd', '1', 'College', 'user179', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(180, 'CAGAMPANG, CHABELITA MACALAM', 'BSED-ValEd', '1', 'College', 'user180', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(181, 'CAÑEDO, JEAZAER MEA BALBUENA', 'BSED-ValEd', '1', 'College', 'user181', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(182, 'CUBELO, ADRIAN MARK ASUMBRADO', 'BSED-ValEd', '1', 'College', 'user182', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(183, 'DEWIL, DICKENSON GAPA', 'BSED-ValEd', '1', 'College', 'user183', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(184, 'DOMINGUEZ, MYLENE AGUSTINO', 'BSED-ValEd', '1', 'College', 'user184', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(185, 'DUBDUBAN, LETICIA MAE COLALJO', 'BSED-ValEd', '1', 'College', 'user185', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(186, 'GRAJALES, GWEN ALLABA', 'BSED-ValEd', '1', 'College', 'user186', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(187, 'GUADES, JERRED ALCAIN', 'BSED-ValEd', '1', 'College', 'user187', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(188, 'LAYO, DANICA MAE UNAT', 'BSED-ValEd', '1', 'College', 'user188', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(189, 'MABAGUIO, BLESS MADUAY', 'BSED-ValEd', '1', 'College', 'user189', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(190, 'MAHILUM, REZZEL ABOSEJO', 'BSED-ValEd', '1', 'College', 'user190', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(191, 'MAMADUA, JAHARA ATUAN', 'BSED-ValEd', '1', 'College', 'user191', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(192, 'MASUMPAD, CHERIL ONGCAY', 'BSED-ValEd', '1', 'College', 'user192', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(193, 'PACULANANG, PRINCESS LYN DINAMPO', 'BSED-ValEd', '1', 'College', 'user193', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(194, 'PUEDAN, DANICA MARIE EVANGELIO', 'BSED-ValEd', '1', 'College', 'user194', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(195, 'SALO, DENNIS SILVERON', 'BSED-ValEd', '1', 'College', 'user195', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(196, 'SEBUMA, RYSTEL JOY MONTELLANO', 'BSED-ValEd', '1', 'College', 'user196', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(197, 'TIBORON, YBON CARL YUAG', 'BSED-ValEd', '1', 'College', 'user197', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(198, 'VILLANUEVA, SHELLA MAE PASIGNA', 'BSED-ValEd', '1', 'College', 'user198', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(199, 'ABARQUEZ, ANA MAE', 'BSED-ValEd', '2', 'College', 'user199', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(200, 'ASPERA, MARY GLOR SABANIA', 'BSED-ValEd', '2', 'College', 'user200', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(201, 'BANLUTA, GERALDINE ENTREVENCION', 'BSED-ValEd', '2', 'College', 'user201', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(202, 'BOCADO, ELEONARD DAYOT', 'BSED-ValEd', '2', 'College', 'user202', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(203, 'CABUDOY, CRIZIA MAE ALENDAO', 'BSED-ValEd', '2', 'College', 'user203', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(204, 'GALLARDO, ANGELIE KATE', 'BSED-ValEd', '2', 'College', 'user204', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(205, 'GREGORY, JURRY CONSUEGRA', 'BSED-ValEd', '2', 'College', 'user205', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(206, 'HAYAGAN, SHERA GAUDICOS', 'BSED-ValEd', '2', 'College', 'user206', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(207, 'LAYAO, FARRAH BANDERA', 'BSED-ValEd', '2', 'College', 'user207', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(208, 'QUINGCO, JEA-ANN CAÑO', 'BSED-ValEd', '2', 'College', 'user208', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(209, 'ROSALES, LEIZEL-ANN RAMILLANO', 'BSED-ValEd', '2', 'College', 'user209', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(210, 'RUBIO, RICHARD GEMERGA', 'BSED-ValEd', '2', 'College', 'user210', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(211, 'ARCENA, IRA FLOR PREMACIO', 'BSHM', '1', 'College', 'user211', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(212, 'BASALO, ARR JAY JUMAWAN', 'BSHM', '1', 'College', 'user212', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(213, 'BORDIOS, JOHN LLOYD LUCASIA', 'BSHM', '1', 'College', 'user213', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(214, 'CAGAMPANG, JENNELYN MACALAM', 'BSHM', '1', 'College', 'user214', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(215, 'CAÑAL, CHRISTY ALAMIDA', 'BSHM', '1', 'College', 'user215', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(216, 'CANDA, JOSEL SHYRELLE ARABEJO', 'BSHM', '1', 'College', 'user216', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(217, 'CANTANCIO, NIÑO FLORES', 'BSHM', '1', 'College', 'user217', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(218, 'COLENTAS, DONALEZA GERONIMO', 'BSHM', '1', 'College', 'user218', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(219, 'DALUGDOG, JOERIC BRIONES', 'BSHM', '1', 'College', 'user219', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(220, 'FLORES, GWYNETH BANUELOS', 'BSHM', '1', 'College', 'user220', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(221, 'GONZALES, FIDELYN', 'BSHM', '1', 'College', 'user221', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(222, 'GUALDE, RUBELYN MADRAZO', 'BSHM', '1', 'College', 'user222', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(223, 'GUNABE, JISYLE PANILAGAO', 'BSHM', '1', 'College', 'user223', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(224, 'LIM, PRINCE JACK MADRIGA', 'BSHM', '1', 'College', 'user224', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(225, 'MALACURA, BEVERLYN MASUCOL', 'BSHM', '1', 'College', 'user225', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(226, 'PAGUNSAN, JUSTIN PAUL CODERA', 'BSHM', '1', 'College', 'user226', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(227, 'PAYAC, ROSE MARIE GULA', 'BSHM', '1', 'College', 'user227', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(228, 'SALAZAR, RENZ LOUIE BASACA', 'BSHM', '1', 'College', 'user228', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(229, 'SALES, WENCH EHILLA', 'BSHM', '1', 'College', 'user229', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(230, 'SERDAN, AUBREY MAPA', 'BSHM', '1', 'College', 'user230', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(231, 'SEVILLA, JOLINA MAE CATURAN', 'BSHM', '1', 'College', 'user231', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(232, 'TABLA, WINFRED GEROLANGIN', 'BSHM', '1', 'College', 'user232', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(233, 'TALARA, JOSEPH CHRISTOPHER SUAREZ', 'BSHM', '1', 'College', 'user233', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(234, 'TEVES, KRISTA JEMA JOSE', 'BSHM', '1', 'College', 'user234', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(235, 'TULO, NICHOLE CODEROS', 'BSHM', '1', 'College', 'user235', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(236, 'YBALIO, MYLYN LOGRONIO', 'BSHM', '1', 'College', 'user236', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(237, 'ALBARACIN, KENN JARVY PIAMONTE', 'BSHM', '2', 'College', 'user237', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(238, 'APAYOR, JOHN MIGUEL ABCEDE', 'BSHM', '2', 'College', 'user238', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(239, 'ARCOS, MARIEL VILLARBA', 'BSHM', '2', 'College', 'user239', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(240, 'BUCAG, CAHREN DION', 'BSHM', '2', 'College', 'user240', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(241, 'CRISOSTOMO, RYAN GALLARDO', 'BSHM', '2', 'College', 'user241', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(242, 'DEJARME, JOYONNE RASHEE BOLONG', 'BSHM', '2', 'College', 'user242', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(243, 'LEE, LAI-ANN GALINATO', 'BSHM', '2', 'College', 'user243', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(244, 'MABAYAO, MA. SUNSHINE GRACE PANUNGCAT', 'BSHM', '2', 'College', 'user244', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(245, 'NIGAT, ANGELIQUE LEYNES', 'BSHM', '2', 'College', 'user245', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(246, 'OREVILLO, HONEY JOY CRODUA', 'BSHM', '2', 'College', 'user246', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(247, 'QUIAMCO, EDEN GRACE LAPING', 'BSHM', '2', 'College', 'user247', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(248, 'RUELAN, KRIZZA SHANE GUIEB', 'BSHM', '2', 'College', 'user248', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(249, 'SAAVEDRA, ROVI PELAYO', 'BSHM', '2', 'College', 'user249', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(250, 'TALAVERA, ALBERT GABRIEL AMON', 'BSHM', '2', 'College', 'user250', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(251, 'VERSOZA, ROMARK MIRAL', 'BSHM', '2', 'College', 'user251', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(252, 'YAMBAO, OLIVIA PEPITO', 'BSHM', '2', 'College', 'user252', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(253, 'BABAO, EDCEL CLARENZ', 'BSIT', '1', 'College', 'user253', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(254, 'BABAO, YDCHEL HERNANDO', 'BSIT', '1', 'College', 'user254', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(255, 'BALAMAN, DAYANARA ANN RODAJE', 'BSIT', '1', 'College', 'user255', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(256, 'BALILI, JOHNVIC OGACHO', 'BSIT', '1', 'College', 'user256', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(257, 'BAROY, JESTONI UGALDE', 'BSIT', '1', 'College', 'user257', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(258, 'CLARITO, JETHER LLOYD YAP', 'BSIT', '1', 'College', 'user258', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(259, 'DELA CERNA, JENNIFER SABADO', 'BSIT', '1', 'College', 'user259', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(260, 'FERNANDEZ, CYRILLE JOY SUNGANGA', 'BSIT', '1', 'College', 'user260', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(261, 'GALINO, JOMARIE CASIRIS', 'BSIT', '1', 'College', 'user261', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(262, 'GRESOSS, JHON FRONE ESPINOSA', 'BSIT', '1', 'College', 'user262', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(263, 'JUMAWAN, GARY GAMALE', 'BSIT', '1', 'College', 'user263', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(264, 'LAUGANAS, MARK PAUL HELODO', 'BSIT', '1', 'College', 'user264', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(265, 'LICOMES, IVAN CHRIS SABUGA-A', 'BSIT', '1', 'College', 'user265', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(266, 'LOQUIAS, AL FRANCIS DANDOY', 'BSIT', '1', 'College', 'user266', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(267, 'MAMACOS, PHILIP JOHN DELA CRUZ', 'BSIT', '1', 'College', 'user267', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(268, 'MANIGOS, ALDRIN TEREC', 'BSIT', '1', 'College', 'user268', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(269, 'MIÑOZA, GIRLIE CAMPOMANES', 'BSIT', '1', 'College', 'user269', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(270, 'MOSEQUERA, IRA JANE JABLA', 'BSIT', '1', 'College', 'user270', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(271, 'PAMAT, JELLIEN JAY BAUTISTA', 'BSIT', '1', 'College', 'user271', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(272, 'PEROCHO, JOMARE LOBETE', 'BSIT', '1', 'College', 'user272', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(273, 'PONTILLO, GERLIE ADORABLE', 'BSIT', '1', 'College', 'user273', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(274, 'RAMIREZ, MICHAEL LAUROS', 'BSIT', '1', 'College', 'user274', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(275, 'ROSALES, LEAH SEAN RAMILLANO', 'BSIT', '1', 'College', 'user275', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(276, 'SALOME, KAYE ARELLANO', 'BSIT', '1', 'College', 'user276', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(277, 'TUMALIP, JEFFERSON ENCABO', 'BSIT', '1', 'College', 'user277', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(278, 'VILLAR, JAYSON BANTILLAN', 'BSIT', '1', 'College', 'user278', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(279, 'VISMANOS, JOHN CARLO RAMIREZ', 'BSIT', '1', 'College', 'user279', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(280, 'ADALIM, CLIFORD HOPE PAHAYAC', 'BSIT', '2', 'College', 'user280', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(281, 'ANSIT, ANTHONY JAY PAÑALES', 'BSIT', '2', 'College', 'user281', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(282, 'BACUS, PETER PAUL LUGAY', 'BSIT', '2', 'College', 'user282', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(283, 'CABILLAN, AVA JOY LUMA-AD', 'BSIT', '2', 'College', 'user283', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(284, 'CALO, ROCKY LEO CASIÑO', 'BSIT', '2', 'College', 'user284', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(285, 'CASTILLO, MITZ MIA MONTEMOR', 'BSIT', '2', 'College', 'user285', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(286, 'CORTEZ, BIANCA MAE MEDEZ', 'BSIT', '2', 'College', 'user286', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(287, 'JUDERIASEN, PHILLIP CHRISTIAN', 'BSIT', '2', 'College', 'user287', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(288, 'LAPASARAN, LORENZ CERVANTES', 'BSIT', '2', 'College', 'user288', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(289, 'MANTALABA, KRISTEL CHARDINE GADIA', 'BSIT', '2', 'College', 'user289', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(290, 'MIGUELLES, ROBSON ALLEIN FUDOLIN', 'BSIT', '2', 'College', 'user290', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(291, 'NACIONALES, GREGORY CAWA', 'BSIT', '2', 'College', 'user291', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(292, 'NOLA, ANA ROSE ESCOTON', 'BSIT', '2', 'College', 'user292', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(293, 'ALIMOCON, JHOMCIELYN BATO', 'BSSW', '1', 'College', 'user293', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(294, 'AMAD, LILIAN FAYE GALLETO', 'BSSW', '1', 'College', 'user294', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(295, 'AMPELOQUIO, KENT DAVID CALUNGSOD', 'BSSW', '1', 'College', 'user295', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(296, 'AYSO, ROSELYN ELLAGA', 'BSSW', '1', 'College', 'user296', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(297, 'BARBASAN, JANICA', 'BSSW', '1', 'College', 'user297', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(298, 'BERBOSIDO, HANNA GALLAWAN', 'BSSW', '1', 'College', 'user298', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(299, 'BOQUE, JESSICA ENSINADA', 'BSSW', '1', 'College', 'user299', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(300, 'BUENAOBRA, MARK BENNYLU CASTILLO', 'BSSW', '1', 'College', 'user300', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(301, 'CAPAROSO, ALTHEA ERIKA BALLENA', 'BSSW', '1', 'College', 'user301', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(302, 'COTEJO, PAULO REYES', 'BSSW', '1', 'College', 'user302', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(303, 'DELASAN, FAME GWAZYLL ESCARAN', 'BSSW', '1', 'College', 'user303', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(304, 'ELEGINO, RUFFA MAE SEBIOS', 'BSSW', '1', 'College', 'user304', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(305, 'EMBAC, CARMELA UNTING', 'BSSW', '1', 'College', 'user305', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(306, 'ESTACIONES, VINCE ANGUB', 'BSSW', '1', 'College', 'user306', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(307, 'FERNANDEZ, APRIL MAE MANDA', 'BSSW', '1', 'College', 'user307', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(308, 'GALERO, JADE BAULOS', 'BSSW', '1', 'College', 'user308', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(309, 'LAZARO, JOSHUA BALUNA', 'BSSW', '1', 'College', 'user309', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(310, 'LUPIAN, CHARLEMAGNE AMPER', 'BSSW', '1', 'College', 'user310', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(311, 'MALLEN, HAZEL ALBINO', 'BSSW', '1', 'College', 'user311', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(312, 'MANLITOC, JEE VEE VILLAR', 'BSSW', '1', 'College', 'user312', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(313, 'OMBAO, JULIE JANE PASCIOLES', 'BSSW', '1', 'College', 'user313', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(314, 'PAHAYAHAY, SWEETSYL BAUGBOG', 'BSSW', '1', 'College', 'user314', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(315, 'PERIN, AMITES BOLOY', 'BSSW', '1', 'College', 'user315', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(316, 'RAMORAN, RANDY NER', 'BSSW', '1', 'College', 'user316', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(317, 'RECUSTODIO, MA. KASSANDRA MAISOG', 'BSSW', '1', 'College', 'user317', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(318, 'REVILLA, ANNA LYN CORPUZ', 'BSSW', '1', 'College', 'user318', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(319, 'SAUMAY, NOR ASLIAH DIMACUTA', 'BSSW', '1', 'College', 'user319', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(320, 'UGPAT, LOVELY FABIAN', 'BSSW', '1', 'College', 'user320', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(321, 'VILLACRUSIS, ANDREA KAYL VICENTE', 'BSSW', '1', 'College', 'user321', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(322, 'VIVAS, JOMELNARA PELEGRINO', 'BSSW', '1', 'College', 'user322', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(323, 'ALAMPAYAN, FRINCESS PADOGDOG', 'BSSW', '2', 'College', 'user323', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(324, 'ALDERITE, REZIL', 'BSSW', '2', 'College', 'user324', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(325, 'ALMEDA, CARLA ALYANA RULE', 'BSSW', '2', 'College', 'user325', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(326, 'ANTONIO, LENNEJEN PALLER', 'BSSW', '2', 'College', 'user326', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(327, 'CABATUAN, SHARA MEA VIDAL', 'BSSW', '2', 'College', 'user327', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(328, 'CABRERA, CAMILLE PEÑANO', 'BSSW', '2', 'College', 'user328', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(329, 'CORPUZ, SUNSHINE GABALES', 'BSSW', '2', 'College', 'user329', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(330, 'DATULIO, JOAN SINGCO', 'BSSW', '2', 'College', 'user330', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(331, 'DAVO, LESSIE LARUYA', 'BSSW', '2', 'College', 'user331', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(332, 'DEATRAS, LORAINE PENIERO', 'BSSW', '2', 'College', 'user332', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(333, 'DELA CERNA, JULIANE FAITH CABUSAS', 'BSSW', '2', 'College', 'user333', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(334, 'DIZON, MARJORIE ADLAWAN', 'BSSW', '2', 'College', 'user334', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(335, 'FAELDEN, DAISYLYN CAMARINES', 'BSSW', '2', 'College', 'user335', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(336, 'LANDUAY, MARY JOY ABAS', 'BSSW', '2', 'College', 'user336', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(337, 'LAROA, ANGELICA JAVIER', 'BSSW', '2', 'College', 'user337', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(338, 'LOPOY, AILEEN CLARE GIMENO', 'BSSW', '2', 'College', 'user338', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(339, 'LUBANAN, MAY CARIAGA', 'BSSW', '2', 'College', 'user339', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(340, 'MACARIMBANG, AMERAH GANDA', 'BSSW', '2', 'College', 'user340', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(341, 'MARZADO, MICHELLE EDIS', 'BSSW', '2', 'College', 'user341', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(342, 'NAVARRO, MELAMIE QUINOB', 'BSSW', '2', 'College', 'user342', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(343, 'NIETO, MAYRE JOAQUIN', 'BSSW', '2', 'College', 'user343', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(344, 'PERALTA, DANICA CABILAO', 'BSSW', '2', 'College', 'user344', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(345, 'SERENIO, ROSELYN LANTAYAO', 'BSSW', '2', 'College', 'user345', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(346, 'VILLANOSA, ANGELIE GUMALING', 'BSSW', '2', 'College', 'user346', 'AM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(400, 'ADLAWAN, CRISSA', 'BEEd', '1', 'College', 'user400', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(401, 'BANTILAN, REYNA FE PABRIGAR', 'BEEd', '1', 'College', 'user401', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(402, 'BARET, JOSEPH JAY APALE', 'BEEd', '1', 'College', 'user402', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(403, 'BASIG, LIEZL LUMBA', 'BEEd', '1', 'College', 'user403', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(404, 'BUGAYONG, JEAN LECERNAS', 'BEEd', '1', 'College', 'user404', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(405, 'DELOY, IVY CRESTEL BARRA', 'BEEd', '1', 'College', 'user405', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(406, 'ENRIQUEZ, ISAH LIWANA', 'BEEd', '1', 'College', 'user406', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(407, 'EVANOSO, PRINCESS TUYOR', 'BEEd', '1', 'College', 'user407', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(408, 'EYO, ROLDAN EVANGELISAN', 'BEEd', '1', 'College', 'user408', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(409, 'FULLIDO, ROSE ANN BONGALOS', 'BEEd', '1', 'College', 'user409', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G');
INSERT INTO `voters` (`id`, `name`, `course`, `year`, `Level`, `stud_id`, `class`, `stud_pass`) VALUES
(410, 'GILDORE, ARGEANE BASIO', 'BEEd', '1', 'College', 'user410', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(411, 'MAQUITED, RAMELENE MANALO', 'BEEd', '1', 'College', 'user411', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(412, 'MOSQUEDA, MARIAH CARMELLA APALACIO', 'BEEd', '1', 'College', 'user412', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(413, 'PALMA, CHARMAINE CASTILLANO', 'BEEd', '1', 'College', 'user413', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(414, 'PRADO, EDEN CIANO', 'BEEd', '1', 'College', 'user414', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(415, 'PRIAS, ANALOIUSE SAÑAL', 'BEEd', '1', 'College', 'user415', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(416, 'RESTIFICAR, LUZVINA MABALOT', 'BEEd', '1', 'College', 'user416', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(417, 'SANCHEZ, JEAMIE ROSE DALEON', 'BEEd', '1', 'College', 'user417', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(418, 'SANCHEZ, MAY FLOR DOLORIDO', 'BEEd', '1', 'College', 'user418', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(419, 'TABANAO, STELLA LLANOS', 'BEEd', '1', 'College', 'user419', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(420, 'TAGIMLA, ARCELYN MATOGOL', 'BEEd', '1', 'College', 'user420', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(421, 'ARENDAIN, VANESSA ROSE LIBRADILLA', 'BEEd', '2', 'College', 'user421', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(422, 'BERNALDEZ, JUDY ANN DAYAP', 'BEEd', '2', 'College', 'user422', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(423, 'CALIBAY, ROWENA OGENIO', 'BEEd', '2', 'College', 'user423', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(424, 'CELERINOS, DIONAMAE RENDON', 'BEEd', '2', 'College', 'user424', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(425, 'ESTOQUE, MARINELLA MINO', 'BEEd', '2', 'College', 'user425', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(426, 'GAMAYOT, ARA MAE GETIL', 'BEEd', '2', 'College', 'user426', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(427, 'HORNIDO, SANDRA BUENA', 'BEEd', '2', 'College', 'user427', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(428, 'LIMEN, VAL BERNAL', 'BEEd', '2', 'College', 'user428', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(429, 'MACPAO, GLORIA MANATAD', 'BEEd', '2', 'College', 'user429', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(430, 'ORBETA, AILEEN MAE QUINIQUITO', 'BEEd', '2', 'College', 'user430', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(431, 'ORIAS, MARICHU CAJIGAS', 'BEEd', '2', 'College', 'user431', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(432, 'ORIAS, MARY JANE CAJIGAS', 'BEEd', '2', 'College', 'user432', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(433, 'PALACAY, RENE SUMAYA', 'BEEd', '2', 'College', 'user433', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(434, 'PALAR, AMINA DUMALAG', 'BEEd', '2', 'College', 'user434', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(435, 'PAMAOS, MERSIDETHA BALABA', 'BEEd', '2', 'College', 'user435', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(436, 'POLINAR, JOIE SWEETZA METILLO', 'BEEd', '2', 'College', 'user436', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(437, 'POLONGASA, JIPSY QUEEN PALAD', 'BEEd', '2', 'College', 'user437', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(438, 'SULIMANAN, MA. NIDA THERESE BALLESTEROS', 'BEEd', '2', 'College', 'user438', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(439, 'SUMAMBOT, LEAH MAE CORTEZA', 'BEEd', '2', 'College', 'user439', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(440, 'BANTAYAN, RICHARD ANTAO', 'BEEd', '4', 'College', 'user440', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(441, 'BANUGAN, NORMALYN BANABAL', 'BEEd', '4', 'College', 'user441', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(442, 'CAMERINO, CAREN JOY RELLON', 'BEEd', '4', 'College', 'user442', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(443, 'CARDAMA, HONEY LOU DALISAY', 'BEEd', '4', 'College', 'user443', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(444, 'DAMPAC, ASMIN MACAPOLI', 'BEEd', '4', 'College', 'user444', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(445, 'DUMALAG, CHONA LADO', 'BEEd', '4', 'College', 'user445', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(446, 'GELLA, ROSE ANN BACUS', 'BEEd', '4', 'College', 'user446', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(447, 'GETUBIG, IRIS JANE BISENAN', 'BEEd', '4', 'College', 'user447', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(448, 'GILTURA, GRACE ANNE ADO', 'BEEd', '4', 'College', 'user448', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(449, 'GUILARAN, DOREEN ALMENDEZ', 'BEEd', '4', 'College', 'user449', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(450, 'LIMPANGOG, NOVA PAGUE', 'BEEd', '4', 'College', 'user450', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(451, 'MAGHUYOP, MESTIZA GUMALIN', 'BEEd', '4', 'College', 'user451', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(452, 'MALINOG, MARY JOY LUANG', 'BEEd', '4', 'College', 'user452', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(453, 'MARIANO, KRISTEL GRACE CAMPOS', 'BEEd', '4', 'College', 'user453', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(454, 'MIJARES, JERLYN REPONTE', 'BEEd', '4', 'College', 'user454', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(455, 'OLIA, ROSALYN CAJARO', 'BEEd', '4', 'College', 'user455', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(456, 'OSNAN, DAISY JANE MELLENDEZ', 'BEEd', '4', 'College', 'user456', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(457, 'PAGUIRIGAN, COLEEN GALAO', 'BEEd', '4', 'College', 'user457', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(458, 'PONTERAS, NIMFA GULOMAN', 'BEEd', '4', 'College', 'user458', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(459, 'REDILLA, AR-BRYAN MATURAN', 'BEEd', '4', 'College', 'user459', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(460, 'RUAYANA, JOSELLE CAFE', 'BEEd', '4', 'College', 'user460', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(461, 'SIMON, MECHEL SEBIO', 'BEEd', '4', 'College', 'user461', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(462, 'SOLTES, HAZEL MAE  CUABO', 'BEEd', '4', 'College', 'user462', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(463, 'TAGOCTOC, HANNY JANE CAAYON', 'BEEd', '4', 'College', 'user463', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(464, 'APARRE, APRIL AINELEE JUSTOL', 'BSBA-Fin', '1', 'College', 'user464', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(465, 'BELBAR, AVEGAIL MARCOS', 'BSBA-Fin', '1', 'College', 'user465', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(466, 'CANDOL, CARL JAMES', 'BSBA-Fin', '1', 'College', 'user466', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(467, 'CANILLAS, MELANIE MANTILLA', 'BSBA-Fin', '1', 'College', 'user467', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(468, 'CAPULO, JACKIE', 'BSBA-Fin', '1', 'College', 'user468', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(469, 'CARBALLO, RYGINE NARSICO', 'BSBA-Fin', '1', 'College', 'user469', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(470, 'CARIN, RHAUL DE LEON', 'BSBA-Fin', '1', 'College', 'user470', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(471, 'COLLAMAT, JERICK JAMES AGUM', 'BSBA-Fin', '1', 'College', 'user471', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(472, 'CUYNO, JESSA MAY DANGO', 'BSBA-Fin', '1', 'College', 'user472', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(473, 'DIAMADA, IRISH JOHN GONZALES', 'BSBA-Fin', '1', 'College', 'user473', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(474, 'DIZON, KYLA MASIAS', 'BSBA-Fin', '1', 'College', 'user474', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(475, 'ESTANCIA, CRISTY LAUSA', 'BSBA-Fin', '1', 'College', 'user475', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(476, 'FERRER, RUSSEL JOHN CARUNGAY', 'BSBA-Fin', '1', 'College', 'user476', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(477, 'FRONDA, JACHIE ALIAH LAPIAD', 'BSBA-Fin', '1', 'College', 'user477', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(478, 'JIMENEZ, PHILIP JHON MELITADO', 'BSBA-Fin', '1', 'College', 'user478', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(479, 'LABOS, MARC LAWRENCE NEÑERIA', 'BSBA-Fin', '1', 'College', 'user479', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(480, 'LAGUROS, GERLIE DANILA', 'BSBA-Fin', '1', 'College', 'user480', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(481, 'LAO, KRISTIAN JAKE LLIDO', 'BSBA-Fin', '1', 'College', 'user481', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(482, 'LOFRANCO, ANGEL LYNN DOLERA', 'BSBA-Fin', '1', 'College', 'user482', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(483, 'LOPEZ, GAY MARIE SAYMAN', 'BSBA-Fin', '1', 'College', 'user483', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(484, 'MANATAS, HAZEL KATE FULVADORA', 'BSBA-Fin', '1', 'College', 'user484', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(485, 'MAROLLANO, ALLAN', 'BSBA-Fin', '1', 'College', 'user485', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(486, 'PIASTRO, MERRY CRIS GOLORAN', 'BSBA-Fin', '1', 'College', 'user486', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(487, 'RAMIREZ, ANGELICA SUSTENTO', 'BSBA-Fin', '1', 'College', 'user487', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(488, 'RICALDE, MAE MONTEJO', 'BSBA-Fin', '1', 'College', 'user488', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(489, 'RODRIGUEZ, CARINE ESCOBIO', 'BSBA-Fin', '1', 'College', 'user489', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(490, 'SARADPON, JACKERSON BUDAY', 'BSBA-Fin', '1', 'College', 'user490', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(491, 'SINCO, CHARMIE JOY LADRA', 'BSBA-Fin', '1', 'College', 'user491', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(492, 'TAJORES, GWENDILYN DECENA', 'BSBA-Fin', '1', 'College', 'user492', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(493, 'VIVAS, ANGEL ROSE LARIOSA', 'BSBA-Fin', '1', 'College', 'user493', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(494, 'ZEPEDA, CHARLEEN PEÑONES', 'BSBA-Fin', '1', 'College', 'user494', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(495, 'BUCATORA, CHRESVYL VALENTOS', 'BSBA-Fin', '2', 'College', 'user495', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(496, 'CABALDA, JOHN PAUL FERNANDEZ', 'BSBA-Fin', '2', 'College', 'user496', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(497, 'CAPARO, CHERRY MONROID', 'BSBA-Fin', '2', 'College', 'user497', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(498, 'DAYTE, ANNIE LOVE CUDERA', 'BSBA-Fin', '2', 'College', 'user498', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(499, 'DIAZ, ELEONOR ALGABRE', 'BSBA-Fin', '2', 'College', 'user499', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(500, 'MALIGA, CHARLIE JR. LAD', 'BSBA-Fin', '2', 'College', 'user500', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(501, 'OÑOLA, MARIA FE GANDULFOS', 'BSBA-Fin', '2', 'College', 'user501', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(502, 'ALBES, AILENE JEAN RELACION', 'BSBA-Fin', '4', 'College', 'user502', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(503, 'ANUD, EDLYN NAMOC', 'BSBA-Fin', '4', 'College', 'user503', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(504, 'BATILO, JANNA REMEDIOS AGNE', 'BSBA-Fin', '4', 'College', 'user504', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(505, 'CATAYAS, DALLENE POLANCOS', 'BSBA-Fin', '4', 'College', 'user505', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(506, 'GALAPIN, MICHAEL MADARANG', 'BSBA-Fin', '4', 'College', 'user506', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(507, 'LOMOSAD, REGEL MADJOS', 'BSBA-Fin', '4', 'College', 'user507', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(508, 'LOZANO, JOANNA MARIE ALVARADO', 'BSBA-Fin', '4', 'College', 'user508', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(509, 'MACAHILO, JOY TOME', 'BSBA-Fin', '4', 'College', 'user509', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(510, 'MASADOG, MELCHORA MONTEFALCON', 'BSBA-Fin', '4', 'College', 'user510', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(511, 'ORIO, GRECELLE VAN TIJARE', 'BSBA-Fin', '4', 'College', 'user511', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(512, 'PADAYAO, KRISTHINE DETHOSA', 'BSBA-Fin', '4', 'College', 'user512', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(513, 'POLANCOS, MELANIE MABATO', 'BSBA-Fin', '4', 'College', 'user513', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(514, 'RAMO, RIZZA MAE CALIPAYAN', 'BSBA-Fin', '4', 'College', 'user514', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(515, 'RICALDE, EVA MAE', 'BSBA-Fin', '4', 'College', 'user515', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(516, 'SEGOVIA, LADY JOY PARAGOSO', 'BSBA-Fin', '4', 'College', 'user516', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(517, 'TIBON, MICHELLE JEAN', 'BSBA-Fin', '4', 'College', 'user517', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(518, 'TUBIO, JENNY VEE CABATINGAN', 'BSBA-Fin', '4', 'College', 'user518', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(519, 'VILLARMIA, CHALEZA MAE RANTE', 'BSBA-Fin', '4', 'College', 'user519', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(520, 'ADANG, LYDIA LINDAAY', 'BSBA-HR', '1', 'College', 'user520', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(521, 'ALITAO, HANNA LABITON', 'BSBA-HR', '1', 'College', 'user521', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(522, 'APLICADOR, ELVEHJEM GULA', 'BSBA-HR', '1', 'College', 'user522', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(523, 'CAÑETE, RICA MAE GONZALES', 'BSBA-HR', '1', 'College', 'user523', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(524, 'DULAY, JENAIDA MANTE', 'BSBA-HR', '1', 'College', 'user524', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(525, 'GALVEZ, JESSA SALMORIN', 'BSBA-HR', '1', 'College', 'user525', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(526, 'HIPOLAN, AIRA JANE MONTECALVO', 'BSBA-HR', '1', 'College', 'user526', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(527, 'JIMENEZ, JR, TEOFILO MARINDA', 'BSBA-HR', '1', 'College', 'user527', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(528, 'JOVETA, JOBERT PAUL ORTIZ', 'BSBA-HR', '1', 'College', 'user528', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(529, 'LACHICA, JOHN CARLO', 'BSBA-HR', '1', 'College', 'user529', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(530, 'MATAS, ROCEL TIMTIM', 'BSBA-HR', '1', 'College', 'user530', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(531, 'NAQUIN, APRILY ROSE VILLA', 'BSBA-HR', '1', 'College', 'user531', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(532, 'PAREÑAS, ALOIDY GEN CASCABEL', 'BSBA-HR', '1', 'College', 'user532', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(533, 'SABAYOG, RHEALYN JOY', 'BSBA-HR', '1', 'College', 'user533', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(534, 'TEQUIO, MICHELLE TUTOR', 'BSBA-HR', '1', 'College', 'user534', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(535, 'VEROY, NOVAMICHA HERMOSO', 'BSBA-HR', '1', 'College', 'user535', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(536, 'AMISOLA, AILYN JORE', 'BSBA-HR', '2', 'College', 'user536', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(537, 'ATILLO, RIZZA SHYNE BOSTON', 'BSBA-HR', '2', 'College', 'user537', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(538, 'BAQUIAL, VIVELYN ABELLA', 'BSBA-HR', '2', 'College', 'user538', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(539, 'BASMAYOR, JAMAICA CORREA', 'BSBA-HR', '2', 'College', 'user539', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(540, 'DAQUIZ, ELLAINE JEAN MATAS', 'BSBA-HR', '2', 'College', 'user540', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(541, 'ENCLUNA, IAN KHEN EGOT', 'BSBA-HR', '2', 'College', 'user541', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(542, 'ESTUDILLO, ALVIN SALAS', 'BSBA-HR', '2', 'College', 'user542', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(543, 'GRIPO, IAN JADE QUINTAYO', 'BSBA-HR', '2', 'College', 'user543', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(544, 'JAMA-ANI, RENIE JAY ALIDON', 'BSBA-HR', '2', 'College', 'user544', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(545, 'LORETO, REX BANAAG', 'BSBA-HR', '2', 'College', 'user545', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(546, 'MANOLONG, DARLYN JANE', 'BSBA-HR', '2', 'College', 'user546', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(547, 'OBASAN, MICA ELLA ZUELA', 'BSBA-HR', '2', 'College', 'user547', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(548, 'QUIYO, JUMEL ZELO', 'BSBA-HR', '2', 'College', 'user548', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(549, 'RENTURA, HARA CAÑETE', 'BSBA-HR', '2', 'College', 'user549', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(550, 'RIVERA, FAITH ANNE JOROLAN', 'BSBA-HR', '2', 'College', 'user550', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(551, 'SEBIO, JAYMART ALTERADO', 'BSBA-HR', '2', 'College', 'user551', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(552, 'TISARA, RIZZA DUCOS', 'BSBA-HR', '2', 'College', 'user552', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(553, 'ALCONTIN, JEMILLE ESTOQUE', 'BSBA-HR', '4', 'College', 'user553', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(554, 'BANDIGAN, RICA FAITH CASTRO', 'BSBA-HR', '4', 'College', 'user554', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(555, 'BIBAT, MARICRIS ALISON', 'BSBA-HR', '4', 'College', 'user555', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(556, 'DIGAN, JANDY SUMIAG', 'BSBA-HR', '4', 'College', 'user556', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(557, 'GANDARUZA, JANILA PANGARAWAN', 'BSBA-HR', '4', 'College', 'user557', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(558, 'GUDES, MELDRID LUMOR', 'BSBA-HR', '4', 'College', 'user558', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(559, 'LAGRIA, AMELIA LYN LUCERO', 'BSBA-HR', '4', 'College', 'user559', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(560, 'LASAN, ROWENA MAROLLANO', 'BSBA-HR', '4', 'College', 'user560', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(561, 'MAHINAY, LEMUEL ATIS', 'BSBA-HR', '4', 'College', 'user561', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(562, 'NACORDA, INA CAGAPE', 'BSBA-HR', '4', 'College', 'user562', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(563, 'POLPOL, ANA MARIE OCON', 'BSBA-HR', '4', 'College', 'user563', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(564, 'ABIERA, ANA ISABEL MANTAHINAY', 'BSBA-MaR', '1', 'College', 'user564', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(565, 'ALI, AMINA MACARAOB', 'BSBA-MaR', '1', 'College', 'user565', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(566, 'ATAR, JANNIFA DIBAROSAN', 'BSBA-MaR', '1', 'College', 'user566', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(567, 'BADOC, ELLEANE MAE', 'BSBA-MaR', '1', 'College', 'user567', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(568, 'BURTON, JENNIFER', 'BSBA-MaR', '1', 'College', 'user568', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(569, 'CANDIA, GARY JOE TABIGUE', 'BSBA-MaR', '1', 'College', 'user569', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(570, 'DAYTIC, FERNELL BACUS', 'BSBA-MaR', '1', 'College', 'user570', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(571, 'ENGROBA, NICA BATUCAN', 'BSBA-MaR', '1', 'College', 'user571', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(572, 'ESPARTERO, JOHN KIM JAY PELIGRO', 'BSBA-MaR', '1', 'College', 'user572', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(573, 'GO, NICKO PAULO SUGALA', 'BSBA-MaR', '1', 'College', 'user573', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(574, 'HILAPON, RHEA FLORES', 'BSBA-MaR', '1', 'College', 'user574', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(575, 'LIMOT, JOLINA GINTULON', 'BSBA-MaR', '1', 'College', 'user575', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(576, 'ORDANEZA, KAREN GRACE LEGADA', 'BSBA-MaR', '1', 'College', 'user576', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(577, 'PELINGON, RONNIL ALMERUA', 'BSBA-MaR', '1', 'College', 'user577', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(578, 'PRIETE, JEANY APOC', 'BSBA-MaR', '1', 'College', 'user578', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(579, 'RAMOS, CECILLE TABUDLONG', 'BSBA-MaR', '1', 'College', 'user579', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(580, 'SAGUIGUIT, JENEFER JAYME', 'BSBA-MaR', '1', 'College', 'user580', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(581, 'TANAYA, MARLOU YUSON', 'BSBA-MaR', '1', 'College', 'user581', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(582, 'AGUSTIN, CRISTINA ENGLE', 'BSBA-MaR', '2', 'College', 'user582', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(583, 'ALIMORONG, TRISHA MAE REYES', 'BSBA-MaR', '2', 'College', 'user583', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(584, 'BERNAS, NOEL DIAPO', 'BSBA-MaR', '2', 'College', 'user584', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(585, 'BOSTON, PRINCESS BULATUKAN', 'BSBA-MaR', '2', 'College', 'user585', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(586, 'BRONIO, ELLAH', 'BSBA-MaR', '2', 'College', 'user586', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(587, 'CAGABHION, CINDY TOROBA', 'BSBA-MaR', '2', 'College', 'user587', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(588, 'COMAGUIL, SIHAWIE HARON', 'BSBA-MaR', '2', 'College', 'user588', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(589, 'CORTEZ, EVAMAY WATE', 'BSBA-MaR', '2', 'College', 'user589', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(590, 'DONGA, CYNTHIA LANCIAN', 'BSBA-MaR', '2', 'College', 'user590', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(591, 'EDILLOR, JEA BASMAYOR', 'BSBA-MaR', '2', 'College', 'user591', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(592, 'ESPERANCILLA, EARL JOHN MAYORMITA', 'BSBA-MaR', '2', 'College', 'user592', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(593, 'ESTUITA, ANTHONY YMEA', 'BSBA-MaR', '2', 'College', 'user593', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(594, 'GUINITA, JAYA MAE LOPEZ', 'BSBA-MaR', '2', 'College', 'user594', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(595, 'LADISMA, JENAMAE SARIGUMBA', 'BSBA-MaR', '2', 'College', 'user595', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(596, 'LARGO, CARL ANTHONY LIMEN', 'BSBA-MaR', '2', 'College', 'user596', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(597, 'MIÑOZA, MARA VICTORIA MANDABON', 'BSBA-MaR', '2', 'College', 'user597', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(598, 'NASTOR, ANNABELLE ALBOFERA', 'BSBA-MaR', '2', 'College', 'user598', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(599, 'ORDANEZA, CLAUDI ANN NAVARRO', 'BSBA-MaR', '2', 'College', 'user599', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(600, 'SOCORRO, JOHN VINCENT LAURENTE', 'BSBA-MaR', '2', 'College', 'user600', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(601, 'TALAWGON, MARK JIMLE', 'BSBA-MaR', '2', 'College', 'user601', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(602, 'TANO, RONALYN CASIPE', 'BSBA-MaR', '2', 'College', 'user602', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(603, 'VILLAMIL, JULIE MAE BATILO', 'BSBA-MaR', '2', 'College', 'user603', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(604, 'ALCANTARA, JOEL BAUTISTA', 'BSBA-MaR', '4', 'College', 'user604', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(605, 'ALCANTARA, RICA CATABAY', 'BSBA-MaR', '4', 'College', 'user605', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(606, 'ALEJO, CHERRY ANN RUELAN', 'BSBA-MaR', '4', 'College', 'user606', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(607, 'ALURO, ROSEMARIE ARAYAN', 'BSBA-MaR', '4', 'College', 'user607', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(608, 'ANJAO, ANGELICA PANDASIGUE', 'BSBA-MaR', '4', 'College', 'user608', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(609, 'ASCAÑO, ERIC', 'BSBA-MaR', '4', 'College', 'user609', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(610, 'AYTONA, DENVERLY CARESOSA', 'BSBA-MaR', '4', 'College', 'user610', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(611, 'BATOON, CAMILLE DAGSO', 'BSBA-MaR', '4', 'College', 'user611', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(612, 'BELTRAN, APPLE GRACE FABROA', 'BSBA-MaR', '4', 'College', 'user612', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(613, 'BOLODO, JAYRA MAY DUMALAGAN', 'BSBA-MaR', '4', 'College', 'user613', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(614, 'BUGHAO, METCHIE JOY BENEGIAN', 'BSBA-MaR', '4', 'College', 'user614', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(615, 'CABA, NOVA BARADAN', 'BSBA-MaR', '4', 'College', 'user615', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(616, 'CALIPES, PARADISE', 'BSBA-MaR', '4', 'College', 'user616', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(617, 'CALOGCOGAN, SARAH JEAN APOYA', 'BSBA-MaR', '4', 'College', 'user617', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(618, 'CAMPOS, ABIGAIL LIGUTOM', 'BSBA-MaR', '4', 'College', 'user618', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(619, 'CAMPOS, ANGELIE LIGUTOM', 'BSBA-MaR', '4', 'College', 'user619', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(620, 'CAÑA, SALLY JEAN HIPONIA', 'BSBA-MaR', '4', 'College', 'user620', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(621, 'CAÑEDO, MICHELLE VEAH NAVIDAD', 'BSBA-MaR', '4', 'College', 'user621', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(622, 'CANONIGO, CATHLYN JOY JATICO', 'BSBA-MaR', '4', 'College', 'user622', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(623, 'CANOY, MELVIN JAY MONTER', 'BSBA-MaR', '4', 'College', 'user623', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(624, 'CASTRO, BELINDA JANE', 'BSBA-MaR', '4', 'College', 'user624', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(625, 'CATA, BLESSED JANE DEFACTO', 'BSBA-MaR', '4', 'College', 'user625', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(626, 'CREPO, VICMAR DANIOSOS', 'BSBA-MaR', '4', 'College', 'user626', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(627, 'DALUMA, FOLNELSON INFIESTO', 'BSBA-MaR', '4', 'College', 'user627', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(628, 'DE LA CRUZ, DONA ISUGAN', 'BSBA-MaR', '4', 'College', 'user628', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(629, 'FERNANDEZ, CHRISTINE  DANILAG', 'BSBA-MaR', '4', 'College', 'user629', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(630, 'GEMINA, KIMBERLY FLORES', 'BSBA-MaR', '4', 'College', 'user630', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(631, 'LABARENTO, GENEVIEVE CERVANTES', 'BSBA-MaR', '4', 'College', 'user631', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(632, 'LACARAN, CHRISTELLE MAE SUAZO', 'BSBA-MaR', '4', 'College', 'user632', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(633, 'LAUSA, MELIZA ANN  DELOS REYES', 'BSBA-MaR', '4', 'College', 'user633', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(634, 'LOPEZ, SHASEEN BACALLA', 'BSBA-MaR', '4', 'College', 'user634', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(635, 'MAG-ASO, JEAN  ROXAS', 'BSBA-MaR', '4', 'College', 'user635', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(636, 'MANUAL, KRISTINE JEAN MERCADO', 'BSBA-MaR', '4', 'College', 'user636', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(637, 'MARCHADESCH, JEANELYN REPOLLO', 'BSBA-MaR', '4', 'College', 'user637', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(638, 'MATUNHAY, JESSA ANIB', 'BSBA-MaR', '4', 'College', 'user638', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(639, 'MEGUILLES, SAVANNA JAHRI ARANJUEZ', 'BSBA-MaR', '4', 'College', 'user639', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(640, 'MOLINA, JOHN KENNETH LAGROSA', 'BSBA-MaR', '4', 'College', 'user640', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(641, 'NEGAPATAN, EDENBERG CALIPAYAN', 'BSBA-MaR', '4', 'College', 'user641', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(642, 'PALER, ANGELICA CISNEROS', 'BSBA-MaR', '4', 'College', 'user642', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(643, 'PALMA, TRINIDAD HANGGAÑA', 'BSBA-MaR', '4', 'College', 'user643', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(644, 'PANIS, NELSA MIJIAS', 'BSBA-MaR', '4', 'College', 'user644', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(645, 'PUSO, RANDY GASTA', 'BSBA-MaR', '4', 'College', 'user645', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(646, 'RAGAS, PRINCE ANGELO ESGANA', 'BSBA-MaR', '4', 'College', 'user646', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(647, 'RAMOS, ZARAH JANE CANOY', 'BSBA-MaR', '4', 'College', 'user647', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(648, 'ROTURAS, JOBERT JOHN CANTONAO', 'BSBA-MaR', '4', 'College', 'user648', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(649, 'SALUDAR, MAESAM LUBIANO', 'BSBA-MaR', '4', 'College', 'user649', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(650, 'SORONGON, STEVEN PAUL PACHES', 'BSBA-MaR', '4', 'College', 'user650', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(651, 'SUMOD-ONG, CHERLITA MANTE', 'BSBA-MaR', '4', 'College', 'user651', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(652, 'TEQUILLO, LEOPOLDO, JR. BARUIZ', 'BSBA-MaR', '4', 'College', 'user652', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(653, 'TORREGOSA, CHRESYL LUNGAT', 'BSBA-MaR', '4', 'College', 'user653', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(654, 'VALLES, DINALYN GUTIB', 'BSBA-MaR', '4', 'College', 'user654', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(655, 'ALCORIN, HONEY JANE ABALLE', 'BSED-Bio', '4', 'College', 'user655', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(656, 'ALCOSERO, AILYN  ANTIGA', 'BSED-Bio', '4', 'College', 'user656', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(657, 'ARNIGO, JEOVANI ROGERO', 'BSED-Bio', '4', 'College', 'user657', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(658, 'BUCA, JERALD', 'BSED-Bio', '4', 'College', 'user658', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(659, 'COLLADO, REGIE GARBO', 'BSED-Bio', '4', 'College', 'user659', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(660, 'DRILON, JAN KARL GRANDES', 'BSED-Bio', '4', 'College', 'user660', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(661, 'ESCABARTE, CYRIAN GRIO ABKILAN', 'BSED-Bio', '4', 'College', 'user661', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(662, 'ROM, RUEL MING', 'BSED-Bio', '4', 'College', 'user662', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(663, 'AMILOL, NORAISA ADTING', 'BSED-Eng', '1', 'College', 'user663', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(664, 'BAKER, TANIA SAMANTHA', 'BSED-Eng', '1', 'College', 'user664', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(665, 'BARBASAN, JOANA MARIE', 'BSED-Eng', '1', 'College', 'user665', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(666, 'BAUTISTA, ANGELO JOSE ABAYON', 'BSED-Eng', '1', 'College', 'user666', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(667, 'BENIERA, PHEBE QUITOR', 'BSED-Eng', '1', 'College', 'user667', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(668, 'BOCO, MATET ALOCRIZA', 'BSED-Eng', '1', 'College', 'user668', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(669, 'CANTALUNA, ROCXAN ALIDON', 'BSED-Eng', '1', 'College', 'user669', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(670, 'DAGOCDOCAN, RHEALIE ESMERALDA', 'BSED-Eng', '1', 'College', 'user670', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(671, 'DUSARAN, JAY AVILA', 'BSED-Eng', '1', 'College', 'user671', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(672, 'ELTAGONDE, JERELYN', 'BSED-Eng', '1', 'College', 'user672', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(673, 'EMBAC, ALEXIL LUCAÑAS', 'BSED-Eng', '1', 'College', 'user673', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(674, 'GARGAR, MARY ROSE CASUNO', 'BSED-Eng', '1', 'College', 'user674', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(675, 'GAURAN, MARIVIC JALIPA', 'BSED-Eng', '1', 'College', 'user675', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(676, 'GUARDE, SHAIRA LOU CATAGASAN', 'BSED-Eng', '1', 'College', 'user676', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(677, 'LEJERO, RUBYLENE RAMOS', 'BSED-Eng', '1', 'College', 'user677', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(678, 'LINDO, ROSABELLE PUNO', 'BSED-Eng', '1', 'College', 'user678', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(679, 'MADRONERO, FLORA MAE ACASO', 'BSED-Eng', '1', 'College', 'user679', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(680, 'MAGALSO, ANNABELLE ROFEROS', 'BSED-Eng', '1', 'College', 'user680', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(681, 'MAMONTA, EDLYN MARIANO', 'BSED-Eng', '1', 'College', 'user681', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(682, 'OJAS, JEANICA SICAD', 'BSED-Eng', '1', 'College', 'user682', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(683, 'PENACO, KAREEN JOY MAMADA', 'BSED-Eng', '1', 'College', 'user683', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(684, 'SEPELAGIO, JUNALINE GAVIOLA', 'BSED-Eng', '1', 'College', 'user684', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(685, 'ZULUETA, ROSEMARIE CAHATE', 'BSED-Eng', '1', 'College', 'user685', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(686, 'ALIBIANO, MA. ELAIZA ANAJAO', 'BSED-Eng', '2', 'College', 'user686', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(687, 'BADUDAO, JESSICA LANCIAN', 'BSED-Eng', '2', 'College', 'user687', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(688, 'BERDOS, RHEZA MARY SEGABRE', 'BSED-Eng', '2', 'College', 'user688', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(689, 'DE ASIS, ABEGAEL SANTOS', 'BSED-Eng', '2', 'College', 'user689', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(690, 'JAMIN, MARK DAVE CODERA', 'BSED-Eng', '2', 'College', 'user690', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(691, 'JUMALON, RUBEN MAHIPUS', 'BSED-Eng', '2', 'College', 'user691', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(692, 'LADRA, CESAR ANTHONY SABIO', 'BSED-Eng', '2', 'College', 'user692', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(693, 'MANTOG, CHERRY ANN SILAT', 'BSED-Eng', '2', 'College', 'user693', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(694, 'OJALDON, KIRSTY DHEL GONZALES', 'BSED-Eng', '2', 'College', 'user694', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(695, 'RECOPELACION, JAYCA MAE ESTRADA', 'BSED-Eng', '2', 'College', 'user695', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(696, 'REDONDO, CHRISTINE JOY MACALOS', 'BSED-Eng', '2', 'College', 'user696', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(697, 'SAJULAN, JESCEL MENNETH JARDIO', 'BSED-Eng', '2', 'College', 'user697', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(698, 'BOLANDO, ETHEL KIM MANSO', 'BSED-Eng', '4', 'College', 'user698', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(699, 'GICO, MARK VINCENT SIMBAJON', 'BSED-Eng', '4', 'College', 'user699', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(700, 'MEDIDAS, ALLAMAE JOANNE LIBAS', 'BSED-Eng', '4', 'College', 'user700', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(701, 'PANGCOGA, ANIDA OCOR', 'BSED-Eng', '4', 'College', 'user701', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(702, 'PLAZA, DAVID DAVE PINANONGAN', 'BSED-Eng', '4', 'College', 'user702', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(703, 'TABAT, GINALYN MOLON', 'BSED-Eng', '4', 'College', 'user703', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(704, 'BILBAO, JOCY SAUT', 'BSED-Math', '1', 'College', 'user704', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(705, 'CASTILLANO, MERRY ANN DIGNOS', 'BSED-Math', '1', 'College', 'user705', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(706, 'CHARCOS, ELENA CALMA', 'BSED-Math', '1', 'College', 'user706', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(707, 'CHAVEZ, MAE ANN CATIPUNAN', 'BSED-Math', '1', 'College', 'user707', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(708, 'LIZONDRA, VANESSA CAÑETE', 'BSED-Math', '1', 'College', 'user708', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(709, 'PATINDOL, EMMALYN GONZAGA', 'BSED-Math', '1', 'College', 'user709', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(710, 'CUMAYAS, JAMEL SAYSON', 'BSED-Math', '2', 'College', 'user710', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(711, 'MOLINA, MARY ROSE NERIO', 'BSED-Math', '2', 'College', 'user711', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(712, 'PLANCO, ANAROSE BANDOLA', 'BSED-Math', '2', 'College', 'user712', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(713, 'TANGCOGO, MITCH MARY SIMBRENO', 'BSED-Math', '2', 'College', 'user713', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(714, 'ABO, ANNALOU NICMIC', 'BSED-Math', '4', 'College', 'user714', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(715, 'ALBAY, VINCENT ANDREW GULAYAN', 'BSED-Math', '4', 'College', 'user715', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(716, 'BABAO, HELENME FUENTES', 'BSED-Math', '4', 'College', 'user716', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(717, 'BALIQUIG, ERIC FLOYD BAGUIO', 'BSED-Math', '4', 'College', 'user717', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(718, 'CABATUAN, CARLO JOHN MOLINA', 'BSED-Math', '4', 'College', 'user718', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(719, 'CASTILLANO, EDDIE BOY PADASAS', 'BSED-Math', '4', 'College', 'user719', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(720, 'CEMPRON, JOVITO III LIMBOY', 'BSED-Math', '4', 'College', 'user720', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(721, 'CRETA, ANGELOU SAROL', 'BSED-Math', '4', 'College', 'user721', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(722, 'NAVAROSA, WAWIE VILLARBA', 'BSED-Math', '4', 'College', 'user722', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(723, 'TAN, IMEE PINGGOY', 'BSED-Math', '4', 'College', 'user723', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(724, 'TAWIDE, JUDY-ANN MARTINEZ', 'BSED-Math', '4', 'College', 'user724', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(725, 'URQUIOLA, KIMBERLY CALUNOD', 'BSED-Math', '4', 'College', 'user725', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(726, 'ABAD, ELVIE EMBODO', 'BSED-Sci', '1', 'College', 'user726', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(727, 'AMORA, LEDEN SUAZO', 'BSED-Sci', '1', 'College', 'user727', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(728, 'BERMOY, ELLEN JOY OROT', 'BSED-Sci', '1', 'College', 'user728', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(729, 'GAYTA, KENETH MIGUEL CUPANG', 'BSED-Sci', '1', 'College', 'user729', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(730, 'NUÑEZ, RINA ERICA BISCAYNO', 'BSED-Sci', '1', 'College', 'user730', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(731, 'QUIJADA, PIA MAY DAGASDAS', 'BSED-Sci', '1', 'College', 'user731', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(732, 'REQUINA, MICHELLE ALLAWAN', 'BSED-Sci', '1', 'College', 'user732', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(733, 'SALINAS, VIVIAN SENADERO', 'BSED-Sci', '1', 'College', 'user733', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(734, 'ZULUETA, JOHN DEMVER DAGUIL', 'BSED-Sci', '1', 'College', 'user734', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(735, 'CAMBALON, ANGELA BOLIVAR', 'BSED-Sci', '2', 'College', 'user735', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(736, 'DELIS, MARJANEL SITON', 'BSED-Sci', '2', 'College', 'user736', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(737, 'JALEA, JELLOSAN PABLICO', 'BSED-Sci', '2', 'College', 'user737', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(738, 'LABADAN, GENNY MANOCASI', 'BSED-Sci', '2', 'College', 'user738', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(739, 'MALICSE, MICO SIMBORIO', 'BSED-Sci', '2', 'College', 'user739', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(740, 'PASTORITE, LAIME CAPULE', 'BSED-Sci', '2', 'College', 'user740', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(741, 'POSADAS, JESSA SENADERO', 'BSED-Sci', '2', 'College', 'user741', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(742, 'VILLANEL, ELVIE BUSCANO', 'BSED-Sci', '2', 'College', 'user742', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(743, 'YBASAN, ANTHONY CALIPAYAN', 'BSED-Sci', '2', 'College', 'user743', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(744, 'BENTING, DIANNE TUNGCALAN', 'BSED-ValEd', '1', 'College', 'user744', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(745, 'BUNAC, SALOMIE PULONG', 'BSED-ValEd', '1', 'College', 'user745', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(746, 'CABALLERO, DARYL PANERIO', 'BSED-ValEd', '1', 'College', 'user746', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(747, 'DE LEON, MOREAL VENUS', 'BSED-ValEd', '1', 'College', 'user747', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(748, 'ENGI, MARVIN BALIGHOT', 'BSED-ValEd', '1', 'College', 'user748', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(749, 'GONDEMARO, JACK EMMANUEL CARIN', 'BSED-ValEd', '1', 'College', 'user749', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(750, 'MAGPUSAO, ROSITO, JR. SAMSON', 'BSED-ValEd', '1', 'College', 'user750', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(751, 'NAIZ, JOVELYN VILLACAMPA', 'BSED-ValEd', '1', 'College', 'user751', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(752, 'ONGGACO, GADELYN COSE', 'BSED-ValEd', '1', 'College', 'user752', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(753, 'RELATOR, JAHARA SOLTES', 'BSED-ValEd', '1', 'College', 'user753', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(754, 'SANAO, QUEENIE MAE CAPOTE', 'BSED-ValEd', '1', 'College', 'user754', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(755, 'ARELLANO, NHOBY AMPO-AN', 'BSED-ValEd', '2', 'College', 'user755', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(756, 'BASILIO, PETER JOHN COQUILLA', 'BSED-ValEd', '2', 'College', 'user756', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(757, 'PONTO, JACK JAMES SEÑORAN', 'BSED-ValEd', '2', 'College', 'user757', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(758, 'TOSOC, JAYSON NAMALATA', 'BSED-ValEd', '2', 'College', 'user758', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(759, 'CABILA, JASON', 'BSED-ValEd', '4', 'College', 'user759', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(760, 'DEMAFELIZ, JENNIFER TAGUE', 'BSED-ValEd', '4', 'College', 'user760', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(761, 'HINALDO, GEAN LEE ADLAWON', 'BSED-ValEd', '4', 'College', 'user761', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(762, 'PRESORES, JUNNIL CALESA', 'BSED-ValEd', '4', 'College', 'user762', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G');
INSERT INTO `voters` (`id`, `name`, `course`, `year`, `Level`, `stud_id`, `class`, `stud_pass`) VALUES
(763, 'ROXAS, MARK LOYD GETUTUA', 'BSED-ValEd', '4', 'College', 'user763', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(764, 'ABECIA, EDSIL ECLEONEL', 'BSHM', '1', 'College', 'user764', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(765, 'ALVAREZ, RASSEL JANE', 'BSHM', '1', 'College', 'user765', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(766, 'ANHAO, MERY JOY CAGUINANGAN', 'BSHM', '1', 'College', 'user766', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(767, 'ANTIVO, JHEA ABAS', 'BSHM', '1', 'College', 'user767', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(768, 'ARANTON, KIMBERLY BEDOLIDO', 'BSHM', '1', 'College', 'user768', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(769, 'BAGUIO, PHILIP ANDREI ARCITE', 'BSHM', '1', 'College', 'user769', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(770, 'BOLUSO, ALDIN DELOS SANTOS', 'BSHM', '1', 'College', 'user770', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(771, 'CABILLAN, IVY KAYE LUMA-AD', 'BSHM', '1', 'College', 'user771', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(772, 'CALIBARA, JONA MAE TALUNDATA', 'BSHM', '1', 'College', 'user772', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(773, 'CALUMBRES, MARVIN CAHILIG', 'BSHM', '1', 'College', 'user773', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(774, 'CASIANO, MARIEL RONCESVALLES', 'BSHM', '1', 'College', 'user774', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(775, 'CATEQUISTA, JEZAIMEN LEGARTO', 'BSHM', '1', 'College', 'user775', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(776, 'CEZAR, JACQUELOU TAHIL', 'BSHM', '1', 'College', 'user776', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(777, 'CURADA, PRINCESS ANNE', 'BSHM', '1', 'College', 'user777', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(778, 'DAYONDON, KRISTINE BOLORON', 'BSHM', '1', 'College', 'user778', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(779, 'DE CASTRO, MICHELLE ANGELA RAGASA', 'BSHM', '1', 'College', 'user779', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(780, 'FERNANDEZ, EDDISON MACALINAO', 'BSHM', '1', 'College', 'user780', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(781, 'FLORES, APRIL LYN ISMAEL', 'BSHM', '1', 'College', 'user781', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(782, 'GANADEN, NATHALLY MAE ESCUADRA', 'BSHM', '1', 'College', 'user782', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(783, 'JIMENEZ, ALJEAN', 'BSHM', '1', 'College', 'user783', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(784, 'JUAN, MICHAEL', 'BSHM', '1', 'College', 'user784', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(785, 'LAMAY, MAY', 'BSHM', '1', 'College', 'user785', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(786, 'LANQUIBO, WAWEH QUILLO', 'BSHM', '1', 'College', 'user786', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(787, 'LUARDO, KIRSTEN VALINDEZ', 'BSHM', '1', 'College', 'user787', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(788, 'MALICSE, CHARLENE OPPUS', 'BSHM', '1', 'College', 'user788', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(789, 'MALIWANON, MAESHELL MOLO', 'BSHM', '1', 'College', 'user789', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(790, 'MARTICION, GARRY BENIAL', 'BSHM', '1', 'College', 'user790', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(791, 'MONTERDE, MARVIN ROY ENTES', 'BSHM', '1', 'College', 'user791', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(792, 'NOQUILLO, JR., MANUEL CENIZA', 'BSHM', '1', 'College', 'user792', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(793, 'PELIAS, JR., PURISIMO TOMPONG', 'BSHM', '1', 'College', 'user793', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(794, 'SIAREZ, RINALYN DIONALDO', 'BSHM', '1', 'College', 'user794', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(795, 'TUBLE, GILFRITZ BAGO', 'BSHM', '1', 'College', 'user795', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(796, 'VANZUELA, EDSEL JOHN PALAVON', 'BSHM', '1', 'College', 'user796', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(797, 'YGAY, AYABETH DAWANG', 'BSHM', '1', 'College', 'user797', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(798, 'BUENAFLOR, MARGIE CATALAN', 'BSHM', '2', 'College', 'user798', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(799, 'CARIAGA, RODALYN OFIAZA', 'BSHM', '2', 'College', 'user799', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(800, 'CERBO, CHARLIE CARTAGENA', 'BSHM', '2', 'College', 'user800', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(801, 'EBDALIN, ROMMIL HANOYAN', 'BSHM', '2', 'College', 'user801', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(802, 'ENCARNACION, ANDREANA MISAJON', 'BSHM', '2', 'College', 'user802', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(803, 'MALICAY, JOHN LESTER PALGAN', 'BSHM', '2', 'College', 'user803', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(804, 'MANTILLA, ERVIN GAROTE', 'BSHM', '2', 'College', 'user804', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(805, 'MIÑOZA, GERALDINE MELENCION', 'BSHM', '2', 'College', 'user805', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(806, 'PELINGON, ED LOI KIM MARAYAN', 'BSHM', '2', 'College', 'user806', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(807, 'REOYAN, XENA CANDADO', 'BSHM', '2', 'College', 'user807', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(808, 'BAYRON, LYNDLE ARCELO', 'BSHRM', '4', 'College', 'user808', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(809, 'BERMIL, GRACE LYN CODILLO', 'BSHRM', '4', 'College', 'user809', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(810, 'MALOLOY-ON, HANALY DIGAP', 'BSHRM', '4', 'College', 'user810', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(811, 'NELLAS, KENNY ORGANIZA', 'BSHRM', '4', 'College', 'user811', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(812, 'ODANG, ALMI ANN RUIZ', 'BSHRM', '4', 'College', 'user812', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(813, 'PAGUIRIGAN, CLEO BERNADETTE GALAO', 'BSHRM', '4', 'College', 'user813', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(814, 'PAM-OT, ELLEN MAE SUMATRA', 'BSHRM', '4', 'College', 'user814', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(815, 'POCSON, RUFFA MAE', 'BSHRM', '4', 'College', 'user815', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(816, 'SEVILLANO, WOVIE CAGAPE', 'BSHRM', '4', 'College', 'user816', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(817, 'TABARANZA, FELYN GARDAN', 'BSHRM', '4', 'College', 'user817', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(818, 'BERNADAS, DANIEL COSCOS', 'BSIT', '1', 'College', 'user818', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(819, 'CABALLERO, CEZAR IAN SALDUA', 'BSIT', '1', 'College', 'user819', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(820, 'CABANES, JOHN MARK SOTTO', 'BSIT', '1', 'College', 'user820', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(821, 'CALBE, MYRA ANGGO', 'BSIT', '1', 'College', 'user821', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(822, 'CASTILLO, CHUCK ANDREW PASCUAL', 'BSIT', '1', 'College', 'user822', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(823, 'EBAY, ERIC JHON BACO', 'BSIT', '1', 'College', 'user823', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(824, 'ESTORGIO, MERRYLINE ESCANDALLO', 'BSIT', '1', 'College', 'user824', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(825, 'GABRIEL, ARBIE CORREA', 'BSIT', '1', 'College', 'user825', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(826, 'GARGAR, TRISTINE APRIL PAYAC', 'BSIT', '1', 'College', 'user826', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(827, 'GUERRERO, CHRISTIAN JAMES', 'BSIT', '1', 'College', 'user827', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(828, 'IROY, FEDIS ANGELIE AUDAN', 'BSIT', '1', 'College', 'user828', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(829, 'JAVIER, REDEN SABINO', 'BSIT', '1', 'College', 'user829', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(830, 'LABANG, JOSHUA LEE REMORERAS', 'BSIT', '1', 'College', 'user830', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(831, 'LIMBRE, TRESHA MAY SUMALINOG', 'BSIT', '1', 'College', 'user831', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(832, 'MANALO, KEAN AMISTAD', 'BSIT', '1', 'College', 'user832', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(833, 'MORALES, MARK GENERALAO', 'BSIT', '1', 'College', 'user833', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(834, 'PULIDO, JESS RIEL ABREGOSO', 'BSIT', '1', 'College', 'user834', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(835, 'QUITERIORE, RUBEN DAVIS', 'BSIT', '1', 'College', 'user835', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(836, 'REYES, SHYDEL VEGA', 'BSIT', '1', 'College', 'user836', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(837, 'SOMBILON, NICO', 'BSIT', '1', 'College', 'user837', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(838, 'SUMABONG, ALMIE VILAN', 'BSIT', '1', 'College', 'user838', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(839, 'TUBIANO, CAROL CRISTY MEDIANTE', 'BSIT', '1', 'College', 'user839', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(840, 'VILLA, KRISTIAN SAPERO', 'BSIT', '1', 'College', 'user840', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(841, 'ALBARACIN, MARIEL MANLANGIT', 'BSIT', '2', 'College', 'user841', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(842, 'ANG, JUZZLEE APRIL MAHINAY', 'BSIT', '2', 'College', 'user842', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(843, 'ATON, MERRY ROSE REDONDO', 'BSIT', '2', 'College', 'user843', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(844, 'BALISACAN, JON DOMINIC RECAMADAS', 'BSIT', '2', 'College', 'user844', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(845, 'CATA, GENELYN GUILLEN', 'BSIT', '2', 'College', 'user845', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(846, 'DOMAEL, KRISHNA KYLE SORIA', 'BSIT', '2', 'College', 'user846', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(847, 'EROY, FLORIZA MAE CARMINA', 'BSIT', '2', 'College', 'user847', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(848, 'HANGINON, ROLAND VAL WATE', 'BSIT', '2', 'College', 'user848', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(849, 'HARRID, MICHAEL JR. BRANZUELA', 'BSIT', '2', 'College', 'user849', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(850, 'JATI, JEAN LAPUZ', 'BSIT', '2', 'College', 'user850', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(851, 'LANQUINO, PHOEBE CLAIRE TAYONG', 'BSIT', '2', 'College', 'user851', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(852, 'LARANANG, CHRISTIAN KENT CANDOL', 'BSIT', '2', 'College', 'user852', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(853, 'LLANTO, MARIJOY CODILLO', 'BSIT', '2', 'College', 'user853', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(854, 'LOZANO, JHEVAMAE MOTOS', 'BSIT', '2', 'College', 'user854', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(855, 'MARCILLA, KIT ERVIN LUZON', 'BSIT', '2', 'College', 'user855', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(856, 'MONDALA, EUJEM ESTREBA', 'BSIT', '2', 'College', 'user856', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(857, 'ORIEL, SHEILA MAE FAMOSO', 'BSIT', '2', 'College', 'user857', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(858, 'ROMA, ANNILYN MENDEZ', 'BSIT', '2', 'College', 'user858', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(859, 'SEFUENTES, JENNY MAE AYING', 'BSIT', '2', 'College', 'user859', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(860, 'SILANGON, NESOR SUMOSINO', 'BSIT', '2', 'College', 'user860', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(861, 'SOLON, LENIROSE MARTIZANO', 'BSIT', '2', 'College', 'user861', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(862, 'TANAYA, MARVENTHOR YUSON', 'BSIT', '2', 'College', 'user862', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(863, 'TUMABANG, JUSTINE SALVADOR', 'BSIT', '2', 'College', 'user863', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(864, 'VARRON, ALAN MARC MABILANGAN', 'BSIT', '2', 'College', 'user864', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(865, 'BACARO, ALFRED  PALOMO', 'BSIT', '4', 'College', 'user865', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(866, 'DELIMA, ALDRIEN BERNADOS', 'BSIT', '4', 'College', 'user866', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(867, 'GAUDICOS, MARIVEL TUQUIB', 'BSIT', '4', 'College', 'user867', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(868, 'POLINIO, AILEEN S.', 'BSIT', '4', 'College', 'user868', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(869, 'PUROL, DIONEIL SUFICIENCIA', 'BSIT', '4', 'College', 'user869', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(870, 'SUMOHID, MICHAEL JAY BALOCOS', 'BSIT', '4', 'College', 'user870', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(871, 'TOMADA, JEANNEVIN PARDILLO', 'BSIT', '4', 'College', 'user871', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(872, 'TORRALBA, MARTIN ALFONSO FAUSTINO', 'BSIT', '4', 'College', 'user872', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(873, 'TUTOR, ANTONETTE ARCE', 'BSIT', '4', 'College', 'user873', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(874, 'ARGIBIADOR, EMYRIE LICAROS', 'BSSW', '1', 'College', 'user874', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(875, 'BUGA, RICHBERN RESOLA', 'BSSW', '1', 'College', 'user875', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(876, 'CABERTE, JUDY LYN SUAREZ', 'BSSW', '1', 'College', 'user876', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(877, 'CANTANERO, MARIO JR. ORBITA', 'BSSW', '1', 'College', 'user877', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(878, 'DIANGALON, LADYMAE BUTTE', 'BSSW', '1', 'College', 'user878', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(879, 'FAMENTERA, ROLAND III BONGALOS', 'BSSW', '1', 'College', 'user879', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(880, 'FORMAREJO, LOVELY ABELIS', 'BSSW', '1', 'College', 'user880', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(881, 'FUENTES, REYNALIZA ABAS', 'BSSW', '1', 'College', 'user881', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(882, 'MABASLAY, RESAN QUILAT', 'BSSW', '1', 'College', 'user882', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(883, 'MADENANCIL, JAY ANN CALIG-ONAN', 'BSSW', '1', 'College', 'user883', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(884, 'MERABLE, KATE ANGEL', 'BSSW', '1', 'College', 'user884', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(885, 'MIANO, CHARMAINE NEMENZO', 'BSSW', '1', 'College', 'user885', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(886, 'MONTECALVO, QUENE THEA QUIACHON', 'BSSW', '1', 'College', 'user886', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(887, 'MONTUNO, JOSE PAOLO SERRA', 'BSSW', '1', 'College', 'user887', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(888, 'MORENO, JASMIN JOYCE DICO', 'BSSW', '1', 'College', 'user888', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(889, 'PAGALING, EMELITA SENARILLOS', 'BSSW', '1', 'College', 'user889', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(890, 'PEREZ, MARICRIS GALOPE', 'BSSW', '1', 'College', 'user890', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(891, 'RASONABE, JERAFE CAVITE', 'BSSW', '1', 'College', 'user891', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(892, 'ROSALES, SUNSHINE MANIQUE', 'BSSW', '1', 'College', 'user892', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(893, 'SILAGAN, DONNA DELA CRUZ', 'BSSW', '1', 'College', 'user893', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(894, 'VALLENTE, THERESA BENDONG', 'BSSW', '1', 'College', 'user894', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(895, 'VILLA, IRICA MAE LANABAN', 'BSSW', '1', 'College', 'user895', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(896, 'ABRIGAR, JOSIEBEL GRACE DAGOHOY', 'BSSW', '2', 'College', 'user896', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(897, 'ALMERIA, JAYSON BACTONG', 'BSSW', '2', 'College', 'user897', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(898, 'AUSTRIA, KRITHA DIAZ', 'BSSW', '2', 'College', 'user898', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(899, 'ESNARDO, BRENT', 'BSSW', '2', 'College', 'user899', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(900, 'FABROS, ROMIE LOZADA', 'BSSW', '2', 'College', 'user900', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(901, 'GRANDEZA, EFRAIM DINOPOL', 'BSSW', '2', 'College', 'user901', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(902, 'LARAÑO, CHEENEE YANONG', 'BSSW', '2', 'College', 'user902', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(903, 'LLORENTE, HAIDE TEJADA', 'BSSW', '2', 'College', 'user903', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(904, 'MANALO, JOAN AMISTAD', 'BSSW', '2', 'College', 'user904', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(905, 'MEGUISO, JEFFERSON ESCUADRO', 'BSSW', '2', 'College', 'user905', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(906, 'MONTOIS, JARLIEN BAUGBOG', 'BSSW', '2', 'College', 'user906', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(907, 'ROMERO, EULEXIS JR. CAPARAS', 'BSSW', '2', 'College', 'user907', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(908, 'ROQUERO, HERMINO JR. DALMINO', 'BSSW', '2', 'College', 'user908', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(909, 'VILLAMOR, ALDRINE', 'BSSW', '2', 'College', 'user909', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(910, 'ALGOFERA, MICHELLE REBUELTA', 'BSSW', '4', 'College', 'user910', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(911, 'ALTILLERO, NERLYN ARANGALE', 'BSSW', '4', 'College', 'user911', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(912, 'LUGATIMAN, HONEY MAE PITAO', 'BSSW', '4', 'College', 'user912', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(913, 'MALINAO, KIM TRISHA MAE POLPOL', 'BSSW', '4', 'College', 'user913', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(914, 'PANES, JENNIE ANN TOLEDO', 'BSSW', '4', 'College', 'user914', 'PM', '$2y$10$Uc0KiMJ3s0jjndFgQ.AAIeO6i./jv7lwry0vcMC4s7zVJrCdclB4G'),
(915, 'TEST, RYAN', 'BSIT', '4', 'College', 'user915', 'AM', '$2y$10$2c4K0yVioHYPHyHeL6UWkuQF5IH2FmYjg1DFEQfHfGF1G4wyQ3gsa');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(100) NOT NULL,
  `org` varchar(60) NOT NULL,
  `pos` varchar(60) NOT NULL,
  `candidate_id` int(255) NOT NULL,
  `voters_id` varchar(255) NOT NULL,
  `voter_name` varchar(100) NOT NULL,
  `course` varchar(10) NOT NULL,
  `close_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chika`
--
ALTER TABLE `chika`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flyers`
--
ALTER TABLE `flyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nominees`
--
ALTER TABLE `nominees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partylist`
--
ALTER TABLE `partylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chika`
--
ALTER TABLE `chika`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flyers`
--
ALTER TABLE `flyers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nominees`
--
ALTER TABLE `nominees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `partylist`
--
ALTER TABLE `partylist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=916;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
