<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!-- JSTL ����� -->
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %> <!-- C ��� �����ؼ� ��� �������� -->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Browser ���� ����
	<c:set var = "browser" value = "${header['User-Agent'] }"/> <!-- ������ ������ ���� �Ҵ� -->
	
	<br>
	<c:out value = "${browser }" /> <!-- ������ ������ �Ҵ�� ���� ���-->
	
	<p> Browser ���� �� ���� ��
		<c:remove var = "browser" /> <!-- ������ ������ ���� ���� -->
		<c:out value = "${browser }" /> <!-- ������ �������� ���ŵ� ���� Ȯ�� -->
</body>
</html>