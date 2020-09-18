package testes;

import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import daoImplement.Candidat;
import daoImplement.Connexion;

public class Test {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
Connexion c=new Connexion();
Candidat cd=new Candidat("khalil","20744351","Aucune","formateur",30);
//cd.creer_candidat();
//cd.sup_candidat();
cd.aff();
	}
	
}
