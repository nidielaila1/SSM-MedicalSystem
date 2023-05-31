package com.Medical.domain;

import org.springframework.format.annotation.DateTimeFormat;

public class Operation {
    private int id;
    private int or_id;//手术申请信息id
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String operationTime;//手术时间

    public Operation(int id, int or_id, String operationTime) {
        this.id = id;
        this.or_id = or_id;
        this.operationTime = operationTime;
    }

    public Operation() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOr_id() {
        return or_id;
    }

    public void setOr_id(int or_id) {
        this.or_id = or_id;
    }

    public String getOperationTime() {
        return operationTime;
    }

    public void setOperationTime(String operationTime) {
        this.operationTime = operationTime;
    }

    @Override
    public String toString() {
        return "Operation{" +
                "id=" + id +
                ", or_id=" + or_id +
                ", operationTime='" + operationTime + '\'' +
                '}';
    }
}
