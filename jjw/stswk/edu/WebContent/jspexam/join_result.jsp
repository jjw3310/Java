<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String userid = request.getParameter("userid");
String name = request.getParameter("name");
String phone1 = request.getParameter("phone1");
String phone2 = request.getParameter("phone2");
String phone3 = request.getParameter("phone3");
String phone = phone1 + "-" + phone2 + "-" + phone3;
String email1 = request.getParameter("email1");
String email2 = request.getParameter("email2");
String email = email1 + "@" + email2;
%>
<%=name%>님의 회원가입 처리가 아래와 같이 완료되었습니다.<br><br>
아이디: <%=userid %><br>
이름: <%=name%><br>
핸드폰: <%=phone %><br>
이메일: <%=email%><br>
</body>
</html>

