<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin table Examples</title>
    <meta name="description" content="这是一个 table 页面">
    <meta name="keywords" content="table">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/confirm.js"></script>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <script type="text/css">
        *{
         margin:0px;
        }

        img{
            width: 100px;
            height: 100px;
        }
    </script>
    <script type="text/javascript">


    function searchInfo() {
        clean();
        var content = $("#keyword").val();
        if(content !=""){
            //$("#table_body").empty();
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/after/teacher/selectTeacherName",
                data:$("#form11").serialize(),
                dataType:"json",
                success:function(respText){
                    setContents(respText);
                }
            });
        }
    }

    function clean(){
        var tbody = $("#table_body");
        tbody.empty();//清空
    }

    function setContents(respText){

        var length = respText.length;

        var tableBody = $("#table_body");
        for(var i = 0;i<length;i++){
            var tr = document.createElement("tr");
            tr.append(respText[i].teacherName);
            tr.onmouseover = function(){
                $(this).css("background-color","#E7EAED");
                $(this).css("cursor","pointer");
                $(this).css("width","100%");
            };
            tr.onmouseout = function(){
                $(this).css("background-color","white");
            };
            tableBody.append(tr);
            tr.onclick = function(){
                //这个方法实现的是当用鼠标选择一个关联数据时，自动跑到输入框里
                $("#keyword").val($(this).html());
               clean();
            };
        }

    }


    function delTeacherById(obj, id, name) {
            Confirm.show('溫馨提示', '您確定要刪除' + name + '嗎？', {
                'Delete': {
                    'primary': true,
                    'callback': function () {
                        //此处需要调用ajax

                        $.get("${pageContext.request.contextPath}/after/teacher/afterTeacherDelete?id=" + id, function (data) {
                            if (data == "success") {
                                Confirm.show('处理结果', '恭喜您删除成功');
                                //请用js删除掉那条记录

                                $(obj).parent().parent().parent().parent().parent().remove();
                            } else {
                                Confirm.show('处理结果', '操作失败');
                            }
                        })

                    }
                }
            });

            return false;

        }

        $(function () {
            $("#btn").click(function () {
                if (deleteNum > 0) {
                    Confirm.show('', '确认要删除' + deleteNum + '条数据吗？', {

                        'Delete': {
                            'primary': true,
                            'callback': function () {
                                $("#form1").submit();
                            }
                        }
                    });
                } else {
                    alert("您尚未选择数据，请选择想要删除的数据");
                }
            })
        })


        var deleteNum = 0;

        function selectAll(obj) {
            //dom  jquery
            var value = obj.checked;
            //alert(value);
            var arr = document.getElementsByName("ids");
            for (var i = 0; i < arr.length; i++) {
                arr[i].checked = value;
            }
            if (value) {
                deleteNum = arr.length;
            } else {
                deleteNum = 0;
            }

            $("#delNum").text(deleteNum);

        }

        function selectOne(obj) {
            if (obj.checked) {
                deleteNum += 1;
            } else {
                deleteNum -= 1;
            }

            if (deleteNum == 0) {
                document.getElementById("checkAllId").checked = false;
            }

            var arr = document.getElementsByName("ids");
            if (deleteNum == arr.length) {
                document.getElementById("checkAllId").checked = true;
            }
            $("#delNum").text(deleteNum)
        }

        function showAddPage() {
            location.href = "${pageContext.request.contextPath}/after/teacher/showAddPage";
        }


    </script>
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <strong>千峰项目</strong>
        <small>后台管理</small>
    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
            data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
            <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span
                    class="am-badge am-badge-warning">5</span></a></li>
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
            <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span
                    class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
        </ul>
    </div>
</header>

