<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request_form.html</title>
<script>
	documet.cookie = "test=OK.";
</script>
</head>
<body>
<div align=center>
<h2>request 테스트 폼</h2>
<hr>
<form name=form1 method=post action=request_result.jsp>
<table border=1>
<tr>
<td>이름</td>
<td><input type=text size=10 name=username></td>
<tr>
<td>직업</td>
<td>
<select name=job>
	<option selected>무직</option>
	<option>회사원</option>
	<option>전문직</option>
	<option>학생</option>
</select>
</td>
<tr>
<td>관심분야</td>
<td>
<input type=checkbox name=favorite value="정치">정치
<input type=checkbox name=favorite value="사회">사회
<input type=checkbox name=favorite value="정보통신">정보통신

<tr><td colspan=2 align=center>
<input type=submit value="확인">
<input type=reset value="취소"></td></tr>
</table></form>
</div>
</body>
</html>
