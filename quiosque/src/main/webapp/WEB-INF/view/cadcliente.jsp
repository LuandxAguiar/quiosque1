<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Cliente</title>
<style>
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=number] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=email] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=date] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

h1 {
	font-size: 40px;
	color: #066a75;
	padding: 2px 0 10px 0;
	font-family: Arial, sans-serif;
	font-weight: bold;
	text-align: center;
}

.container {
	width: 100%;
	height: 100%;
	background: #6C7A89;
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}

.box {
	width: 37%;
	height: 100%;
	background: #fff;
	body
	{
	margin
	:
	0px;
}
</style>
</head>
<body>
	<h1>Cadastro de Clientes</h1>

	<div class="container">
		<div class="box">

			<form action="salvar" method="post">
				<input type="hidden" name="id" value="">
				<h1>Cadastro</h1>
				<table>
					<tr>
						<td><label>Nome do Cliente:</label></td>
						<td><input type="text" name="nome" value="${cliente.nome }"
							required></td>

					</tr>
					<tr>
						<td><label>Endereço</label></td>
						<td><input type="text" name="endereco"
							value="${cliente.endereco }" required></td>

					</tr>

					<tr>
						<td><label>Número</label></td>
						<td><input type="number" name="numero"
							value="${cliente.numero }" required></td>

					</tr>
					<tr>
						<td><label>E-mail</label></td>
						<td><input type="email" name="email"
							value="${cliente.email }" required></td>

					</tr>
					<tr>
						<td><label>Genero</label></td>
						<td><label>Masculino</label><input type="radio"
							<c:if test="${cliente.genero.equals('masculino')}">checked</c:if>="masculino"
							class="checkbox" name="genero" value="masculino" required>
						</td>
						<td><label>Feminino</label><input type="radio"
							<c:if test="${cliente.genero.equals('feminino')}">checked</c:if>
							class="checkbox" name="genero" value="feminino" required>
						</td>
						<td><label>Não Opinar</label><input type="radio"
							<c:if test="${cliente.genero.equals('nOpina')}">checked</c:if>
							class="checkbox" name="genero" value="nOpina" required></td>
					</tr>
					<tr>
						<td><label>Nascimento:</label></td>
						<td><input type="date" name="dataNascimento"
							value="<fmt:formatDate pattern="yyyy-MM-dd" value="${cliente.dataNascimento.time }"/>"
							required></td>
					</tr>
					<tr>
						<td><label>Produtos de Intereses</label></td>
						<td><input type="text" name="prodInt"
							value="${cliente.prodInt }" required></td>


					</tr>
					<td><input type="submit" value="Salvar"></td>
				</table>
			</form>

		</div>
	</div>

</body>
</html>