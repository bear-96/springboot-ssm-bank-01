package com.xwx.springbootssmbank.service.impl;

import com.xwx.springbootssmbank.bean.Admin;
import com.xwx.springbootssmbank.bean.User;
import com.xwx.springbootssmbank.exception.MyException;
import com.xwx.springbootssmbank.mapper.LoginAndRigesterMapper;
import com.xwx.springbootssmbank.service.LoginAndRigesterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation= Propagation.REQUIRED,readOnly = false)
@Service
public class LoginAndRigesterServiceImpl implements LoginAndRigesterService {


    @Autowired
    LoginAndRigesterMapper loginAndRigesterMapper;

//    登录
    public int login(String username,String userpassword ,int userflag) {
        int flag = -1;
        if(userflag == 1){
            Admin admin = loginAndRigesterMapper.getAdminByName(username);
            if(username.equals(admin.getName())&&userpassword.equals(admin.getPassword())){
                flag = 10;
            }else throw new MyException("账号或密码错误");
        }
        else {
            User user = loginAndRigesterMapper.getUserByName(username);
            if (user.getUserflag() == 1) {
              throw  new MyException("账号被冻结");
            }
            if (username.equals(user.getUsername()) && userpassword.equals(user.getUserpassword())) {
                flag = 0;
            } else throw new MyException("账号或密码错误");
        }
        return flag;
    }

    @Override
//    注册
    public boolean register(String username, String password) {
        boolean flag = false;
        String getUsername = loginAndRigesterMapper.register(username);
        if(getUsername == null){
            User user = new User();
            user.setUsername(username);
            user.setUserpassword(password);
            user.setUserflag(0);
            user.setBalance(0);
            flag = loginAndRigesterMapper.insertUser(user);
        }
        return flag;
    }
}
