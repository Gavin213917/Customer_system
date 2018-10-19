<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/9/19
  Time: 17:47
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
    <title>登录界面</title>
    <script>
        function showTips(id, info) {
            document.getElementById(id + "span").innerHTML = "<font color='gray'>" + info + "</font>";
        }

        function check(id, info) {
            //1.获取用户输入的用户名数据
            var uValue = document.getElementById(id).value;
            //2.进行校验
            if (uValue == "") {
                document.getElementById(id + "span").innerHTML = "<font color='red'>" + info + "</font>";
            } else {
                document.getElementById(id + "span").innerHTML = "";
            }
        }
    </script>
</head>
<body>
<%--引入header.jsp--%>
<jsp:include page="/WEB-INF/pages/header.jsp"></jsp:include>

<div style="border: 0px;background: azure">
    <h3 style="color: red;text-align: center">${error}</h3>
    <h3 style="color: green;text-align: center">${success}</h3>
    <form action="/login" method="post" name="regForm" onsubmit="return check()">
        <table border="1px" width="500px" height="380px" align="center" cellpadding="0px" cellspacing="0px"
               bgcolor="">
            <tr height="40px">
                <td colspan="2">
                    <font size="4">用户登录</font> &nbsp;&nbsp;&nbsp;USER LOGIN
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;用户名
                </td>
                <td>
                    <input type="text" name="name" size="34px" id="user" onfocus="showTips('user','用户名必填！')"
                           onblur="check('user','用户名不能为空！')"/><span id="userspan"></span>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;密码
                </td>
                <td>
                    <input type="password" name="pass" size="34px" id="password"
                           onfocus="showTips('password','密码必填')" onblur="check('password','密码不能为空!')"/><span
                        id="passwordspan"></span>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="log"/>
                </td>
                <td>
                    <strong>记住用户名密码</strong>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="登录"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="check"><input type="button" value="自动登录"/></a>
                </td>
            </tr>
        </table>
    </form>
</div>
<jsp:include page="/WEB-INF/pages/foot.jsp"></jsp:include>
</body>
</html>
