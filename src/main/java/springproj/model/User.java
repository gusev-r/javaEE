package springproj.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Pavel on 01.07.2017.
 */
@Entity
@Table(name = "user")
public class User {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id")
        private int id;
        @Column(name = "name")
        private String name;
        @Column(name = "isAdmin")
        private boolean isAdmin;
        @Column(name = "age")
        private int age;
        @Column(name = "createDate")
        private Date createDate =  new Date();

        public User() {
        }

        public User(String name, boolean isAdmin, int age, Date createDate) {
            this.name = name;
            this.isAdmin = isAdmin;
            this.age = age;
            this.createDate = createDate;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public boolean isAdmin() {
            return isAdmin;
        }

        public void setAdmin(boolean admin) {
            isAdmin = admin;
        }

        public Date getCreateDate() {
            return createDate;
        }

        public void setCreateDate(Date createDate) {
            this.createDate = createDate;
        }

        public void setAge(int age) {
            this.age = age;
        }

        public int getAge() {
            return age;
        }
    }

