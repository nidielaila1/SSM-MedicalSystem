package com.Medical.domain;

import org.springframework.format.annotation.DateTimeFormat;

public class OperationInfo {
    private int id;
    private String pid;//就诊人身份证id
    private String pname;//就诊人姓名
    private int or_id;//手术申请信息id
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String operationTime;//手术时间

    public OperationInfo(int id, String pid, String pname, int or_id, String operationTime) {
        this.id = id;
        this.pid = pid;
        this.pname = pname;
        this.or_id = or_id;
        this.operationTime = operationTime;
    }

    public OperationInfo() {
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
        return "OperationInfo{" +
                "id=" + id +
                ", pid='" + pid + '\'' +
                ", pname='" + pname + '\'' +
                ", or_id=" + or_id +
                ", operationTime='" + operationTime + '\'' +
                '}';
    }
}
