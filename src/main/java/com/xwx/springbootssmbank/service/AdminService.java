package com.xwx.springbootssmbank.service;

import java.util.List;

public interface AdminService {

    public List getAllUser();//管理员——用户信息

    public boolean modifiyUserState(int flag, int id);//管理员——权限管理

}
