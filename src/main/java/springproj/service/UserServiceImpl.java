package springproj.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import springproj.dao.UserDao;
import springproj.model.User;

import java.util.List;

/**
 * Created by Pavel on 01.07.2017.
 */
@Service
public class UserServiceImpl implements UserService {

    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional
    public List<User> getAll() {
        return userDao.getAll();
    }

    @Override
    @Transactional
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    @Transactional
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    @Transactional
    public User getById(int id) {
        return userDao.getById(id);
    }

    @Override
    @Transactional
    public void delete(int id) {
        userDao.delete(id);
    }

    @Override
    @Transactional
    public List<User> getByName(String name) {
        return userDao.getByName(name);
    }

}
