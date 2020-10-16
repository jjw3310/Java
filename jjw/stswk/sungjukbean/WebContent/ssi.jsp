<% // sungjukbean/ssi.jsp %>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="net.sungjuk.*"%>

<jsp:useBean id="dto" class="net.sungjuk.SungjukDTO" scope="page"/>
<jsp:useBean id="dao" class="net.sungjuk.SungjukDAO" scope="page"/>

<%request.setCharacterEncoding("utf-8");%>