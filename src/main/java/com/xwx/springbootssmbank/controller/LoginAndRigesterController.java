package com.xwx.springbootssmbank.controller;

import com.xwx.springbootssmbank.service.LoginAndRigesterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
@Controller
@RequestMapping
public class LoginAndRigesterController {

    @Autowired
    LoginAndRigesterService loginAndRigesterService;

    @RequestMapping("/index")
    public String toIndex(){
        return "index";
    }
    @RequestMapping("/top")
    public String toTop(){
        return "top";
    }
    @RequestMapping("/left")
    public String toLeft(){
        return "left";
    }
    @RequestMapping("/right")
    public String toRight(){
        return "right";
    }
    @RequestMapping("/toRegister")
    public String register(){ return "register"; }

    @RequestMapping("/adminTop")
    public String toAdminTop(){
        return "adminTop";
    }
    @RequestMapping("/adminLeft")
    public String toAdminLeft(){
        return "adminLeft";
    }
    @RequestMapping("/adminRight")
    public String toAdminRight(){
        return "adminRight";
    }




//    登录
    @RequestMapping("/login")
    public String login(String username , String userpassword , int userflag, HttpSession session){

        int flag = loginAndRigesterService.login(username,userpassword,userflag);
        if(flag == 0) {
            session.setAttribute("user",username);
            session.setAttribute("password",userpassword);
            session.setAttribute("flag",userflag);
            return "login";
        }
        if(flag == 10){
            session.setAttribute("user",username);
            session.setAttribute("password",userpassword);
            session.setAttribute("flag",userflag);
            return "adminLogin";
        }
        else  return "index";
    }

//      注册
    @RequestMapping("/register")
    public String register(String username,String password){
        loginAndRigesterService.register(username,password);
        return "index";
    }
}
