<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
int dan = Integer.parseInt(request.getParameter("dan"));
int i = 1;
while(i<10) {
	out.println(dan + "x" + i + "=" + dan*i);
	out.println("<br>");
	i++;
}
%>

</body>
</html>

