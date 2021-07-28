package com.service.impl;

import com.dao.ArticletypesDao;
import com.entity.Articletypes;
import com.service.ArticletypesService;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ArticletypesServiceImpl implements ArticletypesService {
    @Resource
    private ArticletypesDao articletypesdao;


    @Override
    public List<Articletypes> getarticletypes() {
        return articletypesdao.getarticletypes();
    }

    @Override
    public Articletypes getarticletypesinfo(int atid) {
        return articletypesdao.getarticletypesinfo(atid);
    }

    @Override
    public int getarticletypecounts() {
        return articletypesdao.getarticletypecounts();
    }

    @Override
    public List<Articletypes> getarticletypestableinfo() {
        return articletypesdao.getarticletypestableinfo();
    }

    @Override
    public void addonearticletypeinfo(Articletypes articletypes) {
        articletypesdao.addonearticletypeinfo(articletypes);
    }

    @Override
    public void deleteonearticletype(int atid) {
        articletypesdao.deleteonearticletype(atid);
    }

    @Override
    public Articletypes updateonearticletypejsp(int atid) {
        return articletypesdao.updateonearticletypejsp(atid);
    }

    @Override
    public void updatearticletypeinfo(Articletypes articletypes) {
        articletypesdao.updatearticletypeinfo(articletypes);
    }
}
