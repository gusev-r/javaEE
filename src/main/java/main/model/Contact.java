package main.model;

import java.sql.Date;

/**
 * Created by Pavel on 01.07.2017.
 */
public class Contact {

    private int contactId;
    private String lastName;
    private String firstName;
    private String email;
    private String gender;
    private Date date;
    private String phone;
//    private Zip zip;
//    private Profession profession;

    public Contact(){

    }

    public Contact(int contactId, String lastName, String firstName, String email, String gender, Date date, String phone) {
        this.contactId = contactId;
        this.lastName = lastName;
        this.firstName = firstName;
        this.email = email;
        this.gender = gender;
        this.date = date;
        this.phone = phone;
    }

    //    public Contact(String lastName, String firstName, String email, String gender, Date date, String phone, Zip zip, Profession profession) {
//        this.lastName = lastName;
//        this.firstName = firstName;
//        this.email = email;
//        this.gender = gender;
//        this.date = date;
//        this.phone = phone;
//        this.profession = profession;
//        this.zip = zip;
//    }
//
//    public Contact(String lastName, String firstName, String email, String gender, Date date, String phone) {
//        this.lastName = lastName;
//        this.firstName = firstName;
//        this.email = email;
//        this.gender = gender;
//        this.date = date;
//        this.phone = phone;
//    }

    public int getContactId() {
        return contactId;
    }

    public void setContactId(int contactId) {
        this.contactId = contactId;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

//    public Profession getProfession() {
//        return profession;
//    }
//
//    public void setProfession(Profession profession) {
//        this.profession = profession;
//    }
//
//    public Zip getZip() {
//        return zip;
//    }
//
//    public void setZip(Zip zip) {
//        this.zip = zip;
//    }



}
