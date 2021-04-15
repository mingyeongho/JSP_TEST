<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>LoginForm</title>
	</head>
	<body>
		<div align=center>
			<h2>로그인</h2>
			
			<hr width=250 align=center>
			
			<form method="post" action="Login.jsp">
				<table width="250" border="1" align="center" cellspacing=0 cellpadding=0>
					<tr>
						<td colspan="2" align=center>로그인</td>
					</tr>
					
					<tr>
						<td>아이디</td>
						<td>
							<input type="text" name="userid" size=10>
						</td>
					</tr>
					
					<tr>
						<td>비밀번호</td>
						<td>
							<input type="password" name="userpw" size=10>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align=center>
							<input type="submit" value="로그인">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>