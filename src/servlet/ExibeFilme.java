package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExibeFilme extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
		
		System.out.println("C�digo do filme: " + req.getParameter("codigo"));
		System.out.println("Nome do filme: " + req.getParameter("nome"));
		System.out.println("G�nero do filme: " + req.getParameter("genero"));
		System.out.println("Valor do filme: " + req.getParameter("valor"));
		System.out.println("Dispon�vel: " + req.getParameter("disponivel"));
		System.out.println("Promo��o: " + req.getParameter("promocao"));
		System.out.println("Valor Promo��o: " + req.getParameter("valorPromocao"));
		
		
		
		
	}
	

}
