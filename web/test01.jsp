<%--
  Created by IntelliJ IDEA.
  User: zhencheng
  Date: 2022-01-24
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<button class="form-item form-item-getcode" clstag="pageclick|keycount|reg_puser_201804031|7"
     id="TencentCaptcha" data-appid="2041127177" data-cbfn="callback" type="button">
    点击按钮进行验证 <div id="slideAuthCode" class="JDValidate-wrap"></div>
</button>
<script>
    window.callback = function (res) {
        // 添加自己相应配置即可
        console.log(res)
        if (res.ret === 0) {
            document.getElementById("txyanzheng").style.display = "none";
            document.getElementById("yanzhengma").style.display = "block";
            temp = 0;
        }
    }
</script>
<script src="https://ssl.captcha.qq.com/TCaptcha.js"></script>

</body>
</html>
