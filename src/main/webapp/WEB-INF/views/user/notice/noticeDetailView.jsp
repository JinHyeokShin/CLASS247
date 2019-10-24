<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>
<body>
	<c:import url="../common/menubar.jsp"/>
	
	<section class="special_cource padding_top" style="padding-top:100px">
	<div class="container" style="padding-bottom: 40px">
			<hr>
			<h1>CLASS 247</h1>
			<hr>
			<div class="row justify-content-left">
				<div class="col-xl-5">
					<div class="section_tittle text-left">
						<p></p>
						<h2>${ n.noticeNum }번 공 지 사 항</h2>
					</div>
				</div>
			</div>
		<table align="center" border="1px solid black" style="width:900px;" align="center">
			<tr style="color:white;background-color:#954CBC;">
				<th width="5%">번호</th>
				<th width="60px">작성자</th>
				<th width="90px">작성된 날짜</th>
				<th width="90px">수정된 날짜</th>
				<th width="60px">조회수</th>
			</tr>
			<tr>
				<td>${ n.noticeNum }</td>
				<td>관리자</td>
				<td>${ n.noticeEnrollDate }</td>
				<td>${ n.noticeModifyDate }</td>
				<td>${ n.noticeCount }</td>
			</tr>
			<tr>
				<th colspan="2" style="color:white;background-color:#954CBC;">제목</th>
				<td colspan="4">${ n.noticeTitle }</td>
			</tr>
			<tr >
				<td colspan="6" align="left" height="400px" border="0px;">
					<textarea style="width:100%; height:100%; resize: none;"readonly>&nbsp;${ n.noticeContent }</textarea>
				</td>
			</tr>
		</table>
		
		</div>
		<br>
		<div align="center">
			<a href="noticeListView.do" class="btn_1" style="color:white;">돌아가기</a>
			<a href="home.do" class="btn_1" style="color:white;">홈으로</a>
		</div>
		<br><br>
		
		<table align="center" width="500" border="1" cellspacing="0">
			<tr>
				<td><textarea cols="55" rows="3" id="rContent"></textarea></td>
				<td><button id="rSubmit">등록하기</button></td>
			</tr>
		</table>
		
</body>
</html>