<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/25
  Time: 13:26
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
    <title>更新招聘信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<form action="add_recruit" method="post">
    <table class="table table-hover" border="1px" width="300px" height="300px" align="center" cellpadding="0px"
           cellspacing="0px">
        <tr>
            <td>公司名字</td>
            <td><input name="rec_company_name" value="${sessionScope.recruit.rec_company_name}"></td>
        </tr>
        <tr>
            <td>职位</td>
            <td><input type="text" name="rec_job" value="${sessionScope.recruit.rec_job}"></td>
        </tr>
        <tr>
            <td>招聘信息</td>
            <td><input type="date" name="rec_info" value="${sessionScope.recruit.rec_info}"></td>
        </tr>
        <tr>
            <td>联系方式</td>
            <td><input type="date" name="rec_contact" value="${sessionScope.recruit.rec_contact}"></td>
        </tr>
        <tr>
            <td>公司地址</td>
            <td><input type="date" name="rec_address" value="${sessionScope.recruit.rec_address}"></td>
        </tr>
        <tr>
            <td>薪资</td>
            <td><input type="date" name="rec_sal" value="${sessionScope.recruit.rec_sal}"></td>
        </tr>
        <tr>
            <td>发布日期</td>
            <td><input type="date" name="rec_date" value="${sessionScope.recruit.rec_date}"></td>
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
