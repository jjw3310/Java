<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>star01</title>
</head>
<body>
<%
	for(int i=0;i<5;i++) {
		for(int k=0;k<=i;k++){
			out.println("*");
		}
	%>
<br>
<%}%>
</body>
</html>

