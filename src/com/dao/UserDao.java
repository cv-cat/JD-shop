package com.dao;
import com.entity.User;
import com.util.C3P0Util;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;
import java.sql.SQLOutput;
import java.util.Date;

public class UserDao {
    QueryRunner qr=new QueryRunner(C3P0Util.getDataSource());
//        插入一个
    public void insertUser(String tel,String email,String userName,String userPwd,Date regTime){
        String sql="insert into users (tel,email,userName,userPwd,regTime) values(?,?,?,?,?)";
        try {
            qr.update(sql,new Object[]{tel,email,userName,userPwd,regTime});
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //        插入一个
    public void insertUserAll(User user){
        String sql="insert into users (tel,email,userName,userPwd,head,regTime,sex) values(?,?,?,?,?,?,?)";
        try {
            qr.update(sql,new Object[]{user.getTel(),user.getEmail(),user.getUserName(),user.getUserPwd(),user.getHead(),user.getRegTime(),user.getSex()});
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//    //    是否存在
//    public boolean isExictDatabase(String tel){
//        String sql="select * from users where tel=?";
//        User user=null;
//        try {
//            user = qr.query(sql, new BeanHandler<>(User.class),new Object[]{tel});
//        } catch (Exception e) {
//            System.out.println(e);
//            e.printStackTrace();
//        }
//        if(user==null){
//            return false;
//        }
//        return true;
//    }

    //    返回对象
    public User getUserBytel(String tel){
        String sql="select * from users where tel=?";
        User user=null;
        try {
            user = qr.query(sql, new BeanHandler<>(User.class),new Object[]{tel});
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e);
        }
        return user;
    }
    public User getUserByName(String userName){
        String sql="select * from users where userName=?";
        User user=null;
        try {
            user = qr.query(sql, new BeanHandler<>(User.class),new Object[]{userName});
        } catch (SQLException e) {
            System.out.println(e);
            e.printStackTrace();
        }
        return user;
    }
    public User getUserByEmail(String email){
        String sql="select * from users where email=?";
        User user=null;
        try {
            user = qr.query(sql, new BeanHandler<>(User.class),new Object[]{email});
        } catch (Exception e) {
            System.out.println(e);
        }
        return user;
    }
    public static void main(String[] args) {
        UserDao userDao=new UserDao();
        Date date=new java.util.Date();
        Date  sqldate=new java.sql.Date(date.getTime());
        userDao.insertUser("13548877484", "154844578@qq.com", "admin3", "56464", sqldate);
//        User user=userDao.getUserBytel("15751076989");
//        if(user!=null){
//            System.out.println(3);
//        }else{
//            System.out.println(4);
//        }
//        User user=userDao.getUserBytel("15751076989");
//        System.out.println(user);
//        Date date=new java.util.Date();
//        Date  sqldate=new java.sql.Date(date.getTime());
//        userDao.insertUser("18836229205", "3157454856@qq.com", "adwa", "449849", sqldate);
//        User user=new User();
//        Date date=new java.util.Date();
//        Date  sqldate=new java.sql.Date(date.getTime());
//        user.setEmail("eeee");
//        user.setUserName("cz");
//        user.setTel("992822");
//        user.setUserPwd("999");
//        user.setHead("gg");
//        user.setRegTime(sqldate);
//        user.setSex("女");
//        userDao.insertUserAll(user);
    }
}

