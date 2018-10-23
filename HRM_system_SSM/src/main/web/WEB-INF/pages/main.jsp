<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/23
  Time: 9:27
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
    <title>首页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
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
                <li><a href="#">个人信息</a></li>
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
                        <li><a href="#">招聘信息</a></li>
                        <li><a href="#">公司业务</a></li>
                        <li><a href="#">企业文化</a></li>
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

    <!--
        描述：轮播条
    -->
    <div class="container-fluid">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="img/2.jpg" width="100%">
                    <div class="carousel-caption">

                    </div>
                </div>
                <div class="item">
                    <img src="img/4.jpg" width="100%">
                    <div class="carousel-caption">

                    </div>
                </div>
                <div class="item">
                    <img src="img/6.jpg" width="100%">
                    <div class="carousel-caption">

                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!--
        描述：招聘公司显示
    -->
    <div class="container-fluid">
        <div class="col-md-12">
            <h2>热门公司&nbsp;&nbsp;<img src="img/title2.jpg"/></h2>
        </div>
        <div class="col-md-2" style="border:1px solid #E7E7E7;border-right:0;padding:0;">
            <img src="img/a10.jpg" width="205" height="404" style="display: inline-block;"/>
        </div>
        <div class="col-md-10">
            <div class="col-md-6" style="text-align:center;height:200px;padding:0px;">
                <a href="product_info.htm">
                    <img src="img/a1.jpg" width="516px" height="200px" style="display: inline-block;">
                </a>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/a3.jpg" width="130" height="130" style="display: inline-block;">
                </a>
                <p><a href="product_info.html" style='color:#666'>大鹏科技</a></p>
                <p><font color="#E4393C" style="font-size:16px">&yen;6000</font></p>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/a4.jpg" width="130" height="130" style="display: inline-block;">
                </a>
                <p><a href="product_info.html" style='color:#666'>百思买</a></p>
                <p><font color="#E4393C" style="font-size:16px">&yen;6500</font></p>
            </div>

            <div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/a5.jpg" width="130" height="130" style="display: inline-block;">
                </a>
                <p><a href="product_info.html" style='color:#666'>Oracle</a></p>
                <p><font color="#E4393C" style="font-size:16px">&yen;8000</font></p>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/a6.jpg" width="130" height="130" style="display: inline-block;">
                </a>
                <p><a href="product_info.html" style='color:#666'>niever</a></p>
                <p><font color="#E4393C" style="font-size:16px">&yen;5500</font></p>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/a7.jpg" width="130" height="130" style="display: inline-block;">
                </a>
                <p><a href="product_info.html" style='color:#666'>万达集团</a></p>
                <p><font color="#E4393C" style="font-size:16px">&yen;8500</font></p>
            </div>

            <div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/a8.jpg" width="130" height="130" style="display: inline-block;">
                </a>
                <p><a href="product_info.html" style='color:#666'>耐克</a></p>
                <p><font color="#E4393C" style="font-size:16px">&yen;7000</font></p>
            </div>
            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/recruit6.gif" width="130" height="130" style="display: inline-block;">
                </a>
                <p><a href="product_info.html" style='color:#666'>华天光电</a></p>
                <p><font color="#E4393C" style="font-size:16px">&yen;5000</font></p>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/recruit7.gif" width="130" height="130" style="display: inline-block;">
                </a>
                <p><a href="product_info.html" style='color:#666'>南京海盟</a></p>
                <p><font color="#E4393C" style="font-size:16px">&yen;5500</font></p>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/a9.jpg" width="130" height="130" style="display: inline-block;">
                </a>
                <p><a href="product_info.html" style='color:#666'>腾讯</a></p>
                <p><font color="#E4393C" style="font-size:16px">&yen;8000</font></p>
            </div>
        </div>
    </div>
    <!--
        描述：广告部分
    -->
    <div class="container-fluid">
        <img src="img/recruit9.gif" width="100%"/>
    </div>
    <!--
        描述：最新招聘信息显示
    -->
    <div class="container-fluid">
        <div class="col-md-12">
            <h2>最新招聘信息&nbsp;&nbsp;<img src="img/title2.jpg"/></h2>
        </div>
        <div class="col-md-2" style="border:1px solid #E7E7E7;border-right:0;padding:0;">
            <img src="img/b1.gif" width="205px" height="404px" style="display: inline-block;"/>
        </div>
        <div class="col-md-10">
            <div class="col-md-6" style="text-align:center;height:200px;padding:0px;">
                <a href="product_info.htm">
                    <img src="img/b5.gif" width="516px" height="200px" style="display: inline-block;">
                </a>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/b3.gif" width="140px" height="140px" style="display: inline-block;">
                </a>
                <%--<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>--%>
                <%--<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>--%>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/b4.gif" width="130px" height="130px" style="display: inline-block;">
                </a>
                <%--<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>--%>
                <%--<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>--%>
            </div>

            <div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/b2.gif" width="150px" height="130px" style="display: inline-block;">
                </a>
                <%--<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>--%>
                <%--<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>--%>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/b6.gif" width="130px" height="130px" style="display: inline-block;">
                </a>
                <%--<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>--%>
                <%--<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>--%>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/b7.gif" width="130px" height="130px" style="display: inline-block;">
                </a>
                <%--<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>--%>
                <%--<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>--%>
            </div>

            <div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/b8.gif" width="130px" height="130px" style="display: inline-block;">
                </a>
                <%--<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>--%>
                <%--<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>--%>
            </div>
            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/b9.gif" width="130px" height="130px" style="display: inline-block;">
                </a>
                <%--<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>--%>
                <%--<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>--%>
            </div>

            <div class="col-md-2" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/b10.gif" width="130px" height="130px" style="display: inline-block;">
                </a>
                <%--<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>--%>
                <%--<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>--%>
            </div>

            <div class="col-md-2 yes-right-border" style="text-align:center;height:200px;padding:10px 0px;">
                <a href="product_info.htm">
                    <img src="img/b11.gif" width="130" height="130" style="display: inline-block;">
                </a>
                <%--<p><a href="product_info.html" style='color:#666'>冬瓜</a></p>--%>
                <%--<p><font color="#E4393C" style="font-size:16px">&yen;299.00</font></p>--%>
            </div>
        </div>
    </div>
    <!--
        描述：页脚部分
    -->
    <div class="container-fluid">
        <div style="margin-top:50px;">
            <img src="img/b12.gif" width="100%" height="120px" alt="我们的优势" title="我们的优势"/>
        </div>

        <div style="text-align: center;margin-top: 5px;">
            <ul class="list-inline">
                <li><a href="info.html">关于我们</a></li>
                <li><a>联系我们</a></li>
                <li><a>招贤纳士</a></li>
                <li><a>法律声明</a></li>
                <li><a>友情链接</a></li>
                <li><a>服务声明</a></li>
                <li><a>广告声明</a></li>
            </ul>
        </div>
        <div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
            Copyright &copy; 2005-2016 明洪企业 版权所有
        </div>
    </div>
</div>
</body>
</html>
