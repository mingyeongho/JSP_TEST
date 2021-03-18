<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>getParameter1</title>
	</head>
	<body>
		<% String depart = "software"; %> <!-- GET 방식 -->
		<!-- String depart = URLEncoder.encode("소프트웨어", "utf-8"); : get방식으로 한글이 전달될 때 인코딩하는 방법 -->
		
		<!-- POST 방식 -->
		<form name="myform" method="post" action="getParameterProc1.jsp?depart=<%= depart %>">
			번호(정수) : <input type="text" name="num" size=10><br>
			이름(문자열) : <input type="text" name="name" size=20><br>
			계정(문자열) : <input type="text" name="uid" size=20><br>
			평점(실수) : <input type="text" name="score" size=5><br>
			<input type="submit" value="Save">
		</form>
	</body>
</html>