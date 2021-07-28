package com.service;

import com.entity.Articlecomments;

import java.util.List;

public interface ArticlecommentsService {
    //发布评论
    public void addwritecomment(Articlecomments articlecomments);
    //得到用户评论
    public List<Articlecomments> getuserscomment(int aid);
    //得到所有评论
    public List<Articlecomments> getcommentstableinfo();
    //删除评论
    public void deleteonecomment(int acid);
    //得到评论条数
    public int getcommentscount();
}
