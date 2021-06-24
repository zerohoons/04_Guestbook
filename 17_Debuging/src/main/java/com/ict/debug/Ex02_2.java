package com.ict.debug;

public class Ex02_2 {
	
	private int sum;
	private double avg;
	private String hak;

	public void getSum(int kor, int eng, int mat) {
		sum = kor+eng+mat;
	}
	
	public void getAvg2() {
		avg = (int)(sum/3.0*10)/10.0;
	}
	
	public void getHak2() {
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
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

	public String getHak() {
		return hak;
	}

	public void setHak(String hak) {
		this.hak = hak;
	}
	
}
