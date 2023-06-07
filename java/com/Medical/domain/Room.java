package com.Medical.domain;

public class Room {
    private String room;//房间名
    private int bed;//床号
    private String about;//关于病房的具体信息
    private String state;//当前床位的情况：占用（有人），空床（无人），禁用

    public Room() {
    }

    public Room(String room, int bed, String about, String state) {
        this.room = room;
        this.bed = bed;
        this.about = about;
        this.state = state;
    }

    @Override
    public String toString() {
        return "Room{" +
                "room='" + room + '\'' +
                ", bed='" + bed + '\'' +
                ", about='" + about + '\'' +
                ", state='" + state + '\'' +
                '}';
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

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
