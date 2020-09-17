<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력한 정보 처리</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
	String hak = request.getParameter("hak");
	String name = request.getParameter("name");
	String major = request.getParameter("major");
%>
학번 : <%=hak %><br>
이름 : <%=name %><br>
전공 : <%=major %><br>

</body>
</html>

