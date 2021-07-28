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
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend style="font-weight:bold;color: red;">对数据操作之后请点击右上角的刷新按钮</legend>
        </fieldset>


        <script type="text/html" id="toolbarDemo">
            <div class="layui-btn-container">
                <%--                <button class="layui-btn layui-btn-normal layui-btn-sm data-add-btn" lay-event="add"> 添加 </button>--%>
                <button class="layui-btn layui-btn-sm layui-btn-danger data-delete-btn" lay-event="delete"> 查询 </button>
            </div>
        </script>



        <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>



        <%--    href="${pageContext.request.contextPath}/deleteoneproduct"--%>
        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn-normal layui-btn-xs data-count-edit" lay-event="edit">编辑</a>
            <a  class="layui-btn layui-btn-xs layui-btn-danger data-count-delete" lay-event="delete">删除</a>
        </script>

    </div>
</div>
<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'table'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table;


//转换静态表格
//         table.init('currentTableFilter', {
//             height: 315 //设置高度
//             // ,limit: 10 //注意：请务必确保 limit 参数（默认：10）是与你服务端限定的数据条数一致
//             //支持所有基础参数
//         });
        table.render({
            elem: '#currentTableId',
            url: '${pageContext.request.contextPath}/getuserstableinfojson',
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print', {
                title: '提示',
                layEvent: 'LAYTABLE_TIPS',
                icon: 'layui-icon-tips'
            }],
            cols: [[
                {type: "checkbox", width: 50},
                {field: 'uid', width: 150, title: '用户账号', sort: true,minWidth: 80},
                {field: 'uname', width: 150, title: '用户名称', minWidth: 150},
                {field: 'upass', width: 150, title: '用户密码', minWidth: 150},
                {field: 'utime', width: 150, title: '登陆时间',sort: true, minWidth: 150},
                {field: 'uemail', width: 150, title: '用户邮箱', minWidth: 150},
                {field: 'uphoneid', width: 150, title: '用户手机号',sort: true, minWidth: 150},
                {field: 'usignature', width: 150, title: '个性签名', minWidth: 150},
                {field: 'uicon', width: 100, title: '个人头像',minWidth: 100},
                {field: 'uwximag', width: 100, title: '打赏图', minWidth: 100},
                {field: 'usex', width: 100, title: '用户性别', minWidth: 100},
                {field: 'uresume', width: 100, title: '个人简介', minWidth: 100},
                {field: 'uage', width: 100, title: '用户年龄',sort: true, minWidth: 100},
                {field: 'uarea', width: 100, title: '用户区域', minWidth: 100},
                {title: '操作', minWidth: 150, toolbar: '#currentTableBar', align: "center"}
            ]],
            // limits: [10, 15, 20, 25, 50, 100],
            // limit: 15,
            // page: true,
            // skin: 'line'
        });

        // 监听搜索操作
        form.on('submit(data-search-btn)', function (data) {
            var result = JSON.stringify(data.field);
            layer.alert(result, {
                title: '最终的搜索信息'
            });

            //执行搜索重载
            table.reload('currentTableId', {
                page: {
                    curr: 1
                }
                , where: {
                    searchParams: result
                }
            }, 'data');

            return false;
        });

        /**
         * toolbar监听事件
         */
        table.on('toolbar(currentTableFilter)', function (obj) {
            if (obj.event === 'add') {  // 监听添加操作
                var index = layer.open({
                    title: '添加行业',
                    type: 2,
                    shade: 0.2,
                    maxmin:true,
                    shadeClose: true,
                    area: ['100%', '100%'],
                    content: '${pageContext.request.contextPath}/view/admin/addarticle.jsp',
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
            } else if (obj.event === 'delete') {  // 监听删除操作

                // layer.confirm('真的删除行么', function (index) {
                var checkStatus = table.checkStatus('currentTableId')
                    ,
                    data = checkStatus.data;
                layer.alert(JSON.stringify(data));
            }
        });

        //监听表格复选框选择
        table.on('checkbox(currentTableFilter)', function (obj) {
            console.log(obj)
        });

        table.on('tool(currentTableFilter)', function (obj) {
            var data = obj.data;//获得当前行数据
            if (obj.event === 'edit') {
                var index = layer.open({
                    title: '修改用户',
                    type: 2,
                    shade: 0.2,
                    maxmin:true,
                    shadeClose: true,
                    area: ['100%', '100%'],
                    content: '${pageContext.request.contextPath}/updateoneuserjsp?uid='+data.uid,

                });

            } else if (obj.event === 'delete') {
                layer.confirm('真的删除行么', function (index) {
                    obj.del();
                    $.ajax({
                        url: "${pageContext.request.contextPath}/deleteoneuser",
                        data: {
                            "uid": data.uid
                        }
                    });
                    layer.close(index);
                });
            }
        });

    });
</script>
<script>
    layer.msg('${requestScope.msg }');
</script>
</body>
</html>