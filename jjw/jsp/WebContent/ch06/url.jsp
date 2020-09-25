<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>url</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:url&gt;</h3>
<c:url value="choose.jsp" var="target">
	<c:param name="sel">a</c:param>
</c:url>
<hr>
단순출력 : ${target}<br>
링크연동 : <a href="${target}">choose.jsp-a선택</a>

</body>
</html>

