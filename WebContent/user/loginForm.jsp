<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="../include/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#joinForm").click(function(){
			window.open('joinForm.action','window', 'width=410,height=235');
		});
	});
</script>
</head>
<body>
	<form action="userLogin.action" method="post">
		아이디 : <input type ="text" name="id" size="20">
		패스워드 : <input type ="password" name="pw" size="20">
		<input type="submit" value="로그인" > <input type="button" value ="회원가입" id="joinForm">
	</form>
</body>
</html>