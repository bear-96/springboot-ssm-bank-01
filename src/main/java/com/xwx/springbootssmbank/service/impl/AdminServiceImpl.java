package com.xwx.springbootssmbank.service.impl;

import com.xwx.springbootssmbank.mapper.AdminMapper;
import com.xwx.springbootssmbank.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
public class AdminServiceImpl  implements AdminService {

    @Autowired
    AdminMapper adminMapper;

//    用户信息
    @Override
    public List getAllUser() {

        return  adminMapper.getAllUser();
    }

//    权限管理
    @Override
    public boolean modifiyUserState(int id, int flag) {


        return adminMapper.userModifiy(id,flag);
    }
}
