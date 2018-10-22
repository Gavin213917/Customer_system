<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/22
  Time: 21:01
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
    <title>招聘信息</title>
</head>
<body>
${sessionScope.u.u_name}<br/>
<table border="1px" width="1000px" height="100px" align="center" cellpadding="0px" cellspacing="0px">
    <c:forEach items="${sessionScope.recruits}" var="recruit" varStatus="a">
        <c:if test="${a.count==1}">
            <tr>
                <td>编号</td>
                <td>职位名</td>
                <td>公司名</td>
                <td>工作地址</td>
                <td>薪资</td>
                <td>发布时间</td>
                <td>投递简历</td>
                <%--<td>修改</td>--%>
            </tr>
        </c:if>
        <tr>
            <td>${recruit.rec_id}</td>
            <td>${recruit.rec_job}</td>
            <td>${recruit.rec_company_name}</td>
            <td>${recruit.rec_address}</td>
            <td>${recruit.rec_sal}</td>
            <td>${recruit.rec_date}</td>
            <td>
                <form action="to_resume" method="post">
                    <input type="hidden" name="user_id" value="${sessionScope.u.u_id}">
                    <input type="submit" value="投递简历">
                </form>
            </td>

            <%--<td>--%>
                <%--<form action="#" method="post">--%>
                    <%--<input type="hidden" name="update_id" value="${recruit.rec_id}">--%>
                    <%--<input type="submit" value="修改">--%>
                <%--</form>--%>
            <%--</td>--%>
        </tr>
    </c:forEach>
</table>
</body>
</html>
