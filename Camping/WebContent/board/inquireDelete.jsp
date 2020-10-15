<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "campDB.campDAO" %>  
<%@ page import = "campDB.campboard" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의사항 삭제</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String id = request.getParameter("id");
	campDAO bdao = new campDAO();
	String password = bdao.PassCheck(num);
%>
	<script>
	var pass = prompt('비밀번호를 입력하시오', 'password');
	
	if(pass == <%=password %>){
		var con = confirm("정말로 삭제하시겠습니까??")
		
		if (con == true) {
			alert("삭제되었습니다");
			location.href="./board/inquireDeletePro.jsp?num=<%=num%>&id=<%=id%>";
		}
		else{
			alert("취소되었습니다.");
			history.go(-1);
				
			}
			
	}else {		
		alert("패스워드가 잘못되었습니다. 확인 바랍니다.");
		history.go(-1);
	}
	</script>


</body>
</html>