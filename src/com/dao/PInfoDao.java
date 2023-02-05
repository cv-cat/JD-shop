package com.dao;

import com.entity.Lunbo;
import com.entity.PInfo;
import com.util.C3P0Util;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class PInfoDao {
    QueryRunner qr=new QueryRunner(C3P0Util.getDataSource());
    //    查所有
    //    查type所有
    public List<PInfo> readpPinfos(int type){
        String sql="select * from pinfo where type=?";
        List<PInfo> pInfos = new ArrayList<>();
        try {
            pInfos = qr.query(sql, new BeanListHandler<>(PInfo.class),new Object[]{type});
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pInfos;
    }
//    public List<PInfo> readpInfos(){
//        String sql="select * from pinfo";
//        List<PInfo> pInfos = new ArrayList<>();
//        try {
//            pInfos = qr.query(sql, new BeanListHandler<>(PInfo.class));
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return pInfos;
//    }
//    public List<PInfo> read9pInfos(){
//        String sql="select * from pinfo limit 0,9";
//        List<PInfo> pInfos = new ArrayList<>();
//        try {
//            pInfos = qr.query(sql, new BeanListHandler<>(PInfo.class));
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return pInfos;
//    }
////        查一个
//    public PInfo getpInfosbyname(String pName){
//        String sql="select * from pinfo where pName=?";
//        PInfo pInfo = new PInfo();
//        try {
//            pInfo = qr.query(sql, new BeanHandler<>(PInfo.class),new Object[]{pName});
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return pInfo;
//    }
    public PInfo getpInfosbyid(int pID){
        String sql="select * from pinfo where pID=?";
        PInfo pInfo = new PInfo();
        try {
            pInfo = qr.query(sql, new BeanHandler<>(PInfo.class),new Object[]{pID});
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pInfo;
    }
    public int getnumOfGoods(){
        int count=0;
        String sql="select count(*) from pinfo where type=4";
        try {
            count = (qr.query(sql, new ScalarHandler<Long>())).intValue();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
//    得到总页数
    public int getTotalPages(int pageSize){
        int totalpages= (int) Math.ceil(getnumOfGoods()/(double)pageSize);
        return totalpages;
    }
    //返回所有商品
    public List<PInfo> getAllGoods(){
        String sql="select * from pinfo where type=4";
        List<PInfo> allgoods = new ArrayList<>();
        try {
            allgoods = qr.query(sql, new BeanListHandler<>(PInfo.class));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return allgoods;
    }
    //    返回一页的商品
    public List<PInfo> getGoodsByNo(int pageSize,int pageNo){
        List<PInfo> goods=getAllGoods();
        List<PInfo> aGoods=new ArrayList<>();
        for(int i=0;i<pageSize;i++){
            if(pageSize*(pageNo-1)+i<goods.size()){
                aGoods.add(goods.get(pageSize*(pageNo-1)+i));
            }
        }
        return aGoods;
    }
//    ===================================================================================================================================
//    ===================================================================================================================================
//    ===================================================================================================================================
    public List<PInfo> getSearchGoods(String temp){
        String sql="SELECT * FROM pinfo WHERE pName REGEXP ?";
        List<PInfo> allgoods = new ArrayList<>();
        try {
            allgoods = qr.query(sql, new BeanListHandler<>(PInfo.class),new Object[]{temp});
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return allgoods;
    }
    //    得到总页数
    public int getTotalSearchPages(int pageSize,String temp){
        int totalpages= (int) Math.ceil(getSearchGoods(temp).size()/(double)pageSize);
        return totalpages;
    }
    //    返回一页的商品
    public List<PInfo> getSearchGoodsByNo(int pageSize,int pageNo,String temp){
        List<PInfo> goods=getSearchGoods(temp);
        if(goods.size()==0){
            return null;
        }
        List<PInfo> aGoods=new ArrayList<>();
        for(int i=0;i<pageSize;i++){
            if(pageSize*(pageNo-1)+i<goods.size()){
                aGoods.add(goods.get(pageSize*(pageNo-1)+i));
            }
        }
        return aGoods;
    }
    //    查一个
//    public PInfo getpInfos(int pID){
//        String sql="select * from t_emp where pID=?";
//        PInfo emp = new PInfo();
//        try {
//            emp = qr.query(sql, new BeanHandler<>(PInfo.class),new Object[]{pID});
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return emp;
//    }

    //    插入一个
//    public void InsertEmp(PInfo emp){
//        String sql="insert into t_emp (Ename,Sal,Age) values(?,?,?)";
//        try {
//            qr.update(sql,new Object[]{emp.getEname(),emp.getSal(),emp.getAge()});
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }

    //    修改
//    public void UpdateEmp(Object []obj){
//        String sql="Update t_emp set Ename=?,Sal=?,Age=? where Empno=?;";
//        try {
//            qr.update(sql,obj);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    //    删除
//    public void DeleteEmp(int empno){
//        String sql="delete from t_emp where Empno=? ";
//        try {
//            qr.update(sql,new Object[]{empno});
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
    public static void main(String[] args) {
        PInfoDao pInfoDao=new PInfoDao();
//        int totalPages=pInfoDao.getTotalSearchPages(12, "酒");
//        System.out.println(totalPages);
        System.out.println(pInfoDao.getSearchGoodsByNo(12, 1, "酒adaw"));
//        if (pInfoDao.getSearchGoods("2343").size()==0){
//            System.out.println(1);
//        }else{
//            System.out.println(2);
//        }
//        System.out.println(pInfoDao.getSearchGoods("2343"));
//        System.out.println(pInfoDao.getnumOfGoods());
//        System.out.println(pInfoDao.getTotalPages(12));
//        PInfo pInfo=pInfoDao.getpInfosbyid(21);
//        System.out.println(pInfo);
//        List<PInfo> pInfo=pInfoDao.readpLunbos(1);
//        System.out.println(pInfo.get(6));
//        for(int i=0;i<10;i++){
//            Random random =new Random();
//            int temp=random.nextInt(101);
//            System.out.println(temp);
//        }

    }
}

