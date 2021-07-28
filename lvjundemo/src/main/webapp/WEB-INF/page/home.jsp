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

<!-- <div style="height: 70px; background-color: #F2F2F2;"></div>-->

<!-- --------------------中部-------------------------------------->

<div class="container" id="content-container" style="height: auto !important;">

    <!--<div style="margin-bottom:20px;">-->
    <!---->
    <!--</div>-->

    <div class="row" style="height: auto !important;">

        <!--         main 右边 文章小块 -->
        <main class="col-md-8">
            <!--                焦点图范围-->
		<div class="layui-carousel" id="test10">
		  <div carousel-item="">
			<a href="">
				<div><img src="${pageContext.request.contextPath}/images/bg.jpg"></div>
		    <div class="carousel-caption hidden-xs">
                    <h3>【时间表】11.11 云上盛惠，云产品限时抢购，1核2G云服务器首年88元</h3>
                </div>
			</a>
			<a href="">
				<div><img src="${pageContext.request.contextPath}/images/loginbg.png"></div>
		    <div class="carousel-caption hidden-xs">
                    <h3>【时间表】11.11 云上盛惠，云产品限时抢购，1核2G云服务器首年88元</h3>
                </div>
			</a>		    
		 	<a href="">
                <div><img src="${pageContext.request.contextPath}/images/bg.jpg"></div>
