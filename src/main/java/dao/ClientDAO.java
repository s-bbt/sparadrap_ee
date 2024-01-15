package dao;

import beans.Client;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ClientDAO extends DAO<Object> {
//  TODO connexion
//  TODO create + delete + update

    @Override
    public boolean create(Object obj) {
        return false;
    }

    @Override
    public List<Object> find() {
        StringBuilder requeteClient = new StringBuilder();
        requeteClient.append("SELECT ? ");
        requeteClient.append("from CLIENT ;");

        Client clientsRes = null;
        try (PreparedStatement ps = this.connect.prepareStatement(requeteClient.toString())) {
            String c = "*";
            ps.setString(1, "%" + c + "%");
            ResultSet resSet = ps.executeQuery();
            while (resSet.next()) {
                clientsRes = (new Client(resSet.getString("client_nom"), resSet.getString("client_prenom")));
            }
        } catch (SQLException sqlE) {
            System.out.println("Relation with DB error : " + sqlE.getMessage() + "SQL error code : " + sqlE.getSQLState());
        }
        return (List) clientsRes;
    }

    @Override
    public boolean update(Object obj) {
        return false;
    }

    @Override
    public boolean delete(Object obj) {
        return false;
    }
}
