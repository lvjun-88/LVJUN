package com.service.impl;

import com.dao.ArticlecommentsDao;
import com.entity.Articlecomments;
import com.service.ArticlecommentsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ArticlecommentsServiceImpl implements ArticlecommentsService {
    @Resource
    private ArticlecommentsDao articlecommentsdao;

    public void setArticlecommentsdao(ArticlecommentsDao articlecommentsdao) {
        this.articlecommentsdao = articlecommentsdao;
    }

    @Override
    public void addwritecomment(Articlecomments articlecomments) {
        articlecommentsdao.addwritecomment(articlecomments);
    }

    @Override
    public List<Articlecomments> getuserscomment(int aid) {
        return articlecommentsdao.getuserscomment(aid);
    }

    @Override
    public List<Articlecomments> getcommentstableinfo() {
        return articlecommentsdao.getcommentstableinfo();
    }

    @Override
    public void deleteonecomment(int acid) {
        articlecommentsdao.deleteonecomment(acid);
    }

    @Override
    public int getcommentscount() {
        return articlecommentsdao.getcommentscount();
    }
}
