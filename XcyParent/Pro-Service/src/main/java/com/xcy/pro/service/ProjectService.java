package com.xcy.pro.service;

import com.xcy.pro.pojo.Project;

import java.util.List;

public interface ProjectService {

    Project getProjectById(int projectId);

    List<Project> getProjectList();

    int saveOrUpdate(Project project);

    //Project getProjectById(int projectId);

    boolean delProjectById(int projectId);

    void delBatchProject(Integer[] ids);

    List<Project> selectAllProject(int page,int pageSize);
}
