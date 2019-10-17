<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table tr{
		height:30px;
	}
	table tr:hover{
		background-color:lightgrey;
		cursor:pointer;
	}
	table th:hover{
		cursor:default;
	}
</style>
<body>
	<c:import url="/WEB-INF/views/user/common/menubar.jsp"/>
 	<section class="special_cource padding_top" style="padding-top:100px">
		<div class="container" style="padding-bottom: 40px">
			<hr>
			<h1>공지사항</h1>
			<hr>
			<div class="row justify-content-left">
				<div class="col-xl-5">
					<div class="section_tittle text-left">
						<p>클래스 247만의 특별한 클래스</p>
						<h2>247 Signiture</h2>
					</div>
				</div>
			</div>
			<div class="container">
			<table border="1px solid black" style="width:100%;">
				<tr style="color:white;background-color:#954CBC;">
					<th width="5%">번호</th>
					<th>제목</th>
					<th width="70px">날짜</th>
					<th width="45px">작성자</th>
					<th width="45px">조회수</th>
					<th width="45px">첨부파일</th>
				</tr>
			<c:forEach items="${ list }" var="n">
				<tr>
					<td align="center">${ n.noticeNum }</td>
					<td align="left">
						<c:if test="${ empty loginUser }">
						${ n.noticeTitle }
						</c:if>
						<c:if test="${ !empty loginUser }">
							<c:url value="ndetail.do" var="ndetail">
								<c:param name="noticeNum" value="${ n.noticeNum }"/>
							</c:url>
								<a href="${ ndetail }">${ n.nTitle }</a>
						</c:if>
					</td>
					<td align="center">${ n.nModifyDate }</td>
					<td align="center">관리자</td>
					<td align="center">${ n.nCount }</td>
					<td align="center">
						<c:if test="${ !empty n.originalFileName }">
							◎
						</c:if>
						<c:if test="${ empty n.originalFileName }">
							&nbsp;
						</c:if>
					</td>
				</tr>
			</c:forEach>
		<tr align="center" height="20">
			<td colspan="6">
				<!-- 이전 -->
				<c:if test="${ pi.currentPage eq 1 }">
					[이전]
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url value="blist.do" var="before">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }">[이전]</a>
				</c:if>
				
				<!-- 번호들 -->
				<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
					<c:if test="${ p eq pi.currentPage }">
						<font color="red" size="4">[${ p }]</font>
					</c:if>
					<c:if test="${ p ne pi.currentPage }">
						<c:url value="blist.do" var="page">
							<c:param name="currentPage" value="${ p }"/>
						</c:url>
						<a href="${ page }">${ p }</a>
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					[다음]
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url value="blist.do" var="next">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					</c:url>
					<a href="${ next }"> [다음] </a>
				</c:if>
			</td>
			
		</tr> 
			</table>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>