<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>includeTest</title>
	</head>
	<body>
		<div align="center">
			<h2>include 지시어 테스트 </h2>
			<hr>
			
			<%@ include file="menu.jsp" %>
			<p>
				<table border=0 cellspacing=5 cellpadding=5>
					<tr>
						<td><%@ include file="news.jsp" %></td>
						<td width="20">&nbsp;</td>
						<td><%@ include file="shopping.jsp" %></td>
					</tr>
				</table>
			</p>
			
		</div>
	</body>
</html>