package com.ict.debug;

public class Ex02_1 {

	public int getSum(int kor, int eng, int mat) {
		return (kor+eng+mat);
	}
	
	public double getAvg(int sum) {
		return (int)(sum/3.0*10)/10.0;
	}
	
	public String getHak(double avg) {
		String hak="";
		if(avg >= 90) {
			hak = "A";
		}else if(avg >= 80) {
			hak = "B";
		}else if(avg >= 70) {
			hak = "C";			
		}else {
			hak = "F";
		}
		return hak;
	}
}
