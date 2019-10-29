<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ourcompany.class247.member.model.vo.Member"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <html>

        <html>

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>CLASS 247</title>
            <style>
	.table-head{
	font-size: 18;
	text-align: center;
	}
	.DELIVERY_NUM{
	width: 10%;
	}
	.PAY_DATE{
	width: 15%;
	}
	.COURSE_TITLE{
	width: 15%;
	}
	.COURSE_MATERIAL{
	width: 15%;
	}
	.PAY_PRICE{
	width: 15%;
	}
	.DELIVERY_STATUS{
	width: 10%;
	}
	.DELIVERY_detail{
	width: 20%;
	}
	.table-row{
	font-size: 15;
	text-align: center;
	}
	</style>
            <link rel="icon" href="resources/user/img/favicon.png">
            <script src="resources/user/js/jquery.counterup.min.js"></script>
            <script src="resources/user/js/waypoints.min.js"></script>

        </head>
<c:import url="/WEB-INF/views/user/common/menubar.jsp" />
<body>
  
	    <section class="contact-section section_padding">
    <div class="container">
	  	<br>
      		<h1>${ loginUser.memName }님의 주문 및 배송 목록 </h1>
      		<br>
      		<hr>
      		<br>
	<div class="section-top-border">
				<h3 class="mb-30"></h3>
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head">
							<div class="DELIVERY_NUM">No.</div>
							<div class="PAY_DATE">주문일자</div>
							<div class="COURSE_TITLE">클래스</div>
							<div class="COURSE_MATERIAL">준비물내역</div>
							<div class="PAY_PRICE">주문금액</div>
							<div class="DELIVERY_STATUS">주문상태</div>
							<div class="DELIVERY_detail">상세조회</div>
						</div>
					<c:if test="${ !empty delist }">
						<c:forEach items="${ delist }" var="de">
						<div class="table-row">
							<div class="DELIVERY_NUM">${ de.deliveryNum }</div>
							<div class="PAY_DATE">${ de.payDate }</div>
							<div class="COURSE_TITLE">${ de.courseTitle }</div>
							<div class="COURSE_MATERIAL">${ de.courseMaterial }</div>
							<div class="PAY_PRICE">${ de.payPrice }</div>
							<div class="DELIVERY_STATUS">
							<c:if test="${ de.deliveryStatus eq 'S'}">
							준비물출발
							</c:if>
							<c:if test="${ de.deliveryStatus eq 'I'}">
							배송중
							</c:if>
							<c:if test="${ de.deliveryStatus eq 'E'}">
							배송완료
							</c:if>
							</div>
							<div class="DELIVERY_detail">
							<c:url value="memDeliverydetail.do" var="memDeliverydetail">
								<c:param name="deliveryNum" value="${ de.deliveryNum }"/>
							</c:url>
							<a href="${ memDeliverydetail }">
							 <input class="genric-btn primary-border radius" name="log-btn" type="button" style="font-size: 15" value="상세보기">
							</a>
							</div>
						</div>
						</c:forEach>
						</c:if>
						<c:if test="${ empty delist }">
							<div class="table-row">
								<div class="DELIVERY_NUM"></div>
								<div class="PAY_DATE"></div>
								<div class="COURSE_TITLE"></div>
								<div class="COURSE_MATERIAL">주문 및 배송 내역이</div>
								<div class="PAY_PRICE"> 없습니다</div>
								<div class="DELIVERY_STATUS"></div>
								<div class="MEM_NAME"></div>
								<div class="DELIVERY_detail"></div>
							</div>
						</c:if>
							</div>
						</div>
					</div>
				</div>
			</section>
			

		
</body>
 <c:import url="/WEB-INF/views/user/common/footer.jsp" />
</html>