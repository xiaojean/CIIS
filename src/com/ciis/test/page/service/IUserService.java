package com.ciis.test.page.service;

import com.ciis.base.page.Page;
import com.ciis.test.page.model.User;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-20
 * Time: 下午10:04
 * To change this template use File | Settings | File Templates.
 */
public interface IUserService {
    public List<User> selectUser(Page<User> page) throws Exception;
}
