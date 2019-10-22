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

	.login{
		margin: 9% auto;
		border: 1px solid #954CBC;
		padding: 10px;
		width: 80%;
		height:120%;  
		border-radius: 10px;
	}
	.progress-table-wrap{
	width: 90%;
	
	}
	.table-head{
	font-size: 25;
	}
	.DELIVERY_NUM{
	width: 10%;
	}
	.PAY_DATE{
	width: 12%;
	}
	.COURSE_TITLE{
	width: 16%;
	}
	.COURSE_MATERIAL{
	width: 16%;
	}
	.PAY_PRICE{
	width: 12%;
	}
	.DELIVERY_STATUS{
	width: 12%;
	}
	.MEM_NAME{
	width: 12%;
	}
	.DELIVERY_detail{
	width: 10%;
	}
	.table-row{
	font-size: 15;
	}
	</style>
            <link rel="icon" href="resources/user/img/favicon.png">
            <script src="resources/user/js/jquery.counterup.min.js"></script>
            <script src="resources/user/js/waypoints.min.js"></script>

        </head>
<c:import url="/WEB-INF/views/user/common/menubar.jsp" />
<body>
      <br>
	<div class="login" align="center">
	  		<br>
	  		 <h1>${ loginUser.memName }님의 주문 및 배송 목록</h1>
                                 <br>
	  		<hr>
	  		
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
							<div class="MEM_NAME">주문자</div>
							<div class="DELIVERY_detail">상세조회</div>
						</div>
						<c:forEach items="${ delist }" var="de">
						<div class="table-row">
							<div class="DELIVERY_NUM">${ de.deliveryNum }</div>
							<div class="PAY_DATE">${ de.payDate }</div>
							<div class="COURSE_TITLE">${ de.courseTitle }</div>
							<div class="COURSE_MATERIAL">${ de.courseMaterial }</div>
							<div class="PAY_PRICE">${ de.payPrice }</div>
							<div class="DELIVERY_STATUS">${ de.deliveryStatus }</div>
							<div class="MEM_NAME">${ de.memName }</div>
							<div class="DELIVERY_detail"><input type="button" value="상세보기"></div>
						</div>
						</c:forEach>
						
						</div>
					</div>
				</div>
			</div>
		
</body>
 <c:import url="/WEB-INF/views/user/common/footer.jsp" />
</html>