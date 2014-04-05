package com.ciis.base.jqgrid;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * UserBean: zhangdajun
 * Date: 14-3-18
 * Time: 下午12:39
 * To change this template use File | Settings | File Templates.
 */
@XmlRootElement
public class ViewPage<T> {
    private List<T> rows;
    private int page;
    private int max;
    private int total;

    public ViewPage() {
    }
    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
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

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
