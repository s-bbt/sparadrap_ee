package dao;

import beans.Client;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ClientDAO extends DAO {
//  TODO connexion
//  TODO CRUD

    public Client chercheClient(String c) throws SQLException {
        Client client;
        StringBuilder requeteClient = new StringBuilder();
        requeteClient.append("SELECT ? ");
        requeteClient.append("from CLIENT ;");

        try (PreparedStatement ps = this.connect.prepareStatement(requeteClient.toString())) {
            c = "*";
            ps.setString(1, "%" + c + "%");
            ResultSet resSet = ps.executeQuery();
            while (resSet.next()) {
                client = (new Client(resSet.getString("client_nom"), resSet.getString("client_prenom")));
            }
        } catch (SQLException sqlE) {
            System.out.println("Relation with DB error : " + sqlE.getMessage() + "SQL error code : " + sqlE.getSQLState());
        }
        return client;
    }
// TODO corriger return client
}
