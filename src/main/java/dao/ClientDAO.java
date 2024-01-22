package dao;

import beans.Client;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClientDAO extends DAO<Client> {
//  TODO connexion
//  TODO create + delete + update

    @Override
    public boolean create(Client obj) {
        StringBuilder requeteClient = new StringBuilder();
        requeteClient.append("insert into CLIENT (CLIENT_NOM, CLIENT_PRENOM) ");
        requeteClient.append("values (?, ?);");
        try (PreparedStatement ps = this.connect.prepareStatement(requeteClient.toString())) {
            ps.setString(1, obj.getClient_nom());
            ps.setString(2, obj.getClient_prenom());
            ps.executeUpdate();
        } catch (SQLException sqlE) {
            System.out.println("Relation with DB error : " + sqlE.getMessage() + "SQL error code : " + sqlE.getSQLState());
        }
        return false;
    }


    public ArrayList<Client> findAll(String nom, String prenom) {

        StringBuilder requeteClient = new StringBuilder();
        requeteClient.append("SELECT * ");
        requeteClient.append("FROM CLIENT ");
        requeteClient.append(" WHERE CLIENT_PRENOM LIKE ? ");
        requeteClient.append(" AND CLIENT_NOM LIKE ?;");

        ArrayList<Client> clientsRes = new ArrayList<>();
        try (PreparedStatement ps = this.connect.prepareStatement(requeteClient.toString())) {
            ps.setString(1, "%" + nom + "%");
            ps.setString(2, "%" + prenom + "%");
            ResultSet resSet = ps.executeQuery();
            while (resSet.next()) {
                clientsRes.add(new Client(resSet.getString("client_nom"), resSet.getString("client_prenom")));
            }
        } catch (SQLException sqlE) {
            System.out.println("Relation with DB error : " + sqlE.getMessage() + "SQL error code : " + sqlE.getSQLState());
        }
        return clientsRes;
    }

    @Override
    public Client find() {
        return null;
    }

    //    TODO
    @Override
    public boolean update(Client obj) {
        return false;
    }

    @Override
    public boolean delete(Client obj) {
        return false;
    }
}
