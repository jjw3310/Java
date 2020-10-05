<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<% request.setCharacterEncoding("utf-8"); %>

<form action="ex00.jsp" method="post">
	<ul>
		<li><label for="name">이름</label>
			<input type="text" id="name" name="name"
						value="${param['name']}">
			<input type="submit" value="확인">
		<li><p>이름은: ${param.name} 입니다.
	</ul>
</form>