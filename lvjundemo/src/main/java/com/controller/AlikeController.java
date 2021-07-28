package com.controller;


import com.entity.*;
import com.service.AlikesService;
import com.service.ArticlecommentsService;
import com.service.ArticlesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class AlikeController {
    @Resource
    private ArticlecommentsService articlecommentsservice;

    public void setArticlecommentsservice(ArticlecommentsService articlecommentsservice) {
        this.articlecommentsservice = articlecommentsservice;
    }
    @Resource
    private ArticlesService articlesservice;

    public void setAritclesService(ArticlesService aritclesservice) {
        this.articlesservice = aritclesservice;
    }



    @Resource
    private AlikesService alikesservice;

    @RequestMapping("/addalikes")
    public String addalikes(Alikes alikes, HttpSession session, ModelMap datamap){
        Users users =(Users)session.getAttribute("users");
        int aid = alikes.getAlikeaid();
        if(users==null){
            //没有登录成功，跳转到登录页面
            datamap.put("msg","请先登录");
            return "redirect:/articleinfo?aid="+aid;
        }else {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            String aliketime = df.format(new Date());
            int uid = users.getUid();
            Articles as = articlesservice.articleinfo(aid);//根据文章id得到文章所有信息
            List<Articles> list2 = articlesservice.getArticlestimedesc();//最新更新
            List<Articletypes> list3 =articlesservice.getArticletypesAll();//热门标签
            List<Articlecomments> list4 = articlecommentsservice.getuserscomment(aid);//得到文章的评论信息
            datamap.put("article",as);
            datamap.put("list2",list2);
            datamap.put("list3",list3);
            datamap.put("list4",list4);




            Alikes alike1 = new Alikes(aid,uid);
            Alikes s = alikesservice.checkalikes(alike1);
            if(s != null){
                datamap.put("msg","你已经点赞了");
                return "redirect:/articleinfo?aid="+aid;
            }else {


                int alike = alikesservice.getalikes(aid) + 1;
                Articles A = new Articles(alike,aid);
                articlesservice.updatearticlealike(A);

                Alikes alike2 = new Alikes(aid,uid,aliketime);
                alikesservice.addalikes(alike2);
                datamap.put("msg","点赞成功");
                return "redirect:/articleinfo?aid="+aid;
            }





        }

    }


}
