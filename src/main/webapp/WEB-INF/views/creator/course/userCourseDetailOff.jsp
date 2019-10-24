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
<script>
    function share() {
      var url = encodeURI(encodeURIComponent(myform.url.value));
      var title = encodeURI(myform.title.value);
      var shareURL = "https://share.naver.com/web/shareView.nhn?url=" + url + "&title=" + title;
      document.location = shareURL;
    }
  </script>

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
			<div class="row">
				<div class="col-lg-8 course_details_left"
					style="display: inline-block; background: white; margin-left: auto; margin-right: auto; margin-top: 20px; margin-bottom: 20px;">


					<div class="tab-content">


						<h4 class="title_top">패키지 구매하기</h4>
						<h4 class="title_top">수강권만 구매하기</h4>


						<div class="single_special_cource">
							<img src="img/special_cource_1.png" class="special_img" alt="">
							<div class="special_cource_text">
								<a class="btn_4">Web Development</a>
								<h4>$130.00</h4>
								<h3>Web Development</h3>
								<p>Which whose darkness saying were life unto fish wherein
									all fish of together called</p>
								<button
									style="display: block; background: rgb(248, 248, 249); text-align: center; padding: 10px 0px; width: 100%;">
									옵션 구성품 수정하기</button>
								<p>5개월 할부 가격
								<h4>$130.00</h4>
								</p>
									<c:url value="payment.do" var="payment">
										<c:param name="courseNum" value="${ c.courseNum }"/>
										
									</c:url>
								<button type="button" class="genric-btn primary-border radius"
									style="border-radius: 5px; width: 150px; float: right; height: 50px; text-align: center; line-height: 1"
									id="pay_btn" location.href="${ payment }">결제하기</button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Course Details Area =================-->

	<!-- footer part start-->
	<c:import url="/WEB-INF/views/user/common/footer.jsp" />
	<!-- footer part end-->


</body>

</html>