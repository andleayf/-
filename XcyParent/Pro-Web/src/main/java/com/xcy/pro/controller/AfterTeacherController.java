package com.xcy.pro.controller;

import com.github.pagehelper.PageInfo;
import com.xcy.pro.pojo.Teacher;
import com.xcy.pro.pojo.TeacherNm;
import com.xcy.pro.pojo.TeacherVo;
import com.xcy.pro.service.AfterTeacherService;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("after")
public class AfterTeacherController {

    @Value("${IMAGE_DIR}")
    String imageDir;

    @Value("${IMAGE_URL}")
    String imageURL;

    @Autowired
    AfterTeacherService afterTeacherService;


    @RequestMapping("/teacher/afterTeacherList")
    public String afterTeacherList(Model model, TeacherVo teacherVo,@RequestParam(name = "page", required = false, defaultValue = "1") int page,
                                   @RequestParam(name = "pageSize", required = false, defaultValue = "10") int pageSize){
        List<Teacher> teachers = afterTeacherService.selectAllTeacher(page,pageSize,teacherVo);
        for (Teacher teacher :teachers) {
            teacher.setTeacherImg(teacher.getTeacherImg());
            teacher.setTeacherQQ(teacher.getTeacherQQ());
            teacher.setTeacherWX(teacher.getTeacherWX());
        }

        PageInfo<Teacher> pageInfo = new PageInfo<Teacher>(teachers);
        model.addAttribute("pageInfo",pageInfo);

        return "after/teacherManagerList";
    }

    @RequestMapping("/teacher/showAddPage")
    public String showAddPage(){
        return "after/teacherManagerAdd";
    }

    @RequestMapping("/teacher/teacherManagerAdd")
    public String teacherManagerAdd(HttpServletRequest req, @RequestParam("files") MultipartFile[] files) throws IOException {


        String id = req.getParameter("teacherId");
        System.out.println("id:"+id);
        String teacherName = req.getParameter("teacherName");
        String teacherDetail = req.getParameter("teacherDetail");
        String[] id0 = new String[3];
        String[] id1 = new String[3];

        if(id != "0"){
            Teacher teacher = new Teacher();
            for (int i = 0;i < files.length;i++){
                if (files[i].getOriginalFilename() != ""){
                    String originalFilename = files[i].getOriginalFilename();

                    String suffixName = originalFilename.substring(originalFilename.lastIndexOf("."));
                    String newFileName = UUID.randomUUID().toString().replace("-","") + suffixName;
                    id1[i] = newFileName;
                    System.out.println(i+"  "+id1[i]);
                    files[i].transferTo(new File(imageDir,newFileName));
                }
            }

            if (id1[0] != null) {
                System.out.println("id1："+id1[0]);
                teacher.setTeacherImg(imageURL+id1[0]);
            }
            if (id1[1] != null ) {
                teacher.setTeacherQQ(imageURL+id1[1]);
            }
            if (id1[2] != null) {
                teacher.setTeacherWX(imageURL+id1[2]);
            }
            teacher.setTeacherId(Integer.parseInt(id));
            teacher.setTeacherDetail(teacherDetail);
            teacher.setTeacherName(teacherName);
            afterTeacherService.addOrUpdate(teacher);

            return "redirect:afterTeacherList";
        }
        if(id == "0"){
            for (int i = 0;i < files.length;i++){
                String originalFilename = "";

                originalFilename = files[i].getOriginalFilename();

                String suffixName = originalFilename.substring(originalFilename.lastIndexOf("."));
                String newFileName = UUID.randomUUID().toString().replace("-","") + suffixName;
                id0[i] = newFileName;
                files[i].transferTo(new File(imageDir,newFileName));

            }
            Teacher teacher = new Teacher();
            teacher.setTeacherId(Integer.parseInt(id));
            teacher.setTeacherDetail(teacherDetail);
            teacher.setTeacherName(teacherName);
            teacher.setTeacherImg(imageURL+id0[0]);
            teacher.setTeacherQQ(imageURL+id0[1]);
            teacher.setTeacherWX(imageURL+id0[2]);




            afterTeacherService.addOrUpdate(teacher);
            return "redirect:afterTeacherList";
        }

        return "";
    }

    @RequestMapping("/teacher/edit")
    public String edit(int id,Model model){
        Teacher teacher = afterTeacherService.SelectTeacherById(id);
        teacher.setTeacherImg(imageURL+teacher.getTeacherImg());
        teacher.setTeacherQQ(imageURL+teacher.getTeacherQQ());
        teacher.setTeacherWX(imageURL+teacher.getTeacherWX());
        System.out.println(teacher.getTeacherImg());
        model.addAttribute("teacher",teacher);
        return "after/teacherManagerAdd";
    }

    @RequestMapping("/teacher/afterTeacherDelete")
    @ResponseBody
    public String afterTeacherDelete(int id) throws InterruptedException {

        System.out.println(id);
        int i = afterTeacherService.afterTeacherDelete(id);
        if(i > 0 ){
            return "success";
        }else{
            return "false";
        }

    }

    @RequestMapping("/teacher/afterTeacherBatchDelete")
    public String afterTeacherBatchDelete(Integer[] ids){
        afterTeacherService.batchDelete(ids);
        return "redirect:/after/teacher/afterTeacherList";
    }

    @RequestMapping(value="/teacher/selectTeacherName",produces="text/plain;charset=utf-8")
    @ResponseBody
    public String selectTeacherName(String teacherName, HttpServletResponse response) throws IOException {
        System.out.println(teacherName);
        List<String> teachers = afterTeacherService.selectTeacherName(teacherName);
        List<TeacherNm> teacherNmList = new ArrayList<TeacherNm>();

       for(int i = 0;i<teachers.size();i++){
           TeacherNm teacherNm = new TeacherNm();
            teacherNm.setTeacherName(teachers.get(i));
            teacherNmList.add(teacherNm);
      }
        String s = JSONArray.fromObject(teacherNmList).toString();
        System.out.println(s);
        return s;
    }

}
