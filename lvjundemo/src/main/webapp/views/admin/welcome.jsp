<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>首页二</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <style>
        .layui-card {border:1px solid #f2f2f2;border-radius:5px;}
        .icon {margin-right:10px;color:#1aa094;}
        .icon-cray {color:#ffb800!important;}
        .icon-blue {color:#1e9fff!important;}
        .icon-tip {color:#ff5722!important;}
        .layuimini-qiuck-module {text-align:center;margin-top: 10px}
        .layuimini-qiuck-module a i {display:inline-block;width:100%;height:60px;line-height:60px;text-align:center;border-radius:2px;font-size:30px;background-color:#F8F8F8;color:#333;transition:all .3s;-webkit-transition:all .3s;}
        .layuimini-qiuck-module a cite {position:relative;top:2px;display:block;color:#666;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;font-size:14px;}
        .welcome-module {width:100%;height:210px;}
        .panel {background-color:#fff;border:1px solid transparent;border-radius:3px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,.05);box-shadow:0 1px 1px rgba(0,0,0,.05)}
        .panel-body {padding:10px}
        .panel-title {margin-top:0;margin-bottom:0;font-size:12px;color:inherit}
        .label {display:inline;padding:.2em .6em .3em;font-size:75%;font-weight:700;line-height:1;color:#fff;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:.25em;margin-top: .3em;}
        .layui-red {color:red}
        .main_btn > p {height:40px;}
        .layui-bg-number {background-color:#F8F8F8;}
        .layuimini-notice:hover {background:#f6f6f6;}
        .layuimini-notice {padding:7px 16px;clear:both;font-size:12px !important;cursor:pointer;position:relative;transition:background 0.2s ease-in-out;}
        .layuimini-notice-title,.layuimini-notice-label {
            padding-right: 70px !important;text-overflow:ellipsis!important;overflow:hidden!important;white-space:nowrap!important;}
        .layuimini-notice-title {line-height:28px;font-size:14px;}
        .layuimini-notice-extra {position:absolute;top:50%;margin-top:-8px;right:16px;display:inline-block;height:16px;color:#999;}
    </style>
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-row layui-col-space15">
                    <div class="layui-col-md6">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-warning icon"></i>数据统计</div>
                            <div class="layui-card-body">
                                <div class="welcome-module">
                                    <div class="layui-row layui-col-space10">
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-blue">实时</span>
                                                        <h5>文章统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins">${articlecounts}</h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-cyan">实时</span>
                                                        <h5>类型统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins">${articletypecounts}</h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-orange">实时</span>
                                                        <h5>用户总数</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins">${userscount}</h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-xs6">
                                            <div class="panel layui-bg-number">
                                                <div class="panel-body">
                                                    <div class="panel-title">
                                                        <span class="label pull-right layui-bg-green">实时</span>
                                                        <h5>评论统计</h5>
                                                    </div>
                                                    <div class="panel-content">
                                                        <h1 class="no-margins">${commentscount}</h1>
                                                        <small>当前分类总记录数</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <div class="layui-card">
                            <div class="layui-card-header"><i class="fa fa-credit-card icon icon-blue"></i>快捷入口</div>
                            <div class="layui-card-body">
                                <div class="welcome-module">
                                    <div class="layui-row layui-col-space10 layuimini-qiuck">
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="${pageContext.request.contextPath}/getwebinfo" data-title="首页信息" data-icon="fa fa-window-maximize">
                                                <i class="fa fa-window-maximize"></i>
                                                <cite>首页信息</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="${pageContext.request.contextPath}/getarticlestableinfo" data-title="文章信息" data-icon="fa fa-calendar">
                                                <i class="fa fa-calendar"></i>
                                                <cite>文章信息</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="${pageContext.request.contextPath}/getuserstableinfo" data-title="用户信息" data-icon="fa fa-suitcase">
                                                <i class="fa fa-suitcase"></i>
                                                <cite>用户信息</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="${pageContext.request.contextPath}/getcommentstableinfo" data-title="评论信息" data-icon="fa fa-comments-o">
                                                <i class="fa fa-comments-o"></i>
                                                <cite>评论信息</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="${pageContext.request.contextPath}/welcome" data-title="主页" data-icon="fa fa-tachometer">
                                                <i class="fa fa-tachometer"></i>
                                                <cite>主页</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="${pageContext.request.contextPath}/getindexonehome" data-title="前端首页" data-icon="fa fa-bank">
                                                <i class="fa fa-bank"></i>
                                                <cite>前端首页</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="${pageContext.request.contextPath}/getwebinfo" data-title="首页信息" data-icon="fa fa-bank">
                                                <i class="fa fa-bank"></i>
                                                <cite>首页信息</cite>
                                            </a>
                                        </div>
                                        <div class="layui-col-xs3 layuimini-qiuck-module">
                                            <a href="javascript:;" layuimini-content-href="https://www.baidu.com" data-title="百度搜索" data-icon="fa fa-search">
                                                <i class="fa fa-search"></i>
                                                <cite>百度搜索</cite>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
<%--                    <div class="layui-col-md12">--%>
<%--                        <div class="layui-card">--%>
<%--                            <div class="layui-card-header"><i class="fa fa-line-chart icon"></i>报表统计</div>--%>
<%--                            <div class="layui-card-body">--%>
<%--                                <div id="echarts-records" style="width: 100%;min-height:400px"></div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>

            <div class="layui-col-md12">

                <div class="layui-card">
                    <div class="layui-card-header"><i class="fa fa-bullhorn icon icon-tip"></i>系统公告</div>
                    <div class="layui-card-body layui-text">
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">首次登陆需先修改账号和密码</div>
                            <div class="layuimini-notice-extra">2021-3-18</div>
                            <div class="layuimini-notice-content layui-hide">
                                首次登陆需先修改账号和密码！！！<br>
                            </div>
                        </div>
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">对数据进行更新后需刷新一次页面</div>
                            <div class="layuimini-notice-extra">2021-3-18</div>
                            <div class="layuimini-notice-content layui-hide">
                                对数据进行更新后需刷新一次页面！！！！<br>
                                对数据进行，添加，修改，都需要刷新一次页面！！！<br>
                            </div>
                        </div>
                        <div class="layuimini-notice">
                            <div class="layuimini-notice-title">视频文件最大上传为40MB</div>
                            <div class="layuimini-notice-extra">2021-3-18</div>
                            <div class="layuimini-notice-content layui-hide">
                                视频文件最大上传为40MB<br>

                            </div>
                        </div>


                    </div>
                </div>



            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script>
    layui.use(['layer', 'miniTab','echarts'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            miniTab = layui.miniTab,
            echarts = layui.echarts;

        miniTab.listen();

        /**
         * 查看公告信息
         **/
        $('body').on('click', '.layuimini-notice', function () {
            var title = $(this).children('.layuimini-notice-title').text(),
                noticeTime = $(this).children('.layuimini-notice-extra').text(),
                content = $(this).children('.layuimini-notice-content').html();
            var html = '<div style="padding:15px 20px; text-align:justify; line-height: 22px;border-bottom:1px solid #e2e2e2;background-color: #2f4056;color: #ffffff">\n' +
                '<div style="text-align: center;margin-bottom: 20px;font-weight: bold;border-bottom:1px solid #718fb5;padding-bottom: 5px"><h4 class="text-danger">' + title + '</h4></div>\n' +
                '<div style="font-size: 12px">' + content + '</div>\n' +
                '</div>\n';
            parent.layer.open({
                type: 1,
                title: '系统公告'+'<span style="float: right;right: 1px;font-size: 12px;color: #b1b3b9;margin-top: 1px">'+noticeTime+'</span>',
                area: '300px;',
                shade: 0.8,
                id: 'layuimini-notice',
                btn: ['确定'],
                btnAlign: 'c',
                moveType: 1,
                content:html,
                success: function (layero) {
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        // href: 'https://gitee.com/zhongshaofa/layuimini',
                        target: '_blank'
                    });
                }
            });
        });

        /**
         * 报表功能
         */
            // var echartsRecords = echarts.init(document.getElementById('echarts-records'), 'walden');

        // 1
        // var json;
        //
        // $.ajax({
        //     type: "post",
        //     url: "/CourseCount/GetCourse",
        //     dataType: 'JSON',
        //     success: function (data) {
        //         json = JSON.parse(data);


        // 2
        // // $.get('data/asset/data/aqi-beijing.json', function (data){
        //     var optionRecords = {
        //         // title: {
        //         //     text: '第一个 ECharts 实例'
        //         // },
        //         tooltip: {
        //             trigger: 'axis'
        //         },
        //         legend: {
        //             data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
        //         },
        //         grid: {
        //             left: '3%',
        //             right: '4%',
        //             bottom: '3%',
        //             containLabel: true
        //         },
        //         toolbox: {
        //             feature: {
        //                 saveAsImage: {}
        //             }
        //         },
        //         xAxis: {
        //             type: 'category',
        //             boundaryGap: false,
        //             data: ['周一','周二','周三','周四','周五','周六','周日']
        //         },
        //         yAxis: {
        //             type: 'value'
        //         },
        //         series: [
        //             {
        //                 name:'邮件营销',
        //                 type:'line',
        //                 data:[120, 132, 101, 134, 90, 230, 210]
        //             },
        //             {
        //                 name:'联盟广告',
        //                 type:'line',
        //                 data:[220, 182, 191, 234, 290, 330, 310]
        //             },
        //             {
        //                 name:'视频广告',
        //                 type:'line',
        //                 data:[150, 232, 201, 154, 190, 330, 410]
        //             },
        //             {
        //                 name:'直接访问',
        //                 type:'line',
        //                 data:[320, 332, 301, 334, 390, 330, 320]
        //             },
        //             {
        //                 name:'搜索引擎',
        //                 type:'line',
        //                 data:[820, 932, 901, 934, 1290, 1330, 1320]
        //             }
        //         ]
        //     };
        //     echartsRecords.setOption(optionRecords);
        //
        //     // echarts 窗口缩放自适应
        //     window.onresize = function(){
        //         echartsRecords.resize();
        //     }

    });
</script>
</body>
</html>




<%--<div id="main" style="width: 600px;height: 400px;float:left" ></div>--%>


<%--<script type="text/javascript">--%>

<%--    var json;--%>

<%--    $.ajax({--%>
<%--        type: "post",--%>
<%--        url: "/CourseCount/GetCourse",--%>
<%--        dataType: 'JSON',--%>
<%--        success: function (data) {--%>

<%--            json = JSON.parse(data);--%>
<%--            myChart.setOption({--%>
<%--                title: {--%>
<%--                    text: '热门课程前三甲'--%>
<%--                },--%>
<%--                tooltip: {},--%>
<%--                legend: {--%>
<%--                    data: ['选课人数']--%>
<%--                },--%>
<%--                xAxis: {--%>
<%--                    data: json.name--%>


<%--                },--%>
<%--                yAxis: {},--%>
<%--                series: [{--%>
<%--                    name: '选课人数',--%>
<%--                    type: 'line',--%>
<%--                    data: json.count--%>
<%--                }]--%>
<%--            });--%>

<%--        }--%>
<%--    });--%>




<%--    //将echart初始化到div中--%>
<%--    var myChart = echarts.init(document.getElementById('main'));--%>
<%--    //指定图表的配置项和数据--%>
<%--    <scripts>--%>