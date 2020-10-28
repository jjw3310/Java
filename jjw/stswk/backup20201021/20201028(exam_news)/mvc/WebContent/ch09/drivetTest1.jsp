<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<h2>JDBC드라이버 테스트</h2>

<%
	Connection conn=null;
	
	try {
		String jdbcUrl="jdbc:oracle:thin:@localhost:1521:xe";
		String dbId="mvcdb";
		String dbPass="12345";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		out.println("ORACLE에 제대로 연결되었습니다.");
	}catch(Exception e) {
		e.printStackTrace();
	}
%>
