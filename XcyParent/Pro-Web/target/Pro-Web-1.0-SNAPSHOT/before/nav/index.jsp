<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width">
    <meta name="author" content="千峰科技">

    <title>开源中国</title>
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="css/normalize.min.css">
    <script src="../js/jquery-3.1.0.min.js"></script>
    <style type='text/css'>
        li{
            width:300px!important;
        }
    </style>
    <script type="text/javascript">
        function getProject(projectId) {
            $.get("${pageContext.request.contextPath}/project/getProjectById?projectId="+projectId,function (data) {
                localStorage.setItem("project", JSON.stringify(data));
                window.location.href="${pageContext.request.contextPath}/before/project/index.html?project=?"+escape(JSON.stringify(data));
            });
        }
    </script>

</head>
<body>
<div class="animation-wrapper">
    <div class="particle particle-1"></div>
    <div class="particle particle-2"></div>
    <div class="particle particle-3"></div>
    <div class="particle particle-4"></div>
</div>

<div id='container'>
    <div class="title">
        <h1 class="h1">开源项目</h1>
        <p class="list-dis">以下项目均为千峰学员所开发项目</p>
        <hr>
    </div>
    <div class="list">
        <ul>
        <c:forEach items="${projectList}" var="project">
            <li class="btn third" onclick="onclick=getProject('${project.projectId}')" style="cursor:pointer;text-align: center ">
                <span class="icon">F</span>

                <span style="display: block;margin-top: 40px">
                    <h2>${project.projectName}</h2>
                </span>
            </li>
        </c:forEach>
        </ul>
	</div>

    <div style="width:100%; height:100px;"></div>--%>
</div>

<script src="js/index.js"></script>
</body>
</html>