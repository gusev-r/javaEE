package main.utils;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by Pavel on 01.07.2017.
 */
public class DaoUtil {

    public static Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
//            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/contacts?encoding=UTF-8&useUnicode=true&characterEncoding=UTF-8&user=root&password=root");
            Context context = new InitialContext();
            Context initContext  = (Context )context.lookup("java:/comp/env");
            DataSource ds = (DataSource) initContext.lookup("jdbc/contacts");
            connection = ds.getConnection();
        }catch (SQLException | NamingException ex){
            ex.printStackTrace();
        }
        return connection;
    }

}
