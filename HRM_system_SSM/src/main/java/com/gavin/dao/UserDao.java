package com.gavin.dao;

import com.gavin.model.User;

public interface UserDao {
    boolean addUser(User user);
    
    User getUser(User user);
}
