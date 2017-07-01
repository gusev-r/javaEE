package main.dao;

import main.model.Contact;
import main.utils.DaoUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Pavel on 01.07.2017.
 */
public class ContactDao implements AbstractDao<Contact> {

    private final static String GET_ALL = "select contact_id,last_name,first_name,email,gender,birhday,phone FROM my_contacts;";


    @Override
    public List<Contact> get() {
        List<Contact> contacts = null;
        try (
            Connection connection = DaoUtil.getConnection();
            PreparedStatement statement = connection.prepareStatement(GET_ALL);
            ResultSet rs = statement.executeQuery()
        ){
            contacts = new ArrayList<>();
            while (rs.next()){
                Contact contact = new Contact();
                contacts.add(getContactFromResult(rs,contact));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return contacts;
    }
    private Contact getContactFromResult(ResultSet rs, Contact contact) throws SQLException{
        contact.setContactId(rs.getInt("contact_id"));
        contact.setFirstName(rs.getString("first_name"));
        contact.setLastName(rs.getString("last_name"));
        contact.setEmail(rs.getString("email"));
        contact.setGender(rs.getString("gender"));
        contact.setDate(rs.getDate("birhday"));
        contact.setPhone(rs.getString("phone"));
        return contact;
    }
}
