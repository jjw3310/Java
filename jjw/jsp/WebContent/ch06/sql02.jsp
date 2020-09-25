<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="myoracle2"
	driver="oracle.jdbc.OracleDriver"
	url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
	user="exdb"
	password="12345" />

<sql:query dataSource="${myoracle2}" var="result">
	select * from student
</sql:query>

<table border="1">
	<tr>
		<th>stu_no</th><th>stu_name</th><th>stu_dept</th>
	</tr>
	<c:forEach var="row" items="${result.rows}">
		<tr>
			<td><c:out value="${row.stu_no}"/></td>
			<td><c:out value="${row.stu_name}"/></td>
			<td><c:out value="${row.stu_dept}"/></td>
		</tr>
	</c:forEach>	
</table>
