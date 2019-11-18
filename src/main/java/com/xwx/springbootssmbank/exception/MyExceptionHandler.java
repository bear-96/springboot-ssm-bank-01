package com.xwx.springbootssmbank.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class MyExceptionHandler {

    @ResponseBody
    @ExceptionHandler(MyException.class)
    public ModelAndView handleException(Exception e){
        ModelAndView modelAndView = new ModelAndView();
        if(!(e instanceof MyException)){
            modelAndView.setViewName("error");
        }
        else if(e.getMessage().equals("账号或密码错误")||e.getMessage().equals("账号被冻结")){
        modelAndView.setViewName("index");
        }else {
        modelAndView.setViewName("right");
        }
        modelAndView.addObject("exception",e);
        return modelAndView;

    }

}
