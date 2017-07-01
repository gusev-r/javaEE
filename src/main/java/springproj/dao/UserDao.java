package springproj.dao;

import springproj.model.User;

import java.util.List;

/**
 * Created by Pavel on 01.07.2017.
 */
public interface UserDao {

    List<User> getAll();

    void addUser(User user);

    void updateUser(User user);

    User getById(int id);

    void delete(int id);

    List<User> getByName(String name);

}
