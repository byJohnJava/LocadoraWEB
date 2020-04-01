package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExibeFilme extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
		
		System.out.println("Código do filme: " + req.getParameter("codigo"));
		System.out.println("Nome do filme: " + req.getParameter("nome"));
		System.out.println("Gênero do filme: " + req.getParameter("genero"));
		System.out.println("Valor do filme: " + req.getParameter("valor"));
		System.out.println("Disponível: " + req.getParameter("disponivel"));
		System.out.println("Promoção: " + req.getParameter("promocao"));
		System.out.println("Valor Promoção: " + req.getParameter("valorPromocao"));
		
		
		
		
	}
	

}
