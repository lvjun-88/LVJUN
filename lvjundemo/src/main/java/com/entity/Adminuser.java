package com.entity;

public class Adminuser {
    private int adminid;//id
    private String adminname;//管理员名称
    private String adminpassword;//管理员密码
    private String adminphone;//管理员手机号
    private String adminemail;//管理员邮箱
    private String admininfo;//管理员备注信息




    public Adminuser(int adminid, String adminpassword) {
        this.adminid = adminid;
        this.adminpassword = adminpassword;
    }

    public Adminuser(String adminname, String adminpassword) {
        this.adminname = adminname;
        this.adminpassword = adminpassword;
    }

    public Adminuser(int adminid, String adminname, String adminphone, String adminemail, String admininfo) {
        this.adminid = adminid;
        this.adminname = adminname;
        this.adminphone = adminphone;
        this.adminemail = adminemail;
        this.admininfo = admininfo;
    }

    public Adminuser(int adminid, String adminname, String adminpassword, String adminphone, String adminemail, String admininfo) {
        this.adminid = adminid;
        this.adminname = adminname;
        this.adminpassword = adminpassword;
        this.adminphone = adminphone;
        this.adminemail = adminemail;
        this.admininfo = admininfo;
    }

    public Adminuser() {
    }

    public int getAdminid() {
        return adminid;
    }

    public void setAdminid(int adminid) {
        this.adminid = adminid;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getAdminpassword() {
        return adminpassword;
    }

    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword;
    }

    public String getAdminphone() {
        return adminphone;
    }

    public void setAdminphone(String adminphone) {
        this.adminphone = adminphone;
    }

    public String getAdminemail() {
        return adminemail;
    }

    public void setAdminemail(String adminemail) {
        this.adminemail = adminemail;
    }

    public String getAdmininfo() {
        return admininfo;
    }

    public void setAdmininfo(String admininfo) {
        this.admininfo = admininfo;
    }
}
