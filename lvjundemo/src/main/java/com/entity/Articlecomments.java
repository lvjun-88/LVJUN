package com.entity;

import javax.xml.crypto.Data;
import java.io.Serializable;

public class Articlecomments implements Serializable {
    private int acid;//评论编号
    private int uid;//用户账号
    private int aid;//文章编号
    private String  actime;//评论时间
    private String comment;//评论

    //多对一
    private Users users;
    private String aname;
    private String uname;


    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }


    public Articlecomments(int acid,  int aid,String aname, int uid,String uname, String comment,String actime ) {
        this.acid = acid;
        this.aid = aid;
        this.aname = aname;
        this.uid = uid;
        this.uname = uname;
        this.comment = comment;
        this.actime = actime;

    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }


    // private int commentcheck;//评论审核  1 代表通过审核 0 代表未审核 2 代表未通过审核

    public int getAcid() {
        return acid;
    }

    public void setAcid(int acid) {
        this.acid = acid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getActime() {
        return actime;
    }

    public void setActime(String actime) {
        this.actime = actime;
    }


    public Articlecomments(int acid, int uid, int aid, String actime, String comment, Users users) {
        this.acid = acid;
        this.uid = uid;
        this.aid = aid;
        this.actime = actime;
        this.comment = comment;
        this.users = users;
    }

    public Articlecomments(int acid, int uid, int aid, String comment, String actime) {
        this.acid = acid;
        this.uid = uid;
        this.aid = aid;

        this.comment = comment;
        this.actime = actime;
    }

    public Articlecomments(int uid, int aid,  String comment,String actime) {
        this.uid = uid;
        this.aid = aid;

        this.comment = comment;
        this.actime = actime;
    }
    public Articlecomments() {

    }
    @Override
    public String toString() {
        return "Articlecomments{" +
                "acid=" + acid +
                ", uid=" + uid +
                ", aid=" + aid +
                ", actime='" + actime + '\'' +
                ", comment='" + comment + '\'' +
                '}';
    }


}
