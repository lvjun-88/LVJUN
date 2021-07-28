<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<!-- saved from url=(0024)https://www.jikeyuan.cn/ -->
<html class=""><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="icon" href="${pageContext.request.contextPath}/images/adminimg/${web.logo}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="renderer" content="webkit">
    <title>home</title>
    <meta name="keywords" content="极客园-PHP技术博客,技术论坛, thinkphp,技术交流,服务器购买教程, linux运维, 阿里云代金券,腾讯云代金券,服务器优惠, 源码下载,阿里云服务器优惠,腾讯云服务器优惠,阿里云双十一,腾讯云双十一">
    <meta name="description" content="PHP论坛,技术交流, java, python, docker, linux,服务器运维,阿里云代金券,腾讯云代金券,php, thinkphp技术交流群,阿里云代金券,阿里云服务器优惠">

    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/bootstrap.min.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/font-awesome.min.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/layer.css">
    <link rel="stylesheet" media="" href="${pageContext.request.contextPath}/home/layui/css/layui.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/swiper.min.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/common.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/atom-one-dark.css">
    <script src="${pageContext.request.contextPath}/home/osd.js.下载"></script><script src="${pageContext.request.contextPath}/home/f.txt"></script><script src="${pageContext.request.contextPath}/home/f(1).txt" id="google_shimpl"></script><script type="text/javascript" async="" src="${pageContext.request.contextPath}/home/js"></script><script src="${pageContext.request.contextPath}/home/hm.js.下载"></script><script src="${pageContext.request.contextPath}/home/highlight.js.下载"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/home/font_1104524_z1zcv22ej09.css">
    <script>hljs.initHighlightingOnLoad();</script>
    <!--[if lt IE 9]>
    <script src="/libs/html5shiv.js"></script>
    <script src="/libs/respond.min.js"></script>
    <![endif]-->
</head>
<body class="group-page">
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

<!-- <div style="height: 70px; background-color: #F2F2F2;"></div>-->

<!-- --------------------中部-------------------------------------->

<div class="container" id="content-container" style="height: auto !important;">

    <!--<div style="margin-bottom:20px;">-->
    <!---->
    <!--</div>-->

    <div class="row" style="height: auto !important;">

        <!--       pc  main 右边 文章小块 -->
        <main class="col-md-8 layui-hide-xs">
            <!--                焦点图范围-->

            <!--</div>-->
            <!--                      最近更新模块 -->
            <div class="panel panel-default">
                <!--                 最近更新导航条    -->
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span><a href="getArticesatype">首页</a></span>
                        <span> / </span>
                        <span>文章类型 ${atype.atype}</span>

                        <div class="more hidden-xs">
                            <ul class="list-unstyled list-inline">
                                <!-- E 栏目筛选 -->
