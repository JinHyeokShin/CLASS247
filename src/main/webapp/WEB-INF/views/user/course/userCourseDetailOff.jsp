<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.ourcompany.class247.member.model.vo.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>CLASS 247</title>
<link rel="icon" href="resources/user/img/favicon.png">
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

	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner text-center">
						<div class="breadcrumb_iner_item">
							<div class="banner_text_iner">
								<h5 style="color: white;">당신의 모든 취미를 클래스로 개설할 수 있습니다.</h5>
								<h1>
									당신의 클래스를 <br>개설하세요 !
								</h1>

								<a href="#" class="btn_1">View Course </a> <a
									href="cMainView.do" class="btn_2" onclick="return loginCheck()">Get
									Started </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script>
    		function loginCheck() {
    			
    			if ( '${ loginUser.memNum }' == "") {
    				alert("로그인 후 사용할 수 있는 서비스입니다.");
    				return false;
    			} else {
    				location.href="<%= request.getContextPath() %>/cMainView.do";
    				return true;
    			}
    		
    		}
    	</script>

	<!--================ Start Course Details Area =================-->

	<section class="course_details_area section_padding"
		style="background: rgb(248, 248, 249);">
		<div class="container">
			<!-- insert -->
				<div class="row">
					<div class="col-lg-8 course_details_left" style="display: inline-block; background: white; margin-left: auto; margin-right: auto; margin-top: 20px; margin-bottom: 20px;">
						<div class="tab-content">
							<div class="single_special_cource">
								<img src="resources/user/img/cource/cource_1.png" class="special_img" alt="">
								<div class="special_cource_text">

									<input type="radio" class="title_top" name="payMethod"
										id="paywaybtn" value="K" checked="checked" required>카카오페이
									<input type="radio" class="title_top" name="payMethod"
										id="paywaybtn" value="C">일반결제
										
									<div class="single_special_cource">
										<img src="resources/user/img/special_cource_1.png"
											class="special_img" alt="">
											<h3>강의제목:${ c.courseTitle }</h3>

											<p>수업 소개</p>
											<span>${c.courseContent }</span>
										</div>

									</div>
									<input type="hidden" name="offline" value="${ c }" />
									<button type="button" class="genric-btn primary-border radius"
									 style="border-radius: 5px; width: 150px; float: right; height: 50px; text-align: center; line-height: 1;"
									 
									<input type="radio" class="title_top" name="paymethod" id="paywaybtn" value="C">일반결제
                                <div class="single_special_cource">
                                        <img src="resources/user/img/special_cource_1.png" class="special_img" alt="">
                                        <div class="special_cource_text">
                                            <h4>강의료:${ c.courseHourPrice*c.courseHour*c.courseCount }</h4>
                                                <h3>강의제목:${ c.courseTitle }</h3>
                                            
                                            <p>수업 소개</p>
                                         <span>${c.courseContent }</span>
                                        </div>
                
                                    </div>
                                <input type="hidden" name="offline" value="${ c }"/>
                                <input type="hidden" name="payPrice" value="${ c.courseHourPrice*c.courseHour*c.courseCount }"/>
								<button type="submit" class="genric-btn primary-border radius"
									style="border-radius: 5px; width: 150px; float: right; height: 50px; text-align: center; line-height: 1"
									 id="pay_btn" onclick="kakao();">결제하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
	</section>
	<script>
				
			
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
				    		
				    		$.ajax({
				    			url:"payment.do",
				    			type:"post",
				    			data:{payNum:rsp.imp_uid,
				    				  reservNum:rsp.merchant_uid,
				    				  payPrice:rsp.paid_amount,
				    				  confirmNum:rsp.apply_num,
				    				  payMethod:$("input[name=payMethod]").val(),
				    				  payCode:rsp.imp_uid,
				    				  takeCode:rsp.merchant_uid,
				    				  confirmNum:rsp.apply_num,
				    				  memNum:'${loginUser.memNum}',
				    				  courseNum:'${c.courseNum}',
				    				  payPrice:'${ c.courseHourPrice }',
				    				  takePrice:'${ c.courseHourPrice }'
				    				 },
				    			success:function(data){
				    				location.href="home.do?reservNum=" + data;
				    			},
				    			error:function(){
				    				alertify.alert('', '결제 실패');
				    			}			    			
				    			
				    		});	/* ajax close */
				    	});		/* function(rsp) close */
				    
				    
				    
				}
				</script>
	<!--================ End Course Details Area =================-->

	<!-- footer part start-->
	<c:import url="/WEB-INF/views/user/common/footer.jsp" />
	<!-- footer part end-->


</body>

</html>