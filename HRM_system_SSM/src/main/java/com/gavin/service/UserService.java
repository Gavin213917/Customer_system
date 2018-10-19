package com.gavin.service;

import com.gavin.model.User;

public interface UserService {
    //登录
    User login(String u_name, String u_pass);

    //  注册
    boolean register(User user);
}
