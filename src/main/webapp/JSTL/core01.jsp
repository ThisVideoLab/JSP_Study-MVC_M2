<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!-- JSTL 선언부 -->
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %> <!-- C 라고 정의해서 사용 가능해짐 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Browser 변수 설정
	<c:set var = "browser" value = "${header['User-Agent'] }"/> <!-- 브라우저 변수에 값을 할당 -->
	
	<br>
	<c:out value = "${browser }" /> <!-- 브라우저 변수에 할당된 값을 출력-->
	
	<p> Browser 변수 값 제거 후
		<c:remove var = "browser" /> <!-- 브라우저 변수에 값을 제거 -->
		<c:out value = "${browser }" /> <!-- 브라우저 변수값이 제거된 것을 확인 -->
</body>
</html>