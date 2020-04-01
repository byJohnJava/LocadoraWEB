package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import bean.Vendedor;


public class VendedorDAO {

	private Connection bd;

	public VendedorDAO(Connection bd) {
		this.bd = bd;
	}

	public void inserir(Vendedor vendedor) throws SQLException {
		String SQL = "INSERT INTO Vendedor (nome, area_venda, cidade, estado, sexo, idade, salario) VALUES (?,?,?,?,?,?,?)";
		PreparedStatement comando = bd.prepareStatement(SQL);
		comando.setString(1, vendedor.getNome());
		comando.setString(2, vendedor.getAreaVenda());
		comando.setString(3, vendedor.getCidade());
		comando.setString(4, vendedor.getEstado());
		comando.setString(5, Character.toString(vendedor.getSexo()));
		comando.setInt(6, vendedor.getIdade());
		comando.setDouble(7, vendedor.getSalario());
		comando.execute();
	}

	public void alterar(Vendedor vendedor) throws SQLException {
		String SQL = "UPDATE Vendedor SET area_venda=?, cidade=?, estado=?, salario=? WHERE nome=?";
		PreparedStatement comando = bd.prepareStatement(SQL);
		comando.setString(1, vendedor.getAreaVenda());
		comando.setString(2, vendedor.getCidade());
		comando.setString(3, vendedor.getEstado());
		comando.setDouble(4, vendedor.getSalario());
		comando.setString(5, vendedor.getNome());
		comando.execute();
	}

	public void excluir(Vendedor vendedor) throws SQLException {
		String SQL = "DELETE FROM vendedor WHERE nome=?";
		PreparedStatement comando = bd.prepareStatement(SQL);
		comando.setString(1, vendedor.getNome());
		comando.execute();
	}
	
	   public List<Vendedor> buscarTodos() throws SQLException {
	        String SQL = "SELECT * FROM vendedor ORDER BY nome";
	        PreparedStatement comando = bd.prepareStatement(SQL);
	        ResultSet cursor = comando.executeQuery();
	        List<Vendedor> listaVendedores = new ArrayList<Vendedor>();

	        while (cursor.next()) {
	            Vendedor vendedor = new Vendedor();
	            vendedor.setNome(cursor.getString("nome"));
	            vendedor.setAreaVenda(cursor.getString("area_venda"));
	            vendedor.setCidade(cursor.getString("cidade"));
	            vendedor.setEstado(cursor.getString("estado"));
	            vendedor.setSexo(cursor.getString("sexo").charAt(0));
	            vendedor.setIdade(cursor.getInt("idade"));
	            vendedor.setSalario(cursor.getDouble("salario"));
	            listaVendedores.add(vendedor);

	        }
	        return listaVendedores;
	    }

}
