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
	
// 	$(function(){
// 		$("#pwdChk").hide();
// 		/* 목록 버튼 클릭 시 처리 이벤트 */
// 		$("#boardList").click(function(){
// 			location.href='list.action?currentPage=<s:property value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>'
// 		});
		
// 		/* 답변 버튼 클릭 시 처리 이벤트 */
// 		$("#replyBoard").click(function(){
// 			location.href='reply.action?currentPage=<s:property value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>'
// 		});

// 		/*수정 버튼 클릭 시 처리 이벤트 */
// 		$("#updateBoard").click(function(){
// 			$("#pwdChk").show();
// 			$("#msg").text("작성 시 입력한 비밀번호를 입력해 주세요.").css("color","#000099");
// 			butChk = 1;
// 		});
		
// 		/*삭제 버튼 클릭 시 처리 이벤트 */
// 		$("#deleteBoard").click(function(){
// 			$("#pwdChk").show();
// 			$("#msg").text("작성 시 입력한 비밀번호를 입력해 주세요.").css("color","#000099");
// 			butChk=2;
// 		});
		
// 		/*비밀번호 확인 버튼 클릭 시 처리 이벤트 */
// 		$("#pwdBut").click(function(){
// 			pwdConfirm();	
// 		});
// 	});
function open_win_noresizable(url, name){
	var oWin = window.open(url, name, "scrollbars=no, status=yes, width=300, height=150");
}

</script>
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
		<tr align="center">
			<td align="center">글 제목</td>
			<td colspan="5"><s:property value="bo.title" /></td>
		</tr>
		<tr align="center">
			<td align="center">작성자</td>
			<td><s:property value="bo.writer" /></td>
			<td align="center">글 작성일</td>
			<td><s:property value="bo.regdate" /></td>
			<td align="center">조회수</td>
			<td><s:property value="bo.hit" /></td>
		</tr>
		<tr>
			<td align="center">글 내용 </td>
			<td colspan="5"><textarea rows="10" cols="75" readonly="readonly"><s:property value="bo.content" /></textarea></td>
		</tr>
	</table>
	<table align="center">
	<%-- 
		<tr align="left">
			<td id="btd1">
				<div id="pwdChk">
					<form id="f_pwd">
						<s:hidden name="seqarg" value="%{seqarg}"/>
						<s:hidden name="currentPage" value="%{currentPage}"/>
						<s:hidden name="keyField" value="%{keyField}"/>
						<s:hidden name="keyWord" value="%{keyWord}"/>
						<label for="pwdarg" id="l_pwd">비밀번호 : </label>
						<input type="password" name="pwdarg" id="pwdarg" />
						<input type="button" id="pwdBut" value="확인" />
						<span id="msg"></span>
					</form>
				</div>
			</td>
		</tr>
		 --%>
		<tr align="right">
			<td width="550">
			<!-- 
				<input type="button" value="답글쓰기" id="replyBoard" /> 
				<input type="button" value="목록보기" id="boardList" />
				<input type="button" value="수정하기" id="updateBoard" /> 
				<input type="button" value="삭제하기" id="deleteBoard" /> 
			 -->
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
				<input name="list" type="button" value="답글" onclick="javascript:location.href='replyForm.action?seqarg=<s:property value="seqarg"/>&currentPage=<s:property value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>'">
				<input name="list" type="button" value="수정" onclick="javascript:open_win_noresizable('checkForm.action?seqarg=<s:property value="seqarg"/>&currentPage=<s:property value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>', 'modify')">
				<input name="list" type="button" value="삭제" onclick="javascript:open_win_noresizable('checkForm.action?seqarg=<s:property value="seqarg"/>&currentPage=<s:property value="currentPage"/>&keyField=<s:property  value="keyField"/>&keyWord=<s:property value="keyWord"/>', 'delete')">
				<input name="list" type="button" value="목록" onclick="javascript:location.href='list.action?currentPage=<s:property value="currentPage"/>&keyField=<s:property value="keyField"/>&keyWord=<s:property value="keyWord"/>'">
			</td>
		</tr>
	</table>
</body>
</html>