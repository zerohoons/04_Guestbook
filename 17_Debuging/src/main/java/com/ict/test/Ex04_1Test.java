package com.ict.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.ict.junit.Ex02_1;

public class Ex04_1Test {
	Ex02_1 t1 ;
	@Before
	public void t_be() {
		t1 = new Ex02_1();
	}
	@Test
	public void test() {
		assertEquals(40, t1.plus(30, 10));
		assertEquals(20, t1.plus(30, -10));
		
	}

}
