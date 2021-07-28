<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html class="">
<head>

    <meta charset="utf-8">
    <title id="title">首页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="${pageContext.request.contextPath}/images/adminimg/${web.logo}">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layuimini.css?v=2.0.4.2" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/themes/default.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style id="layuimini-bg-color">
    </style>
</head>
<body class="layui-layout-body layuimini-all">

<div class="layui-layout layui-layout-admin">


    <div class="layui-header header">
        <div class="layui-logo layuimini-logo"></div>

        <div class="layuimini-header-content">



            <!--手机端头部  菜单-->
<%--            <ul class="layui-nav layui-layout-left layuimini-header-menu layuimini-mobile-show">--%>
<%--                <li class="layui-nav-item">--%>
<%--                    <a href="javascript:;"><i class="fa fa-list-ul"></i></a>--%>
<%--                    <dl class="layui-nav-child layuimini-menu-header-mobile">--%>
<%--                    </dl>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--            <a>--%>
<%--                <div class="layuimini-tool layuimini-mobile-show"><i title="展开" class="fa fa-outdent" data-side-fold="1"></i></div>--%>
<%--            </a>--%>

            <!--电脑端头部菜单-->
            <ul class="layui-nav layui-layout-left layuimini-header-menu  ">
                <li class="layui-nav-item" >
                    <a href="javascript:;" onclick="document.getElementById('title').innerHTML='首页';" layuimini-content-href="getArticesatype" data-title="首页" data-icon="fa fa-gears">首页</a>
                </li>
                <li class="layui-nav-item layuimini-setting">
                    <a href="javascript:;"   data-title="文章类型" data-icon="fa fa-gears">文章类型</a>
                    <dl class="layui-nav-child">
                        <c:forEach items="${listtype}" var="listtype">
                            <dd>
                                <a href="javascript:;" onclick="document.getElementById('title').innerHTML='${listtype.atype}';" layuimini-content-href="${pageContext.request.contextPath}/getarticletypesinfo?atid=${listtype.atid}" data-title="${listtype.atype}" data-icon="fa fa-gears">${listtype.atype}</a>
                            </dd>
                        </c:forEach>


                    </dl>
                </li>
            </ul>


            <!--右边用户中心-->
            <ul class="layui-nav layui-layout-right">
<%--                <li class="layui-nav-item layuimini-pc-show">--%>

<%--                    <form class="form-inline navbar-form" action="homesearch" data-title="搜索" method="get">--%>
<%--                        <div class="layuimini-pc-show">--%>
<%--                            <input class="form-control typeahead" name="search"  data-title="搜索"  type="text" id="searchinput" placeholder="搜索"><ul class="typeahead dropdown-menu"></ul>--%>
<%--                        </div>--%>
<%--                    </form>--%>
<%--                </li>--%>
                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;" data-refresh="刷新"><i class="fa fa-refresh"></i></a>
                </li>

                <li class="layui-nav-item mobile layui-hide-xs" lay-unselect>
                    <a href="javascript:;" data-check-screen="full"><i class="fa fa-arrows-alt"></i></a>
                </li>



                <li class="layui-nav-item layuimini-setting ${requestScope.no }">
                    <a href="javascript:;" onclick="document.getElementById('title').innerHTML='登录';"  target="_blank" layuimini-content-href="login1" data-title="登录" data-icon="fa fa-gears">欢迎登录 </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='登录';" target="_blank" layuimini-content-href="login1" data-title="登录" data-icon="fa fa-gears"><i class="fa fa-sign-in"></i> 登录</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='注册';" target="_blank" layuimini-content-href="register" data-title="注册" data-icon="fa fa-gears"><i class="fa fa-user"></i> 注册</a>
                        </dd>

                    </dl>
                </li>
                <li class="layui-nav-item layuimini-setting ${requestScope.yes }">
                    <a href="javascript:;" onclick="document.getElementById('title').innerHTML='会员中心';"  target="_blank" layuimini-content-href="getmyuser" data-title="会员中心" data-icon="fa fa-gears"><img src="${pageContext.request.contextPath}/images/img/${sessionScope.users.uicon}" class="layui-nav-img">${sessionScope.users.uname}</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='会员中心';"  target="_blank" layuimini-content-href="getmyuser" data-title="会员中心" data-icon="fa fa-gears"><i class="layui-icon layui-icon-rate"></i> 会员中心<span class="layui-badge-dot"></span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='个人资料';"  target="_blank" layuimini-content-href="getmyuserinfo" data-title="个人资料" data-icon="fa fa-gears"><i class="layui-icon layui-icon-username"></i> 个人资料</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='修改密码';"  target="_blank" layuimini-content-href="views/updatemypass.jsp" data-title="修改密码" data-icon="fa fa-gears"><i class="layui-icon layui-icon-set-sm"></i> 修改密码</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='发布文章';"  target="_blank" layuimini-content-href="gowriteregister" data-title="发布文章" data-icon="fa fa-gears"><i class="layui-icon layui-icon-edit"></i> 发布文章</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='我发布的文章';"  target="_blank" layuimini-content-href="getuserarticles" data-title="我发布的文章" data-icon="fa fa-gears"><i class="layui-icon layui-icon-tabs"></i> 我发布的文章</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='我的信息';"  target="_blank" layuimini-content-href="getmychats" data-title="我的信息" data-icon="fa fa-gears"><i class="layui-icon layui-icon-reply-fill"></i> 我的信息</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='我发表的评论';"  target="_blank" layuimini-content-href="getmycomments" data-title="我发表的评论" data-icon="fa fa-gears"><i class="layui-icon layui-icon-dialogue"></i> 我发表的评论</a>
                        </dd>
                        <dd>
                            <hr>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/exit"><i class="fa fa-sign-out"></i> 退出登录</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layuimini-select-bgcolor ${requestScope.yes }"  lay-unselect>
                    <a href="javascript:;" data-bgcolor="配色方案"><i class="fa fa-ellipsis-v"></i></a>
                </li>



            </ul>
        </div>
    </div>

    <!--手机无限极左侧菜单-->
