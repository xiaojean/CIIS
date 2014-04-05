package com.ciis.back.user.controller;

import com.ciis.back.user.model.TbSysUser;
import com.ciis.base.page.IPage;
import com.ciis.base.page.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-23
 * Time: 上午11:31
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/sysuser")
public class UserController {

    @RequestMapping("/getUsers")
    public @ResponseBody
    IPage<TbSysUser> getUserList(@RequestParam IPage page) throws Exception{

        return new Page<TbSysUser>();
    }
}
