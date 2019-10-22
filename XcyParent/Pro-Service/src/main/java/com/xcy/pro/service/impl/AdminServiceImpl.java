package com.xcy.pro.service.impl;


import com.xcy.pro.mapper.AdminMapper;
import com.xcy.pro.pojo.Admin;
import com.xcy.pro.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminMapper adminMapper;

    public boolean validateLogin(Admin admin) {
        int result = adminMapper.validateLogin(admin);

        return result > 0 ? true:false;
    }
}
