package com.gavin.service.impl;

import com.gavin.dao.UserDao;
import com.gavin.model.User;
import com.gavin.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    //登录
    public User login(String u_name, String u_pass) {
        if (u_name == null || u_pass == null) {
            return null;
        }
        User user = new User();
        user.setU_name(u_name);
        user.setU_pass(u_pass);
        User u = userDao.getUser(user);
        if (u != null) {
            return u;
        }
        return null;
    }

    //注册
    public boolean register(User user) {
        if (user == null) {
            return false;
        }
//        User user1 = new User();
//        user1.setU_name(user.getU_name());
//        User u = userDao.getUser(user1);
//        if (u != null) {
//            return false;
//        }
        return userDao.addUser(user);
    }
}
