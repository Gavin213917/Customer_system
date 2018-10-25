<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/24
  Time: 23:28
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
    <title>更新员工信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<form action="update_employee" method="post">
    <table class="table table-hover" border="1px" width="300px" height="300px" align="center" cellpadding="0px" cellspacing="0px">
        <tr>
            <td>员工姓名</td>
            <td><input name="emp_name" value="${sessionScope.employ.emp_name}"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="text" name="emp_gender" value="${sessionScope.employ.emp_gender}"></td>
        </tr>
        <tr>
            <td>出生日期</td>
            <td><input type="date" name="emp_birth" value="${sessionScope.employ.emp_birth}"></td>
        </tr>
        <tr>
            <td>薪资</td>
            <td><input type="text" name="emp_salary" value="${sessionScope.employ.emp_salary}"></td>
        </tr>
        <tr>
            <td>员工账号</td>
            <td><input type="text" name="emp_account" value="${sessionScope.employ.emp_account}"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="text" name="emp_pass" value="${sessionScope.employ.emp_pass}"></td>
        </tr>
        <tr>
            <td>部门</td>
            <td><input type="text" name="dep_id" value="${sessionScope.employ.dep_id}"></td>
        </tr>
        <tr>
            <td>职位</td>
            <td><input type="text" name="pos_id" value="${sessionScope.employ.pos_id}"></td>
        </tr>
        <tr>
            <td>入职日期</td>
            <td><input type="date" name="emp_hireDate" value="${sessionScope.employ.emp_hireDate}"></td>
        </tr>
        <tr>
            <td>员工状态</td>
            <td><input type="text" name="emp_status" value="${sessionScope.employ.emp_status}"></td>
        </tr>

        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="更新"/>
                <h3 style="color: green;text-align: center">${success}</h3>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
