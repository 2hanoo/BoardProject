<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<form action="userLogout.action" method="get" onsubmit="CURRENT_URL.value = window.location.href">
	${sessionScope.NAME} ���� �α��� �ϼ̽��ϴ�. <input type="hidden" name="CURRENT_URL"> <input type="submit" value="�α׾ƿ�">
</form>