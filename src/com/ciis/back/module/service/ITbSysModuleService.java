package com.ciis.back.module.service;

import com.ciis.back.module.model.TbSysModule;
import com.ciis.base.page.IPage;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-23
 * Time: 下午12:02
 * To change this template use File | Settings | File Templates.
 */
public interface ITbSysModuleService {

    public List<TbSysModule> findModuleListByLevel(int level) throws Exception;

    public List<TbSysModule> findModuleListByParentId(String parentId) throws Exception;

    public List<TbSysModule> findAllModule() throws Exception;

    public IPage<TbSysModule> findAllModuleForPage(IPage page) throws Exception;

    public boolean saveModule(TbSysModule module) throws Exception;

    public boolean deleteModule(String id) throws Exception;

    public TbSysModule findModuleById(String id) throws Exception;
}
