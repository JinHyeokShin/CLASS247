<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>CLASS 247 - 당신을 무엇을 팔 수 있습니까?</title>
    
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<style>
	.login{
		margin: 9% auto;
		border: 1px solid #954CBC;
		padding: 10px;
		width: 50%;
		height:120%;  
		border-radius: 10px;
	}
	table td{
		text-align: left;
	}
	td a, td button{
		width : 70%;
	}	
	.genric-btn{
	padding: 9 9 10 9;
	}
	.genderForm{
		align : left;
	}
	 td input{
		 width : 80%;
	 }
	  .jb-default-1 { font-size: 12px; }
	  
	    .jb-default-2 { font-size: 16px; }
	    
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

</head>

<body>
	<jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>
	
	 
	  
	  	<div class="login" align="center">
        	<br>
      		<h1>${ loginUser.memName }님의 쿠폰 목록</h1>
      		<hr>
      		<br>
      		<h4 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      		${ loginUser.memName } 님의 총 쿠폰 갯수 : ${ pi.listCount }</h3>	
      		<br>
 			<table align="center" border="1" cellspacing="0" width="90%">
				<tr style="color:white;background-color:#954CBC;">
					<th>쿠폰 번호</th> 
					<th>쿠폰 이름</th>
					<th>쿠폰 발급 날짜</th>
					<th>쿠폰 사용 날짜</th>
					<th>발급된 쿠폰 상태</th>
				</tr>
				<c:if test=""${ !empty ${ list }">
		<c:forEach items="${ list }" var="c">
		<tr>
			<td align="center">${ c.givecouponNum }</td>
			<td align="center">${ b.bWriter }</td>
			<td align="center">${ b.bCreateDate }</td>
			<td align="center">${ b.bcount }</td>
			<td align="center">
				</c:if>
				<c:if test="${ empty list }">
					<td colspan="5">발급된 쿠폰이 없습니다.</td>
				</c:if>
			</td>
		</tr>
		</c:forEach>
			</table>
            <br><hr>
            
       
            </div>
    	
		
				
				<!-- [이전] -->	
				<c:if test="${ pi.currentPage eq 1 }">
					[이전] 
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url value="blist.do" var="before">
						<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
					</c:url>
					<a href="${ before }">[이전] </a> 
				</c:if>		
				
				<!-- 번호들  -->
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
					<a href="${ next }"> [다음]</a>
				</c:if>
   
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>
