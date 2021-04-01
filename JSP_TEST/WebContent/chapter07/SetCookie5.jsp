<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>SetCookie5</title>
	</head>
	<body>
		<%
			Cookie myCookie1 = new Cookie("id", "hong");
			response.addCookie(myCookie1);
			
			Cookie myCookie2 = new Cookie("name", URLEncoder.encode("이름", "utf-8"));
			response.addCookie(myCookie2);
			
			response.sendRedirect("GetCookie5.jsp");
		%>
	</body>
</html>