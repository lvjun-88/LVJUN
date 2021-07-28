package com.controller;

import com.entity.Articlecomments;
import com.entity.Articles;
import com.entity.Articletypes;
import com.entity.Users;
import com.service.ArticlecommentsService;
import com.service.ArticlesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class ArticlecommentsController {
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

    @RequestMapping("/addwritecomment")
    public String addwritecomment(Articlecomments articlecomments, HttpSession session, ModelMap datamap,int toke){
        Users users =(Users)session.getAttribute("users");
        int aid = articlecomments.getAid();
        if(users==null){
            //没有登录成功，跳转到登录页面
            datamap.put("msg","请先登录");
            return "redirect:/articleinfo?aid="+aid;
        }else {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            String actime = df.format(new Date());
            int uid = users.getUid();
            String comment = articlecomments.getComment();
            
            Articles as = articlesservice.articleinfo(aid);//根据文章id得到文章所有信息
            List<Articles> list2 = articlesservice.getArticlestimedesc();//最新更新
            List<Articletypes> list3 =articlesservice.getArticletypesAll();//热门标签
            List<Articlecomments> list4 = articlecommentsservice.getuserscomment(aid);//得到文章的评论信息
            datamap.put("article",as);
            datamap.put("list2",list2);
            datamap.put("list3",list3);
            datamap.put("list4",list4);
            if(comment.equals("")){
                datamap.put("msg","评论不能为空！");
                if(toke == 222222){
                    return "redirect:/userarticleinfo?aid="+aid;
                }else{
                    return "redirect:/articleinfo?aid="+aid;
                }

            }else {
                int acommentcounts = articlesservice.getarticlecommentscount(aid) + 1;
                Articles A = new Articles(acommentcounts,aid);
                articlesservice.updatearticlecommentscount(A);

                Articlecomments ac = new Articlecomments(uid, aid, comment, actime);
                System.out.println(ac);
                articlecommentsservice.addwritecomment(ac);
                datamap.put("msg","评论成功！");



                if(toke == 222222){
                    return "redirect:/userarticleinfo?aid="+aid;
                }else{
                    return "redirect:/articleinfo?aid="+aid;
                }
            }
//            return "redirect:/articleinfo?aid="+aid;

        }

    }



}
