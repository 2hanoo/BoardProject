<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form action="userLogout.action" method="get"
	onsubmit="CURRENT_URL.value = window.location.href">
	${writer}님이 로그인 하셨습니다. <input type="submit" value="로그아웃">
</form>