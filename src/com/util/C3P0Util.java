package com.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class C3P0Util {
    //连接池对象（数据源）
    private static ComboPooledDataSource dataSource=new ComboPooledDataSource("mysql_pro");
    public static DataSource getDataSource(){
        return dataSource;
    }
    public static Connection getConnection(){
        Connection connection=null;
        try {
            connection= dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  connection;
    }

}
