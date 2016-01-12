<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>비밀번호 확인</title>
<link rel="stylesheet" href="../css/board.css" type="text/css" />
<!-- 비밀번호가 일치하고 폼 이름이 modify일 경우 modifyFormAction.action으로 이동 하고 폼 이름이 delete일 경우 경고창을 띄우고 deleteAction.action을 실행한다 -->
<script type="text/javascript">
	function locationURL() {
		if (window.name == 'modify') {
			window.opener.parent.location.href = 'updateForm.action?seqarg=<s:property value="seqarg"/>&currentPage=<s:property 
					value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>';
		} else if (window.name == 'delete') {
			alert("삭제되었습니다.");
			window.opener.parent.location.href = 'delete.action?seqarg=<s:property value="seqarg"/>&currentPage=<s:property 
					value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>';
		}
		window.close();
	}
</script>
</head>
<body>
	<script>
		locationURL();
	</script>
</body>
</html>
