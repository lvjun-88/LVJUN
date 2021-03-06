<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title id="title">首页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png">
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
            <ul class="layui-nav layui-layout-left layuimini-header-menu layuimini-mobile-show">
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="fa fa-list-ul"></i></a>
                    <dl class="layui-nav-child layuimini-menu-header-mobile">
                    </dl>
                </li>
            </ul>
            <a>
                <div class="layuimini-tool layuimini-mobile-show"><i title="展开" class="fa fa-outdent" data-side-fold="1"></i></div>
            </a>

            <!--电脑端头部菜单-->
            <ul class="layui-nav layui-layout-left layuimini-header-menu  layuimini-pc-show">
                <li class="layui-nav-item" >
                    <a href="javascript:;" onclick="document.getElementById('title').innerHTML='首页';" layuimini-content-href="getArticesatype" data-title="首页" data-icon="fa fa-gears">首页</a>
                </li>
                <li class="layui-nav-item layuimini-setting">
                    <a href="javascript:;" onclick="document.getElementById('title').innerHTML='建站教程';" layuimini-content-href="views/123.jsp" data-title="建站教程" data-icon="fa fa-gears">建站教程</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='帝国';" layuimini-content-href="page/form.html" data-title="帝国" data-icon="fa fa-gears">帝国<span class="layui-badge-dot"></span></a>
                        </dd>
                        <dd>
                            <a href="getArticesatype" onclick="document.getElementById('title').innerHTML='帝国';" layuimini-content-href="" data-title="帝国" data-icon="fa fa-gears">帝国<span class="layui-badge-dot"></span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='织梦';" layuimini-content-href="page/user-password.html" data-title="织梦" data-icon="fa fa-gears">织梦</a>
                        </dd>

                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;" onclick="document.getElementById('title').innerHTML='服务器';" layuimini-content-href="page/404.html" data-title="服务器" data-icon="fa fa-gears">服务器</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='优惠服务器';" layuimini-content-href="page/404.html" data-title="优惠服务器" data-icon="fa fa-gears">优惠服务器<span class="layui-badge-dot"></span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='服务服务器';" layuimini-content-href="page/404.html" data-title="服务服务器" data-icon="fa fa-gears">服务服务器</a>
                        </dd>

                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;" onclick="document.getElementById('title').innerHTML='web前端';" layuimini-content-href="page/404.html" data-title="web前端" data-icon="fa fa-gears">web前端</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='微信小程序';" layuimini-content-href="page/404.html" data-title="微信小程序" data-icon="fa fa-gears">微信小程序<span class="layui-badge-dot"></span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='百度小程序';" layuimini-content-href="page/404.html" data-title="百度小程序" data-icon="fa fa-gears">百度小程序</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" onclick="document.getElementById('title').innerHTML='java';" layuimini-content-href="page/404.html" data-title="java" data-icon="fa fa-gears">java</a>
                        </dd>
                    </dl>
                </li>
            </ul>


            <!--右边用户中心-->
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;" data-refresh="刷新"><i class="fa fa-refresh"></i></a>
                </li>

                <li class="layui-nav-item mobile layui-hide-xs" lay-unselect>
                    <a href="javascript:;" data-check-screen="full"><i class="fa fa-arrows-alt"></i></a>
                </li>
                <li class="layui-nav-item layui-hide-xs">
                    <form class="form-inline navbar-form" action="" method="get">
                        <div class="form-search hidden-sm hidden-md">
                            <input class="form-control typeahead" name="search" data-typeahead-url="/addons/cms/search/typeahead.html" type="text" id="searchinput" placeholder="搜索"><ul class="typeahead dropdown-menu"></ul>
                        </div>
                    </form>
                </li>
                <li class="layui-nav-item layuimini-setting">
                    <a href="javascript:;"><img src="${pageContext.request.contextPath}/images/logo.png" class="layui-nav-img">admin</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" layuimini-content-href="page/user-setting.html" data-title="基本资料" data-icon="fa fa-gears">基本资料<span class="layui-badge-dot"></span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" layuimini-content-href="page/user-password.html" data-title="修改密码" data-icon="fa fa-gears">修改密码</a>
                        </dd>
                        <dd>
                            <hr>
                        </dd>
                        <dd>
                            <a href="javascript:;" class="login-out">退出登录</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layuimini-select-bgcolor" lay-unselect>
                    <a href="javascript:;" data-bgcolor="配色方案"><i class="fa fa-ellipsis-v"></i></a>
                </li>
            </ul>
        </div>
    </div>

    <!--手机无限极左侧菜单-->
    <div class="layui-side layui-bg-black layuimini-menu-left layuimini-mobile-show">
    </div>
    <!--初始化加载层-->
    <!--<div class="layuimini-loader">
        <div class="layuimini-loader-inner"></div>
    </div>-->
    <!--手机端遮罩层-->
    <div class="layuimini-make"></div>

    <!-- 移动导航 -->
    <div class="layuimini-site-mobile"><i class="layui-icon"></i></div>


    <div class="layui-body">
        <div class="layuimini-tab layui-tab-rollTool layui-tab" lay-filter="layuiminiTab" lay-allowclose="true">
            <ul class="layui-tab-title" >
                <li class="layui-this" id="layuiminiHomeTabId" lay-id=""></li>
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

        $('.login-out').on("click", function () {
            layer.msg('退出登录成功', function () {
                window.location = '${pageContext.request.contextPath}/page/login-3.html';
            });
        });
    });
</script>




</body>

</html>

