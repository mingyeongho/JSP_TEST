<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Exercise_to</title>
	</head>
	<body>
		<table border=1>
			<%
				Enumeration paramNames = request.getParameterNames();
				while(paramNames.hasMoreElements()) {
					String name = (String)paramNames.nextElement();
					out.println("<tr><td>" + name + "</td>");
					String[] value = request.getParameterValues(name);
					String hobby = "";
					for (String data : value) {
						hobby += data;
						hobby += "\n";
					}
					out.println("<td>" + hobby + "</td></tr>");
				}
			%>
		</table>
	</body>
</html>