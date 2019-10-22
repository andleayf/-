package com.xcy.pro.mapper;

import com.xcy.pro.pojo.Project;
import com.xcy.pro.pojo.ProjectQueryVo;

import java.util.List;

public interface ProjectMapper {

    Project getProjectById(int projectId);

    List<Project> getProjectList();

    void saveProject(Project project);

   // Project getProjectById(int projectId);

    void updateProjectById(Project project);

    int delProjectById(int projectId);

    void delBatchProject(ProjectQueryVo projectQueryVo);

    List<Project> selectAllProject();
}
