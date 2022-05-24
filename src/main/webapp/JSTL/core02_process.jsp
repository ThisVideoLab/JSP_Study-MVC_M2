<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String number = request.getParameter("number"); 
%>

	 스크립트릿 태그로 출력 :
	<%= number %> <p>     
	
	 JSTL로 출력  : 
	<c:out value="${param.number}" /> <p>    

	
	
<c:choose> <!-- 선택절 시작 -->
	<c:when test="${param.number % 2 == 0 }" > <!-- 조건절 시작 -->
		<c:out value = "${param.number}" /> 은 짝수 입니다. 
	</c:when> <!-- 조건절 종료 -->
	<c:when test="${param.number % 2 == 1 }" > <!-- 조건절 시작 --> 
		<c:out value = "${param.number}" /> 은 홀수 입니다. 
	</c:when> <!-- 조건절 종료 -->
	<c:otherwise> <!-- 조건절 시작 -->
		숫자가 아닙니다. 
	</c:otherwise> <!-- 조건절 종료 -->

</c:choose> <!-- 선택절 종료 -->

<!-- 그냥 익히 알던 if 문 while문 느낌인데 문법만 다른 느낌 -->


</body>
</html>