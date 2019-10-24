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
		text-align: center;
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
	table th:hover{
		cursor:default;
	}
	
</style>

</head>

<body>
	<jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>

	  	<div class="login" align="center">
        	<br>
      		<h1>${ loginUser.memName }님의 찜한 클래스 목록</h1>
      		<hr>
      		<br>
      		 <form action="mZzim.do" method="post">
      		<c:if test="${ !empty lovelist }">
	      		<h4 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      		${ loginUser.memName } 님의 총 클래스 찜한 갯수 : ${ lovelist.size() }
	      		</h4>
	      		<h4 align="right"><button class="genric-btn primary-border radius" name="log-btn" type="submit">삭제하기</button>	<br>
	      		</h4>
	      	</c:if>
      		<c:if test="${ empty lovelist }">
	      		<h4 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      		${ loginUser.memName } 님의 총 클래스 찜한 갯수 : 0 </h4>	
	      	</c:if>
 			<table align="center" border="1" cellspacing="0" width="90%">
				<tr style="color:white;background-color:#954CBC;">
					<th width="10%"></th> 
					<th></th>
					<th colspan="3"></th>
					
				</tr>
				<c:if test="${ !empty lovelist }">
		<c:forEach items="${ lovelist }" var="l">
		<tr>
			<td align="center"><input type="checkbox" name="check" value="${ l.courseNum }"></td>
			<td align="center" width="30%"><img src="resources/user/img/test1.jpeg" alt="" class="img-fluid"></td>
			<td align="left" colspan="3">
						${ l.wishedDate }<br>
						${ l.courseTitle }<br>
						${ l.coursePrice }<br>
						${ l.courseKind }<br>
						${ l.creatorName }<br>
			
		</tr>
		</c:forEach>
				</c:if>
				<c:if test="${ empty lovelist }">
				<tr>
					<td colspan="5" align="center">내가 찜한 클래스가 없습니다.</td>
					</tr>
				</c:if>
				
			</table>
			</form>	
			
			
			<br>	
				<!-- [이전] -->	
				<c:if test="${ pi.currentPage eq 1 }">
					[이전] 
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url value="memZzim.do" var="before">
						<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
					</c:url>
					<a href="${ before }">[이전] </a> 
				</c:if>		
				
				<!-- 번호들  -->
				<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
					<c:if test="${ p eq pi.currentPage }">
						<font color="#954CBC" size="4">[${ p }]</font>
					</c:if>
					<c:if test="${ p ne pi.currentPage }">
						<c:url value="memZzim.do" var="page">
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
					<c:url value="memZzim.do" var="next">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					</c:url>
					<a href="${ next }"> [다음]</a>
				</c:if>  
				      <br><br><hr>  
            </div>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>
