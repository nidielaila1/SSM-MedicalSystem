package com.Medical.domain;

import org.springframework.format.annotation.DateTimeFormat;

//医生发的病人的出院申请
public class HosApply {
    private int id;
    private int doc_id;//医生id
    private int hosStay_id;//住院信息id
    private String state;//请求出院状态：等待处理，完成
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String applyTime;//申请时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String dischargeTime;//出院时间

    public HosApply(int id, int doc_id, int hosStay_id, String state, String applyTime, String dischargeTime) {
        this.id = id;
        this.doc_id = doc_id;
        this.hosStay_id = hosStay_id;
        this.state = state;
        this.applyTime = applyTime;
        this.dischargeTime = dischargeTime;
    }
    public HosApply() {
    }

    @Override
    public String toString() {
        return "HosApply{" +
                "id=" + id +
                ", doc_id=" + doc_id +
                ", hosStay_id=" + hosStay_id +
                ", state='" + state + '\'' +
                ", applyTime='" + applyTime + '\'' +
                ", dischargeTime='" + dischargeTime + '\'' +
                '}';
    }

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    public String getDischargeTime() {
        return dischargeTime;
    }

    public void setDischargeTime(String dischargeTime) {
        this.dischargeTime = dischargeTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getHosStay_id() {
        return hosStay_id;
    }

    public void setHosStay_id(int hosStay_id) {
        this.hosStay_id = hosStay_id;
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
}
