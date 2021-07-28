package com.service.impl;

import com.dao.WebDao;
import com.entity.Web;
import com.service.WebService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class WebServiceImpl implements WebService {
    @Resource
    private WebDao webdao;

    @Override
    public Web getweball() {
        return webdao.getweball();
    }

    @Override
    public void updatewebinfo(Web web) {
        webdao.updatewebinfo(web);
    }

}
