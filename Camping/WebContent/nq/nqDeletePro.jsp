<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "campDB.campDAO" %>  
<%@ page import = "campDB.campNQ" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지 질문 삭제2</title>
</head>
<body>
<%
int num = Integer.parseInt(request.getParameter("num"));

campDAO cdao = new campDAO();

cdao.nqDelete(num);
response.sendRedirect("../campMain.jsp?id=admin");
%>
</body>
</html>