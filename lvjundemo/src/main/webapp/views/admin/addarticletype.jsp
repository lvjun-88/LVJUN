<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
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

        <div class="layui-form layuimini-form">
            <form class="layui-form" action="${pageContext.request.contextPath}/addarticletypeinfo" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label required">文章类型</label>
                    <div class="layui-input-block">
                        <input type="text" name="atype" lay-verify="required" lay-reqtext="文章类型不能为空" placeholder="请输入文章类型"  value="" class="layui-input">
                        <tip>填写文章类型名称。</tip>
                    </div>
                </div>


                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn layui-btn-normal" type="submit" lay-submit lay-filter="saveBtn">确认添加</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</div>
<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script>
    layui.use(['form','miniTab'], function () {
        var form = layui.form,
            layer = layui.layer,
            miniTab = layui.miniTab;

        <%--layer.msg('${requestScope.msg }');--%>
        //监听提交
        // form.on('submit(saveBtn)', function (data) {
        //     var index = layer.alert(JSON.stringify(data.field), {
        //         title: '最终的提交信息'
        //     }, function () {
        //         layer.close(index);
        //         miniTab.deleteCurrentByIframe();
        //     });
        //     return false;
        // });

    });
</script>
</body>
</html>