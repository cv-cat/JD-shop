package com.dao;

import com.entity.MyShopping;
import com.util.C3P0Util;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ShoppingDao {
    QueryRunner qr=new QueryRunner(C3P0Util.getDataSource());
    // charu
    public boolean insertBuys(MyShopping myShopping){
        int index=0;
        String sql="insert into myshopping (pID,buyCount,uName,state,buyTime) values(?,?,?,?,?)";
        try {
            index = qr.update(sql,new Object[]{myShopping.getpID(),myShopping.getBuyCount(),myShopping.getuName(),myShopping.getState(),myShopping.getBuyTime()});
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(index==0){
            return false;
        }
        return true;
    }
//    是否存在
    public boolean isExict(int pID,String uName){
        String sql="select * from myshopping where pID=? and uName=? and state=0";
        MyShopping shopping=null;
        try {
            shopping = qr.query(sql, new BeanHandler<>(MyShopping.class),new Object[]{pID,uName});
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(shopping==null){
            return false;
        }
        return true;
    }
    public void Update(int pID, String uName, int buyCount, Date buyTime){
        String sql="Update myshopping set buyCount=buyCount+?,buyTime=? where pID=? and uName=? and state=0";
        try {
            qr.update(sql,new Object[]{buyCount,buyTime,pID,uName});
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //    查所有
    public List<MyShopping> readShopping(String uName){
        String sql="select * from myshopping where uName=? and state=0";
        List<MyShopping> myShoppings = new ArrayList<>();
        try {
            myShoppings = qr.query(sql, new BeanListHandler<>(MyShopping.class),new Object[]{uName});
        } catch (Exception e) {
            e.printStackTrace();
        }
        return myShoppings;
    }
    //    查一个
    public MyShopping getAShopping(String uName,int pID){
        String sql="select * from myshopping where uName=? and pID=? and state=0";
        MyShopping myShopping = null;
        try {
            myShopping = qr.query(sql, new BeanHandler<>(MyShopping.class),new Object[]{uName,pID});
        } catch (Exception e) {
            e.printStackTrace();
        }
        return myShopping;
    }
    public void deleteBuy(int pID,String uName){
        String sql="delete from myshopping where pID=? and uName=? and state=0";
        try {
            int index=qr.update(sql,new Object[]{pID,uName});
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public boolean isExictDelete(int pID,String uName){
        String sql="select * from myshopping where pID=? and uName=? and state=1";
        MyShopping shopping=null;
        try {
            shopping = qr.query(sql, new BeanHandler<>(MyShopping.class),new Object[]{pID,uName});
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(shopping==null){
            return false;
        }
        return true;
    }
//    删除一个
    public void deleteBuys(int pID,String uName){
        String sql="Update myshopping set state=1 where pID=? and uName=? and state=0";
        try {
            qr.update(sql,new Object[]{pID,uName});
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//    删除一个已经被删过的
    public void deleteBuysExict(int pID,String uName,int buyCount){
        String sql="Update myshopping set buyCount=buyCount+? where pID=? and uName=? and state=1";
        try {
            qr.update(sql,new Object[]{buyCount,pID,uName});
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

//    BUY
public boolean isExictBuy(int pID,String uName){
    String sql="select * from myshopping where pID=? and uName=? and state=2";
    MyShopping shopping=null;
    try {
        shopping = qr.query(sql, new BeanHandler<>(MyShopping.class),new Object[]{pID,uName});
    } catch (Exception e) {
        e.printStackTrace();
    }
    if(shopping==null){
        return false;
    }
    return true;
}
    public void clearBuy(int pID,String uName){
        String sql="delete from myshopping where pID=? and uName=? and state=0";
        try {
            int index=qr.update(sql,new Object[]{pID,uName});
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//    删除一个
public void clearBuys(int pID,String uName){
    String sql="Update myshopping set state=2 where pID=? and uName=? and state=0";
    try {
        qr.update(sql,new Object[]{pID,uName});
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
    //    删除一个已经被删过的
    public void clearBuysExict(int pID,String uName,int buyCount){
        String sql="Update myshopping set buyCount=buyCount+? where pID=? and uName=? and state=2";
        try {
            qr.update(sql,new Object[]{buyCount,pID,uName});
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
//        Date date=new java.util.Date();
//        Date  sqldate=new java.sql.Date(date.getTime());
        ShoppingDao shoppingDao=new ShoppingDao();
        MyShopping myShopping=new MyShopping();
        myShopping=shoppingDao.getAShopping("admin", 12);
        System.out.println(myShopping);
//        myShopping.setBuyCount(1);
//        myShopping.setuName("admin");
//        myShopping.setpID(15);
//        myShopping.setState(0);
//        myShopping.setBuyTime(sqldate);
//        shoppingDao.insertBuys(myShopping);
//        shoppingDao.deleteBuys(9, "zc");
    }
}
