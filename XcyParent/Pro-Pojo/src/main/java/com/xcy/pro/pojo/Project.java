package com.xcy.pro.pojo;

import com.xcy.pro.utils.StringUtils;

public class Project {
    private int projectId;
    private String projectName;
    private String projectSkill;
    private String projectDetail;
    private String projectBeforeUrl;
    private String projectAfterUrl;
    private String projectImg1;
    private String projectImg2;
    private String projectImg3;
    private String projectImg4;
    private String projectImg5;
    private int tId;
    private String teacherName;
    private String[] skills;

    public String getTeacherName() {
        return teacherName;
    }

    public String[] getSkills() {

        return StringUtils.getSkills(projectSkill);
    }

    public void setSkills(String[] skills) {
        this.skills = skills;
    }

    public int gettId() {
        return tId;
    }

    public void settId(int tId) {
        this.tId = tId;
    }

    public Project() {

    }



    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectSkill() {
        return projectSkill;
    }

    public void setProjectSkill(String projectSkill) {
        this.projectSkill = projectSkill;
    }

    public String getProjectBeforeUrl() {
        return projectBeforeUrl;
    }

    public void setProjectBeforeUrl(String projectBeforeUrl) {
        this.projectBeforeUrl = projectBeforeUrl;
    }

    public String getProjectAfterUrl() {
        return projectAfterUrl;
    }

    public void setProjectAfterUrl(String projectAfterUrl) {
        this.projectAfterUrl = projectAfterUrl;
    }

    public String getProjectDetail() {
        return projectDetail;
    }

    public void setProjectDetail(String projectDetail) {
        this.projectDetail = projectDetail;
    }

    public String getProjectImg1() {
        return projectImg1;
    }

    public void setProjectImg1(String projectImg1) {
        this.projectImg1 = projectImg1;
    }

    public String getProjectImg2() {
        return projectImg2;
    }

    public void setProjectImg2(String projectImg2) {
        this.projectImg2 = projectImg2;
    }

    public String getProjectImg3() {
        return projectImg3;
    }

    public void setProjectImg3(String projectImg3) {
        this.projectImg3 = projectImg3;
    }

    public String getProjectImg4() {
        return projectImg4;
    }

    public void setProjectImg4(String projectImg4) {
        this.projectImg4 = projectImg4;
    }

    public String getProjectImg5() {
        return projectImg5;
    }

    public void setProjectImg5(String projectImg5) {
        this.projectImg5 = projectImg5;
    }

    @Override
    public String toString() {
        return "Project{" +
                "projectId=" + projectId +
                ", projectName='" + projectName + '\'' +
                ", projectSkill='" + projectSkill + '\'' +
                ", projectBeforeUrl='" + projectBeforeUrl + '\'' +
                ", projectDetail='" + projectDetail + '\'' +
                ", projectImg1='" + projectImg1 + '\'' +
                ", projectImg2='" + projectImg2 + '\'' +
                ", projectImg3='" + projectImg3 + '\'' +
                ", projectImg4='" + projectImg4 + '\'' +
                ", projectImg5='" + projectImg5 + '\'' +
                ", tId=" + tId +
                '}';
    }

}
