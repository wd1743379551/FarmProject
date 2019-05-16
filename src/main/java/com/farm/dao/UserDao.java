 package com.farm.dao;

import com.farm.model.User;

/**
 * @author user1
 * @date 2019/05/14
 */
public interface UserDao extends BaseDao<User>{
    //查询接口
    User queryUser(User user);
}
