package com.ciis.base.page;

import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-23
 * Time: 上午11:21
 * To change this template use File | Settings | File Templates.
 */
public interface IPage<T> {

    public abstract int getTotal();

    public abstract int getPageSize();

    public abstract int getPage();

    public abstract void setPage(int page);

    public abstract int getRecords();

    public abstract boolean isFirstPage();

    public abstract boolean isLastPage();

    public void setRecords(int records);

    public void setRows(List<T> rcds);

    public Map<String, Object> getParams();

    public void setParams(Map<String,Object> params);

}
