<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
	*{
		margin: auto;
		width: auto;
		text-align: center;
	}
	h1{
	border: solid 6px black; 
	}
	div{
		border: solid 2px black; 
		box-sizing: border-box;
		background-color: cyan;
	}
	th{
	margin: 20px;
	padding: 12px;
	box-sizing: border-box;
	border: solid 2px gold;
	}
	td{
	margin: 20px;
	padding: 12px;
	box-sizing: border-box;
	border: solid 2px black;
	
	}
	a{
	text-decoration: none;
	
	}
	.excluir{
	color: red;
	
	}
</style>
<meta charset="ISO-8859-1">
<title>Lista de Clientes</title>
</head>
<body>
	<h1>Lista de Jogadores</h1>
	<div>
		<table>
			<tr>
				<th>id</th>
				<th>Nome</th>
				<th>endereço</th>
				<th>Número</th>
				<th>Email</th>
				<th>Genero</th>
				<th>Data de Nascimento</th>
				<th>Produtos de Interesses</th>
				<th>Idade</th>
				<th>Alterar</th>
				<th>Excluir</th>
			</tr>
			<c:forEach items="${clientes}" var="j">
				<tr>
					<td>${j.id}</td>
					<td>${j.nome }</td>
					<td>${j.endereco }</td>
					<td>${j.numero }</td>
					<td>${j.email }</td>
					<td>${j.genero }</td>
					<td><fmt:formatDate value="${j.dataNascimento.time}"
							pattern="dd/MM/yyyy" /></td>
					<td>${j.prodInt }</td>
					<td>${j.idade }</td>
					<td><a href="alterarCliente?idCliente=${j.id }">Alterar</a></td>
				<td><a class="excluir" href="excluirCliente?idCliente=${j.id }" onclick = "return confirm('confirmar Exclusão do jogador ${j.id}')">Excluir</a></td>

			</tr>
			</c:forEach>


		</table>

	</div>
</body>
</html>