<%--                <div class="carousel-caption hidden-xs">--%>
<%--                    <h3>【时间表】11.11 云上盛惠，云产品限时抢购，1核2G云服务器首年88元</h3>--%>
<%--                </div>--%>
            </a>
		  </div>
		</div>
        
			<script>
			layui.use(['carousel', 'form'], function(){
			  var carousel = layui.carousel
			  ,form = layui.form;
			  //设定各种参数
			  var ins3 = carousel.render({
			  });
			  //图片轮播
			  carousel.render({
			    elem: '#test10'
			    ,width: '100%'
			    ,height: '350px'
			    ,indicator: 'inside'
			    //outside inside
			    ,interval: 5000
			  });
			});
			</script>
           
        	<div class="panel panel-blockimg"></div>    
          
            <!--</div>-->


            <!--                      最近更新模块 -->
            <div class="panel panel-default">
                <!--                 最近更新导航条    -->
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span>最近更新</span>

                        <div class="more hidden-xs">
                            <ul class="list-unstyled list-inline">
                                <!-- E 栏目筛选 -->
                                <li><a href="https://www.jikeyuan.cn/c/wp.html">WordPress</a></li>
                                <li><a href="https://www.jikeyuan.cn/c/p/home.html">帝国</a></li>
                                <li><a href="https://www.jikeyuan.cn/c/wechat.html">微信小程序</a></li>
                                <li><a href="https://www.jikeyuan.cn/c/youhui.html">优惠服务器</a></li>
                                <li><a href="https://www.jikeyuan.cn/c/layui.html">layui</a></li>
                                <li><a href="https://www.jikeyuan.cn/c/dedecms.html">织梦</a></li>
                                <!-- E 栏目筛选 -->
                            </ul>
                        </div>
                    </h3>
                </div>
                <!--                        文章模块-->
                <div class="panel-body p-0">
                    <div class="article-list">

                        <c:forEach items="${list1}" var="articleslist">
                            <!-- S 首页列表 一个article为一篇文章   详情信息   -->
                            <article class="article-item">
                                <div class="media">
                                    <div class="media-left">
                                        <a href="articleinfo?aid=${articleslist.aid}">
                                            <div class="embed-responsive embed-responsive-4by3 img-zoom">
                                                    <!--                                        文章图片-->
                                                <img src="${pageContext.request.contextPath}/home/ebf67101612401d971600e84ce28d767.png">
                                            </div>
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h3 class="article-title">
                                                <!--                                         文章标题-->
                                            <a href="articleinfo?aid=${articleslist.aid}">${articleslist.aname}</a>
                                        </h3>
                                            <!--                                          文章简介-->
                                        <div class="article-intro hidden-xs">
                                                ${articleslist.ainfo}
                                        </div>
                                        <div class="article-tag">
                                                <!--                                          文章类型 -->
                                            <a href="https://www.jikeyuan.cn/c/css.html" class="tag tag-primary">${articleslist.articletypes.atype}</a>
                                                <!--                                          发布时间-->
                                            <span itemprop="date">${articleslist.atime}</span>
                                                <!--                                          点赞次数-->
                                            <span itemprop="likes" title="点赞次数"><i class="layui-icon layui-icon-praise"></i> ${articleslist.alike} 点赞</span>
                                                <!--                                          评论次数-->
                                            <span itemprop="comments"><a href="articletinfo/${articleslist.aid}#comments" target="_blank" title="评论数"><i class="layui-icon layui-icon-dialogue"></i> 0</a> 评论</span>
                                                <!--                                          浏览次数-->
                                            <span itemprop="views" title="浏览次数"><i class="layui-icon layui-icon-fire"></i> 175 浏览</span>
                                        </div>
                                    </div>
                                </div>

                            </article>

                        </c:forEach>

                        <article class="article-item">
                            <div class="media">
                                <div class="media-left">
                                    <a href="https://www.jikeyuan.cn/a/178.html">
                                        <div class="embed-responsive embed-responsive-4by3 img-zoom">
                                            <img src="${pageContext.request.contextPath}/home/3f3774fffafe325640ca7154cb3489e4.png">
                                        </div>
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h3 class="article-title">
                                        <a href="https://www.jikeyuan.cn/a/178.html">腾讯云服务器精彩618，仅需95元</a>
                                    </h3>
                                    <div class="article-intro hidden-xs">
                                        腾讯云2020年618活动出来了，最低的一款1核2G1M服务器95/年，个人站长可以买一个玩一下。PS：活动还是万年不变的新用户专享，需要准备一个新手机号码和身份证实名。活动时间：即日起至2020年06月30日；活动对象：腾讯云官网已注册且完成实名认证的国内站用户均可参与（协作者与子用户账号除外）；活动地址：https://cloud.tencent.com/act/cps/redirect?re            </div>
                                    <div class="article-tag">
                                        <a href="https://www.jikeyuan.cn/c/youhui.html" class="tag tag-primary">优惠服务器</a>
                                        <span itemprop="date">2020-2-5</span>
                                        <span itemprop="likes" title="点赞次数"><i class="fa fa-thumbs-up"></i> 0 点赞</span>
                                        <span itemprop="comments"><a href="https://www.jikeyuan.cn/a/178.html#comments" target="_blank" title="评论数"><i class="fa fa-comments"></i> 0</a> 评论</span>
                                        <span itemprop="views" title="浏览次数"><i class="fa fa-eye"></i> 595 浏览</span>
                                    </div>
                                </div>
                            </div>

                        </article>
                        <!-- E 首页列表 -->

                        <div class="text-center">
                            <a href="https://www.jikeyuan.cn/?page=2" data-page="1" class="btn btn-default my-4 px-4 btn-loadmore">加载更多</a>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!--     右边最近更新栏 咨询 热门标签等-->
        <aside class="col-xs-12 col-sm-4" style="height: auto !important; min-height: 0px !important;">
            <!--             最近更新栏-->
            <div class="panel panel-default lasest-update">
                <!-- S 最近更新 -->
                <div class="panel-heading">
                    <h3 class="panel-title">最新更新</h3>
                </div>
                <div class="panel-body">
                    <ul class="list-unstyled">
                        <c:forEach items="${list2}" var="articlestimelist">
                            <!--                         最近更新 按发布时间排序 取前10-->
                            <li>
                                    <!--                             标签-->
                                <span>[<a href="">${articlestimelist.articletypes.atype}</a>]</span>
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
                    <h3 class="panel-title">推荐资讯(未完成)</h3>
                </div>
                <div class="panel-body">
                    <div class="media media-number">
                        <div class="media-left">
                            <span class="num">1</span>
                        </div>
                        <!--                         热门咨询 按浏览量排名 取前10-->
                        <div class="media-body">
                            <a class="link-dark" href="https://www.jikeyuan.cn/a/2.html" title="php中isset与empty函数的困惑与用法分析">php中isset与empty函数的困惑与用法分析</a>
                        </div>
                    </div>
                    <div class="media media-number">
                        <div class="media-left">
                            <span class="num">2</span>
                        </div>
                        <div class="media-body">
                            <a class="link-dark" href="https://www.jikeyuan.cn/a/5.html" title="tp5  Thinkphp阿里大鱼短信服务发送验证码">tp5  Thinkphp阿里大鱼短信服务发送验证码</a>
                        </div>
                    </div>
                    <div class="media media-number">
                        <div class="media-left">
                            <span class="num">3</span>
                        </div>
                        <div class="media-body">
                            <a class="link-dark" href="https://www.jikeyuan.cn/a/9.html" title="Thinkphp 验证码看不清更换一张 点击刷新">Thinkphp 验证码看不清更换一张 点击刷新</a>
                        </div>
                    </div>
                    <div class="media media-number">
                        <div class="media-left">
                            <span class="num">4</span>
                        </div>
                        <div class="media-body">
                            <a class="link-dark" href="https://www.jikeyuan.cn/a/15.html" title="docker-compose部署php项目">docker-compose部署php项目</a>
                        </div>
                    </div>
                    <div class="media media-number">
                        <div class="media-left">
                            <span class="num">5</span>
                        </div>
                        <div class="media-body">
                            <a class="link-dark" href="https://www.jikeyuan.cn/a/22.html" title="PHP中__set()方法详解">PHP中__set()方法详解</a>
                        </div>
                    </div>

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

                            <a href="https://www.jikeyuan.cn/t/docker.html" class="tag"> <span>${articletype.atype}</span></a>
                        </c:forEach>
                        <a href="https://www.jikeyuan.cn/t/%E8%85%BE%E8%AE%AF%E4%BA%91%E6%9C%8D%E5%8A%A1%E5%99%A8.html" class="tag"> <span>腾讯云服务器</span></a>
                        <a href="https://www.jikeyuan.cn/t/composer.html" class="tag"> <span>composer</span></a>

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
        <!-- S 合作伙伴 -->
        <div class="panel-heading">
            <h3 class="panel-title">
                合作伙伴
                <small>感谢以下的合作伙伴的大力支持</small>
                <a href="https://wpa.qq.com/msgrd?v=3&amp;uin=957597038&amp;site=&amp;menu=yes" target="_blank" class="more">联系我们</a>
            </h3>
        </div>
        <div class="panel-body">
            <ul class="list-unstyled list-partner">
                <li><a href="https://promotion.aliyun.com/ntms/yunparter/invite.html?userCode=8giwrppt" target="_blank"><img src="${pageContext.request.contextPath}/home/9160cb15553364d44300bb7394df48b6.png" alt=""></a><br></li><li><a href="https://cloud.tencent.com/act/cps/redirect?redirect=1044&amp;cps_key=0a97e47fbcf2f7190614f543494361a6&amp;from=console" target="_blank"><img src="${pageContext.request.contextPath}/home/b8332afb5f6bbe24042997c632dc61f1.png" alt="" width="" height="" title="" align=""></a><br></li><li><a href="https://www.layuicdn.com/?from=JiKeYuan" target="_blank"><img src="${pageContext.request.contextPath}/home/6a76ade95d91398cc4d99a14680c26b9.png" alt=""></a><br></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/baidu.png"></a></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/boc.png"></a></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/cctv.png"></a></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/didi.png"></a></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/iqiyi.png"></a></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/qq.png"></a></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/suning.png"></a></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/taobao.png"></a></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/tuniu.png"></a></li><li><a href="https://www.jikeyuan.cn/"><img src="${pageContext.request.contextPath}/home/weibo.png"></a></li>
            </ul>
        </div>
        <!-- E 合作伙伴 -->

        <!-- S 友情链接 -->
        <div class="panel-heading">
            <h3 class="panel-title">友情链接
                <small>申请友情链接请务必先做好本站链接</small>
                <a href="https://wpa.qq.com/msgrd?v=3&amp;uin=957597038&amp;site=&amp;menu=yes" target="_blank" class="more">申请友链</a></h3>
        </div>
        <div class="panel-body">
            <div class="list-unstyled list-links">
                <a href="https://www.jikeyuan.cn/" target="_blank">极客园</a> <a href="https://www.jikeyuan.cn/c/youhui.html" target="_blank">优惠服务器</a><span style="white-space:normal;">&nbsp;<a href="https://aliyunwang.cn/" target="_blank">阿狸云网</a>&nbsp;</span><a href="https://www.jikeyuan.cn/c/course.html" target="_blank">服务器教程</a>&nbsp;<a href="https://promotion.aliyun.com/ntms/yunparter/invite.html?userCode=8giwrppt" target="_blank">阿里云代金券</a>&nbsp;<a href="https://www.layuicdn.com/?from=JiKeYuan" target="_blank">LayuiCdn</a><span style="white-space:normal;"></span>
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
                <p style="text-align:center;">© 2017. All Rights Reserved.&nbsp;<a href="https://www.jikeyuan.cn/" target="_blank">Jikeyuan.cn</a>&nbsp; &nbsp;版权所有ICP证：&nbsp;<a class="ke-insertfile" href="http://www.beian.miit.gov.cn/" target="_blank" style="font-size:12px;font-family:PingFangSC, &quot;helvetica neue&quot;, &quot;hiragino sans gb&quot;, arial, &quot;microsoft yahei ui&quot;, &quot;microsoft yahei&quot;, simsun, sans-serif;">ICP备18038192号-2</a></p><div class="col-md-3 col-sm-3 col-md-push-1 col-sm-push-1"><div class="footer-social"></div></div>
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


    <a class="hover" href="gowriteregister" target="_blank">
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