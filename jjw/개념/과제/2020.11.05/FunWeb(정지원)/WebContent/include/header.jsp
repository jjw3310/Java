<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Julyrestaurant </title>
<link rel="stylesheet" type="text/css" 
href="../css/default.css" />
<%-- ../는 한단계 상위폴더로 이동 --%>
<link rel="stylesheet" type="text/css"
href="../css/welcome.css" />
<link rel="stylesheet" type="text/css"
href="../css/history.css" />
<link rel="stylesheet" type="text/css"
href="../css/notice.css" />
<link rel="stylesheet" type="text/css"
href="../css/member.css" />
</head>
<body>
<div id="wrap">
 <header><%-- html5에서 추가된 태그로 머릿글 즉 상단영역
 지정할 때 사용한다. --%>
   
   <!-- 로그인과 회원가입메뉴 -->
   <div id="login">
    <a href="#">login</a> | <a href="../member/join.jsp">Join</a>
   </div>
    
    <div class="clear"></div>
    
   <%-- 회사로고 --%>
   <div id="logo">
    <img src="../images/logo.png" width="200" height="150" padding-left="100px;"
    alt="Fun Web" />
   </div><br><br><br>
   
   <%-- 상단메뉴 --%>
   <nav><%--html5에서 nav태그는 메뉴구성할 때 사용. --%>
    <ul>
     <li><a href="../index.jsp", style="color: green; font-style: inherit;">HOME</a></li>
     <li><a href="../company/welcome.jsp", style="color: green; font-style: inherit;">JULY RESTAURANT</a></li>
     <li><a href="../center/notice.jsp", style="color: green; font-style: inherit;">REVIEW</a></li>
     <li><a href="#", style="color: green; font-style: inherit;">CUSTOMER SERVICE</a></li>
    </ul>
   </nav>
 </header>
 
 
 
 <div class="clear"></div>
 
 
 
 
 