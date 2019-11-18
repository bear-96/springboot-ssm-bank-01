package com.xwx.springbootssmbank.service;

public interface LoginAndRigesterService {

    public int login(String user, String password , int flag);//登录

    public boolean register(String user, String password);//注册


}
