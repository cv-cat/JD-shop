<%--
  Created by IntelliJ IDEA.
  User: zhencheng
  Date: 2021-10-20
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>手机端演示</title>
    <link rel="stylesheet" href="css/mobile.css"/>
</head>
<body>
<div class="main-container">
    <div class="inner clearfix">
        <div class="app-container">
            <div class="display-area">
                <div class="mobile-simulator"><h3 class="title ellipse">手机端展示</h3>
                    <%--<%@include file="index.jsp"%>--%>
                    <iframe id="app-iframe" src="index.jsp" class="iframe"></iframe>
                </div>
                <a href="index.jsp" class="enter-editor">返回 PC端</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>


