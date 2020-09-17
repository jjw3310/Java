<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String email1=request.getParameter("email1");
String email2=request.getParameter("email2");
String email=email1+"@"+email2;
String content=request.getParameter("content");
content=content.replace("<","&lt;");
content=content.replace(">","&gt;");
content=content.replace("\n","<br>");
%>
글쓰기가 완료되었습니다.<br><br>

이름 : <%=name %><br>
이메일 : <%=email %><br>
내용 : <br>
<%=content %>
</body>
</html>

