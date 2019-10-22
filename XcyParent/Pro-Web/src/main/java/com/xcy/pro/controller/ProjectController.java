package com.xcy.pro.controller;

import com.github.pagehelper.PageInfo;
import com.xcy.pro.pojo.Project;
import com.xcy.pro.pojo.Teacher;
import com.xcy.pro.service.ProjectService;
import com.xcy.pro.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    ProjectService projectService;
    @Autowired
    TeacherService teacherService;

    @RequestMapping("/getProjectById")
    @ResponseBody
    public Project getProjectByIdS(int projectId, Model model){
        Project project = projectService.getProjectById(projectId);
        model.addAttribute("project",project);
        return project;
    }

    @RequestMapping("/getProjectList")
    @ResponseBody
    public String getProjectList(HttpSession session){
        List<Project> projectList =  projectService.getProjectList();
        //request.setAttribute("projectList",projectList);
        //model.addAttribute("projectList",projectList);
        if(projectList != null && !projectList.isEmpty()){
            session.setAttribute("projectList",projectList);
            System.out.println(projectList.get(1).getProjectName());
            return "success";
        }else
            return "fail";
    }



    @RequestMapping("list")
    public String list(Model model, @RequestParam(name = "page",required = false,defaultValue="1") int page, @RequestParam(name="pageSize",required = false,defaultValue="5")int pageSize){

        List<Project> projectList = projectService.selectAllProject(page,pageSize);
        List<Teacher> teacherList = teacherService.selectTeacherList();
        model.addAttribute("teacherList",teacherList);
        PageInfo<Project> pageInfo = new PageInfo<Project>(projectList);
        model.addAttribute("pageInfo",pageInfo);

        return "after/projectmanager";
    }
    @RequestMapping("addproject")
    public String showAddProject (Model model){
        List<Teacher> teacher = teacherService.selectTeacherList();
        model.addAttribute("teacher",teacher);
        return "after/projectchange";
    }
    @RequestMapping("saveOrUpdate")
    public String saveOrUpdate(Project project){
        int result = projectService.saveOrUpdate(project);
        return "redirect:/project/list";
    }

    @RequestMapping("edit")
    public String getProjectById(int projectId , Model model){
        Project project = projectService.getProjectById(projectId);
        model.addAttribute("project",project);
        return "after/projectchange";
    }
    @RequestMapping("delProjectById")
    @ResponseBody
    public String delProjectById(int projectId){
        boolean result = projectService.delProjectById(projectId);
        if(result){
            return  "success";
        }else{
            return  "fail";
        }

    }

    @RequestMapping("delBatchProject")
    public String delBatchProject(Integer[] ids){
        projectService.delBatchProject(ids);
        return "redirect:/project/list";
    }

}
