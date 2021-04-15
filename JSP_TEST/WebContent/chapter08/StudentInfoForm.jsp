<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>StudentInfoForm</title>
	</head>
	<body>
		<form action="StudentInfoProc.jsp" method="post" name="memberInfo">
			<table align=center width=300 cellspacing=0 cellpadding=5 border>
				<tr>
					<td align=center width=120>학번</td>
					<td width=180>
						<input type="text" name="no" size=15>
					</td>
				</tr>
				<tr>
					<td align=center width=120>성명</td>
					<td width=180>
						<input type="text" name="name" size=15>
					</td>
				</tr>
				<tr>
					<td align=center width=120>학과</td>
					<td width=180>
						<input type="text" name="depart" size=15>
					</td>
				</tr>
				<tr>
					<td align=center width=120>주소</td>
					<td width=180>
						<input type="text" name="home" size=15>
					</td>
				</tr>
			</table>
			<table align=center width=300 cellspacing=0 cellpadding=5>
				<tr>
					<td align=center>
						<input type="submit" value="save">&nbsp;&nbsp;
						<input type="reset" value="reset">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>