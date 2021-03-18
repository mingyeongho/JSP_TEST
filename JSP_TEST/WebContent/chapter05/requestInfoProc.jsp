<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>requestInfoProc</title>
	</head>
	<body>
		<% out.println("<h2> 프로토콜과 URL 관련 정보</h2><hr>"); %>
		
		1. 클라이언트 IP 정보 : <%= request.getRemoteAddr() %><br>
		2. 요청 메서드 : <%= request.getMethod() %><br>
		3. 프로토콜 : <%= request.getProtocol() %><br>
		4. 서버 호스트 이름 : <%= request.getServerName() %><br>
		5. 서버 포트 : <%= request.getServerPort() %><br>
		6. 요청 URI : <%= request.getRequestURI() %><br>
		7. 요청 URL : <%= request.getRequestURL() %><br>
		8. 요청 URL 중 Query String : <%= request.getQueryString() %><br>
		9. 컨텍스트 패스 정보 : <%= request.getContextPath() %>
		
		<%
			Enumeration<String> en = request.getHeaderNames();
			
			while(en.hasMoreElements()) {
				String headerName = (String) en.nextElement();
				String headerValue = request.getHeader(headerName);
				
				out.println(headerName + " : " + headerValue);
				out.println("<br><br>");
			}
		%>
	</body>
</html>