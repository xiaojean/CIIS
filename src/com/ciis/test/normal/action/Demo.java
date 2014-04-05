package com.ciis.test.normal.action;

import com.ciis.test.normal.service.ITestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by shl on 14-2-26.
 */
@Controller
@RestController
@RequestMapping("web/back")
public class Demo {

    @Autowired
    ITestService testService;

   /* @RequestMapping(value="/springcontent",
            method=RequestMethod.GET,produces={"application/xml", "application/json"})*/
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String getOut(){
        try{
            List<String> ss = testService.selectVal();
            for(String s : ss){
                System.out.println("print value : " + s);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return "web/back/index";
    }

    @RequestMapping(value = "/direct/{blogId}",method = RequestMethod.GET)
    public String execte(@PathVariable String blogId){

        return "web/back/"+blogId;
    }
   
}
