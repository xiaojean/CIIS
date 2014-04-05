package com.ciis.test.bean.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;

/**
 * Created with IntelliJ IDEA.
 * UserBean: zhangdajun
 * Date: 14-3-16
 * Time: 下午12:02
 * To change this template use File | Settings | File Templates.
 */
//@Scope("prototype")
@Controller
@RequestMapping("/zhangdj")
public class BeanController {

    // 备注，在通过ModuleAndView返回页面时，不能使用param作为key返回，param作为springmvc的默认参数
    @RequestMapping(value = "/bean/test", method = RequestMethod.GET)
    public ModelAndView getBean(ModelAndView model) throws Exception{
        HashMap<String,String> responseParam = new HashMap<String,String>();
        responseParam.put("KEY1", "VAL1");
        responseParam.put("KEY2", "VAL2");
        responseParam.put("KEY3", "VAL3");
        //model.put("param","test");
        model.addObject("zhangdj",responseParam);
        model.setViewName("/web/bean/test");
        return model;
    }
}
