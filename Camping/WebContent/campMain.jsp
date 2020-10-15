<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="./js/img_slide.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>campMain</title>
</head>
<link rel="stylesheet" type="text/css" href="./css/main.css" />
<body>
<%
request.setCharacterEncoding("UTF-8");
String center = request.getParameter("center");
   //처음 실행시에 cneter가 넘어오지 않으면 
   if(center == null){  //null 처리해 주고
      center = "center.jsp"; //디폴트로 center값을 부여해 줍니다.
   }
%>
	<table align="center" width="900">
		<!-- Top.jsp -->
		<tr>
			<td align="center" height="55">
			<c:import url="/Top.jsp"/>
			</td>
		</tr>
		<tr>
			<!-- center.jsp -->
			<td align="center" bgcolor="#E6E6E6">
			<jsp:include page="<%=center %>"/>
		</tr>
		<!-- Bottom.jsp -->
		<tr>
			<td align="center" height="50" bgcolor="#E6E6E6">
			<br>
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="#343A40">
			<c:import url="/Bottom.jsp"/>
			</td>
		</tr>
	</table>

</body>
</html>