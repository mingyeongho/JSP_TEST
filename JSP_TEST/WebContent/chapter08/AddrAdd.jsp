<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="addr" class="chapter08.AddrBean"></jsp:useBean>

<jsp:setProperty property="*" name="addr"/>

<jsp:useBean id="am" class="chapter08.AddrManager" scope="application"></jsp:useBean>

<%
	am.add(addr);
%>

<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<div align=center>
			<h2>등록 내용</h2>
			<hr width=300 align=center>
			<table border=1 width=300 cellspacing=1 cellpadding=5>
				<tr>
					<td width=100>이름</td>
					<td width=200>
						<jsp:getProperty property="username" name="addr"/>
					</td>
				</tr>
				<tr>
					<td width=100>전화번호</td>
					<td width=200>
						<jsp:getProperty property="usertel" name="addr"/>
					</td>
				</tr>
				<tr>
					<td width=100>메일</td>
					<td width=200>
						<jsp:getProperty property="usermail" name="addr"/>
					</td>
				</tr>
				<tr>
					<td width=100>성별</td>
					<td width=200>
						<jsp:getProperty property="usergender" name="addr"/>
					</td>
				</tr>
			</table>
			<hr width=300 align=center>
			<a href="AddrList.jsp">목록보기</a>
		</div>
	</body>
</html>