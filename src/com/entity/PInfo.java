package com.entity;

public class PInfo {
    private int pID;
    private String pName;
    private String pPhoto;
    private float price;
    private int number;
    private int type;
    private int comments;

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpPhoto() {
        return pPhoto;
    }

    public void setpPhoto(String pPhoto) {
        this.pPhoto = pPhoto;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getComments() {
        return comments;
    }

    public void setComments(int comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "PInfo{" +
                "pID=" + pID +
                ", pName='" + pName + '\'' +
                ", pPhoto='" + pPhoto + '\'' +
                ", price=" + price +
                ", number=" + number +
                ", type=" + type +
                ", comments=" + comments +
                '}';
    }
}
