<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0107)https://www.jikeyuan.cn/index/user/login.html?url=https%3A%2F%2Fwww.jikeyuan.cn%2Findex%2Fuser%2Findex.html -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="${pageContext.request.contextPath}/login/osd.js.下载"></script><script src="${pageContext.request.contextPath}/login/f.txt"></script><script src="${pageContext.request.contextPath}/login/f(1).txt" id="google_shimpl"></script><script data-ad-client="ca-pub-2370174237429171" async="" src="${pageContext.request.contextPath}/login/f(2).txt" data-checked-head="true"></script>

    <title>个人资料</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta name="author" content="FastAdmin">
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
<script src="${pageContext.request.contextPath}/home/layui/layui.js"></script>

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


<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 1){
                    return '请输入用户名';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });



    });
</script>
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
        .profile-avatar-container {
            position:relative;
            width:100px;
        }
        .profile-avatar-container .profile-user-img{
            width:100px;
            height:100px;
        }
        .profile-avatar-container .profile-avatar-text {
            display:none;
        }
        .profile-avatar-container:hover .profile-avatar-text {
            display:block;
            position:absolute;
            height:100px;
            width:100px;
            background:#444;
            opacity: .6;
            color: #fff;
            top:0;
            left:0;
            line-height: 100px;
            text-align: center;
        }
        .profile-avatar-container button{
            position:absolute;
            top:0;left:0;width:100px;height:100px;opacity: 0;
        }
    </style>
    <div id="content-container" class="container">
        <div class="row">
            <div class="col-md-3 layui-hide-xs">
                <div class="sidenav" id="sidebar-nav">
                    <ul class="list-group">
                        <li class="list-group-heading">会员中心</li>
                        <li class="list-group-item "> <a href="${pageContext.request.contextPath}/getmyuser"><i class="layui-icon layui-icon-rate"></i> 会员中心</a> </li>
                        <li class="list-group-item active"> <a href="${pageContext.request.contextPath}/getmyuserinfo"><i class="layui-icon layui-icon-username"></i> 个人资料</a> </li>
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
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h2 class="page-header">个人资料</h2>

                        <form name="form" id="layui-form" class="layui-form" method="POST" action="${pageContext.request.contextPath}/updatemyuserinfo"  novalidate="novalidate">
                            <%--                    <input type="hidden" name="url" value="">--%>
                            <%--                    <input type="hidden" name="__token__" value="d446a0ff98c8ea54cb708e04da1b1a76">--%>
