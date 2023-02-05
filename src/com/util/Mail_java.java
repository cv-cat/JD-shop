package com.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.sun.mail.util.MailSSLSocketFactory;

/**
 * JavaMail发送邮件: java版本-与web无关
 * 前提是QQ邮箱里帐号设置要开启POP3/SMTP协议
 *
 *
 */
public class Mail_java {
    public static void main(String[] args) throws Exception {
        Mail_java mail_java=new Mail_java();
        System.out.println(mail_java.sendMessage("992822653@qq.com","test","1"));
    }
    /**
     * @Method: createSimpleMail
     * @Description: 创建一封只包含文本的邮件
     */
    public List<Object> createSimpleMail(Session session,String email, String title, String msg) throws Exception {
        //  获取6为随机验证码
        String[] letters = new String[] {
                "q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m",
                "A","W","E","R","T","Y","U","I","O","P","A","S","D","F","G","H","J","K","L","Z","X","C","V","B","N","M",
                "0","1","2","3","4","5","6","7","8","9"};
        String stringBuilder ="";
        for (int i = 0; i < 6; i++) {
            stringBuilder = stringBuilder + letters[(int)Math.floor(Math.random()*letters.length)];
        }
        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress("992822653@qq.com"));
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
        message.setSubject(title);
        message.setContent("~~账号注册验证码为(一分钟有效):"+stringBuilder+",请勿回复此邮箱\n" + msg, "text/html;charset=UTF-8");
        List<Object> list=new ArrayList<>();
        list.add(message);
        list.add(stringBuilder);
        return list;
    }
    public String sendMessage(String email, String title, String msg){
        Properties prop = new Properties();
        prop.setProperty("mail.debug", "true");
        prop.setProperty("mail.host", "smtp.qq.com");
        prop.setProperty("mail.smtp.auth", "true");
        prop.setProperty("mail.transport.protocol", "smtp");
        try {
            MailSSLSocketFactory sf = new MailSSLSocketFactory();
            sf.setTrustAllHosts(true);
            prop.put("mail.smtp.ssl.enable", "true");
            prop.put("mail.smtp.ssl.socketFactory", sf);
            Session session = Session.getInstance(prop);
            Transport ts = session.getTransport();
            ts.connect("smtp.qq.com", "992822653", "???");
            List<Object> list=createSimpleMail(session,email,title,msg);
            Message message =(MimeMessage)list.get(0);
            ts.sendMessage(message, message.getAllRecipients());
            ts.close();
            return (String) list.get(1);
        }catch (Exception e) {
            throw new RuntimeException(e);
//            System.out.println(e);

        }
    }
}
