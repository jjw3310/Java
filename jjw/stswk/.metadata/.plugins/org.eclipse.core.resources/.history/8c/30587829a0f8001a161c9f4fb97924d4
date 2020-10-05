<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String job=request.getParameter("job");
int basic=Integer.parseInt(request.getParameter("basic"));
double bonus=0;
if(job.equals("사원")){
	bonus=basic*2;
}else if(job.equals("주임")){
	bonus=basic*2.5;
}else if(job.equals("과장")){
	bonus=basic*3;
}else if(job.equals("부장")){
	bonus=basic*4;
}
double total=basic*12 + bonus;
int tax=(int)(total*0.03);
double money=total-tax;
%>
이름 : <%=name %><br>
직급 : <%=job %><br>
기본급 : <%=String.format("%,d",basic) %><br>
보너스 : <%=String.format("%,10.0f",bonus) %><br>
총액 : <%=String.format("%,10.0f",total) %><br>
세액 : <%=String.format("%,d",tax) %><br>
실수령액 : <%=String.format("%,10.0f",money) %><br>

</body>
</html>

