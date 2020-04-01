<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*, dao.*, util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravando Cliente</title>
</head>
<body class="bg-dark text-white">

<%
	Connection bd = ConnectionFactory.getConnection();
	Cliente cliente = new Cliente();
	cliente.setNome(request.getParameter("nome"));
	cliente.setLogradouro(request.getParameter("logradouro"));
	cliente.setNumeroLogradouro(Integer.parseInt(request.getParameter("numero")));
	cliente.setBairro(request.getParameter("bairro"));
	cliente.setCidade(request.getParameter("cidade"));
	cliente.setEstado(request.getParameter("estado"));
	cliente.setTelefone(request.getParameter("telefone"));
	cliente.setCpf(request.getParameter("cpf"));
	cliente.setRg(request.getParameter("rg"));
	cliente.setSexo(request.getParameter("sexo").charAt(0));
	cliente.setDataNascimento(request.getParameter("dataNascimento"));
	cliente.setIdade(Integer.parseInt(request.getParameter("idade")));
	
	ClienteDAO dao = new ClienteDAO(bd);
	
	try{
		dao.inserir(cliente);
		bd.close();
		
		response.sendRedirect("listaCliente.jsp");
		
	} catch (SQLException e){
		e.printStackTrace();
	}
	
	


%>

</body>
</html>