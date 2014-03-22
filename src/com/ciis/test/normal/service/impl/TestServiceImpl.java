package com.ciis.test.normal.service.impl;

import com.ciis.test.normal.dao.AreaIntface;
import com.ciis.test.normal.service.ITestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * UserBean: zhangdajun
 * Date: 14-3-7
 * Time: 上午9:15
 * To change this template use File | Settings | File Templates.
 */
@Service("testService")
public class TestServiceImpl implements ITestService {

    @Autowired
    AreaIntface areaIntface;

    @Override
    public List<String> selectVal() throws Exception {
        return areaIntface.findClassArea();
    }
}
