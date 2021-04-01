<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>GetCookie2</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies();
		
			if ( (cookies != null) && (cookies.length > 0)) { // cookie 배열을 만들 때 고정적으로 사용
				for (int i = 0; i < cookies.length; i++) {
					out.println(cookies[i].getName() + ": ");
					out.println(URLDecoder.decode(cookies[i].getValue(), "utf-8") + "<br>");
				}
			} else {
				out.println("No Cookies!!");
			}
		%>
	</body>
</html>