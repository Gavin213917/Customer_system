<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/9/19
  Time: 22:22
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
    <title>注册界面</title>
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
<jsp:include page="../../header.jsp"/>
<div style="background: azure">
    <form action="/register" method="post" name="regForm" onsubmit="return check()">
        <table border="0px" width="650px" height="400px" align="center" cellpadding="0px" cellspacing="0px"
               bgcolor="azure">
            <tr height="40px">
                <td colspan="2">
                    <font size="4">会员注册</font> &nbsp;&nbsp;&nbsp;USER REGISTER
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户名
                </td>
                <td>
                    <input type="text" name="u_name" size="34px" id="user" onfocus="showTips('user','用户名必填！')"
                           onblur="check('user','用户名不能为空！')"/><span id="userspan"></span>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码
                </td>
                <td>
                    <input type="password" name="u_pass" size="34px" id="password"
                           onfocus="showTips('password','密码必填')" onblur="check('password','密码不能为空!')"/><span
                        id="passwordspan"></span>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;确认密码
                </td>
                <td>
                    <input type="password" name="repass" size="34px" id="repassword"></input>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email
                </td>
                <td>
                    <input type="text" name="email" size="34px" id="eamil"/>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名
                </td>
                <td>
                    <input type="text" name="username" size="34px"/>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别
                </td>
                <td>
                    <input type="radio" name="sex" value="男"/>男
                    <input type="radio" name="sex" value="女"/>女
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出生日期
                </td>
                <td>
                    <input type="text" name="birthday" size="34px"/>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;验证码
                </td>
                <td>
                    <input type="text" name="yzm"/>
                    <img src="img/yanzhengma.png"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="注册"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<jsp:include page="../../foot.jsp"/>
</body>
</html>
