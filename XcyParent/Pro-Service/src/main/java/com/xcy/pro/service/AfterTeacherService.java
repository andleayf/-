package com.xcy.pro.service;

import com.xcy.pro.pojo.Teacher;
import com.xcy.pro.pojo.TeacherVo;

import java.util.List;

public interface AfterTeacherService {

    List<Teacher> selectAllTeacher();

    void addOrUpdate(Teacher teacher);

    List<Teacher> selectAllTeacher(int page, int pageSize, TeacherVo teacherVo);

    Teacher SelectTeacherById(int id);

    void updateTeacher(Teacher teacher);

    int afterTeacherDelete(int id);

    void batchDelete(Integer[] ids);

    List<String> selectTeacherName(String teacherName);
}
