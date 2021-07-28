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
    <form class="layui-form" action="${pageContext.request.contextPath}/updateonearticle" method="post">

        <input type="hidden" name="aid" value="${articles.aid}">
        <input type="hidden" name="uid" value="${articles.uid}">
        <input type="hidden" name="alike" value="${articles.alike}">
        <input type="hidden" name="alooks" value="${articles.alooks}">
        <input type="hidden" name="acommentcounts" value="${articles.acommentcounts}">

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label required">文章主图</label>
            <div class="layui-input-block">
                <%--                                            <input type="hidden" name="businessusewebid"   value="${businessuseweb.businessusewebid}" class="layui-input">--%>
                <input type="hidden" name="aimg" class="image1" value="${articles.aimg}">
                <img src="${pageContext.request.contextPath}/images/img/${articles.aimg}" style="width: 200px;height: 150px">
                <%--                        <div class="layui-upload">--%>
                <button type="button" class="layui-btn" id="test1">上传图片</button>
                <%--                            <div class="layui-upload-list">--%>
                <img style="width: 100px;height: 100px" class="layui-upload-img" id="demo1">
                <p id="demoText1"></p>
                <%--                            </div>--%>
                <%--                        </div>--%>
            </div>
        </div>




        <div class="layui-form-item">
            <label class="layui-form-label" for="aname">文章标题</label>
            <div class="layui-input-block">
                <input class="layui-input" id="aname"  type="text" name="aname" value="${articles.aname}" lay-verify="title" placeholder="" autocomplete="off">
                <div class="help-block"></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" for="atid">文章类型</label>
            <div class="layui-input-block">
                <select id="atid" class="" lay-verify="required" reqtext="文章类型是必填项，岂能为空？" name="atid" >
                    <option value="${articles.atid}">${articles.atype}</option>

                    <c:forEach items="${atypeslist}" var="atypeslist">
                        <option value="${atypeslist.atid}">${atypeslist.atype}</option>
                    </c:forEach>


                </select>
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" for="ainfo">文章简介</label>
            <div class="layui-input-block">
                <input class="layui-input" id="ainfo"  type="text" name="ainfo" value="${articles.ainfo}" lay-verify="required" lay-reqtext="文章内容是必填项，岂能为空？" placeholder="" autocomplete="off">
                <div class="help-block"></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label" for="LAY_demo_editor">文章内容</label>
            <div class="layui-input-block">
                <textarea id="LAY_demo_editor" name="article" class="layui-textarea layui-hide"  lay-verify="content"   placeholder="" class="layui-textarea">${articles.article}</textarea>
                <div class="help-block"></div>
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