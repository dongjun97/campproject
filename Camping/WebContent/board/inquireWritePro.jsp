<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="campDB.campboard" %>
     <%@ page import ="campDB.campDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의사항 작성 완료</title>
</head>
<body>
<%
String id = request.getParameter("id");

try{
%>

<jsp:useBean id ="cbean" class="campDB.campboard">
<jsp:setProperty name="cbean" property="*" />
</jsp:useBean>

<%
   //BoardDAO insertBoard로 boardbean을 넘긴다.
	campDAO cdao =new campDAO();
	cdao.insertBoard(cbean);
	response.sendRedirect("../campMain.jsp?id="+id+"&center=./board/inquire.jsp?id="+id);
}catch(Exception e){
	%>
	<script src="../js/infoError.js"></script>
	<%
}
%>
</body>
</html>