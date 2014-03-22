package com.ciis.test.rest.model;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * UserBean: zhangdajun
 * Date: 14-3-11
 * Time: 上午10:06
 * To change this template use File | Settings | File Templates.
 */
public class UserBean implements Serializable {

    private String userName;
    private String passWord;
    private String loginId;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }
}
