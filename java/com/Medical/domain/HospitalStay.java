package com.Medical.domain;

import org.springframework.format.annotation.DateTimeFormat;

public class HospitalStay {
    private int id;//住院id
    private int adm_id;//住院证明id
    private String room;//房间信息
    private int bed;//床位号
    private String state;//住院状态：住院，出院
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String admissionDate;//入院日期
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String dischargeTime;//出院日期

    public HospitalStay(int id, int adm_id, String room, int bed, String state, String admissionDate, String dischargeDate) {
        this.id = id;
        this.adm_id = adm_id;
        this.room = room;
        this.bed = bed;
        this.state = state;
        this.admissionDate = admissionDate;
        this.dischargeTime = dischargeDate;
    }

    public HospitalStay() {
    }


    @Override
    public String toString() {
        return "HospitalStay{" +
                "id=" + id +
                ", adm_id=" + adm_id +
                ", room='" + room + '\'' +
                ", bed=" + bed +
                ", state='" + state + '\'' +
                ", admissionDate='" + admissionDate + '\'' +
                ", dischargeDate='" + dischargeTime + '\'' +
                '}';
    }

    public String getAdmissionDate() {
        return admissionDate;
    }

    public void setAdmissionDate(String admissionDate) {
        this.admissionDate = admissionDate;
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

    public int getAdm_id() {
        return adm_id;
    }

    public void setAdm_id(int adm_id) {
        this.adm_id = adm_id;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public int getBed() {
        return bed;
    }

    public void setBed(int bed) {
        this.bed = bed;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

}
