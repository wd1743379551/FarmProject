 package com.farm.service;

import com.farm.model.User;

public interface UserService extends BaseService<User>{
    
    User login(User user);
}
