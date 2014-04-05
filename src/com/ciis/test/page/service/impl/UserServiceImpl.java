package com.ciis.test.page.service.impl;

import com.ciis.base.page.Page;
import com.ciis.test.page.dao.UserDao;
import com.ciis.test.page.model.User;
import com.ciis.test.page.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-20
 * Time: 下午10:05
 * To change this template use File | Settings | File Templates.
 */
@Service("userService")
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserDao userDao;

    @Override
    public List<User> selectUser(Page<User> page) throws Exception {
        page.setPage(1);
        return userDao.selectUser(page);  //To change body of implemented methods use File | Settings | File Templates.
    }
}
