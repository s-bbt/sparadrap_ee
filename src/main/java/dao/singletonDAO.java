package dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class singletonDAO {

    private static final String PATHCONF = "C:\\Users\\User-11\\IdeaProjects\\Sparadrap_ee\\src\\main\\webapp\\WEB-INF\\META-INF\\dao.properties";
    private static final Properties props = new Properties();
    private static Connection connection;

    private singletonDAO() {

        // chargement du fichier de configuration
        FileInputStream file;
        try {
            file = new FileInputStream(PATHCONF);
            props.load(file);

            // informations de connexion
            props.setProperty("user", props.getProperty("jdbc.user"));
            props.setProperty("password", props.getProperty("jdbc.password"));

            // chargement du driver
            Class.forName(props.getProperty("jdbc.driver"));
            connection = DriverManager.getConnection(props.getProperty("jdbc.url"), props);
        } catch (SQLException | ClassNotFoundException | IOException e) {
            e.printStackTrace();
        }
    }

    private static Connection getConnection() {
        return connection;
    }

	/* singleton
	@return connection*/

    public static Connection getInstanceDB() {
        if (getConnection() == null) {
            new singletonDAO();
            System.out.println("RelationWithDB infos : Connection established");
        } else {
            System.out.println("RelationWithDB infos : Connection already existing");
        }
        return getConnection();
    }

    // close connection
    public static void closeInstanceDB() {
        try {
            singletonDAO.getConnection().close();
            System.out.println("RelationWithDB infos : Connection terminated");
        } catch (SQLException sqlE) {
            System.out.println(
                    "RelationWithDB error : " + sqlE.getMessage() + "[SQL error code : "
                            + sqlE.getSQLState() + " ]");
        }
    }

//	public static void main (String[] args) {
//		try {
//			Connection connect = singletonDAO.getInstanceDB();
//			System.out.println(connect);
//		}
//	}

}
