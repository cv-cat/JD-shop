package com.entity;

public class Lunbo {
    private int autoID;
    private String pPic;
    private int type;

    public int getAutoID() {
        return autoID;
    }

    public void setAutoID(int autoID) {
        this.autoID = autoID;
    }

    public String getpPic() {
        return pPic;
    }

    public void setpPic(String pPic) {
        this.pPic = pPic;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Lunbo{" +
                "autoID=" + autoID +
                ", pPic='" + pPic + '\'' +
                ", type=" + type +
                '}';
    }
}
