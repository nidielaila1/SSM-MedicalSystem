package com.Medical.domain;

public class Admin {
    private String account;
    private String password;
    private String admin_name;

    public Admin(String account, String password, String admin_name) {
        this.account = account;
        this.password = password;
        this.admin_name = admin_name;
    }

    public Admin() {
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", admin_name='" + admin_name + '\'' +
                '}';
    }
}
