<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Exercise_from</title>
	</head>
	<body>
		<form mehtod="post" action="exercise_to.jsp">
			<table border=1>
				<tr>
					<td>이름</td>
					<td>
						<input type="text" name="name">
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="gender" value="남자">남자
						<input type="radio" name="gender" value="여자">여자
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
						<input type="checkbox" name="hobby" value="Music">Music
						<input type="checkbox" name="hobby" value="Soccer">Soccer
						<input type="checkbox" name="hobby" value="Baseball">Baseball
					</td>
				</tr>
			</table>
			<table>
				<input type="submit" value="submit">
			</table>
		</form>
	</body>
</html>