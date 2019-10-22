package com.xcy.pro.service.impl;

import com.xcy.pro.mapper.UserMapper;
import com.xcy.pro.pojo.User;
import com.xcy.pro.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;
    public boolean valifateEmail(String userEmail) {
        int result= userMapper.selectUserByEmail(userEmail);
        return result>0? true:false;
    }

    public boolean loginUser(User user) {
        int result = userMapper.loginUser(user);
        return result >0? true : false;
    }

    public int insertUser(User user) {

        return userMapper.insertUser(user);
    }
}
