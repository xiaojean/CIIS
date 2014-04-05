package com.ciis.back.module.service.impl;

import com.ciis.back.module.mapper.ITbSysModuleMapper;
import com.ciis.back.module.model.TbSysModule;
import com.ciis.back.module.service.ITbSysModuleService;
import com.ciis.base.page.IPage;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-23
 * Time: 下午12:03
 * To change this template use File | Settings | File Templates.
 */
@Service("tbSysModuleService")
public class TbSysModuleServiceImpl implements ITbSysModuleService {

    @Autowired
    ITbSysModuleMapper tbSysModuleMapper;

    @Override
    public List<TbSysModule> findModuleListByLevel(int level) throws Exception {
        return tbSysModuleMapper.findModuleListByLevel(level);
    }

    @Override
    public List<TbSysModule> findModuleListByParentId(String parentId) throws Exception {
        return tbSysModuleMapper.findModuleListByParentId(parentId);
    }

    @Override
    public List<TbSysModule> findAllModule() throws Exception {
        return tbSysModuleMapper.findAllModuleList();
    }

    @Override
    public IPage<TbSysModule> findAllModuleForPage(IPage page) throws Exception {
        HashMap<String,Object> params = new HashMap<String,Object>();
        params.put("level","3");
        page.setParams(params);
        List<TbSysModule> list = tbSysModuleMapper.findAllModuleForPage(page);
        page.setRows(list);
        return page;
    }

    @Override
    public boolean saveModule(TbSysModule module) throws Exception {
        String idStr = module.getId();
        if(StringUtils.isEmpty(idStr)){
            int id = tbSysModuleMapper.getMaxModuleId()+1;
            module.setId(String.valueOf(id));
            tbSysModuleMapper.addModule(module);
        }else{
            tbSysModuleMapper.updateModule(module);
        }

        return false;
    }

    @Override
    public boolean deleteModule(String id) throws Exception {
        String ids[] = id.split(",");
        for(String idEle : ids){
            TbSysModule module = new TbSysModule();
            module.setId(idEle);
            tbSysModuleMapper.deleteModule(module);
        }
        return false;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public TbSysModule findModuleById(String id) throws Exception {
        return tbSysModuleMapper.findModuleById(id);
    }
}
