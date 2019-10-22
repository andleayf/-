package com.xcy.pro.controller;

import com.xcy.pro.pojo.User;
import com.xcy.pro.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;
    @RequestMapping("/validateEmail")
    @ResponseBody
    public String validateEmail(String userEmail){
       boolean isExist= userService.valifateEmail(userEmail);
       if (isExist){
           return "fail";
       }else {
           return "success";
       }

    }

    @RequestMapping("/loginUser")
    @ResponseBody
    public String loginUser(User user, HttpSession session ){
        boolean result = userService.loginUser(user);
        if(result){
            session.setAttribute("userAccount",user.getUserEmail());
        }
        return result  ? "success":"fail";

    }
    @RequestMapping("/insertUser")
    @ResponseBody
    public String insertUser(User user){
        int result = userService.insertUser(user);
        System.out.println("插入数据后是否可以获取一个值："+result);
        return result > 0 ? "success":"fail";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("userAccount");
        return "redirect:/index.jsp";
    }
}
