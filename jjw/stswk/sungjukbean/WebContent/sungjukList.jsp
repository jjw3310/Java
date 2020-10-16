<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukbean/sungjukList.jsp</title>
</head>
<body>
<div class="title">* 성적목록 *</div><br>
<a href="sungjukForm.jsp">[성적입력]</a><br/>
<table border="1">
<tr>
  <th>이름</th>
  <th>국어</th>
  <th>영어</th>
  <th>수학</th>
  <th>작성일</th>
</tr>
<%
ArrayList<SungjukDTO> list=dao.list(); 
if(list==null) {
  out.print("<tr><td colspan='5'>관련자료없음</td></tr>");
}
else {
  for(int idx=0; idx<list.size(); idx++) {
    dto=list.get(idx);
%>
        <tr bgcolor="#ffffff"
            onmouseover="this.style.backgroundColor='#d4d4d4'"
            onmouseout="this.style.backgroundColor='#ffffff'">
          <td><a href="sungjukRead.jsp?sno=<%=dto.getSno() %>"><%=dto.getUname() %></a></td>
          <td><%=dto.getKor() %></td>
          <td><%=dto.getEng() %></td>
          <td><%=dto.getMat() %></td>
          <td><%=dto.getWdate().substring(0,10) %></td>
        </tr>
<%    
  }
}
%>
</table>

</body>
</html>
