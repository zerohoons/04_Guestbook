package com.ict.db;

public class MyBatis {
/*
 	개발자가 지정한 SQL, 저장 프로시저, 그리고 몇가지 고급 매핑을 지원하는 퍼시스턴스 프레임워크.
 	자바 SQL 프래임워크이다. (SQL Mappong Framework for Java)
 	https://github.com/mybatis/mybatis-3/releases/tag/mybatis-3.5.7
 	위 사이트에서 다운로드 후, jar파일을 WEP-INF-lib 안에 넣어준다.
 	
 	실행을 위해 5개의 파일이 필요하다.
 	> DAO, VO, DBservice, config.xml, mapper.xml
 		- VO 		: DB 정보를 담는 객체 (해당 변수가 DB컬럼명과 같아야한다.)
 		- DAO		: DB에 접근해서 검색, 삽입, 삭제, 수정할 수 있도록 지원하는 객체
 		- DBservice : config.xml을 읽어서 MyBatis가 DB에 접근하고 실행할 수 있도록 도와주는 클래스
 		- config.xml: DB에 접근할 수 있는 환경설정과 실제 DB를 처리하고 결과를 얻어내는 mapper.xml의 위치를 지정해주는 환경설정파일
 		- mapper.xml: 실제 DB처리를 하고 결과를 얻어내는 역할을 하는 xml파일. DAO에서 mapper.xml을 호출해서 사용한다.
 		
 		>xml은 태그로 구성되어있다.
 		 HTML 태그를 사용하는 것이 아니라, 자기만의 고유 태그를 만들어 사용한다.
 		 자기만의 고유태그에 의미를 부여하기 위해서는 DTD라는 문서를 만들어야하는데,
 		 MyBatis에서 만든 DTD문서를 활용해서 고유 태그를 사용할 수 있다.
 		 고유태그에는 <select>,<update>,<delete>,<insert>태그 등이 있다.
 		 
 		 ex)
 		 <select id ="" resultType="" parameterType="">
 		 	실제 sql 구문 작성
 		 </select>
 		 
 		 insert, update, delete 태그는 id와 parameterType만 존재한다.
 		 =>resultType은 존재하지 않는다. (결과가 항상 숫자이기 때문에)
 		 ex)
 		 <insert id ="" parameterType="">
 		 	실제 sql 구문 작성 (?대신 #{})
 		 </insert>
 		 <update id ="" parameterType="">
 		 	실제 sql 구문 작성 (?대신 #{})
 		 </insert>
 		 <delete id ="" parameterType="">
 		 	실제 sql 구문 작성 (?대신 #{})
 		 </insert>
 		 
 	
 */
}
