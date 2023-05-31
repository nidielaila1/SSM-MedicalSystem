package com.Medical.domain;

public class Patients {
    public String id;
    public String pname;
    public String gender;
    public String con;
    public String uid;

    public Patients() {
    }

    public Patients(String id, String pname, String gender, String con, String uid) {
        this.id = id;
        this.pname = pname;
        this.gender = gender;
        this.con = con;
        this.uid = uid;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getCon() {
        return con;
    }

    public void setCon(String con) {
        this.con = con;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "Patients{" +
                "id='" + id + '\'' +
                ", name='" + pname + '\'' +
                ", con='" + con + '\'' +
                ", uid='" + uid + '\'' +
                '}';
    }
}
