<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <style>
        body {
            background-color: #ffffff;
        }
    </style>
</head>
<body>


<div class="layui-form layuimini-form">
    <form class="layui-form" action="${pageContext.request.contextPath}/updateoneuser" method="post">

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label required"></label>
            <div class="layui-input-block">
                <input type="hidden" name="uid"   value="${users.uid}" class="layui-input">
                <input type="hidden" name="uicon" class="image" value="${users.uicon}">
                <button type="button" class="layui-btn" id="test1" style="width: 200px;height: 150px;background: #ffffff"  >
                    <img class="layui-nav-img" src="${pageContext.request.contextPath}/images/img/${users.uicon}" style="width: 150px;height: 150px">
                </button>
                <p id="demoText"></p>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" for="uname">用户</label>
            <div class="layui-input-block">
                <input class="layui-input" id="uname"  type="text" name="uname" value="${users.uname}" lay-verify="title" placeholder="" autocomplete="off">
                <div class="help-block"></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" for="upass">用户密码</label>
            <div class="layui-input-block">
                <input class="layui-input" id="upass"  type="text" name="upass" value="${users.upass}" lay-verify="title" placeholder="" autocomplete="off">
                <div class="help-block"></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" for="usignature">个人介绍</label>
            <div class="layui-input-block">
                <input class="layui-input" id="usignature"  type="text" name="usignature" value="${users.usignature}" lay-verify="" placeholder="" autocomplete="off">
                <div class="help-block"></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" for="uemail">邮箱</label>
            <div class="layui-input-block">
                <input class="layui-input" id="uemail"  type="text" name="uemail" value="${users.uemail}" lay-verify="email" placeholder="" autocomplete="off">
                <div class="help-block"></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" for="uphoneid">手机号</label>
            <div class="layui-input-block">
                <input class="layui-input" id="uphoneid"  type="text" name="uphoneid" value="${users.uphoneid}" lay-verify="required|phone" placeholder="" autocomplete="off">
                <div class="help-block"></div>
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label required">打赏码</label>
            <div class="layui-input-block">
                <input type="hidden" name="uwximag" class="image1" value="${users.uwximag}">
                <button type="button" class="layui-btn" id="test2" style="width: 200px;height: 150px;background: #ffffff"  >
                    <img  src="${pageContext.request.contextPath}/images/img/${users.uwximag}" style="width: 150px;height: 150px">
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
<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>

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
                    return '请输入标题';
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

        var editIndex = layedit.build('LAY_demo_editor');


    });
</script>
<script>
    layui.use(['form'], function () {
        var form = layui.form,
            layer = layui.layer,
            $ = layui.$;

        //监听提交
        // form.on('submit(saveBtn)', function (data) {
        //     var index = layer.alert(JSON.stringify(data.field), {
        //         title: '最终的提交信息'
        //     }, function () {
        //
        //         // 关闭弹出层
        //         layer.close(index);
        //
        //         var iframeIndex = parent.layer.getFrameIndex(window.name);
        //         parent.layer.close(iframeIndex);
        //
        //     });
        //
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




</body>
</html>