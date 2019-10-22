<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="千峰科技" />
    <meta name="description" content="千峰科技" />
    <meta name="author" content="k1">
    <title>千峰科技</title>

    <!-- bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Lato Font -->
    <link href="css/4a7cf9c7b9354728a476b3eff6442adb.css" rel="stylesheet">

    <!-- Orbitron Font -->
    <link href="css/03201248d902413a8c1ac91c2728eecd.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Font Linea -->
    <link href="css/linea-arrows.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/linea-basic.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/linea-ecommerce.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/linea-software.min.css" media="screen" rel="stylesheet" type="text/css">

    <!-- Lightbox styles -->
    <link href="css/lightbox.min.css" rel="stylesheet">

    <!-- Custom styles -->
    <link href="css/yellow.min.css" media="screen" rel="stylesheet" type="text/css" title="yellow">
    <link href="css/gold.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="gold">
    <link href="css/pink.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="pink">
    <link href="css/orange.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="orange">
    <link href="css/brown.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="brown">
    <link href="css/red.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="red">
    <link href="css/violet.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="violet">
    <link href="css/silver.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="silver">
    <link href="css/green.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="green">
    <link href="css/blue.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="blue">

    <!-- Modernizr -->
    <script type="text/javascript" src="js/modernizr-custom.min.js"></script>

    <!-- Favicons -->
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <!-- imgmove -->
    <style type="text/css">
        /* 图片抖动特效
         img:hover {
            -webkit-animation:sucaijiayuan 1s .1s ease both;-moz-animation:tada 1s .1s ease both;}@-webkit-keyframes sucaijiayuan {0% {-webkit-transform:scale(1)}10%, 20% {-webkit-transform:scale(0.8) rotate(-2deg)}30%, 50%, 70%, 90% {-webkit-transform:scale(1.1) rotate(2deg)}40%, 60%, 80% {-webkit-transform:scale(1.1) rotate(-2deg)}100% {-webkit-transform:scale(1) rotate(0)
        }  */
        /* 客服列表css */
        .kefu{
            display: inline-block;
            margin-bottom: 3.82px;
        }
        /* 背景音乐 */
        @-webkit-keyframes rotate {
            from{
                -webkit-transform: rotate(0deg);
            }
            to{
                -webkit-transform: rotate(360deg);
            }
        }
        @keyframes rotate {
            from{
                transform: rotate(0deg);
            }
            to{
                transform: rotate(360deg);
            }
        }
        .play{
            -webkit-animation:rotate 3s infinite linear;
            animation:rotate 3s infinite linear;
        }
    </style>

</head>

<body class="skrollr" data-skrollr="true">
<!-- <div class="loader-overlay">
    <div class="loader">
        <div class="loader-icon">
            <span class="icon icon-arrows-glide"></span>
        </div>
        <h3 class="loader-text">努力加载中...</h3>
    </div>
</div> -->

<div class="sidebar">
    <a class="sidebar-switcher" href="#" title="k1network 客服">
        <i class="fa fa-gear fa-spin"></i>
    </a>
    <div class="sidebar-content">
        <h4 class="sidebar-header">客服列表</h4>
        <div class="text-center">
            <a target="_blank" class="kefu" href="https://wpa.qq.com/msgrd?v=3&uin=6993135&site=qq&menu=yes">千峰科技:<img border="0" src="picture/9abf9a8c2995478e907e6708950b6971.gif" alt="点击这里给我发消息" title="点击这里给我发消息"/></a><br>
        </div>
        <!-- <a href="#" class="color-switcher bg-yellow" data-color="yellow"></a>
        <a href="#" class="color-switcher bg-gold" data-color="gold"></a>
        <a href="#" class="color-switcher bg-pink" data-color="pink"></a>
        <a href="#" class="color-switcher bg-orange" data-color="orange"></a>
        <a href="#" class="color-switcher bg-brown" data-color="brown"></a>
        <a href="#" class="color-switcher bg-red" data-color="red"></a>
        <a href="#" class="color-switcher bg-violet" data-color="violet"></a>
        <a href="#" class="color-switcher bg-silver" data-color="silver"></a>
        <a href="#" class="color-switcher bg-green" data-color="green"></a>
        <a href="#" class="color-switcher bg-blue" data-color="blue"></a> -->
    </div>
</div>

