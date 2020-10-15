<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="campDB.campinfo" %>
<%@ page import ="campDB.campDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
<%
	String id = request.getParameter("id");
			
	%>
		<script>
		var con = confirm("정말로 탈퇴하시겠습니까??")
		
		//확인
		if(con == true){
			alert("삭제되었습니다");
			location.href="./deletePro.jsp?id=<%=id%>";
		}
		//취소
		else{
			alert("취소되었습니다.");
			history.go(-1);
		}
		</script>

</body>
</html>