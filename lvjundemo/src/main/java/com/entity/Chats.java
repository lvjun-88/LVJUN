package com.entity;

public class Chats {
    private int cid;//留言id
    private int fsid;//留言用户
    private String fsinfo;//留言信息
    private String fstime;//留言时间
    private int jsid;//留言接受id

    private String name;

    public Chats(int cid, int fsid, String fsinfo, String fstime, int jsid) {
        this.cid = cid;
        this.fsid = fsid;
        this.fsinfo = fsinfo;
        this.fstime = fstime;
        this.jsid = jsid;
    }
    public Chats(int fsid, String fsinfo, String fstime, int jsid) {
        this.fsid = fsid;
        this.fsinfo = fsinfo;
        this.fstime = fstime;
        this.jsid = jsid;
    }

    public Chats(String name,int cid,int fsid, String fsinfo, String fstime, int jsid) {
        this.name = name;
        this.cid = cid;
        this.fsid = fsid;
        this.fsinfo = fsinfo;
        this.fstime = fstime;
        this.jsid = jsid;

    }

    public Chats(int cid, int fsid, String fsinfo, String fstime, int jsid, String name) {
        this.cid = cid;
        this.fsid = fsid;
        this.fsinfo = fsinfo;
        this.fstime = fstime;
        this.jsid = jsid;
        this.name = name;
    }

    public Chats() {
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getFsid() {
        return fsid;
    }

    public void setFsid(int fsid) {
        this.fsid = fsid;
    }

    public String getFsinfo() {
        return fsinfo;
    }

    public void setFsinfo(String fsinfo) {
        this.fsinfo = fsinfo;
    }

    public String getFstime() {
        return fstime;
    }

    public void setFstime(String fstime) {
        this.fstime = fstime;
    }

    public int getJsid() {
        return jsid;
    }

    public void setJsid(int jsid) {
        this.jsid = jsid;
    }
}
