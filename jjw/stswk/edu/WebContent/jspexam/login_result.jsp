<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String userid=request.getParameter("userid");
String passwd=request.getParameter("passwd");

if(userid.equals("kim") && passwd.equals("1234")){
	out.println("김철수님 환영합니다.");
}else{
	out.println("아이디 또는 비밀번호가 일치하지 않습니다.");
}
%>
</body>
</html>

