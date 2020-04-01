<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Cadastro de Vendedor</title>
  <link rel="icon" type="image/png" sizes="16x16" href="http://localhost:8080/LocadoraWeb/imagens/favicon-16x16.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body class="bg-dark text-white">

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="index.html">
      <span><img src="imagens/filme.png">
        Locadora de Filmes
      </span>
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="index.html">Início<span class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            Cadastro
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="cliente.jsp">Cliente</a>
            <a class="dropdown-item" href="filme.jsp">Filme</a>
            <a class="dropdown-item" href="vendedor.jsp">Vendedor</a>
          </div>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
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

  <br>

  <div class="card text-white bg-secondary mb-3" style="max-width: 100%;">
    <div class="card-header">
      <h5 class="card-title">Cadastro de Vendedor</h5>
    </div>
    <div class="card-body">

      <form action="gravaVendedor.jsp">

        <div class="form-group">
          <label for="formGroupExampleInput">Nome:</label>
          <input type="text" class="form-control" name="nome" placeholder="Nome" style="max-width: 35%;">
        </div>

        <div class="form-group">
          <label for="formGroupExampleInput2">Área de Venda:</label>
          <input type="text" class="form-control" name="areaVenda" placeholder="Área de venda" style="max-width: 35%;">
        </div>

        <div class="form-group">
          <label for="formGroupExampleInput2">Cidade:</label>
          <input type="text" class="form-control" name="cidade" placeholder="Cidade" style="max-width: 35%;">
        </div>

        <div class="form-group">
          <label for="formGroupExampleInput2">Estado:</label>
          <input type="text" class="form-control" name="estado" placeholder="Estado" style="max-width: 35%;">
        </div>

        SEXO: &nbsp;&nbsp;&nbsp;
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="sexo" id="sexo" value="masculino">
          <label class="form-check-label" for="inlineRadio1">Masculino</label>
        </div>
        
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="sexo" id="sexo" value="feminino">
          <label class="form-check-label" for="inlineRadio2">Feminino</label>
        </div>
        <br><br>

        <div class="form-group">
          <label for="formGroupExampleInput2">Idade:</label>
          <input type="text" class="form-control" name="idade" placeholder="Idade" style="max-width: 5%;">
        </div>

        <div class="form-group">
          <label for="formGroupExampleInput2">Salário:</label>
          <input type="text" class="form-control" name="salario" placeholder="R$" style="max-width: 10%;">
        </div>
        
        <br>

		<a class="btn btn-primary" href="index.html" role="button">Voltar</a>
		<button class="btn btn-primary" type="submit">Salvar</button>

      </form>

    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>

</body>

</html>