<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/23
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>"/>
    <title>艺谷（深圳）后台管理系统</title>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css"/>
    <script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="Scripts/jquery.spritely-0.6.js"></script>
    <script type="text/javascript" src="Scripts/chur.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Styles/login.css"/>
    <script type="text/javascript">
        $(function () {
            $('#clouds').pan({fps: 20, speed: 0.7, dir: 'right', depth: 10});
            $('.login').click(function () {
                if ($('#uid').val() == "" || $('#pwd').val() == "" || $('#code').val() == "") {
                    $('.tip').html('用户名或密码不可为空！')
                }
                else {
                    location.href = 'admin_login';
                }
            })
        })
    </script>
</head>
<body>
<div id="clouds" class="stage"></div>
<div class="loginmain">
</div>
<form action="admin_login" method="post">
    <div class="row-fluid">
        <h1>艺谷（深圳）后台管理系统</h1>
        <p>
            <label>帐&nbsp;&nbsp;&nbsp;号：<input name="u_name" type="text" id="uid"/></label>
        </p>
        <p>
            <label>密&nbsp;&nbsp;&nbsp;码：<input name="u_pass" type="password" id="pwd"/></label>
        </p>
        <p class="pcode">
            <label>效验码：<input type="text" id="code" maxlength="5" class="code" value="e5g88"/><img src="img/code.gif"
                                                                                                   alt=""
                                                                                                   class="imgcode"/><a
                    href="#">下一张</a></label>
        </p>
        <p class="tip">&nbsp;</p>
        <hr/>
        <input type="submit" value=" 登 录 " class="btn btn-primary btn-large login"/>
        &nbsp;&nbsp;&nbsp;<input type="button" value=" 取 消 " class="btn btn-large"/>
    </div>
</form>
</body>
</html>
