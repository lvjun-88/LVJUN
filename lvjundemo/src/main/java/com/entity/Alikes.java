package com.entity;

import java.io.Serializable;

public class Alikes implements Serializable {
    private int alikeid;//点赞id
    private int alikeaid;//文章id
    private int alikeuid;//点赞用户id
    private String aliketime;//点赞时间


    public Alikes(int alikeid, int alikeaid, int alikeuid) {
        this.alikeid = alikeid;
        this.alikeaid = alikeaid;
        this.alikeuid = alikeuid;
    }

    public Alikes(int alikeaid, int alikeuid) {
        this.alikeaid = alikeaid;
        this.alikeuid = alikeuid;
    }

    public Alikes(int alikeaid, int alikeuid, String aliketime) {
        this.alikeaid = alikeaid;
        this.alikeuid = alikeuid;
        this.aliketime = aliketime;
    }

    public Alikes() {
    }

    public String getAliketime() {
        return aliketime;
    }

    public void setAliketime(String aliketime) {
        this.aliketime = aliketime;
    }

    public int getAlikeid() {
        return alikeid;
    }

    public void setAlikeid(int alikeid) {
        this.alikeid = alikeid;
    }

    public int getAlikeaid() {
        return alikeaid;
    }

    public void setAlikeaid(int alikeaid) {
        this.alikeaid = alikeaid;
    }

    public int getAlikeuid() {
        return alikeuid;
    }

    public void setAlikeuid(int alikeuid) {
        this.alikeuid = alikeuid;
    }
}
