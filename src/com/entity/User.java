package com.entity;

import java.util.Date;

public class User {
    private String tel;
    private String email;
    private String userName;
    private String userPwd;
    private String head;
    private Date regTime;
    private String sex;
    public User(){
        super();
    }
    public User(String tel,String email, String userName, String userPwd, String head, Date regTime, String sex) {
        this.tel = tel;
        this.email = email;
        this.userName = userName;
        this.userPwd = userPwd;
        this.head = head;
        this.regTime = regTime;
        this.sex = sex;
    }

    public User(String tel, String userPwd) {
        this.tel = tel;
        this.userPwd = userPwd;
    }
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public Date getRegTime() {
        return regTime;
    }

    public void setRegTime(Date regTime) {
        this.regTime = regTime;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "User{" +
                "tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", head='" + head + '\'' +
                ", regTime=" + regTime +
                ", sex='" + sex + '\'' +
                '}';
    }
}
