<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*, dao.*, util.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Lista de Clientes</title>
<link rel="icon" type="image/png" sizes="16x16" href="http://localhost:8080/LocadoraWeb/imagens/favicon-16x16.png">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body class="bg-dark text-white">

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.html">
  <span><img src="imagens/filme.png">
  Locadora de Filmes
  </span>
  </a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.html">Início<span class="sr-only">(current)</span></a>
      </li>
	  
		<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Cadastro
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="cliente.jsp">Cliente</a>
          <a class="dropdown-item" href="filme.jsp">Filme</a>
          <a class="dropdown-item" href="vendedor.jsp">Vendedor</a>
          </div>
      </li>
  
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Listas
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="listaCliente.jsp">Clientes</a>
          <a class="dropdown-item" href="listaFilme.jsp">Filmes</a>
          <a class="dropdown-item" href="listaVendedor.jsp">Vendedores</a>
        </div>
      </li>
      
    </ul>
  </div>
</nav>

<%

	Connection bd = ConnectionFactory.getConnection();
	ClienteDAO dao = new ClienteDAO(bd);

%>
	
	<div class="mx-auto" style="width: 200px;">
	  <h5>Listagem de Clientes</h5>
	</div>
		
<table class="table table-striped table-dark">
  <thead class="thead-light">
    <tr>
      <th scope="col">Nome</th>
      <th scope="col">Telefone</th>
      <th scope="col">Idade</th>
    </tr>
  </thead>

		
		<% for(Cliente cliente : dao.buscarTodos()) { %>
		
		<tbody>
		<tr>
			<td><%= cliente.getNome() %></td>
			<td><%= cliente.getTelefone() %></td>
			<td><%= cliente.getIdade() %></td>
		</tr>
		</tbody>
		
		
		<% } %>
	
</table>
	
	
	<center>
	<a href="index.html"><button type="button" class="btn btn-light btn-lg btn-block" style="max-width: 50%">Voltar</button></a>
	</center>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>