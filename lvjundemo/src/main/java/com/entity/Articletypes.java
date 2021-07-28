package com.entity;

import java.io.Serializable;
import java.util.List;

public class Articletypes implements Serializable {
    private int atid;
    private String atype;
    //一个类型对应多篇文章 一对多的关系
    private List<Articles> list;

    public List<Articles> getArticles() {
        return list;
    }

    public void setArticles(List<Articles> list) {
        this.list = list;
    }

    public int getAtid() {
        return atid;
    }

    public void setAtid(int atid) {
        this.atid = atid;
    }

    public String getAtype() {
        return atype;
    }

    public void setAtype(String atype) {
        this.atype = atype;
    }


    public Articletypes(int atid, String atype, List<Articles> list) {
        this.atid = atid;
        this.atype = atype;
        this.list = list;
    }

    public Articletypes(int atid, String atype) {
        this.atid = atid;
        this.atype = atype;
    }
    public Articletypes(String atype) {
        this.atype = atype;
    }
    public Articletypes() {
    }
}
