package com.xcy.pro.mapper;

import com.xcy.pro.pojo.User;

public interface UserMapper {

    int selectUserByEmail(String userEmail);

    int loginUser(User user);

    int insertUser(User user);
}
