<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
	<colgroup>
		<col width = "80"/>
		<col width = "100"/>
		<col width = "80"/>
		<col width = "100"/>
		<col width = "80"/>
		<col width = "100"/>
	</colgroup>
		<tr>
			<td>�� ����</td>
			<td colspan="3">title</td>
			<td>��ȸ��</td>
			<td>hit</td>
		</tr>
		<tr>
			<td>�н�����</td>
			<td>pwd</td>
			<td>�� �ۼ���</td>
			<td>regdate</td>
			<td>�ۼ���</td>
			<td>writer</td>
		</tr>
		<tr>
			<td>�� ���� </td>
			<td colspan="5">content</td>
		</tr>
		<tr>
			<td colspan="6" align="center">
				<input type="button" value="�ۼ��ϱ�" name="write"> 
				<input type="button" value="��Ϻ���" name="list"> 
				<input type="button" value="�����ϱ�" name="update"> 
				<input type="button" value="�����ϱ�" name="delete">
			</td>
		</tr>
	</table>
</body>
</html>