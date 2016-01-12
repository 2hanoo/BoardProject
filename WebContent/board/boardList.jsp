<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>스트럿츠 2 게시판</title>
<link rel="stylesheet" href="../include/css/board.css" type="text/css" />
</head>
<body>
	<br>
	<table width="800px" align="center" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center"><h3>스트럿츠2 게시판</h3></td>
		</tr>
	</table>
	<table width="800px" align="center" border="0" cellspacing="0" cellpadding="2">
		<tr align="center" bgcolor="#F3F3F3">
			<td width="50"><strong>번호</strong></td>
			<td><strong>제목</strong></td>
			<td width="70"><strong>글쓴이</strong></td>
			<td width="80"><strong>날짜</strong></td>
			<td width="50"><strong>조회</strong></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="5"></td>
		</tr>
		<s:iterator value="list" status="stat">
			<s:url id="viewURL" action="detail">
				<s:param name="seqarg">
					<s:property value="seq" />
				</s:param>
				<s:param name="currentPage">
					<s:property value="currentPage" />
				</s:param>
				<s:param name="keyField">
					<s:property value="keyField" />
				</s:param>
				<s:param name="keyWord">
					<s:property value="keyWord" />
				</s:param>
			</s:url>
			<tr bgcolor="#FFFFFF" align="center">
				<td><s:property value="seq" /></td>
				<td align="left">&nbsp; <img alt="" src="../include/image/level.gif"
					width='${levels*10}' height="10"> <s:if test="levels>0">
						<img alt="" src="../include/image/re.gif" height="10">
					</s:if> <s:a href="%{viewURL}">
						<s:property value="title" />
					</s:a>
				<td align="center"><s:property value="writer" /></td>
				<td align="center"><s:property value="regdate" /></td>
				<td><s:property value="hit" /></td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="5"></td>
			</tr>
		</s:iterator>
		<s:if test="list.size()<=0">
			<tr bgcolor="#FFFFFF" align="center">
				<td colspan="5">등록된 게시물이 없습니다.</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="5"></td>
			</tr>
		</s:if>
		<tr align="center">
			<td colspan="5"><s:property value="pagingHtml" escape="false" />
			</td>
		</tr>
		<tr align="right">
			<td colspan="5"><a href="javascript:location.href='writeForm.action?currentPage=<s:property 
				value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>'"><img src="../include/image/write.gif"></a>
			</td>
		</tr>
	</table>
	<center>
		<form action=list.action method="post" name="search">
			<select name="keyField">
				<option value="writer">글쓴이
				<option value="title">제목
				<option value="content">내용
			</select> <input type="text" name="keyWord">&nbsp;<button style="border: 0; background-color: #ffffff; padding: inherit;"><img src="../include/image/find.gif"></button>
		</form>
	</center>
</body>
</html>

