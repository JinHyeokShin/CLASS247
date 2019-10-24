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
<div class="section-top-border">
				<h3 class="mb-30">Table</h3>
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head">
							<div class="serial">#</div>
							<div class="country">Countries</div>
							<div class="visit">Visits</div>
							<div class="percentage">Percentages</div>
						</div>
						<div class="table-row">
							<div class="serial">01</div>
							<div class="country"> <img src="img/elements/f1.jpg" alt="flag">Canada</div>
							<div class="visit">645032</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-1" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">02</div>
							<div class="country"> <img src="img/elements/f2.jpg" alt="flag">Canada</div>
							<div class="visit">645032</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-2" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">03</div>
							<div class="country"> <img src="img/elements/f3.jpg" alt="flag">Canada</div>
							<div class="visit">645032</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-3" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">04</div>
							<div class="country"> <img src="img/elements/f4.jpg" alt="flag">Canada</div>
							<div class="visit">645032</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-4" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">05</div>
							<div class="country"> <img src="img/elements/f5.jpg" alt="flag">Canada</div>
							<div class="visit">645032</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-5" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">06</div>
							<div class="country"> <img src="img/elements/f6.jpg" alt="flag">Canada</div>
							<div class="visit">645032</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-6" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">07</div>
							<div class="country"> <img src="img/elements/f7.jpg" alt="flag">Canada</div>
							<div class="visit">645032</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-7" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">08</div>
							<div class="country"> <img src="img/elements/f8.jpg" alt="flag">Canada</div>
							<div class="visit">645032</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-8" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	  	<div class="login" align="center">
        	<br>
      		<h1>${ loginUser.memName }님의 쿠폰 목록</h1>
      		<hr>
      		<br>
      		<c:if test="${ !empty couponlist }">
	      		<h4 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      		${ loginUser.memName } 님의 총 쿠폰 갯수 : ${ couponlist.size() }</h4>	
	      	</c:if>
      		<c:if test="${ empty couponlist }">
	      		<h4 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      		${ loginUser.memName } 님의 총 쿠폰 갯수 : 0 </h4>	
      		</c:if>
      		<br>
 			<table align="center" border="1" cellspacing="0" width="90%">
				<tr style="color:white;background-color:#954CBC;">
					<th>No.</th> 
					<th>쿠폰 이름</th>
					<th>쿠폰 발급 날짜</th>
					<th>쿠폰 할인 가격</th>
					<th>쿠폰 종료 날짜</th>
				</tr>
				<c:if test="${ !empty couponlist }">
		<c:forEach items="${ couponlist }" var="c">
		<tr>
			<td align="center">${ c.rNum }</td>
			<td align="center">${ c.couponName }</td>
			<td align="center">${ c.givecouponEnrolledDate }</td>
			<td align="center">${ c.couponDiscount }%</td>
			<td align="center">${ c.couponEndDate }</td>
		</tr>
		</c:forEach>
				</c:if>
				<c:if test="${ empty couponlist }">
				<tr>
					<td colspan="5" align="center">발급된 쿠폰이 없습니다.</td>
					</tr>
				</c:if>
				
			</table>	
			<br>	
				<!-- [이전] -->	
				<c:if test="${ pi.currentPage eq 1 }">
					[이전] 
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url value="memCoupon.do" var="before">
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
						<c:url value="memCoupon.do" var="page">
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
					<c:url value="memCoupon.do" var="next">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					</c:url>
					<a href="${ next }"> [다음]</a>
				</c:if>  
				      <br><br><hr>  
            </div>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>
