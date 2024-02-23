package dao;

import java.sql.Connection;
import java.util.List;

public abstract class DAO<T> {

    protected Connection connect = singletonDAO.getInstanceDB();

    public abstract boolean create (T obj);
    // créer un objet

    public abstract List<T> findAll();
//     retourne les objets recherchés sous forme de liste

    public abstract List<T> findByParam(String param1, String param2);

    public abstract T find(int param);
    // retourne les objets recherchés

    public abstract void update (T obj);
    // modifier un objet

    public abstract void delete (T obj);
    // supprimer un objet

}
