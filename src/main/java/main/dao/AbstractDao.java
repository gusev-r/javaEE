package main.dao;

import java.util.List;

/**
 * Created by Pavel on 01.07.2017.
 */
public interface AbstractDao<T> {

    List<T> get();

}
