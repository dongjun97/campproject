<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	alert('로그아웃되었습니다');
</script>
<body>

<%
session.invalidate(); //세션정보 초기화
response.sendRedirect("../campMain.jsp"); //로그인 화면으로 이동시킴 
%>

</body>
</html>