 package com.farm.service.impl;

import org.springframework.stereotype.Service;
import com.farm.dao.UserDao;
import com.farm.model.User;
import com.farm.service.UserService;

/**
 * @author user1
 * @date 2019/05/14
 */
@Service("UserService")
public class UserServiceImpl extends BaseServiceImpl<User, UserDao> implements UserService{
    
    //通过用户名和密码判断用户是否存在
    public User login(User user) {        
        return dao.queryUser(user);          
    }
        
}
