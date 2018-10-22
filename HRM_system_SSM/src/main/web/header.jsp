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
    <title>Header</title>
    <style>
        .top{
            border: 0px solid blue;
            width: 431px;
            height: 50px;
            float: left;
        }
        #top{
            padding-top: 12px;
            height: 38px;
        }
        #menu{
            border: 0px solid red;
            width: 1300px;
            height: 50px;
            background-color: black;
            margin-bottom: 10px;
        }
        ul li{
            display: inline;
            color: white;
        }
        #clear{
            clear: both;
        }
    </style>
</head>
<body>
<!--1.logo部分-->
<div id="logo">
    <div class="top">
        <img src="img/logo.jpg" height="46px" width="100%"/>
    </div>
    <div class="top">
        <img src="img/head.jpg" height="46px" />
    </div>
    <div class="top" id="top">
        <a href="#">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</div>
<div id="clear">

</div>
<!--2.导航栏部分-->
<div id="menu">
    <ul>
        <a href="#"><li style="font-size: 20px;">首页</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#"><li>公司简介</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#"><li>职位信息</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#"><li>招聘信息</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#"><li>公司项目</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
    </ul>
</div>
</body>
</html>
