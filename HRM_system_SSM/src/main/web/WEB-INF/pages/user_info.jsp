<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/9/19
  Time: 23:16
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
    <title>个人主页</title>
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
        <img src="img/淘宝.png" height="46px" width="100%"/>
    </div>
    <div class="top">
        <img src="img/header.png" height="46px" />
    </div>
    <div class="top" id="top">
        ${sessionScope.u.name}----个人中心&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#">购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#">我的订单</a>
    </div>
</div>
<div id="clear">

</div>
<!--2.导航栏部分-->
<div id="menu">
    <ul>
        <a href="#"><li style="font-size: 20px;">主页</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="/showUserDetail"><li>我的收货地址</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#"><li>充值</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><li>修改个人信息</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="/go_main.action"><li>返回</li></a>
    </ul>
</div>
<div style="background: azure;width: 1300px;height: 400px">
    <h3 style="color: green;text-align: center">${success}</h3>
    <table border="1px" width="300px" height="80px" align="center" cellpadding="0px" cellspacing="0px">
        <tr>
            <td>姓名</td>
            <td>性别</td>
            <td>余额</td>
        </tr>

        <tr>
            <td>${sessionScope.u.name}</td>
            <td>${sessionScope.u.sex}</td>
            <td>${sessionScope.u.money}</td>
        </tr>
    </table>
</div>
<jsp:include page="/WEB-INF/pages/foot.jsp"></jsp:include>
</body>
</html>