<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");

	PreparedStatement pstmt = null;
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "dong", "ezen1234");
		
		String sql = "delete from camp_info where id = ?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		
		if(pstmt != null) pstmt.close();
		if(con != null) con.close();
	}catch(SQLException e){
		out.print("처리중 문제가 발생했습니다 <hr> <div style='text-align:center;'>관리자에게 문의해주세요</div>");
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
<script>
	alert('회원탈퇴되었습니다');
</script>
<% response.sendRedirect("../campMain.jsp");%>
</body>
</html>