<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 2018/10/20
  Time: 11:37
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
    <meta charset="utf-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>首页</title>
    <!-- 引入Bootstrap核心样式文件 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入jQuery核心js文件 -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- 引入BootStrap核心js文件 -->
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<!--logo部分-->
<div class="container">
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-6">
            <img src="img/logo.jpg" height="80px" width="300px"/>
        </div>
        <div class="col-lg-5 col-md-4 hidden-xs col-sm-6">
            <img src="img/head.jpg" height="80px" width="300px"/>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-12" style="padding-top: 30px;">
            <a href="go_login">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="go_register">注册</a>
        </div>
    </div>
</div>

<!--导航栏-->
<div class="container" style="margin-top: 5px;">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">首页</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="#">公司简介<span class="sr-only">(current)</span></a>
                    </li>
                    <li>
                        <a href="#">职位详情</a>
                    </li>
                    <li>
                        <a href="#">公司历史</a>
                    </li>
                    <li>
                        <a href="#">项目</a>
                    </li>
                    <li>
                        <a href="#">外包</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">所有分类 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">公司简介</a>
                            </li>
                            <li>
                                <a href="#">职位详情</a>
                            </li>
                            <li>
                                <a href="#">公司历史</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="#">项目</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="#">外包</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div>
        </div>
    </nav>
</div>

<!--轮播图-->
<div class="container">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/1.jpg" alt="..." width="100%">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="img/2.jpg" alt="..." width="100%">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="img/3.jpg" alt="..." width="100%">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="img/4.jpg" alt="..." width="100%">
                <div class="carousel-caption">
                    ...
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

<!--热门商品-->
<div class="container" style="margin-top: 10px;">
    <!--上面文字内容-->
    <div class="row">
				<span id="" style="font-size: 30px;padding-left: 33px;">
					热门商品&nbsp;&nbsp;&nbsp;<img src="img/title2.jpg" />
				</span>
    </div>
    <!--图片内容-->
    <div class="row">
        <div class="col-md-2 col-sm-2 hidden-sm hidden-xs" style="height: 400px;">
            <img src="img/big01.jpg" height="100%"/>
        </div>
        <div class="col-md-10 col-sm-10" style="padding-left: 10px;">
            <div class="row">
                <div class="col-md-6 hidden-xs hidden-sm" style="height: 200px;width: 490px;">
                    <a href="#"><img src="img/middle01.jpg" height="100%" width="100%"/></a>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>

                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--广告图片-->
<div class="container" style="margin-top: 10px;">
    <div class="row">
        <div class="hidden-md hidden-sm hidden-xs " style="padding-left: 14px;">
            <img src="img/ad.jpg" style="width: 98%;"/>
        </div>
    </div>
</div>
<!--最新商品-->
<div class="container" style="margin-top: 10px;">
    <!--上面文字内容-->
    <div class="row">
				<span id="..." style="font-size: 30px;padding-left: 33px;">
					最新商品&nbsp;&nbsp;&nbsp;<img src="img/title2.jpg" />
				</span>
    </div>
    <!--图片内容-->
    <div class="row">
        <div class="col-md-2 col-sm-2 hidden-sm hidden-xs" style="height: 400px;">
            <img src="img/big01.jpg" height="100%"/>
        </div>
        <div class="col-md-10 col-sm-10" style="padding-left: 10px;">
            <div class="row">
                <div class="col-md-6  img-responsive" style="height: 200px;width: 490px;">
                    <a href="#"><img src="img/middle01.jpg" height="100%" width="100%"/></a>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>

                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6" align="center">
                    <a href="#"><img src="img/small03.jpg" /></a>
                    <p><a href="#"><font color="gray">电炖锅</font></a></p>
                    <p><font color="red">¥399</font></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!--广告图片-->
<div class="container" style="margin-top: 10px;">
    <div class="row">
        <div class="hidden-md hidden-sm hidden-xs " style="padding-left: 14px;">
            <img src="img/footer.jpg" style="width: 98%;"/>
        </div>
    </div>
</div>

<!--友情链接和版权信息-->
<div class="container" style="margin-top: 10px;">
    <div class="row">
        <div class="" align="center">
            <ul class="list-inline">
                <li><a href="info.html">关于我们</a></li>
                <li><a>联系我们</a></li>
                <li><a>招贤纳士</a></li>
                <li><a>法律声明</a></li>
                <li><a>友情链接</a></li>
                <li><a>支付方式</a></li>
                <li><a>配送方式</a></li>
                <li><a>服务声明</a></li>
                <li><a>广告声明</a></li>
            </ul>
        </div>
        <div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
            Copyright &copy; 2005-2016  版权所有
        </div>
    </div>
</div>
</body>
</html>
