<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>ModifyCookie</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies();
		
			if ( (cookies != null) && (cookies.length > 0)) {
				for (int i = 0; i < cookies.length; i++) {
					if (cookies[i].getName().equals("name")) {
						Cookie myCookie2 = new Cookie("name", URLEncoder.encode("심청", "utf-8"));
						response.addCookie(myCookie2);
					}
				}
			}
			
			response.sendRedirect("GetCookie2.jsp");
		%>
	</body>
</html>