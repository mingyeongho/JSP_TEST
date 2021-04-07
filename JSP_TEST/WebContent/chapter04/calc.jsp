<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int num1 = 0;
	int num2 = 0;
	int result = 0;
	String op = "";
	
	public int calculate() {
		if (op.equals("+")) {
			result = num1 + num2;
		} else if (op.equals("-")) {
			result = num1 - num2;
		} else if (op.equals("*")) {
			result = num1 * num2;
		} else if (op.equals("/")) {
			result = num1 / num2;
		}
		return result;
	}
%>
<%
	if (request.getMethod().equals("POST")) { // post 대문자로 써야됨.
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("op");
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Calculator</title>
	</head>
	<body>
		<div align="center">
			<h3>Calculator</h3>
			<hr>
			
			<form name="form1" method="post" action="calc.jsp">
				<input type="number" name="num1" size=5>
				<select name="op">
					<option selected="selected">+</option>
					<option>-</option>
					<option>*</option>
					<option>/</option>
				</select>
				<input type="number" name="num2" size=5>
				<input type="submit" value="run">
				<input type="reset" value="reset">
			</form>
			<hr>
			result : <%= calculate() %>
		</div>
	</body>
</html>