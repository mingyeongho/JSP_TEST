<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>getParameterValuesProc</title>
	</head>
	<body>
		<%
			String[] values = request.getParameterValues("lang");
		
			for (String value : values) {
				out.println(value + "<br>");
			}
		%>
	</body>
</html>