<%@ page  language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0024)https://www.jikeyuan.cn/ -->
<html class=""><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="renderer" content="webkit">
    <link rel="icon" href="${pageContext.request.contextPath}/images/adminimg/${web.logo}">
    <title>首页-欢迎</title>
    <meta name="keywords" content="极客园-PHP技术博客,技术论坛, thinkphp,技术交流,服务器购买教程, linux运维, 阿里云代金券,腾讯云代金券,服务器优惠, 源码下载,阿里云服务器优惠,腾讯云服务器优惠,阿里云双十一,腾讯云双十一">
    <meta name="description" content="PHP论坛,技术交流, java, python, docker, linux,服务器运维,阿里云代金券,腾讯云代金券,php, thinkphp技术交流群,阿里云代金券,阿里云服务器优惠">

    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/bootstrap.min.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/font-awesome.min.css">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/home/layer.css">
<%--    <link rel="stylesheet" media="" href="${pageContext.request.contextPath}/home/layui/css/layui.css">--%>
    <link rel="stylesheet" media="" href="${pageContext.request.contextPath}/layui/css/layui.css">
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

<%--    <script>--%>
<%--        (function(){--%>
<%--            var src = (document.location.protocol == "http:") ? "http://js.passport.qihucdn.com/11.0.1.js?d3b12702787644df4af3fc834575fa15":"https://jspassport.ssl.qhimg.com/11.0.1.js?d3b12702787644df4af3fc834575fa15";--%>
<%--            document.write('<script src="' + src + '" id="sozz"><\/script>');--%>
<%--        })();--%>
<%--    </script>--%>
<%--    <script src="${pageContext.request.contextPath}/home/11.0.1.js.下载" id="sozz"></script><script charset="utf-8" src="${pageContext.request.contextPath}/home/ab77b6ea7f3fbf79.js.下载"></script><link rel="stylesheet" href="${pageContext.request.contextPath}/home/layer(1).css" id="layuicss-layer"><meta http-equiv="origin-trial" content="A9ZgbRtm4pU3oZiuNzOsKcC8ppFSZdcjP2qYcdQrFKVzkmiWH1kdYY1Mi9x7G8+PS8HV9Ha9Cz0gaMdKsiVZIgMAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A3HucHUo1oW9s+9kIKz8mLkbcmdaj5lxt3eiIMp1Nh49dkkBlg1Fhg4Fd/r0vL69mRRA36YutI9P/lJUfL8csQoAAACFeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjI2MjIwNzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ=="><meta http-equiv="origin-trial" content="A9ZgbRtm4pU3oZiuNzOsKcC8ppFSZdcjP2qYcdQrFKVzkmiWH1kdYY1Mi9x7G8+PS8HV9Ha9Cz0gaMdKsiVZIgMAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A3HucHUo1oW9s+9kIKz8mLkbcmdaj5lxt3eiIMp1Nh49dkkBlg1Fhg4Fd/r0vL69mRRA36YutI9P/lJUfL8csQoAAACFeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjI2MjIwNzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ=="><link rel="preload" href="${pageContext.request.contextPath}/home/f(2).txt" as="script"><script type="text/javascript" src="${pageContext.request.contextPath}/home/f(2).txt"></script></head>--%>


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

