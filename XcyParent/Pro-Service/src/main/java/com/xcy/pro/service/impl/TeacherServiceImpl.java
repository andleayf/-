package com.xcy.pro.service.impl;

import com.github.pagehelper.PageHelper;
import com.xcy.pro.mapper.TeacherMapper;
import com.xcy.pro.pojo.ProjectQueryVo;
import com.xcy.pro.pojo.Teacher;
import com.xcy.pro.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
@Service
public class TeacherServiceImpl implements TeacherService {

    @Autowired
    TeacherMapper teacherMapper;

    @Override
    public List<Teacher> getTeacherList() {
        return teacherMapper.getTeacherList();
    }
    public List<Teacher> selectAllTeacher(int page, int pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Teacher> teacherList = teacherMapper.selectAllTeacher();
        return teacherList;
    }

    public int saveOrUpdate(Teacher teacher) {
        int teacherId = 0;

        if(teacher.getTeacherId()!=0){
            teacherMapper.updateTeacherById(teacher);
            teacherId=teacher.getTeacherId();
        }else {
            teacherMapper.saveTeacher(teacher);
            teacherId=teacher.getTeacherId();
        }
        return teacherId;
    }

    public Teacher getTeacherById(int teacherId) {
        Teacher teacher = teacherMapper.getTeacherById(teacherId);
        return teacher;
    }

    public boolean delTeacherById(int teacherId) {
        int result = teacherMapper.delTeacherById(teacherId);
        return result>0? true:false;
    }

    public void delBatchTeacher(Integer[] ids) {
        ProjectQueryVo projectQueryVo = new ProjectQueryVo();
        List<Integer> idList = Arrays.asList(ids);
        projectQueryVo.setIdList(idList);
        teacherMapper.delBatchTeacher(projectQueryVo);
    }

    public List<Teacher> selectTeacherList() {
        List<Teacher> teacherList= teacherMapper.selectTeacherList();
        return teacherList;
    }

}
