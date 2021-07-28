package com.entity;


import java.io.Serializable;


public class Articles implements Serializable {
    private int aid;//文章编号
    private String aimg;//文章图片
    private String aname;//文章标题
    private String ainfo;//文章简介
    private String article;//文章内容
    private String atime;//发布时间
    private int atid;//类型编号
    private int uid;//文章作者
    private int alike;//点赞次数
    private int alooks;//浏览次数
    private int acommentcounts;//评论次数
    //一篇文章对应一个类型 多对一的关系
    private Articletypes articletypes;

    public Articles(int uid, int page, int limit) {
        this.uid = uid;
        this.page = page;
        this.limit = limit;
    }

    //首页流加载
    private int page;
    private int limit;

    private String search;


    public Articles(String search,int page, int limit) {
        this.search = search;
        this.page = page;
        this.limit = limit;

    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public Articles(int page, int limit) {
        this.page = page;
        this.limit = limit;
    }


    public int getAlooks() {
        return alooks;
    }

    public void setAlooks(int alooks) {
        this.alooks = alooks;
    }

    public int getAcommentcounts() {
        return acommentcounts;
    }

    public void setAcommentcounts(int acommentcounts) {
        this.acommentcounts = acommentcounts;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public Articles(String aname, String ainfo, String article, String atime, int atid, int uid) {
        this.aname = aname;
        this.ainfo = ainfo;
        this.article = article;
        this.atime = atime;
        this.atid = atid;
        this.uid = uid;
    }

    public Articles(String aimg, String aname, String ainfo, String article, String atime, int atid, int uid) {
        this.aimg = aimg;
        this.aname = aname;
        this.ainfo = ainfo;
        this.article = article;
        this.atime = atime;
        this.atid = atid;
        this.uid = uid;
    }

    public Articletypes getArticletypes() {
        return articletypes;
    }

    public void setArticletypes(Articletypes articletypes) {
        this.articletypes = articletypes;
    }

    public int getAlike() {
        return alike;
    }

    public void setAlike(int alike) {
        this.alike = alike;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAimg() {
        return aimg;
    }

    public void setAimg(String aimg) {
        this.aimg = aimg;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAinfo() {
        return ainfo;
    }

    public void setAinfo(String ainfo) {
        this.ainfo = ainfo;
    }

    public String getArticle() {
        return article;
    }

    public void setArticle(String article) {
        this.article = article;
    }

    public String getAtime() {
        return atime;
    }

    public void setAtime(String atime) {
        this.atime = atime;
    }

    public int getAtid() {
        return atid;
    }

    public void setAtid(int atid) {
        this.atid = atid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }


    @Override
    public String toString() {
        return "Articles{" +
                "aid=" + aid +
                ", aimg='" + aimg + '\'' +
                ", aname='" + aname + '\'' +
                ", ainfo='" + ainfo + '\'' +
                ", article='" + article + '\'' +
                ", atime='" + atime + '\'' +
                ", atid=" + atid +
                ", uid=" + uid +
                ", alike=" + alike +
                ", articletypes=" + articletypes +
                '}';
    }

    public Articles(int aid, String aimg, String aname, String ainfo, String article, String atime, int atid, int uid, int alike, Articletypes articletypes) {
        this.aid = aid;
        this.aimg = aimg;
        this.aname = aname;
        this.ainfo = ainfo;
        this.article = article;
        this.atime = atime;
        this.atid = atid;
        this.uid = uid;
        this.alike = alike;
        this.articletypes = articletypes;
    }

    public Articles(int aid, String aimg, String aname, String ainfo, String article, String atime,int alike, int atid, int uid, int alooks,int acommentcounts) {
        this.aid = aid;
        this.aimg = aimg;
        this.aname = aname;
        this.ainfo = ainfo;
        this.article = article;
        this.atime = atime;
        this.alike = alike;
        this.atid = atid;
        this.uid = uid;
        this.alooks = alooks;
        this.acommentcounts = acommentcounts;
    }
    public Articles(int aid, String aimg, String aname, String ainfo, String article, String atime, int atid, int uid, int alike, int alooks, int acommentcounts, Articletypes articletypes, int page, int limit) {
        this.aid = aid;
        this.aimg = aimg;
        this.aname = aname;
        this.ainfo = ainfo;
        this.article = article;
        this.atime = atime;
        this.atid = atid;
        this.uid = uid;
        this.alike = alike;
        this.alooks = alooks;
        this.acommentcounts = acommentcounts;
        this.articletypes = articletypes;
        this.page = page;
        this.limit = limit;
    }

    public Articles() {
    }

    private String atype;
    private String uname;

    public Articles(int aid, String aimg, String aname, String ainfo, String article, String atime,String atype, String uname, int alike, int alooks, int acommentcounts) {
        this.aid = aid;
        this.aimg = aimg;
        this.aname = aname;
        this.ainfo = ainfo;
        this.article = article;
        this.atime = atime;
        this.atype = atype;
        this.uname = uname;
        this.alike = alike;
        this.alooks = alooks;
        this.acommentcounts = acommentcounts;

    }


    public Articles(int aid, String aimg, String aname, String ainfo, String article, String atime,int atid,String atype,int uid, String uname, int alike, int alooks, int acommentcounts) {
        this.aid = aid;
        this.aimg = aimg;
        this.aname = aname;
        this.ainfo = ainfo;
        this.article = article;
        this.atime = atime;
        this.atid = atid;
        this.atype = atype;
        this.uid = uid;
        this.uname = uname;
        this.alike = alike;
        this.alooks = alooks;
        this.acommentcounts = acommentcounts;

    }
    public String getAtype() {
        return atype;
    }

    public void setAtype(String atype) {
        this.atype = atype;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }
}
