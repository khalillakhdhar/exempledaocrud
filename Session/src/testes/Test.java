package testes;

import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

import daoImplement.Connexion;

public class Test {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
Connexion c=new Connexion();
//aff();
	}
	/*private static void aff() throws SQLException
	{
	Connexion c=new Connexion();
	PreparedStatement pst;
	pst = (PreparedStatement) c.conn.prepareStatement("SELECT * FROM formation");
	pst.executeQuery();
	ResultSet rs = (ResultSet) pst.executeQuery();
	while(rs.next())
	{
		System.out.println(rs.getString("titre"));
	}
	}*/

}
