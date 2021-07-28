package com.entity;

import java.io.Serializable;
import java.util.List;

public class Users implements Serializable {
    private int uid;//用户账号
    private String uname;//用户名称
    private String upass;//用户密码
    private String usex;//用户性别
    private String uemail;//用户邮箱
    private String uphoneid;//用户手机号
    private String usignature;//个性签名
    private int uage;//用户年龄
    private String uicon;//个人头像
    private String uresume;//个人简介
    private String uarea;//用户区域
    private String utime;//登录时间

    private String uwximag;//打赏收款码


    private String oldupass;//旧密码
    private String newupass;//新密码
    private String newupassok;//确认新密码


    //一对多

    //我的评论信息
    private int acid;
    private String aimg;
    private int aid;//文章id
    private String aname;//文章名称
    private String comment;//评论
    private String actime;//时间


    public Users(int uid, int aid) {
        this.uid = uid;
        this.aid = aid;
    }

    public Users(int aid,int uid, String uname) {

        this.uid = uid;
        this.uname = uname;
    }


    public Users(int aid,int uid, String uname, String uwximag) {
        this.aid = aid;
        this.uid = uid;
        this.uname = uname;
        this.uwximag = uwximag;
    }

    public Users(int aid, String aname, String comment, String actime) {
        this.aid = aid;
        this.aname = aname;
        this.comment = comment;
        this.actime = actime;
    }

    public Users(int acid,String aimg,int aid, String aname, String comment, String actime) {
        this.acid = acid;
        this.aimg = aimg;
        this.aid = aid;
        this.aname = aname;
        this.comment = comment;
        this.actime = actime;
    }


    public int getAcid() {
        return acid;
    }

    public void setAcid(int acid) {
        this.acid = acid;
    }

    public String getAimg() {
        return aimg;
    }

