<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>getParameterProc1</title>
	</head>
	<body>
		<% request.setCharacterEncoding("UTF-8"); %>
		<%
			String depart = request.getParameter("depart");
			int num = Integer.parseInt(request.getParameter("num"));
			String name = request.getParameter("name");
			String uid = request.getParameter("uid");
			float score = Float.parseFloat(request.getParameter("score"));
			
			out.println("학과 : " + depart + "<br>");
			out.println("번호 : " + num + "<br>");
			out.println("이름 : " + name + "<br>");
			out.println("계정 : " + uid + "<br>");
			out.println("평점 : " + score + "<br>");
		%>
	</body>
</html>