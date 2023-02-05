package com.util;

import java.util.Date;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

public class Logs {
    /**
      * 生成日志文件(文件的位置在Tomcat的安装路径下)
      * @param str
     */
    public static void LogForTXT(String str) {
         try {
//           为JD商城提供日志文件
//             String dir = System.getProperty("user.dir") + File.separator + "/JDshop/系统日志";
             String dir = "E:\\Work\\JavaProjects\\IDEAproject\\JDshop\\系统日志";
             File fi = new File(dir);
             if (!fi.exists()) {
                 fi.mkdirs();
                 System.out.println(6);
             }
             Date date = new Date();
             String time = new SimpleDateFormat("yyyy-MM-dd").format(date);
             dir = fi.getPath() + File.separator + time + ".txt";
             fi = new File(dir);
             System.out.println(fi);
             if (!fi.exists() && !fi.isDirectory()) {
                 System.out.println("文件新建");
                 fi.createNewFile();
                 PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter(fi)));
                 pw.println(" " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) + "生成日志文件");
                 pw.println("--------------------------------日志--------------------------------");
                 pw.println(str);
                 pw.close();
             } else {
                 System.out.println("文件已有");
                 PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter(fi, true)));
                 pw.println(str);
                 pw.close();
             }
         } catch (Exception e) {
             e.printStackTrace();
         }
    }

    public static void main(String[] args) {
        Logs.LogForTXT("Test for logging222");
    }
}
