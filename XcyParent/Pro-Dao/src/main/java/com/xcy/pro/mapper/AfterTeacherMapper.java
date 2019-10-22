package com.xcy.pro.mapper;

import com.xcy.pro.pojo.Teacher;
import com.xcy.pro.pojo.TeacherVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AfterTeacherMapper {

    List<Teacher> selectAllTeacher(TeacherVo teacherVo);

    void addTeacher(Teacher teacher);

    Teacher selectTeacherById(int id);

    void updateTeacher(Teacher teacher);

    void updateTeacherInfo(Teacher teacher);

    int afterTeacherDelete(int id);

    void batchDelete(TeacherVo teacherVo);

    List<String> selectTeacherName(@Param("teacherName")String teacherName);
}
