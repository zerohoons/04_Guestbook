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
	
	public static int getCount() {
		int result =0;
		result = getSession().selectOne("count");
		return result;
	}
	
	public static List<BVO> getList(int begin, int end) {
		List<BVO> list = null;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		
		list = getSession().selectList("list",map);
		return list;
	}

	public static int getInsert(BVO bvo) {
		int result = 0;
		result = getSession().insert("insert",bvo);
		ss.commit();
		return result;
	}
	
	public static BVO getOneList(String b_idx) {
		BVO bvo = null;
		bvo = getSession().selectOne("onelist", b_idx);
		return bvo;
	}

	public static int getDelete(BVO bvo) {
		int result = 0;
		result = getSession().delete("delete",bvo);
		ss.commit();
		return result;
	}
	
	public static int getUpdate(BVO bvo) {
		int result = 0;
		result = getSession().update("update",bvo);
		ss.commit();
		return result;
	}
	
	//조회수 업데이터
	public static int getHitUp(String b_idx) {
		int result = 0;
		result = getSession().update("hitup",b_idx);
		ss.commit();
		return result;
	}
	
	public static List<CVO> getcList(String b_idx){
		List<CVO> clist = null;
		clist = getSession().selectList("clist",b_idx);
		return clist;
	}
	
	public static int getComm_Insert(CVO cvo) {
		int result = 0;
		result = getSession().insert("comm_ins",cvo);
		ss.commit();
		return result;
	}
	
	public static int getComm_Delete(String c_idx) {
		int result = 0;
		result = getSession().insert("comm_del",c_idx);
		ss.commit();
		return result;
	}

}
