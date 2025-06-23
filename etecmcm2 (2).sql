-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/06/2025 às 14:03
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'limpeza'),
(2, 'frios'),
(3, 'oculos'),
(4, 'carnes'),
(5, 'enlatados'),
(6, 'eletronicos'),
(7, 'perfumaria'),
(8, 'bebidas'),
(9, 'hortifrut'),
(10, 'congelados');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`, `unidade_medida`) VALUES
(1, 'Sabão em pó', 25.00, 4, 'OMO', 1, 'uni'),
(2, 'Detergente', 3.00, 25, 'Ypê', 1, 'uni'),
(3, 'Mussarela', 10.00, 80, 'Sadia', 2, '300g'),
(4, 'Oculos', 200.00, 1, 'Extra Otica', 3, 'uni'),
(5, 'Carne de panela', 25.00, 7, 'Perdigão', 4, '200g'),
(6, 'Milho', 4.00, 55, 'Qualitá', 5, '100g'),
(7, 'Celular', 900.00, 67, 'Samsung', 6, 'uni'),
(8, 'Body Splash Floratta Blue', 90.00, 59, 'O boticario', 7, 'uni'),
(9, 'Refrigerante', 3.00, 478, 'Guaraná Jesus', 8, '300ml'),
(10, 'Uva', 10.00, 92, 'turma da Mônica', 9, '400g'),
(11, 'batata frita', 30.00, 58, 'Aurora', 10, '2kg'),
(12, 'Presunto', 8.00, 60, 'Sadia', 2, '300g'),
(13, 'Óculos escuros', 100.00, 10, 'Extra Otica', 3, 'uni'),
(14, 'Frango', 20.00, 8, 'Sadia', 4, '1kg'),
(15, 'Atum', 3.50, 56, 'Gomes da Costa', 5, 'uni'),
(16, 'Secador de Cabelo', 250.00, 34, 'Philco', 6, 'uni'),
(17, 'Hidratante Corporal', 35.00, 87, 'Natura', 7, 'uni'),
(18, 'Suco de Uva', 5.00, 89, 'Vigor', 8, '500ml'),
(19, 'Morango', 10.00, 23, 'Turma da Monica', 9, '400g'),
(20, 'Nuggets', 15.00, 20, 'Perdigão', 10, '300g');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
