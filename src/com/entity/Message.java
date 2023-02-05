package com.entity;

public class Message {
    private int autoID;
    private String satisfied;
    private String idea;
    private String name;
    private String phone;
    public  Message(){
        super();
    }
    public Message(String satisfied, String idea, String name, String phone) {
        this.satisfied = satisfied;
        this.idea = idea;
        this.name = name;
        this.phone = phone;
    }

    public int getAutoID() {
        return autoID;
    }

    public void setAutoID(int autoID) {
        this.autoID = autoID;
    }

    public String getSatisfied() {
        return satisfied;
    }

    public void setSatisfied(String satisfied) {
        this.satisfied = satisfied;
    }

    public String getIdea() {
        return idea;
    }

    public void setIdea(String idea) {
        this.idea = idea;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Message{" +
                "autoID=" + autoID +
                ", satisfied='" + satisfied + '\'' +
                ", idea='" + idea + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
