<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>비밀번호 오류</title>
<link rel="stylesheet" href="../css/board.css" type="text/css" />
<!-- 비밀번호가 틀리면 경고창을 띄우고 이전 페이지인 비밀번호 확인 창으로 돌아간다 -->
<script type="text/javascript">
	function ErrorMessage() {
		alert("회원가입이 실패하였습니다. 다른 아이디로 가입해주세요");
		history.parent.back();
	}
</script>
</head>
<body>
	<script>
		ErrorMessage();
	</script>