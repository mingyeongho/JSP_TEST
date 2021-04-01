<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>application1</title>
	</head>
	<body>
		1. 웹 컨테이너의 이름과 버전 : <%= application.getServerInfo() %> <br>
		2. 서블릿의 메이저 버전 : <%= application.getMajorVersion() %> <br>
		3. 서블릿의 마이너 버전 : <%= application.getMinorVersion() %> <br>
		<hr>
		<%
			application.setAttribute("username", "MinGH");
			application.setAttribute("count", 1);
		%>
		
		<br>
		<a href="application1_Result.jsp">확인</a>
	</body>
</html>