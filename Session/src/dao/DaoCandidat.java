package dao;

import java.sql.SQLException;

public abstract interface DaoCandidat {
void creer_candidat();
void sup_candidat();
void aff() throws SQLException;
}
