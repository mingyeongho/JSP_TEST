<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>DelCookie5</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies();
		
			if ((cookies != null) && (cookies.length > 0)) {
				for (int i = 0; i < cookies.length; i++) {
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			} else {
				out.println("No Cookies!");
			}
			
			out.println("<a href='GetCookie2.jsp'>쿠키 출력</a>");
		%>
	</body>
</html>