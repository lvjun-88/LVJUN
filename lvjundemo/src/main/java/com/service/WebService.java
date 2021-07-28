package com.service;

import com.entity.Web;

public interface WebService {
    //得到web所有信息
    public Web getweball();
    //更改web信息
    public void updatewebinfo(Web web);

}
