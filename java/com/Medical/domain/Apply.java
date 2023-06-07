package com.Medical.domain;

import org.springframework.format.annotation.DateTimeFormat;

//医生发的调整上班时间apply
public class Apply {
    private int id;
    private int doc_id;
    private String doc_name;//医生姓名
    private int wid;
    private String reason;//原因
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String applyTime;
    private String request;//状态：申请出诊，申请停诊
    private String state;//状态：等待处理，同意，拒绝

    public Apply(int id, int doc_id, String doc_name, int wid, String reason, String applyTime, String request, String state) {
        this.id = id;
        this.doc_id = doc_id;
        this.doc_name = doc_name;
        this.wid = wid;
        this.reason = reason;
        this.applyTime = applyTime;
        this.request = request;
        this.state = state;
    }

    public Apply() {
    }

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

    public String getDoc_name() {
        return doc_name;
    }

    public void setDoc_name(String doc_name) {
        this.doc_name = doc_name;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(String applyTime) {
        this.applyTime = applyTime;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Apply{" +
                "id=" + id +
                ", doc_id='" + doc_id + '\'' +
                ", doc_name='" + doc_name + '\'' +
                ", workday_id=" + wid +
                ", reason='" + reason + '\'' +
                ", applyTime='" + applyTime + '\'' +
                ", request='" + request + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
