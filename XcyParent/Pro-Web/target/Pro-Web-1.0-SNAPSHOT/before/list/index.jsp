<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="author" content="千峰科技">
    <title>千峰科技</title>
    <link rel="stylesheet" href="css/normalize.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="${pageContext.request.contextPath}/before/js/jquery-3.1.0.min.js"></script>
</head>
<body>
<div class="animation-wrapper">
    <div class="particle particle-1"></div>
    <div class="particle particle-2"></div>
    <div class="particle particle-3"></div>
    <div class="particle particle-4"></div>
</div>


<script src="js/index.js"></script>

<script>
    $(function () {
        // localStorage读取 JSON
        var teacherList = JSON.parse(localStorage.getItem("item"));
        for(var i = 0;i < teacherList.length;i++){
            var card = $(".card:first").clone(true).show();
            card.find("#contact").attr("src",teacherList[i].teacherImg);
            card.find(".teacherName").text(teacherList[i].teacherName);
            card.find(".teacherDetail").text(teacherList[i].teacherDetail);
            card.find(".teacherQQ").attr("src",teacherList[i].teacherQQ);
            card.find(".contact").attr("src",teacherList[i].teacherImg);
            $("#container").append(card);
        }

        $(".num").css("cursor","pointer");
        $("span").css("color","white");
    });
</script>

<div id='container'>

    <h1> 成员列表 </h1>
    <p class="list-dis">谨按入队时间排序 技术排名不分先后</p>

    <div class='card' style="display: none">
            <div class='front'>
                <img  src='https://q1.qlogo.cn/g?b=qq&nk=6993135&s=100' class='contact' />
                <br>
                <span class='teacherName'>柳千峰</span>
                <br>
                <span class='teacherDetail'> - 创始人 - </span>
            </div>
            <div class='back'>
                <span class="teacherName">柳千峰</span>
                <%--<p>不断创新</p>
                <span>主营网站</span>
                <p><a target="_blank" href="https://baidu.com" class="btn">IDC</a></p>--%>
                <span>联系方式 </span>
                <br>
                <div class='icons'>
                    <span>QQ</span>
                    <p>
                        <img  style="width: 120px;height: 120px" class="teacherQQ" border="0" src="http://10.8.157.29:8081/imgs/1.jpg" />
                    </p>
                </div>
            </div>
        </div>
</div>

</body>
</html>
