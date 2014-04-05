package com.ciis.back.user.service;

import com.ciis.back.user.model.TbSysUser;
import com.ciis.base.page.IPage;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-23
 * Time: 上午11:18
 * To change this template use File | Settings | File Templates.
 */
public interface ITbSysUserService {

    public IPage<TbSysUser> getUserList(IPage page)throws Exception;
}
