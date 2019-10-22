<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="千锋科技" />
    <meta name="description" content="千锋科技" />
    <meta name="author" content="k1">
    <title>千锋科技</title>


    <!-- bootstrap -->
    <link href="${pageContext.request.contextPath}/before/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/before/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/before/css/css.css">

    <script src="${pageContext.request.contextPath}/before/js/gVerify.js"></script>
    <!-- Lato Font -->
    <link href="${pageContext.request.contextPath}/before/css/4a7cf9c7b9354728a476b3eff6442adb.css" rel="stylesheet">

    <!-- Orbitron Font -->
    <link href="${pageContext.request.contextPath}/before/css/03201248d902413a8c1ac91c2728eecd.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath}/before/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/before/css/font-awesome.min.css" rel="stylesheet">

    <!-- Font Linea -->
    <link href="${pageContext.request.contextPath}/before/css/linea-arrows.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/before/css/linea-basic.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/before/css/linea-ecommerce.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/before/css/linea-software.min.css" media="screen" rel="stylesheet" type="text/css">

    <!-- Lightbox styles -->
    <link href="${pageContext.request.contextPath}/before/css/lightbox.min.css" rel="stylesheet">

    <!-- Custom styles -->
    <link href="${pageContext.request.contextPath}/before/css/yellow.min.css" media="screen" rel="stylesheet" type="text/css" title="yellow">
    <link href="${pageContext.request.contextPath}/before/css/gold.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="gold">
    <link href="${pageContext.request.contextPath}/before/css/pink.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="pink">
    <link href="${pageContext.request.contextPath}/before/css/orange.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="orange">
    <link href="${pageContext.request.contextPath}/before/css/brown.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="brown">
    <link href="${pageContext.request.contextPath}/before/css/red.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="red">
    <link href="${pageContext.request.contextPath}/before/css/violet.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="violet">
    <link href="${pageContext.request.contextPath}/before/css/silver.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="silver">
    <link href="${pageContext.request.contextPath}/before/css/green.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="green">
    <link href="${pageContext.request.contextPath}/before/css/blue.min.css" media="screen" rel="alternate stylesheet" type="text/css" title="blue">

    <!-- Modernizr -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/before/js/modernizr-custom.min.js"></script>
    <!-- jQuery -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/before/js/jquery-3.1.0.min.js"></script>
    <!-- Favicons -->
    <link rel="icon" href="${pageContext.request.contextPath}/before/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/before/favicon.ico" type="image/x-icon">
    <!-- imgmove -->
    <style type="text/css">
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

    <script type="text/javascript">

        $(function(){

            if(null!="${sessionScope.userAccount}" && "${sessionScope.userAccount}" !=""){
                    $("#regBlock").css("display","none");
                    $("#userBlock").css("display","block");
                }else{
                    $("#regBlock").css("display","block");
                    $("#userBlock").css("display","none");
                }

            $('#teacherList').click(function ()
            {
                $.get("/pro/teacher/getTeacherList",function (data) {
                    <!--存储json缓存浏览器中-->
                    localStorage.setItem("item", JSON.stringify(data));
                    //alert(data[0].teacherName);
                    if(data != ""){
                        <!--传json-->
                        $("#content").attr("src", "/pro/before/list/index.jsp?item="+escape(JSON.stringify(data)));
                    }
                });
            });

            //nav
            $('#projectList').click(function ()
            {
                $.get("/pro/project/getProjectList",function (data) {
                    if(data == "success"){
                        $("#content").attr("src","/pro/before/nav/index.jsp?item="+escape(JSON.stringify(data)));
                        //window.location.href="/pro/before/nav/index.jsp";
                    }
                });
            });

            $('li.dropdown').mouseover(function() {
                $(this).addClass('open');
            })
            $('li.dropdown').mouseout(function() {
                    $(this).removeClass('open');
                });
        });
    </script>
</head>

