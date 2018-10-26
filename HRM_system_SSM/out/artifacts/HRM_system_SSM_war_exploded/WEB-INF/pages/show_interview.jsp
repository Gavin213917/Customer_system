<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/25
  Time: 0:27
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
    <title>查看面试邀请信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<table class="table table-hover" border="1px" width="1000px" height="100px" align="center" cellpadding="0px"
       cellspacing="0px">
    <c:forEach items="${sessionScope.interviewList}" var="interview" varStatus="a">
        <c:if test="${a.count==1}">
            <tr>
                <td>编号</td>
                <td>求职人</td>
                <td>状态</td>
                <td>发布时间</td>
                <td>确认面试</td>
                <td>拒绝面试</td>
            </tr>
        </c:if>
        <tr>
            <td>${interview.iview_id}</td>
            <td>${interview.u_id}</td>
            <td>
                <c:if test="${interview.iview_status==1}">
                    <c:out value="HR已阅读简历"/>
                </c:if>
                <c:if test="${interview.iview_status==2}">
                    <c:out value="求职者同意面试"/>
                </c:if>
                <c:if test="${interview.iview_status==3}">
                    <c:out value="恭喜您，已被本公司录用"/>
                </c:if>
            </td>
            <td>${interview.iview_time}</td>
            <td><a href="update_interview?u_id=${interview.u_id}"><input type="button" value="确认"></a></td>
            <td><a href="update_interview?u_id=${interview.u_id}"><input type="button" value="拒绝"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