<%--                                <li><a href="https://www.jikeyuan.cn/c/wp.html">WordPress</a></li>--%>
                                <!-- E 栏目筛选 -->
                            </ul>
                        </div>
                    </h3>
                </div>
                <!--                        文章模块-->
                <div class="panel-body p-0">
                    <div class="article-list" id="LAY_demopc">
                    </div>
                </div>
            </div>
        </main>

        <script>
            layui.use('flow', function(){
                var $ = layui.jquery; //不用额外加载jQuery，flow模块本身是有依赖jQuery的，直接用即可。
                var flow = layui.flow;
                flow.load({
                    elem: '#LAY_demopc' //指定列表容器
                    ,isAuto: true
                    ,done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
                        var lis = [];
                        //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
                        $.get('getarticletyptslistjson?page='+page+'&atid=${requestScope.atid}', function(res){
                            //假设你的列表返回在data集合中
                            layui.each(res.data, function(index, item){
                                lis.push('<article class="article-item">\n' +
                                    '                                <div class="media">\n' +
                                    '                                    <div class="media-left">\n' +
                                    '                                        <a href="articleinfo?aid='+item.aid+'">\n' +
                                    '                                            <div class="embed-responsive embed-responsive-4by3 img-zoom">\n' +
                                    '                                                    <!--                                        文章图片-->\n' +
                                    '                                                <img src="${pageContext.request.contextPath}/images/img/'+item.aimg+'">\n' +
                                    '                                            </div>\n' +
                                    '                                        </a>\n' +
                                    '                                    </div>\n' +
                                    '                                    <div class="media-body">\n' +
                                    '                                        <h3 class="article-title">\n' +
                                    '                                                <!--                                         文章标题-->\n' +
                                    '                                            <a href="articleinfo?aid='+item.aid+'">'+item.aname+'</a>\n' +
                                    '                                        </h3>\n' +
                                    '                                            <!--                                          文章简介-->\n' +
                                    '                                        <div class="article-intro hidden-xs">\n' +
                                    '                                                '+item.ainfo+'\n' +
                                    '                                        </div>\n' +
                                    '                                        <div class="article-tag">\n' +
                                    '                                                <!--                                          文章类型 -->\n' +
        '                                                                    <a href="${pageContext.request.contextPath}/getarticletypesinfo?atid='+item.articletypes.atid+'" class="tag tag-primary">'+item.articletypes.atype+'</a>\n' +

                                    '                                                <!--                                          发布时间-->\n' +
                                    '                                            <span itemprop="date">'+item.atime+'</span>\n' +
                                    '                                                <!--                                          点赞次数-->\n' +
                                    '                                            <span itemprop="likes" title="点赞次数"><i class="layui-icon layui-icon-praise"></i> '+item.alike+' 点赞</span>\n' +
                                    '                                                <!--                                          评论次数-->\n' +
                                    '                                            <span itemprop="comments"><a href="articletinfo/'+item.aid+'#comments" target="_blank" title="评论数"><i class="layui-icon layui-icon-dialogue"></i></a> '+item.acommentcounts+' 评论</span>\n' +
                                    '                                                <!--                                          浏览次数-->\n' +
                                    '                                            <span itemprop="views" title="浏览次数"><i class="layui-icon layui-icon-fire"></i> '+item.alooks+' 浏览</span>\n' +
                                    '                                        </div>\n' +
                                    '                                    </div>\n' +
                                    '                                </div>\n' +
                                    '\n' +
                                    '                            </article>');
                            });


                            //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                            next(lis.join(''), page < res.pages);
                        });
                    }
                });
            });
        </script>
        <!--       pc  main 右边 文章小块 -->

        <!--      手机   main 右边 文章小块 -->
        <main class="col-md-8 layui-hide-md">
            <!--                焦点图范围-->

            <div class="panel panel-blockimg"></div>

            <!--</div>-->


            <!--                      最近更新模块 -->
            <div class="panel panel-default">
                <!--                 最近更新导航条    -->
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span><a href="getArticesatype">首页</a></span>
                        <span> / </span>
                        <span>文章类型 ${atype.atype}</span>

                        <div class="more hidden-xs">
                            <ul class="list-unstyled list-inline">
                                <!-- E 栏目筛选 -->
