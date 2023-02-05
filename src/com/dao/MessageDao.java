package com.dao;

import com.entity.Message;
import com.entity.MyShopping;
import com.util.C3P0Util;
import org.apache.commons.dbutils.QueryRunner;

public class MessageDao {
    QueryRunner qr=new QueryRunner(C3P0Util.getDataSource());
    public boolean insertMessages(Message message){
        int index=0;
        String sql="insert into message (satisfied,idea,name,phone) values(?,?,?,?)";
        try {
            index = qr.update(sql,new Object[]{message.getSatisfied(),message.getIdea(),message.getName(),message.getPhone()});
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(index==0){
            return false;
        }
        return true;
    }
}
