<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form action="userLogout.action" method="get"
	onsubmit="CURRENT_URL.value = window.location.href">
	${writer}���� �α��� �ϼ̽��ϴ�. <input type="submit" value="�α׾ƿ�">
</form>