package com.Medical.domain;

public class Users {

    public String id;
    public String username;
    public String phone;
    public String gender;
    public String password;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Users(String id, String username, String phone, String gender, String password) {
        this.id = id;
        this.username = username;
        this.phone = phone;
        this.gender = gender;
        this.password = password;
    }

    public Users() {
    }

    @Override
    public String toString() {
        return "Users{" +
                "id='" + id + '\'' +
                ", name='" + username + '\'' +
                ", phone='" + phone + '\'' +
                ", gender='" + gender + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
