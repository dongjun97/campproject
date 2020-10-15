<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="campDB.campDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 취소</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String num = request.getParameter("num");
	
	campDAO cdao = new campDAO();
	
	cdao.reserveDel(num);
	
	response.sendRedirect("../campMain.jsp?id="+id);
%>

</body>
</html>