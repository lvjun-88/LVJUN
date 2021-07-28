package com.service;



import com.entity.Articles;
import com.entity.Users;

import java.util.List;

public interface UsersService {
    //查询所有账户信息
    public List<Users> getUsersAll();
    //登陆用户
    public Users checkLogin(Users users);
    //注册用户
    public void addUsersRegister(Users users);
    //检查用户名是否重复
    public Users checkUname(Users users);
    //插入当前时间给用户
    public void updateusertime(Users users);
    //修改密码
    public void updatemypass(Users users);
    //getmycomments得到我发表的评论
    public List<Users> getmycomments(int uid);
    //修改用户信息
    public void updatemyuserinfo(Users users);
    //删除用户发布的文章信息
    public void deletearticleinfo(int aid);
    //删除用户评论
    public void deletemycomments(int acid);
    //根据文章aid得到文章的作者信息
    public Users getArticleuserinfo(int aid);
    //查询作者信息根据uid
    public Users getuseroneinfo(int uid);
    //查询用户名是否存在
    public Users checkuname(String name);
    //    //查询id是否存在
    //    public Users checkuid(int id);
    //得到用户所有信息
    public List<Users> getuserstableinfo();

    //删除一个用户信息
    public void deleteoneuser(int uid);
    //得到用户信息
    public Users getonearticleinfo(int uid);
    //修改用户信息
    public void updateoneuser(Users users);
    //得到用户个数
    public int getuserscount();
}
