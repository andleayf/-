package com.xcy.pro.utils;

public class StringUtils {

    public static String[] getSkills(String projectSkill){

        if(projectSkill != null && !projectSkill.equals("")){
            return projectSkill.split("/");
        }else {
            return null;
        }
    }
}
