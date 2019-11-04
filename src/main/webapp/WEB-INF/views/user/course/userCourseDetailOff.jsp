<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.ourcompany.class247.member.model.vo.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>CLASS 247</title>
<link rel="icon" href="resources/user/img/favicon.png">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/bootstrap.min.css"/>
</head>
<style>
html, body {
	margin: 0px;
	padding: 0px;
}

header {
	text-align: center;
}

#bprice {
	text-align: center;
	padding: 10px 0px;
	width: 100%;
}

.active {
	position: fixed;
	bottom: 0px;
}
</style>
<body>
	<c:import url="/WEB-INF/views/user/common/menubar.jsp" />

   <section class="course_details_area section_padding">
        <div class="container">
    <hr>
    <h2>오프라인 클래스 결제 페이지</h2>
    <hr>
            <div class="row">
                <div class="col-lg-8 course_details_left">
                    <div class="main_image">
                    	<h1>${ c.courseTitle }</h1>			
                        <img class="img-fluid" src="resources/course/images/${c.coaRName }" alt="">
                    </div>
                    <br>
                    <br>

                    <!-- 클래스 소개 -->

           
            </div>

                <!-- 오른쪽 간단 설명 -->
                <div class="col-lg-4 right-contents">
                    <div class="sidebar_top">
                        <ul>
                            <li style="width: 100%; cursor:default;">
                                <a class="justify-content-between d-flex">
                                    <p>크리에이터</p>
                                    <span class="color">${ c.memNickName }</span>
                                </a>
                            </li>
                            <li style="width: 100%; cursor:default;">
                                <a class="justify-content-between d-flex" href="#">
                                    <p>카테고리</p>
                                    <span>${ c.categoryName }</span>
                                </a>
                            </li>					
                            <li style="width: 100%; text-align:right;">
                            	<a class="justify-content-between d-flex" href="#" style="cursor:default;">
                           	    	<p>준비물</p>
                            		<%-- <span>${c.courseMaterial }</span> --%>
                           	    </a>
                            </li>
                            <li style="width: 100%; text-align:right;">
                            	<a class="justify-content-between d-flex" href="#" style="cursor:default;">
                           	    	<p>준비물 가격</p>
                            		<%-- <span>${c.courseMaterialPrice }</span> --%>
                           	    </a>
                            </li>
                            <li style="width: 100%; text-align:right;">
                            	<a class="justify-content-between d-flex" href="#" style="cursor:default;">
                           	    	<p>총 결제 가격</p>
                            		<span><h4><label id="totalPrice"><fmt:formatNumber value="${ c.courseHourPrice * c.courseCount * c.courseHours }" pattern="#,###원" /></label></h4></span>
                           	    </a>
                            </li>	
                            
                        </ul>
							<input type="button" class="btn_1 d-block" value="일반 결제" style="width:100%;" onclick="inicis();">				
							<input type="button" class="btn_1 d-block" value="카카오페이로 결제" style="width:100%;" onclick="kakao();">				
							<a href="home.do" class="btn_1 d-block">홈으로</a>	
					     	
                    </div>

                    <!-- 레이팅 -->
                    
                </div> 
            </div>
        </div>
    </section>
	<script>
	function inicis() {

    	IMP.init('imp79990634');
    
    	IMP.request_pay({
    	    pg : 'inicis',	/* 결제PG사 */
    	    pay_method : 'card',/* 결제방법 */
    	    merchant_uid : 'T' + new Date().getTime(),	/* 주문번호 */
    	    name : '${c.courseTitle}',	/* 주문이름 */
    	    amount : 100,		/* 결제 가격 */
    	    buyer_email : '${loginUser.memId}',	/* 구매자 이멜 */
    	    buyer_name :  '${loginUser.memName}',			/* 구매자 이름 */
    	    buyer_tel :  '${loginUser.memPhone}',	
    	}, function(rsp) {
    		
    		console.log(rsp.apply_num);
    		if ( rsp.success ) {
    		$.ajax({
    			url:"payment.do",
    			type:"post",
    			data:{payCode:rsp.imp_uid,
    				  reservNum:rsp.merchant_uid,
    				  payPrice:rsp.paid_amount,
    				  confirmNum:rsp.apply_num,
    				  payMethod:'C',
    				  takeCode:rsp.merchant_uid,
    				  confirmNum:rsp.apply_num,
    				  memNum:'${loginUser.memNum}',
    				  courseNum:'${c.courseNum}',
    				  payPrice:'${ c.courseHourPrice * c.courseCount * c.courseHours }',
    				  takePrice:'${ c.courseHourPrice * c.courseCount * c.courseHours }'
    				 },
    			success:function(data){
    				location.href="complete.do?payCode=" + data;
    			},
    			error:function(){
    				alertify.alert('', '결제 실패');
    			}
    		});/* ajax close */
    		}else{
    			alertify.alert('', '결제를 취소하셨습니다.');
    		}/* ajax close */
    	});		/* function(rsp) close */
}
			
				function kakao() {

				    	IMP.init('imp79990634');
				    
				    	IMP.request_pay({
				    	    pg : 'kakaopay',	/* 결제PG사 */
				    	    pay_method : 'card',/* 결제방법 */
				    	    merchant_uid : 'T' + new Date().getTime(),	/* 주문번호 */
				    	    name : '${c.courseTitle}',	/* 주문이름 */
				    	    amount : 100,		/* 결제 가격 */
				    	    buyer_email : '${loginUser.memId}',	/* 구매자 이멜 */
				    	    buyer_name :  '${loginUser.memName}',			/* 구매자 이름 */
				    	    buyer_tel :  '${loginUser.memPhone}',	
				    	}, function(rsp) {
				    		
				    		console.log(rsp.apply_num);
				    		if ( rsp.success ) {
				    		$.ajax({
				    			url:"payment.do",
				    			type:"post",
				    			data:{payCode:rsp.imp_uid,
				    				  reservNum:rsp.merchant_uid,
				    				  payPrice:rsp.paid_amount,
				    				  confirmNum:rsp.apply_num,
				    				  payMethod:'K',
				    				  takeCode:rsp.merchant_uid,
				    				  confirmNum:rsp.apply_num,
				    				  memNum:'${loginUser.memNum}',
				    				  courseNum:'${c.courseNum}',
				    				  payPrice:'${ c.courseHourPrice * c.courseCount * c.courseHours }',
				    				  takePrice:'${ c.courseHourPrice * c.courseCount * c.courseHours }'
				    				 },
				    			success:function(data){
				    				location.href="complete.do?payCode=" + data;
				    			},
				    			error:function(){
				    				alertify.alert('', '결제 실패');
				    			}
				    		});/* ajax close */
				    		}else{
				    			alertify.alert('', '결제를 취소하셨습니다.');
				    		}/* ajax close */
				    	});		/* function(rsp) close */
				}
				</script>
	<!--================ End Course Details Area =================-->

	<!-- footer part start-->
	<c:import url="/WEB-INF/views/user/common/footer.jsp" />
	<!-- footer part end-->


</body>

</html>