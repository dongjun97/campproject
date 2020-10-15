<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="campDB.campNQ" %>
<%@ page import ="campDB.campDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지 질문 글 작성</title>
</head>
<body>
<%
try{
%>
<jsp:useBean id ="cbean" class="campDB.campNQ">
<jsp:setProperty name="cbean" property="*" />
</jsp:useBean>

<%
   //BoardDAO insertBoard로 boardbean을 넘긴다.
	campDAO cdao = new campDAO();
	cdao.insertNQ(cbean);
	response.sendRedirect("../campMain.jsp?id=admin");
}catch(Exception e){
	%>
	<script src="../js/infoError.js"></script>
	<%
}
%>
</body>
</html>