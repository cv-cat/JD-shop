package com.util;

import java.sql.*;

public class JDBCHelp {
    public static String url ="jdbc:mysql://localhost/jd";
    public static String user ="root";
    public static String password ="992822653zc@";
    public static String dName ="com.mysql.cj.jdbc.Driver";

    public static Connection getConnection(){
        Connection con=null;
        try {
            Class.forName(dName);
            con= DriverManager.getConnection(url,user,password);
        }catch (Exception e){
            System.out.println(e.toString());
        }
        return con;
    }
    //单向操作，增删改
    public static boolean RunSQL(String sql,Object []par){
        Connection c=getConnection();
        int index=0;
        try {
            PreparedStatement pst=c.prepareStatement(sql);
            for (int i=0;i<par.length;i++){
                 pst.setObject(i+1,par[i]);
            }
            index=pst.executeUpdate();
            pst.close();
            c.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        if(index>0){
            return true;
        }
        return false;
    }

    //双向操作 查
    public static ResultSet getResultSet(String sql,Object []par){
        Connection c=getConnection();
        ResultSet rs=null;
        try {
            PreparedStatement pst=c.prepareStatement(sql);
            for (int i=0;i<par.length;i++){
                pst.setObject(i+1,par[i]);
            }
            rs=pst.executeQuery();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return rs;
    }
}
