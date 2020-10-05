<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구내 식당</title>
</head>
<form action="LunchMenu.jsp" method="post">
<body>
	<h3>오늘의 점심 메뉴입니다.</h3>
	<ul>
		<c:forEach var="dish" items="${MENU}">
			<LI>${dish}</LI>
		</c:forEach>
	</ul>
</body>
</form>
</html>

