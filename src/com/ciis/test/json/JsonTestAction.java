package com.ciis.test.json;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;

/**
 * Created with IntelliJ IDEA.
 * UserBean: zhangdajun
 * Date: 14-3-12
 * Time: 下午12:56
 * To change this template use File | Settings | File Templates.
 */

@Controller
@RequestMapping("/jsonTest")
public class JsonTestAction {

    private HashMap<String,String> params = new HashMap<String,String>();

        @RequestMapping(value = "/zhangdj/{id}/mains.do" ,produces="application/json;charset=UTF-8", method = RequestMethod.GET )
    @ResponseBody
    public HashMap<String,String> method1(@PathVariable("id") String id) throws Exception{
        HashMap<String,String> jsonPOJOObj = new HashMap<String,String>();
        jsonPOJOObj.put("zhangdj","1");
        jsonPOJOObj.put("id",id);
        return jsonPOJOObj;
    }
}
