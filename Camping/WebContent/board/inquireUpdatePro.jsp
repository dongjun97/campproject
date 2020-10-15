<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "campDB.campDAO" %>  
<%@ page import = "campDB.campboard" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의사항 수정 완료</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
try{
%>
<jsp:useBean id = "cbean" class="campDB.campboard">
	<jsp:setProperty name = "cbean" property="*"/>
</jsp:useBean>
<%
	campDAO bdao = new campDAO();
	bdao.inquireUpdate(cbean);
	
	response.sendRedirect("../campMain.jsp");
}catch(Exception e){
	%>
	<script src="../js/infoError.js"></script>
	<%
}
%>
%>
</body>
</html>