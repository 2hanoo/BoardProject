<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��й�ȣ Ȯ��</title>
<link rel="stylesheet" href="../css/board.css" type="text/css" />
</head>
<body>
	<center>
		<h2>��й�ȣ Ȯ��</h2>
		<!-- ��й�ȣ�� �Է����� �� ��ġ�ϸ� checkSuccess.jsp �������� ��ġ���� �ʴٸ� checkError.jsp �������� �̵��Ѵ�  -->
		<form action="pwdCheck" method="post">
			<s:hidden name="seqarg" value="%{seqarg}" />
			<s:hidden name="currentPage" value="%{currentPage}" />
			<s:hidden name="keyField" value="%{keyField}" />
			<s:hidden name="keyWord" value="%{keyWord}" />
			<table width="250" border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#777777">
					<td height="1" colspan="2"></td>
				</tr>
				<tr>
					<td width="80" bgcolor="#F4F4F4">��й�ȣ �Է�</td>
					<td width="170" bgcolor="#FFFFFF"><s:password name="pwdarg"
							theme="simple" cssStyle="width:100px" maxlength="20" /> <input
						type="submit" value="Ȯ��"></td>
				</tr>
				<tr bgcolor="#777777">
					<td height="1" colspan="2"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
