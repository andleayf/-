package com.xcy.pro.mapper;

import com.xcy.pro.pojo.ProjectQueryVo;
import com.xcy.pro.pojo.Teacher;

import java.util.List;

public interface TeacherMapper {
    List<Teacher> getTeacherList();

    List<Teacher> selectAllTeacher();

    void saveTeacher(Teacher teacher);

    void updateTeacherById(Teacher teacher);

    Teacher getTeacherById(int teacherId);

    int delTeacherById(int teacherId);

    void delBatchTeacher(ProjectQueryVo projectQueryVo);

    List<Teacher> selectTeacherList();
}
