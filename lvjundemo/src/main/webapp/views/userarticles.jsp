<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0107)https://www.jikeyuan.cn/index/user/login.html?url=https%3A%2F%2Fwww.jikeyuan.cn%2Findex%2Fuser%2Findex.html -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="${pageContext.request.contextPath}/login/osd.js.下载"></script><script src="${pageContext.request.contextPath}/login/f.txt"></script><script src="${pageContext.request.contextPath}/login/f(1).txt" id="google_shimpl"></script><script data-ad-client="ca-pub-2370174237429171" async="" src="${pageContext.request.contextPath}/login/f(2).txt" data-checked-head="true"></script>

    <title>我发布的文章</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta name="author" content="FastAdmin">
<%--    <link rel="shortcut icon" href="https://www.jikeyuan.cn/assets/img/favicon.ico">--%>
    <link rel="icon" href="${pageContext.request.contextPath}/images/adminimg/${web.logo}">
    <link href="${pageContext.request.contextPath}/login/frontend.css" rel="stylesheet">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/bootstrap.min.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/font-awesome.min.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/layer.css">
    <link rel="stylesheet" media="" href="${pageContext.request.contextPath}/home/layui/css/layui.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/swiper.min.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/common.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/atom-one-dark.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <script src="${pageContext.request.contextPath}/home/osd.js.下载"></script><script src="${pageContext.request.contextPath}/home/f.txt"></script><script src="${pageContext.request.contextPath}/home/f(1).txt" id="google_shimpl"></script><script type="text/javascript" async="" src="${pageContext.request.contextPath}/home/js"></script><script src="${pageContext.request.contextPath}/home/hm.js.下载"></script><script src="${pageContext.request.contextPath}/home/highlight.js.下载"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/home/font_1104524_z1zcv22ej09.css">
    <script>hljs.initHighlightingOnLoad();</script>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
    <script src="/assets/js/html5shiv.js"></script>
    <script src="/assets/js/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var require = {
            config: {"site":{"name":"\u6781\u5ba2\u56ed","cdnurl":"","version":1613964246,"timezone":"Asia\/Shanghai","languages":{"backend":"zh-cn","frontend":"zh-cn"}},"upload":{"cdnurl":"","uploadurl":"ajax\/upload","bucket":"local","maxsize":"10mb","mimetype":"jpg,png,bmp,jpeg,gif,zip,rar,xls,xlsx","multipart":[],"multiple":false},"modulename":"index","controllername":"user","actionname":"login","jsname":"frontend\/user","moduleurl":"\/index","language":"zh-cn","__PUBLIC__":"\/","__ROOT__":"\/","__CDN__":"","nkeditor":{"theme":"black","wordimageserver":"0"}}    };
    </script><meta http-equiv="origin-trial" content="A9ZgbRtm4pU3oZiuNzOsKcC8ppFSZdcjP2qYcdQrFKVzkmiWH1kdYY1Mi9x7G8+PS8HV9Ha9Cz0gaMdKsiVZIgMAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A3HucHUo1oW9s+9kIKz8mLkbcmdaj5lxt3eiIMp1Nh49dkkBlg1Fhg4Fd/r0vL69mRRA36YutI9P/lJUfL8csQoAAACFeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjI2MjIwNzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ==">
    <link href="${pageContext.request.contextPath}/login/user.css" rel="stylesheet">
    <link rel="preload" href="${pageContext.request.contextPath}/login/f(3).txt" as="script"><script type="text/javascript" src="${pageContext.request.contextPath}/login/f(3).txt"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="/assets/js/require-frontend.js?v=1613964246" src="${pageContext.request.contextPath}/login/require-frontend.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="jquery" src="${pageContext.request.contextPath}/login/jquery.min.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="bootstrap" src="${pageContext.request.contextPath}/login/bootstrap.min.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="fast" src="${pageContext.request.contextPath}/login/fast.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="toastr" src="${pageContext.request.contextPath}/login/toastr.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="layer" src="${pageContext.request.contextPath}/login/layer.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="lang" src="${pageContext.request.contextPath}/login/lang"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="frontend" src="${pageContext.request.contextPath}/login/frontend.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="frontend-init" src="${pageContext.request.contextPath}/login/frontend-init.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="template" src="${pageContext.request.contextPath}/login/template-native.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="moment/moment" src="${pageContext.request.contextPath}/login/moment.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="addons" src="${pageContext.request.contextPath}/login/addons.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="form" src="${pageContext.request.contextPath}/login/require-form.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="frontend/user" src="${pageContext.request.contextPath}/login/user.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="upload" src="${pageContext.request.contextPath}/login/require-upload.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="validator" src="${pageContext.request.contextPath}/login/require-validator.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="../libs/plupload/js/moxie.min" src="${pageContext.request.contextPath}/login/moxie.min.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="validator-core" src="${pageContext.request.contextPath}/login/jquery.validator.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="plupload" src="${pageContext.request.contextPath}/login/plupload.min.js.下载"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="validator-lang" src="${pageContext.request.contextPath}/login/zh-CN.js.下载"></script></head>

