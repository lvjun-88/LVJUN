package com.controller;

import com.entity.*;
import com.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ArticlesController {
    @Resource
    private WebService webservice;
    @Resource
    private ArticletypesService articletypesservice;
    @Resource
    private UsersService usersservice;
    @Resource
    private ArticlesService articlesservice;

    public void setAritclesService(ArticlesService aritclesservice) {
        this.articlesservice = aritclesservice;
    }

    @Resource
    private ArticlecommentsService articlecommentsservice;

    public void setArticlecommentsService(ArticlecommentsService articlecommentsservice) {
        this.articlecommentsservice = articlecommentsservice;
    }





    //导航条 首页
    @RequestMapping("/getindexonehome")
    public String getindexonehome(HttpSession session,ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        List<Articletypes> alist =articletypesservice.getarticletypes();
        datamap.put("listtype",alist);
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web",web);

        if(users==null){
            //未登录的首页面

            datamap.put("no"," ");
            datamap.put("yes","layui-hide");
            return "indexonehome";
        }else {
            //登录后的首页面
            datamap.put("no","layui-hide");
            datamap.put("yes"," ");
            return "indexonehome";
        }

    }

    //方法 得到所有的文章信息 list
    @RequestMapping("/getArticlesAll")
    public String getArticlesAll(ModelMap datamap){
        List<Articles> list = articlesservice.getArticlesAll();
        for(int i=0;i<list.size();i++){
            System.out.println(list.get(i)+"*************000**********00********************");
        }
        datamap.put("list",list);
        return "home";
    }

    //加载更多 getarticleslistjson
    @RequestMapping("/getarticleslistjson")
    @ResponseBody
    public Map<String, Object> getarticleslistjson(int page,int limit){
        Map<String, Object> map = new HashMap();
        int start=(page-1)*limit;
        Articles as = new Articles(start,limit);
        List<Articles> list1 = articlesservice.getarticleslistjson(as);
        int count = articlesservice.getarticlescount();
        int pages;
        int pagesyushu = count % limit;
        if(pagesyushu>0){
            pages=count/limit +1 ;
        }else{
            pages=count/limit ;
        }
        map.put("code", "0");
        map.put("msg", "");
        map.put("data",list1);
        map.put("count",count);
        map.put("pages",pages);
        return map;
    }



//    --------------得到首页所有信息 返回到home页面----------------home---------------------
    @RequestMapping("/getArticesatype")
    public String getArticesatype(HttpSession session,ModelMap datamap){

        List<Articles> list1 = articlesservice.getArticesatype();//查询文章信息和文章对应的类型
        List<Articles> list2 = articlesservice.getArticlestimedesc();//查询最近更新的文章
        List<Articletypes> list3 =articlesservice.getArticletypesAll();//查询文章信息

        datamap.put("list1",list1);
        datamap.put("list2",list2);
        datamap.put("list3",list3);
        List<Articles> listalookes = articlesservice.getalooksarticles();
        datamap.put("listalookes",listalookes);
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web",web);
        //取出会话数据
        Users users =(Users)session.getAttribute("users");
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "home";
        }else{
            datamap.put("msg","欢迎访问！");
            return "home";
        }

    }

//    --------文章详情信息---文章页面--------aritcleinfo-----------------------------------------
    @RequestMapping("/articleinfo")
    private String articleinfo(int aid,HttpSession session,ModelMap datamap,String msg){
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        Articles as = articlesservice.articleinfo(aid);//根据文章id得到文章所有信息
        List<Articles> list2 = articlesservice.getArticlestimedesc();//最新更新
        List<Articletypes> list3 =articlesservice.getArticletypesAll();//热门标签
        List<Articlecomments> list4 = articlecommentsservice.getuserscomment(aid);//得到文章的评论信息
        Users U = usersservice.getArticleuserinfo(aid);//得到文章作者
        datamap.put("U",U);
        datamap.put("article",as);
        datamap.put("list2",list2);
        datamap.put("list3",list3);
        datamap.put("list4",list4);
        //增加浏览次数 根据aid


        int alooks = as.getAlooks() + 1;
        Articles A = new Articles(alooks,aid);
        articlesservice.updatearticlealooks(A);

        Articles nextas = articlesservice.getnextarticles(aid-1);

        if(nextas == null){
            datamap.put("nextasgetAname","这是第一篇了");
            datamap.put("nextasgetAid","");
        }else {
            datamap.put("nextasgetAname",nextas.getAname());
            datamap.put("nextasgetAid","/articleinfo?aid="+nextas.getAid()+"");
        }
        List<Articles> listfour = articlesservice.getnextfourarticles(aid+1);
        if(listfour == null){
            datamap.put("listfour","");
        }else {
            datamap.put("listfour",listfour);
        }
        List<Articles> listalookes = articlesservice.getalooksarticles();
        datamap.put("listalookes",listalookes);
        if(msg==null){
        }else {
            datamap.put("msg",msg);
        }
        return "articleinfoindex";
    }


