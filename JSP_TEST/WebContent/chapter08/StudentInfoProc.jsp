<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="student" class="chapter08.StudentInfo" scope="request" />

 
<jsp:setProperty property="no" name="student"/>
<jsp:setProperty property="name" name="student"/>
<jsp:setProperty property="depart" name="student"/>
<jsp:setProperty property="home" name="student" value="강릉"/>

<jsp:forward page="StudentInfoView.jsp"></jsp:forward>