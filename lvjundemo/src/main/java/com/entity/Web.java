package com.entity;

public class Web {
    private int webid;//网站id
    private String webname;//网站名称
    private String logo;//网页logo
    private String webimage1;//网页轮播图1
    private String webimagename1;//轮播图标题
    private String webimageurl1;//轮播图地址
    private String webimage2;
    private String webimagename2;
    private String webimageurl2;
    private String webimage3;
    private String webimagename3;
    private String webimageurl3;
    private String webtwo;
    private String webbeian; //网页底部备案号


    public Web(int webid, String webname, String logo, String webimage1, String webimagename1, String webimageurl1, String webimage2, String webimagename2, String webimageurl2, String webimage3, String webimagename3, String webimageurl3,String webtwo,String webbeian) {
        this.webid = webid;
        this.webname = webname;
        this.logo = logo;
        this.webimage1 = webimage1;
        this.webimagename1 = webimagename1;
        this.webimageurl1 = webimageurl1;
        this.webimage2 = webimage2;
        this.webimagename2 = webimagename2;
        this.webimageurl2 = webimageurl2;
        this.webimage3 = webimage3;
        this.webimagename3 = webimagename3;
        this.webimageurl3 = webimageurl3;
        this.webtwo = webtwo;
        this.webbeian = webbeian;
    }

    public Web() {
    }


    public int getWebid() {
        return webid;
    }

    public void setWebid(int webid) {
        this.webid = webid;
    }

    public String getWebname() {
        return webname;
    }

    public void setWebname(String webname) {
        this.webname = webname;
    }

    public String getLogo() {
        return logo;
    }

    public String getWebtwo() {
        return webtwo;
    }

    public void setWebtwo(String webtwo) {
        this.webtwo = webtwo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getWebimage1() {
        return webimage1;
    }

    public void setWebimage1(String webimage1) {
        this.webimage1 = webimage1;
    }

    public String getWebimagename1() {
        return webimagename1;
    }

    public void setWebimagename1(String webimagename1) {
        this.webimagename1 = webimagename1;
    }

    public String getWebimageurl1() {
        return webimageurl1;
    }

    public void setWebimageurl1(String webimageurl1) {
        this.webimageurl1 = webimageurl1;
    }

    public String getWebimage2() {
        return webimage2;
    }

    public void setWebimage2(String webimage2) {
        this.webimage2 = webimage2;
    }

    public String getWebimagename2() {
        return webimagename2;
    }

    public void setWebimagename2(String webimagename2) {
        this.webimagename2 = webimagename2;
    }

    public String getWebimageurl2() {
        return webimageurl2;
    }

    public void setWebimageurl2(String webimageurl2) {
        this.webimageurl2 = webimageurl2;
    }

    public String getWebimage3() {
        return webimage3;
    }

    public void setWebimage3(String webimage3) {
        this.webimage3 = webimage3;
    }

    public String getWebimagename3() {
        return webimagename3;
    }

    public void setWebimagename3(String webimagename3) {
        this.webimagename3 = webimagename3;
    }

    public String getWebimageurl3() {
        return webimageurl3;
    }

    public void setWebimageurl3(String webimageurl3) {
        this.webimageurl3 = webimageurl3;
    }

    public String getWebbeian() {
        return webbeian;
    }

    public void setWebbeian(String webbeian) {
        this.webbeian = webbeian;
    }
}
