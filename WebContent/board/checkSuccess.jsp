<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��й�ȣ Ȯ��</title>
<link rel="stylesheet" href="../css/board.css" type="text/css" />
<!-- ��й�ȣ�� ��ġ�ϰ� �� �̸��� modify�� ��� modifyFormAction.action���� �̵� �ϰ� �� �̸��� delete�� ��� ���â�� ���� deleteAction.action�� �����Ѵ� -->
<script type="text/javascript">
	function locationURL() {
		if (window.name == 'modify') {
			window.opener.parent.location.href = 'updateForm.action?seqarg=<s:property value="seqarg"/>&currentPage=<s:property 
					value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>';
		} else if (window.name == 'delete') {
			alert("�����Ǿ����ϴ�.");
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
