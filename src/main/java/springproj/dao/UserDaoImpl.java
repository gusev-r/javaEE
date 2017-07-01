package springproj.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import springproj.model.User;

import java.util.List;

/**
 * Created by Pavel on 01.07.2017.
 */
@Repository
public class UserDaoImpl implements UserDao {

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<User> getAll() {
        return (List<User>)sessionFactory.getCurrentSession().createQuery("from User").list();
    }

    @Override
    public void addUser(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public void updateUser(User user) {
        sessionFactory.getCurrentSession().update(user);
    }

    @Override
    public User getById(int id) {
        return sessionFactory.getCurrentSession().get(User.class,id);
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        User user = session.get(User.class,id);
        if (user!=null){
            session.delete(user);
        }
    }

    @Override
    public List<User> getByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        Query q = session.createQuery("from User where name=:name").setString("name",name);
        return (List<User>)q.list();
    }

}
