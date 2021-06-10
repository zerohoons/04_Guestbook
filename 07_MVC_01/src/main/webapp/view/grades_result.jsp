<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		   <h2> 성적 확인 </h2>
      <table>
         <tbody>
            <tr><td>이름 </td><td>${name} 점</td> </tr>
            <tr><td>국어 </td><td>${kor} 점</td> </tr>
            <tr><td>영어 </td><td>${eng } 점</td> </tr>
            <tr><td>수학 </td><td>${math } 점</td> </tr>
            <tr><td>총점 </td><td>${sum } 점</td> </tr>
            <tr><td>평균 </td><td>${avg } 점</td> </tr>
            <tr><td>학점 </td>
            <td>
            <c:choose>
            	<c:when test="${avg }>=90"> 
            	<li> A학점 </li>
            	</c:when>
            	<c:when test="${avg }>=90"> 
            	<li> B학점 </li>
            	</c:when>
            	<c:when test="${avg }>=90"> 
            	<li> C학점 </li>
            	</c:when>
            	<c:otherwise>
            	<li> F학점</li>
            	</c:otherwise>
            </c:choose>
            </td>
            </tr>
            
         </tbody>
         <tfoot>
            <tr>
            </tr>
         </tfoot>
      </table>
            <h2>${name }님의 성적은 국어 ${kor } 점, 영어 ${eng } 점, 수학 ${math } 점 으로</h2>
            <h2>총 ${sum } 점 입니다. 평균 ${avg } 점으로 학점은 위와 같습니다.</h2>
	</div>
</body>
</html>