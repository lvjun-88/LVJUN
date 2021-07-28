<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>首页信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <style>
        .layui-form-item .layui-input-company {width: auto;padding-right: 10px;line-height: 38px;}
    </style>
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <blockquote class="layui-elem-quote layui-text" style="margin-top: 20px;">
            <h>网站首页名称与logo（注:修改信息文字不可过多！！更换图片之后若没加载出来,建议刷新两下！！）</h>
        </blockquote>

        <form class="layui-form" action="${pageContext.request.contextPath}/updatewebinfo" method="post">
            <input type="hidden" name="webid"  value="${web.webid}" class="layui-input">

            <div class="layui-form layuimini-form">
                <div class="layui-form-item">
                    <label class="layui-form-label required">网站名称</label>
                    <div class="layui-input-block">
                        <input type="text" name="webname" lay-verify="required" lay-reqtext="网站域名不能为空" placeholder="请输入网站名称"  value="${web.webname}" class="layui-input">
                        <tip>填写自己部署网站的名称。</tip>
                    </div>
                </div>
                <%--            <div class="layui-form-item">--%>
                <%--                <label class="layui-form-label required">网站域名</label>--%>
                <%--                <div class="layui-input-block">--%>
                <%--                    <input type="text" name="domain" lay-verify="required" lay-reqtext="网站域名不能为空" placeholder="请输入网站域名"  value="http://layuimini.99php.cn" class="layui-input">--%>
                <%--                </div>--%>
                <%--            </div>--%>

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label required">网站logo</label>
                    <div class="layui-input-block">
                        <input type="hidden" name="logo" class="image" value="${web.logo}">
                        <img src="${pageContext.request.contextPath}/images/adminimg/${web.logo}" style="width: 200px;height: 150px">
                        <%--                    <div class="layui-upload">--%>
                        <button type="button" class="layui-btn" id="test1">更换图片</button>
                        <%--                        <div class="layui-upload-list">--%>
                        <img style="width: 100px;height: 100px" class="layui-upload-img" id="demo1" >
                        <p id="demoText"></p>
                        <%--
                        <%--                        </div>--%>
                        <%--                    </div>--%>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label required">轮播图1</label>
                    <div class="layui-input-block">
                        <input type="hidden" name="webimage1" class="image1" value="${web.webimage1}">
                        <img src="${pageContext.request.contextPath}/images/adminimg/${web.webimage1}" style="width: 200px;height: 150px">
                        <button type="button" class="layui-btn" id="test2">更换图片</button>
                        <img style="width: 100px;height: 100px" class="layui-upload-img" id="demo2" >
                        <p id="demoText1"></p>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">轮播图标题1</label>
                    <div class="layui-input-block">
                        <input name="webimagename1" class="layui-input" value="${web.webimagename1}">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">轮播图链接1</label>
                    <div class="layui-input-block">
                        <input name="webimageurl1" class="layui-input" value="${web.webimageurl1}">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label required">轮播图2</label>
                    <div class="layui-input-block">
                        <input type="hidden" name="webimage2" class="image2" value="${web.webimage2}">
                        <img src="${pageContext.request.contextPath}/images/adminimg/${web.webimage2}" style="width: 200px;height: 150px">
                        <button type="button" class="layui-btn" id="test3">更换图片</button>
                        <img style="width: 100px;height: 100px" class="layui-upload-img" id="demo3" >
                        <p id="demoText2"></p>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">轮播图标题2</label>
                    <div class="layui-input-block">
                        <input name="webimagename2" class="layui-input" value="${web.webimagename2}">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">轮播图链接2</label>
                    <div class="layui-input-block">
                        <input name="webimageurl2" class="layui-input" value="${web.webimageurl2}">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label required">轮播图3</label>
                    <div class="layui-input-block">
                        <input type="hidden" name="webimage3" class="image3" value="${web.webimage3}">
                        <img src="${pageContext.request.contextPath}/images/adminimg/${web.webimage3}" style="width: 200px;height: 150px">
                        <button type="button" class="layui-btn" id="test4">更换图片</button>
                        <img style="width: 100px;height: 100px" class="layui-upload-img" id="demo4" >
                        <p id="demoText3"></p>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">轮播图标题3</label>
                    <div class="layui-input-block">
                        <input name="webimagename3" class="layui-input" value="${web.webimagename3}">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">轮播图链接3</label>
                    <div class="layui-input-block">
                        <input name="webimageurl3" class="layui-input" value="${web.webimageurl3}">
                    </div>
                </div>

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label required">网页二维码</label>
                    <div class="layui-input-block">
                        <input type="hidden" name="webtwo" class="image4" value="${web.webtwo}">
                        <img src="${pageContext.request.contextPath}/images/adminimg/${web.webtwo}" style="width: 200px;height: 150px">
                        <button type="button" class="layui-btn" id="test5">更换图片</button>
                        <img style="width: 100px;height: 100px" class="layui-upload-img" id="demo5" >
                        <p id="demoText4"></p>
                    </div>
                </div>


                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label required">底部版权信息</label>
                    <div class="layui-input-block">
                        <input name="webbeian" class="layui-input" value="${web.webbeian}">
                    </div>
                </div>



                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn layui-btn-normal" type="submit" lay-submit lay-filter="setting">确认保存</button>
                    </div>
                </div>

            </div>
        </form>
    </div>
