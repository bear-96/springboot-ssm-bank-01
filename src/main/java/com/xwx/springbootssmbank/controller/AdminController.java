package com.xwx.springbootssmbank.controller;

import com.xwx.springbootssmbank.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping
public class AdminController {

    @Autowired
    AdminService adminService;

//    用户信息
    @RequestMapping("/userState")
    public String userState(HttpServletRequest request){

        List list = adminService.getAllUser();
        request.setAttribute("alluser",list);
        return "adminUserState";
    }
//     权限管理
    @RequestMapping("/userManager")
    public  String userManager(HttpServletRequest request){

        List list = adminService.getAllUser();
        request.setAttribute("alluser",list);
        return "adminUserManager";
    }
//    冻结解冻
    @RequestMapping("/userFreeze")
    public String userModifiy(int id , int flag){

        adminService.modifiyUserState(id,flag);
        return "redirect:/userManager";
    }

}
