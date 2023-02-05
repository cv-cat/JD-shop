package com.util;

import java.io.UnsupportedEncodingException;

public class MyUTF {

    //封装成工具类
    public static String getNewString(String str) throws UnsupportedEncodingException {
        return new String(str.getBytes("ISO-8859-1"),"UTF-8");
    }

//    public static void main(String[] args) throws UnsupportedEncodingException {
//        System.out.println(MyUTF.getNewString("5L2g5aW9"));
//    }
}
