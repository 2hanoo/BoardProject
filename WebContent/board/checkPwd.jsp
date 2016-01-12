<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>비밀번호 확인</title>
<link rel="stylesheet" href="../css/board.css" type="text/css" />
</head>
<body>
	<center>
		<h2>비밀번호 확인</h2>
		<!-- 비밀번호를 입력했을 때 일치하면 checkSuccess.jsp 페이지로 일치하지 않다면 checkError.jsp 페이지로 이동한다  -->
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
					<td width="80" bgcolor="#F4F4F4">비밀번호 입력</td>
					<td width="170" bgcolor="#FFFFFF"><s:password name="pwdarg"
							theme="simple" cssStyle="width:100px" maxlength="20" /> <input
						type="submit" value="확인"></td>
				</tr>
				<tr bgcolor="#777777">
					<td height="1" colspan="2"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
