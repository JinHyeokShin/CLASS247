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
	table th:hover{
		cursor:default;
	}
	table tr{
		height:30px;
	}
</style>
<body>
	<c:import url="/WEB-INF/views/user/common/menubar.jsp"/>
 	<section class="special_cource padding_top" style="padding-top:100px">
		<div class="container" style="padding-bottom: 40px">
			<hr>
			<h1>CLASS 247</h1>
			<hr>
			<div class="row justify-content-left">
				<div class="col-xl-5">
					<div class="section_tittle text-left">
						<p></p>
						<h2>공 지 사 항</h2>
					</div>
				</div>
			</div>
			<div class="container">
			<table border="1px solid black" style="width:900px;" align="center">
				<tr style="color:white;background-color:#954CBC;">
					<th width="5%">번호</th>
					<th>제목</th>
					<th width="90px">작성된 날짜</th>
					<th width="90px">수정된 날짜</th>
					<th width="60px">작성자</th>
					<th width="60px">조회수</th>
				</tr>
			<c:forEach items="${ list }" var="n">
				<tr class="trclick">
					<td align="center">${ n.noticeNum }</td>
					<td align="center">
							<c:url value="ndetail.do" var="ndetail">
								<c:param name="noticeNum" value="${ n.noticeNum }"/>
							</c:url>
								<a href="${ ndetail }" style="color:black;">${ n.noticeTitle }</a>
					</td>
					<td align="center">${ n.noticeEnrollDate }</td>
					<td align="center">${ n.noticeModifyDate }</td>
					<td align="center">관리자</td>
					<td align="center">${ n.noticeCount }</td>
<%-- 					<td align="center">
						<c:if test="${ !empty n.originalFileName }">
<!-- 							◎ -->
						</c:if>
						<c:if test="${ empty n.originalFileName }">
<!-- 							&nbsp; -->
						</c:if>
					</td> --%>
				</tr>
			</c:forEach>
		<tr align="center" height="20" style="background-color:#954CBC;cursor:default;">
			<td colspan="6">
				<!-- 이전 -->
				<c:if test="${ pi.currentPage eq 1 }">
					<span style="color:lightgray; cursor:default;"> &lt; 이전</span>
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url value="noticeListView.do" var="before">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }"  style="color:white;"> &lt; 이전</a>
				</c:if>
				
				<!-- 번호들 -->
				<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
					<c:if test="${ p eq pi.currentPage }">
						<font color="white" size ="4">${ p }</font>
					</c:if>
					<c:if test="${ p ne pi.currentPage }">
						<c:url value="noticeListView.do" var="page">
							<c:param name="currentPage" value="${ p }"/>
						</c:url>
						
						<a href="${ page }" style="color:white;">${ p }</a>
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					<span style="color:lightgray; cursor:default;"> 다음 &gt;</span>
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url value="noticeListView.do" var="next">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					</c:url>
					<a href="${ next }" style="color:white;"> 다음 &gt; </a>
				</c:if>
			</td>
			
		</tr> 
			</table>
			</div>
		</div>
	</section>
		<script>
		$(function(){
			$(".trclick td").find("a").mouseenter(function(){
				$(this).parent().parent().css({"background":"lightgrey","cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().parent().css({"background":"white"});
			}).click(function(){
				var noticeNum = $(this).children().eq(0).text();
				location.href="ndetail.do?noticeNum="+noticeNum;
			});
		});
		$(function(){
			$(".trclick td").mouseenter(function(){
				$(this).parent().css({"background":"lightgrey","cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				var noticeNum = $(this).parent().children().eq(0).text();
				location.href="ndetail.do?noticeNum="+noticeNum;
			});
		});
	</script>
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>