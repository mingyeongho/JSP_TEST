<%@page import="chapter08.AddrBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="am" class="chapter08.AddrManager" scope="application"></jsp:useBean>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AddrList</title>
	</head>
	<body>
		<div align=center>
			<h2>주소록 목록</h2>
			<hr width=550 align=center>
			<table border=1 width=550 cellspacing=1 cellpadding=5>
				<tr align=center>
					<th width=100>이름</th>
					<th width=150>전화번호</th>
					<th width=200>메일</th>
					<th width=100>성별</th>
				</tr>
				<%
					for (AddrBean ab : am.getAddrList()) {
				%>
					<tr>
						<td align=center><%= ab.getUsername() %></td>
						<td align=center><%= ab.getUsertel() %></td>
						<td align=center><%= ab.getUsermail() %></td>
						<td align=center><%= ab.getUsergender() %></td>
					</tr>
				<% 	} %>
			</table>
			<a href="AddrForm.jsp">주소추가</a>
		</div>
	</body>
</html>