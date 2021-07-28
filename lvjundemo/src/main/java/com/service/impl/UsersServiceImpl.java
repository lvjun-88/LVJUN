package com.service.impl;


import com.dao.UsersDao;
import com.entity.Users;
import com.service.UsersService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {
    @Resource
    private UsersDao usersdao;

    public void setUsersdao(UsersDao usersdao) {
        this.usersdao = usersdao;
    }

    @Override
    public List<Users> getUsersAll() {
        return usersdao.getUsersAll();
    }

    @Override
    public Users checkLogin(Users users) {
        return usersdao.checkLogin(users);
    }

    @Override
    public void addUsersRegister(Users users) {
        usersdao.addUsersRegister(users);
    }


    @Override
    public Users checkUname(Users users) {
        return usersdao.checkUname(users);
    }

    @Override
    public void updateusertime(Users users) {

        usersdao.updateusertime(users);
    }

    @Override
    public void updatemypass(Users users) {
        usersdao.updatemypass(users);
    }

    @Override
    public List<Users> getmycomments(int uid) {
        return usersdao.getmycomments(uid);
    }

    @Override
    public void updatemyuserinfo(Users users) {
        usersdao.updatemyuserinfo(users);
    }

    @Override
    public void deletearticleinfo(int aid) {
        usersdao.deletearticleinfo(aid);
    }

    @Override
    public void deletemycomments(int acid) {
        usersdao.deletemycomments(acid);
    }

    @Override
    public Users getArticleuserinfo(int aid) {
        return usersdao.getArticleuserinfo(aid);
    }

    @Override
    public Users getuseroneinfo(int uid) {
        return usersdao.getuseroneinfo(uid);
    }

    @Override
    public Users checkuname(String name) {
        return usersdao.checkuname(name);
    }

    @Override
    public List<Users> getuserstableinfo() {
        return usersdao.getuserstableinfo();
    }

//    @Override
//    public Users checkuid(int id) {
//        return usersdao.checkuid(id);
//    }

    @Override
    public void deleteoneuser(int uid) {
        usersdao.deleteoneuser(uid);
    }

    @Override
    public Users getonearticleinfo(int uid) {
        return usersdao.getonearticleinfo(uid);
    }

    @Override
    public void updateoneuser(Users users) {
        usersdao.updateoneuser(users);
    }

    @Override
    public int getuserscount() {
        return usersdao.getuserscount();
    }

}
