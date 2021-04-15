<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AddrForm</title>
	</head>
	<body>
		<div align=center>
			<h2>주소록 등록</h2>
			<hr width=300 align=center>
			
			<form method="post" action="AddrAdd.jsp">
				<table border=1 width=300 cellspacing=1 cellpadding=5>
					<tr>
						<td width=100>이름</td>
						<td width=200>
							<input type="text" name="username" size="25">
						</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>
							<input type="text" name="usertel" size="25">
						</td>
					</tr>
					<tr>
						<td>메일</td>
						<td><input type="text" name="usermail"></td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<select name="usergender">
								<option selected="selected">Male</option>
								<option>Female</option>
							</select>
						</td>
					</tr>
				</table>
				<input type="submit" value="save">
			</form>
		</div>
	</body>
</html>