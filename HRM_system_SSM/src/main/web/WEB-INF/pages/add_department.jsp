<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/25
  Time: 0:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="<%=basePath%>"/>
    <title>添加部门</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<form action="add_department" method="post">
    <table class="table table-hover" border="1px" width="300px" height="300px" align="center" cellpadding="0px"
           cellspacing="0px">
        <tr>
            <td>部门名称</td>
            <td><input name="dep_name"></td>
        </tr>

        <tr>
            <td>创建时间</td>
            <td><input type="date" name="dep_time"></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="添加"/>
                <h3 style="color: green;text-align: center">${success}</h3>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
