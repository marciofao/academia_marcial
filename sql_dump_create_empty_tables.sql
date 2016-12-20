-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Dez-2016 às 19:57
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
-- Estrutura da tabela `conjunto_tecnicas`
--

CREATE TABLE `conjunto_tecnicas` (
  `cod_conjunto` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(60) NOT NULL,
  `ordem` int(11) NOT NULL,
  `cod_curriculo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `cod_conjunto` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `link_video` text,
  `ordem` int(11) NOT NULL,
  `data_edicao` datetime NOT NULL,
  `nome_autor` text NOT NULL
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
  `graduacao` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `obs` text NOT NULL,
  `cod_professor` int(11) DEFAULT NULL,
  `cod_mestre` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conjunto_tecnicas`
--
ALTER TABLE `conjunto_tecnicas`
  ADD UNIQUE KEY `cod_conjunto` (`cod_conjunto`),
  ADD KEY `fk_curriculo_3` (`cod_curriculo`);

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
  ADD KEY `fk_conjunto_3` (`cod_conjunto`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `cod_usuario` (`cod_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conjunto_tecnicas`
--
ALTER TABLE `conjunto_tecnicas`
  MODIFY `cod_conjunto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `curriculo`
--
ALTER TABLE `curriculo`
  MODIFY `cod_curriculo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `cod_usuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
