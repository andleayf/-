package com.xcy.pro.service.impl;

import com.github.pagehelper.PageHelper;
import com.xcy.pro.mapper.ProjectMapper;
import com.xcy.pro.pojo.Project;
import com.xcy.pro.pojo.ProjectQueryVo;
import com.xcy.pro.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    ProjectMapper projectMapper;
    @Override
    public Project getProjectById(int projectId) {
        Project project =  projectMapper.getProjectById(projectId);
        return project;
    }

    @Override
    public List<Project> getProjectList() {
        List<Project> projectList = projectMapper.getProjectList();
        return projectList;
    }


    public List<Project> selectAllProject(int page,int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Project>  projectList =projectMapper.selectAllProject();
        return projectList;
    }


    public int saveOrUpdate(Project project) {
        int projectId = 0;
        if(project.getProjectId()!=0){
            projectMapper.updateProjectById(project);
            projectId =project.getProjectId();
        }else{
            projectMapper.saveProject(project);
            projectId =project.getProjectId();
        }
        return projectId;
    }

//    public Project getProjectById(int projectId) {
//        Project project = projectMapper.getProjectById(projectId);
//        return project;
//    }

    public boolean delProjectById(int projectId) {
        int result = projectMapper.delProjectById(projectId);
        return result > 0 ? true:false;
    }

    public void delBatchProject(Integer[] ids) {
        ProjectQueryVo projectQueryVo = new ProjectQueryVo();
        List<Integer> idList = Arrays.asList(ids);
        projectQueryVo.setIdList(idList);
        projectMapper.delBatchProject(projectQueryVo);
    }
}
