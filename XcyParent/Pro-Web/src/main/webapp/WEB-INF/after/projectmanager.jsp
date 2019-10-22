<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" uri="http://fuyang.com/common/" %>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>项目管理—小禅院乘风破浪开发组</title>
    <meta name="description" content="这是一个 table 页面">
    <meta name="keywords" content="table">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!--<![endif]-->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
            rel="stylesheet">

    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/confirm.js"></script>
    <script src="${pageContext.request.contextPath}/before/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/before/js/jquery-3.1.0.min.js"></script>


    <style type="text/css">
        table{
            table-layout:fixed;
        }
        td{
            overflow:hidden;
            white-space:nowrap;
            text-overflow:ellipsis;
        }
    </style>


    <script type="text/javascript">
        /* 添加 */
        function showAddPage() {
            location.href = "${pageContext.request.contextPath}/project/addproject";
        }
        /* 批量删除*/
        $(function() {
            $("#btn").click(function() {
                if (deleteNum > 0) {
                    var r = confirm("溫馨提示您確定要刪除这"+deleteNum+"条数据嗎？");
                    if (r == true) {
                        $("#form2").submit();
                    }
                }else{
                    alert("您暂未选择任何数据，请选择您要删除的数据！");
                }
            });
        });

        /* 删除 */
        function delProjectById(obj, projectId, name) {
            alert("1");
            alert(projectId);
                //此处需要调用ajax
                var params = {'projectId':projectId};
                $.post("${pageContext.request.contextPath}/project/delProjectById", params, function(data) {
                    if (data == 'success') {
                        confirm('处理结果恭喜您删除成功');
                        //请用js删除掉那条记录
                        $(obj).parent().parent().parent().parent().parent().remove();
                    } else {
                        confirm('处理结果', '操作失败');
                    }
                });
        }

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

            $("#delNum").text(deleteNum);
        }

        //解决选择下拉框内容到输入框内容的问题
        function showName(obj, id, type) {
            var name = $(obj).text();

            if (type == 1) {
                $("#speakerName").html(name + "<span class='caret'></span>");
                $("#speakerId").val(id);
            } else {
                $("#courseName").html(name + "<span class='caret'></span>");
                $("#courseId").val(id);
            }

        }
    </script>
</head>
<body>
<!--[if lte IE 9]>
<![endif]-->

<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <strong>小禅院开发组</strong> <small>项目管理</small>
    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
            <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
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
                <li><a href="${pageContext.request.contextPath}/project/list"><span class="am-icon-table"></span> 项目管理</a></li>
                <li><a href="${pageContext.request.contextPath}/after/teacher/afterTeacherList"><span class="am-icon-table"></span> 讲师管理</a></li>
            </ul>
            <div class="am-panel am-panel-default admin-sidebar-panel">
                <div class="am-panel-bd">
                    <p><span class="am-icon-bookmark"></span> 公告</p>
                    <p>拼搏到感到自己，坚持到无能为力</p>
                </div>
            </div>

        </div>
    </div>
    <!-- sidebar end -->

    <!-- content start -->
    <div class="admin-content">
        <div class="admin-content-body">
            <div class="am-cf am-padding am-padding-bottom-0">
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">项目管理</strong>/<small>乘风破浪开发组
                    项目列表</small></div>
            </div>

            <hr>

            <div class="am-g">
                <div class="am-u-sm-12 am-u-md-6">
                    <div class="am-btn-toolbar">
                        <div class="am-btn-group am-btn-group-xs">
                            <button  type="button" class="am-btn am-btn-default" onclick="showAddPage()"><span class="am-icon-plus"></span> 新增</button>
                            <button id="btn" class="am-btn am-btn-default" type="button">
                                批量删除 <span class="am-icon-trash-o" id="delNum">0</span>
                            </button>
                        </div>
                    </div>
                </div>
                <form action="${pageContext.request.contextPath}/project/list" method="post" id="form1">
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-form-group" >
                            <label>项目技术：</label> <input type="text" name="projectSkill" id="projectSkill"  placeholder="输入项目技术" />
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                            <input type="text" class="am-form-field" name="projectName" id="projectName" placeholder="输入项目名称">
                            <span class="am-input-group-btn">
                                <button type="submit" class="am-btn am-btn-default" >搜索</button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="am-g">
                <div class="am-u-sm-12 ">
                    <form  id="form2" action="delBatchProject" method="post">
                        <table class="am-table am-table-striped am-table-hover table-main">
                            <thead>
                            <tr>
                                <th style="width:5%"class="table-check"><input type="checkbox" onclick="selectAll(this)" id="checkAllId"/></th>
                                <th style="width:10%"class="table-id">序号</th>
                                <th style="width:10%"class="table-title">项目名称</th>
                                <th style="width:10%"class="table-type">项目技术</th>
                                <th style="width:10%"class="table-author am-hide-sm-only">讲师姓名</th>
                                <th class="hideCol" data-toggle="tooltip" data-placement="top"
                                    style="width:20%" class="table-date am-hide-sm-only">项目介绍</th>
                                <th style="width:15%"class="table-set">操作</th>
                            </tr>

                            </thead>
                            <tbody>
                            <c:forEach items="${pageInfo.list}" var="project" varStatus="status">
                                <tr>
                                    <td><input type="checkbox" name="ids" onclick="selectOne(this)" value="${project.projectId}"/></td>
                                    <td>${status.count}</td>
                                    <td>${project.projectName}</td>
                                    <td>${project.projectSkill}</td>
                                    <td class="am-hide-sm-only">${project.teacherName}</td>
                                    <td class="am-hide-sm-only">${project.projectDetail}</td>
                                    <td>
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs">
                                                <button class="am-btn am-btn-default am-btn-xs am-text-secondary" ><span class="am-icon-pencil-square-o"></span><a href="edit?projectId=${project.projectId}"> 编辑</a></button>
                                                <button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" ><a onclick="return delProjectById(this,'${project.projectId}','${project.projectName}')"><span class="am-icon-trash-o"  aria-hidden="true"></span> 删除</a></button>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </form>
                </div>

            </div>
            <div class="container">
                <div class="navbar-right">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/project/list?page=${pageInfo.prePage}&pageSize=${pageInfo.pageSize}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum" >
                                <li><a href="${pageContext.request.contextPath}/project/list?page=${pageNum}&pageSize=${pageInfo.pageSize}">${pageNum}</a></li>
                            </c:forEach>
                            <li>
                                <a href="${pageContext.request.contextPath}/project/list?page=${pageInfo.nextPage}&pageSize=${pageInfo.pageSize}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <footer class="admin-content-footer">
            <hr>
            <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
        </footer>

    </div>
    <!-- content end -->
</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

<footer>
    <hr>
    <p class="am-padding-left">© 2019 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${pageContext.request.contextPath}js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->

</body>
</html>

