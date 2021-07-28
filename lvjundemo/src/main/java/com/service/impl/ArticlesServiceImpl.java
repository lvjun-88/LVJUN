package com.service.impl;

import com.dao.ArticlesDao;
import com.entity.Articles;
import com.entity.Articletypes;
import com.service.ArticlesService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ArticlesServiceImpl implements ArticlesService {
    @Resource
    private ArticlesDao articlesdao;

    public void setArticlesdao(ArticlesDao articlesdao) {
        this.articlesdao = articlesdao;
    }

    @Override
    public List<Articles> getArticlesAll() {

        return articlesdao.getArticlesAll();
    }

    @Override
    public List<Articles> getArticesatype() {
        return articlesdao.getArticesatype();
    }

    @Override
    public List<Articles> getArticlestimedesc() {
        return articlesdao.getArticlestimedesc();
    }

    @Override
    public List<Articletypes> getArticletypesAll() {
        return articlesdao.getArticletypesAll();
    }

    @Override
    public void addpublisharticle(Articles articles) {
        articlesdao.addpublisharticle(articles);
    }

    @Override
    public List<Articles> findmyuserarticles(Articles articles) {
        return articlesdao.findmyuserarticles(articles);
    }

    @Override
    public int getuserarticlescount(int uid) {
        return articlesdao.getuserarticlescount(uid);
    }

    @Override
    public Articles articleinfo(int aid) {
        return articlesdao.articleinfo(aid);
    }

    @Override
    public void updatearticlealooks(Articles articles) {
        articlesdao.updatearticlealooks(articles);
    }

    @Override
    public int getarticlecommentscount(int aid) {
        return articlesdao.getarticlecommentscount(aid);
    }

    @Override
    public void updatearticlecommentscount(Articles articles) {
        articlesdao.updatearticlecommentscount(articles);
    }

    @Override
    public void updatearticlealike(Articles articles) {
        articlesdao.updatearticlealike(articles);
    }

    @Override
    public List<Articles> getarticleslistjson(Articles articles) {
        return articlesdao.getarticleslistjson(articles);
    }

    @Override
    public int getarticlescount() {
        return articlesdao.getarticlescount();
    }

    @Override
    public List<Articles> getarticletypesinfo(int atid) {
        return articlesdao.getarticletypesinfo(atid);
    }

    @Override
    public List<Articles> getarticletypesinfojson(Articles articles) {
        return articlesdao.getarticletypesinfojson(articles);
    }

    @Override
    public int getarticletypesinfocount(int atid) {
        return articlesdao.getarticletypesinfocount(atid);
    }

    @Override
    public Articles getnextarticles(int aid) {
        return articlesdao.getnextarticles(aid);
    }

    @Override
    public List<Articles> getnextfourarticles(int aid) {
        return articlesdao.getnextfourarticles(aid);
    }

    @Override
    public List<Articles> getalooksarticles() {
        return articlesdao.getalooksarticles();
    }

    @Override
    public List<Articles> getarticlestableinfo() {
        return articlesdao.getarticlestableinfo();
    }

    @Override
    public void deleteonearticle(int aid) {
        articlesdao.deleteonearticle(aid);
    }

    @Override
    public Articles getonearticleinfo(int aid) {
        return articlesdao.getonearticleinfo(aid);
    }

    @Override
    public void updateonearticle(Articles articles) {
        articlesdao.updateonearticle(articles);
    }

    @Override
    public int getarticlecounts() {
        return articlesdao.getarticlecounts();
    }

    @Override
    public List<Articles> getarticlesearch(String search) {
        return articlesdao.getarticlesearch(search);
    }

    @Override
    public int getgetarticlesearchcount(String search) {
        return articlesdao.getgetarticlesearchcount(search);
    }

    @Override
    public List<Articles> getarticlesearchlistjson(Articles articles) {
        return articlesdao.getarticlesearchlistjson(articles);
    }

}