    public void setAimg(String aimg) {
        this.aimg = aimg;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
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

    public Users(String uname, String upass) {
        this.uname = uname;
        this.upass = upass;
    }


    public Users(int uid, String uname, String upass) {
        this.uid = uid;
        this.uname = uname;
        this.upass = upass;
    }


    public Users(int uid, String uname, String uemail, String uphoneid, String usignature, String uicon) {
        this.uid = uid;
        this.uname = uname;
        this.uemail = uemail;
        this.uphoneid = uphoneid;
        this.usignature = usignature;
        this.uicon = uicon;
    }

    public Users(int uid, String uname, String uemail, String uphoneid, String usignature, String uicon, String utime) {
        this.uid = uid;
        this.uname = uname;
        this.uemail = uemail;
        this.uphoneid = uphoneid;
        this.usignature = usignature;
        this.uicon = uicon;
        this.utime = utime;
    }

    public Users(int uid, String uname, String upass, String usex, String uemail, String uphoneid, String usignature, int uage, String uicon, String uresume, String uarea, String utime, String oldupass, String newupass, String newupassok) {
        this.uid = uid;
        this.uname = uname;
        this.upass = upass;
        this.usex = usex;
        this.uemail = uemail;
        this.uphoneid = uphoneid;
        this.usignature = usignature;
        this.uage = uage;
        this.uicon = uicon;
        this.uresume = uresume;
        this.uarea = uarea;
        this.utime = utime;
        this.oldupass = oldupass;
        this.newupass = newupass;
        this.newupassok = newupassok;
    }

    public Users(int uid, String uname, String upass, String usex, String uemail, String uphoneid, String usignature, int uage, String uicon, String uresume, String uarea, String utime, String uwximag, String oldupass, String newupass, String newupassok) {
        this.uid = uid;
        this.uname = uname;
        this.upass = upass;
        this.usex = usex;
        this.uemail = uemail;
        this.uphoneid = uphoneid;
        this.usignature = usignature;
        this.uage = uage;
        this.uicon = uicon;
        this.uresume = uresume;
        this.uarea = uarea;
        this.utime = utime;
        this.uwximag = uwximag;
        this.oldupass = oldupass;
        this.newupass = newupass;
        this.newupassok = newupassok;
    }

    public String getUtime() {
        return utime;
    }

    public void setUtime(String utime) {
        this.utime = utime;
    }

    private List<Articlecomments> list;

    public List<Articlecomments> getList() {
        return list;
    }

    public void setList(List<Articlecomments> list) {
        this.list = list;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }



    public String getUsignature() {
        return usignature;
    }

    public void setUsignature(String usignature) {
        this.usignature = usignature;
    }

    public int getUage() {
        return uage;
    }

    public void setUage(int uage) {
        this.uage = uage;
    }

    public String getUicon() {
        return uicon;
    }

    public void setUicon(String uicon) {
        this.uicon = uicon;
    }

    public String getUresume() {
        return uresume;
    }

    public void setUresume(String uresume) {
        this.uresume = uresume;
    }

    public String getUarea() {
        return uarea;
    }

    public void setUarea(String uarea) {
        this.uarea = uarea;
    }

    public String getUphoneid() {
        return uphoneid;
    }

    public void setUphoneid(String uphoneid) {
        this.uphoneid = uphoneid;
    }

    public String getOldupass() {
        return oldupass;
    }

    public void setOldupass(String oldupass) {
        this.oldupass = oldupass;
    }

    public String getNewupass() {
        return newupass;
    }

    public void setNewupass(String newupass) {
        this.newupass = newupass;
    }

    public String getNewupassok() {
        return newupassok;
    }

    public void setNewupassok(String newupassok) {
        this.newupassok = newupassok;
    }

    public String getUwximag() {
        return uwximag;
    }

    public void setUwximag(String uwximag) {
        this.uwximag = uwximag;
    }

    public Users(int uid, String uname, String upass, String usex, String uemail, String uphoneid, String usignature, int uage, String uicon, String uresume, String uarea, List<Articlecomments> list) {
        this.uid = uid;
        this.uname = uname;
        this.upass = upass;
        this.usex = usex;
        this.uemail = uemail;
        this.uphoneid = uphoneid;
        this.usignature = usignature;
        this.uage = uage;
        this.uicon = uicon;
        this.uresume = uresume;
        this.uarea = uarea;
        this.list = list;
    }
    public Users(int uid, String uname, String upass, String usex, String uemail, String uphoneid, String usignature, int uage, String uicon, String uresume, String uarea,String uwximag, List<Articlecomments> list) {
        this.uid = uid;
        this.uname = uname;
        this.upass = upass;
        this.usex = usex;
        this.uemail = uemail;
        this.uphoneid = uphoneid;
        this.usignature = usignature;
        this.uage = uage;
        this.uicon = uicon;
        this.uresume = uresume;
        this.uarea = uarea;
        this.uwximag = uwximag;
        this.list = list;
    }
    public Users(int uid, String utime) {
        this.uid = uid;
        this.utime = utime;
    }

    public Users() {
    }

    public Users(int uid,String uicon, String uname, String upass,String usignature, String uemail, String uphoneid,   String uwximag) {
        this.uid = uid;
        this.uicon = uicon;
        this.uname = uname;
        this.upass = upass;
        this.usignature = usignature;
        this.uemail = uemail;
        this.uphoneid = uphoneid;
        this.uwximag = uwximag;
    }

    public Users(int uid, String uname, String upass, String usex, String uemail, String uphoneid, String usignature, int uage, String uicon, String uresume, String uarea, String utime, String uwximag) {
        this.uid = uid;
        this.uname = uname;
        this.upass = upass;
        this.usex = usex;
        this.uemail = uemail;
        this.uphoneid = uphoneid;
        this.usignature = usignature;
        this.uage = uage;
        this.uicon = uicon;
        this.uresume = uresume;
        this.uarea = uarea;
        this.utime = utime;
        this.uwximag = uwximag;
    }
}