<%--                            <div class="layui-form-item">--%>
<%--                                <label class="control-label col-xs-12 col-sm-2"></label>--%>
<%--                                <div class="col-xs-12 col-sm-4">--%>
<%--                                    <div class="profile-avatar-container">--%>
<%--                                        <img class="profile-user-img img-responsive img-circle plupload" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgaGVpZ2h0PSIxMDAiIHdpZHRoPSIxMDAiPjxyZWN0IGZpbGw9InJnYigyMjksMTYwLDE5MCkiIHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAiIGhlaWdodD0iMTAwIj48L3JlY3Q+PHRleHQgeD0iNTAiIHk9IjUwIiBmb250LXNpemU9IjUwIiB0ZXh0LWNvcHk9ImZhc3QiIGZpbGw9IiNmZmZmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIHRleHQtcmlnaHRzPSJhZG1pbiIgYWxpZ25tZW50LWJhc2VsaW5lPSJjZW50cmFsIj5MPC90ZXh0Pjwvc3ZnPg==" alt="" initialized="true">--%>
<%--                                        <div class="profile-avatar-text img-circle">点击编辑</div>--%>
<%--                                        <button id="plupload-avatar" class="plupload" data-mimetype="png,jpg,jpeg,gif" data-input-id="c-avatar" initialized="true" style="z-index: 1;"><i class="fa fa-upload"></i> 上传</button>--%>
<%--                                        <div id="html5_1ev6vh4jm12bi1r41lumsfa11u25_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 0px; left: 0px; width: 100px; height: 100px; overflow: hidden; z-index: 0;"><input id="html5_1ev6vh4jm12bi1r41lumsfa11u25" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" accept="image/png,.png,image/jpeg,.jpg,.jpeg,image/gif,.gif"></div></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label required"></label>
                                <div class="layui-input-block">
                                    <input type="hidden" name="uid"   value="${sessionScope.users.uid}" class="layui-input">
                                    <input type="hidden" name="uicon" class="image" value="${sessionScope.users.uicon}">
                                    <button type="button" class="layui-btn" id="test1" style="width: 200px;height: 150px;background: #ffffff"  >
                                        <img class="layui-nav-img" src="${pageContext.request.contextPath}/images/img/${sessionScope.users.uicon}" style="width: 150px;height: 150px">
                                    </button>
                                    <p id="demoText"></p>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label" for="uname">用户</label>
                                <div class="layui-input-block">
                                    <input class="layui-input" id="uname"  type="text" name="uname" value="${sessionScope.users.uname}" lay-verify="title" placeholder="" autocomplete="off">
                                    <div class="help-block"></div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label" for="usignature">个人介绍</label>
                                <div class="layui-input-block">
                                    <input class="layui-input" id="usignature"  type="text" name="usignature" value="${sessionScope.users.usignature}" lay-verify="" placeholder="" autocomplete="off">
                                    <div class="help-block"></div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label" for="uemail">邮箱</label>
                                <div class="layui-input-block">
                                    <input class="layui-input" id="uemail"  type="text" name="uemail" value="${sessionScope.users.uemail}" lay-verify="email" placeholder="" autocomplete="off">
                                    <div class="help-block"></div>
                                </div>
                            </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label" for="uphoneid">手机号</label>
                                    <div class="layui-input-block">
                                        <input class="layui-input" id="uphoneid"  type="text" name="uphoneid" value="${sessionScope.users.uphoneid}" lay-verify="required|phone" placeholder="" autocomplete="off">
                                        <div class="help-block"></div>
                                    </div>
                                </div>

                                <div class="layui-form-item layui-form-text">
                                    <label class="layui-form-label required">打赏码</label>
                                    <div class="layui-input-block">
                                        <input type="hidden" name="uwximag" class="image1" value="${sessionScope.users.uwximag}">
                                        <button type="button" class="layui-btn" id="test2" style="width: 200px;height: 150px;background: #ffffff"  >
                                            <img  src="${pageContext.request.contextPath}/images/img/${sessionScope.users.uwximag}" style="width: 150px;height: 150px">
                                        </button>
                                        <p id="demoText1"></p>
                                    </div>
                                </div>



                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">确 定</button>
                                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                </div>
                            </div>
                        </form>



                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        layui.use('upload', function(){
            var $ = layui.jquery
                ,upload = layui.upload;

            //普通图片上传
            var uploadInst = upload.render({
                elem: '#test1'
                ,url: '${pageContext.request.contextPath}/upload'
                ,accept:'images'
                ,size:50000
                ,before: function(obj){

                    obj.preview(function(index, file, result){

                        $('#demo1').attr('src', result);
                    });
                }
                ,done: function(res){
                    //如果上传失败
                    if(res.code > 0){
                        return layer.msg('上传失败');
                    }
                    //上传成功
                    var demoText = $('#demoText');
                    demoText.html('<span style="color: #4cae4c;">上传成功</span>');

                    var fileupload = $(".image");
                    fileupload.attr("value",res.data.src);
                    console.log(fileupload.attr("value"));
                }
                ,error: function(){
                    //演示失败状态，并实现重传
                    var demoText = $('#demoText');
                    demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                    demoText.find('.demo-reload').on('click', function(){
                        uploadInst.upload();
                    });
                }
            });


        });
    </script>
    <script>
        layui.use('upload', function(){
            var $ = layui.jquery
                ,upload = layui.upload;

            //普通图片上传
            var uploadInst = upload.render({
                elem: '#test2'
                ,url: '${pageContext.request.contextPath}/upload'
                ,accept:'images'
                ,size:50000
                ,before: function(obj){

                    obj.preview(function(index, file, result){

                        $('#demo1').attr('src', result);
                    });
                }
                ,done: function(res){
                    //如果上传失败
                    if(res.code > 0){
                        return layer.msg('上传失败');
                    }
                    //上传成功
                    var demoText = $('#demoText1');
                    demoText.html('<span style="color: #4cae4c;">上传成功</span>');

                    var fileupload = $(".image1");
                    fileupload.attr("value",res.data.src);
                    console.log(fileupload.attr("value"));
                }
                ,error: function(){
                    //演示失败状态，并实现重传
                    var demoText = $('#demoText1');
                    demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                    demoText.find('.demo-reload').on('click', function(){
                        uploadInst.upload();
                    });
                }
            });


        });
    </script>
    <style>
        .form-layer {height:100%;min-height:150px;min-width:300px;}
        .form-body {
            width:100%;
            overflow:auto;
            top:0;
            position:absolute;
            z-index:10;
            bottom:50px;
            padding:15px;
        }
        .form-layer .form-footer {
            height:50px;
            line-height:50px;
            background-color: #ecf0f1;
            width:100%;
            position:absolute;
            z-index:200;
            bottom:0;
            margin:0;
        }
        .form-footer .form-group{
            margin-left:0;
            margin-right:0;
        }
    </style>
</main>


<ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_0_anchor" style="display:block;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;"><iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" src="${pageContext.request.contextPath}/login/ads.html" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!1" data-load-complete="true"></iframe></ins></ins></ins>


<footer class="footer" style="clear:both">
    <!-- FastAdmin是开源程序，建议在您的网站底部保留一个FastAdmin的链接 -->
    <p class="copyright">${web.webbeian}</p>
</footer>

<iframe id="google_osd_static_frame_2688971193280" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;" src="${pageContext.request.contextPath}/login/saved_resource.html"></iframe><script src="${pageContext.request.contextPath}/login/require.js.下载" data-main="/assets/js/require-frontend.js?v=1613964246"></script>



</body>
<iframe id="google_esf" name="google_esf" src="${pageContext.request.contextPath}/login/zrt_lookup.html" data-ad-client="ca-pub-2370174237429171" style="display: none;"></iframe></html>