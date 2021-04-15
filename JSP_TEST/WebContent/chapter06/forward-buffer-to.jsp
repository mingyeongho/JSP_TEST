<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>forward-buffer-to</title>
	</head>
	<body>
		<%
			String msg = "아이디를 입력하지 않았습니다.";
		
			request.setCharacterEncoding("utf-8");
		%>
		<%
			String username = request.getParameter("username");
			if (username.length() == 0) {
				
		%>
		<jsp:forward page="forward-buffer-from.jsp">
			<jsp:param value="<%= msg %>" name="msg"/>
		</jsp:forward>
		<%
			}
		%>
		<h1>환영합니다. <%= username %></h1>
	</body>
</html>