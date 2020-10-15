<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="campDB.campDAO" %>
<%@page import="java.util.*"%>
<%
   request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 완료</title>
</head>
<body>
<%
String id = request.getParameter("id");
try{
%>
	<jsp:useBean id="reserve" class="campDB.campreserve" scope="request">
		<jsp:setProperty name="reserve" property="*"/>
	</jsp:useBean>
	<%
	campDAO mem = new campDAO();
		mem.reservation(reserve);
		%>
		<script>
			alert("예약되었습니다");
			location.href = "../campMain.jsp?id=<%=id %>";
		</script>
		<%
}catch(Exception e){
	%>
	<script src="../js/infoError.js"></script>
	<%
}
	%>

</body>
</html>