<body class="skrollr" data-skrollr="true">
    <div style="margin-top: 100px"></div>
    <div class="sidebar">
        <a class="sidebar-switcher" href="#" title="k1network 客服">
            <i class="fa fa-gear fa-spin"></i>
        </a>
        <div class="sidebar-content">
            <h4 class="sidebar-header">客服列表</h4>
            <div class="text-center">
                <a target="_blank" class="kefu" href="https://wpa.qq.com/msgrd?v=3&uin=1270086576&site=qq&menu=yes">千峰科技:<img border="0" src="${pageContext.request.contextPath}/before/picture/9abf9a8c2995478e907e6708950b6971.gif" alt="点击这里给我发消息" title="点击这里给我发消息"/></a><br>
            </div>
        </div>
    </div>
    <div class="navbar navbar-inverse navbar-fixed-top" id="navbar-nav">
        <div class="navbar-inner clearfix">
            <div class="container">
                <div class="navbar-header">

                    <a href="javascript:;" ><img src="${pageContext.request.contextPath}/before/picture/music.png" alt="" class="play" style="width:35px; position:relative; top:6px;"></a>
                    <div style="position: absolute;left: 260px;top: 20px;">
                        <a href="javascript:;" onclick="beforeMusic()"><span id="beforeMusic" class="glyphicon glyphicon-step-backward"></span></a>
                        &nbsp;&nbsp;
                        <a href="javascript:;" ><span id="pause" class="glyphicon glyphicon-play"></span></a>
                        &nbsp;&nbsp;
                        <a href="javascript:;" onclick="nextMusic()"><span id="nextMusic" class="glyphicon glyphicon-step-forward"></span></a>
                    </div>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-menu">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="brand home" href="https://u1f.cn" title="千峰科技 团队欢迎您！">
                            <span class="title">千锋科技

                            </span>
                        <span class="icon icon-arrows-glide"></span>
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="main-menu">
                    <ul class="nav navbar-nav nav-left">

                    </ul>
                    <ul class="nav navbar-nav nav-right">
                        <li>
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="main-link">首页</span>
                                <span class="jewel"></span>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:;"  class="projects">
                                <span id="projectList" class="main-link">项目列表</span>
                                <span class="jewel"></span>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:;"  class="projects">
                                <span id="teacherList" class="main-link">成员列表</span>
                                <span class="jewel"></span>
                            </a>
                        </li>

                        <li>
                            <div id="regBlock" style="display: block;padding-top:15px;color: black"  >
                                <a href="javascript:;" id="reg_open">注册</a>
                                <a href="javascript:;" id="login_open">&nbsp;登录</a>
                            </div>
                        </li>
                        <li>
                            <div id="userBlock" style="display:none;float:right;padding-top:15px;">
                                <a href="#"  id="account">${sessionScope.userAccount}</a>
                                <a href="${pageContext.request.contextPath}/user/logout" id="loginout">退出</a>
                            </div>
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
    <iframe border="0" id="content" src="${pageContext.request.contextPath}/before/home/index.html" frameborder="0" height="100%" width="100%" style="margin: 0; position: absolute; top:0;"></iframe>
    <footer class="footer text-center" id="follow-us" style="width: 100%; height: 90px; position: absolute; bottom:0px;">

        <div class="text-center" style="width: 100%; line-height: 100%; position: absolute; bottom:0px;">
            <p>Copyright  © 2013-2018<a target="_blank" href="https://u1f.cn/"><strong>千锋科技</strong></a> 版权所有<br>
        </div>

        <!-- </footer> -->
        <div id="to-top" class="to-top">
            <a href="#" class="To the top" title="To the top">
                <i class="fa fa-angle-up"></i>
            </a>
        </div>

    </footer>

    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/before/js/bootstrap.min.js"></script>

    <!-- jQuery parallax -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/before/js/jquery.parallax-1.1.3-min.js"></script>

    <!-- Lightbox -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/before/js/lightbox.min.js"></script>

    <!-- skrollr -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/before/js/skrollr.min.js"></script>

    <!-- Custom javascript -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/before/js/custom.min.js"></script>

    <!-- Main javascript -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/before/js/main.min.js"></script>

    <!--登录注册弹出框-->

    <div class="mask hidden" id="login">
        <div class="mask_content">
            <div class="mask_content_header">
                <img style="padding: 20px" src="${pageContext.request.contextPath}/before/images/login1.PNG" alt="" class="ma">
            </div>
            <div class="mask_content_body">
                <form id="loginForm" action="#">
                    <h3>快速登录</h3>
                    <input type="email" style="color:black" id="loginEmail" placeholder="请输入邮箱" name="userEmail">
                    <input type="password" style="color:black" id="loginPassword" placeholder="请输入密码" name="userPassword">
                    <input type="submit" style="color:black" onclick="return commitLogin()" value="登&#x3000;录">
                </form>
            </div>
            <div class="mask_content_footer">
                <span id="login_close"style="color: #0d0d0d">关&#x3000;闭</span>
            </div>
        </div>
    </div>
    <div class="mask hidden" id="reg">
        <div class="mask_content">
            <div class="mask_content_header">
                <img src="${pageContext.request.contextPath}/before/images/login1.PNG" alt="" class="ma">
            </div>
            <div class="mask_content_body">
                <form id="regForm" action="user/insertUser">
                    <h3>新用户注册</h3>
                    <input type="email" style="color:black" id="regEmail"  placeholder="请输入邮箱" name="userEmail"><span id="emailMsg"></span>
                    <input type="password" style="color:black" id="regPsw" placeholder="请输入密码" name="userPassword">
                    <input type="password" style="color:black" id="regPswAgain" placeholder="请再次输入密码" name="psw_again"><span id="passMsg"></span>
                    <div id="yzm" class="form-inline">
                        <input type="text" style="color:black; width:65%; display: inline-block;" name="yzm">
                        <div id="v_container" style="width: 35%;height: 40px;float:right;"></div>
                    </div>
                    <input type="submit" onclick="return commitRegForm();" value="注&#x3000;册">
                </form>
            </div>
            <div class="mask_content_footer">
                <span id="reg_close" style="color: #0d0d0d">关&#x3000;闭</span>
            </div>
        </div>
    </div>
    <script src="before/js/index.js"></script>
    <script>

        var musics;//所有的音乐

        var time;//定时器

        var audio;//全局音频节点

        var musicImg = $(".play")[0];//音乐图标

        var pauseBtn = $("#pause");//暂停与播放按钮

        var restar = 1;//代表从头开始播放音乐

        var notRestar = 2;//代表从暂停位置开始播放

        //第一次加载本页面，当前音乐设置为第一首
        var currentMusic = 0;

        //读取音乐json文件
       $.ajax({
           url:"${pageContext.request.contextPath}/before/musics.json",
           async:false,//禁止异步加载
           success:function (data) {
                musics = data;
            }
        });

        musicImg.style.animationPlayState='paused';
        musicImg.style.webkitAnimationPlayState='paused';
        $("body").append($("<audio src='"+musics[currentMusic].url+"'>"));
        audio = $("audio")[0];

        //1、监听当前的媒体是否可以播放
        //2、可以解决duration返回值为NaN的问题
        audio.oncanplay = function () {
            //获取当前播放媒体的总时长，并赋值给musics[currentMusic].end
            musics[currentMusic].end = this.duration;
        }

        //开启定时器的函数,判断当前音乐是否已播放完
        function startInterval() {
            time = setInterval(autoPlayNextMusic,1000);
        }

        //播放音乐时需要调用的函数
        function play(type){
            if(time != null){
                //清除之前的定时器
                clearInterval(time);
            }
            pauseBtn.attr("class","glyphicon glyphicon-pause");
            if(type == restar){//1代表从头开始播放
                $(audio).attr("src",musics[currentMusic].url);
                // setEndTime();
            }
            musicImg.style.animationPlayState='running';
            musicImg.webkitAnimationPlayState='running';
            audio.play();
            //开启新的定时器
            startInterval();
        }

        //暂停音乐时需要调用的函数
        function pause() {
            //清除定时器
            clearInterval(time);
            audio.pause();
            musicImg.style.animationPlayState='paused';
            musicImg.style.webkitAnimationPlayState='paused';
            pauseBtn.attr("class","glyphicon glyphicon-play");
        }

        //自动播放下一首音乐
        function autoPlayNextMusic(){
            musics[currentMusic].start++;
            console.log(musics[currentMusic].start);
            if( musics[currentMusic].start > musics[currentMusic].end){
                nextMusic();
            }
        }

        //暂停/播放
        pauseBtn.click(function () {
            //var audio = $("audio")[0];
            if(audio.paused){
                play(notRestar);
            }else{
                pause();
            }
        });

        //上一首
        function beforeMusic() {
            musics[currentMusic].start = 0;//将当前正在播放的音乐的start设为0
            if(currentMusic == 0){
                currentMusic = musics.length - 1;
            }else{
                currentMusic --;
            }
            play(restar);
        }

        //下一首
        function nextMusic() {
            musics[currentMusic].start = 0;//将当前正在播放的音乐的start设为0
            if(currentMusic == musics.length - 1){
                currentMusic = 0;
            }else{
                currentMusic ++;
            }
            play(restar);
        }
    </script>
</body>
</html>
