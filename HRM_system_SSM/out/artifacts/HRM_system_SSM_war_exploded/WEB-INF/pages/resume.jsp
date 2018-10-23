<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/22
  Time: 20:40
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
    <title>简历页面</title>
</head>
<body style="background:url(images/resume.jpg);">
<form action="" method="post">
    <table width="700" height="542" border="1" cellspacing="1px" align="center">
        <caption>
            <h3>个人简历</h3></caption>
        <tr>
            <td width="92">姓名:</td>
            <td width="100"><input name="res_name"></td>
            <td width="89">出生日期:</td>
            <td width="113"><input type="date" name="res_birth"></td>
            <td width="91">性别:</td>
            <td width="48"><input name="res_gender"></td>
            <td width="121" rowspan="5" background="images/pic.jpg"></td>
        </tr>
        <tr>
            <td>身份证:</td>
            <td><input name="res_idCard"></td>
            <td>年龄</td>
            <td><input name="res_age"></td>
            <td>期望薪资</td>
            <td><input name="res_expect_salary"></td>
        </tr>
        <tr>
            <td>学历:</td>
            <td><input name="res_education"></td>
            <td>身高:</td>
            <td>175cm</td>
            <td>体重:</td>
            <td>60kg</td>
        </tr>
        <tr>
            <td>专业:</td>
            <td>计算机科学与技术</td>
            <td>求职意向</td>
            <td><input name="res_job_intention"></td>
            <td>政治面貌</td>
            <td>团员</td>
        </tr>
        <tr>
            <td height="24" colspan="2">家庭住址:</td>
            <td colspan="4"><input name="res_address" size="65"></td>
        </tr>
        <tr>
            <td>手机号码:</td>
            <td colspan="2"><input name="res_phone"></td>
            <td>个人主页:</td>
            <td colspan="3">XXXXXX</td>
        </tr>
        <tr>
            <td>固定电话:</td>
            <td colspan="2">021-88888888</td>
            <td>电子信箱:</td>
            <td colspan="3"><input name="res_email"></td>
        </tr>
        <tr height="100">
            <td>教育经历:</td>
            <td colspan="6">
                <textarea name="res_education_background" cols="80px" rows="10px"></textarea>
            </td>
        </tr>
        <tr>
            <td>外语水平:</td>
            <td colspan="6">
                <input name="res_certificate">
            </td>
        </tr>
        <tr>
            <td colspan="7" align="center"><b>工作经历</b></td>
        </tr>
        <tr align="center">
            <td colspan="2">工作时间</td>
            <td colspan="2">工作单位</td>
            <td colspan="2">工作职位</td>
        </tr>
        <tr>
            <td colspan="2">2016-2017</td>
            <td colspan="2">吉林省明日科技有限公司</td>
            <td colspan="2">Java程序员</td>
        </tr>
        <tr height="100">
            <td>工作描述:</td>
            <td colspan="7"><textarea name="res_work_experience" cols="80px" rows="10px"></textarea></td>
        </tr>

        <tr>
            <td colspan="7" align="center"><b>项目经验</b></td>
        </tr>
        <tr>
            <td colspan="7" height="100">根据自己的实际情况填写</td>
        </tr>
        <tr>
            <td colspan="7" align="center"><b>自我评价</b></td>
        </tr>
        <tr>
            <td colspan="7" height="300">
                <textarea name="res_aboutMe" cols="100px" rows="20px"></textarea>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
