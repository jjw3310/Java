<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>application 테스트</h2>
<hr>
1. 서버정보 : <%=application.getServerInfo() %><br>
2. 서블릿 API 버전정보 :
<%=application.getMajorVersion() + "."+ application.getMinorVersion() %>
<br>
3. application.jsp 화일의 실제경로 :
<%= application.getRealPath("/application.jsp") %><br>

<hr>
setAttribute 로 username 변수에 "홍길동" 설정<P>
<% application.setAttribute("username", "홍길동");
	application.log("username=홍길동");
	application.setAttribute("count",1);
%>

<a href="application_result.jsp">확인하기</a>
</div>


</body>
</html>

