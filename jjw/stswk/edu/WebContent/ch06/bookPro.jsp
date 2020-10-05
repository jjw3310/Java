<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "ch06.bean.BookBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>example</title>
</head>
<body>
	<jsp:useBean id="book" class="ch06.bean.BookBean" />
	<jsp:setProperty property="*" name="book" />
		<%
			request.setAttribute("book", book);
		%>
		<jsp:forward page="bookOutput.jsp" />

</body>
</html>
