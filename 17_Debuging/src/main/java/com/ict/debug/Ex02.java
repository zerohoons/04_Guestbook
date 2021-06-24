package com.ict.debug;

import java.util.Scanner;

public class Ex02 {
	public static void main(String[] args) {
Scanner sc = new Scanner(System.in);
		
		System.out.println("이름 : " );
		String name = sc.next();
		System.out.println("국어 : ");
		int kor = sc.nextInt();
		System.out.println("영어 : ");
		int eng = sc.nextInt();
		System.out.println("수학 : ");
		int mat = sc.nextInt();
		
		Ex02_1 test01 =new Ex02_1();
		int sum = test01.getSum(kor, eng, mat);
		double avg = test01.getAvg(sum);
		String hak = test01.getHak(avg);
		
		System.out.println("이름\t국어\t영어\t수학\t총점\t학점");
		System.out.println(name+"\t"+kor+"\t"+eng+"\t"+mat+"\t"+sum+"\t"+hak);
		
		
		//void 활용
		Ex02_2 test02 = new Ex02_2();
		test02.getSum(kor, eng, mat);
		test02.getAvg2();
		test02.getHak2();
	}
}
