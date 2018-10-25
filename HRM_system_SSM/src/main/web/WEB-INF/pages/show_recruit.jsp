<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/25
  Time: 13:09
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
    <meta charset="UTF-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>查看招聘信息</title>
    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- 引入jQuery核心js文件 -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- 引入BootStrap核心js文件 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<table class="table table-hover" border="1px" width="1000px" height="100px" align="center" cellpadding="0px"
       cellspacing="0px">
    <c:forEach items="${sessionScope.recruitList}" var="recruit" varStatus="a">
        <c:if test="${a.count==1}">
            <tr>
                <td>编号</td>
                <td>职位名</td>
                <td>公司名</td>
                <td>工作地址</td>
                <td>薪资</td>
                <td>发布时间</td>
                <td>删除</td>
                <td>修改</td>
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
                <form action="delete_recruit" method="post">
                    <input type="hidden" name="delete_id" value="${recruit.rec_id}">
                    <input type="submit" value="删除">
                </form>
            </td>
            <td>
                <form action="update" method="post">
                    <input type="hidden" name="update_id" value="${recruit.rec_id}">
                    <input type="submit" value="修改">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<h3 style="color: green;text-align: center">${success}</h3>
</body>
</html>
