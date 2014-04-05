package com.ciis.test.normal.dao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("areaIntface")
public interface AreaIntface {
	public List<String> findClassArea();
}
