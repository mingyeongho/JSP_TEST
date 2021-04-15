<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>forward-buffer-from</title>
	</head>
	<body>
		<%
			String msg = request.getParameter("msg");
			if (msg != null) {
				out.println("<h2>"+msg+"</h2>");
			}
		%>
	
		<form action="forward-buffer-to.jsp" method="post">
			이름 <input type="text" name="username">
			<input type="submit" value="SAVE">			
		</form>
	</body>
</html>