<script>
    layui.use('layer', function(){ //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            setTop: function(){
                var that = this;
                //多窗口模式，层叠置顶
                layer.open({
                    type: 2 //此处以iframe举例
                    ,title: '作者信息'
                    ,area: ['350px', '280px']
                    ,shade: 0.3
                    ,shadeClose: true
                    ,maxmin: true
                    ,offset: 'auto'
                    ,content: '${pageContext.request.contextPath}/getuseroneinfo?uid=${requestScope.U.uid}'
                    ,id:1
                    ,anim:1
                    ,zIndex: layer.zIndex //重点1
                    ,success: function(layero){
                        layer.setTop(layero); //重点2
                    }
                });
            }
            ,offset: function(othis){
                var type = othis.data('type')
                    ,text = othis.text();
                layer.open({
                    type: 1
                    ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                    ,id: 'layerDemo'+type //防止重复弹出
                    ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
                    ,btn: '关闭全部'
                    ,btnAlign: 'c' //按钮居中
                    // ,shade: 0 //不显示遮罩
                    ,yes: function(){
                        layer.closeAll();
                    }
                });
            }
        };

        $('#layerDemo .layui-btn').on('click', function(){
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>


<%--<div style="height: 70px; background-color: #F2F2F2;"></div>--%>

<%----------------------中部--------------------------------------%>



    <!--<div style="margin-bottom:20px;">-->
    <!---->
    <!--</div>-->

<style>
    .article-text a {
        color: #ff0000;
    }
</style>
<div class="container" id="content-container" style="height: auto !important;">

    <div class="row" style="height: auto !important;">

        <main class="col-md-8">
            <div class="panel panel-default article-content">
                <div class="panel-heading">
                    <ol class="breadcrumb">
                        <!-- S 面包屑导航 -->
                        <li><a href="getArticesatype">首页</a></li>
                        <li><a href="">${requestScope.article.aname}</a></li>

                        <!-- E 面包屑导航 -->
                    </ol>
                </div>

                <div class="panel-body">

                    <div class="article-metas">
<%--                        文章标题--%>
                        <h1 class="metas-title">
                            ${requestScope.article.aname} </h1> <!-- S 统计信息 -->
                        <div class="metas-body">
                                                                <span class="views-num">
                                    <i class="layui-icon layui-icon-fire"></i> ${requestScope.article.alooks} 阅读
                                </span>
                            <span class="comment-num">
                                    <i class="layui-icon layui-icon-dialogue"></i> ${requestScope.article.acommentcounts} 评论
                                </span>
                            <span class="like-num">
                                    <i class="layui-icon layui-icon-praise"></i>
                                    <span class="js-like-num">  ${requestScope.article.alike} 点赞
                                    </span>
                                </span>
                        </div>
                        <!-- E 统计信息 -->
                    </div>

                    <div class="article-text">
                        <!-- S 正文 -->
                        <p>
                        </p>
<%--                        文章简介--%>
                        <p style="box-sizing:border-box;margin-top:0px;margin-bottom:20px;color:#555555;font-family:&quot;Microsoft Yahei&quot;;font-size:16px;text-align:justify;white-space:normal;background-color:#FFFFFF;">
                            ${requestScope.article.ainfo}</p>
                        <p> ${requestScope.article.article}</p>




<%--                        <div style="font-weight: normal;color: #41C282">--%>
<%--                            <b>AD：</b><strong style="font-weight: normal;color: #FD6A5E;">阿里云2000元代金券九折优惠</strong><a target="_blank" style="text-decoration: none;border-bottom: solid 2px #eee;color:#45B6F7;" href="https://www.aliyun.com/minisite/goods?userCode=8giwrppt">点我领取 ￥2000元大礼包</a>--%>
<%--                        <p>--%>
<%--                            <b>AD：</b><strong style="font-weight: normal;color: #FD6A5E;">腾讯云2860元无门槛代金券，限时领取</strong><a target="_blank" style="text-decoration: none;border-bottom: solid 2px #eee;color:#45B6F7" href="https://cloud.tencent.com/act/cps/redirect?redirect=1040&amp;cps_key=0a97e47fbcf2f7190614f543494361a6&amp;from=console">点我领取 ￥2860无门槛代金券</a>--%>
<%--                        </p>--%>
<%--                    </div>--%>

                        <p></p>
                        <!-- E 正文 -->
                    </div>

                    <!-- S 付费阅读 -->
                    <!-- E 付费阅读 -->

                    <div class="article-donate">
                        <form action="${pageContext.request.contextPath}/addalikes" method="post">
                            <input type="hidden" name="alikeaid" value="${article.aid}">
                            <button type="submit" href="javascript:" class="btn btn-primary btn-like btn-lg" data-action="vote" data-type="like"  lay-active="e1" data-id="184" data-tag="archives"><i class="layui-icon layui-icon-praise"></i>
                                点赞(<span>${requestScope.article.alike}</span>)</button>
                            <a href="javascript:" class="btn btn-outline-primary btn-donate btn-lg" data-action="donate" data-id="184" data-image="${pageContext.request.contextPath}/images/img/${requestScope.U.uwximag}" data-original-title="" title=""><i class="layui-icon layui-icon-rmb"></i> 打赏</a>
                        </form>
                    </div>





                    <div class="entry-meta">
                        <ul>
                            <!-- S 归档 *********************************************************************-->
                            <li id="layerDemo" >本文作者：<a data-method="setTop" class="layui-btn"  style="background: #ffffff;" ><p style="color: black;">${requestScope.U.uname}</p></a></li>
                            <li>本文标签：<a href="${pageContext.request.contextPath}/getarticletypesinfo?atid=${requestScope.article.articletypes.atid}" class="tag" rel="tag">${requestScope.article.articletypes.atype}</a></li>
                            <li>浏览次数：<span>${requestScope.article.alooks}</span> 次浏览</li>
                            <li>发布日期：${requestScope.article.atime}</li>
<%--                            <li>本文链接：<a href="https://www.jikeyuan.cn/a/184.html">https://www.jikeyuan.cn/a/184.html</a></li>--%>
                            <!-- S 归档 *****************************************************************-->
                        </ul>






                        <ul class="article-prevnext">
                            <!-- S 上一篇下一篇 -->
                            <li>
                                <span>上一篇 &gt;</span>
                                <a href="${nextasgetAid}">${nextasgetAname}</a>
                            </li>
                            <!-- E 上一篇下一篇 -->
                        </ul>
                    </div>




                    <div class="article-action-btn">
                        <div class="pull-left">
                            <!-- S 收藏 -->
                            <a class="product-favorite addbookbark mr-2" href="javascript:;" rel="sidebar">
                                <i class="layui-icon layui-icon-heart-fill"></i> 收藏                        </a>
                            <!-- E 收藏 -->
                            <!-- S 分享 -->
                            <span class="bdsharebuttonbox share-box bdshare-button-style0-16">
                            <a class="bds_more share-box-a" data-cmd="more">
                                <i class="layui-icon layui-icon-share"></i> 分享                            </a>
                        </span>
                            <!-- E 分享 -->
                        </div>
                        <div class="pull-right">
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="related-article">
                        <div class="row">
                            <!-- S 相关文章 -->
                            <c:forEach items="${listfour}" var="listfour">
                                <div class="col-sm-3 col-xs-6">
                                    <a href="${pageContext.request.contextPath}/articleinfo?aid=${listfour.aid}" class="img-zoom">
                                        <div class="embed-responsive embed-responsive-4by3">
                                            <img src="${pageContext.request.contextPath}/images/img/${listfour.aimg}" alt="${listfour.aname}" class="embed-responsive-item">
                                        </div>
                                    </a>
                                    <h5>${listfour.aname}</h5>
                                </div>
                            </c:forEach>


                            <!-- E 相关文章 -->
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="panel panel-default" id="comments">
                <div class="panel-heading">
                    <h3 class="panel-title">评论列表                <small>共有 <span>${requestScope.article.acommentcounts}</span> 条评论</small>
                    </h3>
                </div>
                <div class="panel-body">
                    <div id="comment-container">
<%--                        <!-- S 评论列表 -->--%>
<%--                        <div id="commentlist">--%>
<%--                            <div class="loadmore loadmore-line loadmore-nodata"><span class="loadmore-tips">暂无评论</span></div>--%>
<%--                        </div>--%>
<%--                        <!-- E 评论列表 -->--%>
                        <!-- S 评论列表 -->
                        <div id="commentlist">

<%--                            <dl id="comment-9">--%>
<%--                                <dt><a href="javascript:;" rel="nofollow"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgaGVpZ2h0PSIxMDAiIHdpZHRoPSIxMDAiPjxyZWN0IGZpbGw9InJnYigyMjksMTYwLDE5MCkiIHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAiIGhlaWdodD0iMTAwIj48L3JlY3Q+PHRleHQgeD0iNTAiIHk9IjUwIiBmb250LXNpemU9IjUwIiB0ZXh0LWNvcHk9ImZhc3QiIGZpbGw9IiNmZmZmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIHRleHQtcmlnaHRzPSJhZG1pbiIgYWxpZ25tZW50LWJhc2VsaW5lPSJjZW50cmFsIj5MPC90ZXh0Pjwvc3ZnPg=="></a></dt>--%>
<%--                                <dd>--%>
<%--                                    <div class="parent">--%>
<%--                                        <cite><a href="javascript:;" rel="external nofollow">lvjun</a></cite>--%>
<%--                                        <small> 2秒前 <a href="javascript:;" data-id="9" title="@lvjun " class="reply" style="display: none;">回复TA</a></small>--%>
<%--                                        <p><em>@lvjun</em> 1</p>--%>
<%--                                    </div>--%>
<%--                                </dd>--%>
<%--                                <div class="clearfix"></div>--%>
<%--                            </dl>--%>
                        <c:forEach items="${list4}" var="comment">
                            <dl id="comment-8">
                                <dt><a href="javascript:;" rel="nofollow"><img src="${pageContext.request.contextPath}/images/img/${comment.users.uicon}"></a></dt>
                                <dd>
                                    <div class="parent">
                                        <cite><a href="javascript:;" rel="external nofollow">${comment.users.uname}</a></cite>
                                        <small> ${comment.actime} <a href="javascript:;" data-id="8" title="@${comment.users.uname}" class="reply" style="display: none;">回复TA</a></small>
                                        <p>${comment.comment}</p>
<%--                                        <p><em>${comment.comment}</em>12312</p>--%>
                                    </div>
                                </dd>
                                <div class="clearfix"></div>
                            </dl>

                        </c:forEach>

                        </div>
                        <!-- E 评论列表 -->

                        <!-- S 评论分页 -->
                        <div id="commentpager" class="text-center">
                        </div>
                        <!-- E 评论分页 -->

                        <!-- S 发表评论 -->
                        <div id="postcomment">
                            <h3>发表评论 <a href="javascript:;">
                                <small>取消回复</small>
                            </a></h3>

                            <form action="${pageContext.request.contextPath}/addwritecomment?toke=111111" method="post" id="postform">
<%--                                <input type="hidden" name="toke" value="111111">--%>
                            <%--                                <input type="hidden" name="__token__" value="b3aaab91919a04c57c1848eff4bfc95e">            <input type="hidden" name="type" value="archives">--%>
<%--                                <input type="hidden" name="uid" value="${sessionScope.users.uid}">--%>
                                <input type="hidden" name="aid" value="${article.aid}">
                                <div class="form-group">
                                    <textarea name="comment" class="form-control" id="commentcontent" cols="6" rows="5" tabindex="4"></textarea>
                                </div>
                                <div class="form-group">
<%--                                    <input type="hidden" name="actime" id="actime">--%>
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">提交评论</button>
<%--                                    <input name="submit" type="submit" id="submit" tabindex="5" value="提交评论(Ctrl+回车)" class="btn btn-primary">--%>
<%--                                    <span id="actiontips"></span>--%>
                                </div>
<%--                                <div class="checkbox">--%>
<%--                                    <label>--%>
<%--                                        <input name="subscribe" type="checkbox" class="checkbox" tabindex="7" checked="" value="1"> 有人回复时邮件通知我--%>
<%--                                    </label>--%>
<%--                                </div>--%>
                            </form>
                        </div>
                        <!-- E 发表评论 -->
                    </div>
                </div>
            </div>

        </main>

        <%--    右边最近更新栏 咨询 热门标签等--%>
        <aside class="col-xs-12 col-sm-4" style="height: auto !important; min-height: 0px !important;">
            <%--            最近更新栏--%>
            <div class="panel panel-default lasest-update">
                <!-- S 最近更新 -->
                <div class="panel-heading">
                    <h3 class="panel-title">最赞文章</h3>
                </div>
                <div class="panel-body">
                    <ul class="list-unstyled">
                        <c:forEach items="${list2}" var="articlestimelist">
                            <%--                        最近更新 按发布时间排序 取前10--%>
                            <li>
                                    <%--                            标签--%>
                                <span>[<a href="${pageContext.request.contextPath}/getarticletypesinfo?atid=${articlestimelist.articletypes.atid}">${articlestimelist.articletypes.atype}</a>]</span>
                                    <%--                            标题--%>
                                <a class="link-dark" href="${pageContext.request.contextPath}/articleinfo?aid=${articlestimelist.aid}" title="${articlestimelist.aname}">${articlestimelist.aname}</a>
                            </li>

                        </c:forEach>



                    </ul>
                </div>
                <!-- E 最近更新 -->
            </div>

            <div class="panel panel-blockimg">
                <script data-ad-client="ca-pub-2619064356659560" async="" src="${pageContext.request.contextPath}/home/f(3).txt" data-checked-head="true"></script>
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
                    <%--    标签类别--%>
                    <div class="tags">
                        <c:forEach items="${list3}" var="articletype">
                            <a href="${pageContext.request.contextPath}/getarticletypesinfo?atid=${articletype.atid}" class="tag"> <span>${articletype.atype}</span></a>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- E 热门标签 -->


            <div class="panel panel-blockimg">
                <a href="https://www.jikeyuan.cn/" title="" target="_blank">
                    <img src="https://www.jikeyuan.cn/" class="img-responsive" alt="">
                </a>

            </div>

        </aside>
    </div>
</div>
<%--最底部  备案号--%>
<footer>
    <div class="container-fluid" id="footer">
        <div class="container">
            <div class="row footer-inner">
                <p style="text-align:center;">${web.webbeian}<p><div class="col-md-3 col-sm-3 col-md-push-1 col-sm-push-1"><div class="footer-social"></div></div>
            </div>
        </div>
    </div>
</footer>



<div id="floatbtn">
    <!-- S 浮动按钮 -->

    <!--    -->
    <!--    <a href="javascript:;">-->
    <!--        <i class="iconfont icon-wxapp"></i>-->
    <!--        <div class="floatbtn-wrapper">-->
    <!--            <div class="qrcode"><img src="/assets/addons/cms/img/qrcode.png"></div>-->
    <!--            <p>微信小程序</p>-->
    <!--            <p>微信扫一扫体验</p>-->
    <!--        </div>-->
    <!--    </a>-->
    <!--    -->

    <a class="hover" target="_blank" href="${pageContext.request.contextPath}/gowriteregister" >
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

    <a id="feedback" class="hover" href="${pageContext.request.contextPath}/articleinfo?aid=${requestScope.article.aid}#comments">
        <i class="iconfont icon-feedback"></i>
        <em>发表<br>评论</em>
    </a>

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
    <%--    加载 更多的信息--%>
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


<script type="text/javascript" src="${pageContext.request.contextPath}/home/z_stat.php"></script>
<script src="${pageContext.request.contextPath}/home/core.php" charset="utf-8" type="text/javascript"></script>
</body>

</html>