</div>



<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>

<script>
    layui.use('colorpicker', function(){
        var $ = layui.$
            ,colorpicker = layui.colorpicker;
        //常规使用
        colorpicker.render({
            elem: '#test01' //绑定元素
            ,change: function(color){ //颜色改变的回调
                layer.tips('选择了：'+ color, this.elem, {
                    tips: 1
                });
            }
        });

        //表单赋值
        colorpicker.render({
            elem: '#test-form1'
            ,color: '${homeweb.backgroundcolor}'
            ,done: function(color){
                $('#test-form-input1').val(color);
            }
        });

        colorpicker.render({
            elem: '#test-form2'
            ,color: '${homeweb.h1color}'
            ,done: function(color){
                $('#test-form-input2').val(color);
            }
        });
        colorpicker.render({
            elem: '#test-form3'
            ,color: '${homeweb.hcolor}'
            ,done: function(color){
                $('#test-form-input3').val(color);
            }
        });


    });
</script>



<script>
    layui.use(['form'], function () {
        var form = layui.form
            , layer = layui.layer;


        layer.msg('${requestScope.msg }');
        // //监听提交
        // form.on('submit(setting)', function (data) {
        //     parent.layer.alert(JSON.stringify(data.field), {
        //         title: '最终的提交信息',
        //         href:'updatehomewebinfo'
        //     });
        //     return false;
        // });

    });
</script>
<script>
    layui.use('upload', function(){
        var $ = layui.jquery
            ,upload = layui.upload;

        //普通图片上传
        var uploadInst = upload.render({
            elem: '#test1'
            ,url: '${pageContext.request.contextPath}/adminupload'
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
            ,url: '${pageContext.request.contextPath}/adminupload'
            ,accept:'images'
            ,size:50000
            ,before: function(obj){

                obj.preview(function(index, file, result){

                    $('#demo2').attr('src', result);
                });
            }
            ,done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }
                //上传成功
                var demoText1 = $('#demoText1');
                demoText1.html('<span style="color: #4cae4c;">上传成功</span>');

                var fileupload = $(".image1");
                fileupload.attr("value",res.data.src);
                console.log(fileupload.attr("value"));
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText1 = $('#demoText1');
                demoText1.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText1.find('.demo-reload').on('click', function(){
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
            elem: '#test3'
            ,url: '${pageContext.request.contextPath}/adminupload'
            ,accept:'images'
            ,size:50000
            ,before: function(obj){

                obj.preview(function(index, file, result){

                    $('#demo3').attr('src', result);
                });
            }
            ,done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }
                //上传成功
                var demoText2 = $('#demoText2');
                demoText2.html('<span style="color: #4cae4c;">上传成功</span>');

                var fileupload = $(".image2");
                fileupload.attr("value",res.data.src);
                console.log(fileupload.attr("value"));
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText2 = $('#demoText2');
                demoText2.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText2.find('.demo-reload').on('click', function(){
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
            elem: '#test4'
            ,url: '${pageContext.request.contextPath}/adminupload'
            ,accept:'images'
            ,size:50000
            ,before: function(obj){

                obj.preview(function(index, file, result){

                    $('#demo4').attr('src', result);
                });
            }
            ,done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }
                //上传成功
                var demoText3 = $('#demoText3');
                demoText3.html('<span style="color: #4cae4c;">上传成功</span>');

                var fileupload = $(".image3");
                fileupload.attr("value",res.data.src);
                console.log(fileupload.attr("value"));
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText3 = $('#demoText3');
                demoText3.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText3.find('.demo-reload').on('click', function(){
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
            elem: '#test5'
            ,url: '${pageContext.request.contextPath}/adminupload'
            ,accept:'images'
            ,size:50000
            ,before: function(obj){

                obj.preview(function(index, file, result){

                    $('#demo5').attr('src', result);
                });
            }
            ,done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }
                //上传成功
                var demoText3 = $('#demoText4');
                demoText3.html('<span style="color: #4cae4c;">上传成功</span>');

                var fileupload = $(".image4");
                fileupload.attr("value",res.data.src);
                console.log(fileupload.attr("value"));
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText3 = $('#demoText4');
                demoText3.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText3.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
        });
    });
</script>

</body>
</html>