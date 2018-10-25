<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/24
  Time: 22:50
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
    <title>错误页面</title>
</head>
<body>
    <img src="img/b14.gif" width="100%" height="500px">
</body>
</html>
