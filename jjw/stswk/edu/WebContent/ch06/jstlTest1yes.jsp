<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl/jstlTest1yes.jsp</title>
</head>
<body>
<p>* 결과페이지(EL+JSTL) *</p>

<c:set var="name" value="${param.name}"></c:set>
<c:set var="age" value="${param.age}"></c:set>

이름 : ${name} / <c:out value="${name}"></c:out> <br>
나이 : ${age} / <c:out value="${age}"></c:out> <br>

<c:if test="${name=='desk'}">
	<string>JSTL연습</string>
</c:if>
<br>

<!-- 다중 if문 -->
<c:choose>
	<c:when test="${age<10}">어린이</c:when>
	<c:when test="${age<20}">청소년</c:when>
	<c:otherwise>성인</c:otherwise>
</c:choose>
<br>

<!-- 반복문 -->
<c:forEach var="i" begin="1" end="${age}" step="1">
 #
</c:forEach>

<hr>
1~나이까지 홀수명 빨강, 짝수명 파랑<br>
<c:forEach var="i" begin="1" end="${age}" step="1">
	<c:choose>
		<c:when test="${i%2==1}">
			<span style="color:red">${i}</span>
		</c:when>
		<c:when test="${i%2==0}">
			<span style="color:blue">${i}</span>
		</c:when>
	</c:choose>
</c:forEach>
<hr>
1)JSP 방식<br>
<%
String name=request.getParameter("name").trim();
%>
이름 문자갯수 : <%=name.length() %><br>
이름중에서 앞에서 부터 3글자 자르기 : <%=name.substring(0, 3) %>

<hr>

2)EL 방식<br>
이름 문자 갯수 : ${fn:length(name)}<br>
이름 자르기 : ${fn:substring(name,0,3)}<br>
이름 치환 : ${fn:replace(name, 'p', 'B')}
</body>
</html>

