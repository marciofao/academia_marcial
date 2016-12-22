-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Dez-2016 às 15:24
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
  `link_tecnicas` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curriculo`
--

INSERT INTO `curriculo` (`cod_curriculo`, `nome_faixa`, `graduacao_cod`, `link_tecnicas`) VALUES
(1, 'Faixa Branca', 1, ''),
(2, 'Faixa Amarela', 2, ''),
(3, 'Faixa hardcore ultra jedi', 21, '');

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
-- Estrutura da tabela `tecnicas`
--

CREATE TABLE `tecnicas` (
  `cod_tecnica` bigint(20) UNSIGNED NOT NULL,
  `titulo_tecnica` varchar(60) DEFAULT NULL,
  `subtitulo_tecnica` varchar(60) DEFAULT NULL,
  `cod_curriculo` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `link_video` text,
  `ordem` int(11) NOT NULL,
  `data_edicao` datetime NOT NULL,
  `nome_cod_editor` text NOT NULL
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
  `obs` text NOT NULL,
  `cod_professor` int(11) DEFAULT NULL,
  `cod_mestre` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`cod_usuario`, `tipo`, `login`, `nome`, `sobrenome`, `senha_md5`, `graduacao_cod`, `email`, `obs`, `cod_professor`, `cod_mestre`) VALUES
(1, 1, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 20, '', '', NULL, NULL);

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
-- Indexes for table `tecnicas`
--
ALTER TABLE `tecnicas`
  ADD UNIQUE KEY `cod_tecnica` (`cod_tecnica`),
  ADD KEY `fk_tecnicas` (`cod_curriculo`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `cod_usuario` (`cod_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curriculo`
--
ALTER TABLE `curriculo`
  MODIFY `cod_curriculo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `edit_log`
--
ALTER TABLE `edit_log`
  MODIFY `cod_log` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tecnicas`
--
ALTER TABLE `tecnicas`
  MODIFY `cod_tecnica` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cod_usuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
