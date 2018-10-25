<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/25
  Time: 14:35
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
    <title>部门信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<table class="table table-hover" border="1px" width="1000px" height="100px" align="center" cellpadding="0px"
       cellspacing="0px">
    <c:forEach items="${sessionScope.departmentList}" var="department" varStatus="a">
        <c:if test="${a.count==1}">
            <tr>
                <td>编号</td>
                <td>部门名称</td>
                <td>创建时间</td>
                <td>删除</td>
                <td>修改</td>
            </tr>
        </c:if>
        <tr>
            <td>${department.dep_id}</td>
            <td>${department.dep_name}</td>
            <td>${department.dep_time}</td>
            <td>
                <form action="delete_department" method="post">
                    <input type="hidden" name="delete_id" value="${department.dep_id}">
                    <input type="submit" value="删除">
                </form>
            </td>
            <td>
                <form action="updateDepartment" method="post">
                    <input type="hidden" name="update_id" value="${department.dep_id}">
                    <input type="submit" value="修改">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
