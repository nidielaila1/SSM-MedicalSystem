package com.Medical.domain;

import org.springframework.format.annotation.DateTimeFormat;

//医生发的让病人住院的申请
public class Admission {
    private int id;
    private String pid;//患者id
    private String pname;//患者姓名
    private String dept_name;//科室名称
    private int doc_id;//医生id
    private String reason;//申请原因
    private String state;//当前申请状态： 等待处理，成功，拒绝

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String applyTime;//申请时间

    public Admission(int id, String pid, String pname, String dept_name, int doc_id, String reason, String state, String applyTime) {
        this.id = id;
        this.pid = pid;
        this.pname = pname;
        this.dept_name = dept_name;
        this.doc_id = doc_id;
        this.reason = reason;
        this.state = state;
        this.applyTime = applyTime;
    }

    public Admission() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(String applyTime) {
        this.applyTime = applyTime;
    }

    @Override
    public String toString() {
        return "Admission{" +
                "id=" + id +
                ", pid='" + pid + '\'' +
                ", pname='" + pname + '\'' +
                ", dept_name='" + dept_name + '\'' +
                ", doc_id=" + doc_id +
                ", reason='" + reason + '\'' +
                ", state='" + state + '\'' +
                ", applytime='" + applyTime + '\'' +
                '}';
    }
}
