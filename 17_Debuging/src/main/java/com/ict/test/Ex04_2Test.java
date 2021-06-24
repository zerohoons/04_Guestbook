package com.ict.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.ict.junit.Ex02_2;

public class Ex04_2Test {
	Ex02_2 t1 ;
	@Before
	public void t_be() {
		t1 = new Ex02_2();
	}
	@Test
	public void test() {
		assertEquals(40, t1.minus(60, 20)); 
		assertEquals(20, t1.minus(10, -10));
	}

}
