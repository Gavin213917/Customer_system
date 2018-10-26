<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/25
  Time: 20:10
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
    <title>添加offer</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<form action="add_offer" method="post">
    <table class="table table-hover" border="1px" width="300px" height="300px" align="center" cellpadding="0px"
           cellspacing="0px">
        <tr>
            <td>姓名</td>
            <td><input name="offer_name"></td>
        </tr>
        <tr>
            <td>薪资</td>
            <td><input name="offer_salary"></td>
        </tr>
        <tr>
            <td>报到时间</td>
            <td><input type="date" name="offer_time"></td>
        </tr>
        <tr>
            <td>报到地址</td>
            <td><input name="offer_address"></td>
        </tr>
        <tr>
            <td>用户编号</td>
            <td><input name="u_id"></td>
        </tr>
        <tr>
            <td>员工账号</td>
            <td><input name="offer_account"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input name="offer_pass"></td>
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
