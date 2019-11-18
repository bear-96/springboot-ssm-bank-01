package com.xwx.springbootssmbank.controller;

import com.xwx.springbootssmbank.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping
public class UserController {

    /**
     *
     */
    @Autowired
    UserService userService;

//余额查询
    @RequestMapping("/inquiry")
    public String inquiry(HttpServletRequest request){
       String user = (String) request.getSession().getAttribute("user");
        double money = userService.inquiry(user);
        request.setAttribute("balance",money);
        return "inquiry";
    }

//    存款
    @RequestMapping("/toDeposit")
    public String todeposit(){

        return "deposit";
    }

    @RequestMapping("/deposit")
    public String deposit(double money,HttpServletRequest request){
        String user = (String) request.getSession().getAttribute("user");
        System.out.println("表单money"+money);
        userService.deposit(user,money);
        return "redirect:/inquiry";
    }

    //取款
    @RequestMapping("/toWithdrawals")
    public String towithdrawals(){

        return "withdrawals";
    }

    @RequestMapping("/withdrawals")
    public String withdrawals(double money,HttpServletRequest request){
        String user = (String) request.getSession().getAttribute("user");
        System.out.println("表单money"+money);
        userService.withdrawals(user,money);
        return "redirect:/inquiry";
    }
    //转账
    @RequestMapping("/toTransfer")
    public String toTransfer(){
        return "transfer";
    }
    @RequestMapping("/transfer")
    public String transfer(String acceptUser,double money, HttpServletRequest request){
        String user = (String) request.getSession().getAttribute("user");
        userService.transfer(user,acceptUser,money);
        return "redirect:/inquiry";
    }
//    操作明细
    @RequestMapping("/operation")
    public String operation(HttpServletRequest request){
        String user = (String) request.getSession().getAttribute("user");
        List list = userService.operation(user);
        request.setAttribute("op",list);
        return "operation";
    }

}
