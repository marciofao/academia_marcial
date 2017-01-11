-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jan-2017 às 18:04
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academia_marcial`
--
CREATE DATABASE IF NOT EXISTS `academia_marcial` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `academia_marcial`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curriculo`
--

CREATE TABLE `curriculo` (
  `cod_curriculo` bigint(20) UNSIGNED NOT NULL,
  `nome_faixa` varchar(60) NOT NULL,
  `graduacao_cod` int(11) NOT NULL,
  `texto_curriculo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curriculo`
--

INSERT INTO `curriculo` (`cod_curriculo`, `nome_faixa`, `graduacao_cod`, `texto_curriculo`) VALUES
(1, 'Faixa Branca', 1, '<p><strong>1. BASES - JASE </strong></p>\r\n\r\n<p>1 - Posi&ccedil;&atilde;o de sentido - Tchariot Jase</p>\r\n\r\n<p>2 - Base de cavaleiro - Kima Jase</p>\r\n\r\n<p>3 - Base frontal de um passo e meio - Jangul Jase</p>\r\n\r\n<p>4 - Base de lado com os P&eacute;s em &ldquo;L&rdquo; - Rugul Jase</p>\r\n\r\n<p>5 - Base cruzada - Kiotcha Jase</p>\r\n\r\n<p>6 - Base de combate com os punhos serrados - De Rion Jase-Jumok</p>\r\n\r\n<p>7 - Base de combate com as m&atilde;os abertas - De Rion Jase-Sudo</p>\r\n\r\n<p>8 - Posi&ccedil;&atilde;o natural - Pion-Ni Jase</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. ROLAMENTOS E QUEDAS - NAKBOB</strong></p>\r\n\r\n<p>1- Rolamento com queda - Ruijon Nakbob</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. GOLPES DE M&Atilde;O &ndash; TA SHIM KIBOB</strong></p>\r\n\r\n<p>1 - Soco direto com a m&atilde;o da frente no rosto - Jumok Sandang Jirugui</p>\r\n\r\n<p>2 - Soco direto com a m&atilde;o de tr&aacute;s no plexo - Bande Jumok Chundang Jirugui</p>\r\n\r\n<p>3 - Costas da m&atilde;o - Gak Kwon Tchiki</p>\r\n\r\n<p>4 - Girat&oacute;rio com as costas da m&atilde;o - Tora Gak Kwon Tchiki</p>\r\n\r\n<p>5 - Martelo da m&atilde;o - Mang Tche Tchiki</p>\r\n\r\n<p>6 - Faca da m&atilde;o para fora com a m&atilde;o da frente -Sudo Bakuro Terigui</p>\r\n\r\n<p>7 - Faca da m&atilde;o para dentro com a m&atilde;o de tr&aacute;s avan&ccedil;ando - Sudo Anuro Terigui</p>\r\n\r\n<p>8 - Faca invertida da m&atilde;o - Iok Sudo Terigui</p>\r\n\r\n<p>9 - Palma da m&atilde;o da frente ataca no rosto -&nbsp; Jan Kwon Sandang Tchiki</p>\r\n\r\n<p>10 - Palma da m&atilde;o de tr&aacute;s ataca no plexo - Jan Kwon Chundang Tchiki</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4 DEFESAS &ndash; BANG&nbsp; U</strong></p>\r\n\r\n<p>1 - Defesa para baixo -&nbsp; Radang Bang U</p>\r\n\r\n<p>2 - Defesa para cima - Sandang Bang U</p>\r\n\r\n<p>3 - Defesa no meio para dentro - Chundang Anuro Bang U</p>\r\n\r\n<p>4 - Defesa no meio para fora - Chundang Bakuro Bang U</p>\r\n\r\n<p>5 - Defesa para fora com pegada - Goltcho Bang U</p>\r\n\r\n<p>6 - Defesa no rosto com a palma - Jan Kwon Sandang Bang U</p>\r\n\r\n<p>7 - Defesa cruzada para baixo -&nbsp; Radang Kiotcha Bang U</p>\r\n\r\n<p>8 - Defesa cruzada para cima - Sandang Kiocha Bang U</p>\r\n\r\n<p>9 - Defesa com os cotovelos&nbsp; cruzados - Pal Kum Tchi Kiotcha Bang U</p>\r\n\r\n<p>10 - Defesa com a canela - Jangan- I Bang U</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. CHUTES - JOK SULL</strong></p>\r\n\r\n<p>1 - Chute frontal - Ap Tchagui</p>\r\n\r\n<p>2 - Chute frontal com calcanhar no queixo - Sandang Ap Tchagui</p>\r\n\r\n<p>3 - Chute por cobertura com calcanhar - Tit Cumtchi Tcha Nerigui&nbsp;</p>\r\n\r\n<p>4 - Chute de fora para dentro - Andari Tchagui</p>\r\n\r\n<p>5 - Chute de dentro para fora - Pacat Dari Tchagui</p>\r\n\r\n<p>6 - Chute empurrando - Ap Tcha Milgui</p>\r\n\r\n<p>7 - Chute lateral - Iop Tchagui</p>\r\n\r\n<p>8 - Chute circular - Tolho Tchagui</p>\r\n\r\n<p>9 - Chute em gangho - Iok Tolho Tchagui</p>\r\n\r\n<p>10 - Chute para tr&aacute;s - Tit Tchagui</p>\r\n\r\n<p>11 - Chute desviando Para O Lado - Pikio Tchagui</p>\r\n\r\n<p>12 - Joelhada frontal - Murup Ap Tchagui</p>\r\n\r\n<p>13 - Joelhada circular - Murup Tolho Tchagui</p>\r\n\r\n<p>14 - Chute baixo com a sola do p&eacute; na canela - Andari Mit Tcha Nolki</p>\r\n\r\n<p>15 - Chute baixo circular para fora com calcanhar - Tit Cumtchi Mit Tcha Doligui</p>\r\n\r\n<p>16 - Chute com calcanhar para dentro pelo lado - Tit Cumtchi Yop Tchagui</p>\r\n\r\n<p>17 - Chute com calcanhar para dentro por tr&aacute;s - Tit Cumtchi Tit Tchagui</p>\r\n\r\n<p>18 - Chute baixo circular com a faca do p&eacute; - Sok Do Mit Tcha Doligui</p>\r\n\r\n<p>19 - Rasteira varrendo &ndash; Suro Tchagui</p>\r\n\r\n<p>20 - Rasteira varrendo abaixado - Anja Radang Suro Tchagui</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. CONHECIMENTO - IRON</strong></p>\r\n\r\n<p>Significado do termo hapkido- Contagem at&eacute; dez em Coreano, e Juramento (Sanso)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7. TECNICA LIVRE &ndash; JAIU SUL</strong></p>\r\n\r\n<p>Combate combinado de m&atilde;o, p&eacute; e defesas - jaiu iak sok de rion</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>8. DEFESA PESSOAL - HO SHIN SUL</strong></p>\r\n\r\n<p>ESCAPES - SON ZA LIO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MESMA M&Atilde;O - BARUN SONMOK &ndash; 1 &ndash; 3</p>\r\n\r\n<p>1 - Escape para tr&aacute;s</p>\r\n\r\n<p>2 - Escape para frente</p>\r\n\r\n<p>3 - Escape pelo lado</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&Atilde;O CRUZADA - IOK SURO JABA SULTE &ndash; 4 &ndash; 6</p>\r\n\r\n<p>4 - Faca da m&atilde;o empurra para frente</p>\r\n\r\n<p>5 &ndash; Ponta de dedos para baixo</p>\r\n\r\n<p>6 - Polegar&nbsp; para&nbsp; fora</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DUAS M&Atilde;OS - IANG SONUL IANG SONURO JABA SULTE &ndash; 7</p>\r\n\r\n<p>7 - Escape por baixo dos bra&ccedil;os</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DUAS M&Atilde;OS SEGURAM UMA - RAN SONUL DU SONURO JABA SULTE &ndash; 8</p>\r\n\r\n<p>8 - Duas m&atilde;os juntas, escape para tr&aacute;s</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>9. GOLPES &ndash; TERIGUI</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MESMA M&Atilde;O - BARUN SONMOK &ndash; 1 &ndash; 3</p>\r\n\r\n<p>1 - Faca da m&atilde;o no pulso e pesco&ccedil;o</p>\r\n\r\n<p>2 - Cotovelada no ponto de press&atilde;o</p>\r\n\r\n<p>3 - Ataque com joelho e cotovelo para baixo</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&Atilde;O CRUZADA - IOK SURO JABA SULTE &ndash; 4 - 5</p>\r\n\r\n<p>4 - Segura pulso e ataca com a faca invertida da m&atilde;o na nuca</p>\r\n\r\n<p>5 - Bate com a m&atilde;o no joelho e contra ataca com costas da m&atilde;o</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&Atilde;O PELO LADO - IOP SONMOK SU &ndash; 6</p>\r\n\r\n<p>6 - Defesa Circular No Pulso,&nbsp; Costas Da M&atilde;o E Palma No Rosto</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DUAS M&Atilde;OS PELA FRENTE - IANG SONUL IANG SONURO JABA SULTE &ndash;7</p>\r\n\r\n<p>7 - Bate bra&ccedil;o com bra&ccedil;o e ataca com palma no rosto</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DUAS M&Atilde;OS POR TR&Aacute;S - TIT ESO IANG SONMOK JABA SULTE &ndash; 8</p>\r\n\r\n<p>8 - Escape, cotovelada no rosto, chute lateral , chicote e chute frontal</p>\r\n'),
(2, 'Faixa Amarela', 2, ''),
(3, 'Faixa hardcore ultra jedi', 21, ''),
(4, 'Faixa Laranja', 2, '<p><strong>1. ROLAMENTOS E QUEDAS - NAKBOB </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1 - Queda para o lado - Iop Nakbob</p>\r\n\r\n<p>2 - Queda para frente - Ap Nakbob</p>\r\n\r\n<p>3 - Queda para tr&aacute;s - Tit Nakbob</p>\r\n\r\n<p>4 - Rolamento em distancia com queda</p>\r\n\r\n<p>5 - Rolamento em altura com queda</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. GOLPES DE M&Atilde;O &ndash; TA SHIM KIBOB</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1 - Cotovelada para cima - Palcumtchi Uiro Tchiki</p>\r\n\r\n<p>2 - Cotovelada circular - Palcumtchi Tolho Tchiki</p>\r\n\r\n<p>3 - Cotovelada frontal - Palcumtchi Ap Tchiki</p>\r\n\r\n<p>4 - Cotovelada para tr&aacute;s - Palkumtchi Tuiro Tchiki</p>\r\n\r\n<p>5 - Cotovelada para o lado - Palkumtchi Iop Tchiki</p>\r\n\r\n<p>6 - Cotovelada para baixo - Palkumtchi Nerio Tchiki</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. CHUTES - JOK SULL</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1 - Rodada com chute lateral - Tora Iop Tchagui</p>\r\n\r\n<p>2 - Rodada com chute de dentro para fora - Tora Pakat Dari Tchagui</p>\r\n\r\n<p>3 - Rodada com chute por cobertura &ndash; Tora Tit Cumtchi Tcha Nerigui</p>\r\n\r\n<p>4 - Rodada com chute de calcanhar na cocha - Radan Tora Tolho Tchagui</p>\r\n\r\n<p>5 - Rodada com chute de calcanhar &ndash; Tora Tolho Tchagui</p>\r\n\r\n<p>6 - Rasteira girat&oacute;ria - Radan Andjo Tora Tolho Tchagui</p>\r\n\r\n<p>7 - Chute de cima para baixo com peito do p&eacute; - Ap Tolho Tchagui</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. QUEBRAMENTOS &ndash; KIOK PA</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Jumok,&nbsp; Ap Tchagui, Iop Tchagui e Tolho Tchagui</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. CONHECIMENTO - IRON</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hist&oacute;ria do Hapkido</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. TECNICA LIVRE &ndash; JAIU SULL</strong></p>\r\n\r\n<p>Defesa livres contra soco &ndash; Jaiu Bhang Kwon Sull</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7. DEFESA PESSOAL - RO SHIM SULL</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DEFESA CONTRA SOCO &ndash; BHANG KWON SULL</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DEFESA COM GOLPES &ndash; TERIGUI&nbsp; &ndash; 1 &ndash; 3</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1 - Defesa com palma para dentro , abre com ante bra&ccedil;o , ataque com costas da m&atilde;o e finaliza com palma</p>\r\n\r\n<p>2 - Defesa para dentro , gira 180&ordm;&nbsp; ataque com cotovelo nas costas e finaliza com chute atr&aacute;s do joelho</p>\r\n\r\n<p>3 - Esquiva para fora atacando com faca invertida da m&atilde;o no plexo e finaliza com cotovelo para baixo</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DEFESA COM CHUTES &ndash; TCHAGUI &ndash; 4 &ndash; 6</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4 - Iop tchagui com a perna da frente</p>\r\n\r\n<p>5 - Esquiva para fora e bikio tchagui com a perna de tr&aacute;s</p>\r\n\r\n<p>6 - Defende com pakat dari tchagui e com a mesma perna executa nathuo radan tora tolho tchagui</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DEFESA COM QUEBRA &ndash; KOK KI &ndash; 7 &ndash; 9</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>7 - Esquiva para fora e executa press&atilde;o no cotovelo</p>\r\n\r\n<p>8 - Defesa com a movimenta&ccedil;&atilde;o n&ordm; 2 e finaliza levando ao ch&atilde;o com chave no cotovelo e press&atilde;o no pulso</p>\r\n\r\n<p>9 - Defesa para fora com a faca da m&atilde;o e entregando para outra e finaliza com press&atilde;o atr&aacute;s do cotovelo</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DEFESA COM TORC&Otilde;ES &ndash; KWAN JIOL &ndash; 10 &ndash; 12</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>10 - Defesa cruzada e tor&ccedil;&atilde;o para fora</p>\r\n\r\n<p>11 - Defesa com movimenta&ccedil;&atilde;o N&ordm;2, tor&ccedil;&atilde;o para dentro e finaliza com press&atilde;o do joelho no cotovelo</p>\r\n\r\n<p>12 - Defesa com movimenta&ccedil;&atilde;o N&ordm;2, tor&ccedil;&atilde;o do pulso para fora e finaliza com joelho no bra&ccedil;o e costas da m&atilde;o</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DEFESA COM PROJEC&Otilde;ES &ndash; TON DI GUI &ndash; 13 &ndash; 15</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>13 - Proje&ccedil;&atilde;o pelo pesco&ccedil;o e finaliza com imobiliza&ccedil;&atilde;o no solo</p>\r\n\r\n<p>14 - Proje&ccedil;&atilde;o por baixo da axila e finaliza com joelho no peito e press&atilde;o em aperto de m&atilde;o</p>\r\n\r\n<p>15 - Defesa com palma para baixo, gravata no pesco&ccedil;o e finaliza com rolamento para tr&aacute;s e estrangulamento</p>\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `edit_log`
--

CREATE TABLE `edit_log` (
  `cod_log` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `edicoes` text NOT NULL,
  `nome_usuario` text NOT NULL,
  `cod_usuario` int(11) NOT NULL,
  `data_hora` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `cod_usuario` bigint(20) UNSIGNED NOT NULL,
  `tipo` int(11) NOT NULL,
  `login` varchar(60) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `sobrenome` varchar(60) NOT NULL,
  `senha_md5` varchar(32) NOT NULL,
  `graduacao_cod` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `obs` text NOT NULL,
  `cod_professor` int(11) DEFAULT NULL,
  `cod_mestre` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`cod_usuario`, `tipo`, `login`, `nome`, `sobrenome`, `senha_md5`, `graduacao_cod`, `email`, `telefone`, `obs`, `cod_professor`, `cod_mestre`) VALUES
(1, 1, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 20, '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `cod_video` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(60) NOT NULL,
  `link` text NOT NULL,
  `cod_curriculo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curriculo`
--
ALTER TABLE `curriculo`
  ADD UNIQUE KEY `cod_curriculo` (`cod_curriculo`);

--
-- Indexes for table `edit_log`
--
ALTER TABLE `edit_log`
  ADD UNIQUE KEY `cod_log` (`cod_log`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `cod_usuario` (`cod_usuario`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`cod_video`),
  ADD UNIQUE KEY `cod_video` (`cod_video`),
  ADD KEY `fk_videos` (`cod_curriculo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curriculo`
--
ALTER TABLE `curriculo`
  MODIFY `cod_curriculo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `edit_log`
--
ALTER TABLE `edit_log`
  MODIFY `cod_log` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cod_usuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `cod_video` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
