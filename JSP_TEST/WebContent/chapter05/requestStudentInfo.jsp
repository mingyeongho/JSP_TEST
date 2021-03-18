<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>requestStudentInfo</title>
	</head>
	<body>
		<h2>학생 정보 입력</h2>
		<hr width="400" align="left">
		<form method="get" action="requestStudentResult.jsp">
			<table width="400" border="1" cellspacing="1" cellpadding="5">
				<tr>
					<td width="100">이름</td>
					<td width="300"><input type="text" size="10" name="username"></td>
				</tr>
				
				<tr>
					<td>학년</td>
					<td>
						<input type="radio" name="grade" value="1학년">1학년
						<input type="radio" name="grade" value="2학년">2학년
						<input type="radio" name="grade" value="3학년">3학년
						<input type="radio" name="grade" value="4학년">4학년
					</td>
				</tr>
				
				<tr>
					<td>관심분야</td>
					<td>
						<input type="checkbox" name="favorite" value="JSP">JSP
						<input type="checkbox" name="favorite" value="Java">Java
						<input type="checkbox" name="favorite" value="C++">C++
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="확인">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>