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
    <meta charset="UTF-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录界面</title>
    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- 引入jQuery核心js文件 -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- 引入BootStrap核心js文件 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">

    <!--
        描述：菜单栏
    -->
    <div class="container-fluid">
        <div class="col-md-4">
            <img src="img/logo.jpg" height="60px" width="400px"/>
        </div>
        <div class="col-md-5">
            <img src="img/head.jpg" height="60px" width="300px"/>
        </div>
        <div class="col-md-3" style="padding-top:20px">
            <ol class="list-inline">
                <li><a href="#">${sessionScope.u.u_name}</a></li>
                <li><a href="go_userInfo">个人信息</a></li>
            </ol>
        </div>
    </div>
    <!--
       描述：导航条
   -->
    <div class="container-fluid">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">首页</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">公司简介<span class="sr-only">(current)</span></a>
                        </li>
                        <li><a href="#">职位搜索</a></li>
                        <li><a href="#">职场咨询</a></li>
                        <li><a href="#">校园招聘</a></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>

                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
    </div>
    <table class="table table-hover" border="1px" width="1000px" height="100px" align="center" cellpadding="0px" cellspacing="0px">
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
