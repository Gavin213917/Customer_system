<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/9/19
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>Foot</title>
    <style>
        #bottom{
            text-align: center;
        }
    </style>
</head>
<body>
<!--7.广告图片-->
<div>
    <img src="img/footer.jpg" width="100%"/>
</div>
<!--8.友情链接和版权信息-->
<div id="bottom">
    <a href="#">关于我们</a>
    <a href="#">联系我们</a>
    <a href="#">招贤纳士</a>
    <a href="#">法律声明</a>
    <a href="#">友情链接</a>
    <a href="#">支付方式</a>
    <a href="#">配送方式</a>
    <a href="#">服务声明</a>
    <a href="#">广告声明</a>
    <p>
        Copyright © 2018-2019 明洪商城 版权所有
    </p>
</div>
</body>
</html>
