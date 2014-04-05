package com.ciis.test.page.action;

import com.ciis.base.page.Page;
import com.ciis.test.page.model.User;
import com.ciis.test.page.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-20
 * Time: 下午10:07
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/userPage")
public class UserPageController {

    @Autowired
    IUserService userService;

    @RequestMapping(value = "/getUserForPage",method = RequestMethod.GET)
    public @ResponseBody Page<User> getUserForPage
            (@RequestParam(value = "page", required = false, defaultValue = "1") int page,
             @RequestParam(value = "max", required = false, defaultValue = "20") int max) throws Exception{
        Page<User> p = new Page<User>();
        List<User> us = new ArrayList<User>();
        try{
            p.setPage(1);
            us = userService.selectUser(p);
            p.setRows(us);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return p;
    }
}