<div class="am-cf admin-main">
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <ul class="am-list admin-sidebar-list">

                <li class="admin-parent">

                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">

                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/project/list">项目管理</a></li>

                <li><a href="${pageContext.request.contextPath}/after/teacher/afterTeacherList"> 讲师管理</a></li>
                <li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
            </ul>

            <div class="am-panel am-panel-default admin-sidebar-panel">
                <div class="am-panel-bd">
                    <p><span class="am-icon-bookmark"></span> 公告</p>
                    <p>时光静好，与君语；细水流年，与君同。</p>
                </div>
            </div>

            <div class="am-panel am-panel-default admin-sidebar-panel">
                <div class="am-panel-bd">
                    <p><span class="am-icon-tag"></span> wiki</p>
                    <p>Welcome to the QFProject wiki!</p>
                </div>
            </div>
        </div>
    </div>
    <!-- sidebar end -->
    <!-- content start -->
    <div class="admin-content">
        <div class="admin-content-body">
            <div class="am-cf am-padding am-padding-bottom-0">

            </div>

            <hr>

            <div class="am-g">
                <div class="am-u-sm-12 am-u-md-6">
                    <div class="am-btn-toolbar">
                        <div class="am-btn-group am-btn-group-xs">
                            <button type="button" onclick="showAddPage()" class="am-btn am-btn-default"><span
                                    class="am-icon-plus"></span> 新增
                            </button>

                            <button id="btn" class="am-btn am-btn-default" type="button">
                                删除 <span class="am-icon-trash-o" id="delNum">0</span>
                            </button>

                        </div>
                    </div>
                </div>
                <form id="form11" class="navbar-form navbar-right" action="${pageContext.request.contextPath}/after/teacher/afterTeacherList/"
                      method="post">
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-form-group">

                        </div>
                    </div>
                    <div class="am-u-sm-12 ">
                        <div class="am-input-group am-input-group-sm">
                            <input type="text" autocomplete="off" onkeyup="searchInfo(this)" id="keyword" name="teacherName" class="am-form-field">

                            <span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="submit">搜索</button>
          </span>
                        </div>
                    </div>
                </form>



                <div class="am-g" >
                    <div class="am-u-sm-12">
                        <form id="form1" class="am-form"
                              action="${pageContext.request.contextPath}/after/teacher/afterTeacherBatchDelete"
                              method="post">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-check"><input type="checkbox" id="checkAllId"
                                                                   onclick="selectAll(this)"/></th>
                                    <th class="table-id">ID</th>
                                    <th class="table-title">讲师</th>
                                    <th class="table-type">简介</th>
                                    <th class="table-author am-hide-sm-only">头像</th>
                                    <th class="table-date am-hide-sm-only">QQ二维码</th>
                                    <th class="table-date am-hide-sm-only">微信二维码</th>
                                    <th class="table-set">操作</th>
                                </tr>
                                </thead>
                                <tbody style="margin-top: 10px">
                                <c:forEach items="${pageInfo.list}" var="teacher" varStatus="status">
                                    <tr >
                                        <td valign="middle"><input type="checkbox" name="ids" value="${teacher.teacherId}"
                                                   onclick="selectOne(this)"/></td>
                                        <td>${status.index+1}</td>
                                        <td>${teacher.teacherName}</td>

                                        <td>${teacher.teacherDetail}</td>
                                        <td><a href="${teacher.teacherImg}" target="_Blank"><img id="avatar" style="width: 60px;height: 60px" src="${teacher.teacherImg}"
                                                                                                 alt="讲师个人照片"></a></td>
                                        <td><a href="${teacher.teacherQQ}" target="_Blank"><img id="avatar1" style="width: 60px;height: 60px" src="${teacher.teacherQQ}"
                                                                                                 alt="讲师QQ二维码"></a></td>
                                        <td style="height: 60px;"><a href="${teacher.teacherWX}" target="_Blank"><img id="avatar2" style="width: 60px;height: 60px" src="${teacher.teacherWX}"
                                                                                                 alt="讲师微信二维码"></a></td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary"><a
                                                            href="${pageContext.request.contextPath}/after/teacher/edit?id=${teacher.teacherId}"><span
                                                            class="am-icon-pencil-square-o"></span> 编辑</a>>
                                                    </button>
                                                    <button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
                                                        <a href="#"
                                                           onclick="delTeacherById(this,'${teacher.teacherId}','${teacher.teacherName}')"
                                                        ><span
                                                                class="am-icon-trash-o"></span> 删除</a></button>

                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                </c:forEach>


                                </tbody>


                            </table>

                            <hr/>
                            <div class="am-g">

                            </div>
                        </form>
                        <!--分页-->
                        <div class="container" style="margin-right: 100px">
                            <div class="navbar-right">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/after/teacher/afterTeacherList?page=${pageInfo.prePage}&
								pageSize=${pageInfo.pageSize}" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/after/teacher/afterTeacherList?page=${pageNum}&
								pageSize=${pageInfo.pageSize}">${pageNum}</a></li>
                                        </c:forEach>


                                        <li>
                                            <a href="${pageContext.request.contextPath}/after/teacher/afterTeacherList?page=${pageInfo.nextPage}&
								pageSize=${pageInfo.pageSize}" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>

                        <!--分页结束-->

                    </div>
                </div>
                <div style="width: 219px;position: fixed;left: 1226px; top: 173px;font-size: 25px;background-color: rgba(255,255,255,1)" id = "popDiv">
                    <table id = "content_table" style=" width: 100%; border:0;">
                        <tbody id = "table_body" style="width: 100%;">

                        <!-- 动态查询的数据显示在这里与 -->
                        </tbody>
                    </table>
                </div>
            </div>

            <footer class="admin-content-footer">
                <hr>
                <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
            </footer>

        </div>
        <!-- content end -->
    </div>
</div>
    <a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
       data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

    <footer>
        <hr>
        <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
    </footer>

    <!--[if lt IE 9]>
    <script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
    <script src="assets/js/amazeui.ie8polyfill.min.js"></script>
    <![endif]-->

    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>
</html>
