package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExibeVendedor extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
		
		System.out.println("Nome do vendedor: " + req.getParameter("nome"));
		System.out.println("Área de Venda: " + req.getParameter("areaVenda"));
		System.out.println("Cidade: " + req.getParameter("cidade"));
		System.out.println("Estado: " + req.getParameter("estado"));
		System.out.println("Sexo: " + req.getParameter("sexo"));
		System.out.println("Idade: " + req.getParameter("idade"));
		System.out.println("Salário: " + req.getParameter("salario"));
		
		
		
		
	}

}
