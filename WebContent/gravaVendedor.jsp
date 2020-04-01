<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*, dao.*, util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravando Vendedor</title>
</head>
<body class="bg-dark text-white">

<%

	Connection bd = ConnectionFactory.getConnection();
	Vendedor vendedor = new Vendedor();
	vendedor.setNome(request.getParameter("nome"));
	vendedor.setAreaVenda(request.getParameter("areaVenda"));
	vendedor.setCidade(request.getParameter("cidade"));
	vendedor.setEstado(request.getParameter("estado"));
	vendedor.setSexo(request.getParameter("sexo").charAt(0));
	vendedor.setIdade(Integer.parseInt(request.getParameter("idade")));
	vendedor.setSalario(Double.parseDouble(request.getParameter("salario")));
	
	VendedorDAO dao = new VendedorDAO(bd);
	
	
	try{
		dao.inserir(vendedor);
		bd.close();
		response.sendRedirect("listaVendedor.jsp");
		
	} catch (SQLException e){
		e.printStackTrace();
	}
%>
	 
</body>
</html>