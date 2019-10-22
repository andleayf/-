package com.xcy.pro.controller;

import com.xcy.pro.pojo.Teacher;
import com.xcy.pro.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    TeacherService teacherService;

    @RequestMapping("/getTeacherList")
    @ResponseBody
    public List<Teacher> getTeacherList(Model model){
        System.out.println("获取教师");
        List<Teacher> teacherList = teacherService.getTeacherList();
       if(teacherList != null && !teacherList.isEmpty()){
           model.addAttribute("teacherList",teacherList);
           return teacherList;
       }else
           return null;
    }
}
