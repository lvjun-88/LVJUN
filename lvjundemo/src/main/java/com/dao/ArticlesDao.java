package com.dao;

import com.entity.Articles;
import com.entity.Articletypes;
import com.entity.Users;


import java.util.List;

public interface ArticlesDao {

    //查询文章信息
    public List<Articles> getArticlesAll();
    //查询最近更新的文章
    public List<Articles> getArticlestimedesc();
    //查询文章信息和文章对应的类型
    public List<Articles> getArticesatype();

    //发布文章
    public void addpublisharticle(Articles articles);

    //根据文章id获取文章信息
//    public Articles articletinfo(int aid);
    public Articles articleinfo(int aid);

    //查询我的文章 流加载
    public List<Articles> findmyuserarticles(Articles articles);
    //articlescount
    public int getuserarticlescount(int uid);
    //查询所有的标签
    public List<Articletypes> getArticletypesAll();

    //根据aid增加浏览次数
    public void updatearticlealooks(Articles articles);

    //得到文章评论次数
    public int getarticlecommentscount(int aid);
    //增加评论次数
    public void updatearticlecommentscount(Articles articles);
    //增加点赞
    public void updatearticlealike(Articles articles);

    //文章首页流加载
    public List<Articles> getarticleslistjson(Articles articles);
    //articlescount
    public int getarticlescount();

    //getarticletypesinfo 得到某一文章类型的所有文章
    public List<Articles> getarticletypesinfo(int atid);
    //getarticletypesinfojson 流加载
    public List<Articles> getarticletypesinfojson(Articles articles);
    public int getarticletypesinfocount(int atid);

    //下一篇
    public Articles getnextarticles(int aid);
    //获得下四篇
    public List<Articles> getnextfourarticles(int aid);
    //按浏览次数排行
    public List<Articles> getalooksarticles();


    //管理员得到文章信息
    public List<Articles> getarticlestableinfo();
    //删除文章
    public void deleteonearticle(int aid);
    //根据aid得到文章信息
    public Articles getonearticleinfo(int aid);
    //修改文章信息
    public void updateonearticle(Articles articles);
    //得到文章个数
    public int getarticlecounts();

    //搜索
    public List<Articles> getarticlesearch(String search);
    //得到搜索的个数
    public int getgetarticlesearchcount(String search);
    //搜索json流加载
    public List<Articles> getarticlesearchlistjson(Articles articles);
}
