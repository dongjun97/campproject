<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="campDB.campDAO"%>
<%@ page import="campDB.campinfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		try{
	%>
	<jsp:useBean id="info" class="campDB.campinfo">
		<jsp:setProperty name="info" property="*" />
	</jsp:useBean>
	<%
		campDAO cdao = new campDAO();
		cdao.UpdatePro(info);
	%>
	<script>
			alert("수정되었습니다");
			location.href = "../campMain.jsp?id=<%=id%>";
	</script>
	<%} catch(Exception e){
		%>
		<script type="text/javascript">
		alert("수정이 실패하였습니다")
		history.go(-1);//이전페이지로 이동
		</script>
		<%
		}%>
</body>
</html>