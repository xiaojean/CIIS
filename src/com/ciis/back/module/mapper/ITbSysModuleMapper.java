package com.ciis.back.module.mapper;

import com.ciis.back.module.model.TbSysModule;
import com.ciis.base.page.IPage;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-23
 * Time: 上午11:52
 * To change this template use File | Settings | File Templates.
 */
@Repository("tbSysModuleMapper")
public interface ITbSysModuleMapper {
    public List<TbSysModule> findModuleListByLevel(int level) throws Exception;

    public List<TbSysModule> findModuleListByParentId(String parentId) throws Exception;

    @Select("select * from tb_sys_module")
    public List<TbSysModule> findAllModuleList() throws Exception;

    public List<TbSysModule> findAllModuleForPage(IPage page) throws Exception;

    public void addModule(TbSysModule module) throws Exception;

    public void updateModule(TbSysModule module) throws Exception;

    public void deleteModule(TbSysModule module) throws Exception;

    @Select("select max(cast(id as unsigned int)) from tb_sys_module")
    public int getMaxModuleId() throws Exception;

    @Select("select * from tb_sys_module where id=#{id}")
    public TbSysModule findModuleById(String id) throws Exception;
}
