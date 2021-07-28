package com.dao;

import com.entity.Adminuser;

public interface AdminuserDao {
    //登陆管理员
    public Adminuser checkLoginadmin(Adminuser adminuser);
    //修改管理员信息
    public void updateadminuserinfo(Adminuser adminuser);
}
