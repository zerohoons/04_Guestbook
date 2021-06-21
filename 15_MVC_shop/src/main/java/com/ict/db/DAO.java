package com.ict.db;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class DAO {
	private static SqlSession ss;
	private synchronized static SqlSession getSession() {
		if(ss==null) {
			ss=DBService.getFactory().openSession(false);
			
		}
		return ss;
	}
	
	public static List<VO> getList(String category) {
		List<VO> list = null;
		list = getSession().selectList("list", category);
		return list;
	}
	
	// 상세보기
	public static VO getOneList(String idx) {
		VO vo = null;
		vo = getSession().selectOne("onelist", idx);
		return vo;
	}
}
