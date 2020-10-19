<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukbean/sungjukUpdateProc.jsp</title>
</head>
<body>
* 성적 수정 *<br/>
<%
int sno=Integer.parseInt(request.getParameter("sno"));
String uname=request.getParameter("uname").trim();
int kor=Integer.parseInt(request.getParameter("kor").trim());
int eng=Integer.parseInt(request.getParameter("eng").trim());
int mat=Integer.parseInt(request.getParameter("mat").trim());
String addr=request.getParameter("addr");
int aver=(kor+eng+mat)/3;

dto.setSno(sno);
dto.setUname(uname);
dto.setKor(kor);
dto.setEng(eng);
dto.setMat(mat);
dto.setAver(aver);
dto.setAddr(addr);

int res=dao.updateproc(dto);
if(res==0) {
  out.print("행수정 실패<br/>");
  out.print("<a href='javascript:history.back(-1);'>[다시시도]</a>");
}
else{
  %>
  <script type="text/javascript">
    alert("성적이 수정 되었습니다.");
    location.href="sungjukList.jsp";
  </script>
<%
}
%>
</body>
</html>
