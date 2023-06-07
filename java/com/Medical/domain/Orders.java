package com.Medical.domain;

import org.springframework.format.annotation.DateTimeFormat;


public class Orders {
    private int id;//订单编号
    private String uid;//用户id
    private int wid;//workday（工作日id）id  用来查workday中的信息
    private String pid;//就诊人id
    private String pname;//就诊人姓名
    private int doc_id;//预约的医生的id
    private String doc_name;//预约的医生的姓名
    private String dept_name;//预约的科室姓名
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String visitDate;//预约的来看病的日期
    private String visitNoon;//预约的上下午
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String dateTime;//产生订单的时间 年-月-日 小时-分钟-秒
    private String state;//三种预约状态：预约成功，预约取消，预约完成（完成看诊结束后）

    public Orders(int id, String uid, int wid, String pid, String pname, int doc_id, String doc_name, String dept_name, String visitDate, String visitNoon, String dateTime, String state) {
        this.id = id;
        this.uid = uid;
        this.wid = wid;
        this.pid = pid;
        this.pname = pname;
        this.doc_id = doc_id;
        this.doc_name = doc_name;
        this.dept_name = dept_name;
        this.visitDate = visitDate;
        this.visitNoon = visitNoon;
        this.dateTime = dateTime;
        this.state = state;
    }

    public Orders() {
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", wid=" + wid +
                ", uid='" + uid + '\'' +
                ", pid='" + pid + '\'' +
                ", pname='" + pname + '\'' +
                ", doc_id=" + doc_id +
                ", doc_name='" + doc_name + '\'' +
                ", dept_name='" + dept_name + '\'' +
                ", visitDate='" + visitDate + '\'' +
                ", visitNoon='" + visitNoon + '\'' +
                ", dateTime='" + dateTime + '\'' +
                ", state='" + state + '\'' +
                '}';
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getDoc_name() {
        return doc_name;
    }

    public void setDoc_name(String doc_name) {
        this.doc_name = doc_name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getVisitDate() {
        return visitDate;
    }

    public void setVisitDate(String visitDate) {
        this.visitDate = visitDate;
    }

    public String getVisitNoon() {
        return visitNoon;
    }

    public void setVisitNoon(String visitNoon) {
        this.visitNoon = visitNoon;
    }

    public String getDateTime() {
        return dateTime;
    }

    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

}
