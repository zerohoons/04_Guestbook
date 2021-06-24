package com.ict.debug;

import java.util.Scanner;

/*디버깅: 논리적 오류를 잡기 위해 실행하는 행위.
 * 		해당 변수값을 조사한다. 자동적으로 수정을 할 수는 없다.
 * 
 * breakpoint : 중단점
 * 	>디버깅 실행 시, 자동으로 실행을 중단시키는 특정 지점. 변수값을 조사하려는 곳에 지정한다.
 * 	>좌측 Line Number를 더블클릭함으로써 설정하고 해제할 수 있다.
 * 
 * 단축기
 * 	> F11 : 디버그 실행모드
 * 	> F8  : 중단점에서 중단점으로 이동.
 * 	> F5  : 중단점에서 한 문장씩 실행하면서 이동. 메소드를 만나면 메소드 안으로 진입한다. 
 * 	> F6  : 중단점에서 한 문장씩 실행하면서 이동. 메소드를 만나도 진입하지 않는다. 건너뛴다.
 */
public class Ex01 {
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
		
		int sum = kor+mat+eng;
		double avg = (int)(sum/3.0*10)/10.0;
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
		
		System.out.println("이름\t국어\t영어\t수학\t총점\t학점");
		System.out.println(name+"\t"+kor+"\t"+eng+"\t"+mat+"\t"+sum+"\t"+hak);
	}
}
