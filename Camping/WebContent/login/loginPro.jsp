<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="campDB.campinfo" %>
<%@ page import ="campDB.campDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
<%
		String id = request.getParameter("id");
		String pass = request.getParameter("pw");

		//
		campDAO cdao = new campDAO();
		String password = cdao.pwcheck(id);
		
	try{
	//기존패스워드값을 비교하여 같은지를 확인 
	if(pass.equals(password)){
		cdao.pastDelete(id);
	%>
		<script>
			alert("로그인되었습니다");
			location.href = "../campMain.jsp?id=<%=id %>";
		</script>
	<%
	}else {		
%>
	<script src="../js/infoError.js"></script>
<%
	}
	}catch(Exception e){
		%>
		<script src="../js/infoError.js"></script>
	<%
	}
%>	
</body>
</html>