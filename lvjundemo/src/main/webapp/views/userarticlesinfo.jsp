<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0107)https://www.jikeyuan.cn/index/user/login.html?url=https%3A%2F%2Fwww.jikeyuan.cn%2Findex%2Fuser%2Findex.html -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="${pageContext.request.contextPath}/login/osd.js.下载"></script><script src="${pageContext.request.contextPath}/login/f.txt"></script><script src="${pageContext.request.contextPath}/login/f(1).txt" id="google_shimpl"></script><script data-ad-client="ca-pub-2370174237429171" async="" src="${pageContext.request.contextPath}/login/f(2).txt" data-checked-head="true"></script>

    <title>文章</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta name="author" content="FastAdmin">
    <link rel="shortcut icon" href="https://www.jikeyuan.cn/assets/img/favicon.ico">
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
                        <li class="list-group-item "><a href="${pageContext.request.contextPath}/getuserarticles"><i class="layui-icon layui-icon-tabs"></i> 我发布的文章</a></li>
                        <li class="list-group-item "><a href="${pageContext.request.contextPath}/getmychats"><i class="layui-icon layui-icon-reply-fill"></i> 我的信息</a></li>
                        <li class="list-group-item "><a href="${pageContext.request.contextPath}/getmycomments"><i class="layui-icon layui-icon-dialogue"></i> 我发表的评论</a></li>
                    </ul>
                </div>

            </div>
            <div class="col-md-9">
                <div class="panel panel-default panel-user">
                    <div class="panel-body">

                        <div class="">
                            <div class="panel-body p-0">

                                <div class="article-list" id="LAY_demopc">
                                </div>
                                <div class="panel panel-default article-content">

                                    <div class="panel-body">

                                        <div class="article-metas">
                                            <%--                        文章标题--%>
                                            <h1 class="metas-title">
                                                ${requestScope.article.aname} </h1> <!-- S 统计信息 -->
                                            <div class="metas-body">
                                                                <span class="views-num">
                                    <i class="layui-icon layui-icon-fire"></i> ${requestScope.article.alooks} 阅读
                                </span>
                                                <span class="comment-num">
                                    <i class="layui-icon layui-icon-dialogue"></i> ${requestScope.article.acommentcounts} 评论
                                </span>
                                                <span class="like-num">
                                    <i class="layui-icon layui-icon-praise"></i>
                                    <span class="js-like-num">  ${requestScope.article.alike} 点赞
                                    </span>
                                </span>
                                            </div>
                                            <!-- E 统计信息 -->
                                        </div>

                                        <div class="article-text">
                                            <!-- S 正文 -->
                                            <p>
                                            </p>
                                            <%--                        文章简介--%>
                                            <p style="box-sizing:border-box;margin-top:0px;margin-bottom:20px;color:#555555;font-family:&quot;MicrosoftYahei&quot;;font-size:16px;text-align:justify;white-space:normal;background-color:#FFFFFF;">
                                                ${requestScope.article.ainfo}</p>
                                            <p> ${requestScope.article.article}</p>


                                            <p></p>
                                            <!-- E 正文 -->
                                        </div>

                                        <!-- S 付费阅读 -->
                                        <!-- E 付费阅读 -->


                                        <div class="entry-meta">
                                            <ul>
                                                <!-- S 归档 *********************************************************************-->
                                                <li>本文作者：${sessionScope.users.uname}</li>
                                                <li>本文标签：<a  class="tag" rel="tag">${requestScope.article.articletypes.atype}</a></li>
                                                <li>浏览次数：<span>${requestScope.article.alooks}</span> 次浏览</li>
                                                <li>发布日期：${requestScope.article.atime}</li>
                                                <%--                            <li>本文链接：<a href="https://www.jikeyuan.cn/a/184.html">https://www.jikeyuan.cn/a/184.html</a></li>--%>
                                                <!-- S 归档 *****************************************************************-->
                                            </ul>

                                        </div>




                                    </div>
                                </div>

                                <div class="panel panel-default" id="comments">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">评论列表                <small>共有 <span>${requestScope.article.acommentcounts}</span> 条评论</small>
                                        </h3>
                                    </div>
                                    <div class="panel-body">
                                        <div id="comment-container">
                                            <%--                        <!-- S 评论列表 -->--%>
                                            <%--                        <div id="commentlist">--%>
                                            <%--                            <div class="loadmore loadmore-line loadmore-nodata"><span class="loadmore-tips">暂无评论</span></div>--%>
                                            <%--                        </div>--%>
                                            <%--                        <!-- E 评论列表 -->--%>
                                            <!-- S 评论列表 -->
                                            <div id="commentlist">

                                                <%--                            <dl id="comment-9">--%>
                                                <%--                                <dt><a href="javascript:;" rel="nofollow"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgaGVpZ2h0PSIxMDAiIHdpZHRoPSIxMDAiPjxyZWN0IGZpbGw9InJnYigyMjksMTYwLDE5MCkiIHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAiIGhlaWdodD0iMTAwIj48L3JlY3Q+PHRleHQgeD0iNTAiIHk9IjUwIiBmb250LXNpemU9IjUwIiB0ZXh0LWNvcHk9ImZhc3QiIGZpbGw9IiNmZmZmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIHRleHQtcmlnaHRzPSJhZG1pbiIgYWxpZ25tZW50LWJhc2VsaW5lPSJjZW50cmFsIj5MPC90ZXh0Pjwvc3ZnPg=="></a></dt>--%>
                                                <%--                                <dd>--%>
                                                <%--                                    <div class="parent">--%>
                                                <%--                                        <cite><a href="javascript:;" rel="external nofollow">lvjun</a></cite>--%>
                                                <%--                                        <small> 2秒前 <a href="javascript:;" data-id="9" title="@lvjun " class="reply" style="display: none;">回复TA</a></small>--%>
                                                <%--                                        <p><em>@lvjun</em> 1</p>--%>
                                                <%--                                    </div>--%>
                                                <%--                                </dd>--%>
                                                <%--                                <div class="clearfix"></div>--%>
                                                <%--                            </dl>--%>
                                                <c:forEach items="${list4}" var="comment">
                                                    <dl id="comment-8">
                                                        <dt><a href="javascript:;" rel="nofollow"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgaGVpZ2h0PSIxMDAiIHdpZHRoPSIxMDAiPjxyZWN0IGZpbGw9InJnYigyMjksMTYwLDE5MCkiIHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAiIGhlaWdodD0iMTAwIj48L3JlY3Q+PHRleHQgeD0iNTAiIHk9IjUwIiBmb250LXNpemU9IjUwIiB0ZXh0LWNvcHk9ImZhc3QiIGZpbGw9IiNmZmZmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIHRleHQtcmlnaHRzPSJhZG1pbiIgYWxpZ25tZW50LWJhc2VsaW5lPSJjZW50cmFsIj5MPC90ZXh0Pjwvc3ZnPg=="></a></dt>
                                                        <dd>
                                                            <div class="parent">
                                                                <cite><a href="javascript:;" rel="external nofollow">${comment.users.uname}</a></cite>
                                                                <small> ${comment.actime} <a href="javascript:;" data-id="8" title="@${comment.users.uname}" class="reply" style="display: none;">回复TA</a></small>
                                                                <p>${comment.comment}</p>
                                                            </div>
                                                        </dd>
                                                        <div class="clearfix"></div>
                                                    </dl>
                                                </c:forEach>

                                            </div>
                                            <!-- E 评论列表 -->

                                            <!-- S 评论分页 -->
                                            <div id="commentpager" class="text-center">
                                            </div>
                                            <!-- E 评论分页 -->

                                            <!-- S 发表评论 -->
                                            <div id="postcomment">
                                                <h3>发表评论 <a href="javascript:;">
                                                    <small>取消回复</small>
                                                </a></h3>

                                                <form action="${pageContext.request.contextPath}/addwritecomment?toke=222222" method="post" id="">
                                                    <%--                                                        <input type="hidden" name="toke" value="222222">            <input type="hidden" name="type" value="archives">--%>
                                                    <%--                                <input type="hidden" name="uid" value="${sessionScope.users.uid}">--%>
                                                    <input type="hidden" name="aid" value="${article.aid}">
                                                    <div class="form-group">
                                                        <textarea name="comment" class="form-control" id="comment" cols="6" rows="5" tabindex="4"></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <%--                                    <input type="hidden" name="actime" id="actime">--%>
                                                        <button type="submit" class="btn btn-primary btn-lg btn-block">提交评论</button>
                                                        <%--                                    <input name="submit" type="submit" id="submit" tabindex="5" value="提交评论(Ctrl+回车)" class="btn btn-primary">--%>
                                                        <%--                                    <span id="actiontips"></span>--%>
                                                    </div>
                                                    <%--                                <div class="checkbox">--%>
                                                    <%--                                    <label>--%>
                                                    <%--                                        <input name="subscribe" type="checkbox" class="checkbox" tabindex="7" checked="" value="1"> 有人回复时邮件通知我--%>
                                                    <%--                                    </label>--%>
                                                    <%--                                </div>--%>
                                                </form>
                                            </div>
                                            <!-- E 发表评论 -->
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</main>


<ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_0_anchor" style="display:block;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;"><iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" src="${pageContext.request.contextPath}/login/ads.html" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!1" data-load-complete="true"></iframe></ins></ins></ins>


<footer class="footer" style="clear:both">
    <!-- FastAdmin是开源程序，建议在您的网站底部保留一个FastAdmin的链接 -->
    <p class="copyright">Copyright&nbsp;©&nbsp;2017-2019 Powered by <a href="https://www.fastadmin.net/" target="_blank">FastAdmin</a> All Rights Reserved 极客园 版权所有 <a href="http://www.miibeian.gov.cn/" target="_blank"></a></p>
</footer>

<iframe id="google_osd_static_frame_2688971193280" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;" src="${pageContext.request.contextPath}/login/saved_resource.html"></iframe><script src="${pageContext.request.contextPath}/login/require.js.下载" data-main="/assets/js/require-frontend.js?v=1613964246"></script>



</body>
<iframe id="google_esf" name="google_esf" src="${pageContext.request.contextPath}/login/zrt_lookup.html" data-ad-client="ca-pub-2370174237429171" style="display: none;"></iframe></html>