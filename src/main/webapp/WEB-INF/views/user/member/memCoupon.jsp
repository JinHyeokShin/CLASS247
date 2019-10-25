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
	.genric-btn{
	padding: 9 9 10 9;
	}
	.genderForm{
		align : left;
	}
	
	.table-row{
	font-size: 15;
	text-align:center;
	}
	.table-head{
	font-size: 18;
	text-align: center;
	}
	.pagebar{
	text-align: center;
	}
	.no{
	width:15%;
	}
	.COUPON_NAME{
	width:25%;
	}
	.COUPON_DISCOUNT{
	width:20%;
	}
	.COUPON_START_DATE{
	width:20%;
	}
	.COUPON_END_DATE{
	width:20%;
	}
</style>

</head>

<body>
	<jsp:include page="/WEB-INF/views/user/common/menubar.jsp"></jsp:include>
	    <section class="contact-section section_padding">
    <div class="container">
        	<br>
      		<h1>${ loginUser.memName }님의 쿠폰 목록</h1>
      		<br>
      		<hr>
        	<div class="section-top-border">
				<h3 class="mb-30">
				<c:if test="${ !empty couponlist }">
	      		<h4 align="left">&nbsp;&nbsp;&nbsp;
	      		${ loginUser.memName } 님의 총 쿠폰 갯수 : ${ couponlist.size() }</h4>	
	      	</c:if>
      		<c:if test="${ empty couponlist }">
	      		<h4 align="left">&nbsp;&nbsp;&nbsp;
	      		${ loginUser.memName } 님의 총 쿠폰 갯수 : 0 </h4>	
      		</c:if></h3>
      		<br>
				<div class="progress-table-wrap" align="center">
					<div class="progress-table">
						<div class="table-head">
							<div class="no">No.</div>
							<div class="COUPON_NAME">쿠폰 이름</div>
							<div class="COUPON_DISCOUNT">쿠폰 발급 날짜</div>
							<div class="COUPON_START_DATE">쿠폰 할인 가격</div>
							<div class="COUPON_END_DATE">쿠폰 종료 날짜</div>
						</div>
						<c:if test="${ !empty couponlist }">
							<c:forEach items="${ couponlist }" var="c">
								<div class="table-row">
									<div class="no">${ c.rNum }</div>
									<div class="COUPON_NAME">${ c.couponName }</div>
									<div class="COUPON_DISCOUNT">${ c.givecouponEnrolledDate }</div>
									<div class="COUPON_START_DATE">${ c.couponDiscount }%</div>
									<div class="COUPON_END_DATE">${ c.couponEndDate }</div>
								</div>
							</c:forEach>
					</c:if>
					<c:if test="${ empty couponlist }">
						<div class="table-row">
							<div class="no"></div>
							<div class="COUPON_NAME"></div>
							<div class="COUPON_DISCOUNT">발급된 쿠폰이 없습니다</div>
							<div class="COUPON_START_DATE"></div>
							<div class="COUPON_END_DATE"></div>
						</div>
					</c:if>
					</div>
				</div>
			</div>
			<div class="pagebar">
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
				 </div>
            </div>
           
            </section>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
</body>
</html>
