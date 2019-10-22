package com.xcy.pro.service.impl;

import com.github.pagehelper.PageHelper;
import com.xcy.pro.mapper.AfterTeacherMapper;
import com.xcy.pro.pojo.Teacher;
import com.xcy.pro.pojo.TeacherVo;
import com.xcy.pro.service.AfterTeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;


@Service
public class AfterTeacherServiceImpl implements AfterTeacherService {
    @Autowired
    AfterTeacherMapper afterTeacherMapper;


    public List<Teacher> selectAllTeacher() {
        return null;
    }

    public void addOrUpdate(Teacher teacher) {
        if (teacher.getTeacherId() == 0){
            afterTeacherMapper.addTeacher(teacher);

        }else{
            afterTeacherMapper.updateTeacher(teacher);
        }
    }

    public List<Teacher> selectAllTeacher(int page, int pageSize,TeacherVo teacherVo) {
        PageHelper.startPage(page,pageSize);
        List<Teacher> teachers = afterTeacherMapper.selectAllTeacher(teacherVo);

        return teachers;
    }

    public Teacher SelectTeacherById(int id) {
        Teacher teacher = afterTeacherMapper.selectTeacherById(id);
        return teacher;
    }

    public void updateTeacher(Teacher teacher) {
        afterTeacherMapper.updateTeacherInfo(teacher);
    }

    public int afterTeacherDelete(int id) {
        int i = afterTeacherMapper.afterTeacherDelete(id);
        return i;
    }

    public void batchDelete(Integer[] ids) {
        TeacherVo teacherVo = new TeacherVo();
        List<Integer> integers = Arrays.asList(ids);
        teacherVo.setIdList(integers);

        afterTeacherMapper.batchDelete(teacherVo);
    }

    public List<String> selectTeacherName(String teacherName) {
        List<String> strings = afterTeacherMapper.selectTeacherName(teacherName);
        return strings;
    }
}
