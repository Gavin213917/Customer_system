<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/26
  Time: 9:47
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
    <title>success</title>
</head>
<body style="background: url('images/success.jpg') no-repeat;width:'100%';height:'100%'">

</body>
</html>