<%--                                <li><a href="https://www.jikeyuan.cn/c/wp.html">WordPress</a></li>--%>

                                <!-- E 栏目筛选 -->
                            </ul>
                        </div>
                    </h3>
                </div>
                <!--                        文章模块-->
                <div class="panel-body p-0">
                    <div class="article-list" id="LAY_demomd">
                        <!-- E 首页列表 -->
                    </div>
                </div>
            </div>
        </main>

        <script>
            layui.use('flow', function(){
                var $ = layui.jquery; //不用额外加载jQuery，flow模块本身是有依赖jQuery的，直接用即可。
                var flow = layui.flow;
                flow.load({
                    elem: '#LAY_demomd' //指定列表容器
                    ,isAuto: true
                    ,done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
                        var lis = [];
                        //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
                        $.get('getarticletyptslistjson?page='+page+'&atid=${requestScope.atid}', function(res){
                            //假设你的列表返回在data集合中
                            layui.each(res.data, function(index, item){
                                lis.push('<article class="article-item">\n' +
                                    '                                <div class="media">\n' +
                                    '                                    <div class="media-left">\n' +
                                    '                                        <a href="articleinfo?aid='+item.aid+'">\n' +
                                    '                                            <div class="embed-responsive embed-responsive-4by3 img-zoom">\n' +
                                    '                                                    <!--                                        文章图片-->\n' +
                                    '                                                <img src="${pageContext.request.contextPath}/images/img/'+item.aimg+'">\n' +
                                    '                                            </div>\n' +
                                    '                                        </a>\n' +
                                    '                                    </div>\n' +
                                    '                                    <div class="media-body">\n' +
                                    '                                        <h3 class="article-title">\n' +
                                    '                                                <!--                                         文章标题-->\n' +
                                    '                                            <a href="articleinfo?aid='+item.aid+'">'+item.aname+'</a>\n' +
                                    '                                        </h3>\n' +
                                    '                                            <!--                                          文章简介-->\n' +
                                    '                                        <div class="article-intro hidden-xs">\n' +
                                    '                                                '+item.ainfo+'\n' +
                                    '                                        </div>\n' +
                                    '                                        <div class="article-tag">\n' +
                                    '                                                <!--                                          文章类型 -->\n' +
                                    '                                                                    <a href="${pageContext.request.contextPath}/getarticletypesinfo?atid='+item.articletypes.atid+'" class="tag tag-primary">'+item.articletypes.atype+'</a>\n' +

                                    '                                                <!--                                          发布时间-->\n' +
                                    '                                            <span itemprop="date">'+item.atime+'</span>\n' +
                                    '                                                <!--                                          点赞次数-->\n' +
                                    '                                            <span itemprop="likes" title="点赞次数"><i class="layui-icon layui-icon-praise"></i> '+item.alike+' 点赞</span>\n' +
                                    '                                                <!--                                          评论次数-->\n' +
                                    '                                            <span itemprop="comments"><a href="articletinfo/'+item.aid+'#comments" target="_blank" title="评论数"><i class="layui-icon layui-icon-dialogue"></i> 0</a>'+item.acommentcounts+' 评论</span>\n' +
                                    '                                                <!--                                          浏览次数-->\n' +
                                    '                                            <span itemprop="views" title="浏览次数"><i class="layui-icon layui-icon-fire"></i> '+item.alooks+' 浏览</span>\n' +
                                    '                                        </div>\n' +
                                    '                                    </div>\n' +
                                    '                                </div>\n' +
                                    '\n' +
                                    '                            </article>');
                            });


                            //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                            next(lis.join(''), page < res.pages);
                        });
                    }
                });
            });
        </script>
        <!--      手机   main 右边 文章小块 -->

        <!--     右边最近更新栏 咨询 热门标签等-->
        <aside class="col-xs-12 col-sm-4" style="height: auto !important; min-height: 0px !important;">
            <!--             最近更新栏-->
            <div class="panel panel-default lasest-update">
                <!-- S 最近更新 -->
                <div class="panel-heading">
                    <h3 class="panel-title">最赞文章</h3>
                </div>
                <div class="panel-body">
                    <ul class="list-unstyled">
                        <c:forEach items="${list2}" var="articlestimelist">
                            <!--                         最近更新 按发布时间排序 取前10-->
                            <li>
                                <!--                             标签-->
                                <span>[<a href="${pageContext.request.contextPath}/getarticletypesinfo?atid=${articlestimelist.articletypes.atid}">${articlestimelist.articletypes.atype}</a>]</span>
                                <!--                             标题-->
                                <a class="link-dark" href="articleinfo?aid=${articlestimelist.aid}" title="${articlestimelist.aname}">${articlestimelist.aname}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- E 最近更新 -->
            </div>



            <div class="panel panel-blockimg">

            </div>

            <!-- S 热门资讯 -->
            <div class="panel panel-default hot-article">
                <div class="panel-heading">
                    <h3 class="panel-title">热门资讯</h3>
                </div>
                <div class="panel-body">

                    <c:forEach items="${listalookes}" var="listalookes">
                        <div class="media media-number">
                            <div class="media-left">
                                <span class="num">★</span>
                            </div>
                                <%--                        热门咨询 按浏览量排名 取前10--%>
                            <div class="media-body">
                                <a class="link-dark" href="${pageContext.request.contextPath}/articleinfo?aid=${listalookes.aid}" title="${listalookes.aname}">${listalookes.aname}</a>
                            </div>
                        </div>

                    </c:forEach>



                </div>
            </div>
            <!-- E 热门资讯 -->




            <!-- S 热门标签 -->
            <div class="panel panel-default hot-tags">
                <div class="panel-heading">
                    <h3 class="panel-title">热门标签</h3>
                </div>
                <div class="panel-body">
                    <!--     标签类别-->
                    <div class="tags">
                        <c:forEach items="${list3}" var="articletype">

                            <a href="${pageContext.request.contextPath}/getarticletypesinfo?atid=${articletype.atid}" class="tag"> <span>${articletype.atype}</span></a>
                        </c:forEach>


                    </div>
                </div>
            </div>
            <!-- E 热门标签 -->


            <%--            <div class="panel panel-blockimg">--%>
            <%--                <a href="https://www.jikeyuan.cn/" title="" target="_blank">--%>
            <%--                    <img src="https://www.jikeyuan.cn/" class="img-responsive" alt="">--%>
            <%--                </a>--%>

            <%--            </div>--%>

        </aside>
    </div>
