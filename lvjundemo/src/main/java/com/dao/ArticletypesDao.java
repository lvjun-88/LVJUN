package com.dao;

import com.entity.Articletypes;

import java.util.List;

public interface ArticletypesDao {
    //得到所有的文章类型
    public List<Articletypes> getarticletypes();
    //得到具体文件类型
    public Articletypes getarticletypesinfo(int atid);
    //得到文章类型个数
    public int getarticletypecounts();
    //得到文章类型
    public List<Articletypes> getarticletypestableinfo();
    //添加一个文章类型
    public void addonearticletypeinfo(Articletypes articletypes);
    //删除一个文章类型
    public void deleteonearticletype(int atid);
    //查询一个文章类型
    public Articletypes updateonearticletypejsp(int atid);
    //修改一个文章类型
    public void updatearticletypeinfo(Articletypes articletypes);
}
