package com.service.impl;

import com.dao.AdminuserDao;
import com.entity.Adminuser;
import com.service.AdminuserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminuserServiceImpl implements AdminuserService {
    @Resource
    private AdminuserDao adminuserdao;


    @Override
    public Adminuser checkLoginadmin(Adminuser adminuser) {
        return adminuserdao.checkLoginadmin(adminuser);
    }

    @Override
    public void updateadminuserinfo(Adminuser adminuser) {
        adminuserdao.updateadminuserinfo(adminuser);
    }
}
