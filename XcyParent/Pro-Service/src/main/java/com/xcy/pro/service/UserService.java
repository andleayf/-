package com.xcy.pro.service;

import com.xcy.pro.pojo.User;

public interface UserService {
    boolean valifateEmail(String userEmail);

    boolean loginUser(User user);

    int insertUser(User user);
}
