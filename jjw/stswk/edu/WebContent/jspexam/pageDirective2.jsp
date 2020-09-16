<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	pageEncoding="UTF-8"
	session="true"
	buffer="8kb"
	autoFlush="true"
	isThreadSafe="true"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>page 디렉티브 예제2 - import, session, buffer, autoFlush, isThreadSafe 속</h2>
<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
	String strDate = format.format(now);
%>
</body>
</html>

