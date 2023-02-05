<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html >
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商城</title>
    <link href="./css/common.css" rel="stylesheet" type="text/css" />
    <link href="./css/product.css" rel="stylesheet" type="text/css" />
    <link href="./css/userinfo.css" rel="stylesheet" type="text/css" />

</head>

<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/shop?useUnicode=true&characterEncoding=utf-8"
                   user="root" password="123456" />

<sql:query dataSource="${snapshot}" var="result">
    SELECT *
    from orderdetail,goods,grouprule
    where
    goods.goodsid=grouprule.goodsid
    and goods.goodsid=orderdetail.goodsid
    order by
    orderdetail.orderdetailid
    desc;

</sql:query>

<div class="container header">
    <div class="span5">
        <div class="logo">
            <a href="http://localhost:8080/mango/"> <img
                    src="./image/r___________renleipic_01/logo.png" alt="FD">
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="./image/header.jpg" width="320" height="50" alt="正品保障"
                 title="正品保障">
        </div>
    </div>
    <div class="span10 last">
        <div class="topNav clearfix">
            <ul>
                <li id="headerLogin" class="headerLogin"
                    style="display: list-item;"></li>
                <li id="headerRegister" class="headerRegister"
                    style="display: list-item;"><a href="./setup.jsp">注册</a>|</li>

                <li><a href="./userinfo.jsp">会员中心</a>
                    <a href="UserinfoServlet?userid=<%%>"></a>> |
                </li>
                <li><a>购物指南</a> |</li>
                <li><a>关于我们</a></li>
            </ul>
        </div>
        <div class="cart">
            <a href="./userinfo1.jsp">购物车</a>
        </div>
        <div class="phone">
            客服热线: <strong>15726607618</strong>
        </div>
    </div>
    <div class="span24">
        <ul class="mainNav">
            <li><a href="./index.jsp">首页</a> |</li>
            <li><a href="./goodstype.jsp">商品分类</a> |</li>
            <li><a href="./luckgroup.jsp">抽奖团</a> |</li>
            <li><a href="./seckillgroup.jsp">秒杀团</a> |</li>
            <li><a href="./brandgroup.jsp">品牌团</a> |</li>
            <li><a href="./supergroup.jsp">超级团</a> |</li>
            <li><a href="./trygroup.jsp">试用团</a> |</li>
        </ul>
    </div>

</div>
<div class="container productList">
    <div class="span6">

        <div class="hotProductCategory">
            <dl>
                <dt>
                    <a href="./image/蔬菜 - Powered By Mango Team.htm">用户名</a>
                </dt>
            </dl>
            <dl>
                <dt>
                    <a href="./userinfo.jsp">个人信息</a>
                </dt>

            </dl>
            <dl>
                <dt>
                    <a onclick="javascript:window.location.reload();">订单详情</a>
                </dt>
            </dl>
            <dl>
                <dt>
                    <a href="./index.jsp">返回</a>
                </dt>

            </dl>
            <dl>
                <dt>
                    <a>注销</a>
                </dt>

            </dl>
        </div>

    </div>

    <div class="span18 last">

        <table width="700" height="281" border="1" align="center"
               cellpadding="1" cellspacing="1" bordercolor="#000000"
               bgcolor="#FFFFFF">

            <tr>
                <td width="200"><div class="STYLE15">
                    <font size="5">订单详情</font>
                </div></td>
            </tr>
            <tr>
                <td><div align="center">
                    <span class="STYLE1">你的商品</span>
                </div></td>
                <td><div align="center">
                    <span class="STYLE1">订单编号</span>
                </div></td>
                <td><div align="center">
                    <span class="STYLE1">状态</span>
                </div></td>
                <td><div align="center">
                    <span class="STYLE1">商品数量</span>
                </div></td>
                <td><div align="center">
                    <span class="STYLE1">商品现价</span>
                </div></td>
                <td><div align="center">
                    <span class="STYLE1">商品规则</span>
                </div></td>
                <td><div align="center">
                    <span class="STYLE1">订单状态</span>
                </div></td>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td target="_blank" href="/shop/goodsdetail.jsp?id=${row.groupruleid}">
                        <img src="./image/${row.goodspicture}" id="${row.groupruleid}"
                             style="display: block; ">
                    </td>

                    <td><div align="center">
                        <span class="STYLE1"><c:out value="${row.orderid}" /></span>
                    </div></td>

                    <td><div align="center">
                        <span class="STYLE1"><c:out value="${row.goodsid}" /></span>
                    </div></td>

                    <td><div align="center">
                        <span class="STYLE1"><c:out value="${row.goodsnum}" /></span>
                    </div></td>

                    <td><div align="center">
                        <span class="STYLE1"><c:out value="${row.goodsnowprise}" /></span>
                    </div></td>


                    <td><div align="center">
                                <span class="STYLE1"><c:out value="${row.groupruleid}" />
                                </span>
                    </div></td>

                    <td><div align="center">
                            <span class="STYLE1">
                                    <c:choose>
                                    <c:when test="${row.buyman== 8}">
                                        <b style="color:blue;">已成团<b/>
                                    </c:when>
                                    <c:otherwise>
                                        <b style="color:red;">未成团</b>
                                    </c:otherwise>
                                    </c:choose>
                                    </span>
                    </div></td>

                </tr>

            </c:forEach>
        </table>
    </div>
