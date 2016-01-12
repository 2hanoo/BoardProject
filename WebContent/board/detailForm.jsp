<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../include/css/board.css" type="text/css" />
<script type="text/javascript" src="../include/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../include/js/board.js"></script>
<script type="text/javascript">
function open_win_noresizable(url, name){
	var oWin = window.open(url, name, "scrollbars=no, status=yes, width=300, height=150");
}
</script>
</head>
<body>
	<table width="800px" align="center" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center"><h3>스트럿츠2 게시판</h3></td>
		</tr>
	</table>
	<table width="800px" align="center" border="0" cellspacing="0" cellpadding="2">
	<colgroup>
		<col width = "80"/>
		<col width = "100"/>
		<col width = "80"/>
		<col width = "100"/>
		<col width = "80"/>
		<col width = "100"/>
	</colgroup>
	<tr bgcolor="#777777">
			<td height="1" colspan="6"></td>
		</tr>
		<tr align="center">
			<td align="center" bgcolor="#AAAAAA">글 제목</td>
			<td colspan="5"><s:property value="bo.title" /></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="6"></td>
		</tr>
		<tr align="center">
			<td align="center" bgcolor="#AAAAAA">작성자</td>
			<td><s:property value="bo.writer" /></td>
			<td align="center" bgcolor="#AAAAAA">글 작성일</td>
			<td><s:property value="bo.regdate" /></td>
			<td align="center" bgcolor="#AAAAAA">조회수</td>
			<td><s:property value="bo.hit" /></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="6"></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#AAAAAA">글 내용 </td>
			<td colspan="5" height="299px"><s:property value="bo.content" /></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="6"></td>
		</tr>
		<tr>
			<td height="10" colspan="6"></td>
		</tr>
		<tr align="right">
			<td width="550" colspan="6">
			 <s:url id="modifyURL" action="update">
				<s:param name="seq">
				<s:property value="seqarg"/>
				</s:param>
			</s:url>
			<s:url id="deleteURL" action="delete">
	 			<s:param name="seq">
	  			<s:property value="seqarg"/>
	 			</s:param>
			</s:url>
				<a href="javascript:location.href='replyForm.action?seqarg=<s:property 
				value="seqarg"/>&currentPage=<s:property value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>'"><img src="../include/image/re_write.gif"></a>
				<a href="javascript:open_win_noresizable('checkForm.action?seqarg=<s:property 
				value="seqarg"/>&currentPage=<s:property value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>', 'modify')"><img src="../include/image/modify.gif"></a>
				<a href="javascript:open_win_noresizable('checkForm.action?seqarg=<s:property 
				value="seqarg"/>&currentPage=<s:property value="currentPage"/>&keyField=<s:property  value="keyField"/>&keyWord=<s:property value="keyWord"/>', 'delete')"><img src="../include/image/delete.gif"></a>
				<a href="javascript:location.href='list.action?currentPage=<s:property 
				value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>'"><img src="../include/image/list.gif"></a>
			</td>
		</tr>
	</table>
</body>
</html>