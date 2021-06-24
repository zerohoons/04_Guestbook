package com.ict.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.ict.junit.Ex02_1;
import com.ict.junit.Ex02_3;
import com.ict.junit.Ex02_2;

public class Ex04_3Test {
	Ex02_3 t1 ;
	@Before
	public void t_be() {
		t1 = new Ex02_3();
	}
	@Test
	public void test() {
		assertEquals(40, t1.multiple(4, 10));
		assertEquals(-40, t1.multiple(4, -10));
	}

}
