<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/5
  Time: 19:02
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
    <title>首页</title>
    <style>
        #father{
            border: 0px solid red;
            width: 1300px;
            height: 2170px;
            margin: auto;
        }
        /*#logo{
            border: 0px solid black;
            width: 1300px;
            height: 50px;
        }*/
        .top{
            border: 0px solid blue;
            width: 431px;
            height: 50px;
            float: left;
        }
        #top{
            padding-top: 12px;
            height: 38px;
        }
        #menu{
            border: 0px solid red;
            width: 1300px;
            height: 50px;
            background-color: black;
            margin-bottom: 10px;
        }
        ul li{
            display: inline;
            color: white;
        }
        #clear{
            clear: both;
        }

        .product{
            border: 0px solid red;
            width: 1300px;
            height: 558px;
        }
        .product_top{
            border: 0px solid blue;
            width: 100%;
            height: 45px;
            padding-top: 8px;
        }
        .product_bottom{
            border: 0px solid green;
            width: 100%;
            height: 500px;
        }
        .product_bottom_left{
            border: 0px solid red;
            width: 200px;
            height: 500px;
            float: left;
        }
        .product_bottom_right{
            border: 0px solid blue;
            width: 1094px;
            height: 500px;
            float: left;
        }
        .big{
            border: 0px solid red;
            width: 544px;
            height: 248px;
            float: left;
        }
        .small{
            border: 0px solid blue;
            width: 180px;
            height: 248px;
            float: left;
            /*让里面的内容居中*/
            text-align: center;
        }

        #bottom{
            text-align: center;
        }

        a{
            text-decoration: none;
        }
    </style>

    <script type="text/javascript" src="js/jquery-1.8.3.js" ></script>
    <script>
        function init(){
            //书写轮图片显示的定时操作
            setInterval("changeImg()",3000);
        }
        //书写函数
        var i=0
        function changeImg(){
            i++;
            //获取图片位置并设置src属性值
            document.getElementById("img1").src="img/"+i+".jpg";
            if(i==4){
                i=0;
            }
        }
    </script>
    <script>
        $(function(){
            //1.书写显示广告图片的定时操作
            time = setInterval("showAd()",3000);
        });
        //2.书写显示广告图片的函数
        function showAd(){
            //3.获取广告图片，并让其显示
            //$("#img2").show(1000);
            $("#img2").slideDown(5000);
            //$("#img2").fadeIn(4000);
            //4.清除显示图片定时操作
            clearInterval(time);
            //5.设置隐藏图片的定时操作
            time = setInterval("hiddenAd()",3000);
        }
        function hiddenAd(){
            //6.获取广告图片，并让其隐藏
            //$("#img2").hide();
            //$("#img2").slideUp(5000);
            $("#img2").fadeOut(6000);
            //7.清除隐藏图片的定时操作
            clearInterval(time);
        }
    </script>

</head>
<body onload="init()">
<div id="father">
    <!--定时弹出广告图片位置-->
    <img src="img/advertise.jpg" width="100%" style="display: none" id="img2"/>

    <!--1.logo部分-->
    <div id="logo">
        <div class="top">
            <img src="img/logo.jpg" height="46px" width="100%"/>
        </div>
        <div class="top">
            <img src="img/head.jpg" height="46px" />
        </div>
        <div class="top" id="top">
            <a href="go_login">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="go_register">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="go_admin_login">管理员登录</a>
        </div>
    </div>

    <div id="clear">

    </div>
    <!--2.导航栏部分-->
    <div id="menu">
        <ul>
            <a href="#"><li style="font-size: 20px;">首页</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#"><li>手机数码</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#"><li>家用电器</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#"><li>鞋靴箱包</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#"><li>孕婴保健</li></a>&nbsp;&nbsp;&nbsp;&nbsp;
        </ul>
    </div>
    <!--3.轮播图部分-->
    <div>
        <img src="img/1.jpg" width="100%" id="img1"/>
    </div>
    <!--4.最新商品-->
    <div class="product">
        <div class="product_top">
            &nbsp;&nbsp;&nbsp;
            <span style="font-size: 25px;padding-top: 8px;">最新商品</span>&nbsp;&nbsp;&nbsp;
            <img src="img/title2.jpg" />
        </div>
        <div class="product_bottom">
            <div class="product_bottom_left">
                <img src="img/big01.jpg" width="100%" height="100%"/>
            </div>
            <div class="product_bottom_right">
                <div class="big">
                    <a href="#"><img src="img/middle01.jpg" width="100%" height="100%"/></a>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">咖啡机</p></a>
                    <p style="color: red;">¥299</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">显示器</p></a>
                    <p style="color: red;">¥490</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">洗衣机</p></a>
                    <p style="color: red;">¥599</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">咖啡机</p></a>
                    <p style="color: red;">¥199</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">洗衣机</p></a>
                    <p style="color: red;">¥799</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">SKG</p></a>
                    <p style="color: red;">¥299</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">高压锅</p></a>
                    <p style="color: red;">¥300</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">微波炉</p></a>
                    <p style="color: red;">¥389</p>
                </div>
            </div>
        </div>
    </div>
    <!--5.广告图片-->
    <div>
        <img src="img/ad.jpg" width="100%"  />
    </div>
    <!--6.热门商品-->
    <div class="product">
        <div class="product_top">
            &nbsp;&nbsp;&nbsp;
            <span style="font-size: 25px;padding-top: 8px;">热门商品</span>&nbsp;&nbsp;&nbsp;
            <img src="img/title2.jpg" />
        </div>
        <div class="product_bottom">
            <div class="product_bottom_left">
                <img src="img/big01.jpg" width="100%" height="100%"/>
            </div>
            <div class="product_bottom_right">
                <div class="big">
                    <a href="#"><img src="img/middle01.jpg" width="100%" height="100%"/></a>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
                <div class="small">
                    <img src="img/small03.jpg" />
                    <a href="#"><p style="color: gray;">电炖锅</p></a>
                    <p style="color: red;">¥399</p>
                </div>
            </div>
        </div>
    </div>
    <!--7.广告图片-->
    <div>
        <img src="img/footer.jpg" width="100%"/>
    </div>
    <!--8.友情链接和版权信息-->
    <div id="bottom">
        <a href="#">关于我们</a>
        <a href="#">联系我们</a>
        <a href="#">招贤纳士</a>
        <a href="#">法律声明</a>
        <a href="#">友情链接</a>
        <a href="#">支付方式</a>
        <a href="#">配送方式</a>
        <a href="#">服务声明</a>
        <a href="#">广告声明</a>
        <p>
            Copyright © 2018-2019 明洪商城 版权所有
        </p>
    </div>
</div>
</body>
</html>
