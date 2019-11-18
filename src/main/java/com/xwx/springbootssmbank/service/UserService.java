package com.xwx.springbootssmbank.service;

import com.xwx.springbootssmbank.bean.User;
import java.util.List;


public interface UserService {


    public double inquiry(String user);	//查询余额

    public int withdrawals(String user, double m);	//取款

    public int deposit(String user, double m);	//存款

    public int transfer(String user, String acceptUser, double money);//转账

    public List operation(String user);//操作明细


}
