<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" scope="request" class="chapter08.StudentInfo"></jsp:useBean>

학번: <jsp:getProperty property="no" name="student"/> <br>
이름: <jsp:getProperty property="name" name="student"/> <br>
학과: <jsp:getProperty property="depart" name="student"/> <br>
주소: <jsp:getProperty property="home" name="student"/>