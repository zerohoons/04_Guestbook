package com.ict.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.ict.junit.Ex02_1;
import com.ict.junit.Ex02_3;
import com.ict.junit.Ex02_2;
import com.ict.junit.Ex02_4;

public class Ex02Test {
	Ex02_1 t1;
	Ex02_3 t2;
	Ex02_2 t3;
	Ex02_4 t4;
	@Before
	public void t_before(){
		t1 = new Ex02_1();
		t2 = new Ex02_3();
		t3 = new Ex02_2();
		t4 = new Ex02_4();

	}
	@Test
	public void test() {
		assertEquals(8, t1.plus(5,3));
		assertEquals(15, t2.multiple(5,3));
		assertEquals(2, t3.minus(5,3));
		assertEquals(1, t4.div(5,3));
		assertEquals(1, t4.div2(5,3));
	}

}
