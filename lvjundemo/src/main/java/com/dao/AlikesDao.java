package com.dao;

import com.entity.Alikes;
import com.entity.Users;

public interface AlikesDao {
    //点赞
    public void addalikes(Alikes alikes);
    //没人点赞一次
    public Alikes checkalikes(Alikes alikes);

    //点赞次数
    public int getalikes(int aid);
}
