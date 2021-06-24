package com.ict.test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.ict.junit.Ex01;

//assertEquals : 기본형 변수 또는 객체의 값이 예상값과 일치한지 검사
//assertSame : 두 객체가 같은 객체인지 검사 (주소가 같냐?)
//assertNull : null 검사 
//assertNotNull : not null 검사 
//assertTrue(a) : a가 참이지 검사 
//assertArrayEquals(a,b) : 배열a, 배열 b 가 일치한지 확인

//테스트 전 실행

//테스트 후 실행
public class Ex01Test {
	Ex01 t1;
	//테스트 전 실행 (선택사항)
	@Before
	public void t_before() {
		System.out.println(1);
		t1 = new Ex01();
		
	}
	@Test
	public void testAdd() {
		int result = t1.add(11, 5);
		//assertEqulas(예상값, 결과값);
		assertEquals(16, result);
	}
	
	@Test
	public void testsub() {
		/* int result = t1.sub(11, 5); -sub 메소드는 리턴값이 존재하지 않는다. */
		t1.sub(11, 5);
		//assertEqulas(예상값, 결과값);
		assertEquals(6, t1.getResult());
	}
	
	//테스트 후 실행(선택사항)
	@After
	public void t_after() {
		System.out.println(2);
	}

}
