<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="page" value="exam07.jsp">
	<c:param name="id" value="guest" />
	<c:param name="pwd" value="1004" />
</c:url>
<c:redirect url="${page}"/>
