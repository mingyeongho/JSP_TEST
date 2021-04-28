<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%

	Connection conn = null;

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3307/jspdb?serverTimezone=UTC";
		String jdbcId = "jspstudy";
		String jdbcPw = "alsrudgh1";
		conn = DriverManager.getConnection(url, jdbcId, jdbcPw);
		out.println("데이터 베이스 접속 성공");
	} catch (SQLException e) {
		out.println("데이터 베이스 접속 실패");
		e.printStackTrace();
	} finally {
		if (conn != null) {
			try { 
				conn.close();
			} catch(SQLException ex) {}
		}
	}
%>