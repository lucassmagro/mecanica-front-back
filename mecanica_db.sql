-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/11/2025 às 00:16
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mecanica_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `data_envio` datetime DEFAULT current_timestamp(),
  `respondida` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `mensagem`, `data_envio`, `respondida`) VALUES
(3, 'teste nome', 'teste nome', 'teste nome', '2025-11-25 19:41:07', 1),
(14, 'João', 'joao@teste.com', 'teste', '2025-11-25 20:03:54', 1),
(15, 'Maria', 'maria@teste.com', 'teste', '2025-11-25 20:03:54', 1),
(16, 'Pedro', 'pedro@teste.com', 'teste', '2025-11-25 20:03:54', 0),
(17, 'Ana', 'ana@teste.com', 'teste', '2025-11-25 20:03:54', 0),
(24, 'Lucas', 'lucas@teste.com', 'Teste', '2025-11-25 20:04:58', 1),
(25, 'Lucas', 'lucas@lucas.com', 'oi eu sou o lucas', '2025-11-25 20:15:48', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_desejada` date DEFAULT NULL,
  `data_solicitacao` datetime DEFAULT current_timestamp(),
  `aprovado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `nome`, `email`, `telefone`, `data_desejada`, `data_solicitacao`, `aprovado`) VALUES
(2, 'teste', 'teste', 'teste', '2025-11-25', '2025-11-25 19:40:15', 1),
(3, 'teste2', 'teste2', 'teste2', '2025-11-25', '2025-11-25 19:40:33', 1),
(4, 'teste3', 'teste3', 'teste3', '2025-11-25', '2025-11-25 19:40:50', 1),
(20, 'Lucas', 'lucas@teste.com', '4999999999', '2025-11-25', '2025-11-25 20:07:36', 1),
(21, 'orcamento', 'teste', 'teste', '2025-11-25', '2025-11-25 20:09:33', 1),
(22, 'João', 'joao@teste.com', '(11) 99999-9999', '2025-12-01', '2025-11-25 20:11:12', 1),
(23, 'Maria', 'maria@teste.com', '(11) 99999-9999', '2025-12-01', '2025-11-25 20:11:12', 0),
(24, 'Pedro', 'pedro@teste.com', '(11) 99999-9999', '2025-12-01', '2025-11-25 20:11:12', 0),
(25, 'Ana', 'ana@teste.com', '(11) 99999-9999', '2025-12-01', '2025-11-25 20:11:12', 1),
(27, 'Teste', 'teste@teste.com', '9999999999', '2025-11-25', '2025-11-25 20:14:35', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
