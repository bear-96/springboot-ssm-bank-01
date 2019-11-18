package com.xwx.springbootssmbank.service.impl;

import com.xwx.springbootssmbank.bean.Log;
import com.xwx.springbootssmbank.exception.MyException;
import com.xwx.springbootssmbank.mapper.LoginAndRigesterMapper;
import com.xwx.springbootssmbank.mapper.UserMapper;
import com.xwx.springbootssmbank.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(propagation= Propagation.REQUIRED,readOnly = false)
@Service
public class UserServiceImpl implements UserService {


    @Autowired
    UserMapper userMapper;

    @Autowired
    LoginAndRigesterMapper loginAndRigesterMapper;



    @Override
//    余额查询
    @Transactional(readOnly = true)
    public double inquiry(String username) {

        return userMapper.getBalanceByName(username);
    }

    @Override
//    取款
    public int withdrawals(String username, double m) {
        if(m<0) throw new MyException("取款金额不能小于0");
        double balance = userMapper.getBalanceByName(username)-m;
        if(balance<0) throw new MyException("余额不足");
        Object userid = userMapper.getIdByName(username);
        int flag = userMapper.withdrawals(username,balance);
        Log log = new Log();
        log.setLogtype("取款");
        log.setLogamount(m);
        log.setUserid((int)userid);
        userMapper.adddwithdrawals(log);
        return flag;
    }

    @Override
    //存款
    public int deposit(String username, double m)
    {   if (m<0) throw new MyException("存款金额不能小于0");
        Object userid = userMapper.getIdByName(username);
        double balance = userMapper.getBalanceByName(username)+m;
        int flag = userMapper.deposit(username,balance);
        Log log = new Log();
        log.setLogtype("存款");
        log.setLogamount(m);
        log.setUserid((int)userid);
        userMapper.adddeposit(log);
        return flag;
    }

    @Override
//    转账
    public int  transfer(String user, String acceptUser, double money) {
        Object userid = userMapper.getIdByName(user);
        Object acceptUserId = userMapper.getIdByName(acceptUser);
        if(acceptUserId == null) throw new MyException("该用户不存在");
        System.out.println("转账用户："+acceptUser);
        double userbalance = userMapper.getBalanceByName(user);
        double acceptbalance = userMapper.getBalanceByName(acceptUser);
        if (money<0) throw new MyException("转账金额不能小于0");
        if(money > userbalance) throw new MyException("余额不足");
        userMapper.deposit(acceptUser,acceptbalance+money);
        userMapper.withdrawals(user,userbalance-money);
        Log log1 = new Log();
        log1.setLogtype("转入");
        log1.setLogamount(money);
        log1.setUserid((int)acceptUserId);
        Log log2 = new Log();
        log2.setLogtype("转出");
        log2.setLogamount(money);
        log2.setUserid((int)userid);
        userMapper.adddeposit(log1);
        userMapper.adddwithdrawals(log2);
        return 0;
    }

    //操作明细
    @Override
    @Transactional(readOnly = true)
    public List operation(String user) {

        return userMapper.getAllBell(user);
    }

}
