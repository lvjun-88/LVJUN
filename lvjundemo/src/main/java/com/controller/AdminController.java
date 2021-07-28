package com.controller;


import com.entity.*;
import com.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class AdminController {
    @Resource
    private WebService webservice;
    @Resource
    private ArticletypesService articletypesservice;
    @Resource
    private UsersService usersservice;
    @Resource
    private ArticlesService articlesservice;
    @Resource
    private ArticlecommentsService articlecommentsservice;
    @Resource
    private AdminuserService adminuserservice;


    //登陆成功主页
    @RequestMapping("/admin")
    public String admin(HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "请先登陆！！");
            return "admin/login";
        }else {
            return "admin/admin";
        }
    }



    //登陆管理员
    @RequestMapping(value = "/checkLoginadmin")
    public String checkLoginadmin(Adminuser adminuser, HttpSession session, ModelMap datamap){

        Adminuser adminuserinfo = adminuserservice.checkLoginadmin(adminuser);
        if(adminuserinfo != null){
            session.setAttribute("adminuserinfo", adminuserinfo);
//            datamap.put("msg", "登陆成功！");
            return "redirect:/admin";
        }else {
            datamap.put("msg", "账号或用户名不对请重新登陆！！");
            return "admin/login";
        }

    }

    //得到管理员用户基本信息
    @RequestMapping("/getadminuserinfo")
    public String getsessionuserinfo(HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "请先登陆！！");
            return "admin/login";
        }else {

            return "admin/adminuserinfo";
        }
    }
    //更改用户信息
    @RequestMapping("/updateadminuserinfo")
    public String updateadminuserinfo(Adminuser adminuser,HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "请先登陆！！");
            return "admin/login";
        }else {

            int id = adminuserinfo.getAdminid();
            String name = adminuser.getAdminname();
            String pass = adminuser.getAdminpassword();
            String phone = adminuser.getAdminphone();
            String email = adminuser.getAdminemail();
            String info = adminuser.getAdmininfo();
            Adminuser user = new Adminuser(id,name,pass,phone,email,info);
            adminuserservice.updateadminuserinfo(user);
            session.invalidate();//注销
            datamap.put("msg", "修改成功 请重新登陆！！");
            return "admin/login";
        }
    }




    //后台首页信息
    @RequestMapping("/welcome")
    public String welcome(HttpSession session,ModelMap datamap){

        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            int articlecounts = articlesservice.getarticlecounts();
            int articletypecounts = articletypesservice.getarticletypecounts();
            int userscount = usersservice.getuserscount();
            int commentscount = articlecommentsservice.getcommentscount();
            datamap.put("articlecounts", articlecounts);
            datamap.put("articletypecounts", articletypecounts);
            datamap.put("userscount", userscount);
            datamap.put("commentscount", commentscount);
            return "admin/welcome";
        }
    }

    //首页web信息管理 得到getwebinfo
    @RequestMapping("/getwebinfo")
    public String getwebinfo(HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            Web web = webservice.getweball();//首页网站 信息
            datamap.put("web", web);
            datamap.put("msg", "查询成功！！");
            return "admin/webinfo";
        }
    }
    //更改web信息 updatewebinfo
    @RequestMapping("/updatewebinfo")
    public String updatewebinfo(Web web,HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            Web wb = new Web(web.getWebid(),web.getWebname(),web.getLogo(),web.getWebimage1(),web.getWebimagename1(),web.getWebimageurl1(),web.getWebimage2(),web.getWebimagename2(),web.getWebimageurl2(),web.getWebimage3(),web.getWebimagename3(),web.getWebimageurl3(),web.getWebtwo(),web.getWebbeian());
            webservice.updatewebinfo(wb);
            return "redirect:/getwebinfo";
        }
    }


    //得到文章表格页面
    @RequestMapping("/getarticlestableinfo")
    public String getarticlestableinfo(HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            datamap.put("msg", "成功！！");
            return "admin/articlestableinfo";

        }
    }

    //    //返回产品信息json数据到前端
    @RequestMapping("/getarticlestableinfojson")
    @ResponseBody
    public Map<String, Object> getarticlestableinfojson(HttpSession session, ModelMap datamap){
        Map<String, Object> map = new HashMap();

        List<Articles> articleslist = articlesservice.getarticlestableinfo();
        map.put("code", "0");
//                map.put("msg", "");
//                map.put("count",100);
        map.put("data",articleslist);
        return map;

    }

    //删除一个文章信息
    @ResponseBody
    @RequestMapping("deleteonearticle")
    public Map deleteoneproduct(int aid,HttpSession session,ModelMap datamap, HttpServletRequest request) {
        Adminuser adminuserinfo = (Adminuser) session.getAttribute("adminuserinfo");
        if (adminuserinfo == null) {
            datamap.put("msg", "亲先登陆！！");
            return datamap;
        } else {

            articlesservice.deleteonearticle(aid);
            Map<String, Object> map = new HashMap();
            List<Articles> articleslist = articlesservice.getarticlestableinfo();
            map.put("code", "0");
            //                map.put("msg", "");
            //                map.put("count",100);
            map.put("data", articleslist);
            return map;
        }
    }

    //修改一个文章信息
    @RequestMapping("/updateonearticlejsp")
    public String updateonearticlejsp(int aid,HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            Articles articles = articlesservice.getonearticleinfo(aid);
            List<Articletypes> atypeslist = articletypesservice.getarticletypes();

            datamap.put("articles",articles);
            datamap.put("atypeslist", atypeslist);
            return "admin/updateonearticleinfo";

        }
    }
    //修改完成
    @RequestMapping("/updateonearticle")
    public String updateonearticle(Articles articles,HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            String utime = df.format(new Date());
            Articles as = new Articles(articles.getAid(),articles.getAimg(),articles.getAname(),articles.getAinfo(),articles.getArticle(),utime,articles.getAlike(),articles.getAtid(),articles.getUid(),articles.getAlooks(),articles.getAcommentcounts());
            articlesservice.updateonearticle(as);
//            productsservice.updateoneproduct(product);
//            System.out.println(product+"************");
            return "redirect:/getarticlestableinfo";
        }
    }


    //得到用户表格页面
    @RequestMapping("/getuserstableinfo")
    public String getuserstableinfo(HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            datamap.put("msg", "成功！！");
            return "admin/userstableinfo";

        }
    }

    //    //返回用户信息json数据到前端
    @RequestMapping("/getuserstableinfojson")
    @ResponseBody
    public Map<String, Object> getuserstableinfojson(HttpSession session, ModelMap datamap){
        Map<String, Object> map = new HashMap();

        List<Users> userslist = usersservice.getuserstableinfo();
        map.put("code", "0");
//                map.put("msg", "");
//                map.put("count",100);
        map.put("data",userslist);
        return map;

    }


    //删除一个用户信息
    @ResponseBody
    @RequestMapping("deleteoneuser")
    public Map deleteoneuser(int uid,HttpSession session,ModelMap datamap, HttpServletRequest request) {
        Adminuser adminuserinfo = (Adminuser) session.getAttribute("adminuserinfo");
        if (adminuserinfo == null) {
            datamap.put("msg", "亲先登陆！！");
            return datamap;
        } else {

            usersservice.deleteoneuser(uid);
            Map<String, Object> map = new HashMap();
            List<Users> userslist = usersservice.getuserstableinfo();
            map.put("code", "0");
            //                map.put("msg", "");
            //                map.put("count",100);
            map.put("data", userslist);
            return map;
        }
    }

    //修改一个用户信息
    @RequestMapping("/updateoneuserjsp")
    public String updateoneuserjsp(int uid,HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            Users users = usersservice.getonearticleinfo(uid);
            datamap.put("users",users);
            return "admin/updateoneuserinfo";

        }
    }
    //修改完成
    @RequestMapping("/updateoneuser")
    public String updateoneuser(Users users,HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            Users user = new Users(users.getUid(),users.getUicon(),users.getUname(),users.getUpass(),users.getUsignature(),users.getUemail(),users.getUphoneid(),users.getUwximag());
//            Articles as = new Articles(articles.getAid(),articles.getAimg(),articles.getAname(),articles.getAinfo(),articles.getArticle(),utime,articles.getAlike(),articles.getAtid(),articles.getUid(),articles.getAlooks(),articles.getAcommentcounts());
            usersservice.updateoneuser(user);
//            productsservice.updateoneproduct(product);
//            System.out.println(product+"************");
            return "redirect:/getuserstableinfo";
        }
    }

    //得到评论表格页面
    @RequestMapping("/getcommentstableinfo")
    public String getcommentstableinfo(HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            datamap.put("msg", "成功！！");
            return "admin/commentstableinfo";

        }
    }

    //    //返回评论信息json数据到前端
    @RequestMapping("/getcommentstableinfojson")
    @ResponseBody
    public Map<String, Object> getcommentstableinfojson(HttpSession session, ModelMap datamap){
        Map<String, Object> map = new HashMap();

        List<Articlecomments> acommentslist = articlecommentsservice.getcommentstableinfo();
        map.put("code", "0");
//                map.put("msg", "");
//                map.put("count",100);
        map.put("data",acommentslist);
        return map;

    }


    //删除一个评论信息
    @ResponseBody
    @RequestMapping("deleteonecomment")
    public Map deleteonecomment(int acid,HttpSession session,ModelMap datamap, HttpServletRequest request) {
        Adminuser adminuserinfo = (Adminuser) session.getAttribute("adminuserinfo");
        if (adminuserinfo == null) {
            datamap.put("msg", "亲先登陆！！");
            return datamap;
        } else {
            articlecommentsservice.deleteonecomment(acid);
            Map<String, Object> map = new HashMap();
            List<Articlecomments> acommentslist = articlecommentsservice.getcommentstableinfo();
            map.put("code", "0");
            //                map.put("msg", "");
            //                map.put("count",100);
            map.put("data", acommentslist);
            return map;
        }
    }


    //得到文章类型表格页面
    @RequestMapping("/getarticletypestableinfo")
    public String getarticletypestableinfo(HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            datamap.put("msg", "成功！！");
            return "admin/articletypestableinfo";

        }
    }

    //    //返回评论信息json数据到前端
    @RequestMapping("/getarticletypestableinfojson")
    @ResponseBody
    public Map<String, Object> getarticletypestableinfojson(HttpSession session, ModelMap datamap){
        Map<String, Object> map = new HashMap();

        List<Articletypes> atypeslist = articletypesservice.getarticletypestableinfo();
        map.put("code", "0");
//                map.put("msg", "");
//                map.put("count",100);
        map.put("data",atypeslist);
        return map;

    }

    @RequestMapping("/addarticletypeinfo")
    public String addarticletypeinfo(Articletypes articletypes,HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            Articletypes at = new Articletypes(articletypes.getAtype());
            articletypesservice.addonearticletypeinfo(at);

            return "admin/articletypestableinfo";

        }
    }



    //删除一个类型信息
    @ResponseBody
    @RequestMapping("deleteonearticletype")
    public Map deleteonearticletype(int atid,HttpSession session,ModelMap datamap, HttpServletRequest request) {
        Adminuser adminuserinfo = (Adminuser) session.getAttribute("adminuserinfo");
        if (adminuserinfo == null) {
            datamap.put("msg", "亲先登陆！！");
            return datamap;
        } else {
            articletypesservice.deleteonearticletype(atid);
            Map<String, Object> map = new HashMap();
            List<Articletypes> atypeslist = articletypesservice.getarticletypestableinfo();
            map.put("code", "0");
            //                map.put("msg", "");
            //                map.put("count",100);
            map.put("data", atypeslist);
            return map;
        }
    }


    //修改一个用户信息
    @RequestMapping("/updateonearticletypejsp")
    public String updateonearticletypejsp(int atid,HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            Articletypes articletypes = articletypesservice.updateonearticletypejsp(atid);
            datamap.put("articletypes",articletypes);
            return "admin/updateonearticletypeinfo";

        }
    }
    //修改完成
    @RequestMapping("/updatearticletypeinfo")
    public String updatearticletypeinfo(Articletypes articletypes,HttpSession session,ModelMap datamap){
        Adminuser adminuserinfo =(Adminuser)session.getAttribute("adminuserinfo");
        if(adminuserinfo==null){
            datamap.put("msg", "亲先登陆！！");
            return "admin/login";
        }else {
            Articletypes aonetype = new Articletypes(articletypes.getAtid(),articletypes.getAtype());
            articletypesservice.updatearticletypeinfo(aonetype);
            return "redirect:/getarticletypestableinfo";
        }
    }



    //退出系统
    @RequestMapping("/adminexit")
    public String exit(HttpSession session,ModelMap datamap){
        session.invalidate();//注销
        datamap.put("msg", "注销成功！！");
        return "admin/login";
    }


}
