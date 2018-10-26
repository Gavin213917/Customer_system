<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/24
  Time: 23:05
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
    <title>员工信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<h3 style="color: green;text-align: center">${success}</h3>
<table class="table table-hover" border="1px" width="600px" height="100px" align="center" cellpadding="0px" cellspacing="0px">
    <c:forEach items="${sessionScope.employeeList}" var="employee" varStatus="a">
        <c:if test="${a.count==1}">
            <tr>
                <td>编号</td>
                <td>员工姓名</td>
                <td>性别</td>
                <td>出生日期</td>
                <td>薪资</td>
                <td>员工账号</td>
                <td>部门</td>
                <td>职位</td>
                <td>入职日期</td>
                <td>状态</td>
                <td>修改</td>
                <td>删除</td>
            </tr>
        </c:if>
        <tr>
            <td>${employee.emp_id}</td>
            <td>${employee.emp_name}</td>
            <td>${employee.emp_gender}</td>
            <td>${employee.emp_birth}</td>
            <td>${employee.emp_salary}</td>
            <td>${employee.emp_account}</td>
            <td>${employee.dep_id}</td>
            <td>${employee.pos_id}</td>
            <td>${employee.emp_hireDate}</td>
            <td>${employee.emp_status}</td>
            <td>
                <form action="delete_employee" method="post">
                    <input type="hidden" name="delete_id" value="${employee.emp_id}">
                    <input type="submit" value="删除">
                </form>
            </td>

            <td>
                <form action="updateEmployee" method="post">
                    <input type="hidden" name="update_id" value="${employee.emp_id}">
                    <input type="submit" value="修改">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
