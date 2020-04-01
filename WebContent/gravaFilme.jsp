<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*, dao.*, util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravando Filme</title>
</head>
<body class="bg-dark text-white">
	
<%

	Connection bd = ConnectionFactory.getConnection();
	Filme filme = new Filme();
	filme.setNome(request.getParameter("nome"));
	filme.setGenero(request.getParameter("genero"));
	filme.setValor(Double.parseDouble(request.getParameter("valor")));
	filme.setDisponivel(request.getParameter("disponivel"));
	filme.setPromocao(request.getParameter("promocao"));
	filme.setValorPromocao(Double.parseDouble(request.getParameter("valorPromocao")));
	
	FilmeDAO dao = new FilmeDAO(bd);
	
	try{
		dao.inserir(filme);
		bd.close(); 
		response.sendRedirect("listaFilme.jsp");
	} catch (SQLException e){
		e.printStackTrace();
	}
%>
	
</body>
</html>