<%--    <div class="layui-side layui-bg-black layuimini-menu-left layuimini-mobile-show">--%>
<%--    </div>--%>
    <!--初始化加载层-->
    <!--<div class="layuimini-loader">
        <div class="layuimini-loader-inner"></div>
    </div>-->
    <!--手机端遮罩层-->
<%--    <div class="layuimini-make"></div>--%>

    <!-- 移动导航 -->
<%--    <div class="layuimini-site-mobile"><i class="layui-icon"></i></div>--%>


    <div class="layui-body">
        <div class="layuimini-tab layui-tab-rollTool layui-tab" lay-filter="layuiminiTab" lay-allowclose="true">
            <ul class="layui-tab-title" >
                <li class="layui-this" id="layuiminiHomeTabId" lay-id=""></li>

<%--                <c:forEach items="${listtype}" var="listtype">--%>
<%--                    <li lay-id="getarticletypesinfo?atid=${listtype.atid}" class>--%>
<%--                        <span class="layuimini-tab-active"></span>--%>
<%--                        <span>${listtype.atype}</span>--%>
<%--                        <i class></i>--%>
<%--                    </li>--%>
<%--                </c:forEach>--%>


            </ul>
            <div class="layui-tab-control">
                <li class="layuimini-tab-roll-left layui-icon layui-icon-left"></li>
                <li class="layuimini-tab-roll-right layui-icon layui-icon-right"></li>
                <li class="layui-tab-tool layui-icon layui-icon-down">
                    <ul class="layui-nav close-box">
                        <li class="layui-nav-item">
                            <a href="javascript:;"><span class="layui-nav-more"></span></a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;" layuimini-tab-close="current">关 闭 当 前</a></dd>
                                <dd><a href="javascript:;" layuimini-tab-close="other">关 闭 其 他</a></dd>
                                <dd><a href="javascript:;" layuimini-tab-close="all">关 闭 全 部</a></dd>
                            </dl>
                        </li>
                    </ul>
                </li>
            </div>
            <div class="layui-tab-content">
                <div id="layuiminiHomeTabIframe" class="layui-tab-item layui-show"></div>






            </div>
        </div>

    </div>
</div>


<script src="${pageContext.request.contextPath}/lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/lay-config.js?v=2.0.0" charset="utf-8"></script>

<script>
    layui.use(['jquery', 'layer', 'miniAdmin','miniTongji'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            miniAdmin = layui.miniAdmin,
            miniTongji = layui.miniTongji;

        var options = {
            iniUrl: "${pageContext.request.contextPath}/api/init.json",    // 初始化接口
            // clearUrl: "api/clear.json", // 缓存清理接口
            urlHashLocation: true,      // 是否打开hash定位
            bgColorDefault: false,      // 主题默认配置
            multiModule: true,          // 是否开启多模块
            menuChildOpen: false,       // 是否默认展开菜单
            loadingTime: 0,             // 初始化加载时间
            pageAnim: true,             // iframe窗口动画
            maxTabNum: 20,              // 最大的tab打开数量
        };
        miniAdmin.render(options);

        <%--$('.login-out').on("click", function () {--%>
        <%--    layer.msg('退出登录成功', function () {--%>
        <%--        window.location = '${pageContext.request.contextPath}/page/login-3.html';--%>
        <%--    });--%>
        <%--});--%>
    });
</script>


</body>

</html>

