<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>getParameterNames</title>
	</head>
	<body>
		<form name="myform" method="post" action="getParameterNamesProc.jsp">
			번호(정수) : <input type="text" name="num" size=10><br>
			이름(문자열) : <input type="text" name="name" size=20><br>
			계정(문자열) : <input type="text" name="uid" size=20><br>
			평점(실수) : <input type="text" name="score" size=5><br>
			<input type="submit" value="Save">
		</form>
	</body>
</html>