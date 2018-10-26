<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/25
  Time: 20:25
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
    <meta charset="UTF-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>通知</title>
    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- 引入jQuery核心js文件 -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- 引入BootStrap核心js文件 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<table class="table table-hover" border="1px" width="1000px" height="100px" align="center" cellpadding="0px"
       cellspacing="0px">
    <c:forEach items="${sessionScope.offerList}" var="offer" varStatus="a">
        <c:if test="${a.count==1}">
            <tr>
                <td>编号</td>
                <td>姓名</td>
                <td>薪资</td>
                <td>报到时间</td>
                <td>报到地址</td>
                <td>用户名</td>
                <td>员工账号</td>
                <td>密码</td>
            </tr>
        </c:if>
        <tr>
            <td>${offer.offer_id}</td>
            <td>${offer.offer_name}</td>
            <td>${offer.offer_salary}</td>
            <td>${offer.offer_time}</td>
            <td>${offer.offer_address}</td>
            <td>${sessionScope.u.u_name}</td>
            <td>${offer.offer_account}</td>
            <td>${offer.offer_pass}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
