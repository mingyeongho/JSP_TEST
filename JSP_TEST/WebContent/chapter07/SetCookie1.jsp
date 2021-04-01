<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>SetCookie</title>
	</head>
	<body>
		<%
			// 쿠키 생성
			Cookie myCookie1 = new Cookie("id", "hong");
			response.addCookie(myCookie1);
			
			Cookie myCookie2 = new Cookie("name", URLEncoder.encode("홍길동", "utf-8"));
			response.addCookie(myCookie2);
			
			// 쿠키 정보 추출
			String ck1_name = myCookie1.getName();
			String ck1_value = myCookie1.getValue();
			
			String ck2_name = myCookie2.getName();
			String ck2_value = URLDecoder.decode(myCookie2.getValue(), "utf-8");
			
			// 쿠키 정보 출력
			out.println("myCookie1의 이름 : " + ck1_name + "<br>");
			out.println("myCookie1의 값 : " + ck1_value + "<br><br>");
			
			out.println("myCookie2의 이름 : " + ck2_name + "<br>");
			out.println("myCookie2의 값 : " + ck2_value + "<br><br>");
		%>
	</body>
</html>