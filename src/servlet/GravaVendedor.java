package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import bean.Vendedor;
import dao.VendedorDAO;
import util.ConnectionFactory;

	
	public class GravaVendedor extends HttpServlet {

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			Connection bd = ConnectionFactory.getConnection();
			Vendedor vendedor = new Vendedor();
			vendedor.setNome(req.getParameter("nome"));
			vendedor.setAreaVenda(req.getParameter("areaVenda"));
			vendedor.setCidade(req.getParameter("cidade"));
			vendedor.setEstado(req.getParameter("estado"));
			vendedor.setSexo(req.getParameter("sexo").charAt(0));
			vendedor.setIdade(Integer.parseInt(req.getParameter("idade")));
			vendedor.setSalario(Double.parseDouble(req.getParameter("salario")));
			

			VendedorDAO dao = new VendedorDAO(bd);

			try {
				dao.inserir(vendedor);
				// capturo a referência ao objeto Response utilizando a escrita PrintWriter
				PrintWriter gravador = resp.getWriter();

				// escrevendo o código HTML
				gravador.println("<html>");
				gravador.println("<head>");
				gravador.println("<title>Vendedor Gravado</title>");
				gravador.println("</head>");
				gravador.println("<body>");
				gravador.println("<h3>Vendedor gravado com sucesso!</h3><br><br>");
				gravador.println("Nome do vendedor: " + req.getParameter("nome") + "<br>");
				gravador.println("Área do vendedor: " + req.getParameter("areaVenda") + "<br>");
				gravador.println("Cidade: " + req.getParameter("cidade") + "<br>");
				gravador.println("Estado: " + req.getParameter("estado") + "<br>");
				gravador.println("Sexo: " + req.getParameter("sexo") + "<br>");
				gravador.println("Idade: " + req.getParameter("idade") + "<br>");
				gravador.println("Salário: " + req.getParameter("salario") + "<br><br>");
				gravador.println("<a href='http://localhost:8080/LocadoraWeb'>Voltar</a>");
				gravador.println("</body>");
				gravador.println("</html>");

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

	}


