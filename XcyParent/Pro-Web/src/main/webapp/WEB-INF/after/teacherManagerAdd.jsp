<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin user Examples</title>
    <meta name="description" content="这是一个 user 页面">
    <meta name="keywords" content="user">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <strong>小禅院开发组</strong> <small>项目管理</small>
    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
            <li class="am-dropdown" data-am-dropdown>
                <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                    <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
                    <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                    <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
                </ul>
            </li>
        </ul>
    </div>
</header>

<div class="am-cf admin-main">
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <ul class="am-list admin-sidebar-list">

                <li><a href="#"><span class="am-icon-table"></span> 项目管理</a></li>
                <li><a href="afterTeacherList"><span class="am-icon-pencil-square-o"></span> 讲师管理</a></li>
            </ul>

            <div class="am-panel am-panel-default admin-sidebar-panel">
                <div class="am-panel-bd">
                    <p><span class="am-icon-bookmark"></span> 公告</p>
                    <p>时光静好，与君语；细水流年，与君同。</p>
                </div>
            </div>
        </div>
    </div>
    <!-- sidebar end -->

    <!-- content start -->
    <div class="admin-content">
        <div class="admin-content-body">
            <div class="am-cf am-padding am-padding-bottom-0">
                <c:if test="${empty teacher.teacherId}">
                    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">讲师管理</strong> / <small>添加信息</small></div>
                </c:if>
                <c:if test="${not empty teacher.teacherId}">
                    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">讲师管理</strong> / <small>修改信息</small></div>
                </c:if>

            </div>
            <hr/>

            <div class="am-g">
                <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8" hidden="hidden">
                    <div class="am-panel am-panel-default">
                        <div class="am-panel-bd">
                            <div class="am-g">
                                <div class="am-u-md-4">
                                    <img class="am-img-circle am-img-thumbnail" src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/200/h/200/q/80" alt=""/>
                                </div>
                                <div class="am-u-md-8">
                                    <p>你可以使用<a href="#">gravatar.com</a>提供的头像或者使用本地上传头像。 </p>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="am-panel am-panel-default" hidden="hidden">
                        <div class="am-panel-bd">
                            <div class="user-info">
                                <p>等级信息</p>
                                <div class="am-progress am-progress-sm">
                                    <div class="am-progress-bar" style="width: 60%"></div>
                                </div>
                                <p class="user-info-order">当前等级：<strong>LV8</strong> 活跃天数：<strong>587</strong> 距离下一级别：<strong>160</strong></p>
                            </div>
                            <div class="user-info">
                                <p>信用信息</p>
                                <div class="am-progress am-progress-sm">
                                    <div class="am-progress-bar am-progress-bar-success" style="width: 80%"></div>
                                </div>
                                <p class="user-info-order">信用等级：正常当前 信用积分：<strong>80</strong></p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
                    <form class="am-form am-form-horizontal" method="post"  enctype="multipart/form-data" action="${pageContext.request.contextPath}/after/teacher/teacherManagerAdd"  >

                        <c:if test="${not empty teacher.teacherId}">
                            <input type="hidden" name="teacherId" value="${teacher.teacherId}"/>
                        </c:if>
                        <c:if test="${empty teacher.teacherId}">
                            <input type="hidden" name="teacherId" value="0"/>
                        </c:if>
                        <div class="am-form-group">
                            <label for="projectName" class="am-u-sm-3 am-form-label">讲师姓名</label>
                            <div class="am-u-sm-9">
                                <input type="text" id="teacherName" name="teacherName" value="${teacher.teacherName}" placeholder="讲师姓名">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="projectImg1" class="am-u-sm-3 am-form-label">讲师照片</label>
                            <div class="am-u-sm-9">
                                <c:if test="${not empty teacher.teacherId}">
                                    <img width="100px" heigth="100px"src="${teacher.teacherImg}">
                                </c:if>

                                <input type="file"  id="files"   name="files" value="${teacher.teacherImg}">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="projectImg2" class="am-u-sm-3 am-form-label">讲师QQ二维码</label>
                            <div class="am-u-sm-9">
                                <c:if test="${not empty teacher.teacherId}">
                                    <img width="100px" heigth="100px"src="${teacher.teacherQQ}">
                                </c:if>
                                <input type="file" id="files2" name="files" >
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="projectImg3" class="am-u-sm-3 am-form-label">讲师微信二维码</label>
                            <div class="am-u-sm-9">
                                <c:if test="${not empty teacher.teacherId}">
                                    <img width="100px" heigth="100px"src="${teacher.teacherWX}">
                                </c:if>
                                <input type="file"  id="files3" name="files" value="${teacher.teacherWX}">
                            </div>
                        </div>



                        <div class="am-form-group">
                            <label for="user-intro" class="am-u-sm-3 am-form-label">讲师简介</label>
                            <div class="am-u-sm-9">
                                <textarea class="" rows="5" id="user-intro" name="teacherDetail" placeholder="对讲师进行简介">${teacher.teacherDetail}</textarea>
                        </div>
                        </div>

                        <div class="am-form-group">
                            <div class="am-u-sm-9 am-u-sm-push-3">
                                <button type="submit" class="am-btn am-btn-primary">保存</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <footer class="admin-content-footer">
            <hr>
            <p class="am-padding-left">? 2014 AllMobilize, Inc. Licensed under MIT license.</p>
        </footer>

    </div>
    <!-- content end -->

</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

<footer>
    <hr>
    <p class="am-padding-left"> 2019 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>
</html>
