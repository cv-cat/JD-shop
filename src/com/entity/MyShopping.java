package com.entity;

import java.util.Date;

public class MyShopping {
    private int autoID;
    private int pID;
    private int buyCount;
    private String uName;
    private int state;
    private Date buyTime;

    public int getAutoID() {
        return autoID;
    }

    public void setAutoID(int autoID) {
        this.autoID = autoID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getBuyCount() {
        return buyCount;
    }

    public void setBuyCount(int buyCount) {
        this.buyCount = buyCount;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Date getBuyTime() {
        return buyTime;
    }

    public void setBuyTime(Date buyTime) {
        this.buyTime = buyTime;
    }

    @Override
    public String toString() {
        return "MyShopping{" +
                "autoID=" + autoID +
                ", pID=" + pID +
                ", buyCount=" + buyCount +
                ", uName='" + uName + '\'' +
                ", state=" + state +
                ", buyTime=" + buyTime +
                '}';
    }
}