//    publisharticle  发布文章
    @RequestMapping("/addpublisharticle")
    public String addpublisharticle(Articles articles,HttpSession session,ModelMap datamap){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式

//        String aname = articles.getAname();//文章名称
//        String ainfo = articles.getAinfo();//文章简介
//        String article = articles.getArticle();//文章内容
        String atime = df.format(new Date());//发布时间
//        int atid = articles.getAtid();//文章类型
//        int uid = articles.getUid();//作者id

        String aimg = articles.getAimg();
        if(aimg.equals("")){
            aimg = "aimg.png";
        }

        Articles as1 = new Articles(aimg,articles.getAname(),articles.getAinfo(),articles.getArticle(),atime,articles.getAtid(),articles.getUid());
//        Articles as = new Articles(aname,ainfo,article,atime,atid,uid);
        articlesservice.addpublisharticle(as1);
        datamap.put("msg","发布成功！去首页查看");
        return "redirect:/gowriteregister";

    }

    //方法 搜索
    @RequestMapping("/homesearch")
    public String homesearch(String search,HttpSession session,ModelMap datamap){
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
//        getarticletypesinfo
        datamap.put("search",search);

//        List<Articles> articles = articlesservice.getarticlesearch("%"+search+"%");
        int count = articlesservice.getgetarticlesearchcount("%"+search+"%");
        List<Articles> list2 = articlesservice.getArticlestimedesc();//查询最近更新的文章
        List<Articletypes> list3 =articlesservice.getArticletypesAll();//查询文章信息
        datamap.put("count",count);
        datamap.put("list2",list2);
        datamap.put("list3",list3);
        //取出会话数据
        List<Articles> listalookes = articlesservice.getalooksarticles();
        datamap.put("listalookes",listalookes);
        Users users =(Users)session.getAttribute("users");
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "homesearch";
        }else{
            datamap.put("msg","欢迎访问！");
            return "homesearch";
        }

    }
    //加载更多 getarticlesearchlistjson
    @RequestMapping("/getarticlesearchlistjson")
    @ResponseBody
    public Map<String, Object> getarticlesearchlistjson(String search,int page) {
        int limit = 5;
        Map<String, Object> map = new HashMap();
        int start = (page - 1) * limit;
        Articles as = new Articles("%"+search+"%", start, limit);
        List<Articles> list1 = articlesservice.getarticlesearchlistjson(as);
        int count = articlesservice.getgetarticlesearchcount("%"+search+"%");
        int pages;
        int pagesyushu = count % limit;
        if (pagesyushu > 0) {
            pages = count / limit + 1;
        } else {
            pages = count / limit;
        }
        map.put("code", "0");
        map.put("msg", "");
        map.put("data", list1);
        map.put("count", count);
        map.put("pages", pages);
        return map;

    }


    //加载更多 getarticletyptslistjson
    @RequestMapping("/getarticletyptslistjson")
    @ResponseBody
    public Map<String, Object> getarticletypesinfojson(int atid,int page){
        int limit = 5;
        Map<String, Object> map = new HashMap();
        int start=(page-1)*limit;
        Articles as = new Articles(atid,start,limit);
        List<Articles> list1 = articlesservice.getarticletypesinfojson(as);
        int count = articlesservice.getarticletypesinfocount(atid);
        int pages;
        int pagesyushu = count % limit;
        if(pagesyushu>0){
            pages=count/limit +1 ;
        }else{
            pages=count/limit ;
        }
        System.out.println(atid+"----atid------"+page+"--page---"+limit+"----limit---"+count+"-----count----------");
        map.put("code", "0");
        map.put("msg", "");
        map.put("data",list1);
        map.put("count",count);
        map.put("pages",pages);
        return map;
    }

    @RequestMapping("/getarticletypesinfo")
    public String getarticletypesinfo(int atid,HttpSession session,ModelMap datamap){

        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
//        getarticletypesinfo
        datamap.put("atid",atid);
        System.out.println(atid+"---------------------------atid--------------------");
        Articletypes a = articletypesservice.getarticletypesinfo(atid);
        List<Articles> list2 = articlesservice.getArticlestimedesc();//查询最近更新的文章
        List<Articletypes> list3 =articlesservice.getArticletypesAll();//查询文章信息
        datamap.put("atype",a);
        datamap.put("list2",list2);
        datamap.put("list3",list3);
        //取出会话数据
        List<Articles> listalookes = articlesservice.getalooksarticles();
        datamap.put("listalookes",listalookes);
        Users users =(Users)session.getAttribute("users");
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "hometype";
        }else{
            datamap.put("msg","欢迎访问！");
            return "hometype";
        }

    }

    @RequestMapping("/getuseroneinfo")
    public String getuseroneinfo(int uid,ModelMap datamap){
        System.out.println(uid+"uid---------------------------------------------------+++++++++");
        Users u = usersservice.getuseroneinfo(uid);
        datamap.put("u",u);
        return "useroneinfo";
    }


}

