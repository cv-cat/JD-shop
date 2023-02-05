package com.dao;

import com.entity.Lunbo;
import com.util.C3P0Util;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.util.ArrayList;
import java.util.List;

public class LunboDao {
    QueryRunner qr=new QueryRunner(C3P0Util.getDataSource());
    //    查type所有
    public List<Lunbo> readpLunbos(int type){
        String sql="select * from lunbo where type=?";
        List<Lunbo> lunbos = new ArrayList<>();
        try {
            lunbos = qr.query(sql, new BeanListHandler<>(Lunbo.class),new Object[]{type});
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lunbos;
    }

    public static void main(String[] args) {
        LunboDao lunboDao=new LunboDao();
        List<Lunbo> list=lunboDao.readpLunbos(1);
        if(lunboDao.readpLunbos(1).get(0).getpPic().equals("")){
            System.out.println(666);
        }
        System.out.println();
    }
}
