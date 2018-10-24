<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/23
  Time: 22:23
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
    <title>管理员界面</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <script type="text/javascript" src="Scripts/index.js"></script>
</head>
<body>
<div class="warp">
    <!--头部开始-->
    <div class="top_c">
        <div class="top-menu">
            <ul class="top-menu-nav">
                <li><a href="...">首页</a></li>
                <li><a href="...">员工信息<i class="tip-up"></i></a>
                    <ul class="kidc">
                        <li><a target="Conframe" href="go_addEmployee">增加</a></li>
                        <li><a target="Conframe" href="#">删除</a></li>
                        <li><a target="Conframe" href="#">修改</a></li>
                        <li><a target="Conframe" href="#">查询</a></li>
                        <%--<li><a target="Conframe" href="Template/find-2.html">查询结果二</a></li>--%>
                    </ul>
                </li>
                <li><a href="...">部门信息<i class="tip-up"></i></a>
                    <ul class="kidc">
                        <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-add.html">增加</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-edit.html">修改</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-del.html">删除</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-del.html">查询</a></li>
                    </ul>
                </li>
                <li><a href="...">职位信息<i class="tip-up"></i></a>
                    <ul class="kidc">
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                    </ul>
                </li>
                <li><a href="...">招聘信息<i class="tip-up"></i></a>
                    <ul class="kidc">
                        <li><b class="tip"></b><a target="Conframe" href="...">增加</a></li>
                        <%--<li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>--%>
                        <li><b class="tip"></b><a target="Conframe" href="...">查询</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="go_add_interview">发送面试邀请</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="show_interview">查看面试信息</a></li>
                    </ul>
                </li>
                <li><a href="...">培训信息<i class="tip-up"></i></a>
                    <ul class="kidc">
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                    </ul>
                </li>
                <li><a href="...">考勤信息<i class="tip-up"></i></a>
                    <ul class="kidc">
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                    </ul>
                </li>
                <li><a href="...">奖惩信息<i class="tip-up"></i></a>
                    <ul class="kidc">
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                    </ul>
                </li>
                <li><a href="...">薪资结算<i class="tip-up"></i></a>
                    <ul class="kidc">
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="top-nav">上午好，欢迎您，管理员冕下！&nbsp;&nbsp;<a href="#">修改密码</a> | <a href="#">安全退出</a></div>
    </div>
    <!--头部结束-->
    <!--左边菜单开始-->
    <div class="left_c left">
        <h1>系统操作菜单</h1>
        <div class="acc">
            <div>
                <a class="one">员工信息</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="go_addEmployee">增加</a></li>
                    <%--<li><b class="tip"></b><a target="Conframe" href="">修改</a></li>--%>
                    <%--<li><b class="tip"></b><a target="Conframe" href="">删除</a></li>--%>
                    <li><b class="tip"></b><a target="Conframe" href="show_employee">查询</a></li>
                </ul>
            </div>
            <div>
                <a class="one">部门信息</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                </ul>
            </div>
            <div>
                <a class="one">职位信息</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                </ul>
            </div>
            <div>
                <a class="one">招聘信息</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                </ul>
            </div>
            <div>
                <a class="one">培训信息</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                </ul>
            </div>
            <div>
                <a class="one">考勤信息</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                </ul>
            </div>
            <div>
                <a class="one">奖惩信息</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                </ul>
            </div>
            <div>
                <a class="one">薪资结算</a>
                <ul class="kid">
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-Master-slave.html">增加</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-collapse.html">修改</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tabs.html">删除</a></li>
                    <li><b class="tip"></b><a target="Conframe" href="Template/form-tree.html">查询</a></li>
                </ul>
            </div>
            <div id="datepicker"></div>
        </div>

    </div>
    <!--左边菜单结束-->
    <!--右边框架开始-->
    <div class="right_c">
        <div class="nav-tip" onclick="javascript:void(0)">&nbsp;</div>

    </div>
    <div class="Conframe">
        <iframe name="Conframe" id="Conframe"></iframe>
    </div>
    <!--右边框架结束-->

    <!--底部开始-->
    <div class="bottom_c">Copyright &copy;2017-2018 深圳艺谷发展科技有限公司 版权所有</div>
    <!--底部结束-->
</div>
</body>
</html>
