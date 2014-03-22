package com.ciis.test.page.dao;

import com.ciis.base.page.Page;
import com.ciis.test.page.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-20
 * Time: 下午9:59
 * To change this template use File | Settings | File Templates.
 */
@Repository("userDao")
public interface UserDao {

    public List<User> selectUser(Page<User> page) throws Exception;

}
