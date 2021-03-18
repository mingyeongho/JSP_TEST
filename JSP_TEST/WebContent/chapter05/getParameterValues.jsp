<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>getParameterValues</title>
	</head>
	<body>
		가능한 외국어를 모두 선택하시오.<br>
		
		<form method="POST" name="test" action="getParameterValuesProc.jsp">
			<input type="checkbox" name="lang" value="Eng">영어<br>
			<input type="checkbox" name="lang" value="Jpa">일본어<br>
			<input type="checkbox" name="lang" value="Cha">중국어<br>
			<input type="checkbox" name="lang" value="Spa">스페인어<br>
			<input type="submit" value="Submit">			
		</form>
	</body>
</html>