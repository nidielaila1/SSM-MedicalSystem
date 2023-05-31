package com.Medical.domain;

import org.springframework.format.annotation.DateTimeFormat;

public class OperationRequest {
    private int id;
    private int hosStay_id;//住院信息id
    private int doc_id;//医生id
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String operationTime;//手术时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String applyTime;//申请时间
    private String state;//状态

    public OperationRequest(int id, int hosStay_id, int doc_id, String operationTime, String applyTime, String state) {
        this.id = id;
        this.hosStay_id = hosStay_id;
        this.doc_id = doc_id;
        this.operationTime = operationTime;
        this.applyTime = applyTime;
        this.state = state;
    }

    public OperationRequest() {
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

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    public String getOperationTime() {
        return operationTime;
    }

    public void setOperationTime(String operationTime) {
        this.operationTime = operationTime;
    }

    public String getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(String applyTime) {
        this.applyTime = applyTime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "OperationRequest{" +
                "id=" + id +
                ", hosStay_id=" + hosStay_id +
                ", doc_id=" + doc_id +
                ", operationTime='" + operationTime + '\'' +
                ", applyTime='" + applyTime + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
