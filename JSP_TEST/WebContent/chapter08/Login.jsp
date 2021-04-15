<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" scope="page" class="chapter08.LoginBean"></jsp:useBean>
<jsp:setProperty property="*" name="login"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
	</head>
	<body>
		<div align=center>
			<h2>로그인</h2>
			<hr width=250 align=center>
			<%
				if (!login.checkUser()) {
					out.println("로그인 실패!! <br>");
					out.println("<a href='Loginform.jsp'>로그인</a>");
				} else {
					out.println("로그인 성공!!");
				}
			%>
		</div>
	</body>
</html>