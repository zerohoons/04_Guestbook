package com.ict.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.ibatis.session.SqlSession;

public class DAO {
	private static SqlSession ss;
	private synchronized static SqlSession getSession() {
		if(ss==null) {

			ss = DBService.getFactory().openSession(false); //수동commit(); -> insert, delete, update 후 커밋 필수!
		}
		return ss;
	}
	
	// list
	public static List<VO> getSelectAll() {
			List<VO> list = new ArrayList<VO>();
			list = getSession().selectList("list");
			return list;
	}

	// insert
	public static int getInsert(VO vo) {
			int result = 0;
			result = getSession().insert("insert",vo);
			ss.commit();
			return result;
	}

	// 상세보기
	public static VO getSelectOne(String idx) {

			VO vo = null;
			vo = getSession().selectOne("onelist",idx);
			return vo;
	}

	// update
	public static int getUpdate(VO vo) {
			int result = 0;
			result = getSession().update("update",vo);
			ss.commit();
			return result;
	}

	// delete
	public static int getDelete(VO vo) {
			int result = 0;
			result = getSession().delete("delete", vo);
			ss.commit();
			return result;
	}
}
