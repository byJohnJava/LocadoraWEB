package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExibeHtml extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//capturo a refer�ncia ao objeto Response utilizando a escrita PrintWriter
		PrintWriter gravador = resp.getWriter();
		
		//escrevendo o c�digo HTML
		gravador.println("<html>");
		gravador.println("<head>");
		gravador.println("<title>Filme Gravado</title>");
		gravador.println("</head>");
		gravador.println("<body>");
		gravador.println("<h3>Filme gravado com sucesso!</h3><br><br>");
		gravador.println("C�digo do Filme: "+ req.getParameter("codigo") + "<br>");
		gravador.println("Nome do Filme: "+ req.getParameter("nome") + "<br>");
		gravador.println("G�nero do Filme: "+ req.getParameter("genero") + "<br>");
		gravador.println("Valor do Filme: "+ req.getParameter("valor") + "<br>");
		gravador.println("Dispon�vel: "+ req.getParameter("disponivel") + "<br>");
		gravador.println("Promo��o: "+ req.getParameter("promocao") + "<br>");
		gravador.println("Valor Promo��o: "+ req.getParameter("valorPromocao") + "<br><br>");
		gravador.println("<a href='http://localhost:8080/LocadoraWeb'>Voltar</a>");
		gravador.println("</body>");
		gravador.println("</html>");
		
		
		
	}
	

}
