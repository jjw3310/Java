<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>star03</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
int num = Integer.parseInt(request.getParameter("number"));
for(int i=0;i<5;i++) {
	while(num!=0) {
		if(num%2==0)
			out.print("*");
		else
			out.print(" ");
		num--;
	}%>
	i++;

<br>
<%	
}
%>

</body>
</html>
