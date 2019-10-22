<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width">
    <meta name="author" content="千峰科技">
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>千峰科技</title>
    <link href="../../before/nav/css/style.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="../../before/nav/css/normalize.min.css">
    <style type='text/css'>
        li{width:300px!important;}
    </style>
    <script type="text/javascript">

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
        <h1 class="h1">实战项目</h1>
        <p class="list-dis">以下项目均为千峰科技运营</p>
        <hr>
    </div>

    <div class="list">
        <c:forEach items="${projectList}" var="project">
            <li class="btn third">
                <span class="icon">Project-</span>
                <a href="${pageContext.request.contextPath}/project/getProjectById" target="_blank" class="text">
                    <span>${project.projectName}</span>
                </a>
            </li>
        </c:forEach>

	</div>

    <div style="width:100%; height:100px;"></div>
</div>

<script src="../../before/nav/js/index.js"></script>
</body>
</html>