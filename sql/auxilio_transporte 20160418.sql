-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18-Abr-2016 às 14:56
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `auxilio_transporte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bookmarks`
--

CREATE TABLE IF NOT EXISTS `bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `url` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `user_id`, `title`, `description`, `url`, `created`, `modified`) VALUES
(1, 1, 'Teste Bookmark', 'descrição do bookmark', 'http://www.flinformatica.com.br', '2016-04-17 11:12:00', '2016-04-17 14:52:24'),
(2, 1, 'Bookmark teste 2', 'Teste de book mark 2', '', '2016-04-17 14:52:15', '2016-04-17 14:52:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bookmarks_tags`
--

CREATE TABLE IF NOT EXISTS `bookmarks_tags` (
  `bookmark_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`bookmark_id`,`tag_id`),
  KEY `tag_idx` (`tag_id`,`bookmark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bookmarks_tags`
--

INSERT INTO `bookmarks_tags` (`bookmark_id`, `tag_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE IF NOT EXISTS `cadastro` (
  `id_Cadastro` int(11) NOT NULL AUTO_INCREMENT,
  `idEquipamento` int(11) NOT NULL,
  `idFuncionario` int(11) NOT NULL,
  `jornada` tinyint(2) NOT NULL,
  `plantonista` char(1) NOT NULL,
  `idaEmbarque1` varchar(50) NOT NULL,
  `idaLinha1` varchar(10) NOT NULL,
  `idaDesembarque1` varchar(50) NOT NULL,
  `idaEmbarque2` varchar(50) NOT NULL,
  `idaLinha2` varchar(10) NOT NULL,
  `idaDesembarque2` varchar(50) NOT NULL,
  `idaEmbarque3` varchar(50) NOT NULL,
  `idaLinha3` varchar(10) NOT NULL,
  `idaDesembarque3` varchar(50) NOT NULL,
  `idaEmbarque4` varchar(50) NOT NULL,
  `idaLinha4` varchar(10) NOT NULL,
  `idaDesembarque4` varchar(50) NOT NULL,
  `voltaEmbarque1` varchar(50) NOT NULL,
  `voltaLinha1` varchar(10) NOT NULL,
  `voltaDesembarque1` varchar(50) NOT NULL,
  `voltaEmbarque2` varchar(50) NOT NULL,
  `voltaLinha2` varchar(10) NOT NULL,
  `voltaDesembarque2` varchar(50) NOT NULL,
  `voltaEmbarque3` varchar(50) NOT NULL,
  `voltaLinha3` varchar(10) NOT NULL,
  `voltaDesembarque3` varchar(50) NOT NULL,
  `voltaEmbarque4` varchar(50) NOT NULL,
  `voltaLinha4` varchar(10) NOT NULL,
  `voltaDesembarque4` varchar(50) NOT NULL,
  `idCodigo1` int(11) NOT NULL,
  `quantidade1` tinyint(2) NOT NULL,
  `idCodigo2` int(11) NOT NULL,
  `quantidade2` tinyint(2) NOT NULL,
  `idCodigo3` int(11) NOT NULL,
  `quantidade3` tinyint(2) NOT NULL,
  `idCodigo4` int(11) NOT NULL,
  `quantidade4` tinyint(2) NOT NULL,
  `idEmpresa1` int(11) NOT NULL,
  `idEmpresa2` int(11) NOT NULL,
  `idEmpresa3` int(11) NOT NULL,
  `idEmpresa4` int(11) NOT NULL,
  PRIMARY KEY (`id_Cadastro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `codigotransporte`
--

CREATE TABLE IF NOT EXISTS `codigotransporte` (
  `id_Codigo` int(11) NOT NULL,
  `codigo` varchar(2) NOT NULL,
  `nomeCodigo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `divisao`
--

CREATE TABLE IF NOT EXISTS `divisao` (
  `id_Divisao` int(11) NOT NULL AUTO_INCREMENT,
  `divisao` varchar(150) NOT NULL,
  PRIMARY KEY (`id_Divisao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id_Empresa` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `valorUnitario` decimal(2,2) NOT NULL,
  PRIMARY KEY (`id_Empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamento`
--

CREATE TABLE IF NOT EXISTS `equipamento` (
  `id_Equipamento` int(11) NOT NULL AUTO_INCREMENT,
  `idDivisao` int(11) NOT NULL,
  `equipamento` varchar(100) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `eh` int(15) NOT NULL,
  PRIMARY KEY (`id_Equipamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `id_Funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `rf` varchar(14) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `padrao` varchar(10) NOT NULL,
  `dataNascimento` date NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `numero` int(5) NOT NULL,
  `complemento` varchar(10) NOT NULL,
  `bairro` varchar(150) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` char(9) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `ramal` int(5) NOT NULL,
  PRIMARY KEY (`id_Funcionario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id_Funcionario`, `nome`, `rf`, `cargo`, `padrao`, `dataNascimento`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `telefone`, `ramal`) VALUES
(1, 'Lorelei', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', 0),
(2, 'Amanda', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', 0),
(3, 'Grayce', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', 0),
(4, 'William', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', 0),
(5, 'Marcio', '', '', '', '1985-08-18', '', 0, '', '', '', '', '', '', 0),
(6, 'Adilson', '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tags`
--

INSERT INTO `tags` (`id`, `title`, `created`, `modified`) VALUES
(1, 'Teste', '2016-04-17 11:00:00', NULL),
(2, 'tagteste', '2016-04-17 14:51:03', '2016-04-17 14:51:03'),
(3, 'Banana tag', '2016-04-17 14:51:37', '2016-04-17 14:51:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`) VALUES
(1, 'loreleigab@hotmail.com', '$2y$10$Z7.5VxKs1KkE4hoYx1S.POyZndtUbpZdwyre7cvWhQoX93PRmEv4.', '2016-04-17 11:10:00', '2016-04-17 14:26:07');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `bookmarks_tags`
--
ALTER TABLE `bookmarks_tags`
  ADD CONSTRAINT `bookmarks_tags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `bookmarks_tags_ibfk_2` FOREIGN KEY (`bookmark_id`) REFERENCES `bookmarks` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
