package com.ciis.base.page;

import org.apache.ibatis.plugin.*;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.Properties;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-4-3
 * Time: 上午9:40
 * To change this template use File | Settings | File Templates.
 */
//@Intercepts({ @Signature(method = "setParameters", type = ParameterHandler.class, args = {PreparedStatement.class})})
@Intercepts({@Signature(method = "selectList", type = SqlSessionTemplate.class, args = {
        java.lang.String.class, java.lang.Object.class, org.apache.ibatis.session.RowBounds.class
}),
        @Signature(method = "selectList", type = SqlSessionTemplate.class, args = {
                java.lang.String.class, java.lang.Object.class
        }),
        @Signature(method = "selectList", type = SqlSessionTemplate.class, args = {
                java.lang.String.class
        })

})
public class DynamicBindSqlInterceptor implements Interceptor {
    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        System.out.println(invocation.getArgs());
        return invocation.proceed();
    }

    @Override
    public Object plugin(Object o) {
        return Plugin.wrap(o, this);
    }

    @Override
    public void setProperties(Properties properties) {
        //To change body of implemented methods use File | Settings | File Templates.
    }
}
