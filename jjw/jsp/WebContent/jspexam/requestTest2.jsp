<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String names[]={"프로토콜이름","서버이름",
			"Method방식","컨텍스트 경로","URI", "접속한 클라이언트의 IP"};
	String values[]={request.getProtocol(),
			request.getServerName(),request.getMethod(),
			request.getContextPath(),request.getRequestURI(),
			request.getRemoteAddr()};
	
	Enumeration<String> en = request.getHeaderNames();
	String headerName="";
	String headerValue="";
%>

<h2>헤더의 정보 표시</h2>
<%
	while(en.hasMoreElements()){
		headerName = en.nextElement();
		headerValue = request.getHeader(headerName);
		out.println(headerName + " : " + headerValue + "<br>");
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

