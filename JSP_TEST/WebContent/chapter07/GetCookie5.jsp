<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>GetCookie5</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies();
		
			if ( (cookies != null) && (cookies.length > 0)) {
				for (int i = 0; i < cookies.length; i++) {
					out.println(cookies[i].getName() + "<br>");
					out.println(URLDecoder.decode(cookies[i].getValue(), "utf-8")+ "<br><br>");
				}
			} else {
				out.println("No Cookies");
			}
			
			out.println("<a href='DelCookie5.jsp'>쿠키 제거</a>");
		%>
	</body>
</html>