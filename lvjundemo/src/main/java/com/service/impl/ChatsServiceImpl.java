package com.service.impl;

import com.dao.ChatsDao;
import com.entity.Chats;
import com.service.ChatsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ChatsServiceImpl implements ChatsService {
    @Resource
    private ChatsDao chatsdao;


    @Override
    public void addchatsoneinfo(Chats chats) {
        chatsdao.addchatsoneinfo(chats);
    }

    @Override
    public List<Chats> getmychats(int uid) {
        return chatsdao.getmychats(uid);
    }

    @Override
    public void deletemychats(int cid) {
        chatsdao.deletemychats(cid);
    }
}
