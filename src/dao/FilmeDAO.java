package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import bean.Filme;

/**
 * @author jaraujo
 *
 */
public class FilmeDAO {

	private Connection bd;

	public FilmeDAO(Connection bd) {
		this.bd = bd;
	}

	public void inserir(Filme filme) throws SQLException {
		String SQL = "INSERT INTO filme (nome, genero, valor, disponivel, promocao, valor_promocao) VALUES (?,?,?,?,?,?)";
		PreparedStatement comando = bd.prepareStatement(SQL);
		comando.setString(1, filme.getNome());
		comando.setString(2, filme.getGenero());
		comando.setDouble(3, filme.getValor());
		comando.setString(4, filme.getDisponivel());
		comando.setString(5, filme.getPromocao());
		comando.setDouble(6, filme.getValorPromocao());
		comando.execute();

	}

	public void alterar(Filme filme) throws SQLException {
		String SQL = "UPDATE filme SET valor=?, disponivel=?, genero=?, promocao=?, valor_promocao=? WHERE nome=?";
		PreparedStatement comando = bd.prepareStatement(SQL);
		comando.setDouble(1, filme.getValor());
		comando.setString(2, filme.getDisponivel());
		comando.setString(3, filme.getGenero());
		comando.setString(4, filme.getPromocao());
		comando.setDouble(5, filme.getValorPromocao());
		comando.setString(6, filme.getNome());
		comando.execute();
	}

	public void excluir(Filme filme) throws SQLException {
		String SQL = "DELETE FROM filme WHERE nome=?";
		PreparedStatement comando = bd.prepareStatement(SQL);
		comando.setString(1, filme.getNome());
		comando.execute();
	}

	public List<Filme> buscarTodos() throws SQLException {
		String SQL = "SELECT * FROM filme ORDER BY nome";
		PreparedStatement comando = bd.prepareStatement(SQL);
		ResultSet cursor = comando.executeQuery();
		List<Filme> listaFilmes = new ArrayList<Filme>();

		while (cursor.next()) {
			Filme filme = new Filme();
			filme.setNome(cursor.getString("nome"));
			filme.setGenero(cursor.getString("genero"));
			filme.setValor(cursor.getDouble("valor"));
			filme.setDisponivel(cursor.getString("disponivel"));
			filme.setPromocao(cursor.getString("promocao"));
			filme.setValorPromocao(cursor.getDouble("valor_promocao"));
			listaFilmes.add(filme);

		}
		return listaFilmes;
	}

}
