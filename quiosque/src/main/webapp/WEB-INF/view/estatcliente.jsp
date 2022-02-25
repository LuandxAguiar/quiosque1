<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	*{
	margin: auto;
	width: auto;
	}
	body{
	background-color: #84dffa;
	background: linear-gradient(to top ,#84dffa,#fcf0f4 ); 
	text-align: center;
	
	}
	th:hover{
	background-color: black;
	color:white;
	}
	h1{
	padding: 30px;
	}
	form{
	padding: 12em;
	text-align: center;
	background: linear-gradient(#cb3d5d, #e7c2ca);
	border: solid 4px black; 
	}
	th{
	margin: 2em;
	padding: 1.4em;
	border: solid 3px black;
	}
	td{
	margin: 2em;
	padding: 1.4em;
	border: solid 3px black;
	}
</style>
</head>
<body>
	<h1> Estatisica de Clientes</h1>
	
	<div> 
		<form> 
			<table>
			<tr>
				<th>Masculino</th>
				<th>Feminino</th>
				<th>Jovens</th>
				<th> Adultos</th>
				<th> Idosos</th>
				
			</tr>
			
			<tr>
				<td>${masculino }</td>
				<td>${feminino}</td>
				<td>${jovem }</td>
				<td>${adulto }</td>
				<td>${idoso }</td>
				
			</tr>
			
			</table>
			
		
		
		</form>
	
	
	
	</div>
</body>
</html>