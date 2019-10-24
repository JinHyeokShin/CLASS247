<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>

	<c:import url="../common/aMenubar.jsp"/>
	
	<h1 align="center">공지사항 상세보기/h1>
	<br>
	
	<table align="center">
			<tr>
				<td>제목</td>
				<td>${ n.noticeTitle} </td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${ n.memNum }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>${ n.noticeContent }</td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td>
					<c:if test="${ !empty n.noticeFileName }">
						<a href="${ contextPath }/resources/admin/images/noticeupload/${ n.renameFileName }" download="${ n.noticeFileName }">${ n.noticeFileName }</a>
					</c:if>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<c:url var="bupView" value="bupView.do">
						<c:param name="noticeNum" value="${ n.noticeNum }"/>
					</c:url>
					<c:url var="bdelete" value="bdelete.do">
						<c:param name="noticeNum" value="${ n.noticeNum }"/>
					</c:url>
					
					<c:if test="${ loginUser.id eq n.memNum }">
						<a href="${ bupView }">수정하기</a>
						<a href="${ bdelete }">삭제하기</a>
					</c:if>
				</td>
			</tr>
		
			<br><br>

			<!-- 댓글 등록 부분 -->
			<table align="center" width="500" border="1" cellspacing="0">
				<tr>
					<td><textarea cols="55" rows="3" id="rContent"></textarea></td>
					<td><button id="rSubmit">등록하기</button></td>
				</tr>
			</table>
			<!-- 댓글 목록 부분-->
			<table align="center" width="500" border="1" cellspacing="0" id="rtb">
				<thead>
					<tr>
						<td colspan="2"><b id="rCount"></b></td>
					</tr>
				</thead>
				<tbody>
				
				</tbody>

				
			</table>			
		</table>

		<script>
		$(function(){
			getReplyList();
			
		
			
			

			
		});
		
		function getReplyList(){
			
			var noticeNum= ${n.noticeNum};
			
			$.ajax({
				url:"noticeReplyList.do",
				data:{noticeNum:noticeNum},
				dataType:"json",
				success:function(data){
					
					console.log(data);
	
					
					
					
					
					
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			});
		}
			 
		</script>

</body>
</html>