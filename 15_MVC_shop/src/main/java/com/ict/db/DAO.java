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

	public static UVO getLogin(UVO uvo2) {
		UVO uvo =null;
		uvo = getSession().selectOne("login", uvo2);		
		return uvo;
	}

	public static int getProductInsert(VO vo) {
		int result = 0 ;
		System.out.println(vo.getCategory());
		result = getSession().insert("product_add", vo);
		System.out.println("result ; " + result);
		return result;
	}
}
