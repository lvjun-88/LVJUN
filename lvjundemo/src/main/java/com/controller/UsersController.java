package com.controller;


import com.entity.*;
import com.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UsersController {
    @Resource
    private WebService webservice;

    @Resource
    private UsersService usersservice;
    public void setUsersservice(UsersService usersservice) {
        this.usersservice = usersservice;
    }

    @Resource
    private ChatsService chatsservice;
    @Resource
    private ArticletypesService articletypesservice;
    @Resource
    private ArticlecommentsService articlecommentsservice;

    public void setArticlecommentsService(ArticlecommentsService articlecommentsservice) {
        this.articlecommentsservice = articlecommentsservice;
    }
    @Resource
    private ArticlesService articlesservice;

    public void setArticlesservice(ArticlesService articlesservice) {
        this.articlesservice = articlesservice;
    }


    @RequestMapping("/getUsersAll")
    public String getUsersAll(ModelMap datamap){
        List<Users> list = usersservice.getUsersAll();
        datamap.put("list",list);
        return "list";
    }

    @RequestMapping("/login1")
    public String login1(ModelMap datamap){
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        return "login";
    }
    @RequestMapping("/register")
    public String register(ModelMap datamap){
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        return "register";
    }


    //处理请求登陆
    @RequestMapping(value = "/login")
    public String login(Users users, HttpSession session, ModelMap map) {
        Users s = usersservice.checkLogin(users);
        Web web = webservice.getweball();//首页网站 信息
        map.put("web", web);

        if (s != null) {
            //登陆成功后把用户存入session中
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            String utime = df.format(new Date());
            Users u = new Users(s.getUid(),utime);
            usersservice.updateusertime(u);
            Users s1 = usersservice.checkLogin(users);
            session.setAttribute("users", s1);

            //                return "redirect:/getall";
            map.put("msg", "欢迎访问");
            return "redirect:/getindexonehome";
        }
        else  {
            if (users.getUname().equals("admin") && users.getUpass().equals(123456)) {
                System.out.println("+------------++++" + users.getUname() + "-----------" + users.getUpass());
//                return "redirect:/getadminall";
                return "home";

            } else {
                map.put("msg", "账号或密码错误！请重新登录");
                return "login";
            }

        }
    }
    @RequestMapping("/addUsersRegister")
    public String addUsersRegister(Users users,ModelMap map){
        Users s = usersservice.checkUname(users);
        Web web = webservice.getweball();//首页网站 信息
        map.put("web", web);
        if (s != null) {
            //登陆成功后把用户存入session中
            map.put("msg", "用户已经存在，请重新注册。。。");
            //                return "redirect:/getall";
            return "register";
        }else {
            System.out.println(users+"**********************users***************");

            usersservice.addUsersRegister(users);
            map.put("msg", "注册成功");
            return "login";
        }

    }



    @RequestMapping("/getmyuser")
    public String getmyuser(HttpSession session,ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            //        session.invalidate();//我的信息
            return "userindex";
        }

    }

    @RequestMapping("/getmyuserinfo")
    public String getmyuserinfo(HttpSession session,ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
//        session.invalidate();//个人信息
            return "myuserinfo";
        }

    }



    @RequestMapping("/updatemyuserinfo")
    public String updatemyuserinfo(Users usersinfo,HttpSession session,ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            Users uinfo = new Users(usersinfo.getUid(),usersinfo.getUname(),usersinfo.getUemail(),usersinfo.getUphoneid(),usersinfo.getUsignature(),usersinfo.getUicon(),usersinfo.getUwximag());
            usersservice.updatemyuserinfo(uinfo);

            String userupass = users.getUpass();//用户密码
            System.out.println(users.getUname()+"+++++users.getUname()++++++++++++++++++++userupass+++"+userupass);
            Users u1 = new Users(users.getUname(),userupass);
            Users s1 = usersservice.checkLogin(u1);
            session.setAttribute("users", s1);//跟换用户信息
            datamap.put("msg","修改成功");
            return "myuserinfo";
        }

    }


    @RequestMapping("/updatemypassweb")
    public String updatemypassweb(HttpSession session,ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            return "updatemypass";
        }

    }


    @RequestMapping("/updatemypass")
    public String updatemypass(String upass,HttpSession session,ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            String userupass = upass;//新密码

            Users u = new Users(users.getUid(),users.getUname(),userupass);
            usersservice.updatemypass(u);

            Users u1 = new Users(users.getUname(),userupass);
            Users s1 = usersservice.checkLogin(u1);
            session.setAttribute("users", s1);//跟换用户信息
            datamap.put("msg","密码修改成功");
            return "updatemypass";
        }

    }




    @RequestMapping("/getmycomments")
    public String getmycomments(HttpSession session,ModelMap datamap,String msg){
        Users users =(Users)session.getAttribute("users");
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            List<Users> userscomments =usersservice.getmycomments(users.getUid());
            datamap.put("list",userscomments);
            datamap.put("msg",msg);
            return "mycomments";


        }

    }

    @RequestMapping("/deletemycomments")
    public String deletemycomments(int acid,HttpSession session,ModelMap datamap){
        Users users =(Users)session.getAttribute("users");

        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            usersservice.deletemycomments(acid);
            datamap.put("msg","评论删除成功");
            return "redirect:/getmycomments";


        }

    }

    @RequestMapping("/getuserarticles")
    public String userarticles(HttpSession session,ModelMap datamap,String msg){
        Users users =(Users)session.getAttribute("users");
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
//            List<Articles> as = articlesservice.findmyuserarticles(users.getUid());
//            if (as==null){
//                return "redirect:/getArticesatype";
//            }else {
//                datamap.put("list1",as);
//        session.invalidate();//我发布的文章
                datamap.put("msg", msg);
                return "userarticles";
//            }

        }

    }

    //加载更多 getuserarticleslistjson
    @RequestMapping("/getuserarticleslistjson")
    @ResponseBody
    public Map<String, Object> getuserarticleslistjson(int page,int limit,HttpSession session){
        Map<String, Object> map = new HashMap();
        int start=(page-1)*limit;
        Users users =(Users)session.getAttribute("users");
        Articles as = new Articles(users.getUid(),start,limit);
        List<Articles> list1 = articlesservice.findmyuserarticles(as);
        int count = articlesservice.getuserarticlescount(users.getUid());
        int pages;
        int pagesyushu = count % limit;
        if(pagesyushu>0){
            pages=count/limit +1 ;
        }else{
            pages=count/limit ;
        }
        System.out.println(pagesyushu+"******pagesyushu***********************");
        System.out.println(pages+"******pages***********************");
        System.out.println(page+"******page***********************");
        System.out.println(count+"******count***********************");
        System.out.println(limit+"******limit***********************");
        map.put("code", "0");
        map.put("msg", "");
        map.put("data",list1);
        map.put("count",count);
        map.put("pages",pages);
        return map;
    }



    @RequestMapping("/deletearticleinfo")
    public String deletearticleinfo(int aid,HttpSession session,ModelMap datamap) {
        Users users = (Users) session.getAttribute("users");
        if (users == null) {
            //没有登录成功，跳转到登录页面
            return "login";
        } else {
            usersservice.deletearticleinfo(aid);

            datamap.put("msg","删除成功！");
            return "redirect:/getuserarticles";
        }
    }



    @RequestMapping("/gowriteregister")
    public String writeregister(HttpSession session,ModelMap datamap,String msg){
        Users users =(Users)session.getAttribute("users");
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            List<Articletypes> list = articletypesservice.getarticletypes();
            datamap.put("atype",list);
//        session.invalidate();//发布文章
            datamap.put("msg",msg);
            return "writeregister";
        }

    }
    //    --------文章详情信息---文章页面--------useraritcleinfo-----------------------------------------
    @RequestMapping("/userarticleinfo")
    private String userarticleinfo(int aid,HttpSession session,ModelMap datamap,String msg){
        Articles as = articlesservice.articleinfo(aid);//根据文章id得到文章所有信息
        List<Articlecomments> list4 = articlecommentsservice.getuserscomment(aid);//得到文章的评论信息
        datamap.put("article",as);
        datamap.put("list4",list4);
        int alooks = as.getAlooks() + 1;
        Articles A = new Articles(alooks,aid);
        articlesservice.updatearticlealooks(A);
        if(msg==null){
        }else {
            datamap.put("msg",msg);
        }
        return "userarticlesinfo";
    }

    //删除留言
    @RequestMapping("/goaddmychats")
    public String goaddmychats(HttpSession session, ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            return "addonechat";
        }
    }

    //获得留言
    @RequestMapping("/getmychats")
    public String getmychats(HttpSession session, ModelMap datamap,String msg){
        Users users =(Users)session.getAttribute("users");
        Web web = webservice.getweball();//首页网站 信息
        datamap.put("web", web);
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            int uid = users.getUid();
            List<Chats> cs = chatsservice.getmychats(uid);
            datamap.put("cs",cs);//留言信息
            datamap.put("msg",msg);
            return "mychats";
        }
    }
    //删除留言
    @RequestMapping("/deletemychats")
    public String deletemychats(int cid,HttpSession session, ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            chatsservice.deletemychats(cid);
            datamap.put("msg","删除成功！");
            return "redirect:/getmychats";
        }
    }


    //发送留言
    @RequestMapping("/addonechat")
    public String addonechat(Chats chats,HttpSession session, ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        if(users==null){
            //没有登录成功，跳转到登录页面
            return "login";
        }else {
            Users s = usersservice.checkuname(chats.getName());
            if(s==null){
                datamap.put("msg","用户不存在");
                return "addonechat";
            }
            int jsid = s.getUid();
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            String utime = df.format(new Date());
            Chats cs = new Chats(chats.getFsid(),chats.getFsinfo(),utime,jsid);
            chatsservice.addchatsoneinfo(cs);
            datamap.put("msg","留言成功");
            return "addonechat";
        }

    }


    @RequestMapping("/exit")
    public String exit(HttpSession session){
        session.invalidate();//注销
        return "redirect:/getindexonehome";
    }


}
