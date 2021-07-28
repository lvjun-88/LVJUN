package com.dao;

import com.entity.Web;

public interface WebDao {
    //得到web所有信息
    public Web getweball();
    //更改web信息
    public void updatewebinfo(Web web);

}
