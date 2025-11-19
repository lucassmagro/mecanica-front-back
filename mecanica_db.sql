-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/11/2025 às 20:46
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
  `data_envio` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `mensagem`, `data_envio`) VALUES
(1, 'teste', 'teste@teste.teste', 'teste', '2025-11-19 15:30:05'),
(2, 'Carlos Ferreira', 'carlos.ferreira@email.com', 'Gostaria de saber se vocês trabalham com importados, tenho uma BMW 320i.', '2025-11-19 15:39:44'),
(3, 'Ana Júlia Santos', 'aninha.santos@uol.com.br', 'Fui atendida pelo Gabriel na semana passada e adorei o serviço. Parabéns!', '2025-11-19 15:39:44'),
(4, 'Roberto Menezes', 'beto_car@gmail.com', 'Vocês abrem aos sábados a tarde? Preciso buscar meu carro.', '2025-11-19 15:39:44'),
(5, 'Fernanda Lima', 'fe.lima88@hotmail.com', 'O barulho no freio voltou depois de 3 dias. Posso levar aí para garantia?', '2025-11-19 15:39:44'),
(6, 'Paulo Ricardo', 'paulo.ricardo@empresa.com', 'Gostaria de fazer uma parceria com a frota da minha empresa. Com quem falo?', '2025-11-19 15:39:44'),
(7, 'Juliana Costa', 'ju.costa@outlook.com', 'Vocês aceitam cartão de crédito em quantas vezes?', '2025-11-19 15:39:44'),
(8, 'Marcos Vinicius', 'marcos.vini@gmail.com', 'A luz da injeção acendeu, vocês passam o scanner na hora ou precisa agendar?', '2025-11-19 15:39:44'),
(9, 'Cláudia Raia', 'claudinha@email.com', 'Estou precisando trocar os pneus, vocês vendem ou só fazem o alinhamento?', '2025-11-19 15:39:44'),
(10, 'Pedro Henrique', 'pedro_henrique@bol.com.br', 'Qual a marca de óleo que vocês usam na revisão?', '2025-11-19 15:39:44'),
(11, 'Lucas Silva', 'lucas.silva@teste.com', 'Site muito bom, parabéns pela transparência nos preços.', '2025-11-19 15:39:44'),
(12, 'teste2', 'teste@teste.teste', 'teste2', '2025-11-19 16:42:32');

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
  `data_solicitacao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `nome`, `email`, `telefone`, `data_desejada`, `data_solicitacao`) VALUES
(1, 'teste', 'teste@teste.teste', '9999999999999', '2025-11-19', '2025-11-19 15:30:34'),
(2, 'João da Silva', 'joao.silva@email.com', '(49) 98877-1122', '2025-11-26', '2025-11-19 15:39:56'),
(3, 'Maria Oliveira', 'maria.oli@gmail.com', '(49) 99988-7766', '2025-11-27', '2025-11-19 15:39:56'),
(4, 'Ricardo Souza', 'ricardinho@hotmail.com', '(49) 99111-2233', '2025-11-28', '2025-11-19 15:39:56'),
(5, 'Patrícia Abravanel', 'paty.abra@sbt.com.br', '(11) 98888-8888', '2025-12-01', '2025-11-19 15:39:56'),
(6, 'Eduardo Costa', 'edu.costa@cantor.com', '(31) 99999-1234', '2025-12-02', '2025-11-19 15:39:56'),
(7, 'Larissa Manoela', 'lari.manoela@globo.com', '(21) 97777-6666', '2025-12-05', '2025-11-19 15:39:56'),
(8, 'Felipe Neto', 'felipe.neto@yt.com', '(21) 91234-5678', '2025-12-10', '2025-11-19 15:39:56'),
(9, 'Neymar Júnior', 'neymar@psg.com', '(11) 91010-1010', '2025-12-15', '2025-11-19 15:39:56'),
(10, 'Anitta Larissa', 'anitta@girlfromrio.com', '(21) 90000-0000', '2025-12-20', '2025-11-19 15:39:56'),
(11, 'Gusttavo Lima', 'gusttavo@embaixador.com', '(62) 99999-9999', '2025-12-22', '2025-11-19 15:39:56'),
(12, 'teste2', 'teste@teste.teste', '9999999999999', '2025-11-19', '2025-11-19 16:42:56');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
