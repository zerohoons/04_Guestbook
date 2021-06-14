package com.ict.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class DAO {
	//MyBatis에서는 SqlSession 클래스를 통해 mapper.xml 파일의 태그들을 사용하여 DB에 접근한다.
	//이러한 방법을 통해 SQL문을 사용할 수 있게 된다.
	private static SqlSession ss;
	private synchronized static SqlSession getSession() {
		if(ss==null) {
			// ss = DBService.getFactory().openSession();		//select문
			// ss = DBService.getFactory().openSession(true);  //autocommit();
			
			//	트랜젝션 처리를 위해서 수동 commit()을 하자.
			ss = DBService.getFactory().openSession(false); //수동commit(); -> insert, delete, update 후 커밋 필수!
		}
		return ss;
	}
	
	// MyBatis select문은 4가지로 구분이 되어진다.
	/* > 결과가 여러개일때 	 : List<VO> <=selectList()
	 * > 결과가 하나일 때 	 : VO		<=selectOne()
	 * > 파라미터값이 없을 때	 : 
	 * > 파라미터값이 있을 때	 :
	 * 		 > 값이 두개이상 :	VO / Map을 무조건 사용해야한다.
	 */
	public static List<VO> getSelectAll() {
		List<VO> list = new ArrayList<VO>();
		
			//getSession().sql 명령과 같은 메소드 찾기.
			//list = getSession().selectList(mapper의 id);			파라미터값이 없는 경우
			//list = getSession().selectList("mapper의 id", 파라미터); 파라미터값이 있는 경우
			
			list = getSession().selectList("list");
			return list;
		}

	// 상세보기
	public static VO getSelectOne(String idx) {
			VO vo = null;
			vo = getSession().selectOne("onelist",idx);
			return vo;
	}
	
	// insert
	// getSession().insert(mapper의 id, 파라미터)
	// insert, update, delete의 경우 commit안하면 DB에 저장되지 않음.
	public static int getInsert(VO vo) {
		
			int result = 0;
			result = getSession().insert("insert", vo);
			ss.commit();
			return result;
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
