<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="campDB.campDAO" %>
<%@page import="campDB.campinfo" %>
<%@page import="com.sun.org.apache.bcel.internal.generic.Select" %>
<%@page import="java.sql.*, javax.servlet.http.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 확인</title>
</head>
<body>
<%
try{
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw1 = request.getParameter("pw1");
	String pw2 = request.getParameter("pw2");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String tel = tel1+"-"+tel2+"-"+tel3;
	String email = email1 + "@" + email2;
	
	if(id.equals("")||pw1.equals("")||email1.equals("")||tel2.equals("")){
		%>
		<script type="text/javascript">
		alert("다 기입되지 않았습니다")
		history.go(-1);//이전페이지로 이동
		</script>
		<%
	}else{
		if(!pw1.equals(pw2)){
		%>
		<script type="text/javascript">
		alert("비밀번호가 틀립니다. 확인해주시죠");
		history.go(-1);//이전페이지로 이동
		</script>
		<%
		}
%>
	<jsp:useBean id="info" class="campDB.campinfo" scope="request">
		<jsp:setProperty name="info" property="id" value="<%=id %>"/>
		<jsp:setProperty name="info" property="pw" value="<%=pw1 %>"/>
		<jsp:setProperty name="info" property="email" value="<%=email %>"/>
		<jsp:setProperty name="info" property="tel" value="<%=tel %>"/>
	</jsp:useBean>
	<%
	campDAO mem = new campDAO();
	
	boolean result = mem.confirmID(id);
	
	if(result){
		%>
		<script type="text/javascript">
		alert("이미 사용중인 아이디입니다");
		history.go(-1);//이전페이지로 이동
		</script>
		<%
	}else{
		mem.insert(info);
	}	
	%>
	<table align="center" width="1000" height="700">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 700px; height: 700px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">회원가입 확인</h2>
					</div>
					<div class="card-body">
						<table width="600" height="600" align="center">
							<tr height="30">
								<td align="center" width="150">아이디</td>
								<td align="center" width="300">
								<jsp:getProperty name="info" property="id"/>
								</td>
							</tr>
							<tr height="30">
								<td align="center" width="150">이메일</td>
								<td align="center" width="300">
								<jsp:getProperty name="info" property="pw"/>
								</td>
							</tr>
							<tr height="30">
								<td align="center" width="150">이메일</td>
								<td align="center" width="300">
								<jsp:getProperty name="info" property="email"/>
								</td>
							</tr>
							<tr height="30">
								<td align="center" width="150">전화번호</td>
								<td align="center" width="300">
								<jsp:getProperty name="info" property="tel"/>
								</td>
							</tr>
							<tr height="30">
								<td align="center" colspan="2">
								<input class="btn btn-primary" type="button" value="확인" onclick="javascript:location.href='campMain.jsp'">
							</tr>
						</table>
					</div>
				</div>
			</td>
		</tr>
	</table>
	<%}
}catch(Exception e){
	%>
	<script src="./js/infoError.js"></script>
	<%
}
	%>
</body>
</html>