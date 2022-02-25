-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Fev-2022 às 02:19
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quiosque`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `genero` varchar(15) NOT NULL,
  `dataNascimento` date NOT NULL,
  `prodInt` varchar(50) DEFAULT NULL,
  `hora_cad` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`id`, `nome`, `endereco`, `numero`, `email`, `genero`, `dataNascimento`, `prodInt`, `hora_cad`) VALUES
(2, 'Luan', 'Rua gomes', '887', 'lukcs@ds2.sensi.edu.br', 'masculino', '2001-01-10', 'drogas', '2022-02-24 21:28:04'),
(3, 'Luiz ', 'rua Jucks ', '9965854', 'joao@gnaukl.c', 'masculino', '1996-02-01', 'drogas', '2022-02-24 21:28:04'),
(4, 'Cristiano', 'rua Jucks ', '77745', 'sadsa@131', 'masculino', '1998-04-10', 'drogas', '2022-02-24 21:28:04'),
(5, 'Luan', 'Rua gomes', '787', 'sadsada@ddad3', 'masculino', '2001-02-10', 'drogas', '2022-02-24 21:28:04'),
(6, 'Luan', 'Rua gomes', '887', 'lukcs@ds2.sensi.edu.br', 'masculino', '2022-01-31', 'tablets', '2022-02-24 21:28:04'),
(7, 'Luiz ', 'rua Jucks ', '9965854', 'joao@gnaukl.c', 'masculino', '2022-01-31', 'drogas', '2022-02-24 21:28:04'),
(8, 'Casemiro', 'Rua Alberto rio', '119922542', 'casemiro.vole@futebol.com.br', 'masculino', '1984-05-10', 'Jurupinga', '2022-02-24 21:28:04');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
