package com.ciis.test.rest.action;

import com.ciis.test.rest.model.UserBean;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created with IntelliJ IDEA.
 * UserBean: zhangdajun
 * Date: 14-3-11
 * Time: 上午10:08
 * To change this template use File | Settings | File Templates.
 */
@RestController
@RequestMapping("/user")
public class UserController1 {

    @RequestMapping(value = "/{id}" , method = RequestMethod.GET)
    public UserBean view(@PathVariable("id") String id){
        UserBean u = new UserBean();
        u.setLoginId(id);
        u.setPassWord("1818181");
        u.setUserName("user"+id);
        return u;
    }
}