</div>
<body>
<div class="box clear">
    <h3>商品列表信息</h3>
    <a class="btn btn-add" href="/GoodsMannagerSystem/addGoods">新增商品</a>
</div>
<form action="/GoodsMannagerSystem/addGoods" method="post">
    <h3>新增商品</h3>
    <p>
        商&emsp;品Id：<input type="text" name="id" required="required"  autocomplete="off">
    </p>
    <p>
        商品名称：<input type="text" name="goodsname" required="required" autocomplete="off">
    </p>
    <p>
        商品价格：<input type="number" name="goodsprice" required="required" autocomplete="off" >
    </p>
    <p>
        商品颜色：<input type="text" name="goodscolor" required="required" autocomplete="off">
    </p>
    <p>
        商品重量：<input type="number" name="goodsweight" required="required" autocomplete="off">
    </p>
    <input class="btn-submit" type="submit" value="提交">&emsp;<a class="btn-show" href="/GoodsMannagerSystem/showGoods">查看商品信息</a>
</form>
————————————————
版权声明：本文为CSDN博主「Bug终结者.」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/weixin_45526437/article/details/118273874
<table>
    <tr>
        <th>商品名称</th>
        <th>商品价格</th>
        <th>商品颜色</th>
        <th>商品重量</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${goods }" var="g">
        <tr><td>${g.goodsName }</td>
            <td>${g.goodsPrice }</td>
            <td>${g.goodsColor }</td>
            <td>${g.goodsWeight }</td>
            <td><a class="btn btn-del" href="/GoodsMannagerSystem/deleteGoods?id=${g.id }">删除</a></td>
            <td><a class="btn btn-edit" href="/GoodsMannagerSystem/ToUpdateServlet?id=${g.id }">修改</a></td></tr>
    </c:forEach>
</table>


</body>
<form action="/GoodsMannagerSystem/updates">
    <h3>修改商品信息</h3>
    <p>
        <input type="hidden" name="id" autocomplete="off" value="${goods.id }" placeholder="${goods.id }">
    </p>
    <p>
        商品名称：<input type="text" name="goodsname" autocomplete="off" value="${goods.goodsName }" placeholder="${goods.goodsName }">
    </p>
    <p>
        商品价格：<input type="number" name="goodsprice" autocomplete="off" value="${goods.goodsPrice }" placeholder="${goods.goodsPrice }" >
    </p>
    <p>
        商品颜色：<input type="text" name="goodscolor"   autocomplete="off" value="${goods.goodsColor }" placeholder="${goods.goodsColor }">
    </p>
    <p>
        商品重量：<input type="number" name="goodsweight" autocomplete="off" value="${goods.goodsWeight }" placeholder="${goods.goodsWeight }">
    </p>
    <input class="btn btn-submit" type="submit" value="提交">&emsp;<input class="btn btn-submit" type="reset" value="重置">

</form>
————————————————
版权声明：本文为CSDN博主「Bug终结者.」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/weixin_45526437/article/details/118273874
————————————————
版权声明：本文为CSDN博主「Bug终结者.」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/weixin_45526437/article/details/118273874
<div class="container footer">
    <div class="span24">
        <div class="footerAd">
            <img src=".
                /image/footer.jpg" width="950" height="52"
                 alt="我们的优势" title="我们的优势">
        </div>
    </div>
    <div class="span24">
        <ul class="bottomNav">
            <li><a>关于我们</a> |</li>
            <li><a>联系我们</a> |</li>
            <li><a>诚聘英才</a> |</li>
            <li><a>法律声明</a> |</li>
            <li><a>友情链接</a> |</li>
            <li><a target="_blank">支付方式</a> |</li>
            <li><a target="_blank">配送方式</a> |</li>
            <li><a>官网</a> |</li>
            <li><a>论坛</a></li>
        </ul>
    </div>
    <div class="span24">
        <div class="copyright">Copyright©2005-2015 网上商城 版权所有</div>
    </div>
</div>

</body>
</html>