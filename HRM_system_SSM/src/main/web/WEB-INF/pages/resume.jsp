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
<style>
    #title {
        color: #F00;
        font-size: 28px
    }

    .secondTitle {

        font-size: 18px;
        background-color: #09F;
        text-align: center;
    }

    body {
          text-align: center;
          font-size: 16px;
          font-family: 楷体;
    }

    ul {
        text-align: left;
    }

    li {
        text-align: left;
    }

    .info {
        text-align: left;
        font-size: 16px;
    }

    td {
        border-color: #09F;
    }

    tr {
        border-color: #09F;
    }
</style>

</head>
<body>
<table  align="center" width="660" border="1px solid" cellspacing="0px" bordercolor="#00CCFF"  frame="box">
     
    <caption id="title"  >
          <strong>个人简历</strong>
         
    </caption>
     
    <tr>   
        <td colspan="5" class="secondTitle">基本资料</td>
    </tr>
     
    <tr>
           
        <td width="116">姓&nbsp;名</td>
           
        <td width="134"><input name="res_name"/></td>
           
        <td width="79">性&nbsp;别</td>
           
        <td width="166"><input name="res_gender"></td>
             
        <td width="129" rowspan="5"><img  src="yanyiwei.jpg" width="105" height="150" alt="1"/></td>
         
    </tr>
     
    <tr>
           
        <td>年&nbsp;龄</td>
           
        <td><input name="res_age"/></td>
           
        <td>电话</td>
           
        <td><input name="res_phone"></td>
         
    </tr>
     
    <tr>
           
        <td>出生日期</td>
           
        <td><input type="date" name="res_birth"></td>
           
        <td>居住地址</td>
           
        <td><input name="res_address"></td>
         
    </tr>
     
    <tr>
           
        <td>毕业学校</td>
           
        <td colspan="3"><input name="res_school"></td>
         
    </tr>
     
    <tr>
           
        <td>专&nbsp;业</td>
           
        <td>计算机科学与技术</td>
           
        <td>学&nbsp;历</td>
           
        <td><input name="res_education"></td>
         
    </tr>
     
    <tr>
           
        <td colspan="5" class="secondTitle">个人技能</td>
         
    </tr>
     
    <tr>
           
        <td>个人技能</td>
           
        <td colspan="4">
               
            <ul>
                   
                <li>熟练掌握Java</li>
                   
                <li>熟练掌握SQl Server</li>
                   
                <li>熟练掌握Oracle</li>
                   
            </ul>
                
               
        </td>
         
    </tr>
     
    <tr>
           
        <td>计算机水平</td>
           
        <td colspan="4">
                 
            <ul  >
                     
                <li>计算机二级</li>
                     
                <li>程序员认证</li>
                     
            </ul>
               
        </td>
         
    </tr>
     
    <tr>
           
        <td>语言能力</td>
           
        <td colspan="4">
                <input name="res_certificate">
        </td>
         
    </tr>
     
    <tr>
           
        <td>个人专长</td>
           
        <td colspan="4" class="info">
                 <input type="textarea" name="res_education_background" cols="30" rows="10"></textarea>">     
        </td>
         
    </tr>
     
    <tr>
           
        <td colspan="5" class="secondTitle">项目经验</td>
         
    </tr>
     
    <tr><strong>
           
        <td>年月</td>
           
        <td>项目名称</td>
           
        <td colspan="3">项目说明</td>
    </strong>
         
    </tr>
     
    <tr>
           
        <td><input name=""></td>
           
        <td>学生管理系统</td>
           
        <td colspan="3">
               实现管理员登录注册<br/>
               实现学生的增删改查
                
               
        </td>
         
    </tr>
       
    <tr>
           
        <td>2014年</td>
           
        <td>二手房交易系统</td>
           
        <td colspan="3">
                实现用户的注册登录<br/>
                 实现管理员帐号<br/>
                 实现用户购买寄售房屋 房屋信息的显示（分页）<br/>    
               
        </td>
               
    <tr>
           
        <td>2015年</td>
           
        <td>捕鱼达人</td>
           
        <td colspan="3">
                  捕鱼达人基本功能的实现    
               
        </td>
         
    </tr>
     
    <tr>
           
        <td colspan="5" class="secondTitle">实践与实习</td>
         
    </tr>
     
    <tr>
           
        <td>2011.6-2012.9</td>
           
        <td colspan="4"></td>
         
    </tr>
       
    <tr>
           
        <td>2012.6-2013.9</td>
           
        <td colspan="4"></td>
         
    </tr>
       
    <tr>
           
        <td>2014.6-2015.9</td>
           
        <td colspan="4"></td>
         
    </tr>
       
    <tr>
           
        <td>2015.9-2015.1</td>
           
        <td colspan="4"></td>
         
    </tr>
     
    <tr>
           
        <td colspan="5" class="secondTitle">个人爱好</td>
         
    </tr>
     
    <tr>
           
        <td>兴趣爱好</td>
           
        <td colspan="4">游戏、篮球</td>
         
    </tr>
     
    <tr>
           
        <td colspan="5" class="secondTitle">自我评价</td>
         
    </tr>
     
    <tr>
           
        <td colspan="5">
        </td>
         
    </tr>
     
    <tr>
           
        <td colspan="5" class="secondTitle">联系方式</td>
         
    </tr>
     
    <tr>
           
        <td>移动电话</td>
           
        <td>157***</td>
           
        <td>QQ</td>
           
        <td colspan="2">450**</td>
         
    </tr>
     
    <tr>
           
        <td>e-mail</td>
           
        <td>xiaoshidebukuai@163.com</td>
           
        <td>CSDN</td>
           
        <td colspan="2">xiaoshidetaikuai20</td>
         
    </tr>
</table>
</body>
</html>
