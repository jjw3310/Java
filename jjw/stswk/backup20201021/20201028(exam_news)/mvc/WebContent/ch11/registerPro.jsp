<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "ch11.logon.LogonDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<link rel="stylesheet" href="../css/style.css"/>
<script src="../js/jquery-1.11.0.min.js"></script>

<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id = "member" class="ch11.logon.LogonDataBean">
	<jsp:setProperty name="member" property="*" />
</jsp:useBean>
<%
	member.setReg_date(new Timestamp(System.currentTimeMillis()));
	
	LogonDBBean manager = LogonDBBean.getInstance();
	//사용자가 입력한 데이터저장빈 객체를 가지고 회원가입 처리 메소드호출
	manager.insertMember(member);
%>
