package com.Medical.domain;

import org.springframework.format.annotation.DateTimeFormat;

public class WorkDay {
    public int id;
    public int doc_id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public String workTime;//医生工作日
    public String ampm;//上午下午
    public int nsnum;//医生这天上午或者下午的号源数
    public String state;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    public String getWorkTime() {
        return workTime;
    }

    public void setWorkTime(String workTime) {
        this.workTime = workTime;
    }

    public String getAmpm() {
        return ampm;
    }

    public void setAmpm(String ampm) {
        this.ampm = ampm;
    }

    public int getNsnum() {
        return nsnum;
    }

    public void setNsnum(int nsnum) {
        this.nsnum = nsnum;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public WorkDay() {
    }

    public WorkDay(int id, int doc_id, String workTime, String ampm, int nsnum, String state) {
        this.id = id;
        this.doc_id = doc_id;
        this.workTime = workTime;
        this.ampm = ampm;
        this.nsnum = nsnum;
        this.state = state;
    }

    @Override
    public String toString() {
        return "WorkDay{" +
                "id=" + id +
                ", doc_id='" + doc_id + '\'' +
                ", workTime='" + workTime + '\'' +
                ", ampm='" + ampm + '\'' +
                ", nsnum='" + nsnum + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
