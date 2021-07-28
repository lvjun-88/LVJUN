<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0107)https://www.jikeyuan.cn/index/user/login.html?url=https%3A%2F%2Fwww.jikeyuan.cn%2Findex%2Fuser%2Findex.html -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="${pageContext.request.contextPath}/login/osd.js.下载"></script><script src="${pageContext.request.contextPath}/login/f.txt"></script><script src="${pageContext.request.contextPath}/login/f(1).txt" id="google_shimpl"></script><script data-ad-client="ca-pub-2370174237429171" async="" src="${pageContext.request.contextPath}/login/f(2).txt" data-checked-head="true"></script>

    <title>会员中心</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/adminimg/${web.logo}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta name="author" content="FastAdmin">
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



    <div id="content-container" class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="panel panel-default ">
                    <div class="panel-body">
                        <div class="row user-baseinfo">
                            <div class="col-md-3 col-sm-3 col-xs-2 text-center user-center">
                                <a  title="">
                                    <span class="avatar-img"><img src="${pageContext.request.contextPath}/images/img/${u.uicon}" alt=""></span>
                                </a>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-10">
                                <!-- Content -->
                                <div class="ui-content">
                                    <!-- Heading -->
                                    <h4>${u.uname}</h4>
                                    <!-- Paragraph -->
                                    <p>

                                            ${u.usignature}
                                    </p>
                                    <!-- Success -->
                                    <div class="basicinfo">
                                        <div class="row">
                                            <div class="col-xs-4 col-md-2">邮箱</div>
                                            <div class="col-xs-8 col-md-4">
                                                <a href="mailto:${u.uemail}" class="viewmoney">${u.uemail}</a>
                                            </div>
                                            <div class="col-xs-4 col-md-2">手机号</div>
                                            <div class="col-xs-8 col-md-4">
                                                <a  class="viewscore">${u.uphoneid}</a>
                                            </div>
                                        </div>
                                        <%--                                        <div class="row">--%>
                                        <%--                                            <div class="col-xs-4 col-md-2">连续登录</div>--%>
                                        <%--                                            <div class="col-xs-8 col-md-4">3 天</div>--%>
                                        <%--                                            <div class="col-xs-4 col-md-2">最长连续登录</div>--%>
                                        <%--                                            <div class="col-xs-8 col-md-4">3 天</div>--%>
                                        <%--                                        </div>--%>
                                        <div class="row">
                                            <div class="col-xs-4 col-md-2">最后登录</div>
                                            <div class="col-xs-8 col-md-4">${u.utime}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <a href="${pageContext.request.contextPath}/goaddmychats" target="_blank" class="btn btn-success pull-right">
                                <i class="layui-icon layui-icon-edit"></i>
                                留言</a>
                    </div>
                </div>
            </div>
        </div>
    </div>



</body>
</html>