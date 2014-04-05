package com.ciis.back.user.model;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-23
 * Time: 上午10:48
 * To change this template use File | Settings | File Templates.
 */
public class TbSysUser {

    private String ID ;
    private String NAME ;
    private String EMAIL;
    private String TELE;
    private String SOURCE;
    private String AUTH_CODE;
    private int LOGIN_ENABLE;
    private int ENABLE;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL;
    }

    public String getTELE() {
        return TELE;
    }

    public void setTELE(String TELE) {
        this.TELE = TELE;
    }

    public String getSOURCE() {
        return SOURCE;
    }

    public void setSOURCE(String SOURCE) {
        this.SOURCE = SOURCE;
    }

    public String getAUTH_CODE() {
        return AUTH_CODE;
    }

    public void setAUTH_CODE(String AUTH_CODE) {
        this.AUTH_CODE = AUTH_CODE;
    }

    public int getLOGIN_ENABLE() {
        return LOGIN_ENABLE;
    }

    public void setLOGIN_ENABLE(int LOGIN_ENABLE) {
        this.LOGIN_ENABLE = LOGIN_ENABLE;
    }

    public int getENABLE() {
        return ENABLE;
    }

    public void setENABLE(int ENABLE) {
        this.ENABLE = ENABLE;
    }
}