</div>


<style>
    .list-unstyled img{
        width: 100%;
    }
</style>


<!-- 底部 合作伙伴 -->
<div class="container hidden-xs j-partner">
    <div class="panel panel-default">

        <!-- S 友情链接 -->
        <div class="panel-heading">
            <h3 class="panel-title">文章类型
                <small>文章类型</small>
                <a  class="more">文章类型</a></h3>
        </div>
        <div class="panel-body">
            <div class="list-unstyled list-links">
                <c:forEach items="${list3}" var="articletype">
                    <a href="${pageContext.request.contextPath}/getarticletypesinfo?atid=${articletype.atid}" class="tag"> <span>${articletype.atype}</span></a>
                </c:forEach>
            </div>
        </div>
        <!-- E 友情链接 -->
    </div>

</div>


<!-- 最底部  备案号-->
<footer>
    <div class="container-fluid" id="footer">
        <div class="container">
            <div class="row footer-inner">
                <p style="text-align:center;">${web.webbeian}</p><div class="col-md-3 col-sm-3 col-md-push-1 col-sm-push-1"><div class="footer-social"></div></div>
            </div>
        </div>
    </div>
</footer>



<!-- 浮动 按钮-->
<div id="floatbtn">
    <!-- S 浮动按钮 -->


    <a href="javascript:;">
        <i class="iconfont icon-wxapp"></i>
        <div class="floatbtn-wrapper">
            <div class="qrcode"><img src="${pageContext.request.contextPath}/images/loginbg.png"></div>
            <p>微信小程序</p>
            <p>微信扫一扫体验</p>
        </div>
    </a>


    <a class="hover" target="_blank" href="gowriteregister" >
        <i class="iconfont icon-pencil"></i>
        <em>立即<br>投稿</em>
    </a>

    <!--    -->
    <!--    <a href="javascript:;">-->
    <!--        <i class="iconfont icon-qrcode"></i>-->
    <!--        <div class="floatbtn-wrapper">-->
    <!--            <div class="qrcode"><img src="/assets/addons/cms/img/qrcode.png"></div>-->
    <!--            <p>微信公众账号</p>-->
    <!--            <p>微信扫一扫加关注</p>-->
    <!--        </div>-->
    <!--    </a>-->
    <!--    -->


    <a id="back-to-top" class="hover" href="javascript:;">
        <i class="iconfont icon-backtotop"></i>
        <em>返回<br>顶部</em>
    </a>
    <!-- E 浮动按钮 -->
</div>




<script type="text/javascript" src="${pageContext.request.contextPath}/home/jquery.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/home/bootstrap.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/home/layer.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/home/template-native.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/home/bootstrap-typeahead.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/home/swiper.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/home/cms.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/home/common.js.下载"></script>



<script>
    <!--     加载 更多的信息-->
    $(function () {
        $(document).on("click", ".btn-loadmore", function () {
            var that = this;
            var page = parseInt($(this).data("page"));
            page++;
            CMS.api.ajax({
                url: "/addons/cms/index/get_index_list.html?page=" + page,
            }, function (data, ret) {
                $(data).insertBefore($(that).parent());
                $(that).remove();
                return false;
            }, function (data) {

            });
            return false;
        });
    });
</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?377017a0c119b0c5329cbb98a2f7af3b";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();



</script>
</body>
</html>