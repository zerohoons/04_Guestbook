package com.ict.junit;
/*	JUnit : 단위 테스트(TDD) 프레임워크 중 하나이다.
 			테스크 중 블랙박스 모델이다.
 			입력값에 대한 결과값을 성공, 실패로 평가한다. (성공이면 녹색, 실패면 붉은색)
 			
 	이클립스에서 JUnit 설정하기.
 	> 프로젝트 - 마우스 우클릭 - properties - java build path - libraries - add library - JUnit (ver4 사용)
 */
public class Ex01 {
	//JUnit 사용하기.
	/* 방법 1. 해당 클래스에서 마우스 우클릭 - 새로만들기 - JUnit Test Case - next - 테스트할 메소드 선택
	 */
	
	private int result;
	
	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	//테스트할  메소드
	public int add(int s1,int s2) {
		return s1+s2;
	}
	
	public void sub(int s1, int s2) {
		result = s1-s2;
	}
}
