package dao;

import beans.Client;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClientDAO extends DAO<Client> {

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

    @Override
    public List<Client> findAll() {
        StringBuilder requeteClient = new StringBuilder();
        requeteClient.append("SELECT * ");
        requeteClient.append("from CLIENT;");

        ArrayList<Client> clientsRes = new ArrayList<>();
        try (PreparedStatement ps = this.connect.prepareStatement(requeteClient.toString())) {
//            String c = "*";
//            ps.setString(1, "%" + c + "%");
            ResultSet resSet = ps.executeQuery();
            while (resSet.next()) {
                clientsRes.add(new Client(resSet.getString("client_nom"), resSet.getString("client_prenom"), resSet.getInt("client_id")));
            }
        } catch (SQLException sqlE) {
            System.out.println("Relation with DB error : " + sqlE.getMessage() + "SQL error code : " + sqlE.getSQLState());
        }
        return clientsRes;
    }

    @Override
    public List<Client> findByParam(String nom, String prenom) {

        StringBuilder requeteClient = new StringBuilder();
        requeteClient.append("SELECT * ");
        requeteClient.append("FROM CLIENT");
        requeteClient.append(" WHERE CLIENT_PRENOM LIKE ? ");
      requeteClient.append(" AND CLIENT_NOM LIKE ?;");

        ArrayList<Client> clientsRes = new ArrayList<>();
        try (PreparedStatement ps = this.connect.prepareStatement(requeteClient.toString())) {
            ps.setString(1, "%" + prenom + "%");
            ps.setString(2, "%" + nom + "%");
            ResultSet resSet = ps.executeQuery();
            while (resSet.next()) {
                clientsRes.add(new Client(resSet.getString("client_nom"), resSet.getString("client_prenom"), resSet.getInt("client_id")));
            }
        } catch (SQLException sqlE) {
            System.out.println("Relation with DB error : " + sqlE.getMessage() + "SQL error code : " + sqlE.getSQLState());
        }
        return clientsRes;
    }

    @Override
    public Client find(int client_id) {
        StringBuilder requeteClient = new StringBuilder();
        requeteClient.append("Select * from client ");
        requeteClient.append("where client_id = ?;");
        Client clientDetails = null;
        try (PreparedStatement ps = this.connect.prepareStatement(requeteClient.toString())) {
            ps.setInt(1, client_id);
            ResultSet resSet = ps.executeQuery();
            if (resSet.next()) {
                clientDetails = new Client(resSet.getString("client_nom"), resSet.getString("client_prenom"), resSet.getInt("client_id"));
            }
        } catch (SQLException sqlE) {
            System.out.println("Relation with DB error : " + sqlE.getMessage() + "SQL error code : " + sqlE.getSQLState());
        }
        return clientDetails;
    }


//    TODO pour valider modif client
    @Override
    public boolean update(Client obj) {
        return false;
    }

    @Override
    public boolean delete(Client obj) {
        return false;
    }
}
