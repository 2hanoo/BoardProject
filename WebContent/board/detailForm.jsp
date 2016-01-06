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
			<td>글 제목</td>
			<td colspan="3">title</td>
			<td>조회수</td>
			<td>hit</td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td>pwd</td>
			<td>글 작성일</td>
			<td>regdate</td>
			<td>작성자</td>
			<td>writer</td>
		</tr>
		<tr>
			<td>글 내용 </td>
			<td colspan="5">content</td>
		</tr>
		<tr>
			<td colspan="6" align="center">
				<input type="button" value="작성하기" name="write"> 
				<input type="button" value="목록보기" name="list"> 
				<input type="button" value="수정하기" name="update"> 
				<input type="button" value="삭제하기" name="delete">
			</td>
		</tr>
	</table>
</body>
</html>