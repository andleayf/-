<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>示例登陆页</title>
    <script src="${pageContext.request.contextPath}/before/js/jquery-3.1.0.min.js"></script>
    <style>
        #win10-login {
            background: url("${pageContext.request.contextPath}/before/images/login.jpg") no-repeat fixed;
            width: 100%;
            height: 100%;
            background-size: 100% 100%;
            position: fixed;
            z-index: -1;
            top: 0;
            left: 0;
        }

        #win10-login-box {
            width: 300px;
            overflow: hidden;
            margin: 0 auto;
        }

        .win10-login-box-square {
            width: 105px;
            margin: 0 auto;
            border-radius: 50%;
            background-color: darkgray;
            position: relative;
            overflow: hidden;
        }

        .win10-login-box-square::after {
            content: "";
            display: block;
            padding-bottom: 100%;
        }

        .win10-login-box-square .content {
            position: absolute;
            width: 100%;
            height: 100%;
        }

        input {
            width: 90%;
            display: block;
            border: 0;
            margin: 0 auto;
            line-height: 36px;
            font-size: 20px;
            padding: 0 1em;
            border-radius: 5px;
            margin-bottom: 11px;
        }

        .login-username, .login-password {
            width: 91%;
            font-size: 13px;
            color: #999;
        }

        .login-password {
            width: calc(91% - 54px);
            -webkit-border-radius: 2px 0 0 2px;
            -moz-border-radius: 2px 0 0 2px;
            border-radius: 5px 0 0 5px;
            margin: 0px;
            float: left;
        }

        .login-submit {
            margin: 0px;
            float: left;
            -webkit-border-radius: 0 5px 5px 0;
            -moz-border-radius: 0 5px 5px 0;
            border-radius: 0 5px 5px 0;
            background-color: #009688;
            width: 54px;
            display: inline-block;
            height: 36px;
            line-height: 36px;
            padding: 0 auto;
            color: #fff;
            white-space: nowrap;
            text-align: center;
            font-size: 14px;
            border: none;
            cursor: pointer;
            opacity: .9;
            filter: alpha(opacity=90);

        }
    </style>
    <script>
        function validateLogin(){
            var data = $("form").serialize();//表单序列化
            $.post(
                "${pageContext.request.contextPath}/login/login",data,function (data) {
                    if(data =='success'){
                        alert("登录成功");
                        location.href="${pageContext.request.contextPath}/project/list";
                    }else{
                        alert("用户名密码错误");
                        $("#msg").text("用户名密码错误，请检查后输入");
                    }
                }
            );
            return false;
        };
    </script>
</head>
<body>
<div id="win10-login">
    <div style="height: 10%;min-height: 120px"></div>
    <div id="win10-login-box">
        <div class="win10-login-box-square">
            <img src="${pageContext.request.contextPath}/before/images/avatar.jpg" class="content"/>
        </div>
        <p style="font-size: 24px;color: white;text-align: center">內部人員</p>
        <form id="form" target="_self" method="post" action="#">
            <!--用户名-->
            <input type="text" placeholder="请输入登录名" class="login-username"name="adminName">
            <!--密码-->
            <input type="password" placeholder="请输入密码" class="login-password"name="adminPassword">
            <!--登陆按钮-->
            <input type="submit"  value="登录" id="loginbtn" class="login-submit" onclick="return validateLogin()"/>
        </form>
    </div>
</div>
</body>
</html>