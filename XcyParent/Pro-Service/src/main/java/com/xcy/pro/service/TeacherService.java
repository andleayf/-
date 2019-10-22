package com.xcy.pro.service;

import com.xcy.pro.pojo.Teacher;

import java.util.List;

public interface TeacherService {

    List<Teacher> getTeacherList();

    List<Teacher> selectAllTeacher(int page, int pageSize);

    int saveOrUpdate(Teacher teacher);

    Teacher getTeacherById(int teacherId);

    boolean delTeacherById(int teacherId);

    void delBatchTeacher(Integer[] ids);

    List<Teacher> selectTeacherList();
}
