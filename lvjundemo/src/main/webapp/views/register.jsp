<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0107)https://www.jikeyuan.cn/index/user/login.html?url=https%3A%2F%2Fwww.jikeyuan.cn%2Findex%2Fuser%2Findex.html -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="${pageContext.request.contextPath}/login/osd.js.下载"></script><script src="${pageContext.request.contextPath}/login/f.txt"></script><script src="${pageContext.request.contextPath}/login/f(1).txt" id="google_shimpl"></script><script data-ad-client="ca-pub-2370174237429171" async="" src="${pageContext.request.contextPath}/login/f(2).txt" data-checked-head="true"></script>

    <title>注册</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/adminimg/${web.logo}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta name="author" content="FastAdmin">
    <link rel="shortcut icon" href="">
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
            layer.msg('欢迎注册');
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
                if(value.length < 5){
                    return '请输入用户名，切不少于5个字符';
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

        //监听指定开关
        // form.on('switch(switchTest)', function(data){
        //     layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
        //         offset: '6px'
        //     });
        //     layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        // });

        //监听提交
        // form.on('submit(demo1)', function(data){
        //     layer.alert(JSON.stringify(data.field), {
        //         title: '最终的提交信息'
        //     })
        //     return false;
        // });




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
                        <li><a href="${pageContext.request.contextPath}/login1"><i class="fa fa-sign-in"></i> 登 录</a></li>
                        <li><a href="${pageContext.request.contextPath}/register"><i class="fa fa-user"></i> 注 册</a></li>

                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<main class="content">
    <div id="content-container" class="container">
        <div class="user-section login-section">
            <div class="logon-tab clearfix"> <a href="${pageContext.request.contextPath}/login1">登 录</a> <a class="active">注 册</a> </div>
            <div class="login-main">



                <form name="form1" id="layui-form" class="layui-form" method="POST" action="${pageContext.request.contextPath}/addUsersRegister" novalidate="novalidate">
                    <div class="layui-form-item">
                        <label class="layui-form-label">用户名</label>
                        <div class="layui-input-block">
                            <input class="layui-input" type="text"  name="uname" lay-verify="title" placeholder="用户名必须5个字符以上" autocomplete="off">
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">密码</label>
                        <div class="layui-input-block">
                            <input type="password"  name="upass" class="layui-input" lay-verify="pass" placeholder="密码必须6-12个字符" autocomplete="off">
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="layui-form-item">
                    <label class="layui-form-label">邮箱</label>
                    <div class="layui-input-block">
                        <input type="text" name="uemail"  class="layui-input" lay-verify="email" placeholder="邮箱" autocomplete="off">
                        <p class="help-block"></p>
                    </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">手机号</label>
                        <div class="layui-input-block">
                            <input type="text"  name="uphoneid" class="layui-input" lay-verify="required|phone" placeholder="手机号" autocomplete="off">
                            <p class="help-block"></p>
                        </div>
                    </div>
<%--                    <div class="form-group">--%>
<%--                        <label class="control-label">验证码</label>--%>
<%--                        <div class="controls">--%>
<%--                            <div class="input-group input-group-lg">--%>
<%--                                <input type="text" name="captcha" class="form-control" placeholder="验证码" style="border-radius: 0;">--%>
<%--                                <span class="input-group-addon" style="padding:0;border:none;">--%>
<%--                                <img src="${pageContext.request.contextPath}/register/captcha.html" width="140" height="42" onclick="this.src = &#39;/captcha.html?r=&#39; + Math.random();">--%>
<%--                            </span>--%>
<%--                            </div>--%>
<%--                            <p class="help-block"></p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">注 册</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
<%--                    <div class="form-group">--%>
<%--                        <button type="submit" class="btn btn-primary btn-lg btn-block">注 册</button>--%>
<%--                    </div>--%>
                </form>




            </div>
        </div>
    </div>
</main>


<ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;" tabindex="0" title="Advertisement" aria-label="Advertisement"><ins id="aswift_0_anchor" style="display:block;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;"><iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" src="${pageContext.request.contextPath}/login/ads.html" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" data-google-container-id="a!1" data-load-complete="true"></iframe></ins></ins></ins>


<footer class="footer" style="clear:both">
    <!-- FastAdmin是开源程序，建议在您的网站底部保留一个FastAdmin的链接 -->
    <p class="copyright">${web.webbeian}</p>
</footer>

<iframe id="google_osd_static_frame_2688971193280" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;" src="${pageContext.request.contextPath}/login/saved_resource.html"></iframe><script src="${pageContext.request.contextPath}/login/require.js.下载" data-main="/assets/js/require-frontend.js?v=1613964246"></script>



</body>
<iframe id="google_esf" name="google_esf" src="${pageContext.request.contextPath}/login/zrt_lookup.html" data-ad-client="ca-pub-2370174237429171" style="display: none;"></iframe></html>