<body>



<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>

<script>
    layui.use(['form','layer'], function () {
        var form = layui.form
            , layer = layui.layer;
        var msginfo = '${requestScope.msg }';
        if(msginfo == "" || msginfo == null || msginfo == undefined){
        }else{
            layer.msg(msginfo);
        }


    });
</script>
<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">--%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#header-navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/getindexonehome">我的网站</a>
        </div>
        <div class="collapse navbar-collapse" id="header-navbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/getindexonehome">首页</a></li>
                <li class="dropdown">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown">会员中心 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/getmyuser"><i class="layui-icon layui-icon-rate"></i> 会员中心</a></li>
                        <li><a href="${pageContext.request.contextPath}/getmyuserinfo"><i class="layui-icon layui-icon-username"></i> 个人资料</a></li>
                        <li><a href="${pageContext.request.contextPath}/updatemypassweb"><i class="layui-icon layui-icon-set-sm"></i> 修改密码</a></li>
                        <li><a href="${pageContext.request.contextPath}/gowriteregister"><i class="layui-icon layui-icon-edit"></i> 发布文章</a></li>
                        <li><a href="${pageContext.request.contextPath}/getuserarticles"><i class="layui-icon layui-icon-tabs"></i> 我发布的文章</a></li>
                        <li><a href="${pageContext.request.contextPath}/getmychats"><i class="layui-icon layui-icon-reply-fill"></i> 我的信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/getmycomments"><i class="layui-icon layui-icon-dialogue"></i> 我发表的评论</a></li>
                        <li><a href="${pageContext.request.contextPath}/exit"><i class="fa fa-sign-out"></i> 退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<main class="content">
    <style>
        .basicinfo {
            margin: 15px 0;
        }

        .basicinfo .row > .col-xs-4 {
            padding-right: 0;
        }

        .basicinfo .row > div {
            margin: 5px 0;
        }
    </style>
    <div id="content-container" class="container">
        <div class="row">
            <div class="col-md-3 layui-hide-xs" >
                <%--                <div class="sidebar-toggle"><i class="fa fa-bars"></i></div>--%>
                <div class="sidenav" id="sidebar-nav">
                    <ul class="list-group">
                        <li class="list-group-heading">会员中心</li>
                        <li class="list-group-item "> <a href="${pageContext.request.contextPath}/getmyuser"><i class="layui-icon layui-icon-rate"></i> 会员中心</a> </li>
                        <li class="list-group-item "> <a href="${pageContext.request.contextPath}/getmyuserinfo"><i class="layui-icon layui-icon-username"></i> 个人资料</a> </li>
                        <li class="list-group-item "> <a href="${pageContext.request.contextPath}/updatemypassweb"><i class="layui-icon layui-icon-set-sm"></i> 修改密码</a> </li>
                    </ul>
                    <ul class="list-group">
                        <li class="list-group-heading">内容管理</li>
                        <!--如果需要直接跳转对应的模型(比如我的新闻,我的产品,发布新闻,发布产品)，可以在链接后加上 ?model_id=模型ID -->
                        <li class="list-group-item "><a href="${pageContext.request.contextPath}/gowriteregister"><i class="layui-icon layui-icon-edit"></i> 发布文章</a></li>
                        <li class="list-group-item active"><a href="${pageContext.request.contextPath}/getuserarticles"><i class="layui-icon layui-icon-tabs"></i> 我发布的文章</a></li>
                        <li class="list-group-item "><a href="${pageContext.request.contextPath}/getmychats"><i class="layui-icon layui-icon-reply-fill"></i> 我的信息</a></li>
                        <li class="list-group-item "><a href="${pageContext.request.contextPath}/getmycomments"><i class="layui-icon layui-icon-dialogue"></i> 我发表的评论</a></li>
                    </ul>
                </div>

            </div>
            <div class="col-md-9">
                <div class="panel panel-default panel-user">
                    <div class="panel-body">

                            <h2 class="page-header">
                                我发布的文章
                                <a href="${pageContext.request.contextPath}/gowriteregister" class="btn btn-success pull-right">
                                    <i class="layui-icon layui-icon-edit"></i>
                                    发布文章</a>
                            </h2>

