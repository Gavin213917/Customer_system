<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/26
  Time: 13:51
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
    <title>更新职位</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<form action="update_position" method="post">
    <table class="table table-hover" border="1px" width="300px" height="300px" align="center" cellpadding="0px"
           cellspacing="0px">
        <tr>
            <td>职位编号</td>
            <td><input name="pos_id" value="${sessionScope.position.pos_id}"></td>
        </tr>
        <tr>
            <td>职位名称</td>
            <td><input type="text" name="pos_name" value="${sessionScope.position.pos_name}"></td>
        </tr>
        <tr>
            <td>部门名称</td>
            <td><input name="dep_id" value="${sessionScope.department.dep_name}"></td>
        </tr>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="修改"/>
            <h3 style="color: green;text-align: center">${success}</h3>
        </td>
        </tr>
    </table>
</form>
</body>
</html>
