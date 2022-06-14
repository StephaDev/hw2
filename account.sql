-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 14, 2022 alle 12:42
-- Versione del server: 10.4.10-MariaDB
-- Versione PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `account`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `carrello`
--

CREATE TABLE `carrello` (
  `ID` int(255) NOT NULL,
  `username_utente` varchar(255) NOT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `prezzo` int(255) DEFAULT NULL,
  `quantita` int(255) DEFAULT NULL,
  `immagine` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `carrello`
--

INSERT INTO `carrello` (`ID`, `username_utente`, `titolo`, `prezzo`, `quantita`, `immagine`) VALUES
(20, 'admin', 'Xiaomi smartphone Redmi 10 Carbon Grey 128GB Dual SIM', 170, 3, 0x68747470733a2f2f656e637279707465642d74626e322e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e64394763524e583546676f4e733161527857624365312d6a7854435a6c642d7134445730435654586972796d6a7a5f683772752d59536d6a6d512d6535503557537779695a4a4e6671725a6f4364704d6a4d64316c754f613933336f546635492d686d384c4851444f6d645967),
(21, 'admin', 'Xiaomi Redmi 9A Blue WindTre smartphone Dual SIM', 95, 1, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e643947635470596f5f4e4676475a6d4b7249516166653773474331647552762d7959476c79427131666a74416f576b5659666a41416671764b4f4c6e685742596838624e3335484c584d67787361715851634d7069516d4458555f6d786f546873466c4752426c6752354a375f72386149736a395844315734587377),
(22, 'admin', 'Apribottiglie Nano da Giardino', 23, 1, 0x68747470733a2f2f656e637279707465642d74626e302e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e643947635354486b725963614b6b585a37734579396d436e4d69566b766470354432787874456b46645064466a74397a65746e50583774546f3477717449666c503945365443734b5a6f4c6172357534676f6f774c3032564836634134784530584a49642d7332356a7830486f7968414f5a5f6641557270634c396949),
(24, 'admin', 'Biancaneve e 7 Nani da Giardino', 105, 3, 0x68747470733a2f2f656e637279707465642d74626e332e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e643947635470716e61326e4556767039424c6b456a726d666e30346851537944344f74507a74487169374a575672767649396c6774516f68586a6668583470615930566c52484d5231587a6d787a6e504f394c37737473624a595932316f7a7578545f5f6471424c415542686957547175316877563347715947),
(41, 'sadadada2221', 'Xiaomi Redmi Note 11', 199, 10, 0x68747470733a2f2f656e637279707465642d74626e322e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e643947635130726d5a4b457739384b4d70306141734e6451756a4b61446a51655168795a4a4930734357656d7a576774377a4f527069376c6a44667649793130785846756374475872327661463434693957307a565f485138374850534774394265554c32546c737a4453573672524e7676387a596e4435544a4367),
(42, 'Metalloo', 'Xiaomi Redmi Note 11', 197, 10, 0x68747470733a2f2f656e637279707465642d74626e322e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e643947635130726d5a4b457739384b4d70306141734e6451756a4b61446a51655168795a4a4930734357656d7a576774377a4f527069376c6a44667649793130785846756374475872327661463434693957307a565f485138374850534774394265554c32546c737a4453573672524e7676387a596e4435544a4367),
(44, 'admin', 'Xiaomi Redmi Note 11', 200, 1, 0x68747470733a2f2f656e637279707465642d74626e322e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e643947635130726d5a4b457739384b4d70306141734e6451756a4b61446a51655168795a4a4930734357656d7a576774377a4f527069376c6a44667649793130785846756374475872327661463434693957307a565f485138374850534774394265554c32546c737a4453573672524e7676387a596e4435544a4367),
(45, 'admin', 'Xiaomi Redmi Note 9 6.53\" 64GB RAM 3GB Green', 105, 1, 0x68747470733a2f2f656e637279707465642d74626e332e677374617469632e636f6d2f73686f7070696e673f713d74626e3a414e643947635459362d41465045736f6139746a66416741476c666c3239323242683771376774624f4b78676d4c596a4f504f427249437668646749614e46577232753058794b654455336d4e7357546d7a564d65386d494858676574506f784566424d334a58636f5352526a526d64);

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `username` varchar(16) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`username`, `email`, `password`) VALUES
('admin', 'admin@gmail.com', '63a9f0ea7bb98050796b649e85481845'),
('Metalloo', 'metall@gmail.com', '8e94d6c63a7fbc456796ed5ca5bac97a'),
('sadadada2221', 'stegiucla@gmail.kakka', '53e0117370a03bd7c72ea10ee0400620');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `carrello`
--
ALTER TABLE `carrello`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `username_utente` (`username_utente`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `carrello`
--
ALTER TABLE `carrello`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `carrello`
--
ALTER TABLE `carrello`
  ADD CONSTRAINT `carrello_ibfk_1` FOREIGN KEY (`username_utente`) REFERENCES `utenti` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
