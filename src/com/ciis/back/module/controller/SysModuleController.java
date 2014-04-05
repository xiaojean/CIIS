package com.ciis.back.module.controller;

import com.ciis.back.module.model.TbSysModule;
import com.ciis.back.module.service.ITbSysModuleService;
import com.ciis.base.page.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-23
 * Time: 下午12:05
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RestController
@RequestMapping("/module")
public class SysModuleController {

    @Autowired
    ITbSysModuleService tbSysModuleService;

    int page = 0;
    int max = 0;

    @RequestMapping(value = "/moduleListByLevel",method = RequestMethod.GET)
    public @ResponseBody
    List<TbSysModule> getModuleListByLevel(
            @RequestParam(value = "level", required = false) int level
    ) throws Exception{
        List<TbSysModule> moduleList = tbSysModuleService.findModuleListByLevel(level);
        return moduleList;
    }

    @RequestMapping(value = "/moduleListByParentId",method = RequestMethod.GET)
    public @ResponseBody
    List<TbSysModule> findModuleListByParentId(
            @RequestParam(value = "parentId", required = false) String parentId
    ) throws Exception{
        List<TbSysModule> moduleList = tbSysModuleService.findModuleListByParentId(parentId);
        return moduleList;
    }

    @RequestMapping(value = "/allModuleList",method = RequestMethod.GET)
    public @ResponseBody
    List<TbSysModule> findAllModuleList(
    ) throws Exception{
        List<TbSysModule> moduleList = tbSysModuleService.findAllModule();
        return moduleList;
    }

    @RequestMapping(value = "/findAllModuleListForPage",method = RequestMethod.GET)
    public @ResponseBody
    Page<TbSysModule> findAllModuleListForPage(Page page,String level) throws Exception{
        try{
            tbSysModuleService.findAllModuleForPage(page);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return page;
    }
    @RequestMapping(value = "/addModule",method = RequestMethod.POST)
    public String addModule(TbSysModule module){
        try{
            tbSysModuleService.saveModule(module);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return intoModuleListPage();
    }

    @RequestMapping(value = "/deleteModule",method = RequestMethod.GET,consumes = "application/json;charset=UTF-8")
    public String deleteModule(String idStr){
        try{
            tbSysModuleService.deleteModule(idStr);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return intoModuleListPage();
    }

    @RequestMapping(value = "/find/findModuleById" ,produces="application/json;charset=UTF-8", method = RequestMethod.GET )
    @ResponseBody
    public TbSysModule findModuleById(String id){
        TbSysModule module = new TbSysModule();
        try{
            module = tbSysModuleService.findModuleById(String.valueOf(id));
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return module;
    }

    @RequestMapping(value = "/intoModuleListPage",method = RequestMethod.GET)
    public String intoModuleListPage(){

        return "web/back/module/moduleList";
    }

    @RequestMapping(value = "/intoModuleConfigPage",method = RequestMethod.GET)
    public ModelAndView intoModuleConfigPage(String id){
        ModelAndView modelAndView = new ModelAndView();
        //modelAndView.addObject("id",id);
        if(id != null && !"".equals(id)){
            // 查询数据
            try{
                TbSysModule module = tbSysModuleService.findModuleById(id);
                modelAndView.addObject("module",module);
            }catch(Exception ex){
                ex.printStackTrace();
            }
        }
        modelAndView.setViewName("web/back/module/moduleEditor");
        return modelAndView;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getMax() {
        return max;
    }

    public void setMax(int max) {
        this.max = max;
    }
}
