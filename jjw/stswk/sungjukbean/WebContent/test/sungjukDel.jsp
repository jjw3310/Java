<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukDel.jsp</title>
</head>
<body>
* 성적 삭제 *<br/>
<%
int sno=Integer.parseInt(request.getParameter("sno"));
int res=dao.delete(sno);    
if(res==0) {
 out.print("삭제실패");
}
else {
%>
        <script type="text/javascript">
          alert("성적이 삭제 되었습니다.");
          location.href="sungjukList.jsp";
        </script>
<%    
  }
%> 
</body>
</html>