<div class="navbar navbar-inverse navbar-fixed-top" id="navbar-nav">
    <div class="navbar-inner clearfix">
        <div class="container">
            <div class="navbar-header">
                <a href="javascript:;"><img src="picture/music.png" alt="" class="play" style="width:35px; position:relative; top:6px;"></a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-menu">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="brand home" href="https://u1f.cn" title="千峰科技 团队欢迎您！">
                        <span class="title">千峰科技

                        </span>
                    <span class="icon icon-arrows-glide"></span>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="main-menu">
                <ul class="nav navbar-nav nav-left">

                    <!-- <li>
                        <a href="#navbar-nav">
                            <span class="main-link">旗下站点</span>
                            <span class="jewel"></span>
                        </a>
                    </li> -->
                    <!-- <li>
                        <a href="#career">
                            <span class="main-link">业务汇总</span>
                            <span class="jewel"></span>
                        </a>
                    </li>
                    <li>
                        <a href="#services">
                    </li> -->

                    <!-- <li>
                        <a href="#works">
                            <span class="main-link">Works</span>
                            <span class="jewel"></span>
                        </a>
                    </li> -->
                </ul>
                <ul class="nav navbar-nav nav-right">
                    <li>
                        <a href="javascript:;" class="home">
                            <span class="main-link">首页</span>
                            <span class="jewel"></span>
                        </a>
                    </li>
                    <!-- <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="main-link">旗下站点</span>
                            <span class="jewel"></span>
                            <span class="icon hidden-xs"><i class="fa fa-circle" aria-hidden="true"></i></span>
                            <span class="icon icon-arrows-down visible-xs"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a target="_blank" class="external-link dh" href="javascript:;">更多精彩站点</a>
                            </li>
                        </ul>
                    </li> -->
                    <li>
                        <a href="javascript:;" class="list dh">
                            <span class="main-link">旗下站点</span>
                            <span class="jewel"></span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" class="list">
                            <span class="main-link">成员列表</span>
                            <span class="jewel"></span>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://wpa.qq.com/msgrd?v=3&uin=6993135&site=qq&menu=yes">
                            <span class="main-link">申请加入</span>
                            <span class="jewel"></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){

        var iframeHeight = function () {
            var _height = $(window).height() - 34;
            $('#content').height(_height);
        }
        window.onresize = iframeHeight;
        $(function () {
            iframeHeight();
        });
    });
</script>
<iframe border="0" id="content" src="./home" frameborder="0" height="100%" width="100%" style="margin: 0; position: absolute; top:0;"></iframe>
<!-- <footer class="footer text-center" id="follow-us" style="width: 100%; height: 90px; position: absolute; bottom:0px;"> -->

<div class="text-center" style="width: 100%; line-height: 100%; position: absolute; bottom:0px;">
    <p>Copyright  © 2013-2018<a target="_blank" href="https://u1f.cn/"><strong>千峰科技</strong></a> 版权所有<br>
</div>

<!-- </footer> -->
<div id="to-top" class="to-top">
    <a href="#" class="To the top" title="To the top">
        <i class="fa fa-angle-up"></i>
    </a>
</div>

<!-- jQuery -->
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>

<!-- jQuery parallax -->
<script type="text/javascript" src="js/jquery.parallax-1.1.3-min.js"></script>

<!-- Lightbox -->
<script type="text/javascript" src="js/lightbox.min.js"></script>

<!-- skrollr -->
<script type="text/javascript" src="js/skrollr.min.js"></script>

<!-- Custom javascript -->
<script type="text/javascript" src="js/custom.min.js"></script>

<!-- Main javascript -->
<script type="text/javascript" src="js/main.min.js"></script>

<!-- Google maps -->
<script src="js/3092152f0559489b87903bdcfb2d28e8.js"></script>

<!-- mymouse -->
<!-- <script type="text/javascript" src="js/1.js" id="mymouse"></script> -->

<!-- mouse over -->
<script>
    $('li.dropdown').mouseover(function() {
        $(this).addClass('open');
    })
        .mouseout(function() {
            $(this).removeClass('open');
        });
    //list
    $('.list').click(function (event)
    {
        event.preventDefault();
        $('iframe').attr("src","./list");
    });
    //home
    $('.home').click(function (event)
    {
        event.preventDefault();
        $('iframe').attr("src","./home");
    });
    //nav
    $('.dh').click(function (event)
    {
        event.preventDefault();
        $('iframe').attr("src","./nav");
    });
    /*背景音乐*/
    var img=document.querySelector('.play');
    var audio=document.createElement('audio');
    audio.src='/123.mp3';
    audio.autoplay=true;
    document.body.appendChild(audio);
    $('.play').click(function () {
        if(audio.paused){
            audio.play();
            img.style.animationPlayState='running';
            img.style.webkitAnimationPlayState='running';
        }else{
            audio.pause();
            img.style.animationPlayState='paused';
            img.style.webkitAnimationPlayState='paused';
        }
    })
</script>
</body>
</html>
