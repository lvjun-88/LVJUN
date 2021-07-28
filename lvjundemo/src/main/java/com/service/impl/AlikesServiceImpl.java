package com.service.impl;


import com.dao.AlikesDao;
import com.entity.Alikes;
import com.service.AlikesService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AlikesServiceImpl implements AlikesService {
    @Resource
    private AlikesDao alikesdao;


    @Override
    public void addalikes(Alikes alikes) {
        alikesdao.addalikes(alikes);
    }

    @Override
    public Alikes checkalikes(Alikes alikes) {
        return alikesdao.checkalikes(alikes);
    }

    @Override
    public int getalikes(int aid) {
        return alikesdao.getalikes(aid);
    }
}
