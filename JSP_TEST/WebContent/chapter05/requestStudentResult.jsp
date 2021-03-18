<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>requestStudentResult</title>
	</head>
	<body>
		<h2>학생 정보 출력</h2>
		<hr width="400" align="left">
		<table border="1">
			<tr>
				<td width=100>이름</td>
				<% String username = request.getParameter("username"); %>
				<td width=200><%= username %></td>
			</tr>
			<tr>
				<td>학년</td>
				<% String grade = request.getParameter("grade"); %>
				<td><%= grade %></td>
			</tr>
			<tr>
				<td>관심분야</td>
				<td>
				<%
					String[] favorites = request.getParameterValues("favorite");
					for (String favorite : favorites) {
						out.println(favorite+"<br>");
					}
				%>
				</td>
			</tr>
		</table>
		<hr width="400" align="left">
		1. 클라이언트 IP 주소 : <%= request.getRemoteAddr() %><br>
		2. 프로토콜 : <%= request.getProtocol() %><br>
		3. 서버 호스트 이름 : <%= request.getServerName() %><br>
		4. 서버 포트 : <%= request.getServerPort() %>
	</body>
</html>