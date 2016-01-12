<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.label{
	width: 150px;
	color: orange;
}
.inp{
	width: 200px;
}
</style>
<script type="text/javascript">
function chkjoin(){
	var msg = document.getElementById('msg');
	var id = document.getElementById('id');
	var pw = document.getElementById('pw');
	var pwchk = document.getElementById('pwchk');
	var writer = document.getElementById('writer');
	
	if(id.value.trim()==''){
		msg.innerHTML='아이디를 입력해 주세요.';
		id.value='';
		id.focus();
		return false;
	}
	if(writer.value.trim()==''){
		msg.innerHTML='이름을 입력해 주세요.';
		writer.value='';
		writer.focus();
		return false;
	}
	if(pw.value.trim()==''){
		msg.innerHTML='비밀번호를 입력해 주세요.';
		pw.value='';
		pw.focus();
		return false;
	}
	if(pwchk.value.trim()==''){
		msg.innerHTML='확인용 비밀번호를 입력해 주세요.';
		pwchk.value='';
		pwchk.focus();
		return false;
	}
	if(pwchk.value!=pw.value){
		msg.innerHTML='비밀번호가 일치하지 않습니다.';
		pw.value='';
		pwchk.value='';
		pw.focus();
		return false;
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>스트러츠 게시판 회원가입</title>
</head>
<body>
<form action="userJoin.action" method="post" onsubmit="return chkjoin();">
<div align="center">
<span style="color: red; font-size: 26pt;" id="msg"><s:property value="msg"/></span>
</div>
<table border="1" align="center">
	<tr>
		<th class="label">아이디</th>
		<td class="inp">
			<input type="text" name="id" id="id">
		</td>
	</tr>
	<tr>
		<th class="label">이름</th>
		<td class="inp"><input type="text" name="writer" id="writer" value="<s:property value="writer"/>"></td>
	</tr>
	<tr>
		<th class="label">비밀번호</th>
		<td class="inp"><input type="password" name="pw" id="pw"></td>
	</tr>
	<tr>
		<th class="label">비밀번호 확인</th>
		<td class="inp"><input type="password" name="pwchk" id="pwchk"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="가입하기">
			<input type="button" value="목록으로" onclick="javascript:location.href='goList.jsp'">		
		</td>
	</tr>
</table>
</form>
</body>
</html>