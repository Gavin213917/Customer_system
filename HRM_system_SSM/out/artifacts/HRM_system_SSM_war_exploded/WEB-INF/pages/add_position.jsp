<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/26
  Time: 13:38
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
    <title>添加职位</title>
</head>
<body>
<form action="add_position" method="post">
    <table class="table table-hover" border="1px" width="300px" height="300px" align="center" cellpadding="0px"
           cellspacing="0px">
        <tr>
            <td>职位名称</td>
            <td><input name="pos_name"></td>
        </tr>

        <tr>
            <td>部门名称</td>
            <td><input  name="dep_id"></td>
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
