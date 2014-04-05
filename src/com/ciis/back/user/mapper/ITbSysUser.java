package com.ciis.back.user.mapper;

import com.ciis.back.user.model.TbSysUser;
import com.ciis.base.page.Page;
import org.springframework.stereotype.Repository;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-23
 * Time: 上午10:55
 * To change this template use File | Settings | File Templates.
 */
@Repository("tbSysUser")
public interface ITbSysUser {

    public Page<TbSysUser> listUser(Page page) throws Exception;
}
