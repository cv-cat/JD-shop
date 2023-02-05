package com.servlet;

import com.dao.*;
import com.entity.*;
import com.util.Logs;
import com.util.Mail_java;
import com.util.MyUTF;
import com.util.UuidUtil;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@WebServlet("*.do")
public class JDServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
//      得到请求资源路径
        String uri = request.getRequestURI();
        String action=uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf("."));
        System.out.println(action);
        if("servey".equals(action)){
            String satisfied=request.getParameter("manyi");
            String idea=request.getParameter("answers");
            String name=request.getParameter("names");
            String phone=request.getParameter("phone");
            Message message=new Message();
            message.setIdea(idea);
            message.setSatisfied(satisfied);
            message.setName(name);
            message.setPhone(phone);
            MessageDao messageDao=new MessageDao();
            messageDao.insertMessages(message);
            System.out.println(satisfied);
            System.out.println(idea);
            System.out.println(name);
            System.out.println(phone);
            response.getWriter().write("<script>alert('感谢您的建议')</script>");
            response.sendRedirect("loginJD.do");
        }else if("miaosha".equals(action)){
            if(request.getParameter("searchsome")!=null){
                int pagesize=12;
                PInfoDao pInfoDao=new PInfoDao();
                String temp= MyUTF.getNewString(request.getParameter("searchsome"));
                int totalPages=pInfoDao.getTotalSearchPages(pagesize, temp);
                String pageno=request.getParameter("pageno");
                if(pageno==null){
                    pageno="1";
                }
                int pageindex=Integer.parseInt(pageno);
                if(pageindex<1){
                    pageindex=1;
                }else if(pageindex>totalPages&&totalPages!=0){
                    pageindex=totalPages;
                }
                List<PInfo> goods=pInfoDao.getSearchGoodsByNo(pagesize, pageindex, temp);
                request.setAttribute("totalPages", totalPages);
                request.setAttribute("pageindex", pageindex);
//            List<PInfo> goods=pInfoDao.readpPinfos(4);
                request.setAttribute("goods", goods);
                request.setAttribute("choose", 1);
                request.setAttribute("temp", temp);
                System.out.println("搜索进去的");
            }else{

                int pagesize=12;
                PInfoDao pInfoDao=new PInfoDao();

                int totalPages=pInfoDao.getTotalPages(pagesize);
//            int pageindex=2;
                String pageno=request.getParameter("pageno");
                if(pageno==null){
                    pageno="1";
                }

                int pageindex=Integer.parseInt(pageno);
                if(pageindex<1){
                    pageindex=1;
                }else if(pageindex>totalPages){
                    pageindex=totalPages;
                }
                List<PInfo> goods=pInfoDao.getGoodsByNo(pagesize, pageindex);

                request.setAttribute("totalPages", totalPages);
                request.setAttribute("pageindex", pageindex);
//            List<PInfo> goods=pInfoDao.readpPinfos(4);
                request.setAttribute("goods", goods);
                System.out.println("不是搜索进去的");
            }
            System.out.println("=====");
            String name = (String)request.getSession().getAttribute("userName");
            ShoppingDao shoppingDao=new ShoppingDao();
            List<MyShopping> myShoppings=shoppingDao.readShopping(name);
            request.setAttribute("buyCounts", myShoppings.size());
            request.getRequestDispatcher("list.jsp").forward(request, response);
        }else if("clear".equals(action)){
            String name = (String)request.getSession().getAttribute("userName");
//            String []ops=request.getParameterValues("op");
            String []tpIDs=request.getParameterValues("tpID");
            ShoppingDao shoppingDao=new ShoppingDao();
            PInfoDao pInfoDao=new PInfoDao();
            List<MyShopping> myShoppings1=shoppingDao.readShopping(name);
            List<MyShopping> myShoppings=new ArrayList<>();
            for(int i=0;i<tpIDs.length;i++){
                for(int n=0;n<myShoppings1.size();n++){
                    if(Integer.parseInt(tpIDs[i])==myShoppings1.get(n).getpID()){
                        myShoppings.add(myShoppings1.get(n));
                        break;
                    }
                }
            }
            for(int i=0;i<myShoppings.size();i++){
                if(shoppingDao.isExictBuy(myShoppings.get(i).getpID(), name)){
                    shoppingDao.clearBuysExict(myShoppings.get(i).getpID(), name, myShoppings.get(i).getBuyCount());
                    shoppingDao.clearBuy(myShoppings.get(i).getpID(), name);
                }else{
                    shoppingDao.clearBuys(myShoppings.get(i).getpID(), name);
                }
            }
            request.getRequestDispatcher("cart.do").forward(request, response);
        }else if ("pay".equals(action)){
            String name = (String)request.getSession().getAttribute("userName");
            String []ops=request.getParameterValues("op");
            String []tpIDs=request.getParameterValues("tpID");
            ShoppingDao shoppingDao=new ShoppingDao();
            PInfoDao pInfoDao=new PInfoDao();
            List<MyShopping> myShoppings1=shoppingDao.readShopping(name);
//                得到name购买的所有商品
            List<MyShopping> myShoppings=new ArrayList<>();
            for(int i=0;i<myShoppings1.size();i++){
                if(ops[i].equals("1")){
                    myShoppings.add(myShoppings1.get(i));
                }
            }

            System.out.println("myshoppings=?");
            System.out.println(myShoppings);

            List<PInfo> pInfos = new ArrayList<>();
            Float money1=0f;
            for(int i=0;i<myShoppings.size();i++){
                PInfo pInfo = pInfoDao.getpInfosbyid(myShoppings.get(i).getpID());
                pInfos.add(pInfo);
            }
            for(int i=0;i<myShoppings.size();i++){
                money1+=myShoppings.get(i).getBuyCount()*pInfos.get(i).getPrice();
            }
            request.setAttribute("money1", money1);
            request.setAttribute("myShoppings", myShoppings);
            request.setAttribute("pInfos", pInfos);
            request.setAttribute("buyCounts", myShoppings.size());

            request.getRequestDispatcher("pay.jsp").forward(request, response);
        }else if("remove".equals(action)){
            String name = (String)request.getSession().getAttribute("userName");
            int pID=Integer.parseInt(request.getParameter("s"));
            ShoppingDao shoppingDao=new ShoppingDao();
            MyShopping myShopping=new MyShopping();
            myShopping=shoppingDao.getAShopping(name, pID);
            if(shoppingDao.isExictDelete(pID, name)){
                shoppingDao.deleteBuysExict(pID, name, myShopping.getBuyCount());
                shoppingDao.deleteBuy(pID, name);
            }else{
                shoppingDao.deleteBuys(pID, name);
            }
            request.getRequestDispatcher("cart.do").forward(request, response);
        }else if("cart".equals(action)){
            String name = (String)request.getSession().getAttribute("userName");
            if(name==null){
                response.sendRedirect("login.jsp");
            }else {
                ShoppingDao shoppingDao=new ShoppingDao();
                MyShopping myShopping=new MyShopping();
                if(request.getParameter("pID")!=null){
                    int pNumber=Integer.parseInt(request.getParameter("pNumber"));
                    int pID = Integer.parseInt(request.getParameter("pID"));
                    Date date=new java.util.Date();
                    Date  sqldate=new java.sql.Date(date.getTime());
                    if(shoppingDao.isExict(pID, name)){
                        shoppingDao.Update(pID, name,pNumber,sqldate);
                    }else{
                        myShopping.setBuyCount(pNumber);
                        myShopping.setuName(name);
                        myShopping.setpID(pID);
                        myShopping.setState(0);
                        myShopping.setBuyTime(sqldate);
                        shoppingDao.insertBuys(myShopping);
                    }
                }
                List<MyShopping> myShoppings=shoppingDao.readShopping(name);
//                得到name购买的所有商品
                List<PInfo> pInfos = new ArrayList<>();
                List<Float> money=new ArrayList<>();
                PInfoDao pInfoDao = new PInfoDao();
                System.out.println();
                for(int i=0;i<myShoppings.size();i++){
                    PInfo pInfo = pInfoDao.getpInfosbyid(myShoppings.get(i).getpID());
                    pInfos.add(pInfo);
                }
                for(int i=0;i<myShoppings.size();i++){
                    Float p=myShoppings.get(i).getBuyCount()*pInfos.get(i).getPrice();
                    money.add(p);
                }
                request.setAttribute("myShoppings", myShoppings);
                request.setAttribute("pInfos", pInfos);
                request.setAttribute("money", money);
                request.setAttribute("buyCounts", myShoppings.size());
//                System.out.println(pInfos);
//                System.out.println(myShoppings);
                request.getRequestDispatcher("cart.jsp").forward(request, response);
            }
        }else if("detail".equals(action)){
            String name = (String)request.getSession().getAttribute("userName");
            ShoppingDao shoppingDao=new ShoppingDao();
            List<MyShopping> myShoppings=shoppingDao.readShopping(name);
            int pID = Integer.parseInt(request.getParameter("pID"));
            PInfoDao pInfoDao=new PInfoDao();
            PInfo pInfo=pInfoDao.getpInfosbyid(pID);
            System.out.println();
            request.setAttribute("pInfo", pInfo);
            request.setAttribute("buyCounts", myShoppings.size());
            request.getRequestDispatcher("detail.jsp").forward(request, response);
        }else if("indexlist".equals(action)){
            String name = (String)request.getSession().getAttribute("userName");
            ShoppingDao shoppingDao=new ShoppingDao();
            List<MyShopping> myShoppings=shoppingDao.readShopping(name);
            LunboDao lunboDao=new LunboDao();
            List<Lunbo> lunbos1=lunboDao.readpLunbos(1);
            List<Lunbo> lunbos2=lunboDao.readpLunbos(2);
            List<Lunbo> lunbos3=lunboDao.readpLunbos(3);
            List<Lunbo> lunbos4=lunboDao.readpLunbos(4);
            request.setAttribute("lunbos1", lunbos1);
            request.setAttribute("lunbos2", lunbos2);
            request.setAttribute("lunbos3", lunbos3);
            request.setAttribute("lunbos4", lunbos4);
            PInfoDao pInfoDao=new PInfoDao();
            List<PInfo> floor1=pInfoDao.readpPinfos(1);
            List<PInfo> floor2=pInfoDao.readpPinfos(2);
            List<PInfo> floor3=pInfoDao.readpPinfos(3);
            request.setAttribute("floor1", floor1);
            request.setAttribute("floor2", floor2);
            request.setAttribute("floor3", floor3);
            request.setAttribute("buyCounts", myShoppings.size());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }else if("sendcode".equals(action)){
            String email=request.getParameter("email");
            Mail_java mail_java=new Mail_java();
            String code = UuidUtil.getUuid();
            request.getSession().setAttribute("uuid", code);
            try {
                String content = "<a href='http://localhost:8080/JDshop/clickcode.do?uuid="+ code +"'>点击激活邮箱</a>";
                String mail= mail_java.sendMessage(email, "注册邮箱",content);
                request.getSession().setAttribute("mailCode", mail);
                response.getWriter().print("success");
            }catch (Exception e){
                e.printStackTrace();
                response.getWriter().print("fail");
            }
        }else if ("clickcode".equals(action)){
//            String code = (String) request.getSession().getAttribute("uuid");
            System.out.println(555);
            request.getSession().setAttribute("code", "True");
        }
        else if("checkcode".equals(action)){
            String code = (String) request.getSession().getAttribute("code");
            if (code!=null&&code.equals("True")){
                response.getWriter().print("success1");
            }else{
                String mailCode=request.getParameter("mailCode");
                String mail= (String)request.getSession().getAttribute("mailCode");
                if(mailCode.equals(mail)){
                    response.getWriter().print("success");
                }else{
                    response.getWriter().print("fail");
                }
            }
        }else if("checkphone".equals(action)){
            String phone=request.getParameter("phone");
            UserDao userDao=new UserDao();
            User user=userDao.getUserBytel(phone);
            if(user!=null){
                response.getWriter().print("true");
            }else{
                response.getWriter().print("false");
            }
        }else if("checkname".equals(action)){
            String name=request.getParameter("name");
            UserDao userDao=new UserDao();
            User user=userDao.getUserByName(name);
            if(user!=null){
                response.getWriter().print("true");
            }else{
                response.getWriter().print("false");
            }
        } else if("checkemail".equals(action)){
            String email=request.getParameter("email");
            UserDao userDao=new UserDao();
            User user=userDao.getUserByEmail(email);
            if(user!=null){
                response.getWriter().print("true");
            }else{
                response.getWriter().print("false");
            }
        }else if("registerJD".equals(action)){
            String choice=request.getParameter("choice");
            if(choice.equals("1")){
                String phone=request.getParameter("phone");
                request.setAttribute("phone", phone);
                request.setAttribute("index", "2");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }else if(choice.equals("2")){
                UserDao userDao=new UserDao();
                String phone=request.getParameter("phone2");
                String regName=request.getParameter("regName");
                String pwd=request.getParameter("pwd");
                String email=request.getParameter("email");
                Date date=new java.util.Date();
                Date  sqldate=new java.sql.Date(date.getTime());
                userDao.insertUser(phone, email, regName, pwd, sqldate);
                request.getSession().removeAttribute("mailCode");
                request.getSession().setAttribute("userName", regName);
                request.setAttribute("index", "3");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }else if(choice.equals("3")){
                response.sendRedirect("indexlist.do");
            }
        }else if("loginJD".equals(action)) {
            //	登录操作
            UserDao userDao = new UserDao();
            String temp = request.getParameter("temp");
            String pwd = request.getParameter("userPwd");
            User user1 = userDao.getUserBytel(temp);
            User user2 = userDao.getUserByEmail(temp);
            User user3 = userDao.getUserByName(temp);
            if (temp == "") {
                request.setAttribute("err_msg", "请填写邮箱/电话/用户名/");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }else if(temp==null){
                response.sendRedirect("login.jsp");
            } else {
                if (user1 != null) {
                    if (pwd == "") {
                        request.setAttribute("temp", temp);
                        request.setAttribute("err_msg", "请填写密码！");
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    } else {
                        if (pwd.equals(user1.getUserPwd())) {
                            //成功,保存当前用户信息
                            request.getSession().setAttribute("userName", user1.getUserName());
                            response.sendRedirect("indexlist.do");

                        } else {
                            request.setAttribute("temp", temp);
                            request.setAttribute("err_msg", "密码错误");
                            request.getRequestDispatcher("login.jsp").forward(request, response);
                        }
                    }
                }else if (user2 != null) {
                    if (pwd == "") {
                        request.setAttribute("err_msg", "请填写密码！");
                        request.setAttribute("temp", temp);
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    } else {
                        if (pwd.equals(user2.getUserPwd())) {
                            request.getSession().setAttribute("userName", user2.getUserName());
                            System.out.println();
                            response.sendRedirect("indexlist.do");
                        } else {
                            request.setAttribute("err_msg", "密码错误");
                            request.setAttribute("temp", temp);
                            request.getRequestDispatcher("login.jsp").forward(request, response);
                        }
                    }
                }else if (user3 != null) {
                    if (pwd == "") {
                        request.setAttribute("temp", temp);
                        request.setAttribute("err_msg", "请填写密码！");
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    } else {
                        if (pwd.equals(user3.getUserPwd())) {
                            //成功,保存当前用户信息
                            Date date = new Date();
                            String time = new SimpleDateFormat("yyyy-MM-dd").format(date);
                            Logs.LogForTXT(time + user3.getUserName() + "已经登录");
                            request.getSession().setAttribute("userName", user3.getUserName());
                            response.sendRedirect("indexlist.do");
                        } else {
                            request.setAttribute("err_msg", "密码错误");
                            request.setAttribute("temp", temp);
                            request.getRequestDispatcher("login.jsp").forward(request, response);
                        }
                    }
                }else {
                    request.setAttribute("err_msg", "用户信息不存在！");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }
        }else if("loginout".equals(action)){
            Date date = new Date();
            String time = new SimpleDateFormat("yyyy-MM-dd").format(date);
            Logs.LogForTXT(time + (String) request.getSession().getAttribute("userName")+"退出登录");
            request.getSession().removeAttribute("userName");
            response.sendRedirect("login.jsp");
        }
//
////        String a= MyUTF.getNewString(request.getParameter("n"));
//        if("remove1".equals(action)){
//            String name = (String)request.getSession().getAttribute("userName");
//            int pID=Integer.parseInt(request.getParameter("s"));
//            ShoppingDao shoppingDao=new ShoppingDao();
//            shoppingDao.deleteBuys(pID, name);
//            request.getRequestDispatcher("shopping.do").forward(request, response);
//        }else if("shopping".equals(action)){
//            String name = (String)request.getSession().getAttribute("userName");
//            if(name==null){
//                response.sendRedirect("Login.jsp");
//            }else {
//                ShoppingDao shoppingDao=new ShoppingDao();
//                MyShopping myShopping=new MyShopping();
//                if(request.getParameter("pID")!=null){
//                    int pID = Integer.parseInt(request.getParameter("pID"));
//
//                    if(shoppingDao.isExict(pID, name)){
//                        shoppingDao.Update(pID, name);
//                    }else{
//                        myShopping.setBuyCount(1);
//                        myShopping.setuName(name);
//                        myShopping.setpID(pID);
//                        Date date=new Date();
//                        shoppingDao.insertBuys(myShopping);
//                    }
//                }
//                    List<MyShopping> myShoppings=shoppingDao.readShopping(name);
//                    List<PInfo> pInfos = new ArrayList<>();
//                    PInfoDao pInfoDao = new PInfoDao();
//                    for(int i=0;i<myShoppings.size();i++){
//                        PInfo pInfo = pInfoDao.getpInfosbyid(myShoppings.get(i).getpID());
//                        pInfos.add(pInfo);
//                    }
//                    request.setAttribute("pInfos", pInfos);
//                    request.setAttribute("myShoppings", myShoppings);
//                    request.getRequestDispatcher("Shopping.jsp").forward(request, response);
//
//            }
//        }else if("remove".equals(action)){
//            int index=Integer.parseInt(request.getParameter("s"));
//            List<PInfo> pInfos = (List<PInfo>) request.getSession().getAttribute("pInfos");
//            pInfos.remove(index);
//            request.getSession().setAttribute("pInfos", pInfos);
//            float money=0;
//            for(int i=0;i<pInfos.size();i++){
//                money+=pInfos.get(i).getPrice();
//            }
//            request.setAttribute("money", money);
//            request.getRequestDispatcher("Buy.jsp").forward(request, response);
//        }else if("buy".equals(action)){
//            String name = (String)request.getSession().getAttribute("userName");
//            if(name==null){
//                response.sendRedirect("Login.jsp");
//            }else {
//                if(request.getParameter("pID")==null){
//                    response.sendRedirect("Buy.jsp");
//                }else {
//                    int pID = Integer.parseInt(request.getParameter("pID"));
//                    PInfoDao pInfoDao = new PInfoDao();
//                    PInfo pInfo = pInfoDao.getpInfosbyid(pID);
//                    List<PInfo> pInfos = new ArrayList<>();
//                    if ((List<PInfo>) request.getSession().getAttribute("pInfos") == null) {
//                        pInfos.add(pInfo);
//                    } else {
//                        pInfos = (List<PInfo>) request.getSession().getAttribute("pInfos");
//                        pInfos.add(pInfo);
//                    }
//                    float money=0;
//                    for(int i=0;i<pInfos.size();i++){
//                        money=money+pInfos.get(i).getPrice();
//                    }
//                    request.setAttribute("money", money);
//                    System.out.println(money);
//                    request.getSession().setAttribute("pInfos", pInfos);
//                    request.getRequestDispatcher("Buy.jsp").forward(request, response);
//                }
//            }



//        }else if("loginout".equals(action)){
//            request.getSession().removeAttribute("userName");
//            response.sendRedirect("Login.jsp");
//        }else if("info".equals(action)){
//            int pID = Integer.parseInt(request.getParameter("pID"));
//            PInfoDao pInfoDao=new PInfoDao();
//            PInfo pInfo=pInfoDao.getpInfosbyid(pID);
//            request.setAttribute("pInfo", pInfo);
//            request.getRequestDispatcher("info.jsp").forward(request, response);
//        }else if("listGM".equals(action)){
////            String name = (String)request.getSession().getAttribute("userName");
////            if(name==null){
////                response.sendRedirect("Login.jsp");
////            }else{
//                PInfoDao pInfoDao=new PInfoDao();
//                List<PInfo> pInfos=pInfoDao.readpInfos();
//                request.setAttribute("pInfos", pInfos);
//                request.getRequestDispatcher("Index.jsp").forward(request, response);
////            }
//        }else if("registerGM".equals(action)){
//            //	注册操作op==4
//            String name = request.getParameter("name");
//            String pwd = request.getParameter("password");
//            String cfpwd=request.getParameter("password2");
//            String tel = request.getParameter("tel");
//            String email = request.getParameter("email");
//            String city = request.getParameter("city");
//
//            request.setAttribute("name", name);
//            request.setAttribute("tel", tel);
//            request.setAttribute("email", email);
//            request.setAttribute("city", city);
//            if(name==""||tel==""||email==""||city==""){
//                request.setAttribute("err_msg", "请填写必要信息！");
//                request.getRequestDispatcher("Register.jsp").forward(request, response);
//            }else{
//                if(pwd==""){
//                    request.setAttribute("err_msg", "请填写密码");
//                    request.getRequestDispatcher("Register.jsp").forward(request, response);
//                }else{
//                    if(pwd.equals(cfpwd)){
//                            if(new UserDao().isExictDatabase(name)){
//                                request.setAttribute("err_msg", "用户名重复");
//                                request.setAttribute("username", "");
//                                request.getRequestDispatcher("Register.jsp").forward(request, response);
//                            }else{
//                                User user=new User(name,pwd,tel,email,city);
//                                UserDao userDao=new UserDao();
//                                userDao.InsertUser(user);
//                                response.sendRedirect("Login.jsp");
//                            }
//                    }else{
//                        request.setAttribute("err_msg", "两次密码不匹配");
//                        request.getRequestDispatcher("Register.jsp").forward(request, response);
//                    }
//                }
//
//            }
//
//        } else if("loginGM".equals(action)){
//            //	登录操作op==5
//            UserDao userDao=new UserDao();
//            String name = request.getParameter("userName");
//            String pwd = request.getParameter("userPwd");
//            User user=userDao.getUserByname(name);
//            if(name==""){
//                request.setAttribute("err_msg", "请填写用户名！");
//                request.getRequestDispatcher("Login.jsp").forward(request, response);
//            }else{
//                if(user!=null){
//                    if(pwd==""){
//                        request.setAttribute("userName", name);
//                        request.setAttribute("err_msg", "请填写密码！");
//                        request.getRequestDispatcher("Login.jsp").forward(request, response);
//                    }else{
//                        if(pwd.equals(user.getuPwd())){
//                            //成功,保存当前用户信息
//                            request.getSession().setAttribute("userName", name);
//                            response.sendRedirect("listGM.do");
//                        }else{
//                            request.setAttribute("userName", name);
//                            request.setAttribute("err_msg", "密码错误");
//                            request.getRequestDispatcher("Login.jsp").forward(request, response);
//                        }
//                    }
//                }else{
//                    request.setAttribute("err_msg", "用户不存在！");
//                    request.getRequestDispatcher("Login.jsp").forward(request, response);
//                }
//            }
//        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