<%--                            <h2>我发布的文章</h2>--%>
<%--                            <a href="${pageContext.request.contextPath}/gowriteregister"   class="btn btn-info btn-post"><i class="layui-icon layui-icon-edit"></i> 发布文章</a>--%>

                        <div class="">
                            <div class="panel-body p-0">
                                <div class="article-list" id="LAY_demopc">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</main>
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('flow', function(){
        var $ = layui.jquery; //不用额外加载jQuery，flow模块本身是有依赖jQuery的，直接用即可。
        var flow = layui.flow;
        flow.load({
            elem: '#LAY_demopc' //指定列表容器
            ,isAuto: true
            ,done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
                var lis = [];
                //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
                $.get('getuserarticleslistjson?page='+page+'&limit=5', function(res){
                    //假设你的列表返回在data集合中
                    layui.each(res.data, function(index, item){
                        lis.push('<article class="article-item">\n' +
                            '                                <div class="media">\n' +
                            '                                    <div class="media-left">\n' +
                            '                                        <a  href="userarticleinfo?aid='+item.aid+'">\n' +
                            '                                            <div class="embed-responsive embed-responsive-4by3 img-zoom">\n' +
                            '                                                    <!--                                        文章图片-->\n' +
                            '                                                <img src="${pageContext.request.contextPath}/images/img/'+item.aimg+'">\n' +
                            '                                            </div>\n' +
                            '                                        </a>\n' +
                            '                                    </div>\n' +
                            '                                    <div class="media-body">\n' +
                            '                                        <h3 class="article-title">\n' +
                            '                                                <!--                                         文章标题-->\n' +
                            '                                            <a href="userarticleinfo?aid='+item.aid+'">'+item.aname+'</a>\n' +
                            '                                        </h3>\n' +
                            '                                            <!--                                          文章简介-->\n' +
                            '                                        <div class="article-intro hidden-xs">\n' +
                            '                                                '+item.ainfo+'\n' +
                            '                                        </div>\n' +
                            '                                        <div class="article-tag">\n' +
                            '                                                <!--                                          文章类型 -->\n' +
                            '                                            <a href="" class="tag tag-primary">'+item.articletypes.atype+'</a>\n' +
                            '                                                <!--                                          发布时间-->\n' +
                            '                                            <span itemprop="date">'+item.atime+'</span>\n' +
                            '                                                <!--                                          点赞次数-->\n' +
                            '                                            <span itemprop="likes" title="点赞次数"><i class="layui-icon layui-icon-praise"></i> '+item.alike+' 点赞</span>\n' +
                            '                                                <!--                                          评论次数-->\n' +
                            '                                            <span itemprop="comments"><a href="userarticleinfo/'+item.aid+'#comments" target="_blank" title="评论数"><i class="layui-icon layui-icon-dialogue"></i></a> '+item.acommentcounts+' 评论</span>\n' +
                            '                                                <!--                                          浏览次数-->\n' +
                            '                                            <span itemprop="views" title="浏览次数"><i class="layui-icon layui-icon-fire"></i> '+item.alooks+' 浏览</span>\n' +
                            '                                            <span itemprop="comments"><a href="deletearticleinfo?aid='+item.aid+'"  title="删除"><i class="layui-icon layui-icon-delete"></i>  删除</a></span>\n' +
                            '                                        </div>\n' +
                            '                                    </div>\n' +
                            '                                </div>\n' +
                            '\n' +
                            '                            </article>');
                    });
                    //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                    next(lis.join(''), page < res.pages);
                });
            }
        });
    });
</script>

<ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_0_anchor" style="display:block;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;"><iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" src="${pageContext.request.contextPath}/login/ads.html" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!1" data-load-complete="true"></iframe></ins></ins></ins>


<footer class="footer" style="clear:both">
    <!-- FastAdmin是开源程序，建议在您的网站底部保留一个FastAdmin的链接 -->
    <p class="copyright">${web.webbeian}</p>
</footer>

<iframe id="google_osd_static_frame_2688971193280" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;" src="${pageContext.request.contextPath}/login/saved_resource.html"></iframe><script src="${pageContext.request.contextPath}/login/require.js.下载" data-main="/assets/js/require-frontend.js?v=1613964246"></script>



</body>
<iframe id="google_esf" name="google_esf" src="${pageContext.request.contextPath}/login/zrt_lookup.html" data-ad-client="ca-pub-2370174237429171" style="display: none;"></iframe></html>