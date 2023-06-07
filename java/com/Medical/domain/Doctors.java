package com.Medical.domain;

public class Doctors {
    public int id;
    private String account;
    private String password;
    private String doc_name;//医生姓名
    private String doctor_gender;//医生性别
    private String doctor_title;//医生职称
    private String dept_name;//属于科室名称
    private String doctor_career;//医生的
    private String doctor_about;//医生简介
    private int deptid;

    public Doctors() {
    }

    public Doctors(int id, String account, String password, String doc_name, String doctor_gender, String doctor_title, String dept_name, String doctor_career, String doctor_about, int deptid) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.doc_name = doc_name;
        this.doctor_gender = doctor_gender;
        this.doctor_title = doctor_title;
        this.dept_name = dept_name;
        this.doctor_career = doctor_career;
        this.doctor_about = doctor_about;
        this.deptid = deptid;
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

    @Override
    public String toString() {
        return "Doctors{" +
                "id=" + id +
                ", username='" + account + '\'' +
                ", password='" + password + '\'' +
                ", doc_name='" + doc_name + '\'' +
                ", doctor_gender='" + doctor_gender + '\'' +
                ", doctor_title='" + doctor_title + '\'' +
                ", dept_name='" + dept_name + '\'' +
                ", doctor_career='" + doctor_career + '\'' +
                ", doctor_about='" + doctor_about + '\'' +
                ", deptid=" + deptid +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDoc_name() {
        return doc_name;
    }

    public void setDoc_name(String doc_name) {
        this.doc_name = doc_name;
    }

    public String getDoctor_gender() {
        return doctor_gender;
    }

    public void setDoctor_gender(String doctor_gender) {
        this.doctor_gender = doctor_gender;
    }

    public String getDoctor_title() {
        return doctor_title;
    }

    public void setDoctor_title(String doctor_title) {
        this.doctor_title = doctor_title;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getDoctor_career() {
        return doctor_career;
    }

    public void setDoctor_career(String doctor_career) {
        this.doctor_career = doctor_career;
    }

    public String getDoctor_about() {
        return doctor_about;
    }

    public void setDoctor_about(String doctor_about) {
        this.doctor_about = doctor_about;
    }

    public int getDeptid() {
        return deptid;
    }

    public void setDeptid(int deptid) {
        this.deptid = deptid;
    }

}
