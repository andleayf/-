package com.xcy.pro.pojo;

public class Teacher {
    private int teacherId;
    private String teacherName;
    private String teacherDetail;
    private String teacherImg;
    private String teacherQQ;
    private String teacherWX;

    public Teacher() {
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "teacherId=" + teacherId +
                ", teacherName='" + teacherName + '\'' +
                ", teacherDetail='" + teacherDetail + '\'' +
                ", teacherImg='" + teacherImg + '\'' +
                ", teacherQQ='" + teacherQQ + '\'' +
                ", teacherWx='" + teacherWX + '\'' +
                '}';
    }

    public int getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(int teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getTeacherDetail() {
        return teacherDetail;
    }

    public void setTeacherDetail(String teacherDetail) {
        this.teacherDetail = teacherDetail;
    }

    public String getTeacherImg() {
        return teacherImg;
    }

    public void setTeacherImg(String teacherImg) {
        this.teacherImg = teacherImg;
    }

    public String getTeacherQQ() {
        return teacherQQ;
    }

    public void setTeacherQQ(String teacherQQ) {
        this.teacherQQ = teacherQQ;
    }

    public String getTeacherWX() {
        return teacherWX;
    }

    public void setTeacherWX(String teacherWx) {
        this.teacherWX = teacherWx;
    }
}
