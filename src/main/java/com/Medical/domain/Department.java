package com.Medical.domain;

public class Department {
    private int id;//科室id
    private String dept_name;//科室名称
    private int doctor_num;//科室中医生的数量
    private String dept_about;//科室的信息
    private String dept_diagnosis_scope;//科室诊断范围

    public Department(int id, String dept_name, int doctor_num, String dept_about, String dept_diagnosis_scope) {
        this.id = id;
        this.dept_name = dept_name;
        this.doctor_num = doctor_num;
        this.dept_about = dept_about;
        this.dept_diagnosis_scope = dept_diagnosis_scope;
    }

    public Department() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Department{" +
                "id=" + id +
                ", dept_name='" + dept_name + '\'' +
                ", doctor_num=" + doctor_num +
                ", dept_about='" + dept_about + '\'' +
                ", dept_diagnosis_scope='" + dept_diagnosis_scope + '\'' +
                '}';
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public int getDoctor_num() {
        return doctor_num;
    }

    public void setDoctor_num(int doctor_num) {
        this.doctor_num = doctor_num;
    }

    public String getDept_about() {
        return dept_about;
    }

    public void setDept_about(String dept_about) {
        this.dept_about = dept_about;
    }

    public String getDept_diagnosis_scope() {
        return dept_diagnosis_scope;
    }

    public void setDept_diagnosis_scope(String dept_diagnosis_scope) {
        this.dept_diagnosis_scope = dept_diagnosis_scope;
    }


}
