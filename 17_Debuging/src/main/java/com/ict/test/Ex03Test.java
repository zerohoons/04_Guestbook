package com.ict.test;

import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.Collection;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

import com.ict.junit.Ex01;

//Ex01Test의 마지막 버전의 변경. 하나의 메소드의 여러개의 테스트 케이스를 이용하는 것.
@RunWith(Parameterized.class)
public class Ex03Test {
	Ex01 t1;
	private int expected;
	private int valueA;
	private int valueB;
	
	@Before
	public void test_before() {
		t1 = new Ex01();
	}

	public Ex03Test(int expected, int valueA, int valueB) {
		super();
		this.expected = expected;
		this.valueA = valueA;
		this.valueB = valueB;
	}
	@Parameters
	public static Collection<Integer[]> getTestParameters(){
		return Arrays.asList(new Integer[][]{
			{21,16,5},{11,16,-5},{-11,-16,5},{-21,-16-5}
		});
	}
	
	@Test
	public void test() {
		assertEquals(expected, t1.add(valueA, valueB));
	}

}
