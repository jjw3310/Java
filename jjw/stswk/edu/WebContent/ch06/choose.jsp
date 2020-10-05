<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choose</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:choose&gt;</h3>
<form>
<selecte name="sel">
	<option>-</option>
	<option ${param.sel=='a'? 'selected' : ''}>a</option>
	<option ${param.set=='b'? 'selected' : ''}>b</option>
	<option ${param.set=='c'? 'selected' : ''}>c</option>
	<option ${param.set=='d'? 'selected' : ''}>d</option>
</selecte>
<input type=submit value="선택">
</form>
<hr>
<c:choose>
	<c:when test="${param.sel == 'a'}">
		a를 선택
	</c:when>
	<c:when test="${param.sel == 'b'}">
		b를 선택
	</c:when>
	<c:when test="${param.sel == 'c'}">
		c를 선택
	</c:when>
</c:choose>
</body>
</html>

