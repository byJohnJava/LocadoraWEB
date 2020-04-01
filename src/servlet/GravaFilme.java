package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import bean.Filme;
import dao.FilmeDAO;
import util.ConnectionFactory;

public class GravaFilme extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Connection bd = ConnectionFactory.getConnection();
		Filme filme = new Filme();
		filme.setNome(req.getParameter("nome"));
		filme.setGenero(req.getParameter("genero"));
		filme.setValor(Double.parseDouble(req.getParameter("valor")));
		filme.setDisponivel(req.getParameter("disponivel"));
		filme.setPromocao(req.getParameter("promocao"));
		filme.setValorPromocao(Double.parseDouble(req.getParameter("valorPromocao")));

		FilmeDAO dao = new FilmeDAO(bd);

		try {
			dao.inserir(filme);
			// capturo a referência ao objeto Response utilizando a escrita PrintWriter
			PrintWriter gravador = resp.getWriter();

			// escrevendo o código HTML
			gravador.println("<html>");
			gravador.println("<head>");
			gravador.println("<title>Filme Gravado</title>");
			gravador.println("</head>");
			gravador.println("<body>");
			gravador.println("<h3>Filme gravado com sucesso!</h3><br><br>");
			gravador.println("Nome do Filme: " + req.getParameter("nome") + "<br>");
			gravador.println("Gênero do Filme: " + req.getParameter("genero") + "<br>");
			gravador.println("Valor do Filme: " + req.getParameter("valor") + "<br>");
			gravador.println("Disponível: " + req.getParameter("disponivel") + "<br>");
			gravador.println("Promoção: " + req.getParameter("promocao") + "<br>");
			gravador.println("Valor Promoção: " + req.getParameter("valorPromocao") + "<br><br>");
			gravador.println("<a href='http://localhost:8080/LocadoraWeb'>Voltar</a>");
			gravador.println("</body>");
			gravador.println("</html>");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
