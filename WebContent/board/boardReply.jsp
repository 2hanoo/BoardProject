<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ʈ����2 �Խ���</title>
<link rel="stylesheet" href="../include/css/board.css" type="text/css" />
<script type="text/javascript">
	function validation() {
		var frm = document.forms[0];
		if (frm.title.value == "") {
			alert("������ �Է����ּ���.");
			return false;
		}
		if (frm.writer.value == "") {
			alert("�̸��� �Է����ּ���.");
			return false;
		}
		if (frm.pwd.value == "") {
			alert("��й�ȣ�� �Է����ּ���.");
			return false;
		}
		if (frm.content.value == "") {	
			alert("������ �Է����ּ���.");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<s:if test="bo==null">
		<form action="reply.action" method="post" onsubmit="return validation()">
			<s:hidden name="currentPage" value="%{currentPage}" />
			<s:hidden name="seqarg" value="%{seqarg}" />
			<s:hidden name="keyField" value="%{keyField}" />
			<s:hidden name="keyWord" value="%{keyWord}" />
	</s:if>
	<table width="600" border="0" cellspacing="0" cellpadding="0"
		align="left">
		<tr>
			<td align="right" colspan="2"><font color="#FF0000">*</font>�� �ʼ�
				�Է»����Դϴ�.</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#F4F4F4"><font color="FF0000">*</font>
				����</td>
			<td width="500" bgcolor="#FFFFFF"><s:textfield name="title"
					theme="simple" maxlength="50" value="[��  ��] %{bo.title}" cssStyle="width:370px" />
			</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#F4F4F4"><font color="FF0000">*</font>
				�̸�</td>
			<td width="500" bgcolor="#FFFFFF"><s:textfield name="writer"
					theme="simple" maxlength="20" value="%{bo.writer}"
					cssStyle="width:100px" /></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#F4F4F4"><font color="FF0000">*</font>
				��й�ȣ</td>
			<td width="500" bgcolor="#FFFFFF"><s:password name="pwd"
					theme="simple" maxlength="20" value="%{bo.pwd}"
					cssStyle="width:100px" /></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#F4F4F4"><font color="FF0000">*</font>
				����</td>
			<td width="500" bgcolor="#FFFFFF"><s:textarea name="content"
					theme="simple" value="%{bo.content}" cols="50" rows="10" /></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td height="10" colspan="2"></td>
		</tr>
		<tr>
			<td align="right" colspan="2"><button style="border: 0; background-color: #ffffff; padding:inherit;"><img src="../include/image/re_write.gif"></button> 
				<a href="javascript:location.href='list.action?currentPage=<s:property 
				value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>'"><img src="../include/image/list.gif"></a>
			</td>
		</tr>
	</table>
</body>
</html>
