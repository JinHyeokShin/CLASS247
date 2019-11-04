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
						<h2>${ c.courseTitle }</h2>
					</div>
				</div>
			</div>
			<div class="container">
			<table border="1px solid black" style="width:900px;" align="center">
				<tr style="color:white;background-color:#954CBC;">
					<th width="5%">번호</th>
					<th>강의제목</th>
				</tr>
		<c:if test="${ !empty list }">
			<c:forEach items="${ list }" var="v">
				<tr class="trclick">
					<td align="center">${ v.rowNum }</td>
					<td align="center">
							<c:url value="vdetail.do" var="vdetail">
								<c:param name="videoCourse" value="${ v.videoCourse }"/>
								<c:param name="courseNum" value="${ c.courseNum }"/>
							</c:url> 
								<a href="${ vdetail }" style="color:black;">${ v.videoTitle }</a>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${ empty list }">
					<tr>
						<td colspan="2">
							등록된 영상이 없습니다.
						</td>
					</tr>
		</c:if>
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
				 $(this).parent().children().eq(1).click();
			});
		});
		$(function(){
			$(".trclick td").mouseenter(function(){
				$(this).parent().css({"background":"lightgrey","cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				$(this).parent().children().eq(1).click();
			});
		});
	</script>
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>