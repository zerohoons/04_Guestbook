package com.ict.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.ict.junit.Ex02_1;
import com.ict.junit.Ex02_3;
import com.ict.junit.Ex02_2;
import com.ict.junit.Ex02_4;

public class Ex04_4Test {
	Ex02_4 t1 ;
	@Before
	public void t_be() {
		t1 = new Ex02_4();
	}
	@Test
	public void test() {
		assertEquals(10, t1.div(40, 4));
		assertEquals(10, t1.div(-40, 4));
	}

}
