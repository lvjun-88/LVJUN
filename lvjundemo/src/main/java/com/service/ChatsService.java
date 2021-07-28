package com.service;

import com.entity.Chats;

import java.util.List;

public interface ChatsService {
    //留言
    public void addchatsoneinfo(Chats chats);
    //getmychats 得到我的留言
    public List<Chats> getmychats(int uid);
    //删除留言
    public void deletemychats(int cid);
}
