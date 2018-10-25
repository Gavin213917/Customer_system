<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/25
  Time: 17:11
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
    <title>更新部门信息</title>
</head>
<body>
<form action="update_department" method="post">
    <table class="table table-hover" border="1px" width="300px" height="300px" align="center" cellpadding="0px"
           cellspacing="0px">
        <tr>
            <td>部门编号</td>
            <td><input name="dep_id" value="${sessionScope.department.dep_id}"></td>
        </tr>
        <tr>
            <td>部门名称</td>
            <td><input type="text" name="dep_name" value="${sessionScope.department.dep_name}"></td>
        </tr>
        <tr>
            <td>创建时间</td>
            <td><input type="date" name="dep_time" value="${sessionScope.department.dep_time}"></td>
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
