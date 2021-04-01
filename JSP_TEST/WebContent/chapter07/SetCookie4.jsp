<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>SetCookie4</title>
	</head>
	<body>
		<%
			Cookie myCookie1 = new Cookie("id", "hong");
			myCookie1.setMaxAge(5); // 5초 동안 유효
			response.addCookie(myCookie1);
			
			Cookie myCookie2 = new Cookie("name", URLEncoder.encode("심청", "utf-8"));
			response.addCookie(myCookie2);
			
			response.sendRedirect("GetCookie2.jsp");
		%>
	</body>
</html>