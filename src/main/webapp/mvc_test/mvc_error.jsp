<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "com.model.LoginBean" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 실패 페이지</title>
</head>
<body>


	<p> 로그인에 실패했습니다. 아이디와 비밀번호를 확인해 주세요.
	<%@ include file ="mvc.jsp" %> <!-- 다시 로그인 페이지를 불러옴. -->
	

</body>
</html>