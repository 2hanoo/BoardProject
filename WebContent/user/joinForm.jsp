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
		msg.innerHTML='���̵� �Է��� �ּ���.';
		id.value='';
		id.focus();
		return false;
	}
	if(writer.value.trim()==''){
		msg.innerHTML='�̸��� �Է��� �ּ���.';
		writer.value='';
		writer.focus();
		return false;
	}
	if(pw.value.trim()==''){
		msg.innerHTML='��й�ȣ�� �Է��� �ּ���.';
		pw.value='';
		pw.focus();
		return false;
	}
	if(pwchk.value.trim()==''){
		msg.innerHTML='Ȯ�ο� ��й�ȣ�� �Է��� �ּ���.';
		pwchk.value='';
		pwchk.focus();
		return false;
	}
	if(pwchk.value!=pw.value){
		msg.innerHTML='��й�ȣ�� ��ġ���� �ʽ��ϴ�.';
		pw.value='';
		pwchk.value='';
		pw.focus();
		return false;
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ʈ���� �Խ��� ȸ������</title>
</head>
<body>
<form action="userJoin.action" method="post" onsubmit="return chkjoin();">
<div align="center">
<span style="color: red; font-size: 26pt;" id="msg"><s:property value="msg"/></span>
</div>
<table border="1" align="center">
	<tr>
		<th class="label">���̵�</th>
		<td class="inp">
			<input type="text" name="id" id="id">
		</td>
	</tr>
	<tr>
		<th class="label">�̸�</th>
		<td class="inp"><input type="text" name="writer" id="writer" value="<s:property value="writer"/>"></td>
	</tr>
	<tr>
		<th class="label">��й�ȣ</th>
		<td class="inp"><input type="password" name="pw" id="pw"></td>
	</tr>
	<tr>
		<th class="label">��й�ȣ Ȯ��</th>
		<td class="inp"><input type="password" name="pwchk" id="pwchk"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="�����ϱ�">
			<input type="button" value="�������" onclick="javascript:location.href='goList.jsp'">		
		</td>
	</tr>
</table>
</form>
</body>
</html>