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
					<th width="45px">작성자</th>
					<th width="45px">조회수</th>
					<th width="70px">날짜</th>
				</tr>
				<tr>
					<td>1</td>
					<td>첫번째 공지입니다.</td>
					<td>관리자</td>
					<td>1</td>
					<td>20191016</td>
				</tr>
				<tr>
					<td>2</td>
					<td>첫번째 공지입니다.</td>
					<td>관리자</td>
					<td>1</td>
					<td>20191016</td>
				</tr>
				<tr>
					<td>3</td>
					<td>첫번째 공지입니다.</td>
					<td>관리자</td>
					<td>1</td>
					<td>20191016</td>
				</tr>
			</table>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/user/common/footer.jsp"/>
</body>
</html>