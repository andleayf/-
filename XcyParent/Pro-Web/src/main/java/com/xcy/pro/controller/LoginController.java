package com.xcy.pro.controller;

import com.xcy.pro.pojo.Admin;
import com.xcy.pro.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    AdminService adminService;
    @RequestMapping("showLogin")
    public String showLogin(){
        return "after/login";
    }

    @RequestMapping("login")
    @ResponseBody
    public String login(Admin admin){
        System.out.println(admin);
        boolean result = adminService.validateLogin(admin);
        if(result){
            return "success";
        }else{
            return  "fail";
        }
    }
}
